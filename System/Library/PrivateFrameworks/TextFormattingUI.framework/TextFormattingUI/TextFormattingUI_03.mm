uint64_t sub_26D372C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC240);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v3);
  v5 = &v62 - v4;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC230);
  MEMORY[0x28223BE20](v63, v6);
  v8 = &v62 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC210);
  MEMORY[0x28223BE20](v66, v9);
  v11 = &v62 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC200);
  MEMORY[0x28223BE20](v67, v12);
  v68 = &v62 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC1E8);
  MEMORY[0x28223BE20](v72, v14);
  v71 = &v62 - v15;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC248);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v16);
  v70 = &v62 - v17;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC1E0);
  MEMORY[0x28223BE20](v69, v18);
  v73 = &v62 - v19;
  v20 = *a1;
  type metadata accessor for TextFormattingState();
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
  sub_26D3A02A8();
  swift_getKeyPath();
  sub_26D3A02C8();

  sub_26D39FFF8();
  if (qword_2804FAD48 != -1)
  {
    swift_once();
  }

  if (byte_2804FFF99 == 1)
  {
    v21 = 1.0;
  }

  else
  {
    v22 = sub_26D33CD0C(*(a1 + 32), *(a1 + 40));
    if (!v20)
    {
      result = sub_26D3A02B8();
      __break(1u);
      return result;
    }

    v23 = v22;

    v24 = sub_26D3A0F68();
    sub_26D39CBFC(v24, v20, v23);
    v26 = v25;

    v21 = floor(v26 / *(a1 + 64) + v26 / *(a1 + 64)) * 0.5;
  }

  sub_26D3A0F08();
  v28 = v27;
  v30 = v29;
  (*(v64 + 32))(v8, v5, v65);
  v31 = &v8[*(v63 + 36)];
  *v31 = v21;
  *(v31 + 1) = v21;
  *(v31 + 2) = v28;
  *(v31 + 3) = v30;
  v81 = *(a1 + 16);
  v82 = *(a1 + 24);
  v32 = *(a1 + 32);
  v33 = *(a1 + 40);
  v34 = *(a1 + 48);
  v35 = *(a1 + 56);
  v36 = swift_allocObject();
  v37 = *(a1 + 48);
  *(v36 + 48) = *(a1 + 32);
  *(v36 + 64) = v37;
  *(v36 + 80) = *(a1 + 64);
  v38 = *(a1 + 16);
  *(v36 + 16) = *a1;
  *(v36 + 32) = v38;
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC220) + 36);
  v40 = *MEMORY[0x277CDF968];
  v41 = sub_26D3A01D8();
  (*(*(v41 - 8) + 104))(&v11[v39], v40, v41);
  sub_26D347238(v8, v11, &qword_2804FC230);
  v42 = swift_allocObject();
  *(v42 + 16) = sub_26D38265C;
  *(v42 + 24) = v36;
  v43 = &v11[*(v66 + 36)];
  *v43 = sub_26D3834BC;
  v43[1] = v42;

  sub_26D34856C(&v81, v80, &qword_2804FB888);
  sub_26D381CA8(v32, v33);
  sub_26D381CA8(v34, v35);
  v44 = sub_26D33CD0C(v32, v33);
  sub_26D39C90C(v44);
  v45 = sub_26D33CD0C(v32, v33);
  sub_26D39D4C4(v45);
  sub_26D3A0EA8();
  sub_26D3A00C8();
  v46 = v68;
  sub_26D347238(v11, v68, &qword_2804FC210);
  v47 = (v46 + *(v67 + 36));
  v48 = v78;
  *v47 = v77;
  v47[1] = v48;
  v47[2] = v79;
  sub_26D3A0EA8();
  sub_26D3A0268();
  v49 = v71;
  sub_26D347238(v46, v71, &qword_2804FC200);
  v50 = (v49 + *(v72 + 36));
  v51 = v80[5];
  v50[4] = v80[4];
  v50[5] = v51;
  v50[6] = v80[6];
  v52 = v80[1];
  *v50 = v80[0];
  v50[1] = v52;
  v53 = v80[3];
  v50[2] = v80[2];
  v50[3] = v53;
  sub_26D382238();
  v54 = v70;
  sub_26D3A0A68();
  sub_26D3481A4(v49, &qword_2804FC1E8);
  KeyPath = swift_getKeyPath();
  v56 = swift_allocObject();
  *(v56 + 16) = 1;
  v57 = v73;
  (*(v74 + 32))(v73, v54, v75);
  v58 = (v57 + *(v69 + 36));
  *v58 = KeyPath;
  v58[1] = sub_26D3834C0;
  v58[2] = v56;
  if (sub_26D33D0B8(v34, v35))
  {
    v59 = 1.0;
  }

  else
  {
    v59 = 0.7;
  }

  v60 = v76;
  sub_26D347238(v57, v76, &qword_2804FC1E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC1C8);
  *(v60 + *(result + 36)) = v59;
  return result;
}

uint64_t sub_26D373510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC240);
  v47 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v3);
  v5 = &v43 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC250);
  MEMORY[0x28223BE20](v50, v6);
  v8 = &v43 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC258);
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v48 = &v43 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC260);
  MEMORY[0x28223BE20](v46, v12);
  v44 = &v43 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC268);
  v15 = MEMORY[0x28223BE20](v49, v14);
  v54 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v43 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v45 = &v43 - v22;
  v23 = *a1;
  type metadata accessor for TextFormattingState();
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
  sub_26D3A02A8();
  swift_getKeyPath();
  sub_26D3A02C8();

  sub_26D39FFF8();
  v24 = sub_26D33CD0C(*(a1 + 32), *(a1 + 40));
  if (v23)
  {
    v25 = v24;

    v26 = sub_26D3A0F68();
    sub_26D39CBFC(v26, v23, v25);

    sub_26D3A0EA8();
    sub_26D3A00C8();
    (*(v47 + 32))(v8, v5, v51);
    v27 = &v8[*(v50 + 36)];
    v28 = v57;
    *v27 = v56;
    *(v27 + 1) = v28;
    *(v27 + 2) = v58;
    sub_26D3824E4(&qword_2804FC270, &qword_2804FC250);
    v29 = v48;
    sub_26D3A0A68();
    sub_26D3481A4(v8, &qword_2804FC250);
    KeyPath = swift_getKeyPath();
    v31 = swift_allocObject();
    *(v31 + 16) = 1;
    v32 = v44;
    (*(v52 + 32))(v44, v29, v53);
    v33 = (v32 + *(v46 + 36));
    *v33 = KeyPath;
    v33[1] = sub_26D3834C0;
    v33[2] = v31;
    if (sub_26D33D0B8(*(a1 + 48), *(a1 + 56)))
    {
      v34 = 1.0;
    }

    else
    {
      v34 = 0.7;
    }

    sub_26D347238(v32, v20, &qword_2804FC260);
    *&v20[*(v49 + 36)] = v34;
    v35 = v45;
    sub_26D347238(v20, v45, &qword_2804FC268);
    if (qword_2804FACB8 != -1)
    {
      swift_once();
    }

    v37 = qword_2804FFEA0;
    v36 = *algn_2804FFEA8;
    v38 = swift_getKeyPath();
    v39 = v54;
    sub_26D34856C(v35, v54, &qword_2804FC268);
    v40 = v55;
    sub_26D34856C(v39, v55, &qword_2804FC268);
    v41 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC278) + 48);
    *v41 = v37;
    *(v41 + 8) = v36;
    *(v41 + 16) = 0;
    *(v41 + 24) = v38;
    *(v41 + 32) = 0;
    swift_bridgeObjectRetain_n();
    sub_26D381CA8(v38, 0);
    sub_26D3481A4(v35, &qword_2804FC268);

    sub_26D34684C(v38, 0);
    return sub_26D3481A4(v39, &qword_2804FC268);
  }

  else
  {
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D373B7C(void *a1)
{
  if (*a1)
  {
    v1 = *(*a1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_pickColor);

    v1(v2);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

void *sub_26D373C34(void *result, double a2, double a3, double a4, double a5)
{
  if (*result)
  {
    v5 = (*result + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_colorPickerRect);
    *v5 = a2;
    v5[1] = a3;
    v5[2] = a4;
    v5[3] = a5;
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D373CC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC128);
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_26D34856C(a1, &v6 - v4, &qword_2804FC128);
  return sub_26D3A03E8();
}

uint64_t sub_26D373DB0@<X0>(void (*a1)(void, void, void, void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void, void, uint64_t, uint64_t, uint64_t)@<X6>, void (*a8)(void, void, uint64_t, uint64_t, void)@<X7>, uint64_t a9@<X8>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC028);
  v17 = v16[12];
  v18 = sub_26D3A0078();
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  *a9 = 0;
  *(a9 + 8) = 1;
  *(a9 + 9) = 257;
  *(a9 + 11) = 0;
  sub_26D373F34(a1, a2, a3, a4 & 0x1FF, a5, a6, a7, a8, a9 + v16[13]);
  v19 = a9 + v16[14];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  v20 = a9 + v16[15];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  v21 = a9 + v16[16];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  v22 = a9 + v16[17];
  result = sub_26D3A0D48();
  *v22 = v26;
  *(v22 + 8) = v27;
  return result;
}

uint64_t sub_26D373F34@<X0>(void (*a1)(void, void, void, void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void, void, uint64_t, uint64_t, uint64_t)@<X6>, void (*a8)(void, void, uint64_t, uint64_t, void)@<X7>, uint64_t a9@<X8>)
{
  v59 = a7;
  v60 = a8;
  v61 = a5;
  v62 = a6;
  v65 = a1;
  v66 = a2;
  v71 = a9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC030);
  MEMORY[0x28223BE20](v70, v11);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB820);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v59 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v64 = &v59 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v63 = &v59 - v27;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC038);
  MEMORY[0x28223BE20](v67, v28);
  v30 = &v59 - v29;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC040);
  v31 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v32);
  v34 = &v59 - v33;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC048);
  v35 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v36);
  v38 = &v59 - v37;
  v39 = sub_26D33CED8(a3, a4 & 0x1FF);
  if ((v40 & 1) != 0 || v39 != 1)
  {
    v49 = a4;
    v50 = a4 & 0x100;
    v51 = a4 & 0x1FF;
    v52 = v63;
    v62 = v30;
    v54 = v65;
    v53 = v66;
    v59(0, v65, v66, a3, v51);
    v55 = v64;
    v60(0, v54, v53, a3, v50 | v49);
    sub_26D34856C(v52, v22, &qword_2804FB820);
    sub_26D34856C(v55, v18, &qword_2804FB820);
    sub_26D34856C(v22, v13, &qword_2804FB820);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC050);
    sub_26D34856C(v18, &v13[*(v56 + 48)], &qword_2804FB820);
    sub_26D3481A4(v18, &qword_2804FB820);
    sub_26D3481A4(v22, &qword_2804FB820);
    sub_26D34856C(v13, v62, &qword_2804FC030);
    swift_storeEnumTagMultiPayload();
    v57 = sub_26D3484AC(&qword_2804FC058, &qword_2804FC040);
    v58 = sub_26D37E178();
    v73 = v68;
    v74 = &type metadata for TFMenuStyle;
    v75 = v57;
    v76 = v58;
    swift_getOpaqueTypeConformance2();
    sub_26D3484AC(&qword_2804FC060, &qword_2804FC030);
    sub_26D3A0718();
    sub_26D3481A4(v13, &qword_2804FC030);
    sub_26D3481A4(v55, &qword_2804FB820);
    return sub_26D3481A4(v52, &qword_2804FB820);
  }

  else
  {
    v64 = &v59;
    MEMORY[0x28223BE20](1, v40);
    v41 = v66;
    *(&v59 - 4) = v65;
    *(&v59 - 3) = v41;
    *(&v59 - 2) = a3;
    *(&v59 - 8) = a4;
    *(&v59 - 7) = HIBYTE(a4) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70);
    sub_26D3484AC(&qword_2804FBB80, &qword_2804FBB70);
    v66 = sub_26D3484AC(&qword_2804FC060, &qword_2804FC030);
    sub_26D3A0958();
    v72 = 0;
    sub_26D3A0D48();
    v42 = v73;
    v43 = v74;
    LOBYTE(v73) = 0;
    LOBYTE(v74) = v42;
    v75 = v43;
    v44 = sub_26D3484AC(&qword_2804FC058, &qword_2804FC040);
    v45 = sub_26D37E178();
    v46 = v68;
    sub_26D3A0C08();

    (*(v31 + 8))(v34, v46);
    v47 = v69;
    (*(v35 + 16))(v30, v38, v69);
    swift_storeEnumTagMultiPayload();
    v73 = v46;
    v74 = &type metadata for TFMenuStyle;
    v75 = v44;
    v76 = v45;
    swift_getOpaqueTypeConformance2();
    sub_26D3A0718();
    return (*(v35 + 8))(v38, v47);
  }
}

uint64_t sub_26D374658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void)@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, void)@<X5>, uint64_t a7@<X8>)
{
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB820);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v30 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v30 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v30 - v25;
  v30(1, a1, a2, a3, a4 & 0x1FF);
  v31(1, a1, a2, a3, a4 & 0x1FF);
  sub_26D34856C(v26, v19, &qword_2804FB820);
  sub_26D34856C(v23, v15, &qword_2804FB820);
  v27 = v32;
  sub_26D34856C(v19, v32, &qword_2804FB820);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC050);
  sub_26D34856C(v15, v27 + *(v28 + 48), &qword_2804FB820);
  sub_26D3481A4(v23, &qword_2804FB820);
  sub_26D3481A4(v26, &qword_2804FB820);
  sub_26D3481A4(v15, &qword_2804FB820);
  return sub_26D3481A4(v19, &qword_2804FB820);
}

uint64_t sub_26D374860@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v62 = a6;
  v59 = sub_26D3A0608();
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v8);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB820);
  v11 = MEMORY[0x28223BE20](v57, v10);
  v55 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v56 = &v49 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v58 = &v49 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v60 = &v49 - v20;
  v21 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v21, v22);
  v63 = (&v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = 0;
  v25 = 0;
  v54 = a1;
  if (a1)
  {
    if (qword_2804FACB0 != -1)
    {
      swift_once();
    }

    v24 = qword_2804FFE90;
    v25 = *algn_2804FFE98;
  }

  v49 = 0x800000026D3A8200;
  sub_26D3A10C8();
  v26 = sub_26D3A10B8();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  *(v27 + 16) = v26;
  *(v27 + 24) = v28;
  v29 = v51;

  v30 = v53;
  sub_26D37DF24(v53, a5, BYTE1(a5) & 1);
  v31 = sub_26D3A10B8();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v28;
  v33 = v52;
  *(v32 + 32) = v29;
  *(v32 + 40) = v33;
  *(v32 + 48) = v30;
  *(v32 + 56) = a5;
  *(v32 + 57) = BYTE1(a5) & 1;
  sub_26D3A0E28();
  v34 = v64;
  v35 = v65;
  LOBYTE(v28) = v66;
  v36 = v63;
  sub_26D3A0638();
  *v36 = 0xD000000000000013;
  v36[1] = v49;
  v37 = (v36 + v21[6]);
  *v37 = v24;
  v37[1] = v25;
  *(v36 + v21[7]) = v54 & 1;
  v38 = v36 + v21[8];
  *v38 = v34;
  *(v38 + 1) = v35;
  v38[16] = v28;
  v39 = v36 + v21[9];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  if (qword_2804FACB0 != -1)
  {
    swift_once();
  }

  v64 = qword_2804FFE90;
  v65 = *algn_2804FFE98;
  sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle);
  sub_26D37E6A4();
  v40 = v55;
  sub_26D3A0AF8();
  v41 = v50;
  sub_26D3A05F8();
  v42 = v56;
  sub_26D3A0238();
  v43 = *(v61 + 8);
  v44 = v59;
  v43(v41, v59);
  sub_26D3481A4(v40, &qword_2804FB820);
  sub_26D3A05E8();
  v45 = v58;
  sub_26D3A0228();
  v43(v41, v44);
  sub_26D3481A4(v42, &qword_2804FB820);
  v64 = MEMORY[0x277D84F90];
  v61 = sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918);
  sub_26D3A1388();
  v46 = v60;
  sub_26D3A0228();
  v43(v41, v44);
  sub_26D3481A4(v45, &qword_2804FB820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_26D3A35F0;
  sub_26D3A05D8();
  v64 = v47;
  sub_26D3A1388();
  sub_26D3A0238();
  v43(v41, v44);
  sub_26D3481A4(v46, &qword_2804FB820);
  return sub_26D37EEEC(v63, type metadata accessor for TFToggle);
}

uint64_t sub_26D374F04@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v62 = a6;
  v59 = sub_26D3A0608();
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v8);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB820);
  v11 = MEMORY[0x28223BE20](v57, v10);
  v55 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v56 = &v49 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v58 = &v49 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v60 = &v49 - v20;
  v21 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v21, v22);
  v63 = (&v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = 0;
  v25 = 0;
  v54 = a1;
  if (a1)
  {
    if (qword_2804FACA8 != -1)
    {
      swift_once();
    }

    v24 = qword_2804FFE80;
    v25 = *algn_2804FFE88;
  }

  v49 = 0x800000026D3A81E0;
  sub_26D3A10C8();
  v26 = sub_26D3A10B8();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  *(v27 + 16) = v26;
  *(v27 + 24) = v28;
  v29 = v51;

  v30 = v53;
  sub_26D37DF24(v53, a5, BYTE1(a5) & 1);
  v31 = sub_26D3A10B8();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v28;
  v33 = v52;
  *(v32 + 32) = v29;
  *(v32 + 40) = v33;
  *(v32 + 48) = v30;
  *(v32 + 56) = a5;
  *(v32 + 57) = BYTE1(a5) & 1;
  sub_26D3A0E28();
  v34 = v64;
  v35 = v65;
  LOBYTE(v28) = v66;
  v36 = v63;
  sub_26D3A0638();
  *v36 = 0xD000000000000013;
  v36[1] = v49;
  v37 = (v36 + v21[6]);
  *v37 = v24;
  v37[1] = v25;
  *(v36 + v21[7]) = v54 & 1;
  v38 = v36 + v21[8];
  *v38 = v34;
  *(v38 + 1) = v35;
  v38[16] = v28;
  v39 = v36 + v21[9];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  if (qword_2804FACA8 != -1)
  {
    swift_once();
  }

  v64 = qword_2804FFE80;
  v65 = *algn_2804FFE88;
  sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle);
  sub_26D37E6A4();
  v40 = v55;
  sub_26D3A0AF8();
  v41 = v50;
  sub_26D3A05F8();
  v42 = v56;
  sub_26D3A0238();
  v43 = *(v61 + 8);
  v44 = v59;
  v43(v41, v59);
  sub_26D3481A4(v40, &qword_2804FB820);
  sub_26D3A05E8();
  v45 = v58;
  sub_26D3A0228();
  v43(v41, v44);
  sub_26D3481A4(v42, &qword_2804FB820);
  v64 = MEMORY[0x277D84F90];
  v61 = sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918);
  sub_26D3A1388();
  v46 = v60;
  sub_26D3A0228();
  v43(v41, v44);
  sub_26D3481A4(v45, &qword_2804FB820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_26D3A35F0;
  sub_26D3A05D8();
  v64 = v47;
  sub_26D3A1388();
  sub_26D3A0238();
  v43(v41, v44);
  sub_26D3481A4(v46, &qword_2804FB820);
  return sub_26D37EEEC(v63, type metadata accessor for TFToggle);
}

uint64_t sub_26D3755B4@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  v3 = sub_26D3A0928();
  v4 = type metadata accessor for TFSymbol(0);
  sub_26D3A0638();
  *a1 = a2;
  a1[1].n128_u8[0] = 0;
  a1[1].n128_u64[1] = v3;
  a1[2].n128_u64[0] = 0;
  a1->n128_u8[v4[9]] = 1;
  a1->n128_u8[v4[10]] = 1;
  v5 = a1 + v4[11];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = a1 + v4[12];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70);
  v8 = a1 + v7[9];
  sub_26D3A0D48();
  *v8 = v14;
  *(v8 + 1) = v15;
  v9 = a1 + v7[10];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = a1 + v7[11];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = a1 + v7[12];
  result = swift_getKeyPath();
  *v11 = result;
  v11[8] = 0;
  return result;
}

uint64_t sub_26D375700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int *a8)
{
  v10 = sub_26D3A12F8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v15 = *(a4 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
    (*(v11 + 104))(v14, *a8, v10);

    v15(v14, 0);

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D37592C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v31[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC280);
  v15 = (v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v31[-v17];
  v19 = v15[14];
  v20 = sub_26D3A0078();
  (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
  *v18 = 0;
  v18[8] = 1;
  *(v18 + 9) = 257;
  v18[11] = 0;
  sub_26D375CC8(a1, a2, a3, a4 & 0x1FF, &v18[v15[15]]);
  v21 = &v18[v15[16]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v18[v15[17]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = &v18[v15[18]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = &v18[v15[19]];
  v31[7] = 0;
  sub_26D3A0D48();
  v25 = v32;
  *v24 = v31[8];
  *(v24 + 1) = v25;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v26 = sub_26D3A1298();
    if ((*(*(v26 - 8) + 48))(v13, 1, v26))
    {

      sub_26D3481A4(v13, &qword_2804FB398);
      v27 = 0;
    }

    else
    {
      v28 = sub_26D3A11E8();

      sub_26D3481A4(v13, &qword_2804FB398);
      v27 = v28 == 1;
    }

    if (qword_2804FAD00 != -1)
    {
      v30 = v27;
      swift_once();
      v27 = v30;
    }

    sub_26D35E264(v27, 0, qword_2804FFF30, *algn_2804FFF38, a5);
    return sub_26D3481A4(v18, &qword_2804FC280);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D375CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = (a4 >> 8) & 1;
  sub_26D3A10C8();

  sub_26D37DF24(a3, a4, v10);
  v11 = sub_26D3A10B8();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  *(v12 + 56) = a4;
  *(v12 + 57) = v10;

  sub_26D37DF24(a3, a4, v10);
  v14 = sub_26D3A10B8();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 48) = a3;
  *(v15 + 56) = a4;
  *(v15 + 57) = v10;
  sub_26D3A0E28();
  v16 = type metadata accessor for TFToggle(0);
  sub_26D3A0638();
  *a5 = 0xD000000000000016;
  a5[1] = 0x800000026D3A8220;
  v17 = (a5 + v16[6]);
  *v17 = 0;
  v17[1] = 0;
  *(a5 + v16[7]) = 0;
  v18 = a5 + v16[8];
  *v18 = v21;
  *(v18 + 1) = v22;
  v18[16] = v23;
  v19 = a5 + v16[9];
  result = swift_getKeyPath();
  *v19 = result;
  v19[8] = 0;
  return result;
}

uint64_t sub_26D375E94@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v8 = sub_26D3A1298();
    if ((*(*(v8 - 8) + 48))(v7, 1, v8))
    {

      result = sub_26D3481A4(v7, &qword_2804FB398);
      v10 = 0;
    }

    else
    {
      v11 = sub_26D3A11E8();

      result = sub_26D3481A4(v7, &qword_2804FB398);
      v10 = v11 == 1;
    }

    *a2 = v10;
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D37605C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_26D3A12F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v11 = *a1;
    v12 = *(a4 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
    *v10 = v11;
    (*(v7 + 104))(v10, *MEMORY[0x277D74F00], v6);

    v12(v10, 0);

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D376238@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (qword_2804FAD48 != -1)
  {
    swift_once();
  }

  v4 = byte_2804FFF99;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB950);
  v6 = v5[12];
  v7 = sub_26D3A0078();
  (*(*(v7 - 8) + 56))(a1 + v6, 1, 1, v7);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 9) = 257;
  *(a1 + 11) = v4;
  sub_26D3763B4(v2, a1 + v5[13]);
  v8 = a1 + v5[14];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a1 + v5[15];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a1 + v5[16];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = a1 + v5[17];
  result = sub_26D3A0D48();
  *v11 = v13;
  *(v11 + 8) = v14;
  return result;
}

uint64_t sub_26D3763B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB958);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v85 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB960);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v85 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB968);
  v91 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v85 - v13;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB970);
  v16 = MEMORY[0x28223BE20](v95, v15);
  v102 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v93 = &v85 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB978);
  v97 = *(v20 - 8);
  v98 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v96 = &v85 - v22;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB980);
  v24 = MEMORY[0x28223BE20](v94, v23);
  v99 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v92 = &v85 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v100 = &v85 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB988);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v85 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB990);
  v38 = MEMORY[0x28223BE20](v36 - 8, v37);
  MEMORY[0x28223BE20](v38, v39);
  v103 = &v85 - v41;
  if ((*a1 & 1) == 0)
  {
    sub_26D376F4C(v35);
    sub_26D34856C(v35, v6, &qword_2804FB988);
    swift_storeEnumTagMultiPayload();
    sub_26D3484AC(&qword_2804FB998, &qword_2804FB960);
    sub_26D37E98C();
    sub_26D3A0718();
    v46 = v35;
    v47 = &qword_2804FB988;
    return sub_26D3481A4(v46, v47);
  }

  v85 = v11;
  v86 = v40;
  v101 = v31;
  v42 = sub_26D33CED8(*(a1 + 24), *(a1 + 32) | (*(a1 + 33) << 8));
  v89 = v7;
  v90 = v6;
  v88 = v3;
  v87 = v10;
  if ((v43 & 1) != 0 || v42 >= 2)
  {
    sub_26D376F4C(v35);
    v48 = v103;
    sub_26D347238(v35, v103, &qword_2804FB988);
    v44 = (*(v32 + 56))(v48, 0, 1, v101);
  }

  else
  {
    v44 = (*(v32 + 56))(v103, 1, 1, v101);
  }

  v49 = MEMORY[0x28223BE20](v44, v45);
  *(&v85 - 2) = a1;
  MEMORY[0x28223BE20](v49, v50);
  *(&v85 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9D0);
  sub_26D3484AC(&qword_2804FB9D8, &qword_2804FB9C8);
  sub_26D37EBCC();
  sub_26D3A0958();
  v51 = v85;
  if (qword_2804FAD10 != -1)
  {
    swift_once();
  }

  v105 = qword_2804FFF50;
  v106 = *algn_2804FFF58;
  sub_26D37E6A4();

  v52 = sub_26D3A09C8();
  v54 = v53;
  v56 = v55;
  sub_26D3484AC(&qword_2804FBA10, &qword_2804FB968);
  sub_26D3A0AE8();
  sub_26D37EDCC(v52, v54, v56 & 1);

  (*(v91 + 8))(v14, v51);
  if (*(a1 + 8))
  {

    sub_26D353158();
    if (v57)
    {
      v58 = v57;
      v59 = [v57 title];

      v60 = sub_26D3A0F98();
      v62 = v61;
    }

    else
    {
      sub_26D353158();
      if (!v63 || (v64 = v63, v65 = [v63 color], v64, !v65))
      {
        v65 = [objc_opt_self() secondaryLabelColor];
      }

      v66 = [v65 CGColor];

      v59 = AXNameFromColor(v66);
      v60 = sub_26D3A0F98();
      v62 = v67;
    }

    v105 = v60;
    v106 = v62;
    v68 = v93;
    v69 = v102;
    sub_26D3A0218();

    sub_26D3481A4(v69, &qword_2804FB970);
    v108 = 0;
    sub_26D3A0D48();
    v70 = v105;
    v71 = v106;
    LOBYTE(v105) = 0;
    LOBYTE(v106) = v70;
    v107 = v71;
    sub_26D37EDDC();
    sub_26D37E178();
    v72 = v96;
    sub_26D3A0C08();

    sub_26D3481A4(v68, &qword_2804FB970);
    v73 = sub_26D378F14();
    KeyPath = swift_getKeyPath();
    v75 = swift_allocObject();
    *(v75 + 16) = v73 & 1;
    v76 = v92;
    (*(v97 + 32))(v92, v72, v98);
    v77 = (v76 + *(v94 + 36));
    *v77 = KeyPath;
    v77[1] = sub_26D37EEDC;
    v77[2] = v75;
    v78 = v100;
    sub_26D347238(v76, v100, &qword_2804FB980);
    v79 = v103;
    v80 = v86;
    sub_26D34856C(v103, v86, &qword_2804FB990);
    v81 = v99;
    sub_26D34856C(v78, v99, &qword_2804FB980);
    v82 = v87;
    sub_26D34856C(v80, v87, &qword_2804FB990);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA20);
    sub_26D34856C(v81, v82 + *(v83 + 48), &qword_2804FB980);
    sub_26D3481A4(v81, &qword_2804FB980);
    sub_26D3481A4(v80, &qword_2804FB990);
    sub_26D34856C(v82, v90, &qword_2804FB960);
    swift_storeEnumTagMultiPayload();
    sub_26D3484AC(&qword_2804FB998, &qword_2804FB960);
    sub_26D37E98C();
    sub_26D3A0718();
    sub_26D3481A4(v82, &qword_2804FB960);
    sub_26D3481A4(v78, &qword_2804FB980);
    v46 = v79;
    v47 = &qword_2804FB990;
    return sub_26D3481A4(v46, v47);
  }

  type metadata accessor for TextFormattingState();
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
  result = sub_26D3A02B8();
  __break(1u);
  return result;
}

uint64_t sub_26D376F4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v47 - v7);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9B0);
  MEMORY[0x28223BE20](v48, v9);
  v11 = &v47 - v10;
  sub_26D3A10C8();
  sub_26D348034(v1, &v50);
  v12 = sub_26D3A10B8();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  v15 = v1[3];
  *(v13 + 64) = v1[2];
  *(v13 + 80) = v15;
  v16 = v1[5];
  *(v13 + 96) = v1[4];
  *(v13 + 112) = v16;
  v17 = v1[1];
  *(v13 + 32) = *v1;
  *(v13 + 48) = v17;
  sub_26D348034(v1, &v50);
  v18 = sub_26D3A10B8();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v14;
  v20 = v1[3];
  *(v19 + 64) = v1[2];
  *(v19 + 80) = v20;
  v21 = v1[5];
  *(v19 + 96) = v1[4];
  *(v19 + 112) = v21;
  v22 = v1[1];
  *(v19 + 32) = *v1;
  *(v19 + 48) = v22;
  sub_26D3A0E28();
  v23 = v50;
  v24 = v51;
  v25 = type metadata accessor for TFToggle(0);

  sub_26D3A0638();
  *v8 = xmmword_26D3A3F00;
  v26 = (v8 + v25[6]);
  *v26 = 0;
  v26[1] = 0;
  *(v8 + v25[7]) = 0;
  v27 = v8 + v25[8];
  *v27 = v23;
  v47 = *(&v23 + 1);
  v27[16] = v24;
  v28 = v8 + v25[9];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  LOBYTE(v28) = sub_26D378F14();
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = v28 & 1;
  v31 = (v8 + *(v5 + 44));
  *v31 = KeyPath;
  v31[1] = sub_26D3834C0;
  v31[2] = v30;
  if (*v2)
  {
    v32 = sub_26D33CED8(*(v2 + 3), *(v2 + 32) | (*(v2 + 33) << 8));
    v49 = 0;
    if ((v33 & 1) == 0 && v32 >= 4)
    {
      v34 = sub_26D33CD0C(*(v2 + 7), *(v2 + 64));
      sub_26D39C90C(v34);
      v49 = v35;
    }
  }

  else
  {
    v49 = 0;
  }

  sub_26D3A0EA8();
  sub_26D3A0268();
  sub_26D347238(v8, v11, &qword_2804FB9C0);
  v36 = &v11[*(v48 + 36)];
  v37 = v55;
  *(v36 + 4) = v54;
  *(v36 + 5) = v37;
  *(v36 + 6) = v56;
  v38 = v51;
  *v36 = v50;
  *(v36 + 1) = v38;
  v39 = v53;
  *(v36 + 2) = v52;
  *(v36 + 3) = v39;
  if (*(v2 + 1))
  {

    sub_26D352360();
    v41 = v40;

    v42 = v41;
    if (v41 >> 62)
    {
      goto LABEL_12;
    }

    v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      while ((v42 & 0xC000000000000001) == 0)
      {
        v44 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v44)
        {
          goto LABEL_16;
        }

        __break(1u);
LABEL_12:
        v45 = v42;
        v43 = sub_26D3A1488();
        v42 = v45;
        if (!v43)
        {
          goto LABEL_15;
        }
      }

      sub_26D33E800(0, v42);
      swift_unknownObjectRelease();
    }

LABEL_15:

LABEL_16:
    if (qword_2804FAD08 != -1)
    {
      swift_once();
    }

    sub_26D35E830(v43 != 0, 0, qword_2804FFF40, *algn_2804FFF48, a1);

    return sub_26D3481A4(v11, &qword_2804FB9B0);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D3774BC(uint64_t a1)
{
  if ((*(a1 + 1) & 1) == 0)
  {
    if (qword_2804FABD0 != -1)
    {
      swift_once();
    }

    goto LABEL_7;
  }

  if (*(a1 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v2 = v8[0];
LABEL_7:
    v8[12] = v2;
    swift_getKeyPath();
    v3 = swift_allocObject();
    v4 = *(a1 + 48);
    v3[3] = *(a1 + 32);
    v3[4] = v4;
    v5 = *(a1 + 80);
    v3[5] = *(a1 + 64);
    v3[6] = v5;
    v6 = *(a1 + 16);
    v3[1] = *a1;
    v3[2] = v6;
    sub_26D348034(a1, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB640);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9F0);
    sub_26D3484AC(&qword_2804FBA68, &qword_2804FB640);
    sub_26D37EC50();
    return sub_26D3A0E58();
  }

  type metadata accessor for TextFormattingState();
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
  result = sub_26D3A02B8();
  __break(1u);
  return result;
}

void sub_26D3776F8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 styleKey];
  v4 = sub_26D3A0F98();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_26D377750@<X0>(void **a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v49 = sub_26D3A0288();
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v5);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9F8);
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v8);
  v10 = v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA70);
  v12 = *(v11 - 8);
  v51 = v11;
  v52 = v12;
  MEMORY[0x28223BE20](v11, v13);
  v15 = v46 - v14;
  v16 = *a1;
  sub_26D3A10C8();
  sub_26D348034(a2, &v56);
  v17 = v16;
  v18 = sub_26D3A10B8();
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D85700];
  *(v19 + 16) = v18;
  *(v19 + 24) = v20;
  v21 = a2[3];
  *(v19 + 64) = a2[2];
  *(v19 + 80) = v21;
  v22 = a2[5];
  *(v19 + 96) = a2[4];
  *(v19 + 112) = v22;
  v23 = a2[1];
  *(v19 + 32) = *a2;
  *(v19 + 48) = v23;
  *(v19 + 128) = v17;
  sub_26D348034(a2, &v56);
  v24 = v17;
  v25 = sub_26D3A10B8();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v20;
  v27 = a2[3];
  *(v26 + 64) = a2[2];
  *(v26 + 80) = v27;
  v28 = a2[5];
  *(v26 + 96) = a2[4];
  *(v26 + 112) = v28;
  v29 = a2[1];
  *(v26 + 32) = *a2;
  *(v26 + 48) = v29;
  *(v26 + 128) = v24;
  sub_26D3A0E28();
  v30 = v57;
  v54 = v24;
  v55 = a2;
  v46[2] = v56;

  v46[1] = v30;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA78);
  sub_26D3484AC(&qword_2804FBA80, &qword_2804FBA78);
  sub_26D3A0DC8();
  sub_26D3A0278();
  v31 = sub_26D3484AC(&qword_2804FBA00, &qword_2804FB9F8);
  v32 = sub_26D37E044(&qword_2804FBA08, MEMORY[0x277CDDBD0]);
  v33 = v15;
  v34 = v47;
  v35 = v49;
  sub_26D3A0A48();
  (*(v50 + 8))(v7, v35);
  (*(v48 + 8))(v10, v34);
  v36 = [v24 title];
  v37 = sub_26D3A0F98();
  v39 = v38;

  v56 = v37;
  v57 = v39;
  sub_26D37E6A4();
  v40 = sub_26D3A09C8();
  v42 = v41;
  LOBYTE(v7) = v43;
  v56 = v34;
  v57 = v35;
  v58 = v31;
  v59 = v32;
  swift_getOpaqueTypeConformance2();
  v44 = v51;
  sub_26D3A0AE8();
  sub_26D37EDCC(v40, v42, v7 & 1);

  return (*(v52 + 8))(v33, v44);
}

uint64_t sub_26D377C9C@<X0>(uint64_t a1@<X2>, void *a2@<X3>, BOOL *a3@<X8>)
{
  if (*(a1 + 8))
  {

    sub_26D352360();
    v5 = v4;

    v20 = a3;
    if (v5 >> 62)
    {
LABEL_18:
      v22 = v5 & 0xFFFFFFFFFFFFFF8;
      v23 = sub_26D3A1488();
    }

    else
    {
      v22 = v5 & 0xFFFFFFFFFFFFFF8;
      v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    do
    {
      v8 = v6;
      if (v23 == v6)
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_26D33E800(v6, v5);
      }

      else
      {
        if (v6 >= *(v22 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v5 + 8 * v6 + 32);
      }

      v10 = v9;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v11 = [v9 styleKey];
      v12 = sub_26D3A0F98();
      v14 = v13;

      v15 = [a2 styleKey];
      v16 = sub_26D3A0F98();
      v18 = v17;

      if (v12 == v16 && v14 == v18)
      {

        break;
      }

      v7 = sub_26D3A1518();

      v6 = v8 + 1;
    }

    while ((v7 & 1) == 0);

    *v20 = v23 != v8;
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D377ED8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*(a4 + 8))
  {
    if (*a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_26D3A2290;
      *(v6 + 32) = a5;

      v7 = a5;
    }

    else if (*(a4 + 1))
    {

      v6 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_26D3A2290;
      v8 = qword_2804FAB98;

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = qword_2804FFC38;
      *(v6 + 32) = qword_2804FFC38;
      v10 = v9;
    }

    sub_26D3527C8(v6);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D378060()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA88);
  sub_26D37F0D4();
  return sub_26D3A0CD8();
}

uint64_t sub_26D3780FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 title];
  sub_26D3A0F98();

  sub_26D37E6A4();
  result = sub_26D3A09C8();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_26D378180@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a1 + 8))
  {

    v5 = [a2 styleKey];
    v6 = sub_26D3A0F98();
    v8 = v7;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_26D39FF68();

    if (*(v14 + 16))
    {
      v9 = sub_26D33F2EC(v6, v8);
      v11 = v10;

      if (v11)
      {
        v12 = *(*(v14 + 56) + 8 * v9);

        result = sub_26D3A0C98();
LABEL_7:
        *a3 = result;
        return result;
      }
    }

    else
    {
    }

    result = 0;
    goto LABEL_7;
  }

  type metadata accessor for TextFormattingState();
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
  result = sub_26D3A02B8();
  __break(1u);
  return result;
}

uint64_t sub_26D378308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26D3783D8(a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C8);
  v4 = a2 + v3[9];
  sub_26D3A0D48();
  *v4 = v9;
  *(v4 + 8) = v10;
  v5 = a2 + v3[10];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = a2 + v3[11];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a2 + v3[12];
  result = swift_getKeyPath();
  *v7 = result;
  *(v7 + 8) = 0;
  return result;
}

uint64_t sub_26D3783D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA28);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v21[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA30);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v21[-v8];
  v10 = type metadata accessor for TFSymbol(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_26D33CED8(*(a1 + 24), *(a1 + 32) | (*(a1 + 33) << 8));
  if ((v15 & 1) != 0 || v14 > 1)
  {
    *v5 = sub_26D3A0548();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA38);
    sub_26D378768(a1, &v5[*(v20 + 44)]);
    sub_26D34856C(v5, v9, &qword_2804FBA28);
    swift_storeEnumTagMultiPayload();
    sub_26D37E044(&qword_2804FC7D0, type metadata accessor for TFSymbol);
    sub_26D3484AC(&qword_2804FBA40, &qword_2804FBA28);
    sub_26D3A0718();
    return sub_26D3481A4(v5, &qword_2804FBA28);
  }

  else
  {
    v16 = sub_26D3A0928();
    sub_26D3A0638();
    *v13 = xmmword_26D3A3F00;
    v13[16] = 0;
    *(v13 + 3) = v16;
    *(v13 + 4) = 0;
    v13[v10[9]] = 1;
    v13[v10[10]] = 1;
    v17 = &v13[v10[11]];
    *v17 = swift_getKeyPath();
    v17[8] = 0;
    v18 = &v13[v10[12]];
    *v18 = swift_getKeyPath();
    v18[8] = 0;
    sub_26D381440(v13, v9, type metadata accessor for TFSymbol);
    swift_storeEnumTagMultiPayload();
    sub_26D37E044(&qword_2804FC7D0, type metadata accessor for TFSymbol);
    sub_26D3484AC(&qword_2804FBA40, &qword_2804FBA28);
    sub_26D3A0718();
    return sub_26D37EEEC(v13, type metadata accessor for TFSymbol);
  }
}

uint64_t sub_26D378768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA48);
  v5 = v4 - 8;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v55[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v55[-v11 - 8];
  v13 = sub_26D378DFC();
  v14 = sub_26D3A0928();
  v15 = type metadata accessor for TFSymbol(0);
  sub_26D3A0638();
  *v12 = xmmword_26D3A3F10;
  v12[16] = 0;
  *(v12 + 3) = v14;
  *(v12 + 4) = v13;
  v12[v15[9]] = 1;
  v12[v15[10]] = 1;
  v16 = &v12[v15[11]];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = &v12[v15[12]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = &v12[*(v5 + 44)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA50) + 28);
  v20 = *MEMORY[0x277CE1050];
  v21 = sub_26D3A0CC8();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  if (*(a1 + 8))
  {

    sub_26D353158();
    v23 = v22;

    if (v23)
    {
      v24 = [v23 title];

      v25 = sub_26D3A0F98();
      v27 = v26;

      if (*a1)
      {
        v28 = sub_26D33CED8(*(a1 + 24), *(a1 + 32) | (*(a1 + 33) << 8));
        if ((v29 & 1) == 0 && v28 >= 4 && *(a1 + 88) < sub_26D33D278(*(a1 + 40), *(a1 + 48)))
        {
          KeyPath = swift_getKeyPath();
          v30 = sub_26D3A0878();
          v31 = sub_26D33CD0C(*(a1 + 56), *(a1 + 64));
          if (qword_2804FAD40 != -1)
          {
            swift_once();
          }

          if (byte_2804FFF98)
          {
            goto LABEL_10;
          }

          if (qword_2804FAD48 != -1)
          {
            swift_once();
          }

          if (byte_2804FFF99 & 1) == 0 && (_UISolariumEnabled())
          {
LABEL_10:
            sub_26D39CDDC(0, v31);
          }

          sub_26D39FFD8();
          v47 = v46;
          v49 = v48;
          v51 = v50;
          v53 = v52;
          LOBYTE(v69[0]) = 0;
          LOBYTE(v56) = 0;
          sub_26D3A0EB8();
          sub_26D3A0268();
          *&v55[55] = v92;
          *&v55[71] = v93;
          *&v55[87] = v94;
          *&v55[103] = v95;
          *&v55[7] = v89;
          *&v55[23] = v90;
          *&v55[39] = v91;
          *&v70 = v25;
          *(&v70 + 1) = v27;
          LOBYTE(v71) = 0;
          *(&v71 + 1) = KeyPath;
          LOBYTE(v72) = 0;
          BYTE8(v72) = v30;
          *&v73 = v47;
          *(&v73 + 1) = v49;
          *&v74 = v51;
          *(&v74 + 1) = v53;
          LOBYTE(v75[0]) = 0;
          *(&v75[4] + 1) = *&v55[64];
          *(&v75[5] + 1) = *&v55[80];
          *(&v75[6] + 1) = *&v55[96];
          *(v75 + 1) = *v55;
          *(&v75[1] + 1) = *&v55[16];
          *(&v75[2] + 1) = *&v55[32];
          *(&v75[3] + 1) = *&v55[48];
          *&v75[7] = *(&v95 + 1);
          *(&v75[7] + 1) = 0x3FF0000000000000;
          nullsub_1(&v70);
          v86 = v75[5];
          v87 = v75[6];
          v88 = v75[7];
          v82 = v75[1];
          v83 = v75[2];
          v84 = v75[3];
          v85 = v75[4];
          v78 = v72;
          v79 = v73;
          v80 = v74;
          v81 = v75[0];
          v76 = v70;
          v77 = v71;
          goto LABEL_13;
        }
      }
    }

    sub_26D37EFB0(&v76);
LABEL_13:
    sub_26D34856C(v12, v9, &qword_2804FBA48);
    v65 = v85;
    v66 = v86;
    v67 = v87;
    v68 = v88;
    v61 = v81;
    v62 = v82;
    v63 = v83;
    v64 = v84;
    v57 = v77;
    v58 = v78;
    v59 = v79;
    v60 = v80;
    v56 = v76;
    sub_26D34856C(v9, a2, &qword_2804FBA48);
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA58) + 48);
    v33 = v65;
    v69[10] = v66;
    v69[11] = v67;
    v34 = v67;
    v69[12] = v68;
    v35 = v61;
    v36 = v62;
    v69[6] = v62;
    v69[7] = v63;
    v37 = v63;
    v38 = v64;
    v69[8] = v64;
    v69[9] = v65;
    v39 = v59;
    v40 = v60;
    v69[4] = v60;
    v69[5] = v61;
    v41 = v57;
    v42 = v58;
    v69[2] = v58;
    v69[3] = v59;
    v43 = v56;
    v69[0] = v56;
    v69[1] = v57;
    v44 = (a2 + v32);
    v44[10] = v66;
    v44[11] = v34;
    v44[12] = v68;
    v44[6] = v36;
    v44[7] = v37;
    v44[8] = v38;
    v44[9] = v33;
    v44[2] = v42;
    v44[3] = v39;
    v44[4] = v40;
    v44[5] = v35;
    *v44 = v43;
    v44[1] = v41;
    sub_26D34856C(v69, &v70, &qword_2804FBA60);
    sub_26D3481A4(v12, &qword_2804FBA48);
    v75[5] = v66;
    v75[6] = v67;
    v75[7] = v68;
    v75[1] = v62;
    v75[2] = v63;
    v75[3] = v64;
    v75[4] = v65;
    v72 = v58;
    v73 = v59;
    v74 = v60;
    v75[0] = v61;
    v70 = v56;
    v71 = v57;
    sub_26D3481A4(&v70, &qword_2804FBA60);
    return sub_26D3481A4(v9, &qword_2804FBA48);
  }

  type metadata accessor for TextFormattingState();
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
  result = sub_26D3A02B8();
  __break(1u);
  return result;
}

uint64_t sub_26D378DFC()
{
  if (*(v0 + 8))
  {

    sub_26D353158();
    if (!v1 || (v2 = v1, v3 = [v1 color], v2, !v3))
    {
      v4 = [objc_opt_self() secondaryLabelColor];
    }

    sub_26D3A0C18();
    return sub_26D3A00D8();
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D378F14()
{
  if ((*(v0 + 1) & 1) == 0)
  {
    goto LABEL_5;
  }

  if (*(v0 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    if (v5 >> 62)
    {
      v4 = sub_26D3A1488();

      if (v4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v1 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v1)
      {
LABEL_5:
        v2 = sub_26D33D0B8(*(v0 + 72), *(v0 + 80)) ^ 1;
        return v2 & 1;
      }
    }

    v2 = 1;
    return v2 & 1;
  }

  type metadata accessor for TextFormattingState();
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
  result = sub_26D3A02B8();
  __break(1u);
  return result;
}

unint64_t sub_26D37905C@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  if (*(a1 + 8))
  {

    sub_26D352360();
    v4 = v3;

    result = v4;
    if (v4 >> 62)
    {
      goto LABEL_7;
    }

    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      while ((result & 0xC000000000000001) == 0)
      {
        v7 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v7)
        {
          goto LABEL_11;
        }

        __break(1u);
LABEL_7:
        v8 = result;
        v6 = sub_26D3A1488();
        result = v8;
        if (!v6)
        {
          goto LABEL_10;
        }
      }

      sub_26D33E800(0, result);
      swift_unknownObjectRelease();
    }

LABEL_10:

LABEL_11:
    *a2 = v6 != 0;
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

void sub_26D379184(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 8))
  {
    goto LABEL_31;
  }

  v5 = *a1;
  swift_retain_n();
  v6 = sub_26D353218();
  v7 = v6;
  if ((*(a4 + 1) & 1) == 0)
  {

    if (!v5)
    {
      if (qword_2804FAB98 != -1)
      {
        swift_once();
      }

      v13 = qword_2804FFC38;
      v14 = qword_2804FFC38;
      goto LABEL_25;
    }

    if ((*a4 & 1) == 0)
    {
      if (qword_2804FABA0 != -1)
      {
        swift_once();
      }

      v13 = qword_2804FFC40;
      v14 = qword_2804FFC40;
      goto LABEL_25;
    }

    if (v7)
    {
      v14 = v7;
      v13 = v7;
      goto LABEL_25;
    }

LABEL_12:
    v13 = 0;
    v15 = MEMORY[0x277D84F90];
LABEL_26:
    sub_26D3527C8(v15);

    return;
  }

  if (!v5 || !v6)
  {

    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  sub_26D39FF68();

  v10 = v20;
  v20 = v8;
  MEMORY[0x28223BE20](v9, v11);
  v19[2] = &v20;
  v12 = sub_26D35999C(sub_26D37F19C, v19, v10);

  if (v12)
  {

    v13 = v7;
    v14 = v8;
LABEL_25:
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26D3A2290;
    *(v15 + 32) = v13;
    goto LABEL_26;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v16 = v20;
  if (v20 >> 62)
  {
    if (sub_26D3A1488())
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_28:

    goto LABEL_12;
  }

LABEL_21:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = sub_26D33E800(0, v16);
    goto LABEL_24;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v16 + 32);
LABEL_24:
    v13 = v17;

    v14 = v13;
    goto LABEL_25;
  }

  __break(1u);
LABEL_31:
  type metadata accessor for TextFormattingState();
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
  sub_26D3A02B8();
  __break(1u);
}

uint64_t sub_26D379540@<X0>(uint64_t a1@<X8>)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB7E8);
  MEMORY[0x28223BE20](v52, v3);
  v5 = &v49 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC6F0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v49 - v8;
  v10 = *v1;
  v11 = [*v1 _textAnimationName];
  if (!v11)
  {
    goto LABEL_5;
  }

  if (qword_2804FAD40 != -1)
  {
    swift_once();
  }

  if ((byte_2804FFF98 & 1) == 0)
  {
    sub_26D3A0048();
    v13 = sub_26D3A0078();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  else
  {
LABEL_5:
    v12 = sub_26D3A0078();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  v14 = sub_26D33CD0C(*(v1 + 40), *(v1 + 48));
  v15 = *(v1 + 8);
  if (v15)
  {
    v16 = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_26D39FF68();

    v17 = v58;
    v51 = v59;
    v18 = *(v15 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isInPopoverPresentation);
    v55 = v9;
    v56 = a1;
    v54 = v10;
    if (v18)
    {

      v50 = 0;
    }

    else
    {
      v19 = *(v15 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_hasParentViewController);

      v50 = v19 ^ 1;
    }

    v53 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_useReducedMetrics;
    v20 = *(v15 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_useReducedMetrics);

    v21 = sub_26D3A0F68();
    v22 = sub_26D3A0F98();
    v24 = v23;
    v25 = sub_26D3A0F98();
    v27 = v26;

    if (v22 == v25 && v24 == v27)
    {
    }

    else
    {
      v28 = sub_26D3A1518();

      if ((v28 & 1) == 0)
      {
        v31 = v1;
        if ((v16 - 2) >= 3u)
        {
          goto LABEL_21;
        }

        if ((v51 & 1) == 0)
        {
          if (v16 == 4)
          {
            v44 = 2.0;
          }

          else
          {
            v44 = 4.0;
          }

          v45 = sub_26D39C058(v50 & 1, v20, v16);
          v47 = v17 - (v45 + v46);
          sub_26D39E14C(v20, v16);
          v30 = (v47 - v48 - v44 * sub_26D39C698(v20, v16)) / v44;
          goto LABEL_16;
        }

        if (v20)
        {
          v30 = 34.0;
        }

        else
        {
LABEL_21:
          sub_26D39D4C4(v16);
          v30 = v43;
        }

LABEL_16:
        v32 = v52;
        v33 = v55;
        sub_26D34856C(v55, &v5[*(v52 + 48)], &qword_2804FC6F0);
        *v5 = v30;
        v5[8] = 0;
        *(v5 + 9) = 257;
        v5[11] = 0;
        sub_26D379B28(v31, &v5[v32[13]]);
        v34 = &v5[v32[14]];
        *v34 = swift_getKeyPath();
        v34[8] = 0;
        v35 = &v5[v32[15]];
        *v35 = swift_getKeyPath();
        v35[8] = 0;
        v36 = &v5[v32[16]];
        *v36 = swift_getKeyPath();
        v36[8] = 0;
        v37 = &v5[v32[17]];
        v57 = 0;
        sub_26D3A0D48();
        v38 = v59;
        *v37 = LOBYTE(v58);
        *(v37 + 1) = v38;
        sub_26D37DDD0(v54);
        sub_26D3484AC(&qword_2804FB7F0, &qword_2804FB7E8);
        v39 = v56;
        sub_26D3A0B68();

        sub_26D3481A4(v5, &qword_2804FB7E8);
        KeyPath = swift_getKeyPath();
        sub_26D3481A4(v33, &qword_2804FC6F0);
        LOBYTE(v32) = *(v15 + v53);

        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB7F8);
        v42 = v39 + *(result + 36);
        *v42 = KeyPath;
        *(v42 + 8) = v32;
        return result;
      }
    }

    sub_26D39E14C(v20, v16);
    v30 = v29;
    v31 = v1;
    goto LABEL_16;
  }

  type metadata accessor for TextFormattingState();
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
  result = sub_26D3A02B8();
  __break(1u);
  return result;
}

uint64_t sub_26D379B28@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a2;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB808);
  MEMORY[0x28223BE20](v161, v3);
  v162 = &v149 - v4;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB810);
  MEMORY[0x28223BE20](v155, v5);
  v156 = (&v149 - v6);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB818);
  MEMORY[0x28223BE20](v160, v7);
  v157 = &v149 - v8;
  v159 = sub_26D3A1298();
  v163 = *(v159 - 8);
  MEMORY[0x28223BE20](v159, v9);
  v154 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v153 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v151 = &v149 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v152 = &v149 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v158 = &v149 - v22;
  v23 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v149 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB820);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v149 - v29;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB828);
  MEMORY[0x28223BE20](v167, v31);
  v171 = &v149 - v32;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB830);
  v164 = *(v169 - 8);
  MEMORY[0x28223BE20](v169, v33);
  v35 = &v149 - v34;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB838);
  v166 = *(v170 - 8);
  MEMORY[0x28223BE20](v170, v36);
  v165 = &v149 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB840);
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v149 - v40;
  v42 = a1;
  v43 = *a1;
  v44 = [v43 _subcomponents];
  v168 = v38;
  if (v44)
  {
    v45 = v44;

    sub_26D345E5C(0, &qword_2804FB890);
    v46 = sub_26D3A1058();

    v163 = &v149;
    v49 = MEMORY[0x28223BE20](v47, v48);
    *(&v149 - 2) = v46;
    *(&v149 - 1) = v42;
    MEMORY[0x28223BE20](v49, v50);
    *(&v149 - 2) = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB898);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB8A0);
    sub_26D3484AC(&qword_2804FB8A8, &qword_2804FB898);
    sub_26D381AFC(&qword_2804FB8B0, &qword_2804FB8A0, &unk_26D3A4FF8, sub_26D37E274);
    sub_26D3A0958();

    LOBYTE(v180) = 0;
    sub_26D3A0D48();
    v51 = v175;
    v52 = *(&v175 + 1);
    LOBYTE(v175) = 0;
    BYTE8(v175) = v51;
    v176 = v52;
    v53 = sub_26D3484AC(&qword_2804FB870, &qword_2804FB830);
    v54 = sub_26D37E178();
    v55 = v165;
    v56 = v169;
    sub_26D3A0C08();

    (v164[1])(v35, v56);
    v57 = v166;
    v58 = v170;
    (*(v166 + 16))(v171, v55, v170);
    swift_storeEnumTagMultiPayload();
    *&v175 = v56;
    *(&v175 + 1) = &type metadata for TFMenuStyle;
    v176 = v53;
    v177 = v54;
    swift_getOpaqueTypeConformance2();
    sub_26D37E1CC();
    sub_26D3A0718();
    return (*(v57 + 8))(v55, v58);
  }

  v60 = v158;
  v149 = v23;
  v164 = v26;
  v150 = v30;
  v165 = v41;
  v166 = v27;
  v61 = [v43 _textAnimationName];
  if (!v61)
  {
    v75 = [v43 systemImageName];
    v76 = v42;
    if (v75)
    {
      v77 = v75;
      v158 = sub_26D3A0F98();
      v157 = v78;
    }

    else
    {
      v158 = 0;
      v157 = 0;
    }

    v104 = v164;
    v105 = v42[3];
    v106 = *(v42 + 32);
    v107 = *(v42 + 33);
    v108 = sub_26D33CED8(v105, v106 | (v107 << 8));
    if ((v109 & 1) != 0 || v108 > 2 || (v110 = [v43 systemImageName]) == 0)
    {
      v111 = [v43 title];
      v156 = sub_26D3A0F98();
      v155 = v112;
    }

    else
    {

      v156 = 0;
      v155 = 0;
    }

    v113 = v42[1];
    v154 = v76[2];
    v180 = v76[5];
    LOBYTE(v181) = *(v76 + 48);
    sub_26D3A10C8();

    v114 = v43;
    sub_26D37DF24(v105, v106, v107);
    sub_26D34856C(&v180, &v175, &qword_2804FB848);
    v115 = sub_26D3A10B8();
    v116 = swift_allocObject();
    v117 = MEMORY[0x277D85700];
    *(v116 + 16) = v115;
    *(v116 + 24) = v117;
    v118 = *(v76 + 1);
    *(v116 + 32) = *v76;
    *(v116 + 48) = v118;
    *(v116 + 64) = *(v76 + 2);
    *(v116 + 80) = *(v76 + 48);
    *(v116 + 88) = v114;
    v119 = v114;

    sub_26D37DF24(v105, v106, v107);
    sub_26D34856C(&v180, &v175, &qword_2804FB848);
    v120 = sub_26D3A10B8();
    v121 = swift_allocObject();
    *(v121 + 16) = v120;
    *(v121 + 24) = MEMORY[0x277D85700];
    v122 = *(v76 + 1);
    *(v121 + 32) = *v76;
    *(v121 + 48) = v122;
    *(v121 + 64) = *(v76 + 2);
    *(v121 + 80) = *(v76 + 48);
    v123 = v119;
    *(v121 + 88) = v119;
    sub_26D3A0E28();
    v124 = v175;
    LOBYTE(v114) = v176;
    v125 = v149;
    sub_26D3A0638();
    v126 = v157;
    *v104 = v158;
    v104[1] = v126;
    v127 = (v104 + v125[6]);
    v128 = v155;
    *v127 = v156;
    v127[1] = v128;
    *(v104 + v125[7]) = 0;
    v129 = v104 + v125[8];
    *v129 = v124;
    v129[16] = v114;
    v130 = v104 + v125[9];
    *v130 = swift_getKeyPath();
    v130[8] = 0;
    if (v113)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      v131 = v153;
      sub_26D39FF68();

      v132 = (v163[6])(v131, 1, v159);
      v133 = v162;
      v134 = v150;
      if (v132)
      {
        sub_26D3481A4(v131, &qword_2804FB398);
        v135 = 0;
      }

      else
      {
        v136 = sub_26D3A1248();
        sub_26D3481A4(v131, &qword_2804FB398);
        v137 = [v123 componentKey];
        v135 = sub_26D34862C(v137, v136);
      }

      v103 = v169;
      v138 = [v123 accessibilityLabel];
      if (!v138)
      {
        v138 = [v123 title];
      }

      v139 = v138;
      v140 = sub_26D3A0F98();
      v142 = v141;

      v143 = v164;
      sub_26D35DCA8(v135 & 1, 0, v140, v142, v134);

      sub_26D37EEEC(v143, type metadata accessor for TFToggle);
      sub_26D34856C(v134, v133, &qword_2804FB820);
      swift_storeEnumTagMultiPayload();
      sub_26D37DF5C();
      sub_26D37E08C();
      v101 = v165;
      sub_26D3A0718();
      sub_26D3481A4(v134, &qword_2804FB820);
      v102 = v171;
      goto LABEL_32;
    }

LABEL_36:
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
    return result;
  }

  v62 = v61;
  v164 = v43;

  v63 = sub_26D3A0F98();
  v65 = v64;

  v66 = v42;
  v67 = v42[1];
  v68 = v159;
  if (!v67)
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    sub_26D3A02B8();
    __break(1u);
    goto LABEL_36;
  }

  v150 = v63;
  v153 = v65;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  sub_26D39FF68();

  v69 = v163[6];
  v70 = (v69)(v60, 1, v68);
  v71 = v157;
  v72 = v154;
  if (v70)
  {
    sub_26D3481A4(v60, &qword_2804FB398);
    v73 = v67[OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isTextAnimationsUI];

    if ((v73 & 1) == 0)
    {
      v74 = 0;
LABEL_14:

      v83 = v74;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v79 = sub_26D3A1248();
  sub_26D3481A4(v60, &qword_2804FB398);
  v80 = [v164 componentKey];
  v74 = sub_26D34862C(v80, v79);

  LOBYTE(v80) = v67[OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isTextAnimationsUI];

  if ((v80 & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((v74 & 1) == 0)
  {
LABEL_15:

    v74 = 0;
    v83 = 0;
    goto LABEL_16;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v152;
  sub_26D39FF68();

  v82 = v151;
  sub_26D34856C(v81, v151, &qword_2804FB398);
  if ((v69)(v82, 1, v68) == 1)
  {
    sub_26D3481A4(v81, &qword_2804FB398);
    v74 = 1;
    v83 = 1;
  }

  else
  {
    v146 = v163;
    (v163[4])(v72, v82, v68);
    v147 = sub_26D3A1248();
    (v146[1])(v72, v68);
    sub_26D3481A4(v81, &qword_2804FB398);
    v148 = *(v147 + 16);

    v83 = v148 == 1;
    v74 = 1;
  }

LABEL_16:
  v84 = v155;
  v180 = v66[3];
  v181 = *(v66 + 16);
  v178 = v66[5];
  v179 = *(v66 + 48);
  v85 = swift_allocObject();
  v86 = *(v66 + 1);
  *(v85 + 16) = *v66;
  *(v85 + 32) = v86;
  *(v85 + 48) = *(v66 + 2);
  *(v85 + 64) = *(v66 + 48);
  v87 = v156;
  *v156 = 256;
  v88 = v84[12];
  v89 = v164;

  sub_26D34856C(&v180, &v175, &qword_2804FB888);
  sub_26D34856C(&v178, &v175, &qword_2804FB848);
  sub_26D37BE1C(v66, v150, v153, v83, v87 + v88);

  v90 = (v87 + v84[13]);
  *v90 = sub_26D37E25C;
  v90[1] = v85;
  v91 = v87 + v84[14];
  v173 = 0;
  v174 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC4F0);
  sub_26D3A0D48();
  v92 = BYTE8(v175);
  v93 = v176;
  *v91 = v175;
  *(v91 + 8) = v92;
  *(v91 + 16) = v93;
  v94 = v84[15];
  v173 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804FC500);
  sub_26D3A0D48();
  *(v87 + v94) = v175;
  v95 = v87 + v84[16];
  *v95 = swift_getKeyPath();
  *(v95 + 8) = 0;
  v96 = [v89 accessibilityLabel];
  if (!v96)
  {
    v96 = [v89 title];
  }

  v97 = v96;
  v98 = sub_26D3A0F98();
  v100 = v99;

  sub_26D35EDC8(v74 & 1, 0, v98, v100, v71);

  sub_26D3481A4(v87, &qword_2804FB810);
  sub_26D34856C(v71, v162, &qword_2804FB818);
  swift_storeEnumTagMultiPayload();
  sub_26D37DF5C();
  sub_26D37E08C();
  v101 = v165;
  sub_26D3A0718();
  sub_26D3481A4(v71, &qword_2804FB818);
  v102 = v171;
  v103 = v169;
LABEL_32:
  sub_26D34856C(v101, v102, &qword_2804FB840);
  swift_storeEnumTagMultiPayload();
  v144 = sub_26D3484AC(&qword_2804FB870, &qword_2804FB830);
  v145 = sub_26D37E178();
  *&v175 = v103;
  *(&v175 + 1) = &type metadata for TFMenuStyle;
  v176 = v144;
  v177 = v145;
  swift_getOpaqueTypeConformance2();
  sub_26D37E1CC();
  sub_26D3A0718();
  return sub_26D3481A4(v101, &qword_2804FB840);
}

uint64_t sub_26D37AF68(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  swift_getKeyPath();
  v3 = *a2;
  v14 = *(a2 + 8);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v4 = swift_allocObject();
  v5 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = *(a2 + 48);

  v6 = v3;
  sub_26D34856C(&v14, v8, &qword_2804FB8D8);
  sub_26D34856C(&v12, v8, &qword_2804FB888);
  sub_26D34856C(&v10, v8, &qword_2804FB848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB8C0);
  sub_26D3484AC(&qword_2804FB8E8, &qword_2804FB8E0);
  sub_26D37E274();
  return sub_26D3A0E58();
}

uint64_t sub_26D37B128@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v76 = a2;
  v71 = type metadata accessor for TFToggle(0);
  v6 = MEMORY[0x28223BE20](v71, v5);
  v65 = (&v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v8);
  v66 = &v64 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB8F0);
  MEMORY[0x28223BE20](v72, v10);
  v75 = &v64 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB8C8);
  v68 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v12);
  v67 = &v64 - v13;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB8F8);
  v70 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v14);
  v69 = &v64 - v15;
  v16 = *v2;
  v86[0] = *(v2 + 8);
  v84 = *(v2 + 24);
  v85 = *(v2 + 32);
  v82 = *(v2 + 40);
  v83 = *(v2 + 48);
  sub_26D3A10C8();
  v17 = v16;
  v18 = a1;
  sub_26D34856C(v86, &v78, &qword_2804FB8D8);
  sub_26D34856C(&v84, &v78, &qword_2804FB888);
  sub_26D34856C(&v82, &v78, &qword_2804FB848);
  v19 = sub_26D3A10B8();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  v22 = *(v2 + 16);
  *(v20 + 32) = *v2;
  *(v20 + 48) = v22;
  *(v20 + 64) = *(v2 + 32);
  *(v20 + 80) = *(v2 + 48);
  *(v20 + 88) = v18;
  v23 = v17;
  v24 = v18;
  sub_26D34856C(v86, &v78, &qword_2804FB8D8);
  sub_26D34856C(&v84, &v78, &qword_2804FB888);
  sub_26D34856C(&v82, &v78, &qword_2804FB848);
  v25 = sub_26D3A10B8();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v21;
  v27 = *(v2 + 16);
  *(v26 + 32) = *v2;
  *(v26 + 48) = v27;
  *(v26 + 64) = *(v2 + 32);
  *(v26 + 80) = *(v2 + 48);
  *(v26 + 88) = v24;
  sub_26D3A0E28();
  v29 = v78;
  v28 = v79;
  v30 = v80;
  v31 = [v24 _subcomponents];
  if (v31)
  {
    v32 = v31;
    sub_26D345E5C(0, &qword_2804FB890);
    v33 = sub_26D3A1058();

    v65 = &v64;
    v36 = MEMORY[0x28223BE20](v34, v35);
    *(&v64 - 2) = v33;
    *(&v64 - 1) = v3;
    MEMORY[0x28223BE20](v36, v37);
    *(&v64 - 4) = v24;
    *(&v64 - 3) = v29;
    v64 = v29;
    *(&v64 - 2) = v28;
    *(&v64 - 8) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB900);
    v66 = sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle);
    sub_26D37E5C4();
    v38 = v67;
    sub_26D3A0958();

    v77 = 0;
    sub_26D3A0D48();
    v39 = v78;
    v40 = v79;
    LOBYTE(v78) = 0;
    LOBYTE(v79) = v39;
    v80 = v40;
    v41 = sub_26D3484AC(&qword_2804FB8D0, &qword_2804FB8C8);
    v42 = sub_26D37E178();
    v43 = v69;
    v44 = v73;
    sub_26D3A0C08();

    (*(v68 + 8))(v38, v44);
    v45 = v70;
    v46 = v74;
    (*(v70 + 16))(v75, v43, v74);
    swift_storeEnumTagMultiPayload();
    v78 = v44;
    v79 = &type metadata for TFMenuStyle;
    v80 = v41;
    v81 = v42;
    swift_getOpaqueTypeConformance2();
    sub_26D3A0718();

    return (*(v45 + 8))(v43, v46);
  }

  else
  {
    v48 = v71;
    v49 = [v24 systemImageName];
    if (v49)
    {
      v50 = v49;
      v70 = sub_26D3A0F98();
      v52 = v51;
    }

    else
    {
      v70 = 0;
      v52 = 0;
    }

    v53 = [v24 title];
    v54 = sub_26D3A0F98();
    v56 = v55;

    v57 = v65;
    sub_26D3A0638();
    *v57 = v70;
    v57[1] = v52;
    v58 = (v57 + v48[6]);
    *v58 = v54;
    v58[1] = v56;
    *(v57 + v48[7]) = 1;
    v59 = v57 + v48[8];
    *v59 = v29;
    *(v59 + 1) = v28;
    v59[16] = v30;
    v60 = v57 + v48[9];
    *v60 = swift_getKeyPath();
    v60[8] = 0;
    v61 = v66;
    sub_26D3814AC(v57, v66, type metadata accessor for TFToggle);
    sub_26D381440(v61, v75, type metadata accessor for TFToggle);
    swift_storeEnumTagMultiPayload();
    v62 = sub_26D3484AC(&qword_2804FB8D0, &qword_2804FB8C8);
    v63 = sub_26D37E178();
    v78 = v73;
    v79 = &type metadata for TFMenuStyle;
    v80 = v62;
    v81 = v63;
    swift_getOpaqueTypeConformance2();
    sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle);
    sub_26D3A0718();

    return sub_26D37EEEC(v61, type metadata accessor for TFToggle);
  }
}

uint64_t sub_26D37BA2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_26D37BAFC(a1, a2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB898);
  v4 = a2 + v3[9];
  sub_26D3A0D48();
  *v4 = v9;
  *(v4 + 1) = v10;
  v5 = a2 + v3[10];
  *v5 = swift_getKeyPath();
  v5[8] = 0;
  v6 = a2 + v3[11];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v7 = a2 + v3[12];
  result = swift_getKeyPath();
  *v7 = result;
  v7[8] = 0;
  return result;
}

uint64_t sub_26D37BAFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v30 - v6;
  v8 = *a1;
  v9 = [*a1 systemImageName];
  if (v9)
  {
    v10 = v9;
    v11 = sub_26D3A0F98();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = sub_26D33CED8(*(a1 + 24), *(a1 + 32) | (*(a1 + 33) << 8));
  if ((v15 & 1) != 0 || v14 > 2 || (v16 = [v8 systemImageName]) == 0)
  {
    v19 = [v8 title];
    v17 = sub_26D3A0F98();
    v18 = v20;
  }

  else
  {

    v17 = 0;
    v18 = 0;
  }

  if (*(a1 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v21 = sub_26D3A1298();
    if ((*(*(v21 - 8) + 48))(v7, 1, v21))
    {
      sub_26D3481A4(v7, &qword_2804FB398);
      v22 = 0;
    }

    else
    {
      v23 = sub_26D3A1248();
      sub_26D3481A4(v7, &qword_2804FB398);
      v24 = [v8 componentKey];
      v22 = sub_26D34862C(v24, v23);
    }

    v25 = type metadata accessor for TFLabel(0);
    sub_26D3A0638();
    *a2 = v11;
    a2[1] = v13;
    v26 = (a2 + v25[6]);
    *v26 = v17;
    v26[1] = v18;
    *(a2 + v25[7]) = v22 & 1;
    v27 = a2 + v25[8];
    *v27 = swift_getKeyPath();
    v27[8] = 0;
    v28 = a2 + v25[9];
    result = swift_getKeyPath();
    *v28 = result;
    v28[8] = 0;
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D37BE1C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v43 = a4;
  v41 = a2;
  v42 = a3;
  v45 = a5;
  v46 = sub_26D3A0848();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TFAnimatedText(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB928);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB930);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v40 - v21;
  v23 = [*a1 title];
  v24 = sub_26D3A0F98();
  v26 = v25;

  *v13 = v24;
  *(v13 + 1) = v26;
  v27 = v42;
  *(v13 + 2) = v41;
  *(v13 + 3) = v27;
  LOBYTE(v23) = v43;
  v13[32] = v43;
  v28 = v10[9];
  *&v13[v28] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB310);
  swift_storeEnumTagMultiPayload();
  v29 = v10[10];
  *&v13[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB318);
  swift_storeEnumTagMultiPayload();
  v30 = &v13[v10[11]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = &v13[v10[12]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = &v13[v10[13]];
  *v32 = swift_getKeyPath();
  v32[8] = 0;

  sub_26D3A0EA8();
  sub_26D3A0268();
  sub_26D3814AC(v13, v18, type metadata accessor for TFAnimatedText);
  v33 = &v18[*(v15 + 44)];
  v34 = v52;
  *(v33 + 4) = v51;
  *(v33 + 5) = v34;
  *(v33 + 6) = v53;
  v35 = v48;
  *v33 = v47;
  *(v33 + 1) = v35;
  v36 = v50;
  *(v33 + 2) = v49;
  *(v33 + 3) = v36;
  v37 = sub_26D3A0138();
  sub_26D347238(v18, v22, &qword_2804FB928);
  v38 = &v22[*(v19 + 36)];
  *v38 = 0;
  v38[1] = v23;
  *(v38 + 1) = 0;
  *(v38 + 1) = v37;
  sub_26D3A0838();
  sub_26D37E7F0();
  sub_26D3A0B48();
  (*(v44 + 8))(v8, v46);
  return sub_26D3481A4(v22, &qword_2804FB930);
}

uint64_t sub_26D37C218(uint64_t a1)
{
  v2 = sub_26D3A12F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
    v9 = *a1;

    *v6 = [v9 componentKey];
    (*(v3 + 104))(v6, *MEMORY[0x277D74F30], v2);
    v8(v6, 0);

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D37C3C0(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  swift_getKeyPath();
  v3 = *a2;
  v14 = *(a2 + 8);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v4 = swift_allocObject();
  v5 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = *(a2 + 48);

  v6 = v3;
  sub_26D34856C(&v14, v8, &qword_2804FB8D8);
  sub_26D34856C(&v12, v8, &qword_2804FB888);
  sub_26D34856C(&v10, v8, &qword_2804FB848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB8E0);
  sub_26D3484AC(&qword_2804FB8E8, &qword_2804FB8E0);
  return sub_26D3A0E58();
}

uint64_t sub_26D37C564@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB8C0);
  MEMORY[0x28223BE20](v4, v5);
  sub_26D37B128(*a1);
  sub_26D37E274();
  result = sub_26D3A0DE8();
  *a2 = result;
  return result;
}

uint64_t sub_26D37C618@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a5;
  v9 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [a1 systemImageName];
  if (v13)
  {
    v14 = v13;
    v15 = sub_26D3A0F98();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = [a1 title];
  v19 = sub_26D3A0F98();
  v21 = v20;

  sub_26D3A0638();
  *v12 = v15;
  v12[1] = v17;
  v22 = (v12 + v9[6]);
  *v22 = v19;
  v22[1] = v21;
  *(v12 + v9[7]) = 0;
  v23 = v12 + v9[8];
  *v23 = a2;
  *(v23 + 1) = a3;
  v23[16] = a4 & 1;
  v24 = v12 + v9[9];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  sub_26D3814AC(v12, v27, type metadata accessor for TFToggle);
}

uint64_t sub_26D37C7A8@<X0>(uint64_t a1@<X2>, void *a2@<X3>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v16 - v8;
  if (*(a1 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v10 = sub_26D3A1298();
    if ((*(*(v10 - 8) + 48))(v9, 1, v10))
    {
      result = sub_26D3481A4(v9, &qword_2804FB398);
      v12 = 0;
    }

    else
    {
      v13 = sub_26D3A1248();
      sub_26D3481A4(v9, &qword_2804FB398);
      v14 = [a2 componentKey];
      v15 = sub_26D34862C(v14, v13);

      v12 = v15 & 1;
    }

    *a3 = v12;
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D37C9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_26D3A12F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a4 + 8);
  if (v12)
  {
    v13 = *(v12 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);

    *v11 = [a5 componentKey];
    (*(v8 + 104))(v11, *MEMORY[0x277D74F30], v7);
    v13(v11, 0);

    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D37CB8C@<X0>(_BYTE *a1@<X8>)
{
  sub_26D37E450();
  result = sub_26D3A0518();
  *a1 = v3;
  return result;
}

uint64_t sub_26D37CC78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D3A0438();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26D37CCA8@<X0>(uint64_t a1@<X8>)
{
  result = sub_26D3A04D8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_26D37CD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

__n128 sub_26D37CDDC@<Q0>(__n128 *a1@<X8>)
{
  type metadata accessor for TextFormattingState();
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
  v2 = sub_26D3A02D8();
  v4 = v3;
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB7A8);
  sub_26D3A0D48();
  result = v10;
  a1->n128_u64[0] = v2;
  a1->n128_u64[1] = v4;
  a1[1].n128_u64[0] = KeyPath;
  a1[1].n128_u8[8] = 0;
  a1[1].n128_u8[9] = 0;
  a1[2].n128_u64[0] = v6;
  a1[2].n128_u8[8] = 0;
  a1[3].n128_u64[0] = v7;
  a1[3].n128_u8[8] = 0;
  a1[4].n128_u64[0] = v8;
  a1[4].n128_u8[8] = 0;
  a1[5] = v10;
  a1[6].n128_u64[0] = v11;
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26D37CF6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_26D37CFB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_26D37D030(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
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

uint64_t sub_26D37D08C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_26D37D144(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26D37D1A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26D37D228(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 34))
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

uint64_t sub_26D37D284(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26D37D2FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26D37D358(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26D37D3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB7B0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_26D37D4B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB7B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TFTextAlignmentControl()
{
  result = qword_2804FB7B8;
  if (!qword_2804FB7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26D37D5AC()
{
  sub_26D37D670();
  if (v0 <= 0x3F)
  {
    sub_26D37D704();
    if (v1 <= 0x3F)
    {
      sub_26D37D768();
      if (v2 <= 0x3F)
      {
        sub_26D37D7C0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26D37D670()
{
  if (!qword_2804FB7C8)
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    v0 = sub_26D3A02E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2804FB7C8);
    }
  }
}

void sub_26D37D704()
{
  if (!qword_2804FB7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB7D8);
    v0 = sub_26D3A0038();
    if (!v1)
    {
      atomic_store(v0, &qword_2804FB7D0);
    }
  }
}

void sub_26D37D768()
{
  if (!qword_2804FB7E0)
  {
    sub_26D3A0208();
    v0 = sub_26D3A0038();
    if (!v1)
    {
      atomic_store(v0, &qword_2804FB7E0);
    }
  }
}

void sub_26D37D7C0()
{
  if (!qword_2804FC410)
  {
    v0 = sub_26D3A0038();
    if (!v1)
    {
      atomic_store(v0, &qword_2804FC410);
    }
  }
}

uint64_t sub_26D37D810(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 81))
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

uint64_t sub_26D37D86C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26D37D8FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26D37D958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

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

uint64_t sub_26D37D9E4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26D37DA40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_26D37DAE0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26D37DB3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26D37DD34@<X0>(_BYTE *a1@<X8>)
{
  sub_26D37DED0();
  result = sub_26D3A0518();
  *a1 = v3;
  return result;
}

unint64_t sub_26D37DDD0(void *a1)
{
  v2 = [a1 _textAnimationName];
  if (v2)
  {
    v3 = v2;
    v4 = sub_26D3A0F98();
    v6 = v5;

    v10 = 0x6566666574786574;
  }

  else
  {
    sub_26D3A13C8();

    v10 = 0xD000000000000010;
    v7 = [a1 componentKey];
    v4 = sub_26D3A0F98();
    v6 = v8;
  }

  MEMORY[0x26D6BD800](v4, v6);

  return v10;
}

unint64_t sub_26D37DED0()
{
  result = qword_2804FB800;
  if (!qword_2804FB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB800);
  }

  return result;
}

uint64_t sub_26D37DF24(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_26D37DF5C()
{
  result = qword_2804FB850;
  if (!qword_2804FB850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB818);
    sub_26D3484AC(&qword_2804FB858, &qword_2804FB810);
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB850);
  }

  return result;
}

uint64_t sub_26D37E044(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26D37E08C()
{
  result = qword_2804FB860;
  if (!qword_2804FB860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB820);
    sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle);
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB860);
  }

  return result;
}

unint64_t sub_26D37E178()
{
  result = qword_2804FB878;
  if (!qword_2804FB878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB878);
  }

  return result;
}

unint64_t sub_26D37E1CC()
{
  result = qword_2804FB880;
  if (!qword_2804FB880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB840);
    sub_26D37DF5C();
    sub_26D37E08C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB880);
  }

  return result;
}

unint64_t sub_26D37E274()
{
  result = qword_2804FB8B8;
  if (!qword_2804FB8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB8C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB8C8);
    sub_26D3484AC(&qword_2804FB8D0, &qword_2804FB8C8);
    sub_26D37E178();
    swift_getOpaqueTypeConformance2();
    sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB8B8);
  }

  return result;
}

uint64_t sub_26D37E3B4@<X0>(_BYTE *a1@<X8>)
{
  sub_26D37E450();
  result = sub_26D3A0518();
  *a1 = v3;
  return result;
}

unint64_t sub_26D37E450()
{
  result = qword_2804FC3D0;
  if (!qword_2804FC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC3D0);
  }

  return result;
}

id sub_26D37E4B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 componentKey];
  *a2 = result;
  return result;
}

uint64_t sub_26D37E4EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D3A0F98();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  sub_26D3484F4(*(v0 + 56), *(v0 + 64), *(v0 + 65));
  sub_26D34684C(*(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

unint64_t sub_26D37E5C4()
{
  result = qword_2804FB908;
  if (!qword_2804FB908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB908);
  }

  return result;
}

uint64_t objectdestroy_105Tm()
{

  sub_26D3484F4(*(v0 + 40), *(v0 + 48), *(v0 + 49));
  sub_26D34684C(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

unint64_t sub_26D37E6A4()
{
  result = qword_2804FB910;
  if (!qword_2804FB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB910);
  }

  return result;
}

uint64_t sub_26D37E7C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D3A0438();
  *a1 = result & 1;
  return result;
}

unint64_t sub_26D37E7F0()
{
  result = qword_2804FB938;
  if (!qword_2804FB938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB930);
    sub_26D37E87C();
    sub_26D37E938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB938);
  }

  return result;
}

unint64_t sub_26D37E87C()
{
  result = qword_2804FB940;
  if (!qword_2804FB940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB928);
    sub_26D37E044(&qword_2804FB948, type metadata accessor for TFAnimatedText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB940);
  }

  return result;
}

unint64_t sub_26D37E938()
{
  result = qword_2804FC790;
  if (!qword_2804FC790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC790);
  }

  return result;
}

unint64_t sub_26D37E98C()
{
  result = qword_2804FB9A0;
  if (!qword_2804FB9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB988);
    sub_26D37EA48();
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB9A0);
  }

  return result;
}

unint64_t sub_26D37EA48()
{
  result = qword_2804FB9A8;
  if (!qword_2804FB9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB9B0);
    sub_26D37EAD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB9A8);
  }

  return result;
}

unint64_t sub_26D37EAD4()
{
  result = qword_2804FB9B8;
  if (!qword_2804FB9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB9C0);
    sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle);
    sub_26D3484AC(&qword_2804FB2F0, &qword_2804FB2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB9B8);
  }

  return result;
}

unint64_t sub_26D37EBCC()
{
  result = qword_2804FB9E0;
  if (!qword_2804FB9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB9D0);
    sub_26D37EC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB9E0);
  }

  return result;
}

unint64_t sub_26D37EC50()
{
  result = qword_2804FB9E8;
  if (!qword_2804FB9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB9F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB9F8);
    sub_26D3A0288();
    sub_26D3484AC(&qword_2804FBA00, &qword_2804FB9F8);
    sub_26D37E044(&qword_2804FBA08, MEMORY[0x277CDDBD0]);
    swift_getOpaqueTypeConformance2();
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB9E8);
  }

  return result;
}

uint64_t sub_26D37EDCC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_26D37EDDC()
{
  result = qword_2804FBA18;
  if (!qword_2804FBA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB970);
    sub_26D3484AC(&qword_2804FBA10, &qword_2804FB968);
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBA18);
  }

  return result;
}

uint64_t sub_26D37EEEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_26D37EFB0(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t objectdestroy_165Tm()
{
  swift_unknownObjectRelease();

  sub_26D3484F4(*(v0 + 56), *(v0 + 64), *(v0 + 65));
  sub_26D34684C(*(v0 + 72), *(v0 + 80));
  sub_26D34684C(*(v0 + 88), *(v0 + 96));
  sub_26D34684C(*(v0 + 104), *(v0 + 112));

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

unint64_t sub_26D37F0D4()
{
  result = qword_2804FBA90;
  if (!qword_2804FBA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBA90);
  }

  return result;
}

unint64_t sub_26D37F20C()
{
  result = qword_2804FBB18;
  if (!qword_2804FBB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBAA8);
    sub_26D3484AC(&qword_2804FBB20, &qword_2804FBB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBB18);
  }

  return result;
}

unint64_t sub_26D37F2D4()
{
  result = qword_2804FBB30;
  if (!qword_2804FBB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBAB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBAA8);
    sub_26D37F20C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBB30);
  }

  return result;
}

unint64_t sub_26D37F3B0()
{
  result = qword_2804FBB40;
  if (!qword_2804FBB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBAF0);
    sub_26D37F43C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBB40);
  }

  return result;
}

unint64_t sub_26D37F43C()
{
  result = qword_2804FBB48;
  if (!qword_2804FBB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBAE8);
    sub_26D3484AC(&qword_2804FBB50, &qword_2804FBAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBB48);
  }

  return result;
}

unint64_t sub_26D37F4F4()
{
  result = qword_2804FBB58;
  if (!qword_2804FBB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBAD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBAC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBAB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBAB0);
    sub_26D37F2D4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26D3484AC(&qword_2804FBB38, &qword_2804FBA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBB58);
  }

  return result;
}

uint64_t sub_26D37F664(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_26D3484AC(&qword_2804FBB90, &qword_2804FBB98);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26D37F704@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D3A12C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26D37F73C@<X0>(_BYTE *a1@<X8>)
{
  sub_26D3A12D8();

  return sub_26D35B78C((v1 + 32), a1);
}

uint64_t objectdestroy_215Tm()
{
  v1 = sub_26D3A12D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 136) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  sub_26D3484F4(*(v0 + 48), *(v0 + 56), *(v0 + 57));
  sub_26D34684C(*(v0 + 64), *(v0 + 72));
  sub_26D34684C(*(v0 + 80), *(v0 + 88));
  sub_26D34684C(*(v0 + 96), *(v0 + 104));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26D37F8C4(_BYTE *a1)
{
  sub_26D3A12D8();
  v3 = v1[2];
  v4 = v1[3];

  return sub_26D35B9AC(a1, v3, v4, v1 + 4);
}

uint64_t objectdestroy_188Tm(uint64_t a1)
{

  sub_26D3484F4(*(v1 + 32), *(v1 + 40), *(v1 + 41));
  sub_26D34684C(*(v1 + 48), *(v1 + 56));
  sub_26D34684C(*(v1 + 64), *(v1 + 72));
  sub_26D34684C(*(v1 + 80), *(v1 + 88));

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_26D37F9E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D37FA18(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC08);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_26D37FA80()
{
  result = qword_2804FBBD0;
  if (!qword_2804FBBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBBC0);
    sub_26D3484AC(&qword_2804FBBB0, &qword_2804FB630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBBD0);
  }

  return result;
}

unint64_t sub_26D37FB30()
{
  result = qword_2804FBBD8;
  if (!qword_2804FBBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBBC8);
    sub_26D37FBEC();
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBBD8);
  }

  return result;
}

unint64_t sub_26D37FBEC()
{
  result = qword_2804FBBE0;
  if (!qword_2804FBBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBBE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBBF0);
    sub_26D3484AC(&qword_2804FBBF8, &qword_2804FBBF0);
    sub_26D37FCFC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBBE0);
  }

  return result;
}

unint64_t sub_26D37FCFC()
{
  result = qword_2804FBC00;
  if (!qword_2804FBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBC00);
  }

  return result;
}

uint64_t sub_26D37FD50()
{
  v1 = sub_26D3A12D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v5 = *(v2 + 64);

  sub_26D3484F4(*(v0 + 32), *(v0 + 40), *(v0 + 41));
  sub_26D34684C(*(v0 + 48), *(v0 + 56));
  sub_26D34684C(*(v0 + 64), *(v0 + 72));
  sub_26D34684C(*(v0 + 80), *(v0 + 88));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26D37FE58()
{
  v1 = *(sub_26D3A12D8() - 8);
  v2 = v0 + ((*(v1 + 80) + 120) & ~*(v1 + 80));

  return sub_26D35CAD4((v0 + 16), v2);
}

unint64_t sub_26D37FEC4()
{
  result = qword_2804FBC20;
  if (!qword_2804FBC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBC18);
    sub_26D37FF80();
    sub_26D37E044(&qword_2804FBC28, type metadata accessor for TFFontModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBC20);
  }

  return result;
}

unint64_t sub_26D37FF80()
{
  result = qword_2804FCAC0;
  if (!qword_2804FCAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FCAC0);
  }

  return result;
}

uint64_t objectdestroy_246Tm()
{
  swift_unknownObjectRelease();

  sub_26D3484F4(*(v0 + 48), *(v0 + 56), *(v0 + 57));
  sub_26D34684C(*(v0 + 64), *(v0 + 72));
  sub_26D34684C(*(v0 + 80), *(v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

unint64_t sub_26D3801C8()
{
  result = qword_2804FBCF0;
  if (!qword_2804FBCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBCC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBCC8);
    sub_26D3484AC(&qword_2804FBCF8, &qword_2804FBCC8);
    sub_26D37E178();
    swift_getOpaqueTypeConformance2();
    sub_26D3484AC(&qword_2804FBD00, &qword_2804FBCA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBCF0);
  }

  return result;
}

unint64_t sub_26D380304()
{
  result = qword_2804FBD08;
  if (!qword_2804FBD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBC98);
    sub_26D3484AC(&qword_2804FBCE0, &qword_2804FBCA0);
    sub_26D3484AC(&qword_2804FBCE8, &qword_2804FBC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBD08);
  }

  return result;
}

unint64_t sub_26D3803EC()
{
  result = qword_2804FBD28;
  if (!qword_2804FBD28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBD20);
    sub_26D380470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBD28);
  }

  return result;
}

unint64_t sub_26D380470()
{
  result = qword_2804FBD30;
  if (!qword_2804FBD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBD38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBD40);
    sub_26D3484AC(&qword_2804FBD48, &qword_2804FBD40);
    sub_26D37E178();
    swift_getOpaqueTypeConformance2();
    sub_26D3484AC(&qword_2804FBD50, &qword_2804FBD58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBD30);
  }

  return result;
}

uint64_t sub_26D3805BC@<X0>(uint64_t a1@<X8>)
{
  result = sub_26D3A04D8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_26D380620@<X0>(void *a1@<X8>)
{
  result = sub_26D3A03B8();
  *a1 = v3;
  return result;
}

uint64_t sub_26D380674(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_26D3806E8(a1, a2, a3 & 1);
  }

  else
  {
    sub_26D3806E8(a1, a2, a3 & 1);
  }
}

uint64_t sub_26D3806E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_26D3806F8()
{
  result = qword_2804FBDC0;
  if (!qword_2804FBDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBDB8);
    sub_26D380784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBDC0);
  }

  return result;
}

unint64_t sub_26D380784()
{
  result = qword_2804FBDC8;
  if (!qword_2804FBDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBDD0);
    sub_26D380808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBDC8);
  }

  return result;
}

unint64_t sub_26D380808()
{
  result = qword_2804FBDD8;
  if (!qword_2804FBDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBDE0);
    sub_26D380894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBDD8);
  }

  return result;
}

unint64_t sub_26D380894()
{
  result = qword_2804FBDE8;
  if (!qword_2804FBDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBDE8);
  }

  return result;
}

uint64_t sub_26D380918(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_26D37EDCC(a1, a2, a3 & 1);
  }

  else
  {
    sub_26D37EDCC(a1, a2, a3 & 1);
  }
}

id sub_26D380984@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fontDescriptor];
  *a2 = result;
  return result;
}

unint64_t sub_26D3809CC()
{
  result = qword_2804FBE10;
  if (!qword_2804FBE10)
  {
    sub_26D345E5C(255, &qword_2804FBE18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBE10);
  }

  return result;
}

uint64_t objectdestroy_339Tm()
{
  swift_unknownObjectRelease();

  sub_26D3484F4(*(v0 + 48), *(v0 + 56), *(v0 + 57));
  sub_26D34684C(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_324Tm()
{

  sub_26D3484F4(*(v0 + 32), *(v0 + 40), *(v0 + 41));
  sub_26D34684C(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

unint64_t sub_26D380B70()
{
  result = qword_2804FBE90;
  if (!qword_2804FBE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBE80);
    sub_26D380C2C();
    sub_26D37E044(&qword_2804FC7D0, type metadata accessor for TFSymbol);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBE90);
  }

  return result;
}

unint64_t sub_26D380C2C()
{
  result = qword_2804FBE98;
  if (!qword_2804FBE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBEA0);
    sub_26D380CB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBE98);
  }

  return result;
}

unint64_t sub_26D380CB8()
{
  result = qword_2804FBEA8;
  if (!qword_2804FBEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBEB0);
    sub_26D380D70();
    sub_26D3484AC(&unk_2804FC950, &qword_2804FB0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBEA8);
  }

  return result;
}

unint64_t sub_26D380D70()
{
  result = qword_2804FBEB8;
  if (!qword_2804FBEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBEC0);
    sub_26D380E28();
    sub_26D3484AC(&qword_2804FB0B8, &unk_2804FB0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBEB8);
  }

  return result;
}

unint64_t sub_26D380E28()
{
  result = qword_2804FBEC8;
  if (!qword_2804FBEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBED0);
    sub_26D37FF80();
    sub_26D3484AC(&qword_2804FBED8, &qword_2804FCBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBEC8);
  }

  return result;
}

uint64_t sub_26D380EE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D3A0398();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26D380F94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D3A0CA8();
  *a1 = result;
  return result;
}

uint64_t sub_26D380FF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D3A0CA8();
  *a1 = result;
  return result;
}

unint64_t sub_26D38103C()
{
  result = qword_2804FBF38;
  if (!qword_2804FBF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBF28);
    sub_26D380C2C();
    sub_26D3484AC(&qword_2804FC990, &qword_2804FBF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBF38);
  }

  return result;
}

uint64_t objectdestroy_177Tm(void (*a1)(void, void), void (*a2)(void, void))
{
  swift_unknownObjectRelease();

  sub_26D3484F4(*(v2 + 56), *(v2 + 64), *(v2 + 65));
  sub_26D34684C(*(v2 + 72), *(v2 + 80));
  a1(*(v2 + 88), *(v2 + 96));
  a2(*(v2 + 104), *(v2 + 112));

  return MEMORY[0x2821FE8E8](v2, 128, 7);
}

uint64_t objectdestroy_162Tm(void (*a1)(void, void), void (*a2)(void, void), uint64_t a3)
{

  sub_26D3484F4(*(v3 + 40), *(v3 + 48), *(v3 + 49));
  sub_26D34684C(*(v3 + 56), *(v3 + 64));
  a1(*(v3 + 72), *(v3 + 80));
  a2(*(v3 + 88), *(v3 + 96));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

unint64_t sub_26D38126C()
{
  result = qword_2804FBFE8;
  if (!qword_2804FBFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBC80);
    sub_26D37EAD4();
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBFE8);
  }

  return result;
}

unint64_t sub_26D381328()
{
  result = qword_2804FBFF8;
  if (!qword_2804FBFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBFD8);
    sub_26D3484AC(&qword_2804FC000, &qword_2804FBFD0);
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FBFF8);
  }

  return result;
}

uint64_t sub_26D381440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26D3814AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26D381514@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for TFTextAlignmentControl() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_26D36DDCC(v4, a1);
}

uint64_t objectdestroy_390Tm()
{
  v1 = type metadata accessor for TFTextAlignmentControl();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_26D3484F4(*(v5 + 24), *(v5 + 32), *(v5 + 33));
  v6 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB2D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_26D3A0208();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_26D34684C(*(v5 + *(v1 + 32)), *(v5 + *(v1 + 32) + 8));

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_26D38171C(uint64_t a1)
{
  v3 = *(type metadata accessor for TFTextAlignmentControl() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_26D36DEAC(a1, v4, v5, v6);
}

uint64_t sub_26D381848()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D3818F4()
{

  sub_26D3484F4(*(v0 + 32), *(v0 + 40), *(v0 + 41));

  return MEMORY[0x2821FE8E8](v0, 42, 7);
}

unint64_t sub_26D3819C0()
{
  result = qword_2804FC0B0;
  if (!qword_2804FC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC0B0);
  }

  return result;
}

unint64_t sub_26D381A14()
{
  result = qword_2804FC0C0;
  if (!qword_2804FC0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC0B8);
    sub_26D3484AC(&qword_2804FC0C8, &qword_2804FC0D0);
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC0C0);
  }

  return result;
}

uint64_t sub_26D381AFC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

uint64_t objectdestroy_438Tm()
{

  sub_26D3484F4(*(v0 + 40), *(v0 + 48), *(v0 + 49));

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t objectdestroy_447Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_26D3484F4(*(v1 + 56), *(v1 + 64), *(v1 + 65));

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_26D381CA8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_26D381CBC()
{
  result = qword_2804FC180;
  if (!qword_2804FC180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC150);
    sub_26D3A0758();
    sub_26D3484AC(&qword_2804FC188, &qword_2804FC150);
    sub_26D37E044(&qword_2804FC190, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC180);
  }

  return result;
}

unint64_t sub_26D381E38()
{
  result = qword_2804FC198;
  if (!qword_2804FC198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC140);
    sub_26D381EF0();
    sub_26D3484AC(&qword_2804FC7A0, &qword_2804FC1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC198);
  }

  return result;
}

unint64_t sub_26D381EF0()
{
  result = qword_2804FC1A0;
  if (!qword_2804FC1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC178);
    sub_26D381FAC();
    sub_26D37E044(&qword_2804FC1B8, type metadata accessor for TFFrameTracker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC1A0);
  }

  return result;
}

unint64_t sub_26D381FAC()
{
  result = qword_2804FC1A8;
  if (!qword_2804FC1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1B0);
    sub_26D3484AC(&qword_2804FC170, &qword_2804FC138);
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC1A8);
  }

  return result;
}

unint64_t sub_26D3820B8()
{
  result = qword_2804FC1D0;
  if (!qword_2804FC1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1C8);
    sub_26D382144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC1D0);
  }

  return result;
}

unint64_t sub_26D382144()
{
  result = qword_2804FC1D8;
  if (!qword_2804FC1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1E8);
    sub_26D382238();
    swift_getOpaqueTypeConformance2();
    sub_26D3484AC(&qword_2804FB2F0, &qword_2804FB2F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC1D8);
  }

  return result;
}

unint64_t sub_26D382238()
{
  result = qword_2804FC1F0;
  if (!qword_2804FC1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1E8);
    sub_26D3822C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC1F0);
  }

  return result;
}

unint64_t sub_26D3822C4()
{
  result = qword_2804FC1F8;
  if (!qword_2804FC1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC200);
    sub_26D382350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC1F8);
  }

  return result;
}

unint64_t sub_26D382350()
{
  result = qword_2804FC208;
  if (!qword_2804FC208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC210);
    sub_26D382408();
    sub_26D3484AC(&qword_2804FC7A0, &qword_2804FC1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC208);
  }

  return result;
}

unint64_t sub_26D382408()
{
  result = qword_2804FC218;
  if (!qword_2804FC218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC220);
    sub_26D3824E4(&qword_2804FC228, &qword_2804FC230);
    sub_26D37E044(&qword_2804FC1B8, type metadata accessor for TFFrameTracker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC218);
  }

  return result;
}

uint64_t sub_26D3824E4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_26D3484AC(&qword_2804FC238, &qword_2804FC240);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26D382588@<X0>(uint64_t *a1@<X8>)
{
  sub_26D34CB9C();
  result = sub_26D3A0C18();
  *a1 = result;
  return result;
}

uint64_t sub_26D3825B8()
{

  sub_26D358CD4();
}

uint64_t objectdestroy_468Tm()
{

  sub_26D3484F4(*(v0 + 32), *(v0 + 40), *(v0 + 41));
  sub_26D34684C(*(v0 + 48), *(v0 + 56));
  sub_26D34684C(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_420Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_26D3484F4(*(v1 + 48), *(v1 + 56), *(v1 + 57));

  return MEMORY[0x2821FE8E8](v1, a1, 7);
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

uint64_t sub_26D382804(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_26D382860(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_26D3828DC()
{
  result = qword_2804FC298;
  if (!qword_2804FC298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FB7F8);
    sub_26D382994();
    sub_26D3484AC(&unk_2804FC950, &qword_2804FB0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC298);
  }

  return result;
}

unint64_t sub_26D382994()
{
  result = qword_2804FC2A0;
  if (!qword_2804FC2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC2A8);
    sub_26D3484AC(&qword_2804FB7F0, &qword_2804FB7E8);
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC2A0);
  }

  return result;
}

unint64_t sub_26D382AC4()
{
  result = qword_2804FC2B8;
  if (!qword_2804FC2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC2C0);
    sub_26D37F3B0();
    sub_26D37F4F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC2B8);
  }

  return result;
}

unint64_t sub_26D382B54()
{
  result = qword_2804FC2C8;
  if (!qword_2804FC2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC2D0);
    sub_26D3484AC(&qword_2804FBC50, &qword_2804FBC48);
    sub_26D3484AC(&qword_2804FBC58, &qword_2804FBC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC2C8);
  }

  return result;
}

unint64_t sub_26D382C3C()
{
  result = qword_2804FC2D8;
  if (!qword_2804FC2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC2E0);
    sub_26D3803EC();
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC2D8);
  }

  return result;
}

unint64_t sub_26D382CFC()
{
  result = qword_2804FC2E8;
  if (!qword_2804FC2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC2F0);
    sub_26D3484AC(&qword_2804FBE70, &qword_2804FBE68);
    sub_26D3484AC(&qword_2804FBE78, &qword_2804FBE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC2E8);
  }

  return result;
}

unint64_t sub_26D382E68()
{
  result = qword_2804FC308;
  if (!qword_2804FC308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC310);
    sub_26D3484AC(&qword_2804FC080, &qword_2804FC070);
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC308);
  }

  return result;
}

unint64_t sub_26D382F98()
{
  result = qword_2804FC320;
  if (!qword_2804FC320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC118);
    sub_26D3484AC(&qword_2804FC328, &qword_2804FC110);
    sub_26D3484AC(&qword_2804FC330, &qword_2804FC120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC320);
  }

  return result;
}

unint64_t sub_26D383080()
{
  result = qword_2804FC338;
  if (!qword_2804FC338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC288);
    sub_26D3484AC(&qword_2804FC290, &qword_2804FC280);
    sub_26D37E044(&qword_2804FC8E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC338);
  }

  return result;
}

uint64_t objectdestroy_536Tm()
{

  sub_26D34684C(*(v0 + 56), *(v0 + 64));
  sub_26D34684C(*(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

unint64_t sub_26D38327C()
{
  result = qword_2804FC3B0;
  if (!qword_2804FC3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC350);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC340);
    sub_26D3484AC(&qword_2804FC358, &qword_2804FC340);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FC3B0);
  }

  return result;
}

uint64_t sub_26D3834D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26D3A0708();
  MEMORY[0x28223BE20](v4, v5);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_26D3A0718();
}

uint64_t sub_26D3835CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26D3A0708();
  MEMORY[0x28223BE20](v5, v6);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_26D3A0718();
}

uint64_t sub_26D3836C4(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
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

  return sub_26D3A0EF8();
}

uint64_t sub_26D3838C8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v172 = a2;
  v171 = sub_26D3A0028();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171, v3);
  v169 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC6F0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v166 = &v120 - v7;
  v175 = sub_26D3A0078();
  v168 = *(v175 - 8);
  v9 = MEMORY[0x28223BE20](v175, v8);
  v167 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = a1;
  v11 = *(a1 - 8);
  a1 -= 8;
  v165 = v11;
  MEMORY[0x28223BE20](v9, v12);
  v163 = v13;
  v164 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC6F8);
  v174 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v160 = &v120 - v16;
  v17 = *(a1 + 24);
  v173 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC700);
  sub_26D3A0248();
  v162 = v17;
  sub_26D3A0728();
  sub_26D3A0248();
  v18 = sub_26D3A0248();
  v19 = *(a1 + 32);
  v157 = sub_26D3484AC(&qword_2804FC708, &qword_2804FC700);
  v201 = v19;
  v202 = v157;
  WitnessTable = swift_getWitnessTable();
  v200 = v19;
  v161 = v19;
  v149 = MEMORY[0x277CE0340];
  v20 = swift_getWitnessTable();
  v21 = sub_26D393574();
  v197 = v20;
  v198 = v21;
  v195 = swift_getWitnessTable();
  v196 = MEMORY[0x277CDF678];
  v22 = swift_getWitnessTable();
  v158 = v18;
  v151 = v22;
  v23 = sub_26D3A0DB8();
  v153 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v24);
  v141 = &v120 - v25;
  v26 = sub_26D3A0248();
  v155 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v27);
  v145 = &v120 - v28;
  v154 = v23;
  v127 = swift_getWitnessTable();
  v193 = v127;
  v194 = MEMORY[0x277CDFC60];
  v29 = swift_getWitnessTable();
  v30 = sub_26D3484AC(&qword_2804FC718, &qword_2804FC6F8);
  v189 = v26;
  v190 = v14;
  v191 = v29;
  v192 = v30;
  v144 = MEMORY[0x277CE0D08];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v150 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2, v32);
  v146 = &v120 - v33;
  v34 = sub_26D3A0248();
  v152 = OpaqueTypeMetadata2;
  v35 = sub_26D3A0728();
  v143 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v36);
  v134 = &v120 - v37;
  v38 = sub_26D3A0248();
  v137 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v39);
  v131 = &v120 - v40;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC720);
  v41 = sub_26D3A0248();
  v148 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v42);
  v139 = &v120 - v43;
  v44 = sub_26D3A0248();
  v156 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v45);
  v173 = &v120 - v46;
  v135 = v26;
  v189 = v26;
  v190 = v174;
  v147 = v29;
  v191 = v29;
  v192 = v30;
  v138 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v187 = OpaqueTypeConformance2;
  v188 = v157;
  v136 = v34;
  v120 = swift_getWitnessTable();
  v185 = v120;
  v186 = OpaqueTypeConformance2;
  v123 = OpaqueTypeConformance2;
  v144 = v35;
  v121 = swift_getWitnessTable();
  v183 = v121;
  v184 = MEMORY[0x277CDFC48];
  v140 = v38;
  v48 = swift_getWitnessTable();
  v49 = sub_26D3484AC(&qword_2804FC728, &qword_2804FC720);
  v122 = v48;
  v181 = v48;
  v182 = v49;
  v149 = v41;
  v50 = swift_getWitnessTable();
  v51 = sub_26D3935C8();
  v124 = v50;
  v179 = v50;
  v180 = v51;
  v52 = swift_getWitnessTable();
  v53 = sub_26D39361C(&qword_2804FC738, MEMORY[0x277CDD750]);
  v157 = v44;
  v189 = v44;
  v190 = v175;
  v130 = v52;
  v191 = v52;
  v192 = v53;
  v126 = v53;
  v54 = swift_getOpaqueTypeMetadata2();
  v129 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v55);
  v57 = &v120 - v56;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC740);
  v133 = v54;
  v58 = sub_26D3A0248();
  v59 = v159;
  v125 = v58;
  v142 = *(v58 - 8);
  v61 = MEMORY[0x28223BE20](v58, v60);
  v128 = &v120 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v61, v63);
  v132 = &v120 - v65;
  MEMORY[0x28223BE20](v64, v66);
  v67 = v162;
  v68 = v161;
  v116 = v162;
  v117 = v161;
  v118 = v59;
  sub_26D3A0548();
  v69 = v141;
  sub_26D3A0DA8();
  v70 = v176;
  sub_26D33D278(*(v59 + *(v176 + 56)), *(v59 + *(v176 + 56) + 8));
  v71 = sub_26D3A0EA8();
  v119 = v127;
  v72 = v154;
  v117 = v73;
  v118 = v154;
  v116 = v71;
  v115 = 1;
  v114 = 0;
  v74 = v145;
  sub_26D3A0B88();
  (*(v153 + 8))(v69, v72);
  v75 = sub_26D33CD0C(*(v59 + *(v70 + 60)), *(v59 + *(v70 + 60) + 8));
  v76 = v160;
  sub_26D39D694(v75, v160);
  v77 = v146;
  v78 = v135;
  sub_26D3A0AC8();
  sub_26D3481A4(v76, &qword_2804FC6F8);
  (*(v155 + 8))(v74, v78);
  v80 = MEMORY[0x28223BE20](*(v59 + 10), v79);
  v116 = v67;
  v117 = v68;
  v118 = v59;
  v81 = v134;
  v82 = v152;
  sub_26D385150(v80, sub_26D393670, &v114, v152, v136, v123, v120, v134);
  (*(v150 + 8))(v77, v82);
  v83 = v131;
  v84 = v144;
  sub_26D3A0BF8();
  (*(v143 + 8))(v81, v84);
  sub_26D385848(v70);
  v85 = v139;
  v86 = v140;
  sub_26D3A0B98();
  (*(v137 + 8))(v83, v86);
  v87 = v165;
  v88 = v164;
  (*(v165 + 16))(v164, v59, v70);
  v89 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v90 = swift_allocObject();
  *(v90 + 16) = v67;
  *(v90 + 24) = v68;
  (*(v87 + 32))(v90 + v89, v88, v70);
  v91 = v149;
  sub_26D3A0BA8();

  (*(v148 + 8))(v85, v91);
  v92 = v166;
  sub_26D34856C(v59 + *(v70 + 48), v166, &qword_2804FC6F0);
  v93 = v168;
  v94 = *(v168 + 48);
  v95 = v175;
  if (v94(v92, 1, v175) == 1)
  {
    v96 = v167;
    sub_26D3A0058();
    if (v94(v92, 1, v95) != 1)
    {
      sub_26D3481A4(v92, &qword_2804FC6F0);
    }
  }

  else
  {
    v96 = v167;
    (*(v93 + 32))(v167, v92, v95);
  }

  sub_26D385948(v176);
  v97 = v157;
  v98 = v130;
  v99 = v126;
  v100 = v173;
  sub_26D3A0A38();
  (*(v93 + 8))(v96, v95);
  (*(v156 + 8))(v100, v97);
  v101 = v170;
  v102 = v169;
  v103 = v171;
  (*(v170 + 104))(v169, *MEMORY[0x277CDF440], v171);
  v189 = v97;
  v190 = v95;
  v191 = v98;
  v192 = v99;
  v104 = swift_getOpaqueTypeConformance2();
  v105 = v128;
  v106 = v133;
  sub_26D3A0A18();
  (*(v101 + 8))(v102, v103);
  (*(v129 + 8))(v57, v106);
  v107 = sub_26D3484AC(&qword_2804FC748, &qword_2804FC740);
  v177 = v104;
  v178 = v107;
  v108 = v125;
  swift_getWitnessTable();
  v109 = v142;
  v110 = *(v142 + 16);
  v111 = v132;
  v110(v132, v105, v108);
  v112 = *(v109 + 8);
  v112(v105, v108);
  v110(v172, v111, v108);
  return (v112)(v111, v108);
}

uint64_t sub_26D384B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v46 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC700);
  v7 = sub_26D3A0248();
  v8 = sub_26D3A0728();
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v37 - v10;
  v12 = sub_26D3A0248();
  v44 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v12);
  v39 = &v37 - v13;
  v42 = v14;
  v15 = sub_26D3A0248();
  v45 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v41 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v43 = &v37 - v20;
  v38 = type metadata accessor for TFComponent();
  v21 = *(a1 + 10);
  v48 = a2;
  v49 = a3;
  v50 = a1;
  v22 = sub_26D3484AC(&qword_2804FC708, &qword_2804FC700);
  v57 = a3;
  v58 = v22;
  WitnessTable = swift_getWitnessTable();
  v24 = v21;
  v25 = v39;
  sub_26D385150(v24, sub_26D393964, v47, a2, v7, a3, WitnessTable, v11);
  v55 = WitnessTable;
  v56 = a3;
  v26 = swift_getWitnessTable();
  sub_26D3854E0(v8, v26);
  (*(v40 + 8))(v11, v8);
  if (*(a1 + 8))
  {
    v27 = sub_26D33CD0C(*(a1 + *(v38 + 60)), *(a1 + *(v38 + 60) + 8));
    sub_26D39D4C4(v27);
  }

  sub_26D3A0EA8();
  v28 = sub_26D393574();
  v53 = v26;
  v54 = v28;
  v29 = v42;
  v30 = swift_getWitnessTable();
  v31 = v41;
  sub_26D3A0B78();
  (*(v44 + 8))(v25, v29);
  v51 = v30;
  v52 = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  v32 = v45;
  v33 = *(v45 + 16);
  v34 = v43;
  v33(v43, v31, v15);
  v35 = *(v32 + 8);
  v35(v31, v15);
  v33(v46, v34, v15);
  return (v35)(v34, v15);
}

uint64_t sub_26D385018(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 11);
  v3 = type metadata accessor for TFComponent();
  sub_26D3850BC(v2, v3);
  sub_26D3938BC();
  sub_26D3A0BE8();
}

uint64_t sub_26D3850BC(char a1, uint64_t a2)
{
  if (a1)
  {
    v4 = sub_26D33CD0C(*(v2 + *(a2 + 60)), *(v2 + *(a2 + 60) + 8));
    v5 = sub_26D33D0B8(*(v2 + *(a2 + 64)), *(v2 + *(a2 + 64) + 8));
    sub_26D39CDDC(v5 & 1, v4);
  }

  sub_26D393910();
  return sub_26D3A0E78();
}

uint64_t sub_26D385150@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v44 = a7;
  v45 = a6;
  v38 = a3;
  v39 = a2;
  v41 = a1;
  v40 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](a1, a2);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v38 - v16;
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v15, v20);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v38 - v25;
  v43 = sub_26D3A0728();
  v27 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v28);
  v30 = &v38 - v29;
  if (v41)
  {
    v39(v42);
    v31 = *(v19 + 16);
    v31(v26, v23, a5);
    v42 = a8;
    v32 = *(v19 + 8);
    v32(v23, a5);
    v31(v23, v26, a5);
    sub_26D3834D4(v23, a5);
    v32(v23, a5);
    v32(v26, a5);
    a8 = v42;
  }

  else
  {
    v33 = v40;
    v34 = *(v40 + 16);
    v34(v17, v42, a4);
    v34(v13, v17, a4);
    sub_26D3835CC(v13, a5, a4);
    v35 = *(v33 + 8);
    v35(v13, a4);
    v35(v17, a4);
  }

  v46 = v44;
  v47 = v45;
  v36 = v43;
  swift_getWitnessTable();
  (*(v27 + 16))(a8, v30, v36);
  return (*(v27 + 8))(v30, v36);
}

uint64_t sub_26D3854E0(uint64_t a1, uint64_t a2)
{
  sub_26D3A0D48();
  MEMORY[0x26D6BD3E0](v5, a1, &type metadata for TFComponentItem, a2);
}

uint64_t sub_26D38556C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 11);
  v3 = type metadata accessor for TFComponent();
  sub_26D3850BC((v2 & 1) == 0, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC700);
  sub_26D3A0248();
  sub_26D3A0728();
  sub_26D3A0248();
  sub_26D3A0248();
  sub_26D3484AC(&qword_2804FC708, &qword_2804FC700);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26D393574();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26D3A0DB8();
  sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC6F8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26D3484AC(&qword_2804FC718, &qword_2804FC6F8);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_26D3938BC();
  sub_26D3A0BE8();
}

double sub_26D385848(uint64_t a1)
{
  if (sub_26D385948(a1) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC750), sub_26D3A0D58(), (v2 & 1) != 0))
  {
    return 1000.0;
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_26D3858CC()
{
  type metadata accessor for TFComponent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC750);
  return sub_26D3A0D68();
}

BOOL sub_26D385948(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC6F0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v10 - v5;
  sub_26D34856C(v1 + *(a1 + 48), &v10 - v5, &qword_2804FC6F0);
  v7 = sub_26D3A0078();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7) != 1;
  sub_26D3481A4(v6, &qword_2804FC6F0);
  return v8;
}

uint64_t sub_26D385ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCC68);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCC70) + 36));
  *v9 = sub_26D397894;
  v9[1] = v7;
  KeyPath = swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC750);
  sub_26D3A0D58();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCC78);
  v12 = a2 + *(result + 36);
  *v12 = KeyPath;
  *(v12 + 8) = v13;
  return result;
}

double sub_26D385C00@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26D3A05C8();
  MEMORY[0x28223BE20](v2, v3);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0118]);
  sub_26D3A0978();
  result = *&v9;
  v7 = v10;
  *a1 = v9;
  *(a1 + 16) = v7;
  *(a1 + 32) = v11;
  return result;
}

void (*sub_26D385D4C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_26D39FFA8();
  return sub_26D385DD4;
}

void sub_26D385DD4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_26D385E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26D393910();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_26D385E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26D393910();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_26D385EE8(uint64_t a1)
{
  v2 = sub_26D393910();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_26D385F34@<X0>(uint64_t a1@<X8>)
{
  v208 = a1;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC7E0);
  v171 = *(v199 - 8);
  MEMORY[0x28223BE20](v199, v2);
  v170 = &v160 - v3;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC7E8);
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181, v4);
  v198 = &v160 - v5;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC7F0);
  v7 = MEMORY[0x28223BE20](v207, v6);
  v202 = &v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v184 = &v160 - v10;
  v203 = sub_26D3A0608();
  v209 = *(v203 - 1);
  v12 = MEMORY[0x28223BE20](v203, v11);
  v182 = &v160 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v177 = &v160 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v186 = &v160 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v183 = &v160 - v21;
  v201 = sub_26D3A0738();
  v176 = *(v201 - 8);
  MEMORY[0x28223BE20](v201, v22);
  v175 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_26D3A07F8();
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174, v24);
  v172 = &v160 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TFToggle(0);
  v193 = *(v26 - 1);
  MEMORY[0x28223BE20](v26, v27);
  v195 = v28;
  v29 = &v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for TFLabel(0);
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v160 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC7F8);
  MEMORY[0x28223BE20](v163, v34);
  v164 = &v160 - v35;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC800);
  MEMORY[0x28223BE20](v166, v36);
  v165 = &v160 - v37;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC808);
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168, v38);
  v194 = &v160 - v39;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC810);
  MEMORY[0x28223BE20](v196, v40);
  v169 = &v160 - v41;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC818);
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179, v42);
  v197 = &v160 - v43;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC820);
  v45 = MEMORY[0x28223BE20](v192, v44);
  v200 = &v160 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v47);
  v185 = &v160 - v48;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC828);
  MEMORY[0x28223BE20](v205, v49);
  v206 = &v160 - v50;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC830);
  MEMORY[0x28223BE20](v189, v51);
  v190 = &v160 - v52;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC838);
  MEMORY[0x28223BE20](v204, v53);
  v191 = &v160 - v54;
  v188 = sub_26D3A0288();
  v161 = *(v188 - 8);
  MEMORY[0x28223BE20](v188, v55);
  v57 = &v160 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC840);
  v58 = *(v187 - 8);
  MEMORY[0x28223BE20](v187, v59);
  v61 = &v160 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC848);
  v64 = MEMORY[0x28223BE20](v62, v63);
  v67 = &v160 - v66;
  v68 = v1;
  if (v1[v26[7]] != 1)
  {
    goto LABEL_5;
  }

  if (qword_2804FAD48 != -1)
  {
    v162 = v64;
    v159 = v65;
    swift_once();
    v65 = v159;
    v64 = v162;
  }

  if ((byte_2804FFF99 & 1) == 0)
  {
    v122 = &v68[v26[8]];
    v123 = *v122;
    v124 = *(v122 + 1);
    LOBYTE(v122) = v122[16];
    *&v215 = v123;
    *(&v215 + 1) = v124;
    LOBYTE(v216) = v122;
    v162 = v64;
    v209 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880);
    v125 = sub_26D3A0E18();
    v203 = &v160;
    MEMORY[0x28223BE20](v125, v126);
    sub_26D39361C(&qword_2804FC860, type metadata accessor for TFLabel);
    sub_26D3A0DC8();
    sub_26D3A0278();
    v127 = sub_26D3484AC(&unk_2804FC8B0, &qword_2804FC840);
    v128 = sub_26D39361C(&qword_2804FBA08, MEMORY[0x277CDDBD0]);
    v129 = v187;
    v130 = v188;
    sub_26D3A0A48();
    (*(v161 + 8))(v57, v130);
    (*(v58 + 8))(v61, v129);
    v131 = v209;
    v132 = v162;
    (*(v209 + 16))(v190, v67, v162);
    swift_storeEnumTagMultiPayload();
    *&v215 = v129;
    *(&v215 + 1) = v130;
    *&v216 = v127;
    *(&v216 + 1) = v128;
    swift_getOpaqueTypeConformance2();
    sub_26D393F2C();
    v133 = v191;
    sub_26D3A0718();
    sub_26D34856C(v133, v206, &qword_2804FC838);
    swift_storeEnumTagMultiPayload();
    sub_26D393DE0();
    sub_26D3942E0();
    sub_26D3A0718();
    sub_26D3481A4(v133, &qword_2804FC838);
    return (*(v131 + 8))(v67, v132);
  }

  else
  {
LABEL_5:
    if (qword_2804FAD40 != -1)
    {
      v158 = v64;
      swift_once();
      v64 = v158;
    }

    if (byte_2804FFF98 == 1)
    {
      v162 = v64;
      v182 = v29;
      v70 = *v68;
      v69 = *(v68 + 1);
      v71 = v26[5];
      v72 = v30[5];
      v73 = sub_26D3A0648();
      (*(*(v73 - 8) + 16))(&v33[v72], &v68[v71], v73);
      v74 = &v68[v26[6]];
      v76 = *v74;
      v75 = *(v74 + 1);
      v77 = &v68[v26[8]];
      v202 = *v77;
      v199 = v77[1];
      LODWORD(v198) = *(v77 + 16);
      *&v215 = v202;
      *(&v215 + 1) = v199;
      LOBYTE(v216) = v198;

      v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880);
      MEMORY[0x26D6BD610](&v210);
      v78 = v210;
      *v33 = v70;
      *(v33 + 1) = v69;
      v79 = &v33[v30[6]];
      *v79 = v76;
      *(v79 + 1) = v75;
      v33[v30[7]] = v78;
      v80 = &v33[v30[8]];
      *v80 = swift_getKeyPath();
      v80[8] = 0;
      v81 = &v33[v30[9]];
      *v81 = swift_getKeyPath();
      v81[8] = 0;
      sub_26D3A0EA8();
      sub_26D3A0268();
      v82 = v164;
      sub_26D393C84(v33, v164, type metadata accessor for TFLabel);
      v83 = (v82 + *(v163 + 36));
      v84 = v220;
      v83[4] = v219;
      v83[5] = v84;
      v83[6] = v221;
      v85 = v216;
      *v83 = v215;
      v83[1] = v85;
      v86 = v218;
      v83[2] = v217;
      v83[3] = v86;
      v87 = v166;
      v88 = v165;
      v89 = &v165[*(v166 + 36)];
      v160 = v68;
      sub_26D387E8C(v89);
      v90 = sub_26D3A0EA8();
      v92 = v91;
      v93 = (v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC870) + 36));
      *v93 = v90;
      v93[1] = v92;
      sub_26D347238(v82, v88, &qword_2804FC7F8);
      v94 = v68;
      v95 = v182;
      sub_26D3954E0(v94, v182, type metadata accessor for TFToggle);
      v96 = (*(v193 + 80) + 16) & ~*(v193 + 80);
      v97 = swift_allocObject();
      v193 = type metadata accessor for TFToggle;
      sub_26D393C84(v95, v97 + v96, type metadata accessor for TFToggle);
      v98 = sub_26D39416C();
      sub_26D3A0A78();

      sub_26D3481A4(v88, &qword_2804FC800);
      sub_26D3954E0(v160, v95, type metadata accessor for TFToggle);
      v99 = swift_allocObject();
      sub_26D393C84(v95, v99 + v96, v193);
      v100 = v172;
      sub_26D3A07E8();
      v210 = v87;
      v211 = v98;
      swift_getOpaqueTypeConformance2();
      v101 = v169;
      v102 = v168;
      v103 = v194;
      sub_26D3A0B38();

      (*(v173 + 8))(v100, v174);
      (*(v167 + 8))(v103, v102);
      v104 = v175;
      sub_26D3A0298();
      v105 = sub_26D394074();
      v106 = sub_26D39361C(&qword_2804FC7B8, MEMORY[0x277CDDFF8]);
      v107 = v201;
      sub_26D3A0A38();
      (*(v176 + 8))(v104, v107);
      sub_26D3481A4(v101, &qword_2804FC810);
      v210 = v202;
      v211 = v199;
      LOBYTE(v212) = v198;
      MEMORY[0x26D6BD610](&v214, v184);
      LODWORD(v103) = v214;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920);
      if (v103 == 1)
      {
        v108 = swift_allocObject();
        *(v108 + 16) = xmmword_26D3A22A0;
        sub_26D3A05F8();
        sub_26D3A05D8();
      }

      else
      {
        v108 = swift_allocObject();
        *(v108 + 16) = xmmword_26D3A35F0;
        sub_26D3A05F8();
      }

      v210 = v108;
      sub_26D39361C(&unk_2804FC890, MEMORY[0x277CE01F0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918);
      sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918);
      v135 = v183;
      v136 = v203;
      sub_26D3A1388();
      v210 = v196;
      v211 = v201;
      v212 = v105;
      v213 = v106;
      swift_getOpaqueTypeConformance2();
      v137 = v179;
      v138 = v197;
      sub_26D3A0B58();
      v139 = *(v209 + 8);
      v139(v135, v136);
      (*(v178 + 8))(v138, v137);
      v210 = v202;
      v211 = v199;
      LOBYTE(v212) = v198;
      MEMORY[0x26D6BD610](&v214, v184);
      if (v214 == 1)
      {
        v210 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920);
        v145 = swift_allocObject();
        *(v145 + 16) = xmmword_26D3A35F0;
        sub_26D3A05D8();
        v210 = v145;
      }

      sub_26D39361C(&unk_2804FC890, MEMORY[0x277CE01F0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918);
      sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918);
      v146 = v186;
      sub_26D3A1388();
      v147 = v185;
      v148 = v200;
      sub_26D3A0238();
      v139(v146, v136);
      v149 = &qword_2804FC820;
      sub_26D3481A4(v148, &qword_2804FC820);
      sub_26D34856C(v147, v190, &qword_2804FC820);
      swift_storeEnumTagMultiPayload();
      v150 = sub_26D3484AC(&unk_2804FC8B0, &qword_2804FC840);
      v151 = sub_26D39361C(&qword_2804FBA08, MEMORY[0x277CDDBD0]);
      v210 = v187;
      v211 = v188;
      v212 = v150;
      v213 = v151;
      swift_getOpaqueTypeConformance2();
      sub_26D393F2C();
      v152 = v191;
      sub_26D3A0718();
      sub_26D34856C(v152, v206, &qword_2804FC838);
      swift_storeEnumTagMultiPayload();
      sub_26D393DE0();
      sub_26D3942E0();
      sub_26D3A0718();
      sub_26D3481A4(v152, &qword_2804FC838);
      v153 = v147;
    }

    else
    {
      sub_26D3954E0(v68, v29, type metadata accessor for TFToggle);
      v109 = (*(v193 + 80) + 16) & ~*(v193 + 80);
      v110 = swift_allocObject();
      v111 = sub_26D393C84(v29, v110 + v109, type metadata accessor for TFToggle);
      MEMORY[0x28223BE20](v111, v112);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC850);
      sub_26D393CF8();
      v113 = v170;
      sub_26D3A0D88();
      KeyPath = swift_getKeyPath();
      v215 = 0uLL;
      LOBYTE(v216) = 0;
      *(&v216 + 1) = KeyPath;
      LOBYTE(v217) = 0;
      v115 = sub_26D3484AC(&qword_2804FC878, &qword_2804FC7E0);
      v116 = sub_26D393970();
      v117 = v199;
      sub_26D3A0A08();

      (*(v171 + 8))(v113, v117);
      v118 = &v68[v26[8]];
      v119 = *v118;
      v120 = *(v118 + 1);
      LODWORD(v118) = v118[16];
      v201 = v119;
      *&v215 = v119;
      *(&v215 + 1) = v120;
      v200 = v120;
      LODWORD(v197) = v118;
      LOBYTE(v216) = v118;
      v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880);
      MEMORY[0x26D6BD610](&v210);
      LODWORD(v113) = v210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920);
      if (v113 == 1)
      {
        v121 = swift_allocObject();
        *(v121 + 16) = xmmword_26D3A22A0;
        sub_26D3A05F8();
        sub_26D3A05D8();
      }

      else
      {
        v121 = swift_allocObject();
        *(v121 + 16) = xmmword_26D3A35F0;
        sub_26D3A05F8();
      }

      *&v215 = v121;
      sub_26D39361C(&unk_2804FC890, MEMORY[0x277CE01F0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918);
      sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918);
      v140 = v177;
      v141 = v203;
      sub_26D3A1388();
      *&v215 = v199;
      *(&v215 + 1) = &type metadata for TFPressedButtonStyle;
      *&v216 = v115;
      *(&v216 + 1) = v116;
      swift_getOpaqueTypeConformance2();
      v142 = v181;
      v143 = v198;
      sub_26D3A0B58();
      v144 = *(v209 + 8);
      v144(v140, v141);
      (*(v180 + 8))(v143, v142);
      *&v215 = v201;
      *(&v215 + 1) = v200;
      LOBYTE(v216) = v197;
      MEMORY[0x26D6BD610](&v210, v196);
      if (v210 == 1)
      {
        *&v215 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920);
        v154 = swift_allocObject();
        *(v154 + 16) = xmmword_26D3A35F0;
        sub_26D3A05D8();
        *&v215 = v154;
      }

      sub_26D39361C(&unk_2804FC890, MEMORY[0x277CE01F0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918);
      sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918);
      v155 = v182;
      sub_26D3A1388();
      v156 = v184;
      v157 = v202;
      sub_26D3A0238();
      v144(v155, v141);
      v149 = &qword_2804FC7F0;
      sub_26D3481A4(v157, &qword_2804FC7F0);
      sub_26D34856C(v156, v206, &qword_2804FC7F0);
      swift_storeEnumTagMultiPayload();
      sub_26D393DE0();
      sub_26D3942E0();
      sub_26D3A0718();
      v153 = v156;
    }

    return sub_26D3481A4(v153, v149);
  }
}

uint64_t sub_26D387D40@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 1);
  v6 = type metadata accessor for TFToggle(0);
  v7 = v6[5];
  v8 = type metadata accessor for TFLabel(0);
  v9 = v8[5];
  v10 = sub_26D3A0648();
  (*(*(v10 - 8) + 16))(&a2[v9], &a1[v7], v10);
  v11 = &a1[v6[6]];
  v13 = *v11;
  v12 = *(v11 + 1);
  v14 = &a1[v6[8]];
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v14) = v14[16];
  v24 = v15;
  v25 = v16;
  v26 = v14;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880);
  MEMORY[0x26D6BD610](&v23, v17);
  v18 = v23;
  *a2 = v5;
  *(a2 + 1) = v4;
  v19 = &a2[v8[6]];
  *v19 = v13;
  *(v19 + 1) = v12;
  a2[v8[7]] = v18;
  v20 = &a2[v8[8]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &a2[v8[9]];
  result = swift_getKeyPath();
  *v21 = result;
  v21[8] = 0;
  return result;
}

uint64_t sub_26D387E8C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TFToggle(0);
  v4 = v1 + *(v3 + 36);
  v5 = *v4;
  v6 = *(v4 + 8);
  if ((sub_26D33CD0C(*v4, v6) - 2) > 2u)
  {
    v11 = 0;
  }

  else
  {
    v7 = (v1 + *(v3 + 32));
    v8 = *v7;
    v9 = v7[1];
    LOBYTE(v7) = *(v7 + 16);
    v31 = v8;
    v32 = v9;
    v33 = v7;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880);
    MEMORY[0x26D6BD610](&v30, v10);
    v11 = v30 ^ 1;
  }

  v12 = (v1 + *(v3 + 32));
  v13 = *v12;
  v14 = v12[1];
  LOBYTE(v12) = *(v12 + 16);
  v31 = v13;
  v32 = v14;
  v33 = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880);
  MEMORY[0x26D6BD610](&v30, v15);
  v16 = v30;
  v17 = (sub_26D33CD0C(v5, v6) - 2) < 3u;
  v18 = sub_26D3A0138();
  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v21 = type metadata accessor for TFComponentBackground(0);
  *(a1 + v21[10]) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB310);
  swift_storeEnumTagMultiPayload();
  v22 = swift_getKeyPath();
  v23 = swift_getKeyPath();
  *a1 = v11 & 1;
  *(a1 + 1) = v16;
  *(a1 + 2) = v17;
  *(a1 + 3) = 0;
  *(a1 + 8) = v18;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;
  v24 = a1 + v21[11];
  *v24 = v22;
  *(v24 + 8) = 0;
  v25 = a1 + v21[12];
  *v25 = v23;
  *(v25 + 8) = 0;
  v26 = a1 + v21[13];
  *v26 = swift_getKeyPath();
  *(v26 + 8) = 0;
  v27 = a1 + v21[14];
  *v27 = swift_getKeyPath();
  *(v27 + 8) = 0;
  v28 = a1 + v21[15];
  result = swift_getKeyPath();
  *v28 = result;
  *(v28 + 8) = 0;
  return result;
}

uint64_t sub_26D3880BC()
{
  type metadata accessor for TFToggle(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880);
  MEMORY[0x26D6BD610](&v1);
  sub_26D3A0E08();
}

uint64_t sub_26D388180@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 1);
  v6 = type metadata accessor for TFToggle(0);
  v7 = v6[5];
  v8 = type metadata accessor for TFLabel(0);
  v9 = v8[5];
  v10 = sub_26D3A0648();
  (*(*(v10 - 8) + 16))(&a2[v9], &a1[v7], v10);
  v11 = &a1[v6[6]];
  v13 = *v11;
  v12 = *(v11 + 1);
  v14 = &a1[v6[8]];
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v14) = v14[16];
  v29 = v15;
  v30 = v16;
  v31 = v14;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880);
  MEMORY[0x26D6BD610](&v28, v17);
  v18 = v28;
  *a2 = v5;
  *(a2 + 1) = v4;
  v19 = &a2[v8[6]];
  *v19 = v13;
  *(v19 + 1) = v12;
  a2[v8[7]] = v18;
  v20 = &a2[v8[8]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &a2[v8[9]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC850) + 36)];
  sub_26D387E8C(v22);
  v23 = sub_26D3A0EA8();
  v25 = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC870);
  v27 = (v22 + *(result + 36));
  *v27 = v23;
  v27[1] = v25;
  return result;
}

__n128 sub_26D388348@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA78);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v14 - v6;
  sub_26D3884B0(v2);
  v8 = type metadata accessor for TFLabel(0);
  v9 = sub_26D33D6D0(*(v2 + *(v8 + 36)), *(v2 + *(v8 + 36) + 8));
  if (v9 == 2 || (v9 & 1) == 0)
  {
    sub_26D3A0EA8();
  }

  else
  {
    sub_26D3A0EB8();
  }

  sub_26D3A0268();
  sub_26D347238(v7, a1, &qword_2804FCA78);
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA80) + 36);
  v11 = v14[5];
  *(v10 + 64) = v14[4];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[6];
  v12 = v14[1];
  *v10 = v14[0];
  *(v10 + 16) = v12;
  result = v14[3];
  *(v10 + 32) = v14[2];
  *(v10 + 48) = result;
  return result;
}

uint64_t sub_26D3884B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA88);
  MEMORY[0x28223BE20](v2, v3);
  v5 = v48 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA90);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA98);
  v53 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v54 = v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCAA0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v52 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v48 - v18;
  v20 = type metadata accessor for TFLabel(0);
  v22 = (a1 + *(v20 + 24));
  v23 = v22[1];
  if (!v23)
  {
    goto LABEL_10;
  }

  v24 = *v22;
  v25 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v25 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v26 = v20;
    v50 = v6;
    v48[1] = v48;
    v27 = MEMORY[0x28223BE20](v20, v21);
    v48[-4] = v29;
    v48[-3] = v28;
    v48[-2] = a1;
    MEMORY[0x28223BE20](v27, v30);
    v48[-2] = a1;
    sub_26D37FF80();
    v49 = v9;
    sub_26D395410();
    v51 = v2;
    v31 = v10;
    v32 = v49;
    sub_26D3A0CD8();
    v33 = sub_26D3A0878();
    if (sub_26D33D6D0(*(a1 + *(v26 + 36)), *(a1 + *(v26 + 36) + 8)) == 2)
    {
      v34 = sub_26D33CD0C(*(a1 + *(v26 + 32)), *(a1 + *(v26 + 32) + 8));
      if (qword_2804FAD40 != -1)
      {
        swift_once();
      }

      if (byte_2804FFF98)
      {
        goto LABEL_9;
      }

      if (qword_2804FAD48 != -1)
      {
        swift_once();
      }

      if (byte_2804FFF99 & 1) == 0 && (_UISolariumEnabled())
      {
LABEL_9:
        sub_26D39CDDC(0, v34);
      }
    }

    sub_26D39FFD8();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = v52;
    (*(v53 + 32))(v52, v54, v31);
    v46 = v45 + *(v13 + 36);
    *v46 = v33;
    *(v46 + 8) = v38;
    *(v46 + 16) = v40;
    *(v46 + 24) = v42;
    *(v46 + 32) = v44;
    *(v46 + 40) = 0;
    sub_26D347238(v45, v19, &qword_2804FCAA0);
    sub_26D34856C(v19, v32, &qword_2804FCAA0);
    swift_storeEnumTagMultiPayload();
    sub_26D395358();
    sub_26D3A0718();
    v35 = v19;
    v36 = &qword_2804FCAA0;
  }

  else
  {
LABEL_10:
    sub_26D388D30(v5);
    sub_26D34856C(v5, v9, &qword_2804FCA88);
    swift_storeEnumTagMultiPayload();
    sub_26D395358();
    sub_26D395410();
    sub_26D3A0718();
    v35 = v5;
    v36 = &qword_2804FCA88;
  }

  return sub_26D3481A4(v35, v36);
}

uint64_t sub_26D3889EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a3 + *(type metadata accessor for TFLabel(0) + 28));
  KeyPath = swift_getKeyPath();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v7;
  *(a4 + 24) = KeyPath;
  *(a4 + 32) = 0;
}

uint64_t sub_26D388A60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FCAC8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v25 - v6;
  v8 = type metadata accessor for TFSymbol(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  if (v12)
  {
    v13 = *a1;
    v14 = type metadata accessor for TFLabel(0);
    v15 = *(a1 + v14[7]);
    v16 = v14[5];
    v17 = *(a1 + v14[6] + 8);
    v25[1] = a2;
    v18 = v17 == 0;

    v19 = sub_26D3A0928();
    *v11 = v13;
    *(v11 + 1) = v12;
    v11[16] = v15;
    *(v11 + 3) = v19;
    *(v11 + 4) = 0;
    v20 = v8[8];
    v21 = sub_26D3A0648();
    (*(*(v21 - 8) + 16))(&v11[v20], a1 + v16, v21);
    v11[v8[9]] = 0;
    v11[v8[10]] = v18;
    v22 = &v11[v8[11]];
    *v22 = swift_getKeyPath();
    v22[8] = 0;
    v23 = &v11[v8[12]];
    *v23 = swift_getKeyPath();
    v23[8] = 0;
    sub_26D3954E0(v11, v7, type metadata accessor for TFSymbol);
    swift_storeEnumTagMultiPayload();
    sub_26D39361C(&qword_2804FC7D0, type metadata accessor for TFSymbol);
    sub_26D3A0718();
    return sub_26D395548(v11, type metadata accessor for TFSymbol);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_26D39361C(&qword_2804FC7D0, type metadata accessor for TFSymbol);
    return sub_26D3A0718();
  }
}

uint64_t sub_26D388D30@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FCAC8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v24 - v5;
  v7 = type metadata accessor for TFSymbol(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[1];
  if (v11)
  {
    v12 = *v1;
    v13 = type metadata accessor for TFLabel(0);
    v14 = *(v1 + v13[7]);
    v15 = v13[5];
    v16 = *(v1 + v13[6] + 8);
    v24[1] = a1;
    v17 = v16 == 0;

    v18 = sub_26D3A0928();
    *v10 = v12;
    *(v10 + 1) = v11;
    v10[16] = v14;
    *(v10 + 3) = v18;
    *(v10 + 4) = 0;
    v19 = v7[8];
    v20 = sub_26D3A0648();
    (*(*(v20 - 8) + 16))(&v10[v19], v1 + v15, v20);
    v10[v7[9]] = 0;
    v10[v7[10]] = v17;
    v21 = &v10[v7[11]];
    *v21 = swift_getKeyPath();
    v21[8] = 0;
    v22 = &v10[v7[12]];
    *v22 = swift_getKeyPath();
    v22[8] = 0;
    sub_26D3954E0(v10, v6, type metadata accessor for TFSymbol);
    swift_storeEnumTagMultiPayload();
    sub_26D39361C(&qword_2804FC7D0, type metadata accessor for TFSymbol);
    sub_26D3A0718();
    return sub_26D395548(v10, type metadata accessor for TFSymbol);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_26D39361C(&qword_2804FC7D0, type metadata accessor for TFSymbol);
    return sub_26D3A0718();
  }
}

uint64_t sub_26D388FFC()
{
  sub_26D37E450();
  sub_26D3A0518();
  return v1;
}

uint64_t sub_26D389060@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA00);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v38 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA08);
  MEMORY[0x28223BE20](v45, v7);
  v47 = &v38 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA10);
  MEMORY[0x28223BE20](v46, v9);
  v48 = &v38 - v10;
  v44 = sub_26D3A0618();
  v43 = sub_26D3A0538();
  sub_26D3894C0(&v50);
  v40 = *(&v50 + 1);
  v41 = v50;
  v11 = v51[0];
  v42 = *&v51[8];
  v12 = *(v1 + 24);
  KeyPath = swift_getKeyPath();
  LOBYTE(v50) = v11;

  v38 = sub_26D3895BC();
  v13 = &v6[*(v3 + 44)];
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA18) + 28);
  v15 = type metadata accessor for TFSymbol(0);
  v16 = v15[8];
  v17 = sub_26D3A0648();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v13 + v14, v1 + v16, v17);
  (*(v18 + 56))(v13 + v14, 0, 1, v17);
  *v13 = swift_getKeyPath();
  v19 = v43;
  *v6 = v44;
  *(v6 + 1) = v19;
  v20 = v40;
  *(v6 + 2) = v41;
  *(v6 + 3) = v20;
  v6[32] = v11;
  *(v6 + 9) = *&v56[3];
  *(v6 + 33) = *v56;
  *(v6 + 40) = v42;
  *(v6 + 7) = KeyPath;
  *(v6 + 8) = v12;
  *(v6 + 9) = v38;
  v21 = v15[11];
  v22 = *(v1 + v21);
  v23 = *(v1 + v21 + 8);
  v24 = sub_26D33D6D0(v22, v23);
  if (v24 == 2 || (v24 & 1) == 0)
  {
    sub_26D3A0EA8();
  }

  else
  {
    sub_26D3A0EB8();
  }

  v25 = 1;
  sub_26D3A0268();
  v26 = v47;
  sub_26D347238(v6, v47, &qword_2804FCA00);
  v27 = (v26 + *(v45 + 36));
  v28 = v54;
  v27[4] = v53;
  v27[5] = v28;
  v27[6] = v55;
  v29 = *v51;
  *v27 = v50;
  v27[1] = v29;
  v30 = v52;
  v27[2] = *&v51[16];
  v27[3] = v30;
  v31 = v48;
  sub_26D347238(v26, v48, &qword_2804FCA08);
  *(v31 + *(v46 + 36)) = 0;
  if (*(v1 + v15[9]) == 1 && *(v1 + 16) == 1)
  {
    v25 = sub_26D33D6D0(v22, v23);
  }

  v32 = *(v1 + 16);
  v33 = sub_26D3A0138();
  v34 = v31;
  v35 = v49;
  sub_26D347238(v34, v49, &qword_2804FCA10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA20);
  v37 = v35 + *(result + 36);
  *v37 = v25 & 1;
  *(v37 + 1) = v32;
  *(v37 + 2) = 0;
  *(v37 + 8) = v33;
  return result;
}

uint64_t sub_26D3894C0@<X0>(uint64_t a1@<X8>)
{
  sub_26D3A05A8();
  v2 = sub_26D3A09A8();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = sub_26D3A0CB8();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  sub_26D3806E8(v2, v4, v6 & 1);

  sub_26D37EDCC(v2, v4, v6 & 1);
}

uint64_t sub_26D3895BC()
{
  if (*(v0 + 32))
  {
    v1 = v0 + *(type metadata accessor for TFSymbol(0) + 48);
    v2 = *v1;
    v3 = *(v1 + 8);

    sub_26D33D0B8(v2, v3);
    v4 = &qword_2804FCA40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA40);
    v5 = &unk_2804FCA48;
LABEL_7:
    sub_26D3484AC(v5, v4);
    return sub_26D3A00D8();
  }

  if (*(v0 + 16) != 1 || (v6 = type metadata accessor for TFSymbol(0), v7 = sub_26D33D6D0(*(v0 + *(v6 + 44)), *(v0 + *(v6 + 44) + 8)), v7 != 2) && (v7 & 1) != 0)
  {
    sub_26D3A0798();
    v8 = type metadata accessor for TFSymbol(0);
    sub_26D33D0B8(*(v0 + *(v8 + 48)), *(v0 + *(v8 + 48) + 8));
    v4 = &qword_2804FCA30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA30);
    v5 = &unk_2804FCA38;
    goto LABEL_7;
  }

  if (qword_2804FAD40 != -1)
  {
    swift_once();
  }

  if (byte_2804FFF98 == 1)
  {
    sub_26D3A0C38();
    sub_26D33D0B8(*(v0 + *(v6 + 48)), *(v0 + *(v6 + 48) + 8));
    sub_26D3A0C68();
  }

  else
  {
    sub_26D3A0C58();
  }

  return sub_26D3A00D8();
}

double sub_26D3897D8@<D0>(uint64_t a1@<X8>)
{
  sub_26D3A0938();
  v2 = sub_26D3A08F8();

  LODWORD(v9) = sub_26D3A07A8();
  v3 = sub_26D3A00D8();
  v4 = type metadata accessor for TFSymbol(0);
  sub_26D3A0638();
  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x800000026D3A8390;
  *(a1 + 16) = 0;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + v4[9]) = 1;
  *(a1 + v4[10]) = 1;
  v5 = a1 + v4[11];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = a1 + v4[12];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  sub_26D3A0EA8();
  sub_26D3A00C8();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC998) + 36));
  *v7 = v9;
  v7[1] = v10;
  result = *&v11;
  v7[2] = v11;
  return result;
}

uint64_t sub_26D38995C(unsigned __int8 a1)
{
  sub_26D3A1568();
  MEMORY[0x26D6BDD90](a1);
  return sub_26D3A1588();
}

uint64_t sub_26D3899CC@<X0>(void (*a1)(void)@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  a1();
  sub_26D3A0D48();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = a3 + *(result + 36);
  *v6 = v7;
  *(v6 + 8) = v8;
  return result;
}

uint64_t sub_26D389A6C()
{
  sub_26D3A1568();
  sub_26D389934(v2, *v0);
  return sub_26D3A1588();
}

uint64_t sub_26D389AAC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v27 = a1;
  v28 = a2;
  sub_26D3A0248();
  sub_26D3A0728();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC768);
  swift_getTupleTypeMetadata2();
  sub_26D3A0EE8();
  swift_getWitnessTable();
  sub_26D3A0DB8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804FC770);
  sub_26D3A0248();
  sub_26D3A0248();
  sub_26D3A0248();
  sub_26D3A0248();
  type metadata accessor for TFFrameTracker(255);
  sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1C0);
  sub_26D3A0248();
  sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC780);
  sub_26D3A0248();
  WitnessTable = swift_getWitnessTable();
  v50 = sub_26D3484AC(&qword_2804FC788, &unk_2804FC770);
  v2 = MEMORY[0x277CDFAD8];
  v47 = swift_getWitnessTable();
  v48 = MEMORY[0x277CDFC60];
  v45 = swift_getWitnessTable();
  v46 = MEMORY[0x277CDF918];
  v43 = swift_getWitnessTable();
  v44 = sub_26D37E938();
  v41 = swift_getWitnessTable();
  v42 = sub_26D39361C(&qword_2804FC1B8, type metadata accessor for TFFrameTracker);
  v39 = swift_getWitnessTable();
  v40 = sub_26D3484AC(&qword_2804FC7A0, &qword_2804FC1C0);
  v37 = swift_getWitnessTable();
  v38 = MEMORY[0x277CDF678];
  v26 = v2;
  v35 = swift_getWitnessTable();
  v36 = sub_26D3484AC(&qword_2804FC7A8, &qword_2804FC780);
  swift_getWitnessTable();
  sub_26D3A0D98();
  swift_getWitnessTable();
  sub_26D393970();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v24 = sub_26D3A0738();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v3 = sub_26D39361C(&qword_2804FC7B8, MEMORY[0x277CDDFF8]);
  v31 = OpaqueTypeMetadata2;
  v32 = v24;
  v33 = OpaqueTypeConformance2;
  v34 = v3;
  v4 = swift_getOpaqueTypeMetadata2();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &OpaqueTypeConformance2 - v7;
  v9 = sub_26D3A0248();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &OpaqueTypeConformance2 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &OpaqueTypeConformance2 - v16;
  sub_26D38A194(v27, v8);
  v31 = OpaqueTypeMetadata2;
  v32 = v24;
  v33 = OpaqueTypeConformance2;
  v34 = v3;
  v18 = swift_getOpaqueTypeConformance2();
  sub_26D3854E0(v4, v18);
  (*(v5 + 8))(v8, v4);
  v19 = sub_26D393574();
  v29 = v18;
  v30 = v19;
  swift_getWitnessTable();
  v20 = *(v10 + 16);
  v20(v17, v14, v9);
  v21 = *(v10 + 8);
  v21(v14, v9);
  v20(v28, v17, v9);
  return (v21)(v17, v9);
}

uint64_t sub_26D38A194@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v74 = a1;
  v81 = a2;
  v83 = sub_26D3A0738();
  v80 = *(v83 - 8);
  v4 = MEMORY[0x28223BE20](v83, v3);
  v78 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *(a1 - 8);
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v73 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(a1 + 16);
  sub_26D3A0248();
  sub_26D3A0728();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC768);
  swift_getTupleTypeMetadata2();
  sub_26D3A0EE8();
  swift_getWitnessTable();
  sub_26D3A0DB8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804FC770);
  sub_26D3A0248();
  sub_26D3A0248();
  sub_26D3A0248();
  sub_26D3A0248();
  type metadata accessor for TFFrameTracker(255);
  sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1C0);
  sub_26D3A0248();
  sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC780);
  v82 = sub_26D3A0248();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_26D3484AC(&qword_2804FC788, &unk_2804FC770);
  v106 = WitnessTable;
  v107 = v9;
  v104 = swift_getWitnessTable();
  v105 = MEMORY[0x277CDFC60];
  v102 = swift_getWitnessTable();
  v103 = MEMORY[0x277CDF918];
  v10 = swift_getWitnessTable();
  v11 = sub_26D37E938();
  v100 = v10;
  v101 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_26D39361C(&qword_2804FC1B8, type metadata accessor for TFFrameTracker);
  v98 = v12;
  v99 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_26D3484AC(&qword_2804FC7A0, &qword_2804FC1C0);
  v96 = v14;
  v97 = v15;
  v94 = swift_getWitnessTable();
  v95 = MEMORY[0x277CDF678];
  v16 = swift_getWitnessTable();
  v17 = sub_26D3484AC(&qword_2804FC7A8, &qword_2804FC780);
  v92 = v16;
  v93 = v17;
  v69 = swift_getWitnessTable();
  v18 = sub_26D3A0D98();
  v70 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v67 = &v60 - v20;
  v21 = swift_getWitnessTable();
  v22 = sub_26D393970();
  v87 = v18;
  v88 = &type metadata for TFPressedButtonStyle;
  v23 = v18;
  v62 = v18;
  v89 = v21;
  v90 = v22;
  v64 = v21;
  v24 = v22;
  v63 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2, v26);
  v61 = &v60 - v27;
  v87 = v23;
  v88 = &type metadata for TFPressedButtonStyle;
  v89 = v21;
  v90 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = sub_26D39361C(&qword_2804FC7B8, MEMORY[0x277CDDFF8]);
  v72 = OpaqueTypeMetadata2;
  v87 = OpaqueTypeMetadata2;
  v88 = v83;
  v68 = OpaqueTypeConformance2;
  v89 = OpaqueTypeConformance2;
  v90 = v29;
  v66 = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  v31 = *(v30 - 8);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v35 = &v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v36);
  v65 = &v60 - v37;
  v38 = v76;
  v39 = v73;
  v40 = v79;
  v41 = v74;
  (*(v76 + 16))(v73, v79, v74);
  v42 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v43 = swift_allocObject();
  v44 = v41;
  v45 = *(v41 + 24);
  v46 = v75;
  *(v43 + 16) = v75;
  *(v43 + 24) = v45;
  v47 = v43 + v42;
  v48 = v78;
  v49 = v39;
  v50 = v61;
  (*(v38 + 32))(v47, v49, v44);
  v84 = v46;
  v85 = v45;
  v86 = v40;
  v51 = v67;
  sub_26D3A0D88();
  KeyPath = swift_getKeyPath();
  v87 = 0;
  v88 = 0;
  LOBYTE(v89) = 0;
  v90 = KeyPath;
  v91 = 0;
  v53 = v62;
  sub_26D3A0A08();

  (*(v70 + 8))(v51, v53);
  sub_26D3A0298();
  if (qword_2804FAD40 != -1)
  {
    swift_once();
  }

  v54 = v72;
  v55 = v83;
  sub_26D3A0A38();
  (*(v80 + 8))(v48, v55);
  (*(v71 + 8))(v50, v54);
  v56 = *(v31 + 16);
  v57 = v65;
  v56(v65, v35, v30);
  v58 = *(v31 + 8);
  v58(v35, v30);
  v56(v81, v57, v30);
  return (v58)(v57, v30);
}

uint64_t sub_26D38ABD0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v25[3] = a1;
  v26 = a2;
  sub_26D3A0248();
  sub_26D3A0728();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC768);
  swift_getTupleTypeMetadata2();
  sub_26D3A0EE8();
  swift_getWitnessTable();
  sub_26D3A0DB8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804FC770);
  sub_26D3A0248();
  sub_26D3A0248();
  sub_26D3A0248();
  v25[1] = sub_26D3A0248();
  type metadata accessor for TFFrameTracker(255);
  v25[2] = sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1C0);
  v25[5] = sub_26D3A0248();
  v25[4] = sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC780);
  v2 = sub_26D3A0248();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v25 - v9;
  v11 = type metadata accessor for TFButton();
  sub_26D38B08C(v11, v7);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_26D3484AC(&qword_2804FC788, &unk_2804FC770);
  v41 = WitnessTable;
  v42 = v13;
  v39 = swift_getWitnessTable();
  v40 = MEMORY[0x277CDFC60];
  v37 = swift_getWitnessTable();
  v38 = MEMORY[0x277CDF918];
  v14 = swift_getWitnessTable();
  v15 = sub_26D37E938();
  v35 = v14;
  v36 = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_26D39361C(&qword_2804FC1B8, type metadata accessor for TFFrameTracker);
  v33 = v16;
  v34 = v17;
  v18 = swift_getWitnessTable();
  v19 = sub_26D3484AC(&qword_2804FC7A0, &qword_2804FC1C0);
  v31 = v18;
  v32 = v19;
  v29 = swift_getWitnessTable();
  v30 = MEMORY[0x277CDF678];
  v20 = swift_getWitnessTable();
  v21 = sub_26D3484AC(&qword_2804FC7A8, &qword_2804FC780);
  v27 = v20;
  v28 = v21;
  swift_getWitnessTable();
  v22 = *(v3 + 16);
  v22(v10, v7, v2);
  v23 = *(v3 + 8);
  v23(v7, v2);
  v22(v26, v10, v2);
  return (v23)(v10, v2);
}

uint64_t sub_26D38B08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v106 = a2;
  v5 = type metadata accessor for TFFrameTracker(0);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v104 = &v78[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = a1;
  v9 = *(a1 - 8);
  a1 -= 8;
  v103 = v9;
  MEMORY[0x28223BE20](v7, v10);
  v101 = v11;
  v102 = &v78[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a1 + 24);
  sub_26D3A0248();
  sub_26D3A0728();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC768);
  swift_getTupleTypeMetadata2();
  sub_26D3A0EE8();
  swift_getWitnessTable();
  v13 = sub_26D3A0DB8();
  v83 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v78[-v15];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804FC770);
  v17 = sub_26D3A0248();
  v81 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v78[-v19];
  v21 = sub_26D3A0248();
  v85 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v21);
  v84 = &v78[-v22];
  v86 = v23;
  v24 = sub_26D3A0248();
  v88 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v24);
  v87 = &v78[-v25];
  v89 = v26;
  v27 = sub_26D3A0248();
  v91 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v27);
  v90 = &v78[-v28];
  v92 = v29;
  v30 = sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1C0);
  v93 = v30;
  v31 = sub_26D3A0248();
  v96 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v31);
  v94 = &v78[-v32];
  v97 = v33;
  v99 = sub_26D3A0248();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99, v34);
  v95 = &v78[-v35];
  v36 = &v3[*(a1 + 72)];
  v37 = v36[8];
  v80 = *v36;
  v79 = v37;
  sub_26D33CD0C(v80, v37);
  v38 = *(a1 + 32);
  v100 = v12;
  v107 = v12;
  v82 = v38;
  v108 = v38;
  v109 = v3;
  sub_26D3A0548();
  sub_26D3A0DA8();
  if (qword_2804FAD40 != -1)
  {
    swift_once();
  }

  if (byte_2804FFF98 == 1)
  {
    LODWORD(v116) = sub_26D3A0798();
  }

  else
  {
    v116 = sub_26D3A0C78();
  }

  v116 = sub_26D3A00D8();
  WitnessTable = swift_getWitnessTable();
  sub_26D3A0AD8();

  (*(v83 + 8))(v16, v13);
  v40 = v3;
  LODWORD(v83) = *v3;
  if (v83 == 1)
  {
    sub_26D3A0EB8();
  }

  else
  {
    sub_26D3A0EA8();
  }

  v41 = sub_26D3484AC(&qword_2804FC788, &unk_2804FC770);
  v125 = WitnessTable;
  v126 = v41;
  v42 = swift_getWitnessTable();
  v43 = v84;
  sub_26D3A0B88();
  (*(v81 + 8))(v20, v17);
  sub_26D3A0878();
  if (v3[2] == 1)
  {
    v44 = sub_26D33CD0C(v80, v79);
    if (byte_2804FFF98)
    {
      goto LABEL_11;
    }

    if (qword_2804FAD48 != -1)
    {
      swift_once();
    }

    if (byte_2804FFF99 & 1) == 0 && (_UISolariumEnabled())
    {
LABEL_11:
      sub_26D39CDDC(0, v44);
    }
  }

  v123 = v42;
  v124 = MEMORY[0x277CDFC60];
  v45 = v86;
  v46 = swift_getWitnessTable();
  v47 = v87;
  sub_26D3A0BB8();
  (*(v85 + 8))(v43, v45);
  v48 = v3[1];
  v49 = sub_26D3A0138();
  v121 = v46;
  v122 = MEMORY[0x277CDF918];
  v50 = v89;
  v51 = swift_getWitnessTable();
  LOBYTE(v116) = v48;
  *(&v116 + 1) = 0;
  BYTE3(v116) = 0;
  v117 = v49;
  v52 = v90;
  MEMORY[0x26D6BD3E0](&v116, v50, &type metadata for TFComponentBackgroundModifier, v51);

  (*(v88 + 8))(v47, v50);
  v53 = v103;
  v54 = v102;
  v55 = v105;
  (*(v103 + 16))(v102, v40, v105);
  v56 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v57 = swift_allocObject();
  v58 = v82;
  *(v57 + 16) = v100;
  *(v57 + 24) = v58;
  (*(v53 + 32))(v57 + v56, v54, v55);
  v59 = sub_26D37E938();
  v119 = v51;
  v120 = v59;
  v60 = v92;
  v61 = swift_getWitnessTable();
  v62 = *MEMORY[0x277CDF968];
  v63 = sub_26D3A01D8();
  v64 = v104;
  (*(*(v63 - 8) + 104))(v104, v62, v63);
  v65 = v94;
  sub_26D39D2AC(v64, sub_26D393B8C, v57, v60, v61, v94);

  sub_26D395548(v64, type metadata accessor for TFFrameTracker);
  (*(v91 + 8))(v52, v60);
  v66 = &v40[*(v55 + 56)];
  v67 = *v66;
  v68 = v66[8];
  v69 = *(v66 + 2);
  v116 = v67;
  LOBYTE(v117) = v68;
  v118 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC7C0);
  sub_26D3A0D58();
  sub_26D3A0EA8();
  v70 = sub_26D39361C(&qword_2804FC1B8, type metadata accessor for TFFrameTracker);
  v114 = v61;
  v115 = v70;
  v71 = swift_getWitnessTable();
  v72 = sub_26D3484AC(&qword_2804FC7A0, &qword_2804FC1C0);
  v112 = v71;
  v113 = v72;
  v73 = v97;
  v74 = swift_getWitnessTable();
  v75 = v95;
  sub_26D3A0B78();
  (*(v96 + 8))(v65, v73);
  v110 = v74;
  v111 = MEMORY[0x277CDF678];
  v76 = v99;
  swift_getWitnessTable();
  sub_26D3A0AA8();
  return (*(v98 + 8))(v75, v76);
}

uint64_t sub_26D38BDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a4;
  v47 = type metadata accessor for TFSymbol(0);
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v7);
  v42 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC768);
  v10 = MEMORY[0x28223BE20](v48, v9);
  v50 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v45 = &v42 - v13;
  v14 = sub_26D3A0248();
  v15 = sub_26D3A0728();
  v43 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v42 - v21;
  type metadata accessor for TFButton();
  v23 = *(a1 + 3);
  v53 = a2;
  v54 = a3;
  v58[4] = a3;
  v58[5] = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  sub_26D385150(v23, sub_26D393BB8, v52, a2, v14, a3, WitnessTable, v19);
  v58[2] = WitnessTable;
  v58[3] = a3;
  v44 = swift_getWitnessTable();
  v25 = *(v43 + 16);
  v46 = v22;
  v26 = v22;
  v27 = v43;
  v25(v26, v19, v15);
  v28 = *(v27 + 8);
  v28(v19, v15);
  if (v23 == 1)
  {
    LODWORD(v58[0]) = sub_26D3A07A8();
    v29 = sub_26D3A00D8();
    v30 = sub_26D3A0928();
    v31 = v47;
    v32 = v42;
    sub_26D3A0638();
    *v32 = xmmword_26D3A5FC0;
    *(v32 + 16) = 0;
    *(v32 + 24) = v30;
    *(v32 + 32) = v29;
    *(v32 + v31[9]) = 0;
    *(v32 + v31[10]) = 0;
    v33 = v32 + v31[11];
    *v33 = swift_getKeyPath();
    *(v33 + 8) = 0;
    v34 = v32 + v31[12];
    *v34 = swift_getKeyPath();
    *(v34 + 8) = 0;
    v35 = v45;
    sub_26D393C84(v32, v45, type metadata accessor for TFSymbol);
    v36 = 0;
    v37 = v31;
    v38 = v35;
  }

  else
  {
    v36 = 1;
    v37 = v47;
    v38 = v45;
  }

  (*(v49 + 56))(v38, v36, 1, v37);
  v39 = v46;
  v25(v19, v46, v15);
  v58[0] = v19;
  v40 = v50;
  sub_26D34856C(v38, v50, &qword_2804FC768);
  v58[1] = v40;
  v57[0] = v15;
  v57[1] = v48;
  v55 = v44;
  v56 = sub_26D393BC0();
  sub_26D3836C4(v58, 2uLL, v57);
  sub_26D3481A4(v38, &qword_2804FC768);
  v28(v39, v15);
  sub_26D3481A4(v40, &qword_2804FC768);
  return (v28)(v19, v15);
}

uint64_t sub_26D38C330()
{
  type metadata accessor for TFButton();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC7C0);
  return sub_26D3A0D68();
}

uint64_t sub_26D38C3CC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCC80);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCC88);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v16 - v9;
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  sub_26D3A0818();
  v13 = 1.0;
  if (sub_26D3A0828())
  {
    if ((sub_26D33CD0C(v11, v12) - 2) >= 3u)
    {
      v13 = 0.7;
    }

    else
    {
      v13 = 0.5;
    }
  }

  sub_26D347238(v6, v10, &qword_2804FCC80);
  *&v10[*(v7 + 36)] = v13;
  sub_26D347238(v10, a1, &qword_2804FCC88);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCC90);
  v15 = (a1 + *(result + 36));
  *v15 = sub_26D3675D4;
  v15[1] = 0;
  return result;
}

uint64_t sub_26D38C570@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v125 = a2;
  v4 = type metadata accessor for TFFrameTracker(0);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v124 = &v91[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v123 = a1;
  v8 = *(a1 - 8);
  a1 -= 8;
  v121 = v8;
  MEMORY[0x28223BE20](v6, v9);
  v119 = v10;
  v120 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a1 + 24);
  sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC968);
  swift_getTupleTypeMetadata2();
  sub_26D3A0EE8();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_26D3A0DB8();
  v94 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v91[-v14];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804FC970);
  v16 = sub_26D3A0248();
  v96 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v91[-v18];
  v20 = sub_26D3A0248();
  v100 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v20);
  v98 = &v91[-v21];
  v101 = v22;
  v23 = sub_26D3A0248();
  v102 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v24);
  v99 = &v91[-v25];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBF40);
  v103 = v23;
  v26 = sub_26D3A0248();
  v105 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v26);
  v104 = &v91[-v27];
  v106 = v28;
  v29 = sub_26D3A0248();
  v108 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v29);
  v107 = &v91[-v30];
  v110 = v31;
  v32 = sub_26D3A0248();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC1C0);
  v109 = v32;
  v33 = sub_26D3A0248();
  v114 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v33);
  v111 = &v91[-v34];
  v115 = v35;
  v117 = sub_26D3A0248();
  v116 = *(v117 - 8);
  v37 = MEMORY[0x28223BE20](v117, v36);
  v112 = &v91[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v37, v39);
  v113 = &v91[-v40];
  v41 = v2 + *(a1 + 52);
  v42 = *(v41 + 8);
  v93 = *v41;
  v92 = v42;
  sub_26D33CD0C(v93, v42);
  v43 = *(a1 + 32);
  v118 = v11;
  v126 = v11;
  v97 = v43;
  v127 = v43;
  v128 = v2;
  sub_26D3A0548();
  sub_26D3A0DA8();
  swift_getKeyPath();
  v44 = *(a1 + 44);
  WitnessTable = v2;
  v45 = (v2 + v44);
  v47 = *(v45 + 1);
  v146 = *v45;
  v46 = v146;
  v147 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC750);
  sub_26D3A0D58();
  v146 = v145;
  v48 = swift_getWitnessTable();
  v95 = v19;
  sub_26D3A0A28();

  (*(v94 + 8))(v15, v12);
  sub_26D3A08B8();
  v146 = v46;
  v147 = v47;
  sub_26D3A0D58();
  if (v145 == 1)
  {
    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    v49 = v98;
    if ((byte_2804FFF98 & 1) == 0)
    {
      v50 = sub_26D33CD0C(v93, v92);
      if (byte_2804FFF98)
      {
        goto LABEL_8;
      }

      if (qword_2804FAD48 != -1)
      {
        swift_once();
      }

      if (byte_2804FFF99 & 1) == 0 && (_UISolariumEnabled())
      {
LABEL_8:
        sub_26D39CDDC(0, v50);
      }
    }
  }

  else
  {
    v49 = v98;
  }

  v51 = sub_26D3484AC(&qword_2804FC980, &unk_2804FC970);
  v143 = v48;
  v144 = v51;
  v52 = swift_getWitnessTable();
  v53 = v95;
  sub_26D3A0BB8();
  (*(v96 + 8))(v53, v16);
  sub_26D3A08C8();
  v146 = v46;
  v147 = v47;
  sub_26D3A0D58();
  if (v145 == 1)
  {
    if (qword_2804FAD40 == -1)
    {
      if (byte_2804FFF98)
      {
        goto LABEL_16;
      }
    }

    else
    {
      swift_once();
      if (byte_2804FFF98)
      {
        goto LABEL_16;
      }
    }

    v88 = sub_26D33CD0C(v93, v92);
    if (byte_2804FFF98)
    {
      goto LABEL_19;
    }

    if (qword_2804FAD48 != -1)
    {
      swift_once();
    }

    if (byte_2804FFF99 & 1) == 0 && (_UISolariumEnabled())
    {
LABEL_19:
      sub_26D39CDDC(0, v88);
    }
  }

LABEL_16:
  v54 = MEMORY[0x277CDF918];
  v141 = v52;
  v142 = MEMORY[0x277CDF918];
  v55 = v101;
  v56 = swift_getWitnessTable();
  v57 = v99;
  sub_26D3A0BB8();
  (*(v100 + 8))(v49, v55);
  v139 = v56;
  v140 = v54;
  v58 = v103;
  v59 = swift_getWitnessTable();
  sub_26D394CB8();
  v60 = v104;
  sub_26D3A0A58();
  (*(v102 + 8))(v57, v58);
  sub_26D3A0EA8();
  v61 = sub_26D3484AC(&qword_2804FC990, &qword_2804FBF40);
  v137 = v59;
  v138 = v61;
  v89 = v106;
  v90 = swift_getWitnessTable();
  v62 = v107;
  sub_26D3A0B88();
  (*(v105 + 8))(v60, v89);
  v63 = v121;
  v64 = v120;
  v65 = v123;
  (*(v121 + 16))(v120, WitnessTable, v123);
  v66 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v67 = swift_allocObject();
  v68 = v97;
  *(v67 + 16) = v118;
  *(v67 + 24) = v68;
  (*(v63 + 32))(v67 + v66, v64, v65);
  v135 = v90;
  v136 = MEMORY[0x277CDFC60];
  v69 = v110;
  v70 = swift_getWitnessTable();
  v71 = *MEMORY[0x277CDF968];
  v72 = sub_26D3A01D8();
  v73 = v124;
  (*(*(v72 - 8) + 104))(v124, v71, v72);
  v74 = v111;
  sub_26D39D2AC(v73, sub_26D394E3C, v67, v69, v70, v111);

  sub_26D395548(v73, type metadata accessor for TFFrameTracker);
  (*(v108 + 8))(v62, v69);
  v75 = sub_26D39361C(&qword_2804FC1B8, type metadata accessor for TFFrameTracker);
  v133 = v70;
  v134 = v75;
  v76 = swift_getWitnessTable();
  v77 = sub_26D3484AC(&qword_2804FC7A0, &qword_2804FC1C0);
  v131 = v76;
  v132 = v77;
  v78 = v115;
  v79 = swift_getWitnessTable();
  v80 = v112;
  sub_26D3854E0(v78, v79);
  (*(v114 + 8))(v74, v78);
  v81 = sub_26D393574();
  v129 = v79;
  v130 = v81;
  v82 = v117;
  swift_getWitnessTable();
  v83 = v116;
  v84 = *(v116 + 16);
  v85 = v113;
  v84(v113, v80, v82);
  v86 = *(v83 + 8);
  v86(v80, v82);
  v84(v125, v85, v82);
  return (v86)(v85, v82);
}

uint64_t sub_26D38D4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC998);
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v7);
  v42 = &v42 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC968);
  v10 = MEMORY[0x28223BE20](v49, v9);
  v52 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v50 = &v42 - v14;
  v15 = *(a2 - 8);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26D3A0248();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v47 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v42 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v54 = &v42 - v29;
  (*(v15 + 16))(v18, a1, a2);
  v30 = (a1 + *(type metadata accessor for TFMenuLabel() + 36));
  v31 = *v30;
  v32 = *(v30 + 1);
  v44 = v31;
  LOBYTE(v58) = v31;
  v45 = v32;
  v59 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC750);
  sub_26D3A0D58();
  if (LOBYTE(v57[0]) == 1)
  {
    sub_26D3A0EB8();
  }

  else
  {
    sub_26D3A0EA8();
  }

  v33 = 1;
  sub_26D3A0B88();
  (*(v15 + 8))(v18, a2);
  v57[2] = a3;
  v57[3] = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v34 = *(v20 + 16);
  v34(v54, v27, v19);
  v35 = *(v20 + 8);
  v46 = v20 + 8;
  v35(v27, v19);
  LOBYTE(v58) = v44;
  v59 = v45;
  sub_26D3A0D58();
  v36 = v50;
  if (LOBYTE(v57[0]) == 1)
  {
    v37 = v42;
    sub_26D3897D8(v42);
    sub_26D347238(v37, v36, &qword_2804FC998);
    v33 = 0;
  }

  (*(v48 + 56))(v36, v33, 1, v51);
  v38 = v47;
  v39 = v54;
  v34(v47, v54, v19);
  v58 = v38;
  v40 = v52;
  sub_26D34856C(v36, v52, &qword_2804FC968);
  v59 = v40;
  v57[0] = v19;
  v57[1] = v49;
  v55 = WitnessTable;
  v56 = sub_26D394F38();
  sub_26D3836C4(&v58, 2uLL, v57);
  sub_26D3481A4(v36, &qword_2804FC968);
  v35(v39, v19);
  sub_26D3481A4(v40, &qword_2804FC968);
  return (v35)(v38, v19);
}

uint64_t sub_26D38D9E8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  CGRectGetWidth(*&a2);
  v6 = a1 + *(type metadata accessor for TFMenuLabel() + 44);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = sub_26D33CD0C(*v6, v8);
  sub_26D39C90C(v9);
  sub_26D33CD0C(v7, v8);
  v10 = sub_26D33CD0C(v7, v8);
  if (qword_2804FAD40 != -1)
  {
    swift_once();
  }

  if (byte_2804FFF98)
  {
    goto LABEL_4;
  }

  if (qword_2804FAD48 != -1)
  {
    swift_once();
  }

  if (byte_2804FFF99 & 1) == 0 && (_UISolariumEnabled())
  {
LABEL_4:
    sub_26D39CDDC(0, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC750);
  return sub_26D3A0D68();
}

uint64_t sub_26D38DB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26D395078();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_26D38DBFC@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FCA50);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v27 - v5;
  v7 = *(v1 + 8);
  v32 = *v1;
  v33 = v7;
  sub_26D37E6A4();

  v8 = sub_26D3A09C8();
  v10 = v9;
  v12 = v11;
  v13 = *(v1 + 24);
  v14 = *(v1 + 32);
  v32 = sub_26D3951D0(*(v1 + 16) & 1, v13, v14);
  v29 = sub_26D3A0998();
  v30 = v15;
  v17 = v16;
  v28 = v18;
  sub_26D37EDCC(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v20 = &v6[*(v3 + 44)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA60) + 28);
  v22 = *MEMORY[0x277CE0B28];
  v23 = sub_26D3A0988();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  *v6 = v29;
  *(v6 + 1) = v17;
  v6[16] = v28 & 1;
  *(v6 + 3) = v30;
  *(v6 + 4) = KeyPath;
  *(v6 + 5) = 1;
  v6[48] = 0;
  if (sub_26D33D0B8(v13, v14))
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.5;
  }

  v25 = v31;
  sub_26D347238(v6, v31, &unk_2804FCA50);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCA68);
  *(v25 + *(result + 36)) = v24;
  return result;
}

uint64_t sub_26D38DE5C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v80 = a3;
  LODWORD(v71) = a2;
  v79 = a5;
  v7 = sub_26D3A0738();
  v77 = *(v7 - 8);
  v78 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v76 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC900);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v64 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC908);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15, v17);
  v65 = &v64 - v18;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC910);
  MEMORY[0x28223BE20](v67, v19);
  v68 = &v64 - v20;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC918);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v21);
  v72 = &v64 - v22;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC920);
  MEMORY[0x28223BE20](v70, v23);
  v73 = &v64 - v24;
  v25 = sub_26D3A07C8();
  v26 = *(v25 - 8);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v64 - v32;
  v69 = v26;
  v34 = *(v26 + 16);
  v34(&v64 - v32, a1, v25);
  v35 = swift_allocObject();
  v36 = v71;
  *(v35 + 16) = v71;
  v66 = v36 & 1;
  *(v35 + 24) = v80;
  *(v35 + 32) = a4;
  v64 = a4;

  sub_26D3A07B8();
  v71 = v25;
  v34(v30, v33, v25);
  sub_26D3A0968();
  KeyPath = swift_getKeyPath();
  v38 = &v14[*(v11 + 44)];
  *v38 = KeyPath;
  v38[8] = 0;
  sub_26D3A0EA8();
  sub_26D3A0268();
  v39 = v14;
  v40 = v65;
  sub_26D347238(v39, v65, &qword_2804FC900);
  v41 = (v40 + *(v16 + 44));
  v42 = v89;
  v41[4] = v88;
  v41[5] = v42;
  v41[6] = v90;
  v43 = v85;
  *v41 = v84;
  v41[1] = v43;
  v44 = v87;
  v41[2] = v86;
  v41[3] = v44;
  if (qword_2804FAD48 != -1)
  {
    swift_once();
  }

  if (byte_2804FFF99)
  {
    v45 = 1;
    v46 = v76;
    v47 = v68;
    v48 = v67;
  }

  else
  {
    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    v46 = v76;
    v47 = v68;
    v48 = v67;
    if (byte_2804FFF98 == 1)
    {
      LOBYTE(v82) = v80 & 1;
      v83 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC750);
      sub_26D3A0D58();
      v45 = v81;
    }

    else
    {
      v45 = 0;
    }
  }

  v49 = sub_26D3A0138();
  sub_26D347238(v40, v47, &qword_2804FC908);
  v50 = v47 + *(v48 + 36);
  *v50 = v45;
  *(v50 + 1) = 0;
  *(v50 + 2) = v66;
  *(v50 + 8) = v49;
  sub_26D3A0298();
  if (qword_2804FAD40 != -1)
  {
    swift_once();
  }

  sub_26D394878();
  sub_26D39361C(&qword_2804FC7B8, MEMORY[0x277CDDFF8]);
  v51 = v72;
  v52 = v78;
  sub_26D3A0A38();
  (*(v77 + 8))(v46, v52);
  sub_26D3481A4(v47, &qword_2804FC910);
  if (byte_2804FFF98 == 1)
  {
    v53 = sub_26D3A0C48();
  }

  else
  {
    v53 = sub_26D3A0C78();
  }

  v54 = v53;
  v55 = swift_getKeyPath();
  v82 = v54;
  v56 = sub_26D3A00D8();
  v57 = v73;
  (*(v74 + 32))(v73, v51, v75);
  v58 = &v57[*(v70 + 36)];
  *v58 = v55;
  v58[1] = v56;
  v81 = 0;
  sub_26D3A0D48();
  (*(v69 + 8))(v33, v71);
  LOBYTE(v56) = v82;
  v59 = v83;
  v60 = v57;
  v61 = v79;
  sub_26D394C3C(v60, v79);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC960);
  v63 = v61 + *(result + 36);
  *v63 = v56;
  *(v63 + 8) = v59;
  return result;
}

__n128 sub_26D38E668@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_26D3A0C48();
  sub_26D3A0EA8();
  sub_26D3A0268();
  v4 = sub_26D3A0EA8();
  v6 = v5;
  v7 = type metadata accessor for TFAnimatedText(0);
  v8 = sub_26D33D0B8(*(v1 + *(v7 + 36)), *(v1 + *(v7 + 36) + 8));
  sub_26D38E7DC();
  if ((v8 & 1) == 0)
  {
    swift_getKeyPath();
  }

  sub_26D3950F8();
  sub_26D39514C();
  sub_26D3A0718();
  result = v10;
  *(a1 + 56) = v16;
  *(a1 + 72) = v17;
  *(a1 + 88) = v18;
  *(a1 + 104) = v19;
  *(a1 + 8) = v13;
  *(a1 + 24) = v14;
  *a1 = v3;
  *(a1 + 40) = v15;
  *(a1 + 120) = 0;
  *(a1 + 128) = v10;
  *(a1 + 144) = v11;
  *(a1 + 145) = v12;
  *(a1 + 152) = v4;
  *(a1 + 160) = v6;
  return result;
}

uint64_t sub_26D38E7DC()
{
  v1 = v0;
  v2 = sub_26D3A01E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = sub_26D3A0F68();
  v11 = [v7 animationWithName_];

  v12 = type metadata accessor for TFAnimatedText(0);
  sub_26D33DB2C(v6);
  if (v8 == 6777186 && v9 == 0xE300000000000000 || (v13 = 0, (sub_26D3A1518() & 1) != 0))
  {
    v13 = sub_26D33D0B8(*(v1 + *(v12 + 36)), *(v1 + *(v12 + 36) + 8));
  }

  v14 = sub_26D33D278(*(v1 + *(v12 + 40)), *(v1 + *(v12 + 40) + 8));
  v15 = sub_26D38E9A4(v6, v11, v13 & 1, v14);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v6, v2);
  return v15;
}

uint64_t sub_26D38E9A4(unint64_t a1, char *a2, int a3, double a4)
{
  v79 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC9C8);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v74 - v10;
  v12 = sub_26D3A0018();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v74 - v19;
  v21 = *(type metadata accessor for TFAnimatedText(0) + 44);
  v77 = v4;
  LOBYTE(v22) = sub_26D33CD0C(*(v4 + v21), *(v4 + v21 + 8));
  if (qword_2804FAD40 != -1)
  {
LABEL_37:
    swift_once();
  }

  if (byte_2804FFF98)
  {
    goto LABEL_3;
  }

  if (qword_2804FAD48 != -1)
  {
    swift_once();
  }

  if (byte_2804FFF99 & 1) == 0 && (_UISolariumEnabled())
  {
LABEL_3:
    sub_26D39CDDC(0, v22);
    v24 = v23 * 0.75;
    if (*(v77 + 32))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v24 = 12.0;
    if (*(v77 + 32))
    {
      goto LABEL_11;
    }
  }

  sub_26D33D8A4(v20);
  (v13[13])(v17, *MEMORY[0x277CDF3C0], v12);
  v25 = sub_26D3A0008();
  v26 = v13[1];
  v26(v17, v12);
  v26(v20, v12);
  if ((v25 & 1) == 0)
  {
    sub_26D345E5C(0, &unk_2804FC9D0);
    sub_26D3A0C78();
    v27 = sub_26D3A1338();
    goto LABEL_13;
  }

LABEL_11:
  v27 = [objc_opt_self() whiteColor];
LABEL_13:
  v28 = v27;
  v29 = objc_opt_self();
  v30 = *MEMORY[0x277D76A28];
  v31 = sub_26D3A01E8();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v11, a1, v31);
  (*(v32 + 56))(v11, 0, 1, v31);
  v33 = sub_26D3A11A8();
  v34 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];

  v35 = [v29 preferredFontForTextStyle:v30 compatibleWithTraitCollection:v34];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB758);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26D3A22A0;
  v37 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v38 = sub_26D345E5C(0, &qword_2804FAED0);
  *(inited + 40) = v35;
  v39 = *MEMORY[0x277D740C0];
  v76 = v38;
  *(inited + 64) = v38;
  *(inited + 72) = v39;
  *(inited + 104) = sub_26D345E5C(0, &unk_2804FC9D0);
  *(inited + 80) = v28;
  v22 = v35;
  v40 = v37;
  v41 = v39;
  v42 = v28;
  v43 = sub_26D358BAC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC9E0);
  swift_arrayDestroy();
  v74 = v42;
  if (a2)
  {
    v44 = *MEMORY[0x277D74170];
    ObjectType = swift_getObjectType();
    *&v82 = a2;
    sub_26D34855C(&v82, v81);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v43;
    sub_26D357A08(v81, v44, isUniquelyReferenced_nonNull_native);
    v43 = v80;
  }

  v20 = 0;
  a4 = a4 - v24;
  a1 = 0x277CCA000uLL;
  v13 = &off_279D9B000;
  v75 = v40;
  while (1)
  {
    a2 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];

    ObjectType = v76;
    *&v82 = v22;
    sub_26D34855C(&v82, v81);
    v11 = v22;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v43;
    v12 = sub_26D33F3DC(v40);
    v47 = v43[2];
    v48 = (v46 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    LOBYTE(v22) = v46;
    if (v43[3] >= v49)
    {
      if ((v17 & 1) == 0)
      {
        sub_26D33FB94();
      }
    }

    else
    {
      sub_26D3404F4(v49, v17);
      v50 = sub_26D33F3DC(v40);
      if ((v22 & 1) != (v51 & 1))
      {
        goto LABEL_40;
      }

      v12 = v50;
    }

    v43 = v80;
    if (v22)
    {
      v52 = (v80[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0(v52);
      sub_26D34855C(v81, v52);
    }

    else
    {
      v80[(v12 >> 6) + 8] |= 1 << v12;
      *(v43[6] + 8 * v12) = v40;
      sub_26D34855C(v81, (v43[7] + 32 * v12));
      v53 = v43[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        goto LABEL_36;
      }

      v43[2] = v55;
      v56 = v40;
    }

    v20 = a2;
    v78 = v11;
    if ((v79 & 1) == 0)
    {
      break;
    }

    if (!a2)
    {
      goto LABEL_39;
    }

    v57 = objc_allocWithZone(*(a1 + 2200));
    v58 = sub_26D3A0F68();
    type metadata accessor for Key(0);
    sub_26D39361C(&qword_2804FB510, type metadata accessor for Key);
    v59 = a1;
    v60 = sub_26D3A0F18();
    v13 = &off_279D9B000;
    v61 = [v57 initWithString:v58 attributes:{v60, v74}];

    [a2 appendAttributedString_];
LABEL_30:
    v62 = objc_allocWithZone(*(v59 + 2200));
    v63 = sub_26D3A0F68();
    type metadata accessor for Key(0);
    sub_26D39361C(&qword_2804FB510, type metadata accessor for Key);
    v64 = sub_26D3A0F18();
    v65 = [v62 v13[352]];

    [a2 appendAttributedString_];
    a1 = v59;
    if (v79)
    {
      v66 = objc_allocWithZone(*(v59 + 2200));
      v67 = sub_26D3A0F68();
      v68 = [v66 initWithString_];

      [a2 appendAttributedString_];
    }

    v69 = v78;
    [v78 pointSize];
    v22 = [v69 fontWithSize_];

    [a2 size];
    v13 = &off_279D9B000;
    v40 = v75;
    if (a4 < v71)
    {
      [v22 pointSize];
      if (v72 > 8.0)
      {
        continue;
      }
    }

    return a2;
  }

  v59 = a1;
  if (a2)
  {
    goto LABEL_30;
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  type metadata accessor for Key(0);
  result = sub_26D3A1548();
  __break(1u);
  return result;
}

unsigned __int8 *sub_26D38F314(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for _UIAnimatedTextView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_allocWithZone(ObjCClassFromMetadata) initReadonlyAndUnselectableWithFrame:0 textContainer:{0.0, 0.0, 0.0, 0.0}];
  if (!v8)
  {
    v8 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  }

  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 clearColor];
  [v10 setBackgroundColor_];

  v12 = v10;
  [v12 setSelectable_];
  [v12 setEditable_];
  v13 = [v12 textLayoutManager];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 textContainer];

    if (v15)
    {
      [v15 setMaximumNumberOfLines_];
    }
  }

  v16 = *MEMORY[0x277D768C8];
  v17 = *(MEMORY[0x277D768C8] + 8);
  v18 = *(MEMORY[0x277D768C8] + 16);
  v19 = *(MEMORY[0x277D768C8] + 24);
  v20 = v12;
  [v20 setContentInset_];
  [v20 setAttributedText_];
  [v20 setTextAlignment_];
  [v20 setContentInset_];

  sub_26D38FD64(0, 1);
  if (sub_26D33D0B8(a3, a4 & 1))
  {
    v21 = v20[OBJC_IVAR____TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView_shouldAnimate];
    v20[OBJC_IVAR____TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView_shouldAnimate] = 0;
    if (v21 == 1)
    {
      [v20 setAllowsTextAnimations_];
      v22 = [v20 textLayoutManager];
      if (v22)
      {
        v23 = v22;
        v24 = sub_26D3A1098();
        v25 = sub_26D3A0F68();
        [v23 setValue:v24 forKey:v25];
      }
    }
  }

  else
  {
    sub_26D38F9DC();
  }

  return v20;
}

void sub_26D38F5D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  [a1 setAttributedText_];
  [a1 setTextAlignment_];
  type metadata accessor for _UIAnimatedTextView();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v15 = a1;
    sub_26D38FD64(0, 1);
    if (sub_26D33D0B8(a4, a5 & 1))
    {
      v10 = v9[OBJC_IVAR____TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView_shouldAnimate];
      v9[OBJC_IVAR____TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView_shouldAnimate] = 0;
      if (v10 == 1)
      {
        [v9 setAllowsTextAnimations_];
        v11 = [v9 textLayoutManager];
        if (v11)
        {
          v12 = v11;
          v13 = sub_26D3A1098();
          v14 = sub_26D3A0F68();
          [v12 setValue:v13 forKey:v14];
        }
      }
    }

    else
    {
      sub_26D38F9DC();
    }
  }
}

uint64_t sub_26D38F760(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a2 | a4))
  {
    return 0;
  }

  type metadata accessor for _UIAnimatedTextView();
  if (swift_dynamicCastClass())
  {
    sub_26D38FD64(a3, 0);
  }

  return a1;
}

uint64_t sub_26D38F7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26D3978A0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_26D38F844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26D3978A0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_26D38F8A8()
{
  sub_26D3978A0();
  sub_26D3A06D8();
  __break(1u);
}

uint64_t sub_26D38F9DC()
{
  result = [v0 attributedText];
  if (result)
  {
    v2 = result;
    v3 = [result attribute:*MEMORY[0x277D74170] atIndex:0 effectiveRange:0];

    if (v3)
    {
      sub_26D3A1378();
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    v13 = v18;
    v14 = v19;
    if (*(&v19 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC3C0);
      result = swift_dynamicCast();
      if (result)
      {
        v4 = v17;
        v5 = *(v0 + OBJC_IVAR____TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView_shouldAnimate);
        *(v0 + OBJC_IVAR____TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView_shouldAnimate) = 1;
        if ((v5 & 1) == 0)
        {
          [v0 setAllowsTextAnimations_];
          v6 = [v0 textLayoutManager];
          if (v6)
          {
            v7 = v6;
            v8 = sub_26D3A1098();
            v9 = sub_26D3A0F68();
            [v7 setValue:v8 forKey:v9];
          }
        }

        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v15 = sub_26D39024C;
        v16 = v10;
        *&v13 = MEMORY[0x277D85DD0];
        *(&v13 + 1) = 1107296256;
        *&v14 = sub_26D38FD04;
        *(&v14 + 1) = &block_descriptor;
        v11 = _Block_copy(&v13);

        v12 = [v0 _animatorForTextAnimation_notify_];
        _Block_release(v11);
        if (v12)
        {
          [v12 start];
          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      return sub_26D3481A4(&v13, &qword_2804FB7A0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26D38FC74(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + OBJC_IVAR____TtC16TextFormattingUIP33_765D2D84B42F2E34C8687CE391E4C01F19_UIAnimatedTextView_shouldAnimate) == 1 && [a1 state] == 1)
    {
      [a1 start];
    }
  }
}

uint64_t sub_26D38FD04(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id sub_26D38FD64(uint64_t a1, char a2)
{
  result = [v2 attributedText];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  v7 = [result string];

  v8 = sub_26D3A0F98();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    result = [v2 attributedText];
    if (result)
    {
      v12 = result;
      v13 = [result attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];

      if (v13)
      {
        sub_26D3A1378();
        swift_unknownObjectRelease();
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
      }

      v29[0] = v27;
      v29[1] = v28;
      if (*(&v28 + 1))
      {
        sub_26D345E5C(0, &qword_2804FAED0);
        if (swift_dynamicCast())
        {
          [v26 ascender];
          v15 = v14;
          [v26 descender];
          v17 = v16;

          v18 = v15 + fabs(v17);
          if ((a2 & 1) == 0)
          {
LABEL_12:
            Height = *&a1;
            return [v2 setTextContainerInset_];
          }

LABEL_18:
          [v2 bounds];
          Height = CGRectGetHeight(v30);
          return [v2 setTextContainerInset_];
        }
      }

      else
      {
        sub_26D3481A4(v29, &qword_2804FB7A0);
      }

      result = [v2 attributedText];
      if (result)
      {
        v20 = result;
        result = [result string];
        if (result)
        {
          v21 = result;

          result = [v2 attributedText];
          if (result)
          {
            v22 = result;
            v23 = [result attributesAtIndex:0 effectiveRange:0];

            type metadata accessor for Key(0);
            sub_26D39361C(&qword_2804FB510, type metadata accessor for Key);
            sub_26D3A0F28();

            v24 = sub_26D3A0F18();

            [v21 sizeWithAttributes_];
            v18 = v25;

            if ((a2 & 1) == 0)
            {
              goto LABEL_12;
            }

            goto LABEL_18;
          }

LABEL_25:
          __break(1u);
          return result;
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

  return result;
}

id sub_26D3901B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIAnimatedTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26D390214()
{
  MEMORY[0x26D6BE5A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_26D39026C()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor_];

  [v4 setAttributedText_];
  [v4 setTextAlignment_];
  return v4;
}

double sub_26D390340(uint64_t a1, char a2)
{
  [*v2 size];
  v6 = *&a1;
  if (a2)
  {
    v6 = result;
  }

  if (v6 < result)
  {
    return v6;
  }

  return result;
}

uint64_t sub_26D3903D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26D3978F4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_26D390438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26D3978F4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_26D39049C()
{
  sub_26D3978F4();
  sub_26D3A06D8();
  __break(1u);
}

uint64_t sub_26D3904C4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC9E8) + 36);
  v11 = type metadata accessor for TFComponentBackground(0);
  *(v10 + v11[10]) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB310);
  swift_storeEnumTagMultiPayload();
  v12 = swift_getKeyPath();
  v13 = swift_getKeyPath();
  *v10 = a2 & 1;
  *(v10 + 1) = BYTE1(a2) & 1;
  *(v10 + 2) = BYTE2(a2) & 1;
  *(v10 + 3) = HIBYTE(a2) & 1;
  *(v10 + 8) = a3;
  *(v10 + 16) = KeyPath;
  *(v10 + 24) = 0;
  v14 = v10 + v11[11];
  *v14 = v12;
  *(v14 + 8) = 0;
  v15 = v10 + v11[12];
  *v15 = v13;
  *(v15 + 8) = 0;
  v16 = v10 + v11[13];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = v10 + v11[14];
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  v18 = v10 + v11[15];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;

  v19 = sub_26D3A0EA8();
  v21 = v20;
  v22 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC870) + 36));
  *v22 = v19;
  v22[1] = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC9F0);
  v24 = *(*(v23 - 8) + 16);

  return v24(a4, a1, v23);
}

uint64_t sub_26D3906C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *v2;
  if (v2[2])
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  if (v2[3])
  {
    v6 = 0x1000000;
  }

  else
  {
    v6 = 0;
  }

  return sub_26D3904C4(a1, v4 | v5 | v6, *(v2 + 1), a2);
}

double sub_26D39070C@<D0>(uint64_t a1@<X8>)
{
  if ((*v1 & 1) != 0 || (v3 = type metadata accessor for TFComponentBackground(0), (sub_26D33D0B8(*&v1[*(v3 + 48)], v1[*(v3 + 48) + 8]) & 1) == 0))
  {
    v4 = 0;
  }

  else
  {
    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    v4 = byte_2804FFF98 ^ 1;
  }

  v5 = sub_26D3A0C48();
  v6 = sub_26D3A0EA8();
  v8 = v7;
  sub_26D390864(v1, v4 & 1, &v13);
  v17[0] = v13;
  v17[1] = v14;
  v17[2] = v15;
  v17[3] = v16;
  *&v18 = v6;
  *(&v18 + 1) = v8;
  v24 = v15;
  v25 = v16;
  v22 = v13;
  v23 = v14;
  v26 = v18;
  v19[0] = v13;
  v19[1] = v14;
  v19[2] = v15;
  v19[3] = v16;
  v20 = v6;
  v21 = v8;
  sub_26D34856C(v17, &v12, &qword_2804FCCA8);
  sub_26D3481A4(v19, &qword_2804FCCA8);
  *a1 = v5;
  v9 = v22;
  *(a1 + 24) = v23;
  v10 = v25;
  *(a1 + 40) = v24;
  *(a1 + 56) = v10;
  result = *&v26;
  *(a1 + 72) = v26;
  *(a1 + 8) = v9;
  return result;
}

uint64_t sub_26D390864@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (*a1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    result = 0;
    v10 = 0;
    v11 = 0uLL;
  }

  else
  {
    if (*(a1 + 1))
    {
      v14 = sub_26D390988();
    }

    else
    {
      v14 = sub_26D390CB4();
    }

    v4 = v14;
    v7 = sub_26D3A0EA8();
    v8 = v15;
    v5 = sub_26D3A0788();
    v16 = 0uLL;
    if (*(a1 + 3))
    {
      v17 = sub_26D33CD0C(*(a1 + 16), *(a1 + 24));
      v18 = type metadata accessor for TFComponentBackground(0);
      v19 = sub_26D33D0B8(*(a1 + *(v18 + 60)), *(a1 + *(v18 + 60) + 8));
      sub_26D39CDDC(v19 & 1, v17);
      *(&v16 + 1) = v20;
    }

    v21 = v16;
    if (a2)
    {
      v6 = 1056964608;
    }

    else
    {
      v6 = 0;
    }

    v11 = v21;
    v10 = 256;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 12) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v11;
  *(a3 + 48) = v10;
  *(a3 + 56) = result;
  return result;
}

uint64_t sub_26D390988()
{
  v1 = sub_26D3A0018();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v24 - v9;
  if (qword_2804FAD40 != -1)
  {
    v23 = v8;
    swift_once();
    v8 = v23;
  }

  if (byte_2804FFF98 != 1)
  {
    if (*(v0 + 2) == 1)
    {
      v14 = v8;
      type metadata accessor for TFComponentBackground(0);
      v15 = v0;
      sub_26D33D8A4(v10);
      (*(v2 + 104))(v6, *MEMORY[0x277CDF3C0], v14);
      v16 = sub_26D3A0008();
      v17 = *(v2 + 8);
      v17(v6, v14);
      v17(v10, v14);
      v18 = objc_opt_self();
      if (v16)
      {
        v19 = [v18 systemGray3Color];
      }

      else
      {
        v20 = [v18 systemGray2Color];
      }

      sub_26D3A0C18();
      sub_26D33CD0C(*(v15 + 16), *(v15 + 24));
      v21 = sub_26D3A0C68();

      v25 = v21;
      return sub_26D3A00D8();
    }

LABEL_12:
    v25 = sub_26D3A0C28();
    return sub_26D3A00D8();
  }

  if ((sub_26D33CD0C(*(v0 + 16), *(v0 + 24)) - 2) <= 2u && (*(v0 + 2) & 1) == 0)
  {
    goto LABEL_12;
  }

  v11 = type metadata accessor for TFComponentBackground(0);
  v12 = sub_26D33D0B8(*(v0 + *(v11 + 52)), *(v0 + *(v11 + 52) + 8));
  v13 = 0.5;
  if (v12)
  {
    v13 = 1.0;
  }

  *&v25 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FCCB0);
  sub_26D3484AC(&qword_2804FCCB8, &qword_2804FCCB0);
  return sub_26D3A00D8();
}