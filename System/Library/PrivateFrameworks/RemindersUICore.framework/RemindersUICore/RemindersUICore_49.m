uint64_t getEnumTagSinglePayload for TTRIReminderLocationPickerViewModel.Item(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TTRIReminderLocationPickerViewModel.Item(uint64_t result, int a2, int a3)
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

unint64_t sub_21D57EA50(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v19 = *a2;
    *a1 = *a2;
    a1 = v19 + ((v5 + 16) & ~v5);
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    v13 = *(a2 + 48);
    v12 = *(a2 + 56);
    v21 = *(a2 + 64);
    v22 = *(a2 + 72);
    v23 = *(a2 + 80);
    v24 = *(a2 + 88);
    sub_21D57EC6C(*a2, v7, v8, v9, v10, v11, v13, v12, v21, v22, v23, v24);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
    *(a1 + 40) = v11;
    *(a1 + 48) = v13;
    *(a1 + 56) = v12;
    *(a1 + 64) = v21;
    *(a1 + 72) = v22;
    *(a1 + 80) = v23;
    *(a1 + 88) = v24;
    v14 = *(a2 + 96);
    LOBYTE(v6) = *(a2 + 104);
    sub_21D57ED3C(v14, v6);
    *(a1 + 96) = v14;
    *(a1 + 104) = v6;
    *(a1 + 112) = *(a2 + 112);
    v15 = *(a3 + 28);
    v16 = sub_21DBF779C();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(a2 + v15, 1, v16))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E128);
      memcpy((a1 + v15), (a2 + v15), *(*(v18 - 8) + 64));
    }

    else
    {
      (*(v17 + 16))(a1 + v15, a2 + v15, v16);
      (*(v17 + 56))(a1 + v15, 0, 1, v16);
    }
  }

  return a1;
}

uint64_t sub_21D57EC6C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    v15 = result;
    v16 = a8;
    v17 = a9;
    sub_21DBF8E0C();
    v18 = v15;
  }

  else
  {
    if (a12)
    {
      return result;
    }

    v13 = a7;
    v14 = a8;
    sub_21DBF8E0C();
  }

  sub_21DBF8E0C();
  sub_21DBF8E0C();

  return sub_21DBF8E0C();
}

id sub_21D57ED3C(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t sub_21D57ED58(uint64_t a1, uint64_t a2)
{
  sub_21D57EE60(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  sub_21D57EF34(*(a1 + 96), *(a1 + 104));
  v4 = *(a2 + 28);
  v5 = sub_21DBF779C();
  v8 = *(v5 - 8);
  result = (*(v8 + 48))(a1 + v4, 1, v5);
  if (!result)
  {
    v7 = *(v8 + 8);

    return v7(a1 + v4, v5);
  }

  return result;
}

void sub_21D57EE60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12)
  {
    if (a12 != 1)
    {
      return;
    }

    v14 = a8;
  }

  else
  {
    a9 = a8;
    v14 = a7;
  }
}

void sub_21D57EF34(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_21D57EF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v12 = *(a2 + 48);
  v11 = *(a2 + 56);
  v19 = *(a2 + 64);
  v20 = *(a2 + 72);
  v21 = *(a2 + 80);
  v22 = *(a2 + 88);
  sub_21D57EC6C(*a2, v6, v7, v8, v9, v10, v12, v11, v19, v20, v21, v22);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v12;
  *(a1 + 56) = v11;
  *(a1 + 64) = v19;
  *(a1 + 72) = v20;
  *(a1 + 80) = v21;
  *(a1 + 88) = v22;
  v13 = *(a2 + 96);
  LOBYTE(v5) = *(a2 + 104);
  sub_21D57ED3C(v13, v5);
  *(a1 + 96) = v13;
  *(a1 + 104) = v5;
  *(a1 + 112) = *(a2 + 112);
  v14 = *(a3 + 28);
  v15 = sub_21DBF779C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(a2 + v14, 1, v15))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E128);
    memcpy((a1 + v14), (a2 + v14), *(*(v17 - 8) + 64));
  }

  else
  {
    (*(v16 + 16))(a1 + v14, a2 + v14, v15);
    (*(v16 + 56))(a1 + v14, 0, 1, v15);
  }

  return a1;
}

uint64_t sub_21D57F120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v12 = *(a2 + 48);
  v11 = *(a2 + 56);
  v34 = *(a2 + 64);
  v35 = *(a2 + 72);
  v36 = *(a2 + 80);
  v37 = *(a2 + 88);
  sub_21D57EC6C(*a2, v6, v7, v8, v9, v10, v12, v11, v34, v35, v36, v37);
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v21 = *(a1 + 64);
  v22 = *(a1 + 80);
  v23 = *(a1 + 88);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v12;
  *(a1 + 56) = v11;
  *(a1 + 64) = v34;
  *(a1 + 72) = v35;
  *(a1 + 80) = v36;
  *(a1 + 88) = v37;
  sub_21D57EE60(v13, v14, v15, v16, v17, v18, v19, v20, v21, *(&v21 + 1), v22, v23);
  v24 = *(a2 + 96);
  LOBYTE(v5) = *(a2 + 104);
  sub_21D57ED3C(v24, v5);
  v25 = *(a1 + 96);
  *(a1 + 96) = v24;
  v26 = *(a1 + 104);
  *(a1 + 104) = v5;
  sub_21D57EF34(v25, v26);
  *(a1 + 112) = *(a2 + 112);
  v27 = *(a3 + 28);
  v28 = sub_21DBF779C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  LODWORD(v5) = v30(a1 + v27, 1, v28);
  v31 = v30(a2 + v27, 1, v28);
  if (!v5)
  {
    if (!v31)
    {
      (*(v29 + 24))(a1 + v27, a2 + v27, v28);
      return a1;
    }

    (*(v29 + 8))(a1 + v27, v28);
    goto LABEL_6;
  }

  if (v31)
  {
LABEL_6:
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E128);
    memcpy((a1 + v27), (a2 + v27), *(*(v32 - 8) + 64));
    return a1;
  }

  (*(v29 + 16))(a1 + v27, a2 + v27, v28);
  (*(v29 + 56))(a1 + v27, 0, 1, v28);
  return a1;
}

uint64_t sub_21D57F384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v7 = *(a3 + 28);
  v8 = sub_21DBF779C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a2 + v7, 1, v8))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E128);
    memcpy((a1 + v7), (a2 + v7), *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(a1 + v7, a2 + v7, v8);
    (*(v9 + 56))(a1 + v7, 0, 1, v8);
  }

  return a1;
}

uint64_t sub_21D57F4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 80);
  v7 = *(a2 + 88);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = *(a1 + 64);
  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  v19 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v19;
  v20 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v20;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  *(a1 + 88) = v7;
  sub_21D57EE60(v8, v9, v10, v11, v12, v13, v14, v15, v16, *(&v16 + 1), v17, v18);
  v21 = *(a2 + 104);
  v22 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  v23 = *(a1 + 104);
  *(a1 + 104) = v21;
  sub_21D57EF34(v22, v23);
  *(a1 + 112) = *(a2 + 112);
  v24 = *(a3 + 28);
  v25 = sub_21DBF779C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  v28 = v27(a1 + v24, 1, v25);
  v29 = v27(a2 + v24, 1, v25);
  if (!v28)
  {
    if (!v29)
    {
      (*(v26 + 40))(a1 + v24, a2 + v24, v25);
      return a1;
    }

    (*(v26 + 8))(a1 + v24, v25);
    goto LABEL_6;
  }

  if (v29)
  {
LABEL_6:
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E128);
    memcpy((a1 + v24), (a2 + v24), *(*(v30 - 8) + 64));
    return a1;
  }

  (*(v26 + 32))(a1 + v24, a2 + v24, v25);
  (*(v26 + 56))(a1 + v24, 0, 1, v25);
  return a1;
}

void sub_21D57F6E8()
{
  sub_21D57F7B4(319, &qword_27CE5E140, MEMORY[0x277D45608]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D57F7B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21DBFBA8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21D57F808(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v53 = a1;
  v54 = a2;
  v7 = type metadata accessor for TTRIReminderLocationPickerState(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v14 = *a3;
  v13 = *(a3 + 8);
  v15 = *(a3 + 16);
  v16 = (v4 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderLocationPickerPresenter_state);
  swift_beginAccess();
  *&v71[9] = *(v16 + 73);
  v17 = v16[3];
  v70[2] = v16[2];
  v70[3] = v17;
  *v71 = v16[4];
  v18 = v16[1];
  v70[0] = *v16;
  v70[1] = v18;
  if (!v71[24])
  {
    v46 = v15;
    v47 = v14;
    v48 = v13;
    v49 = a4;
    v50 = v9;
    v51 = v12;
    v52 = v4;
    v19 = v70[0];
    v20 = v16[3];
    v66 = v16[2];
    v67 = v20;
    v68[0] = v16[4];
    v21 = v68[0];
    *(v68 + 9) = *(v16 + 73);
    v22 = v16[1];
    v65[0] = *v16;
    v65[1] = v22;
    v69[0] = v70[0];
    v69[3] = v20;
    v69[4] = v21;
    v69[1] = v22;
    v69[2] = v66;
    ObjectType = swift_getObjectType();
    v24 = v54;
    v25 = v54[2];
    sub_21D0D3954(v65, &v55, &unk_27CE5E3C0);
    v25(&v55, ObjectType, v24);
    TTRReminderLocationPickerModel.item(with:)(v19, *(&v19 + 1), &v58);

    v26 = v64;
    if (v64 >= 0xFEu)
    {
LABEL_3:
      sub_21D580098(v70);
      return;
    }

    v27 = v60;
    v28 = v64 >> 5;
    v29 = v63;
    v53 = v58;
    v54 = v62;
    v44 = v59;
    v45 = v61;
    if (v28 > 2)
    {
      v30 = v51;
      v32 = v49;
      v31 = v50;
      v33 = v46;
      if (v28 == 4)
      {
        v36 = v53;
        v42 = v63;
        v43 = v60;
        sub_21D5800C8(v53, v59, v60, v61, v54, v63, v64);
        v35 = 0;
        v37 = 2;
LABEL_14:
        v55 = v36;
        v56 = v35;
        v57 = v37;
        if (v33 != 255)
        {
          v58 = v47;
          v59 = v48;
          LOBYTE(v60) = v33;
          sub_21D179E10(v47, v48, v33);
          sub_21D5803F8(v36, v35, v37);
          v40 = _s15RemindersUICore029TTRGeoLocationServiceResolvedD0O7AddressO2eeoiySbAE_AEtFZ_0(&v55, &v58);
          sub_21D181CB8(v58, v59, v60);
          sub_21D181CB8(v55, v56, v57);
          sub_21D580288(v36, v35, v37);
          v29 = v42;
          v30 = v51;
          if ((v40 & 1) == 0)
          {
            sub_21D5801A0(v53, v44, v43, v45, v54, v42, v26);
            goto LABEL_3;
          }

          goto LABEL_16;
        }

        v39 = v47;
        v38 = v48;
        sub_21D179E10(v47, v48, 255);
        sub_21D179E10(v39, v38, 255);
        sub_21D5803F8(v36, v35, v37);
        sub_21D5803F8(v36, v35, v37);
        sub_21D5801A0(v53, v44, v43, v45, v54, v42, v26);
        sub_21D580098(v70);
        sub_21D181CB8(v39, v38, 255);
        sub_21D580288(v36, v35, v37);
        sub_21D181CB8(v36, v35, v37);
LABEL_18:
        sub_21D580288(v36, v35, v37);
        sub_21D580288(v39, v38, v33);
        return;
      }
    }

    else
    {
      v30 = v51;
      v32 = v49;
      v31 = v50;
      v33 = v46;
      if (v28)
      {
        v42 = v63;
        v43 = v60;
        if (v28 == 1)
        {
          v34 = v63;
          v35 = 0;
          v36 = v29;
          v37 = 0;
        }

        else
        {
          sub_21DBF8E0C();
          v35 = v29;
          v37 = 1;
          v36 = v54;
        }

        goto LABEL_14;
      }
    }

    if (v33 == 255)
    {
      v43 = v60;
      sub_21D179E10(v47, v48, 255);
      sub_21D580288(0, 0, 255);
LABEL_16:
      v58 = v32;
      LOBYTE(v59) = 0;
      sub_21D58029C(v70, &v55);
      v41 = v32;
      sub_21D57C448(v69, &v58, v30);
      sub_21D5802D4(v16, v31);
      swift_beginAccess();
      sub_21D580338(v30, v16);
      swift_endAccess();
      sub_21D57BA04(v31);
      sub_21D5801A0(v53, v44, v43, v45, v54, v29, v26);
      sub_21D580098(v70);
      sub_21D58039C(v31);
      sub_21D58039C(v30);
      return;
    }

    v39 = v47;
    v38 = v48;
    sub_21D179E10(v47, v48, v33);
    sub_21D5801A0(v53, v44, v27, v45, v54, v29, v26);
    sub_21D580098(v70);
    v35 = 0;
    v36 = 0;
    v37 = -1;
    goto LABEL_18;
  }
}

uint64_t sub_21D57FCD4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  sub_21DBF8E0C();
  v3 = sub_21D580BA0(&v5);

  return sub_21D57B91C(v3);
}

void *sub_21D57FD18()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_21D57FD40(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v2 = result;
      v3 = v1;
      [v3 setDelegate_];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_21D57FDBC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_21D58040C(v8, v9) & 1;
}

uint64_t sub_21D57FE18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = *a1;
    v7 = a1[1];
    v8 = (a2 + 40);
    while (1)
    {
      v9 = *(v8 - 1) == v6 && *v8 == v7;
      if (v9 || (sub_21DBFC64C() & 1) != 0)
      {
        break;
      }

      ++v5;
      v8 += 10;
      if (v4 == v5)
      {
        goto LABEL_9;
      }
    }

    MEMORY[0x223D3E470](v5, 0);
    v10 = 0;
  }

  else
  {
LABEL_9:
    v10 = 1;
  }

  v11 = sub_21DBF5D5C();
  v12 = *(*(v11 - 8) + 56);

  return v12(a3, v10, 1, v11);
}

uint64_t sub_21D57FEF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 3);
  v4 = *(a1 + 7);
  v33 = *(a1 + 5);
  v34 = v4;
  v35 = *(a1 + 9);
  v31 = *(a1 + 1);
  v32 = v3;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v12 = a2[6];
  v11 = a2[7];
  v14 = a2[8];
  v13 = a2[9];
  v15 = *(a2 + 88);
  if (!*(a1 + 88))
  {
    if (!*(a2 + 88))
    {
      *v20 = v2;
      *&v20[24] = *(a1 + 3);
      *&v20[40] = *(a1 + 5);
      *&v20[56] = *(a1 + 7);
      *&v20[72] = a1[9];
      v21 = v5;
      *&v20[8] = *(a1 + 1);
      v22 = v6;
      v23 = v7;
      v24 = v8;
      v25 = v9;
      v26 = v10;
      v27 = v12;
      v28 = v11;
      v29 = v14;
      v30 = v13;
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (*(a1 + 88) != 1)
  {
    if (v15 == 2 && !(v6 | v5 | v7 | v8 | v9 | v10 | v12 | v11 | v14 | v13 | a2[10]))
    {
      v16 = 1;
      return v16 & 1;
    }

    goto LABEL_11;
  }

  if (v15 != 1 || (v18 = a2[10], v19 = a2[9], sub_21D0D8CF0(0, &qword_280D17680), (sub_21DBFB63C() & 1) == 0))
  {
LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  *&v20[32] = v33;
  *&v20[48] = v34;
  *&v20[64] = v35;
  *v20 = v31;
  *&v20[16] = v32;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v12;
  v27 = v11;
  v28 = v14;
  v29 = v19;
  v30 = v18;
LABEL_8:
  v16 = sub_21D58040C(v20, &v21);
  return v16 & 1;
}

id sub_21D5800C8(id result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, unsigned __int8 a7)
{
  v7 = a7 >> 5;
  if (v7 <= 1)
  {
    if (a7 >> 5)
    {
      if (v7 != 1)
      {
        return result;
      }

      sub_21DBF8E0C();
      v9 = a6;
      sub_21DBF8E0C();
      result = a3;
    }

LABEL_9:

    return result;
  }

  if (v7 != 2)
  {
    if (v7 != 3 && v7 != 4)
    {
      return result;
    }

    goto LABEL_9;
  }

  sub_21DBF8E0C();
  sub_21DBF8E0C();

  return sub_21DBF8E0C();
}

void sub_21D5801A0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, unsigned __int8 a7)
{
  if (a7 <= 0xFDu)
  {
    sub_21D5801B4(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_21D5801B4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, unsigned __int8 a7)
{
  v7 = a7 >> 5;
  if (v7 <= 1)
  {
    if (!(a7 >> 5))
    {
LABEL_9:

      return;
    }

    if (v7 != 1)
    {
      return;
    }
  }

  else
  {
    if (v7 != 2)
    {
      if (v7 != 3 && v7 != 4)
      {
        return;
      }

      goto LABEL_9;
    }
  }
}

void sub_21D580288(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_21D181CB8(a1, a2, a3);
  }
}

uint64_t sub_21D5802D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIReminderLocationPickerState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D580338(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIReminderLocationPickerState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D58039C(uint64_t a1)
{
  v2 = type metadata accessor for TTRIReminderLocationPickerState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_21D5803F8(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_21D179E10(result, a2, a3);
  }

  return result;
}

uint64_t sub_21D58040C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_21DBFC64C() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D17688);
    v8 = v7;
    v9 = v6;
    v10 = sub_21DBFB63C();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  sub_21D0D8CF0(0, &qword_280D17680);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  if (a1[8] == a2[8] && a1[9] == a2[9])
  {
    return 1;
  }

  return sub_21DBFC64C();
}

BOOL sub_21D58057C(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_21DBF779C();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E128);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E158);
  MEMORY[0x28223BE20](v8);
  v11 = *a1;
  v12 = *(a1 + 3);
  v13 = *(a1 + 7);
  v70 = *(a1 + 5);
  v71 = v13;
  v72 = *(a1 + 9);
  v68 = *(a1 + 1);
  v69 = v12;
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[4];
  v19 = a2[5];
  v21 = a2[6];
  v20 = a2[7];
  v23 = a2[8];
  v22 = a2[9];
  v24 = *(a2 + 88);
  if (!*(a1 + 88))
  {
    if (*(a2 + 88))
    {
      return 0;
    }

    v47 = &v41 - v10;
    v48 = v9;
    *&v57[0] = v11;
    *(&v57[1] + 8) = *(a1 + 3);
    *(&v57[2] + 8) = *(a1 + 5);
    *(&v57[3] + 8) = *(a1 + 7);
    *(&v57[4] + 1) = a1[9];
    v58 = v14;
    *(v57 + 8) = *(a1 + 1);
    v59 = v15;
    v60 = v16;
    v61 = v17;
    v62 = v18;
    v63 = v19;
    v64 = v21;
    v65 = v20;
    v66 = v23;
    v67 = v22;
    goto LABEL_8;
  }

  v25 = a2[10];
  if (*(a1 + 88) == 1)
  {
    if (v24 != 1)
    {
      return 0;
    }

    v42 = a2[10];
    v43 = v21;
    v44 = v23;
    v45 = v20;
    v46 = v22;
    v47 = &v41 - v10;
    v48 = v9;
    sub_21D0D8CF0(0, &qword_280D17680);
    if ((sub_21DBFB63C() & 1) == 0)
    {
      return 0;
    }

    v57[2] = v70;
    v57[3] = v71;
    v57[4] = v72;
    v57[0] = v68;
    v57[1] = v69;
    v58 = v15;
    v59 = v16;
    v60 = v17;
    v61 = v18;
    v62 = v19;
    v63 = v43;
    v64 = v45;
    v65 = v44;
    v66 = v46;
    v67 = v42;
LABEL_8:
    if ((sub_21D58040C(v57, &v58) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_12;
  }

  if (v24 != 2)
  {
    return 0;
  }

  v47 = &v41 - v10;
  v48 = v9;
  if (v15 | v14 | v16 | v17 | v18 | v19 | v21 | v20 | v23 | v22 | v25)
  {
    return 0;
  }

LABEL_12:
  v26 = *(a1 + 104);
  v55 = a1[12];
  v56 = v26;
  v28 = *(a2 + 104);
  v53 = a2[12];
  v27 = v53;
  v54 = v28;
  sub_21D57ED3C(v55, v26);
  sub_21D57ED3C(v27, v28);
  LOBYTE(v27) = _s15RemindersUICore30TTRReminderLocationPickerModelV9PlacemarkO2eeoiySbAE_AEtFZ_0(&v55, &v53);
  sub_21D57EF34(v53, v54);
  sub_21D57EF34(v55, v56);
  if ((v27 & 1) == 0 || a1[14] != a2[14])
  {
    return 0;
  }

  v29 = *(type metadata accessor for TTRIReminderLocationPickerState(0) + 28);
  v30 = *(v48 + 48);
  v31 = a1 + v29;
  v32 = v47;
  sub_21D0D3954(v31, v47, &qword_27CE5E128);
  sub_21D0D3954(a2 + v29, v32 + v30, &qword_27CE5E128);
  v34 = v51;
  v33 = v52;
  v35 = *(v51 + 48);
  if (v35(v32, 1, v52) == 1)
  {
    if (v35(v32 + v30, 1, v33) == 1)
    {
      sub_21D0CF7E0(v32, &qword_27CE5E128);
      return 1;
    }

    goto LABEL_19;
  }

  v36 = v50;
  sub_21D0D3954(v32, v50, &qword_27CE5E128);
  if (v35(v32 + v30, 1, v33) == 1)
  {
    (*(v34 + 8))(v36, v33);
LABEL_19:
    sub_21D0CF7E0(v32, &qword_27CE5E158);
    return 0;
  }

  v38 = v49;
  (*(v34 + 32))(v49, v32 + v30, v33);
  sub_21D580AE0();
  v39 = sub_21DBFA10C();
  v40 = *(v34 + 8);
  v40(v38, v33);
  v40(v36, v33);
  sub_21D0CF7E0(v32, &qword_27CE5E128);
  return (v39 & 1) != 0;
}

uint64_t sub_21D580A7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIReminderLocationPickerState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21D580AE0()
{
  result = qword_27CE5E160;
  if (!qword_27CE5E160)
  {
    sub_21DBF779C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5E160);
  }

  return result;
}

uint64_t sub_21D580BA0(uint64_t *a1)
{
  v1 = *a1;
  v71 = *(*a1 + 16);
  if (!v71)
  {

    return MEMORY[0x277D84F90];
  }

  v78 = MEMORY[0x277D84F90];
  sub_21D18F228(0, v71, 0);
  v2 = v78;
  v3 = (v1 + 80);
  do
  {
    v64 = v2;
    v5 = *(v3 - 6);
    v4 = *(v3 - 5);
    v7 = *(v3 - 2);
    v6 = *(v3 - 1);
    v8 = *v3;
    v72 = *(v3 - 4);
    v73 = *(v3 - 3);
    sub_21D5800C8(v5, v4, v72, v73, v7, v6, v8);
    v9 = TTRReminderLocationPickerModel.Item.localizedDisplayAttributes.getter();
    v68 = v10;
    v69 = v9;
    v66 = v12;
    v67 = v11;
    v13 = v8 >> 5;
    if (v8 >> 5 > 2)
    {
      if (v13 == 3)
      {
        v70 = sub_21D8CA438(v5);
        v65 = v28;
      }

      else
      {
        if (v13 != 4)
        {
          v29 = v8 == 160 && (v72 | v4 | v5 | v73 | v7 | v6) == 0;
          v30 = 0xEB00000000746978;
          if (v29)
          {
            v30 = 0xEC0000007265746ELL;
          }

          v65 = v30;
          if (qword_280D1AC40 != -1)
          {
            swift_once();
          }

          v70 = 0x45656C6369686576;
          v27 = &qword_280D1AC48;
          goto LABEL_39;
        }

        v17 = [v5 title];
        v18 = sub_21DBFA16C();
        v19 = v6;
        v21 = v20;

        v74 = v18;
        v76 = v21;
        MEMORY[0x223D42AA0](2108704, 0xE300000000000000);
        v22 = [v5 subtitle];
        v23 = sub_21DBFA16C();
        v25 = v24;

        v26 = v23;
        v6 = v19;
        MEMORY[0x223D42AA0](v26, v25);

        v70 = v74;
        v65 = v76;
      }

LABEL_19:
      if (qword_280D1AC58 != -1)
      {
        swift_once();
      }

      v27 = &qword_280D1AC60;
      goto LABEL_39;
    }

    if (v13)
    {
      if (v13 == 1)
      {
        v14 = v6;
        sub_21DBF8E0C();
        if (v8)
        {
          v15 = sub_21DBFA16C();
          if (v7)
          {
            if (v15 == v73 && v7 == v16)
            {

LABEL_35:
              if (qword_27CE56870 != -1)
              {
                swift_once();
              }

              v65 = v4;
              v70 = v5;
              v27 = &qword_27CE5C590;
LABEL_38:
              v6 = v14;
              goto LABEL_39;
            }

            v31 = sub_21DBFC64C();

            if (v31)
            {
              goto LABEL_35;
            }

            if (sub_21DBFA16C() == v73 && v7 == v59)
            {

LABEL_63:
              if (qword_27CE56878 != -1)
              {
                swift_once();
              }

              v65 = v4;
              v70 = v5;
              v27 = &qword_27CE5C598;
              goto LABEL_38;
            }

            v60 = sub_21DBFC64C();

            if (v60)
            {
              goto LABEL_63;
            }
          }

          else
          {

            sub_21DBFA16C();
          }
        }

        if (qword_280D1AC58 != -1)
        {
          swift_once();
        }

        v65 = v4;
        v70 = v5;
        v27 = &qword_280D1AC60;
        goto LABEL_38;
      }

      sub_21DBF8E0C();
      v70 = v5;
      v65 = v4;
      goto LABEL_19;
    }

    if (qword_27CE56860 != -1)
    {
      swift_once();
    }

    v65 = 0xEF6E6F697461636FLL;
    v70 = 0x4C746E6572727563;
    v27 = &qword_27CE5C588;
LABEL_39:
    v32 = *v27;
    v33 = *v27;
    v34 = sub_21D57A8F8();
    if (v8 >> 5 > 2)
    {
      if (v13 == 3)
      {
        v46 = v7;
        v47 = v34;
        v48 = sub_21D8CA438(v5);
        v49 = v6;
        v51 = v50;
        sub_21D5801B4(v5, v4, v72, v73, v46, v49, v8);
        v34 = v47;
        v5 = v48;
        v4 = v51;
      }

      else if (v13 == 4)
      {
        v63 = v34;
        v36 = [v5 title];
        v37 = v6;
        v38 = sub_21DBFA16C();
        v40 = v39;

        v75 = v38;
        v77 = v40;
        MEMORY[0x223D42AA0](2108704, 0xE300000000000000);
        v41 = [v5 subtitle];
        v42 = sub_21DBFA16C();
        v44 = v43;

        MEMORY[0x223D42AA0](v42, v44);

        sub_21D5801B4(v5, v4, v72, v73, v7, v37, v8);
        v34 = v63;
        v5 = v75;
        v4 = v77;
      }

      else
      {
        v52 = (v72 | v4 | v5 | v73 | v7 | v6) == 0;
        v53 = v8 == 160;
        v54 = !v52 || !v53;
        if (v52 && v53)
        {
          v5 = 0xD00000000000002ALL;
        }

        else
        {
          v5 = 0xD000000000000029;
        }

        v55 = "Picker.ID.VehicleExitCell";
        if (v54)
        {
          v55 = "savesOnCommit";
        }

        v4 = v55 | 0x8000000000000000;
      }
    }

    else
    {
      if (v13)
      {
        v35 = v34;
        v2 = v64;
        sub_21DBF8E0C();
        sub_21D5801B4(v5, v4, v72, v73, v7, v6, v8);
        v34 = v35;
        goto LABEL_55;
      }

      v45 = v34;
      sub_21D5801B4(v5, v4, v72, v73, v7, v6, v8);
      v34 = v45;
      v5 = 0xD00000000000002DLL;
      v4 = 0x800000021DC60650;
    }

    v2 = v64;
LABEL_55:
    v57 = *(v2 + 16);
    v56 = *(v2 + 24);
    if (v57 >= v56 >> 1)
    {
      v61 = v34;
      sub_21D18F228((v56 > 1), v57 + 1, 1);
      v34 = v61;
    }

    v3 += 56;
    *(v2 + 16) = v57 + 1;
    v58 = (v2 + 80 * v57);
    v58[4] = v70;
    v58[5] = v65;
    v58[6] = v69;
    v58[7] = v68;
    v58[8] = v67;
    v58[9] = v66;
    v58[10] = v32;
    v58[11] = v34;
    v58[12] = v5;
    v58[13] = v4;
    --v71;
  }

  while (v71);

  return v2;
}

void sub_21D581310(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = TTRReminderLocationPickerModel.Item.localizedDisplayAttributes.getter();
  v26 = v11;
  v27 = v10;
  v24 = v13;
  v25 = v12;
  v14 = TTRReminderLocationPickerModel.Item.identifier.getter();
  v22 = v15;
  v23 = v14;
  v21 = sub_21D57AA60();
  v16 = v21;
  v20 = sub_21D57A8F8();
  v17 = TTRReminderLocationPickerModel.Item.accessibilityIdentifier.getter();
  v19 = v18;
  sub_21D5801B4(v3, v4, v5, v6, v7, v8, v9);
  *a2 = v23;
  a2[1] = v22;
  a2[2] = v27;
  a2[3] = v26;
  a2[4] = v25;
  a2[5] = v24;
  a2[6] = v21;
  a2[7] = v20;
  a2[8] = v17;
  a2[9] = v19;
}

uint64_t initializeWithCopy for TTRIReminderLocationPickerState.SelectionType(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  sub_21D57EC6C(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  return a1;
}

uint64_t assignWithCopy for TTRIReminderLocationPickerState.SelectionType(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v24 = *(a2 + 72);
  v25 = *(a2 + 80);
  v26 = *(a2 + 88);
  sub_21D57EC6C(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v24, v25, v26);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 88);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v24;
  *(a1 + 80) = v25;
  *(a1 + 88) = v26;
  sub_21D57EE60(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, v22);
  return a1;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for TTRIReminderLocationPickerState.SelectionType(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v4 = *(a2 + 88);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v16;
  v17 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v17;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 88) = v4;
  sub_21D57EE60(v5, v7, v6, v8, v9, v10, v11, v12, v13, *(&v13 + 1), v14, v15);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAccountsListsViewModel.PermissionRequest(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 89))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 88);
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

uint64_t storeEnumTagSinglePayload for TTRAccountsListsViewModel.PermissionRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_21D581794(uint64_t a1)
{
  if (*(a1 + 88) <= 1u)
  {
    return *(a1 + 88);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_21D5817AC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 88) = a2;
  return result;
}

id TTRICollectionViewDragPreviewParametersProvidingCell.dragPreviewParameters.getter(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75480]) init];
  v5 = *(a2 + 8);
  v6 = v4;
  v7 = v5(a1, a2);
  v11 = [objc_opt_self() bezierPathWithRoundedRect:v7 cornerRadius:{v8, v9, v10, 11.0}];
  [v6 setVisiblePath_];

  return v6;
}

uint64_t static TTRIReminderLocationPickerAssembly.createViewController(reminderChangeItem:showsDoneButton:savesOnCommit:delegate:undoManager:)(void *a1, char a2, char a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = [a1 saveRequest];
  v13 = [v12 store];

  if (a6)
  {
    v14 = a6;
  }

  else
  {
    v15 = objc_allocWithZone(TTRUndoManager);
    v16 = sub_21DBFA12C();
    v14 = [v15 initWithDebugIdentifier_];
  }

  type metadata accessor for TTRReminderLocationPickerInteractor.ReminderEditor();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = v14;
  v18 = v14;
  v19 = a6;
  v17[4] = 0;
  v20 = a1;
  v21 = sub_21D581F7C(v13, v17, a2 & 1, a3 & 1, a4, a5, v18, &protocol witness table for TTRReminderLocationPickerInteractor.ReminderEditor);

  return v21;
}

uint64_t static TTRIReminderLocationPickerAssembly.createViewController(filter:store:showsDoneButton:savesOnCommit:delegate:undoManager:save:)(void *a1, void *a2, char a3, char a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  if (a7)
  {
    v16 = a7;
  }

  else
  {
    v17 = objc_allocWithZone(TTRUndoManager);
    v18 = sub_21DBFA12C();
    v16 = [v17 initWithDebugIdentifier_];
  }

  type metadata accessor for TTRReminderLocationPickerInteractor.FilterEditor();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = v16;
  v19[4] = a8;
  v19[5] = a9;
  v20 = a7;
  v21 = v16;

  v22 = a1;

  v23 = sub_21D581F7C(a2, v19, a3 & 1, a4 & 1, a5, a6, v21, &protocol witness table for TTRReminderLocationPickerInteractor.FilterEditor);

  return v23;
}

char *sub_21D581BAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v31 = a4;
  v32 = a5;
  v8 = type metadata accessor for TTRIReminderLocationPickerState(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRIReminderLocationPickerRouter();
  v36[3] = v12;
  v36[4] = &off_282EC4F70;
  v36[0] = a2;
  type metadata accessor for TTRIReminderLocationPickerPresenter(0);
  v13 = swift_allocObject();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v36, v12);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = *v17;
  v35[3] = v12;
  v35[4] = &off_282EC4F70;
  v35[0] = v19;
  *(v13 + 4) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + 6) = 0;
  swift_unknownObjectWeakInit();
  v20 = *(v9 + 56);
  v33 = v9 + 56;
  v20(&v13[OBJC_IVAR____TtC15RemindersUICore35TTRIReminderLocationPickerPresenter_fallbackState], 1, 1, v8);
  v21 = &v13[OBJC_IVAR____TtC15RemindersUICore35TTRIReminderLocationPickerPresenter_interactor];
  *v21 = a1;
  *(v21 + 1) = &protocol witness table for TTRReminderLocationPickerInteractor;
  sub_21D0D32E4(v35, &v13[OBJC_IVAR____TtC15RemindersUICore35TTRIReminderLocationPickerPresenter_router]);
  *(v13 + 2) = a3;

  TTRReminderLocationPickerInteractor.model.getter(v34);
  *(v13 + 7) = sub_21D580BA0(v34);
  swift_beginAccess();
  if (!*(a1 + 16))
  {

    goto LABEL_5;
  }

  v30 = v8;
  v22 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v24 = *(v22 + 8);
  swift_unknownObjectRetain();
  v8 = v30;
  v25 = v24(ObjectType, v22);
  swift_unknownObjectRelease();

  if (!v25)
  {
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(v35);
    *(v11 + 14) = 1;
    v26 = *(v8 + 28);
    v27 = sub_21DBF779C();
    (*(*(v27 - 8) + 56))(&v11[v26], 1, 1, v27);
    *(v11 + 10) = 0;
    *(v11 + 3) = 0u;
    *(v11 + 4) = 0u;
    *(v11 + 1) = 0u;
    *(v11 + 2) = 0u;
    *v11 = 0u;
    v11[88] = 2;
    *(v11 + 12) = 0;
    v11[104] = 2;
    goto LABEL_6;
  }

  sub_21D57B6E8(v25, v11);
  __swift_destroy_boxed_opaque_existential_0(v35);
LABEL_6:
  sub_21D5802D4(v11, &v13[OBJC_IVAR____TtC15RemindersUICore35TTRIReminderLocationPickerPresenter_state]);
  v28 = OBJC_IVAR____TtC15RemindersUICore35TTRIReminderLocationPickerPresenter_initialState;
  sub_21D580A7C(v11, &v13[OBJC_IVAR____TtC15RemindersUICore35TTRIReminderLocationPickerPresenter_initialState]);
  v20(&v13[v28], 0, 1, v8);
  v13[OBJC_IVAR____TtC15RemindersUICore35TTRIReminderLocationPickerPresenter_showsDoneButton] = v31 & 1;
  v13[OBJC_IVAR____TtC15RemindersUICore35TTRIReminderLocationPickerPresenter_savesOnCommit] = v32 & 1;
  __swift_destroy_boxed_opaque_existential_0(v36);
  return v13;
}

uint64_t sub_21D581F7C(void *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v51 = a8;
  v52 = a2;
  v55 = a7;
  v59 = a6;
  v60 = a5;
  v53 = a3;
  v54 = a4;
  v61 = sub_21DBF9D8C();
  v9 = *(v61 - 1);
  MEMORY[0x28223BE20](v61);
  v11 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21DBF60DC();
  v12 = sub_21DBF60BC();
  v50 = type metadata accessor for TTRReminderLocationPickerCurrentLocationItemProvider();
  v62 = swift_allocObject();
  *(v62 + 16) = 1;
  v49 = type metadata accessor for TTRReminderLocationPickerMeCardItemProvider();
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  sub_21D0CE468();
  v14 = v12;
  sub_21DBFB12C();
  sub_21DBF633C();
  swift_allocObject();
  *(v13 + 16) = sub_21DBF62FC();
  *(v13 + 24) = 0;

  *(v13 + 32) = 1;
  v48 = type metadata accessor for TTRReminderLocationPickerVehicleItemProvider();
  v15 = swift_allocObject();
  *(v15 + 32) = 258;
  *(v15 + 16) = a1;
  *(v15 + 24) = v14;
  v58 = v15;
  v16 = objc_allocWithZone(MEMORY[0x277CFBC70]);
  v17 = v14;
  v18 = a1;
  v19 = [v16 init];
  v20 = type metadata accessor for TTRReminderLocationPickerAutocompleteContactItemProvider();
  v21 = objc_allocWithZone(v20);
  v22 = v17;
  v57 = v19;
  v23 = sub_21D987E84(v19, v22);
  v56 = v22;

  v24 = type metadata accessor for TTRReminderLocationPickerLocalSearchResultItemProvider();
  v25 = [objc_allocWithZone(v24) init];
  *v11 = sub_21DBFB12C();
  v26 = v61;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v61);
  LOBYTE(v16) = sub_21DBF9DAC();
  result = (*(v9 + 8))(v11, v26);
  if (v16)
  {
    v28 = objc_allocWithZone(type metadata accessor for TTRGeoLocationService());
    v29 = sub_21D0D7EE0(v28, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E178);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_21DC1C120;
    v31 = v49;
    *(v30 + 56) = v50;
    *(v30 + 64) = &protocol witness table for TTRReminderLocationPickerCurrentLocationItemProvider;
    *(v30 + 32) = v62;
    *(v30 + 96) = v31;
    *(v30 + 104) = &protocol witness table for TTRReminderLocationPickerMeCardItemProvider;
    *(v30 + 72) = v13;
    *(v30 + 136) = v48;
    *(v30 + 144) = &protocol witness table for TTRReminderLocationPickerVehicleItemProvider;
    *(v30 + 112) = v58;
    *(v30 + 176) = v20;
    *(v30 + 184) = &protocol witness table for TTRReminderLocationPickerAutocompleteContactItemProvider;
    *(v30 + 152) = v23;
    *(v30 + 216) = v24;
    *(v30 + 224) = &protocol witness table for TTRReminderLocationPickerLocalSearchResultItemProvider;
    *(v30 + 192) = v25;
    type metadata accessor for TTRReminderLocationPickerInteractor();
    v32 = swift_allocObject();

    v61 = v23;
    v50 = v25;
    v33 = v29;

    v35 = sub_21D5825B4(v34, v51, v30, v33, v32);

    type metadata accessor for TTRIReminderLocationPickerRouter();
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v37 = v55;
    v38 = v55;
    v39 = sub_21D581BAC(v35, v36, v37, v53 & 1, v54 & 1);
    type metadata accessor for TTRIReminderLocationPickerViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v41 = objc_opt_self();

    v42 = [v41 bundleForClass_];
    v43 = sub_21DBFA12C();
    v44 = [objc_opt_self() storyboardWithName:v43 bundle:v42];

    v45 = sub_21D5A37D8(v44, 0xD000000000000028, 0x800000021DC607D0, v39, &off_282EC5078);

    swift_beginAccess();
    *(v35 + 40) = &off_282EC5058;
    swift_unknownObjectWeakAssign();
    *(v39 + 4) = &off_282EC51F0;
    swift_unknownObjectWeakAssign();
    *(v39 + 6) = v59;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    v46 = &v33[OBJC_IVAR____TtC15RemindersUICore21TTRGeoLocationService_delegate];
    swift_beginAccess();
    *(v46 + 1) = &protocol witness table for TTRReminderLocationPickerInteractor;
    swift_unknownObjectWeakAssign();
    TTRGeoLocationService.startUpdatingCurrentLocationIfNeeded()();

    return v45;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D5825B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[3] = type metadata accessor for TTRGeoLocationService();
  v11[4] = &protocol witness table for TTRGeoLocationService;
  v11[0] = a4;
  *(a5 + 40) = 0;
  *(a5 + 24) = 0;
  *(a5 + 16) = 0;
  swift_unknownObjectWeakInit();
  *(a5 + 120) = MEMORY[0x277D84F90];
  *(a5 + 128) = 0u;
  *(a5 + 144) = 0u;
  swift_beginAccess();
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a5 + 48) = a3;
  sub_21D0D32E4(v11, a5 + 56);
  *(a5 + 104) = 0;
  *(a5 + 112) = 0xE000000000000000;
  sub_21DBF65EC();
  swift_allocObject();
  *(a5 + 96) = sub_21DBF65DC();
  sub_21DA45D84();
  __swift_destroy_boxed_opaque_existential_0(v11);
  return a5;
}

uint64_t (*static REMFeatureFlags.isSolariumEnabled.modify())()
{
  if (qword_280D17218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21D58276C()
{
  result = sub_21D582790();
  byte_27CE5E181 = result & 1;
  return result;
}

uint64_t sub_21D582790()
{
  v0 = sub_21DBF604C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v4 = *(qword_280D1AA18 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (!v4)
  {
    v11 = 0u;
    v12 = 0u;
LABEL_11:
    sub_21D1A8418(&v11);
    goto LABEL_12;
  }

  v5 = sub_21DBFA12C();
  v6 = [v4 objectForKey_];

  if (v6)
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v7 = v9;
    return v7 & 1;
  }

LABEL_12:
  if (qword_280D17218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_280D17220 == 1)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277D44DF0], v0);
    v7 = sub_21DBF603C();
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t (*static REMFeatureFlags.reminderDetailNewStyleEnabled.modify())()
{
  if (qword_27CE56A20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_21D582AE0(char a1, void *a2, _BYTE *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a3 = a1 & 1;
  return result;
}

uint64_t (*static REMFeatureFlags.pinnedListTileNewStyleEnabled.modify())()
{
  if (qword_280D0C838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_21D582C04(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58E80);
  sub_21DBFA1AC();
  v4 = sub_21DBFA12C();
  v5 = sub_21DBF5C6C();
  v6 = [v3 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

  if (swift_dynamicCastClass())
  {
  }

  else
  {
    if (qword_27CE565E0 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE5A590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D20;
    *(inited + 32) = 48;
    *(inited + 40) = 0xE100000000000000;
    v9 = sub_21D0D8CF0(0, &unk_280D0C2F0);
    *(inited + 48) = v6;
    *(inited + 72) = v9;
    *(inited + 80) = 49;
    *(inited + 88) = 0xE100000000000000;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = v6;
    v12 = [ObjCClassFromMetadata description];
    v13 = sub_21DBFA16C();
    v15 = v14;

    *(inited + 120) = MEMORY[0x277D837D0];
    *(inited + 96) = v13;
    *(inited + 104) = v15;
    sub_21D17716C(inited);

    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEAB00("Failed to cast dequeued cell to expected type {cell: %@, expectedType: %@}", 74, 2);
    __break(1u);
  }
}

uint64_t sub_21D582E08()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5E190);
  v1 = __swift_project_value_buffer(v0, qword_27CE5E190);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_21D582ED0(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_contentViewMinHeightConstraint] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_searchBar] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_cancelButton] = 0;
  v1[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_hasDoneInitialLoad] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_mapDragRadiusView] = 0;
  v4 = OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_dragViewCircleColor;
  v5 = objc_opt_self();
  *&v1[v4] = [v5 ttr_systemBlueColor];
  v6 = OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_dragViewHandleColor;
  result = [v5 ttr_systemBlueColor];
  *&v1[v6] = result;
  v1[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_previousPopoverIgnoresKeyboardNotifications] = 2;
  *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_keyboardNotificationObservers] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_keyboardHideDeferredHandlingTimer] = 0;
  if (qword_280D19D68 != -1)
  {
    result = swift_once();
  }

  v8 = *(off_280D19D70 + 2);
  if (v8)
  {
    sub_21D0CEB98(off_280D19D70 + 32 * v8, v12);
    swift_dynamicCast();
    v9 = v13;
    *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_presenter] = v13;
    *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_viewModel] = *(v9 + 56);
    v11.receiver = v1;
    v11.super_class = ObjectType;
    swift_unknownObjectRetain();
    sub_21DBF8E0C();
    v10 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

    swift_unknownObjectRelease();
    if (v10)
    {
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21D58316C()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_keyboardHideDeferredHandlingTimer];
  if (v2)
  {
    [v2 invalidate];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_21D583380()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor_];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  v7 = sub_21DBFA12C();
  [v6 setAccessibilityIdentifier_];

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  [v8 setKeyboardDismissMode_];

  v10 = *&v0[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_presenter];
  v11 = OBJC_IVAR____TtC15RemindersUICore35TTRIReminderLocationPickerPresenter_showsDoneButton;
  if (*(v10 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderLocationPickerPresenter_showsDoneButton) == 1)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v0 action:sel_didTapCancel_];
    v13 = OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_cancelButton;
    v14 = *&v0[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_cancelButton];
    *&v0[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_cancelButton] = v12;

    v15 = [v0 navigationItem];
    v16 = *&v0[v13];
    [v15 setLeftBarButtonItem_];
  }

  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    [v17 setHidden_];

    sub_21D5835B0();
    sub_21D58385C();
    sub_21D583A78();
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_21D5835B0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_searchBar;
  if (*&v0[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_searchBar])
  {
    return;
  }

  v14 = [objc_allocWithZone(MEMORY[0x277D759F0]) initWithSearchResultsController_];
  [v14 setObscuresBackgroundDuringPresentation_];
  [v14 setHidesNavigationBarDuringPresentation_];
  [v14 setAutomaticallyShowsCancelButton_];
  v2 = [v0 navigationItem];
  [v2 setSearchController_];

  v3 = [v0 navigationItem];
  [v3 setHidesSearchBarWhenScrolling_];

  v4 = [v14 searchBar];
  v5 = *&v0[v1];
  *&v0[v1] = v4;
  v6 = v4;

  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  [v6 setAutocorrectionType_];

  v7 = *&v0[v1];
  if (!v7)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = qword_280D1BAA8;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v10 = sub_21DBFA12C();

  [v9 setPlaceholder_];

  v11 = *&v0[v1];
  if (!v11)
  {
    goto LABEL_14;
  }

  [v11 setTextContentType_];
  v12 = *&v0[v1];
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v12 setDelegate_];
  v13 = *&v0[v1];
  if (!v13)
  {
LABEL_16:
    __break(1u);
    return;
  }

  [v13 setLookToDictateEnabled_];
}

void sub_21D58385C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_mapDragRadiusView;
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_mapDragRadiusView))
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = Strong;
  [Strong frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v12;
  v14 = [objc_allocWithZone(TTRIReminderLocationPickerMapDragRadiusView) initWithFrame:v12 mapView:{v5, v7, v9, v11}];

  v15 = *(v0 + v1);
  *(v0 + v1) = v14;
  v16 = v14;

  if (!v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v16 setDelegate_];

  v17 = *(v0 + v1);
  if (!v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v17 setCircleColor_];
  v18 = *(v0 + v1);
  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v18 setHandleColor_];
  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = *(v0 + v1);
  if (!v20)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = v19;
  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v23 = v22;
  v24 = v20;
  [v21 insertSubview:v24 aboveSubview:v23];

  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v26 = v25;
  [v25 setAccessibilityContainerType_];
}

void sub_21D583A78()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v1 = Strong;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v2 = sub_21DBFA12C();

  [v1 setTitle:v2 forSegmentAtIndex:{0, 0x800000021DC4D750}];

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  sub_21DBF516C();
  v5 = sub_21DBFA12C();

  [v4 setTitle:v5 forSegmentAtIndex:{1, 0x800000021DC4D7C0}];
}

uint64_t sub_21D583CAC(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for TTRIReminderLocationPickerState(0);
  *&v6 = MEMORY[0x28223BE20](v5 - 8).n128_u64[0];
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61.receiver = v2;
  v61.super_class = ObjectType;
  objc_msgSendSuper2(&v61, sel_viewWillAppear_, a1 & 1, v6);
  if ((v2[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_hasDoneInitialLoad] & 1) == 0)
  {
    v9 = *&v2[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_presenter];
    v10 = OBJC_IVAR____TtC15RemindersUICore35TTRIReminderLocationPickerPresenter_state;
    swift_beginAccess();
    sub_21D5802D4(v9 + v10, v8);
    sub_21D584494(v8, 0);
    sub_21D58039C(v8);
  }

  v51 = objc_opt_self();
  v11 = [v51 defaultCenter];
  v12 = *MEMORY[0x277D76C60];
  v59 = 0u;
  v60 = 0u;
  v50 = objc_opt_self();
  v13 = [v50 mainQueue];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21D0D3954(&v59, &aBlock, &qword_27CE5C690);
  v15 = v56;
  if (v56)
  {
    v16 = __swift_project_boxed_opaque_existential_1(&aBlock, v56);
    v17 = *(v15 - 1);
    v18 = MEMORY[0x28223BE20](v16);
    v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);

    v21 = sub_21DBFC62C();
    (*(v17 + 8))(v20, v15);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }

  else
  {

    v21 = 0;
  }

  v57 = sub_21D5895D4;
  v58 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_21D0EE46C;
  v56 = &block_descriptor_57_1;
  v22 = _Block_copy(&aBlock);

  v23 = [v11 addObserverForName:v12 object:v21 queue:v13 usingBlock:v22];
  _Block_release(v22);
  swift_unknownObjectRelease();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v25;
  sub_21DBF902C();
  swift_allocObject();

  v52 = sub_21DBF903C();
  swift_unknownObjectRelease();

  sub_21D0CF7E0(&v59, &qword_27CE5C690);

  v27 = [v51 defaultCenter];
  v28 = *MEMORY[0x277D76BA0];
  v59 = 0u;
  v60 = 0u;
  v29 = [v50 mainQueue];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21D0D3954(&v59, &aBlock, &qword_27CE5C690);
  v31 = v56;
  if (v56)
  {
    v32 = __swift_project_boxed_opaque_existential_1(&aBlock, v56);
    v51 = &v49;
    v33 = v2;
    v34 = v29;
    v35 = v28;
    v36 = *(v31 - 1);
    v37 = MEMORY[0x28223BE20](v32);
    v39 = &v49 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v39, v37);

    v40 = sub_21DBFC62C();
    (*(v36 + 8))(v39, v31);
    v28 = v35;
    v29 = v34;
    v2 = v33;
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }

  else
  {

    v40 = 0;
  }

  v57 = sub_21D5895DC;
  v58 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v54 = 1107296256;
  v55 = sub_21D0EE46C;
  v56 = &block_descriptor_70;
  v41 = _Block_copy(&aBlock);

  v42 = [v27 addObserverForName:v28 object:v40 queue:v29 usingBlock:v41];
  _Block_release(v41);
  swift_unknownObjectRelease();
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = swift_allocObject();
  *(v45 + 16) = v43;
  *(v45 + 24) = v44;
  swift_allocObject();

  v46 = sub_21DBF903C();
  swift_unknownObjectRelease();

  sub_21D0CF7E0(&v59, &qword_27CE5C690);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_21DC0AA00;
  *(v47 + 32) = v52;
  *(v47 + 40) = v46;
  *&v2[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_keyboardNotificationObservers] = v47;
}

void sub_21D584494(uint64_t a1, int a2)
{
  v5 = sub_21DBF9D2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF9D5C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRIReminderLocationPickerState(0);
  v83 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v84 = v14;
  v85 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v15 - 8);
  v73 = &v68 - v16;
  v75 = sub_21DBF5D5C();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_tableView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_33;
  }

  v19 = Strong;
  v82 = v12;
  v20 = [Strong visibleCells];

  sub_21D0D8CF0(0, &unk_280D0C2F0);
  v21 = sub_21DBFA5EC();

  v86 = v2;
  v80 = v8;
  v79 = v10;
  v81 = a2;
  if (v21 >> 62)
  {
    v22 = sub_21DBFBD7C();
    if (!v22)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_11;
    }
  }

  if (v22 < 1)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  for (i = 0; i != v22; ++i)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x223D44740](i, v21);
    }

    else
    {
      v24 = *(v21 + 8 * i + 32);
    }

    v25 = v24;
    [v24 setAccessoryType_];
  }

LABEL_11:
  v78 = v9;
  v76 = v6;
  v77 = v5;

  v26 = *a1;
  v27 = *(a1 + 8);
  v28 = *(a1 + 16);
  v29 = *(a1 + 24);
  v31 = *(a1 + 32);
  v30 = *(a1 + 40);
  v32 = *(a1 + 48);
  v33 = *(a1 + 56);
  v35 = *(a1 + 64);
  v34 = *(a1 + 72);
  v36 = *(a1 + 80);
  if (*(a1 + 88))
  {
    if (*(a1 + 88) != 1)
    {
      goto LABEL_21;
    }

    *&v92 = *a1;
    *(&v92 + 1) = v27;
    *&v93 = v28;
    *(&v93 + 1) = v29;
    *&v94 = v31;
    *(&v94 + 1) = v30;
    *&v95 = v32;
    *(&v95 + 1) = v33;
    *&v96 = v35;
    *(&v96 + 1) = v34;
    v97 = v36;
    v98 = 1;
    v69 = v32;
    v70 = v34;
    sub_21D0D3954(&v92, &aBlock, &qword_27CE5E168);

    v26 = v27;
    v27 = v28;
    v28 = v29;
    v29 = v31;
    v31 = v30;
    v30 = v69;
    v37 = v33;
    v33 = v35;
    v35 = v70;
  }

  else
  {
    *&v92 = *a1;
    *(&v92 + 1) = v27;
    *&v93 = v28;
    *(&v93 + 1) = v29;
    *&v94 = v31;
    *(&v94 + 1) = v30;
    *&v95 = v32;
    *(&v95 + 1) = v33;
    *&v96 = v35;
    *(&v96 + 1) = v34;
    v97 = v36;
    v98 = 0;
    v38 = v32;
    v70 = v34;
    sub_21D0D3954(&v92, &aBlock, &unk_27CE5E3C0);
    v37 = v38;
    v36 = v70;
  }

  *&aBlock = v26;
  *(&aBlock + 1) = v27;
  *&v88 = v28;
  *(&v88 + 1) = v29;
  *&v89 = v31;
  *(&v89 + 1) = v30;
  *&v90 = v37;
  *(&v90 + 1) = v33;
  *&v91 = v35;
  *(&v91 + 1) = v36;
  v95 = v90;
  v96 = v91;
  v93 = v88;
  v94 = v89;
  v92 = aBlock;
  v39 = *&v86[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_viewModel];
  sub_21DBF8E0C();
  v40 = v73;
  sub_21D57FE18(&v92, v39, v73);

  v41 = v74;
  v42 = v75;
  if ((*(v74 + 48))(v40, 1, v75) == 1)
  {
    sub_21D580B70(&aBlock);
    sub_21D0CF7E0(v40, &unk_27CE58E70);
  }

  else
  {
    v43 = v72;
    (*(v41 + 32))(v72, v40, v42);
    v44 = swift_unknownObjectWeakLoadStrong();
    if (!v44)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v45 = v44;
    v46 = sub_21DBF5C6C();
    v47 = [v45 cellForRowAtIndexPath_];

    if (v47)
    {
      [v47 setAccessoryType_];

      sub_21D580B70(&aBlock);
      (*(v41 + 8))(v43, v42);
    }

    else
    {
      (*(v41 + 8))(v43, v42);
      sub_21D580B70(&aBlock);
    }
  }

LABEL_21:
  v48 = *(a1 + 112);
  v49 = v48 == 2;
  if (v48 < 2)
  {
    v50 = v86;
    v51 = swift_unknownObjectWeakLoadStrong();
    v52 = v78;
    v53 = v82;
    v54 = v81;
    if (v51)
    {
LABEL_29:
      v56 = v51;
      [v51 setSelectedSegmentIndex_];
LABEL_30:

      sub_21D0D8CF0(0, &qword_280D1B900);
      v57 = sub_21DBFB12C();
      v58 = a1;
      v59 = v85;
      sub_21D5802D4(v58, v85);
      v60 = (*(v83 + 80) + 24) & ~*(v83 + 80);
      v61 = v60 + v84;
      v62 = swift_allocObject();
      *(v62 + 16) = v50;
      sub_21D580A7C(v59, v62 + v60);
      *(v62 + v61) = v54 & 1;
      *&v89 = sub_21D58877C;
      *(&v89 + 1) = v62;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v88 = sub_21D0D74FC;
      *(&v88 + 1) = &block_descriptor_53;
      v63 = _Block_copy(&aBlock);
      v50;

      sub_21DBF9D4C();
      *&aBlock = MEMORY[0x277D84F90];
      sub_21D0CD898();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0CD8F0();
      v64 = v80;
      v65 = v77;
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v53, v64, v63);
      _Block_release(v63);

      (*(v76 + 8))(v64, v65);
      (*(v79 + 8))(v53, v52);
      v66 = swift_unknownObjectWeakLoadStrong();
      if (v66)
      {
        v67 = v66;
        [v66 setEnabled_];

        return;
      }

      goto LABEL_34;
    }

    __break(1u);
  }

  v52 = v78;
  v53 = v82;
  v50 = v86;
  v54 = v81;
  if (!v49)
  {
    v51 = swift_unknownObjectWeakLoadStrong();
    if (!v51)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = v55;
    [v55 setSelectedSegmentIndex_];
    goto LABEL_30;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_21D584E08()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_keyboardHideDeferredHandlingTimer);
    if (v2)
    {
      [v2 invalidate];
    }

    sub_21D584E78();
  }
}

uint64_t sub_21D584E78()
{
  v1 = v0;
  if (qword_27CE56A30 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5E190);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAEAC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21D0C9000, v3, v4, "Location picker: maintain max height for contentView", v5, 2u);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_contentViewMinHeightConstraint;
  result = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_contentViewMinHeightConstraint);
  if (!result)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = [result isActive];
  if (result)
  {
    return result;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_16;
  }

  v8 = result;
  [result bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v27.origin.x = v10;
  v27.origin.y = v12;
  v27.size.width = v14;
  v27.size.height = v16;
  Height = CGRectGetHeight(v27);
  v18 = sub_21DBF84AC();
  v19 = sub_21DBFAEAC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v20 = 136315138;
    v22 = sub_21DBFAA1C();
    v24 = sub_21D0CDFB4(v22, v23, &v25);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_21D0C9000, v18, v19, "max height to maintain = %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x223D46520](v21, -1, -1);
    MEMORY[0x223D46520](v20, -1, -1);
  }

  result = *(v1 + v6);
  if (!result)
  {
    goto LABEL_17;
  }

  [result setConstant_];
  result = *(v1 + v6);
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  return [result setActive_];
}

void sub_21D585120()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = sub_21DBF4D4C();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  *&v13 = sub_21DBFA16C();
  *(&v13 + 1) = v4;
  sub_21DBFBE2C();
  if (!*(v3 + 16) || (v5 = sub_21D17EA0C(v12), (v6 & 1) == 0))
  {

    sub_21D181D3C(v12);
LABEL_9:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_10;
  }

  sub_21D0CEB98(*(v3 + 56) + 32 * v5, &v13);
  sub_21D181D3C(v12);

  if (!*(&v14 + 1))
  {
LABEL_10:
    sub_21D0CF7E0(&v13, &qword_27CE5C690);
    goto LABEL_11;
  }

  if (!swift_dynamicCast())
  {
LABEL_11:
    v7 = 1.0;
    goto LABEL_12;
  }

  v7 = v12[0] + 1.0;
LABEL_12:
  v8 = OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_keyboardHideDeferredHandlingTimer;
  v9 = *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_keyboardHideDeferredHandlingTimer];
  if (v9)
  {
    [v9 invalidate];
  }

  v10 = [objc_opt_self() scheduledTimerWithTimeInterval:v1 target:sel_stopHoldingCurrentContentViewHeight selector:0 userInfo:0 repeats:v7];
  v11 = *&v1[v8];
  *&v1[v8] = v10;
}

id sub_21D58531C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_21DBF9D2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF9D5C();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v2;
  v24.super_class = ObjectType;
  result = objc_msgSendSuper2(&v24, sel_viewDidAppear_, a1 & 1, v11);
  v15 = OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_hasDoneInitialLoad;
  if ((*(v2 + OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_hasDoneInitialLoad) & 1) == 0)
  {
    sub_21D0D8CF0(0, &qword_280D1B900);
    v22 = sub_21DBFB12C();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    aBlock[4] = sub_21D5895CC;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_51_0;
    v17 = _Block_copy(aBlock);
    v21 = v9;
    v18 = v17;
    v19 = v2;

    sub_21DBF9D4C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21D0CD898();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0CD8F0();
    sub_21DBFBCBC();
    v20 = v22;
    MEMORY[0x223D438F0](0, v13, v8, v18);
    _Block_release(v18);

    (*(v6 + 8))(v8, v5);
    result = (*(v10 + 8))(v13, v21);
    *(v2 + v15) = 1;
  }

  return result;
}

void sub_21D5855F4(uint64_t a1)
{
  v2 = type metadata accessor for TTRIReminderLocationPickerState(0);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_searchBar;
  v7 = *(a1 + OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_searchBar);
  if (!v7)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  [v7 becomeFirstResponder];
  v8 = *(a1 + OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_presenter);
  v9 = OBJC_IVAR____TtC15RemindersUICore35TTRIReminderLocationPickerPresenter_state;
  swift_beginAccess();
  sub_21D5802D4(v8 + v9, v5);
  if (v5[88] && v5[88] == 1)
  {
    v10 = *(v5 + 9);
    v11 = *(v5 + 10);
    v12 = *(v5 + 7);
    v13 = *(v5 + 8);
    v14 = *(v5 + 5);
    v15 = *(v5 + 6);
    v16 = *(v5 + 3);
    v17 = *(v5 + 4);
    v18 = *(v5 + 1);
    v19 = *(v5 + 2);
    v28[0] = *v5;
    v20 = v28[0];
    v28[1] = v18;
    v28[2] = v19;
    v28[3] = v16;
    v28[4] = v17;
    v28[5] = v14;
    v28[6] = v15;
    v28[7] = v12;
    v28[8] = v13;
    v28[9] = v10;
    v28[10] = v11;
    v29 = 1;
    sub_21D0D3954(v28, v27, &qword_27CE5E168);

    v21 = [v20 structuredLocation];
    v22 = [v21 displayName];

    if (!v22)
    {
      sub_21D58039C(v5);

      return;
    }

    sub_21DBFA16C();

    sub_21D58039C(v5);
    v23 = *(a1 + v6);
    if (v23)
    {
      v24 = v23;
      v25 = sub_21DBFA12C();

      [v24 setText_];

      return;
    }

    goto LABEL_11;
  }

  sub_21D58039C(v5);
}

id sub_21D585878(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v7 = &v15 - v6;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  result = objc_msgSendSuper2(&v15, sel_willMoveToParentViewController_, a1, v5);
  if (!a1)
  {
    v9 = *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_presenter];
    if (qword_27CE56A10 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE5E0C8);
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC();

    v11 = sub_21DBFA89C();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_21DBFA84C();
    swift_unknownObjectRetain();
    v12 = sub_21DBFA83C();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    *(v13 + 16) = v12;
    *(v13 + 24) = v14;
    *(v13 + 32) = v9;
    *(v13 + 40) = 0;
    sub_21D1B5178(0, 0, v7, &unk_21DC1C310, v13);
  }

  return result;
}

void sub_21D585B48(char a1, double a2)
{
  sub_21D586FC0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_21;
  }

  v13 = Strong;
  [Strong contentInset];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  if (v15 != v5 || v17 != v7 || v19 != v9 || v21 != v11)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v2;
    *(v25 + 24) = v5;
    *(v25 + 32) = v7;
    *(v25 + 40) = v9;
    *(v25 + 48) = v11;
    if (a1)
    {
      v26 = objc_opt_self();
      aBlock[4] = sub_21D5894F8;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0D74FC;
      aBlock[3] = &block_descriptor_40;
      v27 = _Block_copy(aBlock);
      v28 = v2;

      [v26 animateWithDuration:v27 animations:a2];

      _Block_release(v27);
      return;
    }

    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = v29;
      v31 = v2;
      [v30 setScrollIndicatorInsets_];

      v32 = swift_unknownObjectWeakLoadStrong();
      if (v32)
      {
        v34 = v32;
        [v32 setContentInset_];

        return;
      }

LABEL_22:
      __break(1u);
      return;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }
}

unint64_t sub_21D585E0C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_viewModel);
  sub_21DBF8E0C();
  result = sub_21DBF5CCC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v4 + 16))
  {
    v6 = (v4 + 80 * result);
    __src[0] = v6[2];
    v7 = v6[3];
    v8 = v6[4];
    v9 = v6[6];
    __src[3] = v6[5];
    __src[4] = v9;
    __src[1] = v7;
    __src[2] = v8;
    sub_21D580B38(__src, v19);

    sub_21D582C04(a2, v10, type metadata accessor for TTRIReminderLocationPickerViewCell);
    v12 = v11;
    v13 = (v11 + OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_viewModelItem);
    v19[0] = *v13;
    v14 = v13[4];
    v16 = v13[1];
    v15 = v13[2];
    v19[3] = v13[3];
    v19[4] = v14;
    v19[1] = v16;
    v19[2] = v15;
    memmove(v13, __src, 0x50uLL);
    sub_21D580B38(__src, v17);
    sub_21D580B38(__src, v17);
    sub_21D0CF7E0(v19, &qword_27CE5E3D0);
    sub_21D587414();
    sub_21D580B70(__src);
    sub_21D580B70(__src);
    return v12;
  }

  __break(1u);
  return result;
}

void sub_21D586174(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_viewModel];
  sub_21DBF8E0C();
  v5 = sub_21DBF5CCC();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(v4 + 16))
  {
    v6 = (v4 + 80 * v5);
    v13[0] = v6[2];
    v7 = v6[3];
    v8 = v6[4];
    v9 = v6[6];
    v13[3] = v6[5];
    v13[4] = v9;
    v13[1] = v7;
    v13[2] = v8;
    sub_21D580B38(v13, v12);

    sub_21D57BFE0(v13);
    v10 = sub_21DBF5C6C();
    [a1 deselectRowAtIndexPath:v10 animated:1];

    v11 = [v2 firstResponder];
    [v11 resignFirstResponder];
    sub_21D580B70(v13);

    return;
  }

  __break(1u);
}

id sub_21D586540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  result = *(a1 + OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_mapDragRadiusView);
  if (result)
  {
    return [result *a5];
  }

  __break(1u);
  return result;
}

uint64_t sub_21D58683C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = *(v5 + OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_presenter);
  if (qword_27CE56A10 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_27CE5E0C8);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  v12 = sub_21DBFA89C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_21DBFA84C();
  swift_unknownObjectRetain();
  v13 = sub_21DBFA83C();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = v10;
  *(v14 + 40) = 1;
  sub_21D1B5178(0, 0, v9, a5, v14);
}

uint64_t sub_21D586A1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_unknownObjectRetain();
  v12 = a1;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D58683C(v14, a4, a5, a6, a7);

  return __swift_destroy_boxed_opaque_existential_0(v14);
}

void sub_21D586AB4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = Strong;
  v3 = [Strong selectedSegmentIndex];

  if (v3 == 1)
  {
    v4 = 2;
    goto LABEL_6;
  }

  if (!v3)
  {
    v4 = 1;
LABEL_6:
    sub_21D57C724(v4);
    return;
  }

  if (qword_27CE56A30 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE5E190);
  v12 = v0;
  oslog = sub_21DBF84AC();
  v6 = sub_21DBFAECC();
  if (!os_log_type_enabled(oslog, v6))
  {

    v11 = v12;
    goto LABEL_13;
  }

  v7 = swift_slowAlloc();
  *v7 = 134217984;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
LABEL_17:

    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v8 selectedSegmentIndex];

  *(v7 + 4) = v10;
  _os_log_impl(&dword_21D0C9000, oslog, v6, "Unexpected selected index for alarmProximitySegmentedControl {index: %ld}", v7, 0xCu);
  MEMORY[0x223D46520](v7, -1, -1);
  v11 = oslog;
LABEL_13:
}

void sub_21D586CE8(uint64_t a1, __int128 *a2)
{
  v32 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E128);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = *(a2 + 12);
  v7 = *(a2 + 104);
  v38 = v6;
  v39 = v7;
  v8 = a2[1];
  v41 = *a2;
  v42 = v8;
  v9 = a2[3];
  v43 = a2[2];
  v44 = v9;
  *v45 = a2[4];
  *&v45[9] = *(a2 + 73);
  v10 = v42;
  v12 = *(&v43 + 1);
  v11 = v43;
  v14 = *(&v9 + 1);
  v13 = v9;
  v16 = *&v45[8];
  v15 = *v45;
  if (!v45[24])
  {
    v30 = *(&v41 + 1);
    v31 = v41;
    v19 = *(&v42 + 1);
    v29 = v42;
    sub_21D57ED3C(v6, v7);
    sub_21D58029C(&v41, &v33);
    v17 = v30;
    v18 = v29;
    v20 = v31;
    goto LABEL_5;
  }

  if (v45[24] == 1)
  {
    v29 = *&v45[16];
    v30 = *(&v41 + 1);
    v31 = v41;
    v28 = *(&v42 + 1);
    sub_21D57ED3C(v6, v7);
    sub_21D58029C(&v41, &v33);

    v17 = v10;
    v18 = v28;
    v19 = v11;
    v11 = v12;
    v12 = v13;
    v13 = v14;
    v14 = v15;
    v15 = v16;
    v20 = v30;
    v16 = v29;
LABEL_5:
    *&v33 = v20;
    *(&v33 + 1) = v17;
    *&v34 = v18;
    *(&v34 + 1) = v19;
    *&v35 = v11;
    *(&v35 + 1) = v12;
    *&v36 = v13;
    *(&v36 + 1) = v14;
    *&v37 = v15;
    *(&v37 + 1) = v16;
    goto LABEL_7;
  }

  sub_21D57ED3C(v6, v7);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
LABEL_7:
  v40[2] = v35;
  v40[3] = v36;
  v40[4] = v37;
  v40[0] = v33;
  v40[1] = v34;
  v21 = type metadata accessor for TTRIReminderLocationPickerState(0);
  sub_21D0D3954(a2 + *(v21 + 28), v5, &qword_27CE5E128);
  v22 = sub_21DBF779C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v5, 1, v22) == 1)
  {
    sub_21D0CF7E0(v5, &qword_27CE5E128);
    if (*(a2 + 104))
    {
      v24 = 0;
    }

    else
    {
      v25 = *(a2 + 12);
      v26 = v25;
      v24 = sub_21DBFADDC();
      sub_21D57EF34(v25, 0);
    }
  }

  else
  {
    v24 = sub_21DBF778C();
    (*(v23 + 8))(v5, v22);
  }

  sub_21D588DF8(&v38, v40, v24);

  sub_21D0CF7E0(&v33, &qword_27CE5E3D0);
  sub_21D57EF34(v38, v39);
}

void sub_21D586FC0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v1 = Strong;
  v2 = [Strong isHidden];

  if (v2)
  {
LABEL_6:
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      [v8 contentInset];

      return;
    }

    goto LABEL_9;
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    [v5 bounds];

    v7 = swift_unknownObjectWeakLoadStrong();
    UIScrollView.bottomContentInset(forAvoiding:of:)(v7);

    goto LABEL_6;
  }

LABEL_11:
  __break(1u);
}

void sub_21D5870F8(double a1, double a2, double a3, double a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = Strong;
  [Strong setScrollIndicatorInsets_];

  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 setContentInset_];
}

id sub_21D5871C8()
{
  v1 = v0;
  if (qword_27CE56A30 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5E190);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAEAC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21D0C9000, v3, v4, "Location picker: stop maintain max height for contentView", v5, 2u);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  result = *(v1 + OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_contentViewMinHeightConstraint);
  if (result)
  {

    return [result setActive_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21D587414()
{
  v1 = &v0[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_viewModelItem];
  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_viewModelItem + 16];
  v40 = *&v0[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_viewModelItem];
  v41 = v2;
  v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_viewModelItem + 48];
  v42 = *&v0[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_viewModelItem + 32];
  v43 = v3;
  v44 = *&v0[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_viewModelItem + 64];
  v4 = *(&v40 + 1);
  if (*(&v40 + 1))
  {
    v5 = v40;
    v33 = *(&v41 + 1);
    v34 = v41;
    v6 = v42;
    v7 = *(&v43 + 1);
    v8 = v43;
    v9 = *(&v44 + 1);
    v35 = *(&v42 + 1);
    v36 = v44;
    v10 = *&v0[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_nameLabel];
    v37 = v43;
    if (v10)
    {
      sub_21D0D3954(&v40, v39, &qword_27CE5E3D0);
      v11 = v10;
      v12 = sub_21DBFA12C();
      [v11 setText_];

      v8 = v37;
    }

    else
    {
      v13 = *(v1 + 3);
      v39[2] = *(v1 + 2);
      v39[3] = v13;
      v39[4] = *(v1 + 4);
      v14 = *(v1 + 1);
      v39[0] = *v1;
      v39[1] = v14;
      sub_21D580B38(v39, aBlock);
    }

    v15 = *&v0[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_addressLabel];
    if (v15)
    {
      v16 = v15;
      v17 = sub_21DBFA12C();
      [v16 setText_];

      v8 = v37;
    }

    v18 = *&v0[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_pinImageView];
    if (v18)
    {
      if (v8)
      {
        v19 = v7;
        v20 = objc_opt_self();
        v21 = v18;
        v32 = v6;
        v22 = v8;
        v23 = v20;
        v7 = v19;
        v24 = [v23 configurationWithPointSize_];
        v8 = [v22 imageWithConfiguration_];

        v6 = v32;
      }

      else
      {
        v21 = v18;
      }

      [v21 setImage_];

      v8 = v37;
    }

    v25 = *&v0[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_pinImageBackgroundView];
    if (v25)
    {
      v26 = swift_allocObject();
      v26[2] = v5;
      v26[3] = v4;
      v26[4] = v34;
      v26[5] = v33;
      v26[6] = v6;
      v26[7] = v35;
      v26[8] = v8;
      v26[9] = v7;
      v26[10] = v36;
      v26[11] = v9;
      v27 = objc_allocWithZone(MEMORY[0x277D75348]);
      aBlock[4] = sub_21D5894F0;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D114B20;
      aBlock[3] = &block_descriptor_34_0;
      v28 = _Block_copy(aBlock);
      sub_21D0D3954(&v40, v39, &qword_27CE5E3D0);
      v29 = v25;
      v30 = [v27 initWithDynamicProvider_];
      _Block_release(v28);

      [v29 setBackgroundColor_];
    }

    v31 = sub_21DBFA12C();
    [v0 setAccessibilityIdentifier_];

    sub_21D0CF7E0(&v40, &qword_27CE5E3D0);
  }
}

id sub_21D587790(void *a1, uint64_t a2)
{
  if ([a1 accessibilityContrast] == 1)
  {
    v4 = sub_21DBFB24C();
  }

  else
  {
    v4 = a1;
  }

  v5 = v4;
  v6 = [*(a2 + 56) resolvedColorWithTraitCollection_];

  return v6;
}

void sub_21D587818()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, sel_awakeFromNib);
  v2 = [v0 textLabel];
  if (v2)
  {
    v3 = v2;
    if (qword_280D176B8 != -1)
    {
      swift_once();
    }

    v4 = sub_21D900614(1);
    [v3 setFont_];
  }

  v5 = [v1 detailTextLabel];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() preferredFontForTextStyle_];
    [v6 setFont_];
  }

  v8 = *&v1[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_nameLabel];
  if (!v8)
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 labelColor];
  [v10 setTextColor_];

  v12 = *&v1[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_addressLabel];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  v14 = [v9 secondaryLabelColor];
  [v13 setTextColor_];

  v15 = OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_pinImageView;
  v16 = *&v1[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_pinImageView];
  if (!v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = v16;
  v18 = [v9 ttr_systemWhiteColor];
  [v17 setTintColor_];

  v19 = *&v1[v15];
  if (!v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v19 setContentMode_];
  v20 = OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_pinImageBackgroundView;
  v21 = *&v1[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_pinImageBackgroundView];
  if (!v21)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = [v21 layer];
  v23 = *&v1[v20];
  if (!v23)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v23 bounds];
  [v22 setCornerRadius_];

  v24 = *&v1[v20];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = [v24 layer];
  [v25 setMasksToBounds_];

  v26 = *&v1[v20];
  if (v26)
  {
    v27 = v26;
    v28 = [v9 ttr_systemRedColor];
    [v27 setBackgroundColor_];

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_21D587BA4()
{
  v27.receiver = v0;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_nameLabel;
  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_nameLabel];
  if (v2)
  {
    [v2 bounds];
    [v0 convertRect:*&v0[v1] fromView:?];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v0 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v0 effectiveUserInterfaceLayoutDirection];
    v28.origin.x = v4;
    v28.origin.y = v6;
    v28.size.width = v8;
    v28.size.height = v10;
    CGRectGetMinY(v28);
    v29.origin.x = v12;
    v29.origin.y = v14;
    v29.size.width = v16;
    v29.size.height = v18;
    CGRectGetMinY(v29);
    v30.origin.x = v12;
    v30.origin.y = v14;
    v30.size.width = v16;
    v30.size.height = v18;
    CGRectGetMaxY(v30);
    v31.origin.x = v4;
    v31.origin.y = v6;
    v31.size.width = v8;
    v31.size.height = v10;
    CGRectGetMaxY(v31);
    v32.origin.x = v4;
    v32.origin.y = v6;
    v32.size.width = v8;
    v32.size.height = v10;
    MinX = CGRectGetMinX(v32);
    v33.origin.x = v12;
    v33.origin.y = v14;
    v33.size.width = v16;
    v33.size.height = v18;
    v25 = CGRectGetMinX(v33);
    v34.origin.x = v12;
    v34.origin.y = v14;
    v34.size.width = v16;
    v34.size.height = v18;
    MaxX = CGRectGetMaxX(v34);
    v35.origin.x = v4;
    v35.origin.y = v6;
    v35.size.width = v8;
    v35.size.height = v10;
    v21 = CGRectGetMaxX(v35);
    if (!v19)
    {
      v22 = MinX - v25;
LABEL_6:
      [v0 setSeparatorInset_];
      return;
    }

    if (v19 == 1)
    {
      v22 = MaxX - v21;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  if (qword_27CE56650 != -1)
  {
    swift_once();
  }

  v23 = sub_21DBF84BC();
  __swift_project_value_buffer(v23, qword_27CE5B1E8);
  v24 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v24);
  sub_21DAEAB00("unknown layout direction", 24, 2);
  __break(1u);
}

id sub_21D587F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_viewModelItem];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *&v3[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_nameLabel] = 0;
  *&v3[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_addressLabel] = 0;
  *&v3[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_pinImageView] = 0;
  *&v3[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_pinImageBackgroundView] = 0;
  if (a3)
  {
    v8 = sub_21DBFA12C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_, a1, v8);

  return v9;
}

id sub_21D5880BC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_viewModelItem];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *&v1[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_nameLabel] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_addressLabel] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_pinImageView] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore34TTRIReminderLocationPickerViewCell_pinImageBackgroundView] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

void sub_21D5883C0(const CGPath *a1, CGContext *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_21DBF5DCC();
  v8 = *(v7 - 8);
  *&v10 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v3[OBJC_IVAR____TtC15RemindersUICore59TTRIReminderLocationPickerViewControllerLeaveCircleRenderer_proximity];
  if (v13 >= 2)
  {
    if (v13 == 2)
    {
      v14 = v9;
      [v3 rectForMapRect_];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      CGContextSaveGState(a2);
      v29.origin.x = v16;
      v29.origin.y = v18;
      v29.size.width = v20;
      v29.size.height = v22;
      CGContextAddRect(a2, v29);
      CGContextAddPath(a2, a1);
      (*(v8 + 104))(v12, *MEMORY[0x277CBF258], v14);
      sub_21DBFAE2C();
      (*(v8 + 8))(v12, v14);
      v23 = [v3 fillColor];
      if (!v23)
      {
        v23 = [objc_opt_self() blueColor];
      }

      v24 = v23;
      v25 = [v23 CGColor];

      CGContextSetFillColorWithColor(a2, v25);
      v30.origin.x = v16;
      v30.origin.y = v18;
      v30.size.width = v20;
      v30.size.height = v22;
      CGContextFillRect(a2, v30);
      CGContextRestoreGState(a2);
    }

    else
    {
      if (qword_27CE56A30 != -1)
      {
        swift_once();
      }

      v26 = sub_21DBF84BC();
      __swift_project_value_buffer(v26, qword_27CE5E190);
      v27 = MEMORY[0x277D84F90];
      sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21D17716C(v27);
      sub_21DAEAB00("unknown proximity", 17, 2);
      __break(1u);
    }
  }

  else
  {
    v28.receiver = v3;
    v28.super_class = ObjectType;
    [(CGPath *)&v28 fillPath:a1 inContext:a2, v10];
  }
}

void sub_21D58877C()
{
  v1 = *(type metadata accessor for TTRIReminderLocationPickerState(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  sub_21D586CE8(v2, v3);
}

unint64_t sub_21D588800(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRIReminderLocationPickerState(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_viewModel);
  sub_21DBF8E0C();
  result = sub_21DBF5CCC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v7 + 16))
  {
    v9 = v7 + 80 * result;
    v10 = *(v9 + 40);
    v30 = *(v9 + 32);
    v11 = *(v9 + 72);
    v12 = *(v9 + 88);
    v13 = *(v9 + 104);
    v33 = *(v9 + 80);
    v31 = v12;
    v32 = v13;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v34 = v11;
    sub_21DBF8E0C();

    v14 = *(v2 + OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_presenter);
    v15 = OBJC_IVAR____TtC15RemindersUICore35TTRIReminderLocationPickerPresenter_state;
    swift_beginAccess();
    sub_21D5802D4(v14 + v15, v6);
    v16 = v6[2];
    v17 = v6[4];
    v39 = v6[3];
    *v40 = v17;
    *&v40[9] = *(v6 + 73);
    v18 = v6[1];
    v36 = *v6;
    v37 = v18;
    v38 = v16;
    sub_21D58029C(&v36, v35);
    sub_21D58039C(v6);
    v19 = *(&v36 + 1);
    v20 = v36;
    v21 = *(&v39 + 1);
    v22 = v39;
    if (v40[24])
    {
      if (v40[24] != 1)
      {
        goto LABEL_11;
      }

      v29 = v10;
      v23 = a1;
      v24 = *v40;
      v25 = v37;

      v20 = v19;
      v19 = v25;
      v22 = v21;
      v21 = v24;
      a1 = v23;
      v10 = v29;
    }

    if (v20 == v30 && v19 == v10)
    {

      v26 = 3;
LABEL_12:
      [a1 setAccessoryType_];
    }

    v27 = sub_21DBFC64C();

    if (v27)
    {
      v26 = 3;
      goto LABEL_12;
    }

LABEL_11:
    v26 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_21D588AE0()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 window];

  if (!v3)
  {
    return;
  }

  v4 = [v3 traitCollection];

  v5 = [v4 horizontalSizeClass];
  if (v5 != 1)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = Strong;
  [Strong setAccessibilityElementsHidden_];
}

void sub_21D588BE4()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderLocationPickerPresenter_state;
    swift_beginAccess();
    v4 = *(v3 + 112);
    v5 = type metadata accessor for TTRIReminderLocationPickerViewControllerLeaveCircleRenderer();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC15RemindersUICore59TTRIReminderLocationPickerViewControllerLeaveCircleRenderer_proximity] = v4;
    v15.receiver = v6;
    v15.super_class = v5;
    swift_unknownObjectRetain();
    v7 = objc_msgSendSuper2(&v15, sel_initWithCircle_, v2);
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 ttr_systemBlueColor];
    [v9 setStrokeColor_];

    v11 = [v8 ttr_systemBlueColor];
    v12 = [v11 colorWithAlphaComponent_];

    [v9 setFillColor_];
    [v9 setLineWidth_];

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27CE56A30 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_27CE5E190);
    v14 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v14);
    sub_21DAEAB00("Unexpected overlay type to render", 33, 2);
    __break(1u);
  }
}

void sub_21D588DF8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 8) >= 2u && *a1 == 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = Strong;
  [Strong setHidden_];

  v9 = [v3 view];
  if (!v9)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = v9;
  [v9 setNeedsLayout];

  v11 = *(a2 + 8);
  if (v11)
  {
    v12 = *a2;
    v13 = *(a2 + 32);
    v38 = *(a2 + 16);
    v39 = v13;
    v14 = *(a2 + 64);
    v40 = *(a2 + 48);
    v41 = v14;
    if (a3)
    {
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        v16 = v15;
        v17 = swift_unknownObjectWeakLoadStrong();
        if (v17)
        {
          v18 = v17;
          v19 = a3;
          sub_21D0D3954(a2, v37, &qword_27CE5E3D0);
          v20 = [v18 annotations];

          if (!v20)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E3D8);
            sub_21DBFA5EC();
            v20 = sub_21DBFA5DC();
          }

          [v16 removeAnnotations_];

          v21 = type metadata accessor for TTRIReminderLocationPickerMapAnnotation();
          v22 = objc_allocWithZone(v21);
          v23 = &v22[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderLocationPickerMapAnnotation_item];
          *v23 = v12;
          *(v23 + 1) = v11;
          v24 = v39;
          *(v23 + 1) = v38;
          *(v23 + 2) = v24;
          v25 = v41;
          *(v23 + 3) = v40;
          *(v23 + 4) = v25;
          *&v22[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderLocationPickerMapAnnotation_region] = v19;
          v26 = v19;
          sub_21D0D3954(a2, v37, &qword_27CE5E3D0);
          v36.receiver = v22;
          v36.super_class = v21;
          v27 = objc_msgSendSuper2(&v36, sel_init);
          v28 = swift_unknownObjectWeakLoadStrong();
          if (v28)
          {
            v29 = v28;
            [v28 addAnnotation_];

            v30 = swift_unknownObjectWeakLoadStrong();
            if (v30)
            {
              v31 = v30;
              v32 = swift_unknownObjectWeakLoadStrong();
              if (v32)
              {
                v33 = v32;
                v34 = [v32 overlays];

                if (!v34)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E440);
                  sub_21DBFA5EC();
                  v34 = sub_21DBFA5DC();
                }

                [v31 removeOverlays_];

                v35 = *&v3[OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_mapDragRadiusView];
                if (v35)
                {
                  [v35 startEditingRegion_];

                  sub_21D0CF7E0(a2, &qword_27CE5E3D0);
                  return;
                }

LABEL_27:
                __break(1u);
                return;
              }

LABEL_26:
              __break(1u);
              goto LABEL_27;
            }

LABEL_25:
            __break(1u);
            goto LABEL_26;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }
}

void sub_21D58913C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  if (a2)
  {
  }
}

uint64_t sub_21D5891BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC15RemindersUICore40TTRIReminderLocationPickerViewController_presenter);
  if (qword_27CE56A10 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE5E0C8);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  v6 = sub_21DBFA89C();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  sub_21DBFA84C();
  swift_unknownObjectRetain();
  v7 = sub_21DBFA83C();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v4;
  *(v8 + 40) = 1;
  sub_21D1B5178(0, 0, v3, &unk_21DC1C2F8, v8);
}

uint64_t sub_21D589368(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D0F00D0;

  return sub_21D57CFB0(a1, v4, v5, v6, v7);
}

uint64_t sub_21D58942C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D0F00D0;

  return sub_21D57D820(a1, v4, v5, v6, v7);
}

uint64_t sub_21D589508(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D1B795C;

  return sub_21D57D820(a1, v4, v5, v6, v7);
}

void *assignWithCopy for TTRIReminderLocationPickerViewController.Argument(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = v3;
  return a1;
}

_OWORD *assignWithTake for TTRIReminderLocationPickerViewController.Argument(_OWORD *a1, _OWORD *a2)
{
  swift_unknownObjectRelease();
  *a1 = *a2;
  return a1;
}

uint64_t sub_21D5896A0(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v33 - v6);
  v42 = MEMORY[0x277D84FA0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21DBFBD1C();
    sub_21D37FB1C();
    sub_21D58BFA4(&qword_280D17870, sub_21D37FB1C);
    result = sub_21DBFAB5C();
    a1 = v43;
    v9 = v44;
    v10 = v45;
    v11 = v46;
    v12 = v47;
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v9 = a1 + 56;
    v14 = ~v13;
    v15 = -v13;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v12 = v16 & *(a1 + 56);
    result = sub_21DBF8E0C();
    v10 = v14;
    v11 = 0;
  }

  v33 = v10;
  v17 = (v10 + 64) >> 6;
  v35 = v17;
  v36 = v9;
  v37 = a1;
  while (a1 < 0)
  {
    v22 = sub_21DBFBDBC();
    if (!v22 || (v40 = v22, sub_21D37FB1C(), swift_dynamicCast(), v21 = v41, v20 = v11, v39 = v12, !v41))
    {
LABEL_26:
      sub_21D0CFAF8();
      v32 = sub_21D25B6A0(v42);

      return v32;
    }

LABEL_18:
    v23 = v38;
    swift_beginAccess();
    if (*(v23[12] + 16) && (sub_21D17E07C(v21), (v24 & 1) != 0))
    {
      swift_endAccess();
      v25 = v38;

      v26 = v21;
      v27 = sub_21DBF8E0C();
      v28 = sub_21D2A06F4(v27, v25, v26);

      v29 = *(v28 + 16);
      if (!v29)
      {
        goto LABEL_8;
      }
    }

    else
    {
      swift_endAccess();
      v28 = MEMORY[0x277D84F90];
      v29 = *(MEMORY[0x277D84F90] + 16);
      if (!v29)
      {
        goto LABEL_8;
      }
    }

    v30 = v28 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v31 = *(v34 + 72);
    do
    {
      sub_21D58BFEC(v30, v7, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21D29BEAC(v4, v7);
      sub_21D58A408(v4, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      v30 += v31;
      --v29;
    }

    while (v29);
LABEL_8:

    v11 = v20;
    v12 = v39;
    v9 = v36;
    a1 = v37;
    v17 = v35;
  }

  v18 = v11;
  v19 = v12;
  v20 = v11;
  if (v12)
  {
LABEL_14:
    v39 = (v19 - 1) & v19;
    v21 = *(*(a1 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v21)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_26;
    }

    v19 = *(v9 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters.diff.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(0) + 20);
  v4 = sub_21DBF76AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters.init(originalTree:diff:useReloadRecurrentAnimation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  *a4 = a1;
  updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(0);
  v8 = *(updated + 20);
  v9 = sub_21DBF76AC();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  a4[*(updated + 24)] = a3;
  return result;
}

uint64_t sub_21D589C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL TTRRemindersListTreeViewModelUpdateContext.shouldReload.getter()
{
  updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType(0);
  MEMORY[0x28223BE20](updated - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D58BFEC(v0 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_viewUpdateType, v3, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C8);
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  if (v5 != 1)
  {
    sub_21D58A408(v3, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters);
  }

  return v5 == 1;
}

uint64_t TTRRemindersListTreeViewModelUpdateContext.animated.getter()
{
  updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType(0);
  MEMORY[0x28223BE20](updated - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D58BFEC(v0 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_viewUpdateType, v3, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C8);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    return 0;
  }

  v5 = v3[*(v4 + 48)];
  sub_21D58A408(v3, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters);
  return v5;
}

uint64_t TTRRemindersListTreeViewModelUpdateContext.updatedItemIDs.getter()
{
  v1 = v0;
  updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(0);
  MEMORY[0x28223BE20](updated);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D58BFEC(v1 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_viewUpdateType, v7, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C8);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    return MEMORY[0x277D84FA0];
  }

  sub_21D58A3A0(v7, v4, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters);
  v10 = sub_21DBF6E3C();
  sub_21D4F5F28(v10);
  v12 = v11;

  v13 = sub_21D5896A0(v12);

  v15[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0);
  type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  sub_21D58A138();
  sub_21D58BFA4(&qword_280D19570, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v14 = sub_21DBFA49C();
  sub_21D58A408(v4, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters);

  return v14;
}

unint64_t sub_21D58A138()
{
  result = qword_280D0C3E8;
  if (!qword_280D0C3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D0C3E8);
  }

  return result;
}

uint64_t TTRRemindersListTreeViewModelUpdateContext.orderedAncestorsToExpandForStartingEditing.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v17 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  sub_21D589C24(v0 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_itemToStartEditing, v3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E4D0);
  if ((*(*(v10 - 8) + 48))(v3, 1, v10) == 1)
  {
    sub_21D0CF7E0(v3, &qword_27CE5E4C0);
    return MEMORY[0x277D84F90];
  }

  else
  {
    sub_21D58A3A0(v3, v6, type metadata accessor for TTRRemindersListViewModel.Item);
    sub_21D58A3A0(v6, v9, type metadata accessor for TTRRemindersListViewModel.Item);
    v12 = *(v0 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_internalTreeViewModel);
    v13 = *(v12 + 24);
    v14 = *(v12 + 32);
    ObjectType = swift_getObjectType();
    v17[1] = v13;
    TTRTreeContentsQueryable.ancestors(of:)(v9, ObjectType, *(v14 + 8));
    v16 = sub_21DBFC11C();

    sub_21D58A408(v9, type metadata accessor for TTRRemindersListViewModel.Item);
    return v16;
  }
}

uint64_t sub_21D58A3A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D58A408(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TTRRemindersListTreeViewModelUpdateContext.__allocating_init(currentTreeViewModel:itemToStartEditing:viewUpdateType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  TTRRemindersListTreeViewModelUpdateContext.init(currentTreeViewModel:itemToStartEditing:viewUpdateType:)(a1, a2, a3);
  return v6;
}

uint64_t TTRRemindersListTreeViewModelUpdateContext.init(currentTreeViewModel:itemToStartEditing:viewUpdateType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(0);
  MEMORY[0x28223BE20](updated - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  v20 = v4 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_cachedTreeViewUpdates;
  *v20 = 1;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  *(v20 + 40) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_internalTreeViewModel) = a1;
  sub_21D589C24(a2, v4 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_itemToStartEditing);
  sub_21D58BFEC(a3, v16, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType);
  sub_21D58BFEC(a3, v13, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C8);
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v13, 1, v21) == 1)
  {
    sub_21D58A408(a3, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType);
    sub_21D0CF7E0(a2, &qword_27CE5E4C0);
  }

  else
  {
    sub_21D58A3A0(v13, v10, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters);

    v23 = TTRRemindersListTreeViewModel.isEffectivelyEmpty.getter();

    sub_21D58A408(a3, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType);
    sub_21D0CF7E0(a2, &qword_27CE5E4C0);
    sub_21D58A408(v10, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters);
    if (v23)
    {
      sub_21D58A408(v16, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType);
      (*(v22 + 56))(v16, 1, 1, v21);
    }
  }

  sub_21D58A3A0(v16, v19, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType);
  sub_21D58A3A0(v19, v4 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_viewUpdateType, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType);
  return v4;
}

uint64_t TTRRemindersListTreeViewModelUpdateContext.treeViewUpdatesComputeIfNeeded()@<X0>(uint64_t a1@<X8>)
{
  updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(0);
  MEMORY[0x28223BE20](updated - 8);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D58BFEC(v1 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_viewUpdateType, v8, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C8);
  result = (*(*(v9 - 8) + 48))(v8, 1, v9);
  if (result == 1)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    v11 = v8[*(v9 + 48)];
    sub_21D58A3A0(v8, v5, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters);
    sub_21D58A998(v5, v11, a1);
    return sub_21D58A408(v5, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters);
  }

  return result;
}

uint64_t sub_21D58A998@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_cachedTreeViewUpdates);
  v6 = v5;
  v7 = *(v3 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_cachedTreeViewUpdates + 8);
  v8 = *(v3 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_cachedTreeViewUpdates + 16);
  v9 = *(v3 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_cachedTreeViewUpdates + 24);
  v10 = *(v3 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_cachedTreeViewUpdates + 32);
  v11 = *(v3 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_cachedTreeViewUpdates + 40);
  if (v5 == 1)
  {
    v12 = *(v3 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_internalTreeViewModel);
    v13 = *a1;
    updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(0);
    v29 = a1;
    v15 = sub_21DBF6E3C();
    sub_21D4F5F28(v15);
    v17 = v16;

    v19 = *(v13 + 24);
    v18 = *(v13 + 32);
    ObjectType = swift_getObjectType();
    v30[5] = v19;
    v20 = *(v12 + 24);
    v21 = *(v12 + 32);
    v30[3] = swift_getObjectType();
    v30[4] = *(v21 + 8);
    v30[0] = v20;
    v22 = swift_allocObject();
    v22[2] = v17;
    v22[3] = v13;
    v22[4] = v12;
    v23 = *(v18 + 8);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    TTRTreeContentsQueryable<>.diff(with:contentEqualityChecker:)(v30, sub_21D2A0FB4, v22, ObjectType, v23, &protocol witness table for TTRRemindersListViewModel.Item, &v31);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(v30);
    v6 = v31;
    if (a2)
    {
      if (qword_280D19258 != -1)
      {
        swift_once();
      }

      v24 = &xmmword_280D19260;
    }

    else
    {
      if (qword_280D19290 != -1)
      {
        swift_once();
      }

      v24 = &xmmword_280D19298;
    }

    v10 = *(v24 + 3);
    v11 = *(v24 + 4);
    v8 = *(v24 + 1);
    v9 = *(v24 + 2);
    v7 = *v24;
    if (*(v29 + *(updated + 24)))
    {
      v11 = 0;
    }
  }

  *a3 = v6;
  a3[1] = v7;
  a3[2] = v8;
  a3[3] = v9;
  a3[4] = v10;
  a3[5] = v11;
  return sub_21D58BF94(v5);
}

uint64_t TTRRemindersListTreeViewModelUpdateContext.deinit()
{
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_itemToStartEditing, &qword_27CE5E4C0);

  sub_21D58A408(v0 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_viewUpdateType, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType);
  sub_21D58AC74(*(v0 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_cachedTreeViewUpdates));
  return v0;
}

uint64_t sub_21D58AC74(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t TTRRemindersListTreeViewModelUpdateContext.__deallocating_deinit()
{
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_itemToStartEditing, &qword_27CE5E4C0);

  sub_21D58A408(v0 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_viewUpdateType, type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType);
  sub_21D58AC74(*(v0 + OBJC_IVAR____TtC15RemindersUICore42TTRRemindersListTreeViewModelUpdateContext_cachedTreeViewUpdates));

  return swift_deallocClassInstance();
}

void sub_21D58AD70()
{
  sub_21D58AE7C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType(319);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21D58AE7C()
{
  if (!qword_280D142D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE5E4D0);
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_280D142D0);
    }
  }
}

char *initializeBufferWithCopyOfBuffer for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C8);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    *a1 = *a2;
    updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(0);
    v13 = *(updated + 20);
    v14 = sub_21DBF76AC();
    v15 = *(*(v14 - 8) + 16);

    v15(&a1[v13], &a2[v13], v14);
    a1[*(updated + 24)] = a2[*(updated + 24)];
    a1[*(v7 + 48)] = a2[*(v7 + 48)];
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C8);
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {

    v4 = *(type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(0) + 20);
    v5 = sub_21DBF76AC();
    v6 = *(*(v5 - 8) + 8);

    return v6(a1 + v4, v5);
  }

  return result;
}

void *initializeWithCopy for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C8);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    *a1 = *a2;
    updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(0);
    v11 = *(updated + 20);
    v12 = sub_21DBF76AC();
    v13 = *(*(v12 - 8) + 16);

    v13(a1 + v11, a2 + v11, v12);
    *(a1 + *(updated + 24)) = *(a2 + *(updated + 24));
    *(a1 + *(v6 + 48)) = *(a2 + *(v6 + 48));
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

char *assignWithCopy for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      *a1 = *a2;
      updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(0);
      v12 = *(updated + 20);
      v13 = sub_21DBF76AC();
      v14 = *(*(v13 - 8) + 16);

      v14(&a1[v12], &a2[v12], v13);
      a1[*(updated + 24)] = a2[*(updated + 24)];
      a1[*(v6 + 48)] = a2[*(v6 + 48)];
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      *a1 = *a2;

      v17 = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(0);
      v18 = *(v17 + 20);
      v19 = sub_21DBF76AC();
      (*(*(v19 - 8) + 24))(&a1[v18], &a2[v18], v19);
      a1[*(v17 + 24)] = a2[*(v17 + 24)];
      a1[*(v6 + 48)] = a2[*(v6 + 48)];
      return a1;
    }

    sub_21D0CF7E0(a1, &qword_27CE5E4C8);
  }

  v15 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v15);
}

void *initializeWithTake for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C8);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    *a1 = *a2;
    updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(0);
    v11 = *(updated + 20);
    v12 = sub_21DBF76AC();
    (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
    *(a1 + *(updated + 24)) = *(a2 + *(updated + 24));
    *(a1 + *(v6 + 48)) = *(a2 + *(v6 + 48));
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

char *assignWithTake for TTRRemindersListTreeViewModelUpdateContext.ViewUpdateType(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      *a1 = *a2;
      updated = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(0);
      v12 = *(updated + 20);
      v13 = sub_21DBF76AC();
      (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
      a1[*(updated + 24)] = a2[*(updated + 24)];
      a1[*(v6 + 48)] = a2[*(v6 + 48)];
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      *a1 = *a2;

      v16 = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(0);
      v17 = *(v16 + 20);
      v18 = sub_21DBF76AC();
      (*(*(v18 - 8) + 40))(&a1[v17], &a2[v17], v18);
      a1[*(v16 + 24)] = a2[*(v16 + 24)];
      a1[*(v6 + 48)] = a2[*(v6 + 48)];
      return a1;
    }

    sub_21D0CF7E0(a1, &qword_27CE5E4C8);
  }

  v14 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v14);
}

uint64_t sub_21D58B990(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C8);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 1, v2);
}

uint64_t sub_21D58BA04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E4C8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 1, v4);
}

uint64_t sub_21D58BA80()
{
  result = type metadata accessor for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(319);
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(char *a1, char *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v9 = sub_21DBF76AC();
    v10 = *(*(v9 - 8) + 16);

    v10(&v6[v7], &a2[v7], v9);
    v6[*(a3 + 24)] = a2[*(a3 + 24)];
  }

  return v6;
}

uint64_t destroy for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = sub_21DBF76AC();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *initializeWithCopy for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_21DBF76AC();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  a1[*(a3 + 24)] = a2[*(a3 + 24)];
  return a1;
}

char *assignWithCopy for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = sub_21DBF76AC();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  a1[*(a3 + 24)] = a2[*(a3 + 24)];
  return a1;
}

char *initializeWithTake for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_21DBF76AC();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  a1[*(a3 + 24)] = a2[*(a3 + 24)];
  return a1;
}

char *assignWithTake for TTRRemindersListTreeViewModelUpdateContext.TreeDiffGenerationParameters(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = sub_21DBF76AC();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  a1[*(a3 + 24)] = a2[*(a3 + 24)];
  return a1;
}

uint64_t sub_21D58BEF0()
{
  result = sub_21DBF76AC();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D58BF94(uint64_t result)
{
  if (result != 1)
  {
    return sub_21DBF8E0C();
  }

  return result;
}

uint64_t sub_21D58BFA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D58BFEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D58C054()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5E4E0);
  v1 = __swift_project_value_buffer(v0, qword_27CE5E4E0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21D58C11C(uint64_t a1, BOOL *a2)
{
  v84 = a2;
  v86 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E520);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v78 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v78 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v78 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v78 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v78 - v19;
  v87 = v2;
  v21 = *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_presenter);
  v22 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_viewModel;
  swift_beginAccess();
  sub_21D58E1BC(v21 + v22, v20);
  v88 = v20;
  sub_21D58E1BC(v20, v17);
  v23 = type metadata accessor for TTRReminderCellTitleViewModel();
  v24 = *(*(v23 - 1) + 48);
  if (v24(v17, 1, v23) == 1)
  {
    sub_21D0CF7E0(v17, &qword_27CE5E520);
    v25 = 0;
  }

  else
  {
    v25 = v17[v23[8]];
    sub_21D58E22C(v17);
  }

  sub_21D58E1BC(v88, v14);
  if (v24(v14, 1, v23) == 1)
  {
    sub_21D0CF7E0(v14, &qword_27CE5E520);
    v26 = [objc_opt_self() secondaryLabelColor];
    if (!v25)
    {
LABEL_6:
      v27 = [objc_opt_self() labelColor];
      goto LABEL_9;
    }
  }

  else
  {
    v26 = *&v14[v23[11]];
    sub_21D58E22C(v14);
    if (!v25)
    {
      goto LABEL_6;
    }
  }

  v27 = v26;
LABEL_9:
  v85 = v27;
  sub_21D58E1BC(v88, v11);
  if (v24(v11, 1, v23) == 1)
  {
    sub_21D0CF7E0(v11, &qword_27CE5E520);
  }

  else
  {
    v28 = &v11[v23[9]];
    v29 = *v28;
    v30 = v28[8];
    sub_21D58E22C(v11);
    if (v30 != 1)
    {
      goto LABEL_13;
    }
  }

  v29 = 0;
LABEL_13:
  v31 = v86;
  sub_21D58E1BC(v88, v8);
  v32 = v24(v8, 1, v23);
  v83 = v26;
  if (v32 == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE5E520);
    if (qword_280D176B8 != -1)
    {
      swift_once();
    }

    v33 = sub_21D900614(1);
  }

  else
  {
    v33 = *&v8[v23[6]];
    sub_21D58E22C(v8);
  }

  v34.super.isa = UIFont.withCustomWeight(_:)(*MEMORY[0x277D74420]).super.isa;
  isa = v34.super.isa;
  if (v29 <= 0)
  {
    v36 = v33;
  }

  else
  {
    v36 = v34.super.isa;
  }

  if (v31)
  {
    v37 = v36;
    v38 = v31;
  }

  else
  {
    v39 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v40 = v36;
    v38 = [v39 init];
  }

  sub_21D58E1BC(v88, v5);
  if (v24(v5, 1, v23) == 1)
  {
    v41 = v31;
    sub_21D0CF7E0(v5, &qword_27CE5E520);
    v42 = 0;
  }

  else
  {
    v42 = *&v5[v23[10]];
    sub_21DBF8E0C();
    v43 = v31;
    sub_21D58E22C(v5);
  }

  v44 = OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView;
  v45 = *(v87 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView);
  if (!v45)
  {
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v80 = v33;
  v46 = [v45 text];
  if (v46)
  {
    v47 = v46;
    v48 = sub_21DBFA16C();
    v50 = v49;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  v86 = v38;
  v51 = [v38 string];
  v52 = sub_21DBFA16C();
  v54 = v53;

  v81 = v42;
  if (v50)
  {
    if (v48 == v52 && v50 == v54)
    {
      v55 = 1;
    }

    else
    {
      v55 = sub_21DBFC64C();
    }
  }

  else
  {
    v55 = 0;
  }

  v82 = v55;

  v78 = v44;
  v56 = *(v87 + v44);
  if (!v56)
  {
    goto LABEL_45;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  v58 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v59 = *MEMORY[0x277D740A8];
  v60 = v85;
  *(inited + 40) = v85;
  *(inited + 48) = v59;
  *(inited + 56) = v36;
  v61 = v59;
  v79 = v36;
  v62 = v61;
  v63 = v56;
  v64 = v58;
  v65 = v60;
  v66 = sub_21D177570(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F310);
  swift_arrayDestroy();
  v67 = swift_initStackObject();
  *(v67 + 16) = xmmword_21DC08D00;
  *(v67 + 32) = v62;
  *(v67 + 40) = isa;
  v68 = isa;
  v69 = sub_21D177570(v67);
  swift_setDeallocating();
  sub_21D0CF7E0(v67 + 32, &unk_27CE5F310);
  v89 = v81;
  v70 = v86;
  sub_21D6C3690(v86, v66, v69, &v89);

  v71 = v82;
  if (v82)
  {
    sub_21D0CF7E0(v88, &qword_27CE5E520);

LABEL_43:
    *v84 = (v71 & 1) == 0;
    return;
  }

  v72 = v79;
  v73 = *(v87 + v78);
  if (v73)
  {
    v74 = v73;
    v75 = [v74 endOfDocument];
    v76 = [v74 endOfDocument];
    v77 = [v74 textRangeFromPosition:v75 toPosition:v76];

    [v74 setSelectedTextRange_];
    sub_21D0CF7E0(v88, &qword_27CE5E520);
    goto LABEL_43;
  }

LABEL_46:
  __break(1u);
}

void sub_21D58CA34(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E520);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v14 = OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView;
  v15 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView);
  if (!v15)
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v53 = a1;
  sub_21D58E1BC(a1, &v51 - v12);
  v16 = type metadata accessor for TTRReminderCellTitleViewModel();
  v17 = *(*(v16 - 1) + 48);
  if (v17(v13, 1, v16) == 1)
  {
    v18 = v15;
    sub_21D0CF7E0(v13, &qword_27CE5E520);
    v19 = 0;
  }

  else
  {
    v19 = v13[v16[5]];
    v20 = v15;
    sub_21D58E22C(v13);
  }

  [v15 setEditable_];

  v21 = *(v1 + v14);
  if (!v21)
  {
    goto LABEL_34;
  }

  v22 = v1;
  v23 = v14;
  if ([v21 isEditing])
  {
    v24 = *(v1 + v14);
    if (v24)
    {
      sub_21D58E1BC(v53, v10);
      if (v17(v10, 1, v16) == 1)
      {
        v25 = v24;
        sub_21D0CF7E0(v10, &qword_27CE5E520);
        v26 = 0;
      }

      else
      {
        v26 = *&v10[v16[10]];
        sub_21DBF8E0C();
        v34 = v24;
        sub_21D58E22C(v10);
      }

      v35 = *&v24[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_reminderTextStorage];
      v36 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
      swift_beginAccess();
      v37 = *(v35 + v36);
      *(v35 + v36) = v26;
      sub_21DBF8E0C();
      v54[0] = v37;
      sub_21D980810(v54);

      v38 = *(v22 + v23);
      if (v38)
      {
        v39 = *&v38[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_animationSupport];
        if (v39)
        {
          v40 = v38;
          v41 = v39;
          sub_21DA8E08C();

LABEL_20:
          return;
        }

        return;
      }

      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v55 = 0;
  sub_21D58E1BC(v53, v7);
  if (v17(v7, 1, v16) == 1)
  {
    sub_21D0CF7E0(v7, &qword_27CE5E520);
    v27 = 0;
  }

  else
  {
    v27 = *&v7[v16[7]];
    v28 = v27;
    sub_21D58E22C(v7);
  }

  sub_21D58C11C(v27, &v55);

  v29 = *(v1 + v14);
  if (!v29)
  {
    goto LABEL_36;
  }

  v30 = *(v29 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_animationSupport);
  if (v30)
  {
    v31 = OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_activeEffect;
    swift_beginAccess();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E528);
    v33 = (*(*(v32 - 8) + 48))(v30 + v31, 1, v32) != 0;
  }

  else
  {
    v33 = 1;
  }

  v42 = v52;
  sub_21D58E1BC(v53, v52);
  if (v17(v42, 1, v16) == 1)
  {
    sub_21D0CF7E0(v42, &qword_27CE5E520);
    v43 = 0;
  }

  else
  {
    v43 = *(v42 + v16[12]);
    sub_21D58E22C(v42);
  }

  v44 = *(v22 + v14);
  if (!v44)
  {
    goto LABEL_38;
  }

  v45 = v44;
  sub_21D6C2E1C(v43);

  if (v33 || !v55 || ((v43 ^ 1) & 1) != 0)
  {
    return;
  }

  v46 = *(v22 + v14);
  if (!v46)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v47 = *&v46[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_animationSupport];
  if (v47)
  {
    v48 = OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_activeEffect;
    swift_beginAccess();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E528);
    if (!(*(*(v49 - 8) + 48))(&v47[v48], 1, v49))
    {
      v40 = v46;
      v50 = v47;
      sub_21DA8E08C();

      sub_21D6C2E1C(1);
      goto LABEL_20;
    }
  }
}

void sub_21D58CF60(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    v13 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView);
    if (v13)
    {
      oslog = v13;
      sub_21D98115C(MEMORY[0x277D84FA0]);
      sub_21D6C4EA8(MEMORY[0x277D84F90]);
      goto LABEL_16;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v2 = OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView;
  if (!*(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView))
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = *(a1 + 24);
  if ([*(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView) isEditing])
  {
    v4 = *(v1 + v2);
    if (v4)
    {
      v5 = *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_reminderTextStorage];
      v6 = v4;
      v7 = [v5 string];
      v8 = sub_21DBFA16C();
      v10 = v9;

      TTRReminderCellTextHighlights.rebased(forCurrentText:)(v8, v10, v18);

      sub_21D98115C(v18[2]);

      sub_21D6C4EA8(v3);
      v11 = *&v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_suggestions];
      if (v11 >> 62)
      {
        sub_21D0D8CF0(0, &qword_280D0C2B0);
        sub_21DBF8E0C();
        v12 = sub_21DBFC33C();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        sub_21DBFC65C();
        sub_21D0D8CF0(0, &qword_280D0C2B0);
        v12 = v11;
      }

      sub_21D6C5B68(v12);

      return;
    }

LABEL_22:
    __break(1u);
    return;
  }

  if (qword_27CE56A38 != -1)
  {
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_27CE5E4E0);
  oslog = sub_21DBF84AC();
  v15 = sub_21DBFAEAC();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_21D0C9000, oslog, v15, "Unexpected applyAugmentation called", v16, 2u);
    MEMORY[0x223D46520](v16, -1, -1);
  }

LABEL_16:
}

void sub_21D58D240(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView;
  v5 = *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView);
  if (!v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v5 setAttributedText_];
  if ((a2 & 1) == 0)
  {
    return;
  }

  v7 = *(v2 + v4);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [v8 endOfDocument];
  v10 = *(v2 + v4);
  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = [v10 endOfDocument];
  v12 = [v8 textRangeFromPosition:v9 toPosition:v11];

  [v8 setSelectedTextRange_];
}

void sub_21D58D470(void *a1, uint64_t a2, NSUInteger a3, uint64_t a4, void *a5)
{
  if (a4 == 10 && a5 == 0xE100000000000000 || (sub_21DBFC64C() & 1) != 0)
  {
    *(v5 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_userPressedReturn) = 1;
    v11 = *(*(v5 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_editingPresenter + 8);
    ObjectType = swift_getObjectType();
    v13 = sub_21D59480C();
    (*(v11 + 80))(v13, 1, ObjectType, v11);
LABEL_5:

    return;
  }

  if (a4 == 9 && a5 == 0xE100000000000000 || (sub_21DBFC64C() & 1) != 0)
  {
    v14 = *(v5 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_presenter);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 40);
      v16 = swift_getObjectType();
      v13 = (*(v15 + 8))(v14, &off_282EC5888, v16, v15);
      swift_unknownObjectRelease();
      if (v13)
      {
        [v13 becomeFirstResponder];
        goto LABEL_5;
      }
    }
  }

  v17 = v5;
  v18 = [a1 textStorage];
  TTRHashtagTokenTextInteraction.adjustTextReplacement(in:affectedRange:replacementText:)(v18, a2, a3, a4, a5, &v45);

  isa = v45.originalText.super.isa;
  location = v45.originalRangeReplaced.location;
  if (LOBYTE(v45.originalRangeReplaced.length) <= 1u)
  {
    if (LOBYTE(v45.originalRangeReplaced.length))
    {
      [a1 setSelectedRange_];
      return;
    }

    v21 = *(v5 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView);
    if (v21)
    {
      v22 = v21;
      sub_21D6C4004(isa, location);
LABEL_17:

      return;
    }

    __break(1u);
    goto LABEL_36;
  }

  if (LOBYTE(v45.originalRangeReplaced.length) == 2)
  {
    v23 = [a1 beginningOfDocument];
    v22 = [a1 positionFromPosition:v23 offset:isa];

    if (v22)
    {
      v24 = [a1 positionFromPosition:v22 offset:location];
      if (!v24)
      {
        goto LABEL_17;
      }

      v25 = v24;
      v26 = [a1 textRangeFromPosition:v22 toPosition:v24];

      if (v26)
      {
        v27 = sub_21DBFA12C();
        [a1 replaceRange:v26 withText:v27];

        v28 = [a1 markedTextRange];
        v29 = v28;
        if (v28)
        {
        }

        v44 = v26;
        v30 = *(v17 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_presenter);
        v31 = [a1 attributedText];
        if (v31)
        {
          v32 = v31;
          v43 = v29 != 0;
          LOBYTE(v45.originalText.super.isa) = 2;
          sub_21DBF8E0C();
          sub_21D594724(&v45);
          v33 = *(v30 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_editingPresenter + 8);
          v34 = swift_getObjectType();
          v35 = sub_21D59480C();
          v45.originalText.super.isa = v32;
          v45.originalRangeReplaced.location = isa;
          v45.originalRangeReplaced.length = location;
          v45.replacementText.value._countAndFlagsBits = a4;
          v45.replacementText.value._object = a5;
          (*(v33 + 64))(v35, &v45, v43, v34, v33);

          return;
        }

        goto LABEL_38;
      }
    }
  }

  else if (*&v45.originalText.super.isa == 0)
  {
    v36 = [a1 attributedText];
    if (!v36)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v45.originalText.super.isa = v36;
    v45.originalRangeReplaced.location = a2;
    v45.originalRangeReplaced.length = a3;
    v45.replacementText.value._countAndFlagsBits = a4;
    v45.replacementText.value._object = a5;
    sub_21DBF8E0C();
    TTRReminderTextChangeDetailCapturer.capture(_:)(&v45);

    v37 = *(v5 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView);
    if (!v37)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    v38 = OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_firstCharNeedsCapitalization;
    if ((*(v37 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_firstCharNeedsCapitalization) & 1) == 0)
    {
      v39 = v37;
      if (a2)
      {
        v40 = 0;
      }

      else
      {
        v41 = v39;
        v42 = [v39 _textInputSource];
        v39 = v41;
        v40 = v42 == 3;
      }

      *(v37 + v38) = v40;
    }
  }
}

id sub_21D58D9EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E520);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_presenter);
  v7 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_viewModel;
  swift_beginAccess();
  sub_21D58E1BC(v6 + v7, v5);
  v8 = type metadata accessor for TTRReminderCellTitleViewModel();
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v5, 1, v8);
  result = sub_21D0CF7E0(v5, &qword_27CE5E520);
  if (v7 != 1)
  {
    v10 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView);
    if (v10)
    {
      v11 = v10;
      sub_21D6C3BC0();

      v12 = [a1 markedTextRange];
      v13 = v12;
      if (v12)
      {
      }

      result = [a1 text];
      if (result)
      {
        v14 = result;
        v15 = v13 != 0;
        v29 = v13 != 0;
        v16 = sub_21DBFA16C();
        v18 = v17;

        v19._countAndFlagsBits = v16;
        v19._object = v18;
        TTRReminderTextChangeDetailCapturer.consume(editedText:textViewHasMarkedText:)(&v30, v19, v15);

        isa = v30.value.originalText.super.isa;
        location = v30.value.originalRangeReplaced.location;
        length = v30.value.originalRangeReplaced.length;
        countAndFlagsBits = v30.value.replacementText.value._countAndFlagsBits;
        object = v30.value.replacementText.value._object;
        LOBYTE(v30.value.originalText.super.isa) = 2;
        sub_21D594724(&v30);
        v25 = *(v6 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_editingPresenter + 8);
        ObjectType = swift_getObjectType();
        v27 = sub_21D59480C();
        v30.value.originalText.super.isa = isa;
        v30.value.originalRangeReplaced.location = location;
        v30.value.originalRangeReplaced.length = length;
        v30.value.replacementText.value._countAndFlagsBits = countAndFlagsBits;
        v30.value.replacementText.value._object = object;
        (*(v25 + 64))(v27, &v30, v29, ObjectType, v25);

        return sub_21D300F14(isa);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21D58DF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(v3 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_editingPresenter + 8);
  ObjectType = swift_getObjectType();
  v8 = sub_21D59480C();
  v9 = (*(v6 + 120))(a2, a3, v8, ObjectType, v6);

  return v9;
}

void sub_21D58DFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(v3 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_editingPresenter + 8);
  ObjectType = swift_getObjectType();
  v8 = sub_21D59480C();
  (*(v6 + 128))(a2, a3, v8, ObjectType, v6);
}

void sub_21D58E084()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_editingPresenter + 8);
  ObjectType = swift_getObjectType();
  v3 = sub_21D59480C();
  (*(v1 + 72))(v3, ObjectType, v1);
}

uint64_t sub_21D58E114(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_presenter);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 40);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 40))(a2, a1, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_21D58E1BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D58E22C(uint64_t a1)
{
  v2 = type metadata accessor for TTRReminderCellTitleViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D58E288()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_presenter);
  result = sub_21D5944AC();
  if ((result & 1) == 0)
  {
    return result & 1;
  }

  v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView);
  if (v4)
  {
    if (*(v2 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_quickBar))
    {
      v5 = *(v2 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_quickBar + 8);
      v6 = result;
      swift_getObjectType();
      v7 = *(v5 + 16);
      v8 = v4;
      v7();

      LOBYTE(result) = v6;
    }

    return result & 1;
  }

  __break(1u);
  return result;
}

void sub_21D58E348()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_userPressedReturn) = 0;
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView);
  if (!v2)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = v0;
  v4 = v2;
  sub_21D6C39DC();

  v5 = *(v3 + v1);
  if (!v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ([v5 isEditing])
  {
    v6 = *(v3 + v1);
    if (!v6)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v7 = [v6 text];
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v7;
    v9 = sub_21DBFA16C();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12)
    {
LABEL_9:
      v13 = *(v3 + v1);
      if (!v13)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v14 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v15 = v13;
      v16 = sub_21DBFA12C();
      v17 = [v14 initWithString_];

      [v15 setAttributedText_];
      v18 = *(v3 + v1);
      if (!v18)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      [v18 setNeedsLayout];
      v19 = *(v3 + v1);
      if (!v19)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      [v19 layoutIfNeeded];
      v20 = *(v3 + v1);
      if (!v20)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v21 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v22 = v20;
      v23 = sub_21DBFA12C();
      v24 = [v21 initWithString_];

      [v22 setAttributedText_];
    }
  }

  v25 = *(v3 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_presenter);
  v31 = 1;
  sub_21D594724(&v31);
  v26 = *(v25 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_editingPresenter + 8);
  ObjectType = swift_getObjectType();
  (*(v26 + 56))(0, ObjectType, v26);
  v28 = *(v3 + v1);
  if (!v28)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v29 = v28;
  v30 = [v29 textStorage];
  NSMutableAttributedString.clearLinks()();
}

void sub_21D58E5C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_isChangingSelection;
    swift_beginAccess();
    if ((*(v1 + v2) & 1) == 0)
    {
      v3 = v1;
      v4 = [v3 selectedRange];
      v6 = v5;
      v7 = [v3 textStorage];
      v8.location = v4;
      v8.length = v6;
      v9 = TTRHashtagTokenTextInteraction.adjustSelection(_:in:)(v8, v7);

      if (v9.location != v4 || v9.length != v6)
      {
        [v3 setSelectedRange_];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_21D58E6C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_presenter);
    if (*(v2 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_quickBar))
    {
      v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_quickBar + 8);
      swift_getObjectType();
      v4 = *(v3 + 24);
      v5 = v1;
      v4();
    }

    v6 = *(v0 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_userPressedReturn);
    v10 = 3;
    sub_21D594724(&v10);
    v7 = *(v2 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_editingPresenter + 8);
    ObjectType = swift_getObjectType();
    v9 = sub_21D59480C();
    (*(v7 + 104))(v9, v6, ObjectType, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21D58E7F0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5E540);
  v1 = __swift_project_value_buffer(v0, qword_27CE5E540);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D58E8B8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F300);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_presenter);
  v13 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_viewModel;
  swift_beginAccess();
  sub_21D590914(v12 + v13, v11);
  if (a1)
  {
    v14 = a1;
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  }

  sub_21D590914(v11, v8);
  v15 = type metadata accessor for TTRIReminderCellNotesViewModel();
  v16 = *(*(v15 - 8) + 48);
  if (v16(v8, 1, v15) == 1)
  {
    v17 = a1;
    result = sub_21D0CF7E0(v8, &unk_27CE5F300);
    v19 = 0;
  }

  else
  {
    v19 = *&v8[*(v15 + 32)];
    sub_21DBF8E0C();
    v20 = a1;
    result = sub_21D590984(v8);
  }

  v21 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView);
  if (!v21)
  {
    __break(1u);
    return result;
  }

  sub_21D590914(v11, v5);
  if (v16(v5, 1, v15) == 1)
  {
    v22 = v21;
    sub_21D0CF7E0(v5, &unk_27CE5F300);
LABEL_11:
    v23 = sub_21D177570(MEMORY[0x277D84F90]);

    goto LABEL_12;
  }

  v23 = *&v5[*(v15 + 28)];
  sub_21DBF8E0C();
  v24 = v21;
  sub_21D590984(v5);
  if (!v23)
  {
    goto LABEL_11;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  v26 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v27 = qword_280D176B8;
  v28 = v26;
  if (v27 != -1)
  {
    swift_once();
  }

  *(inited + 40) = sub_21D900614(9);
  v29 = sub_21D177570(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &unk_27CE5F310);
  v30 = v19;
  sub_21D6C3690(v14, v23, v29, &v30);

  sub_21D0CF7E0(v11, &unk_27CE5F300);
}

void sub_21D58EC24(unsigned __int8 *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  if (a4)
  {
    v8 = *(*(v4 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_editingPresenter + 8);
    ObjectType = swift_getObjectType();
    v10 = sub_21D596F14();
    v25 = v10;
    if (v6)
    {
      if (v6 == 1)
      {
        v11 = (v8)[15](a3, a4, v10, ObjectType, v8);
      }

      else
      {
        v11 = (v8)[16](a3, a4, v10, ObjectType, v8);
      }
    }

    else
    {
      v11 = (v8)[14](a3, a4, v10, ObjectType, v8);
    }

    return;
  }

  v13 = &a2[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_styleTypingAttributeState];
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  v17 = [a2 attributedText];
  if (!v17)
  {
    __break(1u);
    return;
  }

  if (!v6)
  {
    v18 = v14;
    if (v14)
    {
      goto LABEL_10;
    }

LABEL_18:
    if (a3 > 0)
    {
      v20 = a3 - 1;
      v21 = v17;
      v22 = [v17 rem:v20 fontHintAtIndex:0 effectiveRange:?];
      if (v6)
      {
        if (v6 == 1)
        {

          v20 = (v22 >> 1) & 1;
        }

        else
        {
          LODWORD(v20) = [v21 rem:v20 isUnderlinedAtIndex:0 effectiveRange:?];
        }
      }

      else
      {

        LODWORD(v20) = v22 & 1;
      }

      if (v20)
      {
        v19 = 2;
      }

      else
      {
        v19 = 1;
      }

      goto LABEL_28;
    }

    goto LABEL_22;
  }

  v18 = v15;
  if (v6 != 1)
  {
    v18 = v16;
  }

  if (!v18)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (v18 != 1)
  {
LABEL_22:

    v19 = 1;
    goto LABEL_28;
  }

  v19 = 2;
LABEL_28:
  if (v6 == 1)
  {
    v23 = v19;
  }

  else
  {
    v23 = v15;
  }

  if (v6 == 1)
  {
    v24 = v16;
  }

  else
  {
    v24 = v19;
  }

  if (v6)
  {
    v19 = v14;
  }

  else
  {
    v23 = v15;
  }

  if (!v6)
  {
    v24 = v16;
  }

  v26[0] = v19;
  v26[1] = v23;
  v26[2] = v24;
  sub_21D6C5278(v26);
}

void sub_21D58EF58(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView) = a1;

  v4 = a1;
  [v4 setDelegate_];
  if (qword_280D165F8 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBFA12C();
  [v4 setAccessibilityLabel_];

  v6 = sub_21DBFA12C();
  [v4 setAccessibilityIdentifier_];
}

void sub_21D58F058(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F300);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v32 - v12;
  v14 = OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView;
  v15 = *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView);
  if (!v15)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (![v15 isEditing])
  {
    sub_21D590914(a1, v9);
    v20 = type metadata accessor for TTRIReminderCellNotesViewModel();
    if ((*(*(v20 - 8) + 48))(v9, 1, v20) == 1)
    {
      sub_21D0CF7E0(v9, &unk_27CE5F300);
      v21 = 0;
    }

    else
    {
      v21 = *&v9[*(v20 + 24)];
      v22 = v21;
      sub_21D590984(v9);
    }

    sub_21D58E8B8(v21);

LABEL_12:
    v27 = *(v2 + v14);
    if (v27)
    {
      sub_21D590914(a1, v6);
      v28 = type metadata accessor for TTRIReminderCellNotesViewModel();
      if ((*(*(v28 - 8) + 48))(v6, 1, v28) == 1)
      {
        v29 = v27;
        sub_21D0CF7E0(v6, &unk_27CE5F300);
        if ([v29 allowsEditingTextAttributes])
        {
          v30 = 0;
LABEL_17:
          [v27 setAllowsEditingTextAttributes_];
        }
      }

      else
      {
        v30 = v6[*(v28 + 36)];
        v31 = v27;
        sub_21D590984(v6);
        if (v30 != [v31 allowsEditingTextAttributes])
        {
          goto LABEL_17;
        }
      }

      return;
    }

    goto LABEL_20;
  }

  v16 = *(v2 + v14);
  if (v16)
  {
    sub_21D590914(a1, v13);
    v17 = type metadata accessor for TTRIReminderCellNotesViewModel();
    if ((*(*(v17 - 8) + 48))(v13, 1, v17) == 1)
    {
      v18 = v16;
      sub_21D0CF7E0(v13, &unk_27CE5F300);
      v19 = 0;
    }

    else
    {
      v19 = *&v13[*(v17 + 32)];
      sub_21DBF8E0C();
      v23 = v16;
      sub_21D590984(v13);
    }

    v24 = *&v16[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_reminderTextStorage];
    v25 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
    swift_beginAccess();
    v26 = *(v24 + v25);
    *(v24 + v25) = v19;
    sub_21DBF8E0C();
    v32 = v26;
    sub_21D980810(&v32);

    goto LABEL_12;
  }

LABEL_21:
  __break(1u);
}

void sub_21D58F3D4(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    v13 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView);
    if (v13)
    {
      oslog = v13;
      sub_21D98115C(MEMORY[0x277D84FA0]);
      sub_21D6C4EA8(MEMORY[0x277D84F90]);
      goto LABEL_16;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v2 = OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView;
  if (!*(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView))
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = *(a1 + 24);
  if ([*(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView) isEditing])
  {
    v4 = *(v1 + v2);
    if (v4)
    {
      v5 = *&v4[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_reminderTextStorage];
      v6 = v4;
      v7 = [v5 string];
      v8 = sub_21DBFA16C();
      v10 = v9;

      TTRReminderCellTextHighlights.rebased(forCurrentText:)(v8, v10, v18);

      sub_21D98115C(v18[2]);

      sub_21D6C4EA8(v3);
      v11 = *&v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_suggestions];
      if (v11 >> 62)
      {
        sub_21D0D8CF0(0, &qword_280D0C2B0);
        sub_21DBF8E0C();
        v12 = sub_21DBFC33C();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        sub_21DBFC65C();
        sub_21D0D8CF0(0, &qword_280D0C2B0);
        v12 = v11;
      }

      sub_21D6C5B68(v12);

      return;
    }

LABEL_22:
    __break(1u);
    return;
  }

  if (qword_27CE56A40 != -1)
  {
    swift_once();
  }

  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_27CE5E540);
  oslog = sub_21DBF84AC();
  v15 = sub_21DBFAEAC();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_21D0C9000, oslog, v15, "Unexpected applyAugmentation called", v16, 2u);
    MEMORY[0x223D46520](v16, -1, -1);
  }

LABEL_16:
}

id sub_21D58F6B4(id result, char a2)
{
  v4 = result;
  if ((a2 & 1) == 0)
  {
    if (!*(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView))
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v12.receiver = *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView);
    v12.super_class = type metadata accessor for TTRIExpandingTextView();
    objc_msgSendSuper2(&v12, sel_setContentOffset_, 0.0, 0.0);
  }

  v5 = OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView;
  result = *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView);
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  result = [result setScrollEnabled_];
  v6 = *(v2 + v5);
  if (!v6)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = v4 & 1;
  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = 8;
  }

  v9 = &v6[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins];
  result = swift_beginAccess();
  v10 = *v9;
  v11 = v9[8];
  *v9 = v8;
  v9[8] = v7;
  if (v7)
  {
    if (v11)
    {
      return result;
    }

    return [v6 invalidateIntrinsicContentSize];
  }

  if (v10 != 8)
  {
    LOBYTE(v11) = 1;
  }

  if (v11)
  {
    return [v6 invalidateIntrinsicContentSize];
  }

  return result;
}

void sub_21D58F968(void *a1, uint64_t a2, NSUInteger a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a4 == 9 && a5 == 0xE100000000000000 || (sub_21DBFC64C() & 1) != 0)
  {
    v12 = *(v5 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_presenter);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 64);
      ObjectType = swift_getObjectType();
      v15 = (*(v13 + 8))(v12, &off_282EC5A28, ObjectType, v13);
      swift_unknownObjectRelease();
      if (v15)
      {
        [v15 becomeFirstResponder];

        return;
      }
    }
  }

  v56 = a1;
  v16 = [a1 textStorage];
  v17 = [v16 string];
  if (!v17)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v18 = v17;
  v54 = a5;
  v19 = sub_21DBFA12C();
  v58 = a2;
  v20 = [v18 stringByReplacingCharactersInRange:a2 withString:{a3, v19}];

  sub_21DBFA16C();
  v21 = sub_21DBFA28C();
  v22 = [v16 string];
  sub_21DBFA16C();

  v23 = sub_21DBFA28C();

  if (v23 >= v21)
  {

    v25 = v6;
  }

  else
  {
    v24 = sub_21DBFA28C();

    v25 = v6;
    if (v24 > 4000)
    {
      v26 = *(v6 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_presenter);
      v27 = _sSo17UIAlertControllerC15RemindersUICoreE36notesFieldCharacterLimitReachedAlertABvgZ_0();
      __swift_project_boxed_opaque_existential_1((v26 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_router), *(v26 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_router + 24));
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v29 = Strong;
        [Strong presentViewController:v27 animated:1 completion:{0, v54}];
      }

      return;
    }
  }

  v30 = [v56 textStorage];
  TTRHashtagTokenTextInteraction.adjustTextReplacement(in:affectedRange:replacementText:)(v30, v58, a3, a4, v55, &v60);

  isa = v60.originalText.super.isa;
  location = v60.originalRangeReplaced.location;
  if (LOBYTE(v60.originalRangeReplaced.length) <= 1u)
  {
    if (LOBYTE(v60.originalRangeReplaced.length))
    {
      [v56 setSelectedRange_];
      return;
    }

    v33 = *(v25 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView);
    if (v33)
    {
      v34 = v33;
      sub_21D6C4004(isa, location);
      goto LABEL_18;
    }

    goto LABEL_38;
  }

  if (LOBYTE(v60.originalRangeReplaced.length) == 2)
  {
    v35 = [v56 beginningOfDocument];
    v34 = [v56 positionFromPosition:v35 offset:isa];

    if (!v34)
    {
      return;
    }

    v36 = [v56 positionFromPosition:v34 offset:location];
    if (!v36)
    {
LABEL_18:

      return;
    }

    v37 = v36;
    v38 = [v56 textRangeFromPosition:v34 toPosition:v36];

    if (!v38)
    {
      return;
    }

    v39 = sub_21DBFA12C();
    v59 = v38;
    [v56 replaceRange:v38 withText:v39];

    v40 = [v56 markedTextRange];
    v41 = v40;
    if (v40)
    {
    }

    v42 = *(v25 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_presenter);
    v43 = [v56 attributedText];
    if (v43)
    {
      v44 = v43;
      v57 = v41 != 0;
      LOBYTE(v60.originalText.super.isa) = 2;
      sub_21DBF8E0C();
      sub_21D596E2C(&v60);
      v45 = *(v42 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_editingPresenter + 8);
      v46 = swift_getObjectType();
      v47 = sub_21D596F14();
      v60.originalText.super.isa = v44;
      v60.originalRangeReplaced.location = isa;
      v60.originalRangeReplaced.length = location;
      v60.replacementText.value._countAndFlagsBits = a4;
      v60.replacementText.value._object = v55;
      (*(v45 + 64))(v47, &v60, v57, v46, v45);

      return;
    }

LABEL_41:
    __break(1u);
    return;
  }

  if (*&v60.originalText.super.isa != 0)
  {
    return;
  }

  v48 = [v56 attributedText];
  if (!v48)
  {
    goto LABEL_39;
  }

  v60.originalText.super.isa = v48;
  v60.originalRangeReplaced.location = v58;
  v60.originalRangeReplaced.length = a3;
  v60.replacementText.value._countAndFlagsBits = a4;
  v60.replacementText.value._object = v55;
  sub_21DBF8E0C();
  TTRReminderTextChangeDetailCapturer.capture(_:)(&v60);

  v49 = *(v25 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView);
  if (!v49)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v50 = OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_firstCharNeedsCapitalization;
  if ((*(v49 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_firstCharNeedsCapitalization) & 1) == 0)
  {
    v51 = v49;
    v52 = v51;
    if (v58)
    {
      v53 = 0;
    }

    else
    {
      v53 = [v51 _textInputSource] == 3;
    }

    *(v49 + v50) = v53;
  }
}

id sub_21D58FFE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F300);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_presenter);
  v7 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_viewModel;
  swift_beginAccess();
  sub_21D590914(v6 + v7, v5);
  v8 = type metadata accessor for TTRIReminderCellNotesViewModel();
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v5, 1, v8);
  result = sub_21D0CF7E0(v5, &unk_27CE5F300);
  if (v7 != 1)
  {
    v10 = *(v1 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView);
    if (v10)
    {
      v11 = v10;
      sub_21D6C3BC0();

      v12 = [a1 markedTextRange];
      v13 = v12;
      if (v12)
      {
      }

      result = [a1 text];
      if (result)
      {
        v14 = result;
        v15 = v13 != 0;
        v29 = v13 != 0;
        v16 = sub_21DBFA16C();
        v18 = v17;

        v19._countAndFlagsBits = v16;
        v19._object = v18;
        TTRReminderTextChangeDetailCapturer.consume(editedText:textViewHasMarkedText:)(&v30, v19, v15);

        isa = v30.value.originalText.super.isa;
        location = v30.value.originalRangeReplaced.location;
        length = v30.value.originalRangeReplaced.length;
        countAndFlagsBits = v30.value.replacementText.value._countAndFlagsBits;
        object = v30.value.replacementText.value._object;
        LOBYTE(v30.value.originalText.super.isa) = 2;
        sub_21D596E2C(&v30);
        v25 = *(v6 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_editingPresenter + 8);
        ObjectType = swift_getObjectType();
        v27 = sub_21D596F14();
        v30.value.originalText.super.isa = isa;
        v30.value.originalRangeReplaced.location = location;
        v30.value.originalRangeReplaced.length = length;
        v30.value.replacementText.value._countAndFlagsBits = countAndFlagsBits;
        v30.value.replacementText.value._object = object;
        (*(v25 + 64))(v27, &v30, v29, ObjectType, v25);

        return sub_21D300F14(isa);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_21D590540(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_editingPresenter + 8);
  ObjectType = swift_getObjectType();
  v6 = sub_21D596F14();
  (*(v4 + 80))(a2, v6, ObjectType, v4);
}

id sub_21D5905EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [a1 attributedText];
  if (result)
  {
    v7 = result;
    v8 = sub_21D597068(result, a3, a4);

    return (v8 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D59065C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(v3 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_editingPresenter + 8);
  ObjectType = swift_getObjectType();
  v8 = sub_21D596F14();
  v9 = (*(v6 + 88))(a2, a3, v8, ObjectType, v6);

  return v9;
}

void sub_21D590708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(v3 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_editingPresenter + 8);
  ObjectType = swift_getObjectType();
  v8 = sub_21D596F14();
  (*(v6 + 96))(a2, a3, v8, ObjectType, v6);
}

void sub_21D590858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(v4 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_presenter) + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_editingPresenter + 8);
  ObjectType = swift_getObjectType();
  v10 = sub_21D596F14();
  (*(v8 + 136))(a2, v10, a3, a4, ObjectType, v8);
}

uint64_t sub_21D590914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D590984(uint64_t a1)
{
  v2 = type metadata accessor for TTRIReminderCellNotesViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static TTRIReminderCellNotesAssembly.createViewController(item:isSingleReminderEditingMode:quickBar:ownerModule:hostViewController:inCellPresenterManager:moduleDelegate:)(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v51 = a4;
  v52 = a5;
  v50 = a3;
  v53 = a11;
  v54 = a10;
  v55 = a1;
  v13 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *a6;
  type metadata accessor for TTRReminderCellNotesInteractor();
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  swift_unknownObjectWeakInit();
  v17 = type metadata accessor for TTRIReminderCellNotesRouter();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  type metadata accessor for TTRReminderCellHashtagInteractor();
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRReminderCellInlineHashtagEditingPresenter();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D84FA0];
  v20[5] = MEMORY[0x277D84FA0];
  v20[6] = v21;
  v20[7] = 0;
  sub_21DBF78BC();
  v20[2] = v19;
  v20[3] = &protocol witness table for TTRReminderCellHashtagInteractor;
  type metadata accessor for TTRInlineHashtagEditProcessor();
  v22 = swift_allocObject();
  type metadata accessor for TTRReminderTextChangeDetailAdjuster();
  *(v22 + 16) = swift_allocObject();
  *(v22 + 24) = 75;
  v20[4] = v22;
  type metadata accessor for TTRParagraphStyleEditingPresenter();
  v23 = swift_allocObject();
  sub_21D1D338C(a2, v15);
  type metadata accessor for TTRReminderCellNotesEditingPresenter();
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v24 + 40) = 0;
  swift_unknownObjectWeakInit();
  v25 = (v24 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession);
  *v25 = 0;
  v25[1] = 0;
  *(v24 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_shouldSkipSavingEditingSession) = 0;
  v26 = v24 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state;
  *v26 = 0;
  *(v26 + 24) = 0u;
  *(v26 + 8) = 0u;
  sub_21D24BDFC(v15, v24 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_item);
  v27 = (v24 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_inlineHashtagEditingPresenter);
  *v27 = v20;
  v27[1] = &protocol witness table for TTRReminderCellInlineHashtagEditingPresenter;
  v28 = (v24 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_paragraphStyleEditingPresenter);
  *v28 = v23;
  v28[1] = &protocol witness table for TTRParagraphStyleEditingPresenter;
  swift_beginAccess();
  *(v24 + 40) = a9;
  swift_unknownObjectWeakAssign();
  sub_21D1D338C(a2, v15);
  v56[3] = v17;
  v56[4] = &off_282EC4E18;
  v56[0] = v18;
  type metadata accessor for TTRIReminderCellNotesPresenter();
  v29 = swift_allocObject();
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v56, v17);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = (&v49 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33, v31);
  v35 = *v33;
  v36 = (v29 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_router);
  v36[3] = v17;
  v36[4] = &off_282EC4E18;
  *v36 = v35;
  *(v29 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v29 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v29 + 64) = 0;
  swift_unknownObjectWeakInit();
  v37 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_viewModel;
  v38 = type metadata accessor for TTRIReminderCellNotesViewModel();
  (*(*(v38 - 8) + 56))(v29 + v37, 1, 1, v38);
  sub_21D24BDFC(v15, v29 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_item);
  *(v29 + 16) = v50;
  v39 = (v29 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_interactor);
  *v39 = v16;
  v39[1] = &protocol witness table for TTRReminderCellNotesInteractor;
  v40 = (v29 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_editingPresenter);
  *v40 = v24;
  v40[1] = &protocol witness table for TTRReminderCellNotesEditingPresenter;
  v41 = (v29 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_quickBar);
  v42 = v52;
  *v41 = v51;
  v41[1] = v42;
  *(v29 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_ownerModule) = v49;
  swift_unknownObjectRetain();

  __swift_destroy_boxed_opaque_existential_0(v56);
  v43 = type metadata accessor for TTRIReminderCellNotesViewController();
  v44 = objc_allocWithZone(v43);

  v46 = sub_21D590F80(v45, v44);
  swift_beginAccess();
  *(v16 + 24) = &off_282EC5AB0;
  swift_unknownObjectWeakAssign();
  *(v29 + 32) = &off_282EC56F0;
  swift_unknownObjectWeakAssign();
  *(v29 + 48) = v53;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v24 + 24) = &off_282EC5A70;
  swift_unknownObjectWeakAssign();
  v47 = v55;
  v55[3] = v43;

  *v47 = v46;
  return v29;
}

id sub_21D590F80(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  *&a2[OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_notesTextView] = 0;
  v5 = OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_tokenInteraction;
  type metadata accessor for TTRHashtagTokenTextInteraction();
  v6 = swift_allocObject();
  type metadata accessor for HashtagTokenEditor();
  *(v6 + 24) = swift_allocObject();
  *(v6 + 16) = 0;
  *&a2[v5] = v6;
  v7 = OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_changeDetailCapturer;
  type metadata accessor for TTRReminderTextChangeDetailCapturer();
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *&a2[v7] = v8;
  *(v8 + 48) = 0;
  v9 = &a2[OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellNotesViewController_presenter];
  *v9 = a1;
  *(v9 + 1) = &off_282EC5998;
  v11.receiver = a2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_21D591090()
{
  v1[15] = v0;
  sub_21DBFA84C();
  v1[16] = sub_21DBFA83C();
  v3 = sub_21DBFA7CC();
  v1[17] = v3;
  v1[18] = v2;

  return MEMORY[0x2822009F8](sub_21D591128, v3, v2);
}

uint64_t sub_21D591128()
{
  if (qword_280D0F318 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  v0[19] = __swift_project_value_buffer(v1, qword_280D0F320);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Location] checking Location Access and request if necessary", v4, 2u);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  v5 = v0[15];

  swift_beginAccess();
  sub_21D0D32E4(v5 + 32, (v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v10 = (*(v7 + 48) + **(v7 + 48));
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_21D591328;

  return v10(v6, v7);
}

uint64_t sub_21D591328()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_21D591448, v3, v2);
}

uint64_t sub_21D591448()
{
  v1 = v0[15];
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  sub_21D0D32E4(v1 + 32, (v0 + 7));
  v2 = v0[10];
  v3 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v2);
  v6 = (*(v3 + 80) + **(v3 + 80));
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_21D59158C;

  return v6(v0 + 23, v2, v3);
}

uint64_t sub_21D59158C()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_21D5916AC, v3, v2);
}

uint64_t sub_21D5916AC()
{
  v15 = v0;
  v1 = *(v0 + 184);
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v14 = v1;
    v6 = TTRGeoLocationAuthorizationStatus.description.getter();
    v8 = sub_21D0CDFB4(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Location] current location authorization status: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223D46520](v5, -1, -1);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  if (v1 == 2)
  {
    v9 = 0;
    goto LABEL_11;
  }

  if (v1 != 3 && (v1 & 1) != 0)
  {
    v9 = 1;
LABEL_11:

    v12 = *(v0 + 8);

    return v12(v9);
  }

  *(v0 + 186) = 1;
  v10 = swift_task_alloc();
  *(v0 + 176) = v10;
  *v10 = v0;
  v10[1] = sub_21D5918B0;

  return TTRIPrivacyChecker.showPrivacyAlert(type:)(v0 + 185, (v0 + 186));
}

uint64_t sub_21D5918B0()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_21D5919D0, v3, v2);
}

uint64_t sub_21D5919D0()
{
  v6 = v0;

  v1 = *(v0 + 185);
  if (v1 != 2)
  {
    if (v1)
    {
      v2 = sub_21DBFC64C();

      if ((v2 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v5 = 1;
    _s15RemindersUICore18TTRIPrivacyCheckerC15openSettingsApp3foryAA14TTRPrivacyTypeO_tF_0(&v5);
  }

LABEL_7:
  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_21D591AA8(char a1, char a2)
{
  *(v3 + 40) = v2;
  *(v3 + 89) = a2;
  *(v3 + 88) = a1;
  return MEMORY[0x2822009F8](sub_21D591AD0, 0, 0);
}

uint64_t sub_21D591AD0()
{
  if (qword_280D0F318 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  v0[6] = __swift_project_value_buffer(v1, qword_280D0F320);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Notification] checking Notification Access", v4, 2u);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  v5 = v0[5];

  swift_beginAccess();
  v0[7] = *(v5 + 72);
  v6 = *(v5 + 80);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 24);
  swift_unknownObjectRetain();
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[8] = v9;
  *v9 = v0;
  v9[1] = sub_21D591CDC;

  return v11(ObjectType, v6);
}

uint64_t sub_21D591CDC(uint64_t a1)
{
  *(*v1 + 72) = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_21D591DFC, 0, 0);
}

uint64_t sub_21D591DFC()
{
  v20 = v0;
  v1 = sub_21DBF84AC();
  v2 = sub_21DBFAEDC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 72);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    if (v3 <= 1)
    {
      if (!v3)
      {
        v6 = 0xEE0064656E696D72;
        v7 = 0x6574654420746F4ELL;
        goto LABEL_14;
      }

      if (v3 == 1)
      {
        v6 = 0xE600000000000000;
        v7 = 0x6465696E6544;
        goto LABEL_14;
      }
    }

    else
    {
      switch(v3)
      {
        case 2:
          v6 = 0xEA00000000006465;
          v7 = 0x7A69726F68747541;
          goto LABEL_14;
        case 3:
          v6 = 0xEB000000006C616ELL;
          v7 = 0x6F697369766F7250;
          goto LABEL_14;
        case 4:
          v6 = 0xE90000000000006CLL;
          v7 = 0x6172656D65687045;
LABEL_14:
          v8 = sub_21D0CDFB4(v7, v6, &v19);

          *(v4 + 4) = v8;
          _os_log_impl(&dword_21D0C9000, v1, v2, "PrivacyChecker: [Notification] current system authorization: %s", v4, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v5);
          MEMORY[0x223D46520](v5, -1, -1);
          MEMORY[0x223D46520](v4, -1, -1);
          goto LABEL_15;
      }
    }

    v6 = 0xE700000000000000;
    v7 = 0x6E776F6E6B6E55;
    goto LABEL_14;
  }

LABEL_15:

  v9 = *(v0 + 72);
  if ((v9 - 2) < 3)
  {
    v10 = 0;
    goto LABEL_28;
  }

  if (v9 == 1)
  {
    v10 = 1;
    goto LABEL_28;
  }

  if (v9)
  {
    v15 = sub_21DBF84AC();
    v16 = sub_21DBFAECC();
    if (os_log_type_enabled(v15, v16))
    {
      v10 = 2;
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21D0C9000, v15, v16, "PrivacyChecker: [Notification] unknown notification authorization status", v17, 2u);
      MEMORY[0x223D46520](v17, -1, -1);
    }

    else
    {

      v10 = 2;
    }

LABEL_28:
    v18 = *(v0 + 8);

    return v18(v10);
  }

  v11 = *(v0 + 88);
  if (v11 == 2)
  {
    LOBYTE(v11) = sub_21D592258();
  }

  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *v12 = v0;
  v12[1] = sub_21D59215C;
  v13 = *(v0 + 89);

  return sub_21D592584(v11 & 1, v13);
}

uint64_t sub_21D59215C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

BOOL sub_21D592258()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  swift_beginAccess();
  v7 = *(v0 + 80);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 32);
  swift_unknownObjectRetain();
  v9(ObjectType, v7);
  swift_unknownObjectRelease();
  v10 = sub_21DBF563C();
  v11 = (*(*(v10 - 8) + 48))(v6, 1, v10);
  if (qword_280D0F318 != -1)
  {
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_280D0F320);
  sub_21D0D3954(v6, v3, &qword_27CE58D68);
  v13 = sub_21DBF84AC();
  v14 = sub_21DBFAE9C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315394;
    v17 = sub_21DBFA7BC();
    v19 = sub_21D0CDFB4(v17, v18, &v25);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = sub_21DBFBA5C();
    v22 = v21;
    sub_21D0CF7E0(v3, &qword_27CE58D68);
    v23 = sub_21D0CDFB4(v20, v22, &v25);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_21D0C9000, v13, v14, "PrivacyChecker: [Notification] shouldRequestPermission: %s, lastViewedNotificationsPermissionWarmingSheetDate: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  else
  {

    sub_21D0CF7E0(v3, &qword_27CE58D68);
  }

  sub_21D0CF7E0(v6, &qword_27CE58D68);
  return v11 == 1;
}

uint64_t sub_21D592584(char a1, char a2)
{
  *(v3 + 64) = v2;
  *(v3 + 212) = a2;
  *(v3 + 211) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  *(v3 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  *(v3 + 80) = swift_task_alloc();
  v4 = sub_21DBF563C();
  *(v3 + 88) = v4;
  *(v3 + 96) = *(v4 - 8);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = sub_21DBFA84C();
  *(v3 + 120) = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  *(v3 + 128) = v6;
  *(v3 + 136) = v5;

  return MEMORY[0x2822009F8](sub_21D5926F4, v6, v5);
}

uint64_t sub_21D5926F4()
{
  if (qword_280D0F318 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  *(v0 + 144) = __swift_project_value_buffer(v1, qword_280D0F320);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Notification] Requesting user authorization", v4, 2u);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  v5 = *(v0 + 211);

  v6 = swift_allocObject();
  *(v0 + 152) = v6;
  *(v6 + 16) = 0;
  if (v5 == 1)
  {
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEDC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21D0C9000, v7, v8, "PrivacyChecker [Notifications] Presenting warming sheet", v9, 2u);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    *(v0 + 209) = 0;
    v10 = swift_task_alloc();
    *(v0 + 160) = v10;
    *v10 = v0;
    v10[1] = sub_21D592A8C;

    return TTRIPrivacyChecker.showWarmingSheet(type:animated:)(v0 + 208, (v0 + 209), 1);
  }

  else if (*(v0 + 212) == 1)
  {
    v12 = swift_task_alloc();
    *(v0 + 168) = v12;
    *v12 = v0;
    v12[1] = sub_21D593008;
    v13 = *(v0 + 152);
    v14 = *(v0 + 64);

    return sub_21D5934D0(v14, v13);
  }

  else
  {
    v16 = *(v0 + 64);
    v15 = *(v0 + 72);
    v17 = v6;

    v18 = sub_21DBFA89C();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);

    v19 = sub_21DBFA83C();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = v16;
    v20[5] = v17;
    sub_21D1B5438(0, 0, v15, &unk_21DC1C6E0, v20);

    v22 = *(v0 + 8);

    return v22(2);
  }
}

uint64_t sub_21D592A8C()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_21D592BAC, v3, v2);
}

uint64_t sub_21D592BAC()
{
  v32 = v0;
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 208);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  swift_beginAccess();
  v7 = *(v5 + 80);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  (*(v2 + 56))(v3, 0, 1, v4);
  (*(v7 + 40))(v3, ObjectType, v7);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v4);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAEDC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136315138;
    *(v0 + 210) = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B1D8);
    v13 = sub_21DBFBA5C();
    v15 = sub_21D0CDFB4(v13, v14, &v31);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_21D0C9000, v9, v10, "PrivacyChecker: [Notification] Warming Sheet - user selected: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D46520](v12, -1, -1);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  *(*(v0 + 152) + 16) = 1;
  if (v6 == 2)
  {
    goto LABEL_4;
  }

  if (v6)
  {
    v18 = sub_21DBFC64C();

    if ((v18 & 1) == 0)
    {
LABEL_4:
      *(v0 + 176) = sub_21DBFA83C();
      v17 = sub_21DBFA7CC();
      *(v0 + 184) = v17;
      *(v0 + 192) = v16;

      return MEMORY[0x2822009F8](sub_21D5931C8, v17, v16);
    }
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  if (*(v0 + 212) == 1)
  {
    v19 = swift_task_alloc();
    *(v0 + 168) = v19;
    *v19 = v0;
    v19[1] = sub_21D593008;
    v20 = *(v0 + 152);
    v21 = *(v0 + 64);

    return sub_21D5934D0(v21, v20);
  }

  else
  {
    v22 = *(v0 + 152);
    v24 = *(v0 + 64);
    v23 = *(v0 + 72);

    v25 = sub_21DBFA89C();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);

    v26 = sub_21DBFA83C();
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D85700];
    v27[2] = v26;
    v27[3] = v28;
    v27[4] = v24;
    v27[5] = v22;
    sub_21D1B5438(0, 0, v23, &unk_21DC1C6E0, v27);

    v29 = *(v0 + 8);

    return v29(2);
  }
}

uint64_t sub_21D593008(char a1)
{
  v2 = *v1;
  *(*v1 + 213) = a1;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);

  return MEMORY[0x2822009F8](sub_21D593130, v4, v3);
}

uint64_t sub_21D593130()
{

  v1 = *(v0 + 213);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21D5931C8()
{
  v1 = v0[19];
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    v2 = swift_task_alloc();
    v0[25] = v2;
    *v2 = v0;
    v2[1] = sub_21D5932C0;

    return TTRIPrivacyChecker.dismissActiveWarmingSheet(animated:)(1);
  }

  else
  {

    v4 = v0[16];
    v5 = v0[17];

    return MEMORY[0x2822009F8](sub_21D593444, v4, v5);
  }
}

uint64_t sub_21D5932C0()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_21D5933E0, v3, v2);
}

uint64_t sub_21D5933E0()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_21D593444, v1, v2);
}

uint64_t sub_21D593444()
{

  v1 = *(v0 + 8);

  return v1(2);
}

uint64_t sub_21D5934D0(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v2[14] = sub_21DBFA84C();
  v2[15] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();
  v2[16] = v4;
  v2[17] = v3;

  return MEMORY[0x2822009F8](sub_21D59356C, v4, v3);
}

uint64_t sub_21D59356C()
{
  if (qword_280D0F318 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  v0[18] = __swift_project_value_buffer(v1, qword_280D0F320);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker [Notifications] Presenting system TCC", v4, 2u);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  v5 = v0[12];

  swift_beginAccess();
  v0[19] = *(v5 + 72);
  v6 = *(v5 + 80);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 88);
  swift_unknownObjectRetain();
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_21D593778;

  return v11(ObjectType, v6);
}

uint64_t sub_21D593778(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_21D593A94;
  }

  else
  {
    swift_unknownObjectRelease();
    v4[22] = a1;
    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_21D5938A8;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_21D5938A8()
{
  v17 = v0;
  v1 = sub_21D9D9794(*(v0 + 176));
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    if (v1)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (v1)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    v8 = sub_21D0CDFB4(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_21D0C9000, v2, v3, "PrivacyChecker: [Notification] requestAuthorization grantedAccess: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223D46520](v5, -1, -1);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  if (v1)
  {
    v9 = 0;
  }

  else
  {
    v10 = *(*(v0 + 96) + 80);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 80);
    swift_unknownObjectRetain();
    v12(ObjectType, v10);
    swift_unknownObjectRelease();
    v9 = 1;
  }

  *(v0 + 216) = v9;
  *(v0 + 184) = sub_21DBFA83C();
  v14 = sub_21DBFA7CC();
  *(v0 + 192) = v14;
  *(v0 + 200) = v13;

  return MEMORY[0x2822009F8](sub_21D593C54, v14, v13);
}

uint64_t sub_21D593A94()
{
  v16 = v0;
  v1 = *(v0 + 168);
  swift_unknownObjectRelease();
  v2 = v1;
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 168);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_21DBFC74C();
    v10 = sub_21D0CDFB4(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_21D0C9000, v3, v4, "PrivacyChecker: [Notification] requestAuthorization error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223D46520](v7, -1, -1);
    MEMORY[0x223D46520](v6, -1, -1);
  }

  else
  {
    v11 = *(v0 + 168);
  }

  *(v0 + 216) = 2;
  *(v0 + 184) = sub_21DBFA83C();
  v13 = sub_21DBFA7CC();
  *(v0 + 192) = v13;
  *(v0 + 200) = v12;

  return MEMORY[0x2822009F8](sub_21D593C54, v13, v12);
}

uint64_t sub_21D593C54()
{
  v1 = v0[13];
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    v2 = swift_task_alloc();
    v0[26] = v2;
    *v2 = v0;
    v2[1] = sub_21D593D4C;

    return TTRIPrivacyChecker.dismissActiveWarmingSheet(animated:)(1);
  }

  else
  {

    v4 = v0[16];
    v5 = v0[17];

    return MEMORY[0x2822009F8](sub_21D593ED0, v4, v5);
  }
}

uint64_t sub_21D593D4C()
{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return MEMORY[0x2822009F8](sub_21D593E6C, v3, v2);
}

uint64_t sub_21D593E6C()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_21D593ED0, v1, v2);
}

uint64_t sub_21D593ED0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 216);

  return v1(v2);
}

void sub_21D593F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [v4 beginningOfDocument];
  v26 = [v4 positionFromPosition:v9 offset:a1];

  if (!v26)
  {
    return;
  }

  v10 = [v4 positionFromPosition:v26 offset:a2];
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  v12 = [v4 textRangeFromPosition:v26 toPosition:v10];

  if (!v12)
  {
    return;
  }

  v26 = [v4 selectedTextRange];
  v13 = sub_21DBFA12C();
  [v4 replaceRange:v12 withText:v13];

  if (v26)
  {
    v14 = MEMORY[0x223D42B30](a3, a4);
    v15 = [v12 start];
    v16 = [v12 end];
    v17 = [v4 offsetFromPosition:v15 toPosition:v16];

    v18 = v14 - v17;
    if (__OFSUB__(v14, v17))
    {
      __break(1u);
      return;
    }

    v19 = [v26 start];
    v20 = sub_21D55E9A8(v19, v4, v12, v14 - v17);

    if (v20)
    {
      v21 = [v26 end];
      v22 = sub_21D55E9A8(v21, v4, v12, v18);

      if (v22)
      {
        v23 = [v4 textRangeFromPosition:v20 toPosition:v22];
        if (v23)
        {
          v24 = v23;
          [v4 setSelectedTextRange_];

          v20 = v24;
        }

        else
        {
          v24 = v20;
          v20 = v22;
        }
      }
    }

LABEL_16:
    v25 = v26;
    goto LABEL_17;
  }

  v25 = v12;
LABEL_17:
}

uint64_t sub_21D5941F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E520);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_viewModel;
  swift_beginAccess();
  sub_21D5968BC(a1, v1 + v6);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_21D0D3954(v1 + v6, v5, &qword_27CE5E520);
    sub_21D58CA34(v5);
    swift_unknownObjectRelease();
    sub_21D0CF7E0(a1, &qword_27CE5E520);
    a1 = v5;
  }

  return sub_21D0CF7E0(a1, &qword_27CE5E520);
}

void (*sub_21D594324(uint64_t *a1))(void *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E520) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_viewModel;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  swift_beginAccess();
  return sub_21D5943F0;
}

void sub_21D5943F0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
  {
    v4 = v3[4];
    sub_21D0D3954(v3[3] + v3[5], v4, &qword_27CE5E520);
    sub_21D58CA34(v4);
    swift_unknownObjectRelease();
    sub_21D0CF7E0(v4, &qword_27CE5E520);
  }

  free(v3[4]);

  free(v3);
}

uint64_t sub_21D5944AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E520);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12[-v2];
  v4 = type metadata accessor for TTRReminderCellTitleViewModel();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_viewModel;
  swift_beginAccess();
  sub_21D0D3954(v0 + v8, v3, &qword_27CE5E520);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_21D0CF7E0(v3, &qword_27CE5E520);
  }

  else
  {
    sub_21D59692C(v3, v7, type metadata accessor for TTRReminderCellTitleViewModel);
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (v7[*(v4 + 20)])
      {
        v9 = *(v0 + 56);
        ObjectType = swift_getObjectType();
        if ((*(v9 + 8))(v0, &off_282EC5888, ObjectType, v9))
        {
          v13 = 0;
          sub_21D594724(&v13);
          swift_unknownObjectRelease();
          sub_21D596994(v7, type metadata accessor for TTRReminderCellTitleViewModel);
          return 1;
        }
      }

      sub_21D596994(v7, type metadata accessor for TTRReminderCellTitleViewModel);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_21D596994(v7, type metadata accessor for TTRReminderCellTitleViewModel);
    }
  }

  return 0;
}

uint64_t sub_21D594724(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    v8 = v2;
    (*(v3 + 24))(v1, &off_282EC5888, &v8, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v1 + 56);
    v7 = swift_getObjectType();
    v8 = v2;
    (*(v6 + 16))(v1, &off_282EC5888, &v8, v7, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21D59480C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    result = *(Strong + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v2 = [result attributedText];
    swift_unknownObjectRelease();
    if (v2)
    {
      return v2;
    }
  }

  v3 = objc_allocWithZone(MEMORY[0x277CCA898]);

  return [v3 init];
}

uint64_t sub_21D5948A4()
{
  v1 = [objc_opt_self() generalPasteboard];
  v11 = sub_21D596848();
  v12 = &protocol witness table for UIPasteboard;
  v9[0] = v1;
  TTRManagedPasteboardItem.init(pasteboard:)(v9, v13);
  v2 = v14;
  if (v14 == 255)
  {
    v7 = 0;
  }

  else
  {
    v4 = v13[0];
    v3 = v13[1];
    v5 = *(v0 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_editingPresenter + 8);
    ObjectType = swift_getObjectType();
    v9[0] = v4;
    v9[1] = v3;
    v10 = v2 & 1;
    v7 = (*(v5 + 96))(v9, ObjectType, v5);
    sub_21D596894(v4, v3, v2);
  }

  return v7 & 1;
}

void sub_21D594994(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_editingPresenter + 8);
  ObjectType = swift_getObjectType();
  v5 = sub_21D59480C();
  (*(v3 + 112))(a1, v5, ObjectType, v3);

  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_ownerModule) - 2 >= 2)
  {
    v6 = 0xD000000000000010;
    if (*(v1 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_ownerModule))
    {
      v7 = "QuickEntry.Title.InlineHashtag";
      v6 = 0xD00000000000001FLL;
    }

    else
    {
      v7 = "RemindersList.ReminderCellTitle";
    }

    v8 = v7 | 0x8000000000000000;
    TTRITipKitSignal.donate(signalContext:)(*&v6);
  }
}

uint64_t sub_21D594A88(__int128 *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_editingPresenter + 8);
  ObjectType = swift_getObjectType();
  (*(v3 + 48))(&v14, ObjectType, v3);
  v9 = v14;
  v10 = v15;
  sub_21D0D3954(v1 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_augmentationSplitter, &v12, &qword_27CE5E0A8);
  if (*(&v13 + 1))
  {
    sub_21D0D0FD0(&v12, &v14);
    v5 = *(&v15 + 1);
    v6 = v16;
    __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
    v11[0] = v9;
    v11[1] = v10;
    v7 = (*(v6 + 8))(&v12, v11, v5, v6);
    sub_21D24A814(v9, *(&v9 + 1));
    v9 = v12;
    v10 = v13;
    __swift_destroy_boxed_opaque_existential_0(&v14);
  }

  else
  {
    sub_21D0CF7E0(&v12, &qword_27CE5E0A8);
    v7 = MEMORY[0x277D84F90];
  }

  *a1 = v9;
  a1[1] = v10;
  return v7;
}

uint64_t sub_21D594BEC()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);
  sub_21D157444(v0 + 48);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_viewModel, &qword_27CE5E520);
  sub_21D596994(v0 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_item, type metadata accessor for TTRRemindersListViewModel.Item);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_router);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_augmentationSplitter, &qword_27CE5E0A8);

  return v0;
}

uint64_t sub_21D594CD0()
{
  sub_21D594BEC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIReminderCellTitlePresenter()
{
  result = qword_280D125B0;
  if (!qword_280D125B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D594D7C()
{
  sub_21D594EA4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TTRRemindersListViewModel.Item(319);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21D594EA4()
{
  if (!qword_280D12E20)
  {
    type metadata accessor for TTRReminderCellTitleViewModel();
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_280D12E20);
    }
  }
}

uint64_t sub_21D594EFC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView);
    if (v1)
    {
      v2 = v1;
      v3 = [v2 traitCollection];
      [v3 displayScale];
      v5 = v4;

      swift_unknownObjectRelease();
      v6 = 1.0;
      if (v5 != 0.0)
      {
        v6 = v5;
      }

      return *&v6;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21D594FA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21D594A88(&v28);

    v6 = v28;
    v25 = v28;
    v26 = v29;
    v27 = v30;
    v7 = sub_21D5951E4(&v20);
    sub_21D24A814(v6, *(&v6 + 1));
    v8 = v20;
    v9 = v21;
    v10 = v22;
    v11 = v23;
    ObjectType = swift_getObjectType();
    (*(a2 + 40))(&v20, ObjectType, a2);
    v13 = v23;
    v14 = v24;
    __swift_project_boxed_opaque_existential_1(&v20, v23);
    v15 = (*(v14 + 48))(v13, v14);
    __swift_destroy_boxed_opaque_existential_0(&v20);
    if ((v15 & 1) == 0 && v9)
    {
      sub_21DBF8E0C();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v3 + 40);
        v17 = swift_getObjectType();
        (*(v16 + 32))(v3, &off_282EC5888, v8, v9, v7, v17, v16);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    v20 = v8;
    v21 = v9;
    v22 = v10;
    v23 = v11;
    sub_21D58CF60(&v20);
    sub_21D24A814(v8, v9);
    LOBYTE(v20) = 2;
    sub_21D594724(&v20);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v3 + 56);
      v19 = swift_getObjectType();
      (*(v18 + 24))(v3, &off_282EC5888, v19, v18);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_21D5951E4(void *a1)
{
  v60 = sub_21DBF7A0C();
  v3 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_21DBF79FC();
  v5 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v7);
  v61 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - v10;
  v12 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  MEMORY[0x28223BE20](v12);
  v16 = *v1;
  v15 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  if (v15)
  {
    v19 = v5;
    v52 = *v1;
    v53 = a1;
    v20 = *(v17 + 2);
    v50 = v15;
    v51 = v18;
    if (v20)
    {
      v21 = (v17 + 32);
      v64 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v65 = (v13 + 56);
      v56 = *MEMORY[0x277D45708];
      v54 = (v19 + 8);
      v55 = (v3 + 104);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v17 = MEMORY[0x277D84F90];
      v62 = MEMORY[0x277D84F90];
      v63 = v11;
      v22 = v61;
      while (1)
      {
        sub_21D1D9BE4(v21, v67);
        sub_21D0CEB98(v67, v66);
        v33 = swift_dynamicCast();
        v34 = *v65;
        if (!v33)
        {
          break;
        }

        v34(v11, 0, 1, v12);
        v35 = v11;
        v36 = v12;
        v37 = v64;
        sub_21D59692C(v35, v64, type metadata accessor for TTRReminderSuggestedAttribute);
        sub_21D19B1A0(v37, v22);
        if (swift_getEnumCaseMultiPayload() != 10)
        {
          sub_21D596994(v37, type metadata accessor for TTRReminderSuggestedAttribute);
          sub_21D596994(v22, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
          v12 = v36;
          v11 = v63;
          goto LABEL_16;
        }

        sub_21D596994(v22, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
        (*v55)(v59, v56, v60);
        v38 = v7;
        v39 = v57;
        sub_21DBF79EC();
        v40 = sub_21DBF79BC();
        v41 = v39;
        v7 = v38;
        v22 = v61;
        (*v54)(v41, v58);
        sub_21D596994(v37, type metadata accessor for TTRReminderSuggestedAttribute);
        v12 = v36;
        v11 = v63;
        if ((v40 & 1) == 0)
        {
          goto LABEL_16;
        }

        sub_21D1D9BE4(v67, v66);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_21D211038(0, *(v62 + 2) + 1, 1, v62);
        }

        v43 = *(v62 + 2);
        v42 = *(v62 + 3);
        if (v43 >= v42 >> 1)
        {
          v62 = sub_21D211038((v42 > 1), v43 + 1, 1, v62);
        }

        sub_21D1D9C40(v67);
        v44 = v62;
        *(v62 + 2) = v43 + 1;
        v23 = &v44[192 * v43];
LABEL_5:
        v24 = v66[3];
        v25 = v66[0];
        v26 = v66[1];
        *(v23 + 4) = v66[2];
        *(v23 + 5) = v24;
        *(v23 + 2) = v25;
        *(v23 + 3) = v26;
        v27 = v66[7];
        v28 = v66[5];
        v29 = v66[4];
        *(v23 + 8) = v66[6];
        *(v23 + 9) = v27;
        *(v23 + 6) = v29;
        *(v23 + 7) = v28;
        v30 = v66[11];
        v31 = v66[9];
        v32 = v66[8];
        *(v23 + 12) = v66[10];
        *(v23 + 13) = v30;
        *(v23 + 10) = v32;
        *(v23 + 11) = v31;
        v21 += 192;
        if (!--v20)
        {
          goto LABEL_22;
        }
      }

      v34(v11, 1, 1, v12);
      sub_21D0CF7E0(v11, &qword_27CE58A78);
LABEL_16:
      sub_21D1D9BE4(v67, v66);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_21D211038(0, *(v17 + 2) + 1, 1, v17);
      }

      v46 = *(v17 + 2);
      v45 = *(v17 + 3);
      if (v46 >= v45 >> 1)
      {
        v17 = sub_21D211038((v45 > 1), v46 + 1, 1, v17);
      }

      sub_21D1D9C40(v67);
      *(v17 + 2) = v46 + 1;
      v23 = &v17[192 * v46];
      goto LABEL_5;
    }

    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v17 = MEMORY[0x277D84F90];
    v62 = MEMORY[0x277D84F90];
LABEL_22:
    v16 = v52;
    a1 = v53;
    v47 = v50;
    v18 = v51;
    result = v62;
  }

  else
  {
    v47 = 0;
    result = MEMORY[0x277D84F90];
  }

  *a1 = v16;
  a1[1] = v47;
  a1[2] = v18;
  a1[3] = v17;
  return result;
}

uint64_t sub_21D59581C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_21DBFA84C();
  v4[4] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21D5958B8, v6, v5);
}

uint64_t sub_21D5958B8()
{
  v0[7] = *(v0[2] + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_privacyChecker);
  v0[8] = sub_21DBFA83C();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_21D595984;

  return sub_21D591AA8(2, 1);
}

uint64_t sub_21D595984()
{

  v1 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D595AC0, v1, v0);
}

uint64_t sub_21D595AC0()
{

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_21D595B6C;

  return sub_21D591090();
}

uint64_t sub_21D595B6C()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21D454AAC, v3, v2);
}

uint64_t sub_21D595CC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21D58D240(a3, a4 & 1);
    v7 = 2;
    sub_21D594724(&v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D595D40()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 56);
    ObjectType = swift_getObjectType();
    (*(v2 + 32))(v0, &off_282EC5888, ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D595DCC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_21DBFA89C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_21DBFA84C();

  v6 = sub_21DBFA83C();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_21D1B5178(0, 0, v4, &unk_21DC1C6B0, v7);
}

uint64_t sub_21D595EF0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 56);
    ObjectType = swift_getObjectType();
    (*(v2 + 40))(v0, &off_282EC5888, ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D595F7C(void *a1)
{
  [a1 setReturnKeyType_];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView);
    *(result + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView) = a1;
    v5 = result;

    [a1 setDelegate_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D596048(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D5960A8(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D242600;
}

uint64_t sub_21D59613C()
{
  v0 = sub_21D594A88(&v2);
  sub_21D24A814(v2, *(&v2 + 1));
  return v0;
}

void sub_21D596180(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_editingPresenter + 8);
  ObjectType = swift_getObjectType();
  v5 = sub_21D59480C();
  (*(v3 + 112))(a1, v5, ObjectType, v3);
}

uint64_t sub_21D596218@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_viewModel;
  swift_beginAccess();
  return sub_21D0D3954(v1 + v3, a1, &qword_27CE5E520);
}

void (*sub_21D596284(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_21D594324(v2);
  return sub_21D25A3E8;
}

uint64_t sub_21D5962F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_editingPresenter + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 40))(ObjectType, v1);
}

uint64_t sub_21D596350(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D0F00D0;

  return sub_21D59581C(a1, v4, v5, v6);
}

uint64_t sub_21D596404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5[2] = a1;
  v7 = *a4;
  v5[3] = sub_21DBFA84C();
  v5[4] = sub_21DBFA83C();
  v8 = swift_task_alloc();
  v5[5] = v8;
  *v8 = v5;
  v8[1] = sub_21D39670C;

  return sub_21D5934D0(v7, a5);
}

uint64_t sub_21D5964C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D1B795C;

  return sub_21D596404(a1, v4, v5, v1 + 4, v6);
}

id sub_21D596590()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    result = *(Strong + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView);
    if (!result)
    {
      __break(1u);
      goto LABEL_12;
    }

    [result resignFirstResponder];
    swift_unknownObjectRelease();
  }

  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    result = *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView);
    if (result)
    {
      v3 = [result attributedText];
      swift_unknownObjectRelease();
      if (v3)
      {
        return v3;
      }

      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return result;
  }

LABEL_8:
  v4 = objc_allocWithZone(MEMORY[0x277CCA898]);

  return [v4 init];
}

uint64_t sub_21D596668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(result + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView);
    if (v9)
    {
      v10 = v9;
      sub_21D593F34(a1, a2, a3, a4);

      v11 = 2;
      sub_21D594724(&v11);
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21D59671C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + OBJC_IVAR____TtC15RemindersUICore35TTRIReminderCellTitleViewController_titleTextView);
    if (!v6)
    {
      __break(1u);
      return result;
    }

    v11[0] = v2;
    v11[1] = v3;
    v11[2] = v4;
    v7 = v6;
    v13.hashtagsToAdd._rawValue = v11;
    TTRReminderTextStorage.applyHashtagUpdate(_:)(v13);

    swift_unknownObjectRelease();
  }

  v8 = 0xD00000000000001ELL;
  LOBYTE(v11[0]) = 6;
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_ownerModule) > 1u)
  {
    if (*(v1 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_ownerModule) == 2)
    {
      v9 = "eminder.Title.InlineHashtag";
      v8 = 0xD000000000000022;
    }

    else
    {
      v9 = "";
      v8 = 0xD00000000000002BLL;
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_ownerModule))
  {
    v9 = "itle.InlineHashtag";
    v8 = 0xD00000000000002DLL;
  }

  else
  {
    v9 = "minderCellTitle.InlineHashtag";
  }

  v10 = v9 | 0x8000000000000000;
  TTRITipKitSignal.donate(signalContext:)(*&v8);
}