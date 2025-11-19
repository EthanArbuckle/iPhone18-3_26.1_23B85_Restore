uint64_t sub_22070314C(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v59 = a2;
  v56 = a4;
  v54 = a3;
  v62 = sub_22088A1FC();
  v55 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v5);
  v57 = v6;
  v65 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_22088A2FC();
  v58 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v7);
  v53 = v8;
  v63 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_220705E20(0, &unk_2812984A0, MEMORY[0x277D686A0], MEMORY[0x277D83D88]);
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v61 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v45 - v15;
  sub_220705E20(0, &qword_27CF58F18, MEMORY[0x277D68340], v9);
  v51 = *(v17 - 8);
  v18 = *(v51 + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v60 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v45 - v22;
  v24 = *a1;
  swift_getObjectType();
  v25 = [v24 sourceChannel];
  if (v25)
  {
    v26 = v25;
    __swift_project_boxed_opaque_existential_1(v59 + 3, v59[6]);
    sub_2206EC95C(v26);
    swift_unknownObjectRelease();
    v27 = sub_2208891DC();
    (*(*(v27 - 8) + 56))(v23, 0, 1, v27);
  }

  else
  {
    v28 = sub_2208891DC();
    (*(*(v28 - 8) + 56))(v23, 1, 1, v28);
  }

  sub_2206F61F0(v16);
  v29 = sub_2208895EC();
  v30 = *(*(v29 - 8) + 56);
  v50 = v16;
  v30(v16, 0, 1, v29);
  v31 = v59;
  v49 = v59[2];
  v47 = MEMORY[0x277D686A0];
  sub_220704280(v16, v61, &unk_2812984A0, MEMORY[0x277D686A0]);
  v46 = MEMORY[0x277D68340];
  v48 = v23;
  sub_220704280(v23, v60, &qword_27CF58F18, MEMORY[0x277D68340]);
  v32 = v58;
  (*(v58 + 16))(v63, v54, v64);
  v33 = v55;
  (*(v55 + 16))(v65, v56, v62);
  v34 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v35 = (v11 + *(v51 + 80) + v34) & ~*(v51 + 80);
  v36 = (v18 + *(v32 + 80) + v35) & ~*(v32 + 80);
  v37 = (v53 + *(v33 + 80) + v36) & ~*(v33 + 80);
  v38 = (v57 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v40 = v39 + v34;
  v41 = v47;
  sub_220704300(v61, v40, &unk_2812984A0, v47);
  v42 = v39 + v35;
  v43 = v46;
  sub_220704300(v60, v42, &qword_27CF58F18, v46);
  (*(v32 + 32))(v39 + v36, v63, v64);
  (*(v33 + 32))(v39 + v37, v65, v62);
  *(v39 + v38) = v31;

  sub_22088726C();

  sub_220704384(v50, &unk_2812984A0, v41);
  return sub_220704384(v48, &qword_27CF58F18, v43);
}

uint64_t sub_22070372C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  v49 = a2;
  v62 = sub_22088A1FC();
  v57 = *(v62 - 8);
  v60 = *(v57 + 64);
  MEMORY[0x28223BE20](v62, v5);
  v61 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088A2FC();
  v45 = v7;
  v55 = *(v7 - 8);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v10;
  v52 = MEMORY[0x277D68340];
  v11 = MEMORY[0x277D83D88];
  sub_220705E20(0, &qword_27CF58F18, MEMORY[0x277D68340], MEMORY[0x277D83D88]);
  v54 = *(v12 - 8);
  v13 = *(v54 + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v46 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v44 - v17;
  v19 = MEMORY[0x277D686A0];
  v44 = MEMORY[0x277D686A0];
  sub_220705E20(0, &unk_2812984A0, MEMORY[0x277D686A0], v11);
  v48 = *(v20 - 8);
  v21 = *(v48 + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v23 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v44 - v26;
  v28 = sub_2208895EC();
  v29 = *(*(v28 - 8) + 56);
  v53 = v27;
  v29(v27, 1, 1, v28);
  v30 = sub_2208891DC();
  v31 = *(*(v30 - 8) + 56);
  v50 = v18;
  v31(v18, 1, 1, v30);
  v51 = *(a2 + 16);
  sub_220704280(v27, v23, &unk_2812984A0, v19);
  v32 = v52;
  sub_220704280(v18, &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27CF58F18, v52);
  v33 = v55;
  (*(v55 + 16))(v10, v58, v7);
  v34 = v57;
  (*(v57 + 16))(v61, v59, v62);
  v35 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v36 = (v21 + *(v54 + 80) + v35) & ~*(v54 + 80);
  v37 = (v13 + *(v33 + 80) + v36) & ~*(v33 + 80);
  v38 = (v56 + *(v34 + 80) + v37) & ~*(v34 + 80);
  v39 = (v60 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v40 + v35;
  v42 = v44;
  sub_220704300(v23, v41, &unk_2812984A0, v44);
  sub_220704300(v46, v40 + v36, &qword_27CF58F18, v32);
  (*(v33 + 32))(v40 + v37, v47, v45);
  (*(v34 + 32))(v40 + v38, v61, v62);
  *(v40 + v39) = v49;

  sub_22088726C();

  sub_220704384(v50, &qword_27CF58F18, v32);
  return sub_220704384(v53, &unk_2812984A0, v42);
}

void *sub_220703C4C(void *a1)
{
  v1 = a1;
  sub_22058D5E8();
  type metadata accessor for SKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_220705E84(&unk_27CF58F60, 255, type metadata accessor for SKError);
  sub_220884CFC();

  return v3;
}

uint64_t sub_220703D18@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v45 = *v3;
  v46 = a2;
  v5 = sub_22088A5BC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088A07C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = &v41 - v18;
  (*(v6 + 16))(v9, a1, v5, v17);
  if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D35330])
  {
    v20 = *MEMORY[0x277D68F98];
    v43 = *(v11 + 104);
    v43(v19, v20, v10);
    sub_22088721C();
    sub_22046DA2C((v3 + 3), v49);
    sub_22046DA2C((v3 + 8), v48);
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
    v44 = &v41;
    v22 = MEMORY[0x28223BE20](v21, v21);
    v24 = (&v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24, v22);
    v26 = *v24;
    v27 = type metadata accessor for AnalyticsChannelDataFactory();
    v47[3] = v27;
    v47[4] = &off_28341D2B0;
    v47[0] = v26;
    v42 = v19;
    v28 = v45;
    v29 = swift_allocObject();
    v30 = __swift_mutable_project_boxed_opaque_existential_1(v47, v27);
    v31 = MEMORY[0x28223BE20](v30, v30);
    v33 = (&v41 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v34 + 16))(v33, v31);
    v35 = *v33;
    v29[6] = v27;
    v29[7] = &off_28341D2B0;
    v29[3] = v35;
    v43(v14, *MEMORY[0x277D68FA0], v10);
    v36 = sub_22088721C();

    v37 = *(v11 + 8);
    v37(v14, v10);
    v29[2] = v36;
    sub_220458198(v48, (v29 + 8));
    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(v49);
    v38 = v46;
    v46[3] = v28;
    v38[4] = sub_220705E84(&unk_281288E80, v39, type metadata accessor for PurchaseTransactionTracker);
    *v38 = v29;
    return (v37)(v42, v10);
  }

  else
  {
    result = sub_22089267C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2207041F0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_220704280(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220705E20(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_220704300(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220705E20(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_220704384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220705E20(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22070445C(void **a1)
{
  v3 = *(sub_22088A2FC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_22088A1FC() - 8);
  return sub_22070314C(a1, *(v1 + 16), v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

uint64_t objectdestroy_3Tm_1()
{
  v1 = sub_22088A2FC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_22088A1FC();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_220704690(uint64_t a1)
{
  v3 = *(sub_22088A2FC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_22088A1FC() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_22070372C(a1, v7, v1 + v4, v8);
}

uint64_t objectdestroyTm_9()
{
  v1 = MEMORY[0x277D83D88];
  sub_220705E20(0, &unk_2812984A0, MEMORY[0x277D686A0], MEMORY[0x277D83D88]);
  v23 = *(*(v2 - 8) + 80);
  v3 = (v23 + 16) & ~v23;
  v4 = *(*(v2 - 8) + 64);
  sub_220705E20(0, &qword_27CF58F18, MEMORY[0x277D68340], v1);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v20 = *(*(v5 - 8) + 64);
  v22 = sub_22088A2FC();
  v8 = *(v22 - 8);
  v9 = *(v8 + 80);
  v19 = *(v8 + 64);
  v21 = sub_22088A1FC();
  v10 = *(v21 - 8);
  v11 = *(v10 + 80);
  v12 = sub_2208895EC();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v3, 1, v12))
  {
    (*(v13 + 8))(v0 + v3, v12);
  }

  v14 = sub_2208891DC();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v7, 1, v14))
  {
    (*(v15 + 8))(v0 + v7, v14);
  }

  v16 = (v7 + v20 + v9) & ~v9;
  v17 = (v16 + v19 + v11) & ~v11;
  (*(v8 + 8))(v0 + v16, v22);
  (*(v10 + 8))(v0 + v17, v21);

  return swift_deallocObject();
}

uint64_t sub_220704AE8(uint64_t a1)
{
  v3 = MEMORY[0x277D83D88];
  sub_220705E20(0, &unk_2812984A0, MEMORY[0x277D686A0], MEMORY[0x277D83D88]);
  v5 = (*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  sub_220705E20(0, &qword_27CF58F18, MEMORY[0x277D68340], v3);
  v8 = (v5 + v6 + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  v9 = *(*(v7 - 8) + 64);
  v10 = *(sub_22088A2FC() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_22088A1FC() - 8);
  v14 = v1 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80));

  return sub_220701268(a1, v1 + v5, v1 + v8, v1 + v11, v14);
}

void sub_220704CFC(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v3 = sub_22088941C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088984C();
  v9 = *(v8 - 8);
  v37 = v8;
  v38 = v9;
  MEMORY[0x28223BE20](v8, v10);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D350B8];
  sub_220705E20(0, &unk_27CF58F20, MEMORY[0x277D350B8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v35 - v15;
  v17 = sub_22088A4FC();
  MEMORY[0x28223BE20](v17, v18);
  v20 = (&v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v35 - v23;
  v25 = v12;
  v27 = v26;
  sub_220704280(a2, v16, &unk_27CF58F20, v25);
  if ((*(v27 + 48))(v16, 1, v17) == 1)
  {
    sub_220704384(v16, &unk_27CF58F20, MEMORY[0x277D350B8]);
  }

  else
  {
    (*(v27 + 32))(v24, v16, v17);
    (*(v27 + 16))(v20, v24, v17);
    v28 = (*(v27 + 88))(v20, v17);
    if (v28 == *MEMORY[0x277D350A8])
    {
      (*(v27 + 96))(v20, v17);
      v29 = *v20;
      switch(sub_220703C4C(*v20))
      {
        case 0uLL:
          (*(v4 + 104))(v7, *MEMORY[0x277D68540], v3);
          v30 = v36;
          sub_22088983C();
          sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
          goto LABEL_30;
        case 1uLL:
          (*(v4 + 104))(v7, *MEMORY[0x277D684A0], v3);
          v30 = v36;
          sub_22088983C();
          sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
          goto LABEL_30;
        case 2uLL:
          (*(v4 + 104))(v7, *MEMORY[0x277D684D0], v3);
          v30 = v36;
          sub_22088983C();
          sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
          goto LABEL_30;
        case 3uLL:
          (*(v4 + 104))(v7, *MEMORY[0x277D684B8], v3);
          v30 = v36;
          sub_22088983C();
          sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
          goto LABEL_30;
        case 4uLL:
          (*(v4 + 104))(v7, *MEMORY[0x277D684E0], v3);
          v30 = v36;
          sub_22088983C();
          sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
          goto LABEL_30;
        case 5uLL:
          (*(v4 + 104))(v7, *MEMORY[0x277D68518], v3);
          v30 = v36;
          sub_22088983C();
          sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
          goto LABEL_30;
        case 6uLL:
          (*(v4 + 104))(v7, *MEMORY[0x277D68528], v3);
          v30 = v36;
          sub_22088983C();
          sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
          goto LABEL_30;
        case 7uLL:
          (*(v4 + 104))(v7, *MEMORY[0x277D68538], v3);
          v30 = v36;
          sub_22088983C();
          sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
          goto LABEL_30;
        case 8uLL:
          (*(v4 + 104))(v7, *MEMORY[0x277D684F8], v3);
          v30 = v36;
          sub_22088983C();
          sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
          goto LABEL_30;
        case 9uLL:
          (*(v4 + 104))(v7, *MEMORY[0x277D68530], v3);
          v30 = v36;
          sub_22088983C();
          sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
          goto LABEL_30;
        case 0xAuLL:
          (*(v4 + 104))(v7, *MEMORY[0x277D68510], v3);
          v30 = v36;
          sub_22088983C();
          sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
          goto LABEL_30;
        case 0xBuLL:
          (*(v4 + 104))(v7, *MEMORY[0x277D68508], v3);
          v30 = v36;
          sub_22088983C();
          sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
          goto LABEL_30;
        case 0xCuLL:
          (*(v4 + 104))(v7, *MEMORY[0x277D684C0], v3);
          v30 = v36;
          sub_22088983C();
          sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
          goto LABEL_30;
        case 0xDuLL:
          (*(v4 + 104))(v7, *MEMORY[0x277D684F0], v3);
          v30 = v36;
          sub_22088983C();
          sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
          goto LABEL_30;
        case 0xEuLL:
          (*(v4 + 104))(v7, *MEMORY[0x277D684D8], v3);
          v30 = v36;
          sub_22088983C();
          sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
          goto LABEL_30;
        case 0xFuLL:
          (*(v4 + 104))(v7, *MEMORY[0x277D684C8], v3);
          v30 = v36;
          sub_22088983C();
          sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
          goto LABEL_30;
        case 0x10uLL:
          (*(v4 + 104))(v7, *MEMORY[0x277D68520], v3);
          v30 = v36;
          sub_22088983C();
          sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
          goto LABEL_30;
        case 0x11uLL:
          (*(v4 + 104))(v7, *MEMORY[0x277D684B0], v3);
          v30 = v36;
          sub_22088983C();
          sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
          goto LABEL_30;
        case 0x12uLL:
          (*(v4 + 104))(v7, *MEMORY[0x277D684E8], v3);
          v30 = v36;
          sub_22088983C();
          sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
          goto LABEL_30;
        case 0x13uLL:
          (*(v4 + 104))(v7, *MEMORY[0x277D68500], v3);
          v30 = v36;
          sub_22088983C();
          sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
LABEL_30:
          v34 = v37;
          sub_220886F1C();

          (*(v38 + 8))(v30, v34);
          goto LABEL_31;
        default:
          (*(v27 + 8))(v24, v17);

          return;
      }
    }

    if (v28 == *MEMORY[0x277D350A0] || v28 != *MEMORY[0x277D350B0])
    {
      v33 = *(v27 + 8);
      v33(v24, v17);
      v33(v20, v17);
    }

    else
    {
      (*(v4 + 104))(v7, *MEMORY[0x277D684A8], v3);
      v31 = v36;
      sub_22088983C();
      sub_220705E84(&unk_27CF58F50, 255, MEMORY[0x277D68810]);
      v32 = v37;
      sub_220886F1C();
      (*(v38 + 8))(v31, v32);
LABEL_31:
      (*(v27 + 8))(v24, v17);
    }
  }
}

void sub_220705E20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_220705E84(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for ForYouFeedMastheadView()
{
  result = qword_28128CC80;
  if (!qword_28128CC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_220705F94(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = qword_28128CC98;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = qword_28128CC90;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12 = qword_28128CCA0;
  *&v4[v12] = [objc_allocWithZone(sub_22088A26C()) initWithFrame_];
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = qword_28128CC98;
  v15 = *&v13[qword_28128CC98];
  v16 = v13;
  [v16 addSubview_];
  [v16 addSubview_];
  [v16 addSubview_];
  [*&v13[v14] setAccessibilityTraits_];

  return v16;
}

void sub_220706168()
{
  v1 = *(v0 + qword_28128CCA0);
}

void sub_2207061B8(uint64_t a1)
{
  v2 = *(a1 + qword_28128CCA0);
}

void sub_220706220()
{
  v1 = qword_28128CC98;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = qword_28128CC90;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = qword_28128CCA0;
  *(v0 + v3) = [objc_allocWithZone(sub_22088A26C()) initWithFrame_];
  sub_22089267C();
  __break(1u);
}

uint64_t sub_220706324(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  sub_22048D7F8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_220899360;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_22048D860();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v7 = sub_22089139C();

  return v7;
}

uint64_t sub_220706460(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  sub_22048D7F8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_220899360;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_22048D860();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v7 = sub_22089139C();

  return v7;
}

uint64_t sub_2207065AC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_22070666C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

unint64_t sub_220706730()
{
  result = qword_28128DE08[0];
  if (!qword_28128DE08[0])
  {
    type metadata accessor for ForYouFeedLayoutModel();
    result = swift_getWitnessTable();
    atomic_store(result, qword_28128DE08);
  }

  return result;
}

uint64_t sub_220706794()
{
  v0 = sub_22088FD8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ForYouFeedLayoutModel();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F63C4();
  sub_22088BC3C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_220706928(v8);
  }

  (*(v1 + 32))(v4, v8, v0);
  sub_22088F69C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_220706928(uint64_t a1)
{
  v2 = type metadata accessor for ForYouFeedLayoutModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for StockListNewsAttributionBlueprintModifier()
{
  result = qword_27CF58F70;
  if (!qword_27CF58F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2207069F8()
{
  result = type metadata accessor for AttributionSource();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220706A74(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v31 = a3;
  v32 = a2;
  v26[1] = a1;
  v28 = sub_22088B64C();
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204ADC90(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = v26 - v10;
  sub_22047572C();
  MEMORY[0x28223BE20](v12 - 8, v13);
  sub_2204ADC90(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v27 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v26 - v17;
  v34 = v3;
  v19 = sub_220574134(sub_220707350, v33);
  sub_22046B19C();
  v21 = v20;
  v22 = sub_220707308(&qword_281297DC8, sub_22046B19C);
  v23 = sub_220707308(&qword_281297DD0, sub_22046B19C);
  MEMORY[0x223D80A20](v19, v21, v22, v23);
  type metadata accessor for StockListModel(0);
  sub_22045B950();
  sub_220707308(&qword_281293CD8, type metadata accessor for StockListModel);
  sub_22088E7CC();
  v24 = v28;
  (*(v4 + 104))(v7, *MEMORY[0x277D6D868], v28);
  sub_2204CD300();
  sub_22088C67C();
  (*(v4 + 8))(v7, v24);
  v32(v11);
  (*(v29 + 8))(v11, v30);
  return (*(v15 + 8))(v18, v27);
}

uint64_t sub_220706E7C(uint64_t a1, uint64_t a2)
{
  sub_22046B2A0();
  MEMORY[0x28223BE20](v3 - 8, v4);
  sub_22046B19C();
  sub_22088B2AC();
  v13 = v17;
  v14 = v18;
  v15 = v19;
  v16 = v20;
  v12 = a2;
  v5 = sub_220574474(sub_220707370, v11);
  sub_22046B36C();
  v7 = v6;
  v8 = sub_220707308(&qword_281297F88, sub_22046B36C);
  v9 = sub_220707308(&unk_281297F90, sub_22046B36C);
  MEMORY[0x223D80A20](v5, v7, v8, v9);
  type metadata accessor for StockListModel(0);
  sub_22045B950();
  sub_220707308(&qword_281293CD8, type metadata accessor for StockListModel);
  return sub_22088B29C();
}

uint64_t sub_220707054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributionSource();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = (v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v15);
  v17 = v26 - v16;
  sub_22046B36C();
  v19 = v18;
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2204B3E9C(v17, type metadata accessor for StockListModel);
      v21 = type metadata accessor for StockListNewsAttributionBlueprintModifier();
      sub_2206CBC0C(a2 + *(v21 + 20), v9);
      *v13 = sub_2204ADF20(v9);
      v13[1] = v22;
      v13[2] = v23;
      v13[3] = v24;
      swift_storeEnumTagMultiPayload();
      sub_220707308(&qword_281293CD8, type metadata accessor for StockListModel);
      return sub_22088AD7C();
    }
  }

  else
  {
    sub_2204B3E9C(v17, type metadata accessor for StockListStockModel);
  }

  return (*(*(v19 - 8) + 16))(a3, a1, v19);
}

uint64_t sub_220707308(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_220707390@<X0>(uint64_t a1@<X8>)
{
  sub_22088573C();
  sub_22046F6EC(&unk_281299340, MEMORY[0x277D69268]);
  sub_22089193C();
  sub_22089199C();
  if (v9[4] == v9[0])
  {
    v2 = sub_22088698C();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_2208919BC();
    v6 = v5;
    v7 = sub_22088698C();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_220707528(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_22089242C();
    v5 = v4;
    v6 = sub_2208924AC();
    v8 = v7;
    v9 = MEMORY[0x223D8A5F0](v3, v5, v6, v7);
    sub_220707710(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_220707710(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_22089240C();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_22070771C(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_220707710(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_220707644(uint64_t a1)
{
  sub_2204A1EF0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StockListCompositionalLayoutOptionsProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_220707710(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_22070771C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x223D8A620](a1, a2, v7);
      sub_22070791C();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_22070791C();
    if (sub_22089245C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22089246C();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_22089207C();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_22089208C();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

unint64_t sub_22070791C()
{
  result = qword_27CF58F88;
  if (!qword_27CF58F88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF58F88);
  }

  return result;
}

uint64_t type metadata accessor for ManageWatchlistsLayoutSectionDescriptor()
{
  result = qword_27CF58F90;
  if (!qword_27CF58F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2207079B4()
{
  sub_220707A14();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_220707A14()
{
  if (!qword_27CF58FA0)
  {
    v0 = sub_22088C50C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF58FA0);
    }
  }
}

double sub_220707A5C()
{
  v1 = sub_22088C50C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220707BA0(v0, v9);
  (*(v2 + 32))(v5, v9, v1);
  sub_22088C4EC();
  v11 = v10;
  (*(v2 + 8))(v5, v1);
  return v11;
}

uint64_t sub_220707BA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageWatchlistsLayoutSectionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220707C14(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2208928BC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_2208928BC();
    }
  }

  return result;
}

uint64_t sub_220707CB8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_220892A3C();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_2208928CC();
    __swift_destroy_boxed_opaque_existential_1(v3);
    return sub_2208850EC();
  }

  return result;
}

void StocksEngagementEventProcessor.process<A>(processEvent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a1;
  sub_22070834C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for EngagementEvent();
  v11 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v12);
  v43 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = a2;
  v46 = a3;
  v14 = sub_220886E8C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v42 - v17;
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC8StocksUI30StocksEngagementEventProcessor_featureAvailability), *(v4 + OBJC_IVAR____TtC8StocksUI30StocksEngagementEventProcessor_featureAvailability + 24));
  if (sub_22088616C())
  {
    v48 = v4;
    if (qword_281298108 != -1)
    {
      swift_once();
    }

    v19 = sub_22088A84C();
    v20 = __swift_project_value_buffer(v19, qword_281298110);
    (*(v15 + 16))(v18, v51, v14);
    v49 = v20;
    v21 = sub_22088A82C();
    v22 = sub_220891AFC();
    v23 = os_log_type_enabled(v21, v22);
    v45 = v11;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v52[0] = v25;
      *v24 = 136315138;
      v26 = sub_220886E7C();
      v27 = v10;
      v29 = v28;
      (*(v15 + 8))(v18, v14);
      v30 = sub_2204A7B78(v26, v29, v52);
      v10 = v27;

      *(v24 + 4) = v30;
      _os_log_impl(&dword_22043F000, v21, v22, "received event: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x223D8B7F0](v25, -1, -1);
      MEMORY[0x223D8B7F0](v24, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    v32 = *(v48 + OBJC_IVAR____TtC8StocksUI30StocksEngagementEventProcessor_eventTranslators);
    v33 = *(v32 + 16);
    v34 = v46;
    if (v33)
    {
      v42 = (v48 + OBJC_IVAR____TtC8StocksUI30StocksEngagementEventProcessor_appReviewRequestManager);
      v35 = *(v48 + OBJC_IVAR____TtC8StocksUI30StocksEngagementEventProcessor_jsonDecoder);
      v36 = v32 + 32;
      v45 += 6;
      *&v31 = 136315138;
      v44 = v31;
      v48 = v35;
      do
      {
        sub_22046DA2C(v36, v52);
        v37 = v53;
        v38 = v54;
        __swift_project_boxed_opaque_existential_1(v52, v53);
        (*(v38 + 8))(v51, v35, v50, v34, v37, v38);
        __swift_destroy_boxed_opaque_existential_1(v52);
        if ((*v45)(v10, 1, v47) == 1)
        {
          v39 = sub_22070834C;
          v40 = v10;
        }

        else
        {
          v41 = v43;
          sub_220708734(v10, v43);
          __swift_project_boxed_opaque_existential_1(v42, v42[3]);
          sub_2204C17CC(v41);
          v39 = type metadata accessor for EngagementEvent;
          v40 = v41;
          v35 = v48;
        }

        sub_220708798(v40, v39);
        v36 += 40;
        --v33;
      }

      while (v33);
    }
  }
}

void sub_22070834C()
{
  if (!qword_281293570[0])
  {
    type metadata accessor for EngagementEvent();
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, qword_281293570);
    }
  }
}

id StocksEngagementEventProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StocksEngagementEventProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2207084D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x28213D470](a1, ObjectType, a3);
}

uint64_t sub_220708524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x28213D478](a1, ObjectType, a3);
}

uint64_t sub_220708574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x28213D480](a1, ObjectType, a3);
}

uint64_t sub_2207085C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x28213D490](a1, ObjectType, a3);
}

uint64_t sub_220708614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x28213D468](a1, a2, ObjectType, a4);
}

uint64_t sub_22070866C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x28213D488](a1, a2, ObjectType, a4);
}

uint64_t sub_2207086C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x28213D498](a1, a2, a3, a4, ObjectType, a6);
}

uint64_t sub_220708734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220708798(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2207087FC()
{
  result = qword_281295758;
  if (!qword_281295758)
  {
    type metadata accessor for StocksEngagementEventProcessor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281295758);
  }

  return result;
}

char *sub_22070888C(char *result, int64_t a2, char a3, char *a4)
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
    sub_220708974();
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

void sub_220708974()
{
  if (!qword_28127DE68)
  {
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127DE68);
    }
  }
}

uint64_t SidebarConfiguration.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_220884A4C();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220884AAC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220709148(0, &qword_281299510, MEMORY[0x277CC8958]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v40 - v19;
  sub_220884ACC();
  sub_220605254(v20, v16);
  v21 = sub_220884B5C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v16, 1, v21) == 1)
  {
    v23 = sub_220884E9C();
    (*(*(v23 - 8) + 8))(a1, v23);
    sub_22070919C(v20, &qword_281299510, MEMORY[0x277CC8958]);
    v24 = 0;
    v25 = v16;
LABEL_26:
    result = sub_22070919C(v25, &qword_281299510, MEMORY[0x277CC8958]);
    *a2 = v24;
    return result;
  }

  v42 = v20;
  v43 = a1;
  v26 = sub_220884ABC();
  result = (*(v22 + 8))(v16, v21);
  if (!v26)
  {
    v38 = sub_220884E9C();
    (*(*(v38 - 8) + 8))(v43, v38);
    v24 = 0;
LABEL_25:
    v25 = v42;
    goto LABEL_26;
  }

  v47 = *(v26 + 16);
  if (!v47)
  {
    v24 = 0;
LABEL_24:

    v39 = sub_220884E9C();
    (*(*(v39 - 8) + 8))(v43, v39);
    goto LABEL_25;
  }

  v41 = a2;
  v28 = 0;
  v46 = v9 + 16;
  v29 = (v9 + 8);
  ++v44;
  while (v28 < *(v26 + 16))
  {
    (*(v9 + 16))(v12, v26 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v28, v8);
    if (sub_220884A8C() == 0x657370616C6C6F63 && v30 == 0xEF72616265646953)
    {
    }

    else
    {
      v31 = sub_2208928BC();

      if ((v31 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v32 = sub_220884A9C();
    if (!v33)
    {
LABEL_6:
      result = (*v29)(v12, v8);
      goto LABEL_7;
    }

    v48 = v32;
    v49 = v33;
    sub_220884A2C();
    sub_22059B6A4();
    sub_22089235C();
    (*v44)(v7, v45);

    v34 = sub_2208913EC();
    v36 = v35;

    if (v34 == 1702195828 && v36 == 0xE400000000000000)
    {

      (*v29)(v12, v8);
LABEL_22:
      v24 = 1;
LABEL_23:
      a2 = v41;
      goto LABEL_24;
    }

    v37 = sub_2208928BC();

    result = (*v29)(v12, v8);
    if (v37)
    {
      goto LABEL_22;
    }

LABEL_7:
    if (v47 == ++v28)
    {
      v24 = 0;
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t SidebarConfiguration.init(_:userActivity:)@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  sub_220709148(0, qword_281295190, type metadata accessor for StocksActivity);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v15 - v6);
  v8 = type metadata accessor for StocksActivity(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  StocksV2UserActivityDeserializer.deserialize(userActivity:)(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    result = sub_22070919C(v7, qword_281295190, type metadata accessor for StocksActivity);
    v14 = 0;
  }

  else
  {
    sub_2205A06B8(v7, v12);
    v14 = StocksActivity.collapseSidebar.getter();

    result = sub_2205BA954(v12);
  }

  *a2 = v14 & 1;
  return result;
}

void sub_220709148(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22070919C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_220709148(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for SidebarConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2207092BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_220709304(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_22070935C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 72) = a2;
  return result;
}

uint64_t sub_220709398(uint64_t a1)
{
  v2 = sub_220709410();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_2207093D4()
{
  sub_2204564AC();

  return sub_22088D90C();
}

unint64_t sub_220709410()
{
  result = qword_27CF58FC8;
  if (!qword_27CF58FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58FC8);
  }

  return result;
}

uint64_t sub_2207095E4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22070963C();
  }

  return result;
}

uint64_t sub_22070963C()
{
  v19 = type metadata accessor for ChangeWatchlistDisplayContext(0);
  v1 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v2);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220885D3C();
  v6 = *(v5 + 16);
  if (v6)
  {
    v20 = MEMORY[0x277D84F90];
    sub_22070C0DC(0, v6, 0);
    v7 = v20;
    v18 = sub_220885D4C();
    v8 = *(v18 - 8);
    v9 = *(v8 + 16);
    v16[1] = v8 + 16;
    v17 = v9;
    v10 = *(v8 + 80);
    v16[0] = v5;
    v11 = v5 + ((v10 + 32) & ~v10);
    v12 = *(v8 + 72);
    do
    {
      v17(&v4[*(v19 + 20)], v11, v18);
      __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
      sub_2208863EC();
      v20 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_22070C0DC(v13 > 1, v14 + 1, 1);
        v7 = v20;
      }

      *(v7 + 16) = v14 + 1;
      sub_220709CC0(v4, v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v14);
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v20 = v7;

  sub_22088865C();
}

void *sub_22070988C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v10[0] = MEMORY[0x277D84F90];
  sub_220709BE4(0, &qword_2812988F0, sub_220709BB0, MEMORY[0x277D6CB60]);
  swift_allocObject();
  v3[2] = sub_22088866C();
  v3[3] = a1;
  v3[4] = a2;
  sub_22046DA2C(a3, (v3 + 5));
  swift_getObjectType();
  v8 = qword_281296FA0;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  sub_220886A4C();

  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v10);
  if (qword_281296FD0 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v10);
  if (qword_281296F78 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();

  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_220709C6C();

  sub_220885FAC();

  sub_22070963C();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v4;
}

void sub_220709BE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_220709C6C()
{
  result = qword_28127F838;
  if (!qword_28127F838)
  {
    type metadata accessor for ChangeWatchlistDisplayMenuGroupOptionProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127F838);
  }

  return result;
}

uint64_t sub_220709CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChangeWatchlistDisplayContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220709D50()
{
  sub_220530328(&unk_281284EE0);

  return sub_22088D90C();
}

uint64_t sub_220709DA8(uint64_t *a1, int a2)
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

uint64_t sub_220709DF0(uint64_t result, int a2, int a3)
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

StocksUI::ArticleUserInfoModel::UserInfoType_optional __swiftcall ArticleUserInfoModel.UserInfoType.init(rawValue:)(Swift::Int rawValue)
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

void *sub_220709E64@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_220709F4C()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_22070A028()
{
  sub_22089146C();
}

uint64_t sub_22070A0F0()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_22070A1C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22070DAD4();
  *a1 = result;
  return result;
}

void sub_22070A1F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x696669746E656469;
  v5 = 0xE400000000000000;
  v6 = 1701869940;
  v7 = 0xE300000000000000;
  v8 = 7107189;
  if (v2 != 3)
  {
    v8 = 0x6B72616D6B6F6F62;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E69727065756C62;
    v3 = 0xE900000000000074;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_22070A290()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 1701869940;
  v4 = 7107189;
  if (v1 != 3)
  {
    v4 = 0x6B72616D6B6F6F62;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E69727065756C62;
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

uint64_t sub_22070A324@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22070DAD4();
  *a1 = result;
  return result;
}

uint64_t sub_22070A358(uint64_t a1)
{
  v2 = sub_22070ADA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22070A394(uint64_t a1)
{
  v2 = sub_22070ADA8();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 ArticleUserInfoModel.init(identifier:type:url:blueprintProvider:bookmark:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v13 = *a3;
  *a8 = a1;
  a8[1] = a2;
  v14 = type metadata accessor for ArticleUserInfoModel();
  *(a8 + v14[6]) = v13;
  sub_2206578D0(a4, a8 + v14[5]);
  v15 = a8 + v14[7];
  result = *a5;
  v17 = *(a5 + 16);
  *v15 = *a5;
  *(v15 + 1) = v17;
  *(v15 + 4) = *(a5 + 32);
  v18 = (a8 + v14[8]);
  *v18 = a6;
  v18[1] = a7;
  return result;
}

uint64_t type metadata accessor for ArticleUserInfoModel()
{
  result = qword_28128F3D0;
  if (!qword_28128F3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArticleUserInfoModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v74 = sub_220887B2C();
  v66 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v3);
  v76 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_220887B4C();
  v75 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v5);
  v67 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220887B8C();
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v71 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A10C(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v72 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = (&v57 - v16);
  sub_22070C4FC(0, &qword_27CF59000, MEMORY[0x277D844C8]);
  v19 = v18;
  v77 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v57 - v21;
  v23 = type metadata accessor for ArticleUserInfoModel();
  MEMORY[0x28223BE20](v23, v24);
  v26 = (&v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22070ADA8();
  v27 = v78;
  sub_220892A4C();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v63 = v17;
  v64 = v26;
  v65 = v23;
  v78 = a1;
  LOBYTE(v79) = 0;
  v28 = sub_22089277C();
  v29 = v19;
  v31 = v64;
  *v64 = v28;
  *(v31 + 8) = v32;
  v81 = 2;
  sub_22070ADFC();
  sub_22089279C();
  v33 = v65;
  *(v31 + v65[6]) = v79;
  v34 = sub_220884E9C();
  LOBYTE(v79) = 3;
  sub_22070DC88(&qword_2812997D0, MEMORY[0x277CC9260]);
  v35 = v63;
  sub_22089276C();
  v62 = v34;
  v36 = v76;
  sub_2206578D0(v35, v31 + v33[5]);
  LOBYTE(v79) = 4;
  v37 = sub_22089273C();
  v38 = v71;
  v39 = (v31 + v65[8]);
  *v39 = v37;
  v39[1] = v40;
  sub_2204B1EDC(0, &qword_28127E9C0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v81 = 1;
  sub_22070C6CC(&qword_27CF59010);
  sub_22089276C();
  v42 = v79;
  if (v79)
  {
    v43 = *(v79 + 16);
    if (v43)
    {
      v58 = v29;
      v59 = v22;
      v79 = MEMORY[0x277D84F90];
      sub_22070C4AC(0, v43, 0);
      v44 = v79;
      v45 = (*(v62 - 8) + 56);
      v63 = *v45;
      v80 = *MEMORY[0x277D2FE18];
      v66 += 13;
      v60 = v75 + 32;
      v61 = v45;
      v57 = v42;
      v46 = v42 + 40;
      v47 = v67;
      do
      {
        v63(v72, 1, 1, v62);
        swift_bridgeObjectRetain_n();
        sub_2208874CC();
        (*v66)(v36, v80, v74);
        sub_220887B3C();

        v79 = v44;
        v49 = *(v44 + 16);
        v48 = *(v44 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_22070C4AC(v48 > 1, v49 + 1, 1);
          v47 = v67;
          v44 = v79;
        }

        *(v44 + 16) = v49 + 1;
        (*(v75 + 32))(v44 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v49, v47, v73);
        v46 += 16;
        --v43;
        v36 = v76;
      }

      while (v43);

      v38 = v71;
      v50 = v68;
      v22 = v59;
      v29 = v58;
    }

    else
    {

      v44 = MEMORY[0x277D84F90];
      v50 = v68;
    }

    v51 = v64;
    v52 = (v64 + v65[7]);
    *v38 = v44;
    (*(v69 + 104))(v38, *MEMORY[0x277D2FE60], v50);
    v53 = sub_220887FCC();
    swift_allocObject();
    v54 = sub_220887FBC();
    v55 = MEMORY[0x277D30218];
    v52[3] = v53;
    v52[4] = v55;
    *v52 = v54;
    v31 = v51;
    (*(v77 + 8))(v22, v29);
  }

  else
  {
    (*(v77 + 8))(v22, v29);
    v41 = v31 + v65[7];
    *(v41 + 32) = 0;
    *v41 = 0u;
    *(v41 + 16) = 0u;
  }

  v56 = v78;
  sub_22070AE50(v31, v70);
  __swift_destroy_boxed_opaque_existential_1(v56);
  return sub_22070AEB4(v31);
}

unint64_t sub_22070ADA8()
{
  result = qword_28128F3F8;
  if (!qword_28128F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128F3F8);
  }

  return result;
}

unint64_t sub_22070ADFC()
{
  result = qword_27CF59008;
  if (!qword_27CF59008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59008);
  }

  return result;
}

uint64_t sub_22070AE50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleUserInfoModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22070AEB4(uint64_t a1)
{
  v2 = type metadata accessor for ArticleUserInfoModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ArticleUserInfoModel.encode(to:)(void *a1)
{
  v2 = sub_220887B8C();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A10C(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v33 - v7;
  v9 = sub_220884E9C();
  v40 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22070C4FC(0, &qword_28127E1E0, MEMORY[0x277D84538]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v33 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22070ADA8();
  v19 = v41;
  v20 = v14;
  sub_220892A5C();
  LOBYTE(v45[0]) = 0;
  v21 = v42;
  sub_22089280C();
  if (!v21)
  {
    v36 = v12;
    v42 = v9;
    v22 = type metadata accessor for ArticleUserInfoModel();
    LOBYTE(v45[0]) = *(v19 + v22[6]);
    LOBYTE(v43) = 2;
    sub_22070C560();
    sub_22089283C();
    v24 = v8;
    sub_22047C2BC(v19 + v22[5], v8);
    v25 = v40;
    v26 = v42;
    if ((*(v40 + 48))(v24, 1, v42) == 1)
    {
      v35 = v14;
      sub_22047C4E4(v24);
      v27 = v39;
    }

    else
    {
      v34 = v15;
      v28 = v36;
      (*(v25 + 32))(v36, v24, v26);
      LOBYTE(v45[0]) = 3;
      sub_22070DC88(&qword_2812994F8, MEMORY[0x277CC9260]);
      sub_22089283C();
      v27 = v39;
      v35 = v14;
      (*(v40 + 8))(v28, v26);
      v15 = v34;
    }

    sub_22070C5B4(v19 + v22[7], &v43);
    if (v44)
    {
      v29 = v18;
      v42 = v22;
      sub_220458198(&v43, v45);
      __swift_project_boxed_opaque_existential_1(v45, v45[3]);
      sub_22088811C();
      v30 = v37;
      sub_22088867C();

      v31 = sub_22070B518();
      (*(v38 + 8))(v30, v27);
      *&v43 = v31;
      v46 = 1;
      sub_2204B1EDC(0, &qword_28127E9C0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_22070C6CC(&qword_28127E9B8);
      v32 = v35;
      sub_22089283C();

      __swift_destroy_boxed_opaque_existential_1(v45);
      v20 = v32;
      v22 = v42;
      v18 = v29;
    }

    else
    {
      sub_22070C644(&v43);
      v20 = v35;
    }

    if (*(v19 + v22[8] + 8))
    {
      LOBYTE(v45[0]) = 4;
      sub_22089280C();
    }
  }

  return (*(v15 + 8))(v18, v20);
}

uint64_t sub_22070B518()
{
  v1 = v0;
  v2 = sub_220887B5C();
  v46 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = (&v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_220887B7C();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220887B4C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_220887B8C();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, v1, v15, v18);
  v21 = (*(v16 + 88))(v20, v15);
  if (v21 == *MEMORY[0x277D2FE50])
  {
    (*(v16 + 96))(v20, v15);
    (*(v11 + 32))(v14, v20, v10);
    sub_2204B1EDC(0, &qword_28127DEE8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_220899360;
    *(v22 + 32) = sub_220887B1C();
    *(v22 + 40) = v23;
    (*(v11 + 8))(v14, v10);
    return v22;
  }

  v49 = v14;
  if (v21 == *MEMORY[0x277D2FE60])
  {
    (*(v16 + 96))(v20, v15);
    v24 = *v20;
    v25 = *(*v20 + 16);
    if (v25)
    {
      v50 = MEMORY[0x277D84F90];
      sub_22048EE54(0, v25, 0);
      v26 = v49;
      v22 = v50;
      v28 = *(v11 + 16);
      v27 = v11 + 16;
      v29 = v24 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
      v47 = *(v27 + 56);
      v48 = v28;
      v45 = v24;
      v46 = v27 - 8;
      do
      {
        v30 = v27;
        v48(v26, v29, v10);
        v31 = sub_220887B1C();
        v26 = v49;
        v32 = v31;
        v34 = v33;
        v35 = v10;
        (*v46)(v49, v10);
        v50 = v22;
        v37 = *(v22 + 16);
        v36 = *(v22 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_22048EE54((v36 > 1), v37 + 1, 1);
          v26 = v49;
          v22 = v50;
        }

        *(v22 + 16) = v37 + 1;
        v38 = v22 + 16 * v37;
        *(v38 + 32) = v32;
        *(v38 + 40) = v34;
        v29 += v47;
        --v25;
        v10 = v35;
        v27 = v30;
      }

      while (v25);

      return v22;
    }

    return MEMORY[0x277D84F90];
  }

  if (v21 == *MEMORY[0x277D2FE48])
  {
    (*(v16 + 8))(v20, v15);
    return MEMORY[0x277D84F90];
  }

  if (v21 == *MEMORY[0x277D2FE58])
  {
    (*(v16 + 96))(v20, v15);
    v40 = v47;
    v39 = v48;
    (*(v47 + 32))(v9, v20, v48);
    sub_220887B6C();
    v41 = v46;
    if ((*(v46 + 88))(v5, v2) == *MEMORY[0x277D2FE38])
    {
      (*(v41 + 96))(v5, v2);
      v42 = *v5;
      v43 = v5[1];

      sub_2204B1EDC(0, &qword_28127DEE8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_220899360;
      *(v22 + 32) = v42;
      *(v22 + 40) = v43;
      (*(v40 + 8))(v9, v39);
      return v22;
    }
  }

  else if (v21 == *MEMORY[0x277D2FE40])
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

size_t sub_22070BBB4(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127E098, sub_22055D3C0, sub_22055D3C0);
  *v3 = result;
  return result;
}

char *sub_22070BC04(char *a1, int64_t a2, char a3)
{
  result = sub_22070CE5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22070BC24(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127E100, sub_22055D328, sub_22055D328);
  *v3 = result;
  return result;
}

void *sub_22070BC74(void *a1, int64_t a2, char a3)
{
  result = sub_22070CF78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22070BC94(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127DF48, type metadata accessor for StockFeedLayoutSectionDescriptor.Decoration, type metadata accessor for StockFeedLayoutSectionDescriptor.Decoration);
  *v3 = result;
  return result;
}

size_t sub_22070BCE4(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_27CF59030, type metadata accessor for StockFeedLayoutSectionDescriptor.Footer, type metadata accessor for StockFeedLayoutSectionDescriptor.Footer);
  *v3 = result;
  return result;
}

size_t sub_22070BD34(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_27CF59038, type metadata accessor for StockFeedLayoutSectionDescriptor.Header, type metadata accessor for StockFeedLayoutSectionDescriptor.Header);
  *v3 = result;
  return result;
}

char *sub_22070BD84(char *a1, int64_t a2, char a3)
{
  result = sub_22070D0C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22070BDA4(char *a1, int64_t a2, char a3)
{
  result = sub_22070D1EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22070BDC4(void *a1, int64_t a2, char a3)
{
  result = sub_22070D314(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22070BDE4(char *a1, int64_t a2, char a3)
{
  result = sub_22070D454(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22070BE04(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127DF80, type metadata accessor for StockFeedViewerPage, type metadata accessor for StockFeedViewerPage);
  *v3 = result;
  return result;
}

size_t sub_22070BE54(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127DF20, type metadata accessor for WatchlistMembershipCommandContext, type metadata accessor for WatchlistMembershipCommandContext);
  *v3 = result;
  return result;
}

size_t sub_22070BEA4(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &unk_28127E110, MEMORY[0x277D68E30], MEMORY[0x277D68E30]);
  *v3 = result;
  return result;
}

void *sub_22070BEF4(void *a1, int64_t a2, char a3)
{
  result = sub_22070D560(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22070BF14(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127E190, MEMORY[0x277D69858], MEMORY[0x277D69858]);
  *v3 = result;
  return result;
}

size_t sub_22070BF64(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127E0C0, sub_22055CE80, sub_22055CE80);
  *v3 = result;
  return result;
}

size_t sub_22070BFB4(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127E0C8, sub_2204EF5C8, sub_2204EF5C8);
  *v3 = result;
  return result;
}

size_t sub_22070C004(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &unk_27CF57C60, sub_2204D4A18, sub_2204D4A18);
  *v3 = result;
  return result;
}

void *sub_22070C054(void *a1, int64_t a2, char a3)
{
  result = sub_220530158(a1, a2, a3, *v3, &unk_28127E0E0, &qword_281297F28, MEMORY[0x277D6D430]);
  *v3 = result;
  return result;
}

size_t sub_22070C08C(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127DF58, type metadata accessor for SortWatchlistCommandContext, type metadata accessor for SortWatchlistCommandContext);
  *v3 = result;
  return result;
}

size_t sub_22070C0DC(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127DF50, type metadata accessor for ChangeWatchlistDisplayContext, type metadata accessor for ChangeWatchlistDisplayContext);
  *v3 = result;
  return result;
}

char *sub_22070C12C(char *a1, int64_t a2, char a3)
{
  result = sub_22070D6F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22070C14C(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_27CF59050, sub_220576B2C, sub_220576B2C);
  *v3 = result;
  return result;
}

size_t sub_22070C19C(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127DFC8, MEMORY[0x277D32E20], MEMORY[0x277D32E20]);
  *v3 = result;
  return result;
}

size_t sub_22070C1EC(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_27CF56E10, sub_220576D44, sub_220576D44);
  *v3 = result;
  return result;
}

void *sub_22070C23C(void *a1, int64_t a2, char a3)
{
  result = sub_220530158(a1, a2, a3, *v3, &qword_28127E088, &qword_281297AA8, MEMORY[0x277D6DBE8]);
  *v3 = result;
  return result;
}

size_t sub_22070C274(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_27CF588C8, MEMORY[0x277D698E0], MEMORY[0x277D698E0]);
  *v3 = result;
  return result;
}

void *sub_22070C2C4(void *a1, int64_t a2, char a3)
{
  result = sub_22070D850(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22070C2E4(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127DF10, MEMORY[0x277D6C6B0], MEMORY[0x277D6C6B0]);
  *v3 = result;
  return result;
}

size_t sub_22070C334(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127E0D0, sub_2204FA2D0, sub_2204FA2D0);
  *v3 = result;
  return result;
}

void *sub_22070C384(void *a1, int64_t a2, char a3)
{
  result = sub_220530158(a1, a2, a3, *v3, &qword_28127DFF8, &unk_2812972A0, MEMORY[0x277D6EA98]);
  *v3 = result;
  return result;
}

size_t sub_22070C3BC(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127DFA8, MEMORY[0x277D34138], MEMORY[0x277D34138]);
  *v3 = result;
  return result;
}

size_t sub_22070C40C(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127E1B8, MEMORY[0x277D69370], MEMORY[0x277D69370]);
  *v3 = result;
  return result;
}

size_t sub_22070C45C(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127E0B8, sub_22046B19C, sub_22046B19C);
  *v3 = result;
  return result;
}

size_t sub_22070C4AC(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127E150, MEMORY[0x277D2FE30], MEMORY[0x277D2FE30]);
  *v3 = result;
  return result;
}

void sub_22070C4FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22070ADA8();
    v7 = a3(a1, &type metadata for ArticleUserInfoModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22070C560()
{
  result = qword_28128F408[0];
  if (!qword_28128F408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28128F408);
  }

  return result;
}

uint64_t sub_22070C5B4(uint64_t a1, uint64_t a2)
{
  sub_2205302C0(0, &qword_2812989F0, &qword_2812989F8, MEMORY[0x277D302A0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22070C644(uint64_t a1)
{
  sub_2205302C0(0, &qword_2812989F0, &qword_2812989F8, MEMORY[0x277D302A0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22070C6CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2204B1EDC(255, &qword_28127E9C0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22070C754()
{
  result = qword_27CF59018;
  if (!qword_27CF59018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59018);
  }

  return result;
}

void sub_22070C7D0()
{
  sub_22047A10C(319, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2205302C0(319, &qword_2812989F0, &qword_2812989F8, MEMORY[0x277D302A0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2204B1EDC(319, &qword_28127EBE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ArticleUserInfoModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArticleUserInfoModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22070CA68()
{
  result = qword_27CF59020;
  if (!qword_27CF59020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59020);
  }

  return result;
}

unint64_t sub_22070CAC0()
{
  result = qword_28128F3E8;
  if (!qword_28128F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128F3E8);
  }

  return result;
}

unint64_t sub_22070CB18()
{
  result = qword_28128F3F0;
  if (!qword_28128F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128F3F0);
  }

  return result;
}

size_t sub_22070CB6C(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_27CF59060, sub_220576E38, sub_220576E38);
  *v3 = result;
  return result;
}

size_t sub_22070CBBC(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_27CF59068, sub_220576F2C, sub_220576F2C);
  *v3 = result;
  return result;
}

size_t sub_22070CC0C(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127DF40, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Decoration, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Decoration);
  *v3 = result;
  return result;
}

size_t sub_22070CC5C(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127DF30, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer);
  *v3 = result;
  return result;
}

size_t sub_22070CCAC(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127DF28, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Header, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Header);
  *v3 = result;
  return result;
}

size_t sub_22070CCFC(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127E060, sub_220576FC4, sub_220576FC4);
  *v3 = result;
  return result;
}

size_t sub_22070CD4C(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127E0A0, sub_2205045B0, sub_2205045B0);
  *v3 = result;
  return result;
}

size_t sub_22070CD9C(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_27CF59058, type metadata accessor for StockViewModel, type metadata accessor for StockViewModel);
  *v3 = result;
  return result;
}

char *sub_22070CDEC(char *a1, int64_t a2, char a3)
{
  result = sub_22070D9B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22070CE0C(size_t a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &unk_27CF59070, sub_22055DDDC, sub_22055DDDC);
  *v3 = result;
  return result;
}

char *sub_22070CE5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2204B1EDC(0, &qword_2812997D8, MEMORY[0x277D85048], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_22070CF78(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_22047A10C(0, &qword_27CF59040, sub_22070DC00, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22070DC00(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22070D0C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_22047A10C(0, &qword_28127DE78, type metadata accessor for CGRect, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_22070D1EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_22047A10C(0, &qword_28127DE70, type metadata accessor for CGSize, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_22070D314(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_22070DB84();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2204B1EDC(0, &qword_28127EA18, &type metadata for QuoteDetailViewComponent, MEMORY[0x277D83940]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22070D454(char *result, int64_t a2, char a3, char *a4)
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
    sub_2204B1EDC(0, &qword_28127DF88, &type metadata for StockChartZoneType, MEMORY[0x277D84560]);
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

void *sub_22070D560(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_220588968();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2205302C0(0, &qword_281297AA0, &qword_281297AA8, MEMORY[0x277D6DBE8], MEMORY[0x277D83D88]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22070D6F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2204B1EDC(0, &qword_28127DE40, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22070D850(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_22047A10C(0, &qword_28127DEA0, sub_22070DB20, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_22070DB20();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22070D9B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2204B1EDC(0, &qword_28127DF78, &type metadata for ForYouFeedGroupKnobs.CodingKeys, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22070DAD4()
{
  v0 = sub_22089270C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

void sub_22070DB20()
{
  if (!qword_28127E918)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127E918);
    }
  }
}

void sub_22070DB84()
{
  if (!qword_28127DEB0)
  {
    sub_2204B1EDC(255, &qword_28127EA18, &type metadata for QuoteDetailViewComponent, MEMORY[0x277D83940]);
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127DEB0);
    }
  }
}

unint64_t sub_22070DC34()
{
  result = qword_28128F400;
  if (!qword_28128F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128F400);
  }

  return result;
}

uint64_t sub_22070DC88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22070DCD0()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22070DD54@<X0>(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong presentingViewController];

    if (v4)
    {
      [v4 dismissViewControllerAnimated:0 completion:0];
    }
  }

  v5 = *MEMORY[0x277D6E350];
  v6 = sub_22088CD4C();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

uint64_t sub_22070DE78(uint64_t a1, uint64_t a2)
{
  result = sub_220448C70(&qword_27CF56DC0, a2, type metadata accessor for StockSearchModalRouter);
  *(a1 + 8) = result;
  return result;
}

uint64_t StockFeedServiceProxy.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ManageWatchlistsViewController()
{
  result = qword_27CF590B8;
  if (!qword_27CF590B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22070E120()
{
  result = type metadata accessor for ManageWatchlistsContentMode(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_22070E1E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22088685C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v57 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ManageWatchlistsContentMode(0);
  *&v9 = MEMORY[0x28223BE20](v7 - 8, v8).n128_u64[0];
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58.receiver = v1;
  v58.super_class = ObjectType;
  objc_msgSendSuper2(&v58, sel_viewDidLoad, v9);
  v12 = [v1 navigationController];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 presentationController];

    if (v14)
    {
      [v14 setDelegate_];
    }
  }

  v15 = [v1 navigationController];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 sheetPresentationController];

    if (v17)
    {
      sub_22048BC00();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_22089B120;
      v19 = objc_opt_self();
      v20 = [v19 mediumDetent];
      v21 = sub_22070EB30();

      *(v18 + 32) = v21;
      *(v18 + 40) = [v19 largeDetent];
      sub_2207107A8();
      v22 = sub_2208916DC();

      [v17 setDetents_];

      [v17 setPrefersScrollingExpandsWhenScrolledToEdge_];
      [v17 setPrefersEdgeAttachedInCompactHeight_];
      [v17 setWidthFollowsPreferredContentSizeWhenEdgeAttached_];
    }
  }

  v23 = *&v1[OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_blueprintViewController];
  [v1 addChildViewController_];
  v24 = [v1 view];
  if (!v24)
  {
    __break(1u);
    goto LABEL_15;
  }

  v25 = v24;
  v26 = [v23 view];
  if (!v26)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = v26;
  [v25 addSubview_];

  [v23 didMoveToParentViewController_];
  sub_22088C71C();
  v28 = sub_22088BFCC();

  v29 = [objc_opt_self() clearColor];
  [v28 setBackgroundColor_];

  [v28 setSeparatorStyle_];
  sub_22088C71C();
  v30 = sub_22088BFCC();

  [v30 setAllowsMultipleSelection_];

  v31 = [v1 view];
  if (!v31)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v32 = v31;
  v33 = *&v1[OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_descriptionLabel];
  [v31 addSubview_];

  sub_2207107F4(&v1[OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_contentMode], v11, type metadata accessor for ManageWatchlistsContentMode);
  sub_22057B2D0();
  if ((*(*(v34 - 8) + 48))(v11, 1, v34) == 1)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v36 = objc_opt_self();
    v37 = [v36 bundleForClass_];
    sub_220884CAC();

    v38 = sub_22089132C();

    [v1 setTitle_];

    v39 = [v36 bundleForClass_];
    sub_220884CAC();

    v40 = sub_22089132C();

    [v33 setText_];
  }

  else
  {
    v41 = v57;
    (*(v4 + 32))(v57, v11, v3);
    type metadata accessor for Localized();
    v42 = swift_getObjCClassFromMetadata();
    v43 = objc_opt_self();
    v56 = v3;
    v44 = [v43 bundleForClass_];
    sub_220884CAC();

    v45 = sub_22089132C();

    [v1 setTitle_];

    v46 = [v43 bundleForClass_];
    sub_220884CAC();

    sub_2204D4DEC(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_220899360;
    v48 = sub_22088684C();
    v50 = v49;
    *(v47 + 56) = MEMORY[0x277D837D0];
    *(v47 + 64) = sub_22048D860();
    *(v47 + 32) = v48;
    *(v47 + 40) = v50;
    sub_22089139C();

    v51 = sub_22089132C();

    [v33 setText_];

    (*(v4 + 8))(v41, v56);
  }

  v52 = [v1 navigationItem];
  v53 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v1 action:sel_handleDone];
  [v52 setRightBarButtonItem_];

  v54 = [v1 traitCollection];
  sub_2207102F4();

  [v33 setUserInteractionEnabled_];
  [v33 setShowsLargeContentViewer_];
  v55 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v33 addInteraction_];
}

uint64_t sub_22070EB30()
{
  sub_22089254C();
  v1 = [v0 identifier];
  sub_22089136C();

  MEMORY[0x223D89680](0xD000000000000011, 0x80000002208D1110);
  v2 = sub_22089132C();

  sub_2207107A8();
  *(swift_allocObject() + 16) = v0;
  v3 = v2;
  v4 = v0;
  v5 = sub_220891E5C();

  return v5;
}

void sub_22070ECA4()
{
  v41.receiver = v0;
  v41.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v41, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_descriptionLabel];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  [v2 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v42.origin.x = v5;
  v42.origin.y = v7;
  v42.size.width = v9;
  v42.size.height = v11;
  v43 = CGRectInset(v42, 32.0, 32.0);
  [v1 sizeThatFits_];
  v13 = v12;
  v14 = [v0 view];
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = v14;
  [v14 safeAreaInsets];
  v17 = v16;

  v18 = [v0 view];
  if (!v18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = v18;
  [v18 frame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v44.origin.x = v21;
  v44.origin.y = v23;
  v44.size.width = v25;
  v44.size.height = v27;
  [v1 setFrame_];
  v28 = [*&v0[OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_blueprintViewController] view];
  if (!v28)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v29 = v28;
  v30 = [v0 view];
  if (v30)
  {
    v31 = v30;
    [v30 bounds];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    [v1 frame];
    MaxY = CGRectGetMaxY(v45);
    [v29 setFrame_];

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_22070F13C(void *a1)
{
  v1 = [a1 containerTraitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 1)
  {
    return sub_220891E4C();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22070F1B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_eventHandler);
    v5 = result;
    swift_unknownObjectRetain();

    v6 = *(v4 + 40);
    ObjectType = swift_getObjectType();
    (*(v6 + 48))(a2, 1, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22070F25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(result + OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_eventHandler);
    v9 = result;
    swift_unknownObjectRetain();

    v10 = *(v8 + 40);
    ObjectType = swift_getObjectType();
    (*(v10 + 80))(a4, a1, a2, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22070F31C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for ManageWatchlistsModel();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DDDC();
  sub_22088AD8C();
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v9 = *(*(v3 + OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v9 + 72))(a2, ObjectType, v9);
  }

  return sub_220710210(v8, type metadata accessor for ManageWatchlistsModel);
}

uint64_t sub_22070F414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22088DA2C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a3, v5, v8);
  result = (*(v6 + 88))(v10, v5);
  if (result == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v10, v5);
LABEL_3:
    v12 = *(*(v3 + OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    return (*(v12 + 40))(ObjectType, v12);
  }

  if (result == *MEMORY[0x277D6E928])
  {
    v14 = *(*(v3 + OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_eventHandler) + 40);
    v15 = swift_getObjectType();
    return (*(v14 + 32))(v15, v14);
  }

  else
  {
    if (result == *MEMORY[0x277D6E948] || result == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (result != *MEMORY[0x277D6E958])
    {
      if (result == *MEMORY[0x277D6E970])
      {
        goto LABEL_3;
      }

      return (*(v6 + 8))(v10, v5);
    }
  }

  return result;
}

uint64_t sub_22070F608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2204D4DEC(0, &qword_2812993D0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_2208854AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DDDC();
  sub_22088AD4C();
  sub_220576C20();
  sub_22088E7DC();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_22057E664(v9);
  }

  (*(v11 + 32))(v14, v9, v10);
  v16 = *(*(v3 + OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  (*(v16 + 56))(a2, v14, a3, ObjectType, v16);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_22070F82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5888](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_22070F894(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 64))(a2, ObjectType, v4);
}

uint64_t sub_22070F8F8(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(a2, 0, ObjectType, v4);
}

uint64_t sub_22070F95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5808](a1, a2, ObjectType, a4);
}

uint64_t sub_22070F9E8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6E208];
  v3 = sub_22088CC1C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *MEMORY[0x277D6E220];
  v5 = sub_22088CC2C();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t sub_22070FAA4@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v18 = sub_22088B3CC();
  v1 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22088B3DC();
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D4DEC(0, &qword_28127E0B0, MEMORY[0x277D6D770], MEMORY[0x277D84560]);
  v9 = sub_22088B3EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_220899920;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  v15(v14, *MEMORY[0x277D6D760], v9);
  v15(v14 + v11, *MEMORY[0x277D6D758], v9);
  sub_220490DA4(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v5 + 104))(v8, *MEMORY[0x277D6D750], v17);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D738], v18);
  return sub_22088B40C();
}

unint64_t sub_22070FE8C()
{
  result = qword_27CF59130;
  if (!qword_27CF59130)
  {
    type metadata accessor for ManageWatchlistsModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59130);
  }

  return result;
}

void sub_22070FEE4(uint64_t a1)
{
  v2 = v1;
  sub_22055DDDC();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v9 = type metadata accessor for ManageWatchlistsModel();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WatchlistRenameAlert();
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088AD8C();
  sub_22071D07C(v16);
  sub_220710210(v12, type metadata accessor for ManageWatchlistsModel);
  type metadata accessor for TextInputAlert();
  v17 = swift_allocObject();
  *(v17 + 40) = v13;
  *(v17 + 48) = &off_2834147E0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v17 + 16));
  sub_2207107F4(v16, boxed_opaque_existential_1, type metadata accessor for WatchlistRenameAlert);
  *(v17 + 56) = 0u;
  *(v17 + 72) = 0u;
  *(v17 + 96) = 0;
  *(v17 + 104) = 0;
  *(v17 + 88) = sub_22045F7BC;
  sub_220710210(v16, type metadata accessor for WatchlistRenameAlert);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v6 + 16))(&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v20 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  (*(v6 + 32))(v21 + v20, &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v22 = *(v17 + 56);
  *(v17 + 56) = sub_220710270;
  *(v17 + 64) = v21;

  sub_22058B000(v22);

  *(v17 + 88) = sub_2205F83D0;
  *(v17 + 96) = 0;

  v23 = sub_22058A3C0();
  v24 = *(v17 + 104);
  *(v17 + 104) = v23;
  v25 = v23;

  [v2 presentViewController:v25 animated:1 completion:0];
}

uint64_t sub_220710210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220710270(uint64_t a1, uint64_t a2)
{
  sub_22055DDDC();
  v6 = *(v2 + 16);
  v7 = v2 + ((*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80));

  return sub_22070F25C(a1, a2, v6, v7);
}

void sub_2207102F4()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v5 = [v4 systemBackgroundColor];
    [v3 setBackgroundColor_];

    sub_22088C71C();
    v6 = sub_22088BFCC();

    v7 = [v4 clearColor];
    [v6 setBackgroundColor_];

    [v6 setSeparatorStyle_];
    v8 = __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_styler], *&v1[OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_styler + 24]);
    v9 = *&v1[OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_descriptionLabel];
    v10 = *v8;
    [v9 setNumberOfLines_];
    [v9 setTextAlignment_];
    v11 = v10[5];
    v12 = v10[6];
    __swift_project_boxed_opaque_existential_1(v10 + 2, v11);
    v13 = (*(*(v12 + 16) + 264))(v11);
    [v9 setTextColor_];

    v14 = [objc_opt_self() systemFontOfSize_];
    [v9 setFont_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2207104E8(void *a1, id a2)
{
  v3 = [a2 horizontalSizeClass];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = v4;
  if (v3 == 1)
  {
    if (!v4)
    {
      return 1;
    }

    sub_22048BC00();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22089B120;
    v7 = objc_opt_self();
    v8 = a1;
    *(v6 + 32) = [v7 mediumDetent];
    v9 = (v6 + 40);
    v10 = 1;
  }

  else
  {
    if (!v4)
    {
      return 2;
    }

    sub_22048BC00();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_22089B130;
    v9 = (v11 + 32);
    v7 = objc_opt_self();
    v12 = a1;
    v10 = 2;
  }

  *v9 = [v7 largeDetent];
  sub_2207107A8();
  v13 = sub_2208916DC();

  [v5 setDetents_];

  [v5 setPrefersEdgeAttachedInCompactHeight_];
  return v10;
}

void sub_22071068C(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    sub_22048BC00();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_22089B130;
    v5 = objc_opt_self();
    v7 = a1;
    *(v4 + 32) = [v5 largeDetent];
    sub_2207107A8();
    v6 = sub_2208916DC();

    [v3 setDetents_];

    [v3 setPrefersEdgeAttachedInCompactHeight_];
  }
}

unint64_t sub_2207107A8()
{
  result = qword_28127E5A0;
  if (!qword_28127E5A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E5A0);
  }

  return result;
}

uint64_t sub_2207107F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for StockFeedPriceChangeDisplayBlueprintModifier()
{
  result = qword_28127FA20;
  if (!qword_28127FA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2207108D8()
{
  result = sub_220885D4C();
  if (v1 <= 0x3F)
  {
    result = sub_2206CAE24();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22071096C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v40 = a3;
  v41 = a2;
  v4 = sub_22088B64C();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220713628(0, &qword_281297850, MEMORY[0x277D6DF88]);
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v37 = &v31 - v9;
  sub_220587530();
  MEMORY[0x28223BE20](v10 - 8, v11);
  sub_220713628(0, &unk_281296F10, MEMORY[0x277D6EC60]);
  v36 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v31 - v14;
  v42 = v16;
  sub_22088E6FC();
  v35 = v3;
  v44 = v3;
  v17 = sub_2205727A4(sub_22071371C, v43);
  sub_22055CE80(0);
  v19 = v18;
  v20 = sub_2207137C8(&qword_281297DF8, sub_22055CE80);
  v21 = sub_2207137C8(&qword_281297E00, sub_22055CE80);
  MEMORY[0x223D80A20](v17, v19, v20, v21);
  type metadata accessor for StockFeedSectionDescriptor();
  type metadata accessor for StockFeedModel();
  sub_2207137C8(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
  sub_2207137C8(&qword_281293DD0, type metadata accessor for StockFeedModel);
  sub_22088E6EC();
  v22 = sub_220577460();
  sub_22088FA1C();
  sub_22088FA0C();
  type metadata accessor for StockFeedServiceConfig();
  sub_2207137C8(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
  v23 = sub_22088F9EC();

  v24 = 0;
  if (v23)
  {
    v24 = sub_22088F45C();
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v45 = v23;
  v48 = v24;
  sub_22088E7BC();
  sub_22062782C(v22);
  v25 = type metadata accessor for StockFeedPriceChangeDisplayBlueprintModifier();
  __swift_project_boxed_opaque_existential_1((v35 + *(v25 + 24)), *(v35 + *(v25 + 24) + 24));
  if (sub_22088618C())
  {
    v26 = v37;
    sub_22088C66C();
  }

  else
  {
    v28 = v32;
    v27 = v33;
    v29 = v34;
    (*(v33 + 104))(v32, *MEMORY[0x277D6D868], v34);
    sub_2207137C8(&unk_281288C00, type metadata accessor for StockFeedSectionDescriptor);
    v26 = v37;
    sub_22088C67C();
    (*(v27 + 8))(v28, v29);
  }

  v41(v26);
  (*(v38 + 8))(v26, v39);
  return (*(v36 + 8))(v15, v42);
}

uint64_t sub_220710F20(uint64_t a1, uint64_t a2)
{
  sub_22055D524();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v5, v6);
  sub_220711164(&v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v15 = a2;
  v8 = sub_220572464(sub_22071373C, v14);
  sub_22055D328();
  v10 = v9;
  v11 = sub_2207137C8(&qword_281297FB8, sub_22055D328);
  v12 = sub_2207137C8(&qword_281297FC0, sub_22055D328);
  MEMORY[0x223D80A20](v8, v10, v11, v12);
  type metadata accessor for StockFeedModel();
  sub_2207137C8(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
  sub_2207137C8(&qword_281293DD0, type metadata accessor for StockFeedModel);
  return sub_22088B29C();
}

uint64_t sub_220711164@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StockFeedMastheadModel();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CE80(0);
  sub_22088B2AC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_220700938(v13, v9, type metadata accessor for StockFeedMastheadModel);
      sub_220711368(v9, v5);
      sub_22070086C(v9, type metadata accessor for StockFeedMastheadModel);
      sub_220700938(v5, a1, type metadata accessor for StockFeedMastheadModel);
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 1)
    {

      sub_220459628();
      sub_22051F374(&v13[*(v16 + 64)], &qword_281296C60, MEMORY[0x277D31C50]);
    }

    else
    {
      sub_22070086C(v13, type metadata accessor for StockFeedSectionDescriptor);
    }
  }

  return sub_22088B2AC();
}

uint64_t sub_220711368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v258 = a2;
  v248 = sub_2208852DC();
  v239 = *(v248 - 8);
  MEMORY[0x28223BE20](v248, v3);
  v247 = &v209[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v236 = sub_2208857EC();
  v235 = *(v236 - 8);
  MEMORY[0x28223BE20](v236, v5);
  v234 = &v209[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_220713810(0, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v214 = &v209[-v9];
  sub_220713810(0, qword_281294018, type metadata accessor for PriceViewModel);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v213 = &v209[-v12];
  v257 = sub_22088699C();
  v245 = *(v257 - 8);
  MEMORY[0x28223BE20](v257, v13);
  v244 = &v209[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v16);
  v241 = &v209[-v17];
  v240 = type metadata accessor for PriceViewModel();
  v212 = *(v240 - 8);
  MEMORY[0x28223BE20](v240, v18);
  v221 = &v209[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v246 = type metadata accessor for QuoteViewModel();
  v233 = *(v246 - 8);
  MEMORY[0x28223BE20](v246, v20);
  v222 = &v209[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_220713810(0, qword_281293F78, type metadata accessor for QuoteViewModel);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v220 = &v209[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25, v26);
  v228 = &v209[-v27];
  v243 = sub_22088676C();
  v242 = *(v243 - 1);
  MEMORY[0x28223BE20](v243, v28);
  v227 = &v209[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v237 = type metadata accessor for QuoteSummaryViewModel();
  MEMORY[0x28223BE20](v237, v30);
  v238 = &v209[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_2208854FC();
  v255 = *(v32 - 8);
  v256 = v32;
  MEMORY[0x28223BE20](v32, v33);
  v218 = &v209[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v35, v36);
  v253 = &v209[-v37];
  v264 = sub_220885D4C();
  v260 = *(v264 - 8);
  MEMORY[0x28223BE20](v264, v38);
  v211 = &v209[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v40, v41);
  v259 = &v209[-v42];
  MEMORY[0x28223BE20](v43, v44);
  v263 = &v209[-v45];
  v46 = MEMORY[0x277D697C0];
  v224 = MEMORY[0x277D697C0];
  sub_220713810(0, &unk_2812990E0, MEMORY[0x277D697C0]);
  MEMORY[0x28223BE20](v47 - 8, v48);
  v261 = &v209[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v50, v51);
  v53 = &v209[-v52];
  v254 = &v209[-v52];
  v54 = MEMORY[0x277D697F8];
  v223 = MEMORY[0x277D697F8];
  sub_220713810(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v55 - 8, v56);
  v219 = &v209[-((v57 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v58, v59);
  v217 = &v209[-v60];
  MEMORY[0x28223BE20](v61, v62);
  v216 = &v209[-v63];
  MEMORY[0x28223BE20](v64, v65);
  v215 = &v209[-v66];
  MEMORY[0x28223BE20](v67, v68);
  v226 = &v209[-v69];
  MEMORY[0x28223BE20](v70, v71);
  v225 = &v209[-v72];
  MEMORY[0x28223BE20](v73, v74);
  v250 = &v209[-v75];
  MEMORY[0x28223BE20](v76, v77);
  v79 = &v209[-v78];
  v251 = &v209[-v78];
  v80 = sub_22088685C();
  v81 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v82);
  v262 = &v209[-((v83 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = MEMORY[0x28223BE20](v84, v85);
  v88 = &v209[-v87];
  v230 = v81;
  v89 = *(v81 + 16);
  v252 = v80;
  v89(&v209[-v87], a1, v80, v86);
  v90 = type metadata accessor for StockFeedMastheadModel();
  sub_2204B2B14(a1 + v90[5], v79, &qword_2812990C0, v54);
  v91 = a1;
  sub_2204B2B14(a1 + v90[6], v53, &unk_2812990E0, v46);
  v92 = type metadata accessor for StockFeedPriceChangeDisplayBlueprintModifier();
  v93 = *(v92 + 20);
  v94 = (v260 + 16);
  v249 = *(v260 + 16);
  v95 = v232;
  v249(v263, v232 + v93, v264);
  v231 = *(v91 + v90[8]);
  __swift_project_boxed_opaque_existential_1((v95 + *(v92 + 24)), *(v95 + *(v92 + 24) + 24));
  v210 = sub_2208861AC();
  v96 = v258;
  (v89)(v258, v88, v80);
  v97 = v251;
  v98 = v223;
  sub_2204B2B14(v251, v96 + v90[5], &qword_2812990C0, v223);
  v232 = v90;
  v99 = v96 + v90[6];
  v100 = v254;
  v101 = v224;
  sub_2204B2B14(v254, v99, &unk_2812990E0, v224);
  v229 = v88;
  (v89)(v262, v88, v252);
  v102 = v250;
  v103 = v264;
  sub_2204B2B14(v97, v250, &qword_2812990C0, v98);
  sub_2204B2B14(v100, v261, &unk_2812990E0, v101);
  v104 = v103;
  v224 = v94;
  v249(v259, v263, v103);
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FA8 != -1)
  {
    swift_once();
  }

  v105 = v253;
  sub_220886B9C();

  v106 = v225;
  sub_2204B2B14(v102, v225, &qword_2812990C0, MEMORY[0x277D697F8]);
  v107 = v242;
  v108 = *(v242 + 48);
  v109 = v243;
  if (v108(v106, 1, v243) == 1)
  {
    v110 = MEMORY[0x277D697F8];
    sub_22051F374(v106, &qword_2812990C0, MEMORY[0x277D697F8]);
    v111 = v226;
    (*(v107 + 56))(v226, 1, 1, v109);
    sub_2208867CC();
    v112 = v215;
    sub_2204B2B14(v111, v215, &qword_2812990C0, v110);
    v113 = v108(v112, 1, v109);
    v114 = v245;
    if (v113 == 1)
    {
      sub_22051F374(v112, &qword_2812990C0, MEMORY[0x277D697F8]);
      v249 = 0;
      LODWORD(v228) = 1;
    }

    else
    {
      v249 = sub_22088675C();
      LODWORD(v228) = v135;
      (*(v107 + 8))(v112, v109);
    }

    v136 = v219;
    v137 = v217;
    v138 = v216;
    sub_2204B2B14(v111, v216, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v108(v138, 1, v109) == 1)
    {
      sub_22051F374(v138, &qword_2812990C0, MEMORY[0x277D697F8]);
      v227 = 0;
      LODWORD(v225) = 1;
    }

    else
    {
      v227 = sub_22088666C();
      LODWORD(v225) = v141;
      (*(v107 + 8))(v138, v109);
    }

    sub_2204B2B14(v111, v137, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v108(v137, 1, v109) == 1)
    {
      sub_22051F374(v137, &qword_2812990C0, MEMORY[0x277D697F8]);
      v224 = 0;
      LODWORD(v223) = 1;
    }

    else
    {
      v224 = sub_22088671C();
      LODWORD(v223) = v142;
      (*(v107 + 8))(v137, v109);
    }

    sub_2204B2B14(v111, v136, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v108(v136, 1, v109) == 1)
    {
      sub_22051F374(v136, &qword_2812990C0, MEMORY[0x277D697F8]);
      v220 = 0;
      v143 = 0;
    }

    else
    {
      v220 = sub_22088668C();
      v143 = v144;
      (*(v107 + 8))(v136, v109);
    }

    v243 = *(v114 + 16);
    v145 = v244;
    v146 = v257;
    (v243)(v244, v241, v257);
    v147 = v235;
    v148 = v234;
    v149 = v236;
    (*(v235 + 104))(v234, *MEMORY[0x277D69288], v236);
    v150 = v247;
    sub_22088524C();
    v151 = v221;
    *v221 = v249;
    *(v151 + 8) = v228 & 1;
    *(v151 + 16) = v227;
    *(v151 + 24) = v225 & 1;
    *(v151 + 32) = v224;
    *(v151 + 40) = v223 & 1;
    *(v151 + 48) = v220;
    *(v151 + 56) = v143;
    v152 = v240;
    (v243)(v151 + *(v240 + 40), v145, v146);
    *(v151 + 64) = 9666786;
    *(v151 + 72) = 0xA300000000000000;
    (*(v147 + 16))(v151 + *(v152 + 36), v148, v149);
    v153 = *(v152 + 44);
    v154 = v239;
    (*(v239 + 16))(v151 + v153, v150, v248);
    if (qword_281294078 != -1)
    {
      swift_once();
    }

    v249 = qword_2812B6B48;
    (*(v147 + 8))(v148, v149);
    v155 = *(v114 + 8);
    v156 = v257;
    v155(v145, v257);
    v155(v241, v156);
    v157 = MEMORY[0x277D697F8];
    sub_22051F374(v226, &qword_2812990C0, MEMORY[0x277D697F8]);
    (*(v255 + 8))(v253, v256);
    v158 = MEMORY[0x277D697C0];
    sub_22051F374(v261, &unk_2812990E0, MEMORY[0x277D697C0]);
    sub_22051F374(v250, &qword_2812990C0, v157);
    v159 = *(v230 + 8);
    v160 = v252;
    v159(v262, v252);
    v161 = v260;
    (*(v260 + 8))(v263, v264);
    sub_22051F374(v254, &unk_2812990E0, v158);
    sub_22051F374(v251, &qword_2812990C0, v157);
    v159(v229, v160);
    v162 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
    v163 = v249;
    swift_beginAccess();
    (*(v154 + 40))(v163 + v162, v247, v248);
    swift_endAccess();
    v164 = v246;
    v165 = *(v246 + 24);
    v166 = type metadata accessor for QuoteSummaryTimeRange();
    v167 = v222;
    (*(*(v166 - 8) + 56))(&v222[v165], 1, 1, v166);
    sub_220700938(v151, v167, type metadata accessor for PriceViewModel);
    (*(v161 + 32))(v167 + *(v164 + 20), v259, v264);
    v168 = v238;
    (*(v233 + 56))(v238 + *(v237 + 20), 1, 1, v164);
    sub_220700938(v167, v168, type metadata accessor for QuoteViewModel);
    goto LABEL_32;
  }

  v115 = v227;
  (*(v107 + 32))(v227, v106, v109);
  v116 = sub_220656950(v105, v115, v261);
  v226 = v117;
  LODWORD(v225) = v118;
  v119 = v255;
  v120 = v218;
  (*(v255 + 104))(v218, *MEMORY[0x277D69120], v256, v116);
  sub_2207137C8(&qword_281299398, MEMORY[0x277D69160]);
  sub_22089167C();
  sub_22089167C();
  v121 = v245;
  if (v267 == v265 && v268 == v266)
  {
    v122 = 1;
  }

  else
  {
    v122 = sub_2208928BC();
  }

  v123 = v257;
  v241 = *(v119 + 8);
  (v241)(v120, v256);

  v255 = v119 + 8;
  if (v122)
  {
    v124 = v244;
    sub_2208867CC();
    v125 = v210;
    v126 = v213;
    sub_22069DDE0(v124, v210 & 1, v213);
    v127 = v121;
    v128 = v124;
    (*(v127 + 8))(v124, v123);
    v129 = v211;
    v249(v211, v259, v104);
    v130 = v125 & 1;
    v131 = v214;
    sub_22069E5AC(v130, v214);
    v132 = (*(v212 + 48))(v126, 1, v240);
    v133 = v246;
    if (v132 != 1)
    {
      v169 = v129;
      v140 = v220;
      sub_220700938(v126, v220, type metadata accessor for PriceViewModel);
      (*(v260 + 32))(&v140[*(v133 + 20)], v169, v104);
      sub_22071375C(v131, &v140[*(v133 + 24)], &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
      v134 = 0;
      v139 = v228;
      goto LABEL_29;
    }

    sub_22051F374(v131, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
    (*(v260 + 8))(v129, v104);
    sub_22051F374(v126, qword_281294018, type metadata accessor for PriceViewModel);
    v134 = 1;
  }

  else
  {
    v134 = 1;
    v133 = v246;
    v128 = v244;
  }

  v139 = v228;
  v140 = v220;
LABEL_29:
  (*(v233 + 56))(v140, v134, 1, v133);
  sub_22071375C(v140, v139, qword_281293F78, type metadata accessor for QuoteViewModel);
  v170 = sub_22088675C();
  v172 = v171;
  v233 = sub_22088671C();
  v174 = v173;
  v175 = sub_22088668C();
  v177 = v176;
  sub_2208867CC();
  v178 = v235;
  v179 = v234;
  v180 = v236;
  (*(v235 + 104))(v234, *MEMORY[0x277D69288], v236);
  v181 = v247;
  sub_22088524C();
  v182 = v238;
  *v238 = v170;
  *(v182 + 8) = v172 & 1;
  v182[2] = v226;
  *(v182 + 24) = v225 & 1;
  v182[4] = v233;
  v183 = v174 & 1;
  v168 = v182;
  *(v182 + 40) = v183;
  v182[6] = v175;
  v182[7] = v177;
  v184 = v181;
  v185 = v180;
  v186 = v240;
  v187 = v245;
  v188 = v128;
  v189 = v184;
  v190 = v257;
  (*(v245 + 16))(v182 + *(v240 + 40), v188, v257);
  *(v168 + 64) = 9666786;
  *(v168 + 72) = 0xA300000000000000;
  (*(v178 + 16))(v168 + *(v186 + 36), v179, v180);
  v191 = v239;
  v192 = v248;
  (*(v239 + 16))(v168 + *(v186 + 44), v189, v248);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v193 = qword_2812B6B48;
  (*(v178 + 8))(v179, v185);
  (*(v187 + 8))(v244, v190);
  v194 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v191 + 40))(v193 + v194, v189, v192);
  swift_endAccess();
  v195 = v246;
  v196 = v259;
  v197 = v264;
  v249((v168 + *(v246 + 20)), v259, v264);
  v198 = v168 + *(v195 + 24);
  v199 = v253;
  v200 = v227;
  sub_22069E834(v253, v198);
  (*(v242 + 8))(v200, v243);
  (v241)(v199, v256);
  v201 = *(v260 + 8);
  v201(v196, v197);
  v202 = MEMORY[0x277D697C0];
  sub_22051F374(v261, &unk_2812990E0, MEMORY[0x277D697C0]);
  v203 = MEMORY[0x277D697F8];
  sub_22051F374(v250, &qword_2812990C0, MEMORY[0x277D697F8]);
  v204 = *(v230 + 8);
  v205 = v252;
  v204(v262, v252);
  v201(v263, v197);
  sub_22051F374(v254, &unk_2812990E0, v202);
  sub_22051F374(v251, &qword_2812990C0, v203);
  v204(v229, v205);
  sub_22071375C(v228, v168 + *(v237 + 20), qword_281293F78, type metadata accessor for QuoteViewModel);
LABEL_32:
  v206 = v232;
  v207 = v258;
  result = sub_220700938(v168, v258 + v232[7], type metadata accessor for QuoteSummaryViewModel);
  *(v207 + v206[8]) = v231;
  return result;
}

uint64_t sub_220712EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v60 = a3;
  sub_220713810(0, &qword_281299370, MEMORY[0x277D69178]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v56 = &v53 - v6;
  sub_220713810(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v53 - v9;
  v11 = sub_22088685C();
  v57 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StockFeedMastheadModel();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v53 - v25;
  sub_22055D328();
  v59 = v27;
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v55 = v22;
    v32 = v57;
    if (EnumCaseMultiPayload <= 1)
    {
      sub_220700938(v26, v18, type metadata accessor for StockFeedMastheadModel);
      sub_220711368(v18, v55);
      swift_storeEnumTagMultiPayload();
      sub_2207137C8(&qword_281293DD0, type metadata accessor for StockFeedModel);
      sub_22088AD7C();
      return sub_22070086C(v18, type metadata accessor for StockFeedMastheadModel);
    }

    if (EnumCaseMultiPayload == 2)
    {
      (*(v57 + 8))(v26, v11);
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v59 = v19;
        sub_2204597F0();
        v34 = v33;
        v35 = *(v33 + 48);
        v36 = *(v33 + 64);
        v37 = v32;
        v38 = *(v32 + 32);
        v39 = v14;
        v53 = v11;
        v54 = v14;
        v38(v14, v26, v11);
        v40 = MEMORY[0x277D697F8];
        v41 = v10;
        sub_22071375C(&v26[v35], v10, &qword_2812990C0, MEMORY[0x277D697F8]);
        v42 = MEMORY[0x277D69178];
        v43 = v56;
        sub_22071375C(&v26[v36], v56, &qword_281299370, MEMORY[0x277D69178]);
        v44 = *(v34 + 48);
        v45 = *(v34 + 64);
        v46 = v55;
        v47 = v39;
        v48 = v53;
        (*(v37 + 16))(v55, v47, v53);
        sub_2204B2B14(v41, v46 + v44, &qword_2812990C0, v40);
        sub_2204B2B14(v43, v46 + v45, &qword_281299370, v42);
        swift_storeEnumTagMultiPayload();
        sub_2207137C8(&qword_281293DD0, type metadata accessor for StockFeedModel);
        sub_22088AD7C();
        sub_22051F374(v43, &qword_281299370, v42);
        sub_22051F374(v41, &qword_2812990C0, v40);
        return (*(v37 + 8))(v54, v48);
      }

      sub_22070086C(v26, type metadata accessor for StockEarningsModel);
    }

    v29 = v60;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload > 7)
  {
    v29 = v60;
    if (EnumCaseMultiPayload != 8)
    {
      v31 = v59;
      if (EnumCaseMultiPayload == 9)
      {
        v50 = v26;
        v51 = v59;
        sub_22070086C(v50, type metadata accessor for StockFeedModel);
        v31 = v51;
      }

      return (*(*(v31 - 8) + 16))(v29, a1);
    }

    sub_220459914();

    v52 = sub_22089030C();
    (*(*(v52 - 8) + 8))(v26, v52);
    goto LABEL_18;
  }

  v29 = v60;
  if (EnumCaseMultiPayload == 5)
  {
    sub_22070086C(v26, type metadata accessor for StockFeedModel);
LABEL_18:
    v31 = v59;
    return (*(*(v31 - 8) + 16))(v29, a1);
  }

  v30 = v59;
  sub_22070086C(v26, type metadata accessor for StockFeedModel);
  v31 = v30;
  return (*(*(v31 - 8) + 16))(v29, a1);
}

void sub_220713628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor();
    v8[1] = type metadata accessor for StockFeedModel();
    v8[2] = sub_2207137C8(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    v8[3] = sub_2207137C8(&qword_281293DD0, type metadata accessor for StockFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22071375C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_220713810(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2207137C8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_220713810(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_220713864(uint64_t a1, uint64_t a2)
{
  sub_220496328();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2207138D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220496328();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

double sub_22071394C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1 - 8, a2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220713AEC(v2, v4);
  sub_220496328();
  v6 = *&v4[*(v5 + 64)];
  sub_2204AA8DC(&v4[*(v5 + 48)], sub_2204961E0);
  sub_2204AA8DC(v4, type metadata accessor for StockViewModel);
  return v6;
}

double sub_220713A28(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1 - 8, a2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220713AEC(v2, v4);
  sub_220496328();
  v6 = *&v4[*(v5 + 64) + 32];
  sub_2204AA8DC(&v4[*(v5 + 48)], sub_2204961E0);
  sub_2204AA8DC(v4, type metadata accessor for StockViewModel);
  return v6;
}

uint64_t sub_220713AEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockSearchLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220713B50()
{
  v1 = v0;
  v2 = sub_22088A0EC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D69008])
  {
    return 0;
  }

  if (v8 == *MEMORY[0x277D68FF8])
  {
    return 23;
  }

  if (v8 != *MEMORY[0x277D68FE0])
  {
    if (v8 != *MEMORY[0x277D68FF0])
    {
      if (v8 == *MEMORY[0x277D69010])
      {
        return 18;
      }

      if (v8 == *MEMORY[0x277D69000])
      {
        return 19;
      }

      if (v8 != *MEMORY[0x277D68FE8])
      {
        (*(v3 + 8))(v7, v2);
      }
    }

    return 0;
  }

  return 26;
}

unint64_t sub_220713D10()
{
  result = qword_27CF59138;
  if (!qword_27CF59138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59138);
  }

  return result;
}

unint64_t sub_220713D68()
{
  result = qword_28127FEA0;
  if (!qword_28127FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127FEA0);
  }

  return result;
}

uint64_t sub_220713DBC(CGRect *a1, CGRect *a2)
{
  x = a1[1].origin.x;
  y = a1[1].origin.y;
  width = a1[1].size.width;
  height = a1[1].size.height;
  v6 = a2[1].origin.x;
  v7 = a2[1].origin.y;
  v8 = a2[1].size.width;
  v9 = a2[1].size.height;
  if (!CGRectEqualToRect(*a1, *a2))
  {
    return 0;
  }

  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v12.origin.x = v6;
  v12.origin.y = v7;
  v12.size.width = v8;
  v12.size.height = v9;
  if (!CGRectEqualToRect(v11, v12))
  {
    return 0;
  }

  sub_2205A0858();
  return sub_22089208C() & 1;
}

uint64_t sub_220713E78()
{
  sub_220713D68();

  return sub_22088D90C();
}

unint64_t sub_220713EB8()
{
  result = qword_28127FE98;
  if (!qword_28127FE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127FE98);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_220713F30(uint64_t a1, int a2)
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

uint64_t sub_220713F78(uint64_t result, int a2, int a3)
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

uint64_t sub_220713FFC@<X0>(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((v1 + qword_27CF578E8), *(v1 + qword_27CF578E8 + 24));
  v3 = sub_22088F8FC();
  if (v3 > 3)
  {
    if (v3 == 4 || v3 == 5)
    {
      sub_2205E9E2C();
      v5 = v11;
      v6 = *(v11 + 48);
      if (qword_27CF55B50 != -1)
      {
        swift_once();
      }

      v7 = sub_22089030C();
      v12 = __swift_project_value_buffer(v7, qword_27CF6D0C0);
      v9 = *(*(v7 - 8) + 16);
      v9(a1, v12, v7);
      if (qword_27CF55B70 != -1)
      {
        swift_once();
      }

      v10 = qword_27CF6D108;
      goto LABEL_25;
    }

    if (v3 == 6)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      sub_2205E9E2C();
      v5 = v4;
      v6 = *(v4 + 48);
      if (qword_28128D5B0 != -1)
      {
        swift_once();
      }

      v7 = sub_22089030C();
      v8 = __swift_project_value_buffer(v7, qword_2812B6AF8);
      v9 = *(*(v7 - 8) + 16);
      v9(a1, v8, v7);
      if (qword_28128D590 != -1)
      {
        swift_once();
      }

      v10 = qword_2812B6AC8;
LABEL_25:
      v21 = __swift_project_value_buffer(v7, v10);
      v9(a1 + v6, v21, v7);
      v14 = *(*(v5 - 8) + 56);
      v16 = a1;
      v17 = 0;
      v15 = v5;
      goto LABEL_26;
    }

    if (v3 == 3)
    {
      sub_220891ADC();
      sub_22044D56C(0, &qword_28127E420);
      v18 = sub_2208922DC();
      sub_22088A7EC();

LABEL_20:
      sub_2205E9E2C();
      v5 = v19;
      v6 = *(v19 + 48);
      if (qword_27CF55B58 != -1)
      {
        swift_once();
      }

      v7 = sub_22089030C();
      v20 = __swift_project_value_buffer(v7, qword_27CF6D0D8);
      v9 = *(*(v7 - 8) + 16);
      v9(a1, v20, v7);
      if (qword_27CF55B78 != -1)
      {
        swift_once();
      }

      v10 = qword_27CF6D120;
      goto LABEL_25;
    }

LABEL_29:
    result = sub_22089267C();
    __break(1u);
    return result;
  }

  sub_2205E9E2C();
  v14 = *(*(v13 - 8) + 56);
  v15 = v13;
  v16 = a1;
  v17 = 1;
LABEL_26:

  return v14(v16, v17, 1, v15);
}

uint64_t sub_220714428@<X0>(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((v1 + qword_27CF578E8), *(v1 + qword_27CF578E8 + 24));
  v3 = sub_22088F8FC();
  if (v3 > 3)
  {
    if (v3 == 4 || v3 == 5)
    {
      sub_2205E9E2C();
      v5 = v11;
      v6 = *(v11 + 48);
      if (qword_27CF55B08 != -1)
      {
        swift_once();
      }

      v7 = sub_22089030C();
      v12 = __swift_project_value_buffer(v7, qword_27CF6D038);
      v9 = *(*(v7 - 8) + 16);
      v9(a1, v12, v7);
      if (qword_27CF55B18 != -1)
      {
        swift_once();
      }

      v10 = qword_27CF6D068;
      goto LABEL_25;
    }

    if (v3 == 6)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      sub_2205E9E2C();
      v5 = v4;
      v6 = *(v4 + 48);
      if (qword_28128CC78 != -1)
      {
        swift_once();
      }

      v7 = sub_22089030C();
      v8 = __swift_project_value_buffer(v7, qword_2812B6AA0);
      v9 = *(*(v7 - 8) + 16);
      v9(a1, v8, v7);
      if (qword_28128CC58 != -1)
      {
        swift_once();
      }

      v10 = qword_2812B6A70;
LABEL_25:
      v21 = __swift_project_value_buffer(v7, v10);
      v9(a1 + v6, v21, v7);
      v14 = *(*(v5 - 8) + 56);
      v16 = a1;
      v17 = 0;
      v15 = v5;
      goto LABEL_26;
    }

    if (v3 == 3)
    {
      sub_220891ADC();
      sub_22044D56C(0, &qword_28127E420);
      v18 = sub_2208922DC();
      sub_22088A7EC();

LABEL_20:
      sub_2205E9E2C();
      v5 = v19;
      v6 = *(v19 + 48);
      if (qword_27CF55B10 != -1)
      {
        swift_once();
      }

      v7 = sub_22089030C();
      v20 = __swift_project_value_buffer(v7, qword_27CF6D050);
      v9 = *(*(v7 - 8) + 16);
      v9(a1, v20, v7);
      if (qword_27CF55B20 != -1)
      {
        swift_once();
      }

      v10 = qword_27CF6D080;
      goto LABEL_25;
    }

LABEL_29:
    result = sub_22089267C();
    __break(1u);
    return result;
  }

  sub_2205E9E2C();
  v14 = *(*(v13 - 8) + 56);
  v15 = v13;
  v16 = a1;
  v17 = 1;
LABEL_26:

  return v14(v16, v17, 1, v15);
}

uint64_t *sub_22071489C()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 136);
  sub_22046DA2C(v0 + v3, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 24))(v0, &off_28341E4A0, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  sub_22054B9F8((v0 + 2));

  (*(*(*(v2 + 80) - 8) + 8))(v1 + *(*v1 + 112));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + v3);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v1 + *(*v1 + 200));

  __swift_destroy_boxed_opaque_existential_1(v1 + *(*v1 + 224));

  return v0;
}

uint64_t sub_220714B34()
{
  sub_22071489C();

  return swift_deallocClassInstance();
}

uint64_t sub_220714B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(a4 + 64))(a1, a3, a4);
    sub_220524414();
    sub_220488378(&qword_281297D18, sub_220524414);
    sub_22088B6DC();
  }

  return result;
}

uint64_t sub_220714CA0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    sub_2207DA304();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220714D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2206FCF38();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22071B134(a1, v10, sub_2206FCF38);
    sub_2205E9E2C();
    v13 = v12;
    if ((*(*(v12 - 8) + 48))(v10, 1, v12) == 1)
    {
      v19[4] = (*(a4 + 80))(a3, a4);
      v14 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v15 = swift_allocObject();
      v15[2] = a3;
      v15[3] = a4;
      v15[4] = v14;
      sub_220524414();
      sub_220488378(&qword_281297D18, sub_220524414);

      sub_22088B6DC();
    }

    else
    {

      v16 = *(v13 + 48);
      v17 = sub_22089030C();
      v18 = *(*(v17 - 8) + 8);
      v18(&v10[v16], v17);
      return (v18)(v10, v17);
    }
  }

  return result;
}

uint64_t sub_220714FDC(uint64_t a1)
{
  v2 = sub_22088C6AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v3 + 16))(v6, a1, v2);
    if ((*(v3 + 88))(v6, v2) == *MEMORY[0x277D6DFA0])
    {
      (*(v3 + 8))(v6, v2);
      if (swift_unknownObjectWeakLoadStrong())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          *(swift_allocObject() + 16) = Strong;
          swift_unknownObjectRetain();
          sub_220888FEC();
          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

uint64_t sub_2207151CC()
{
  v1 = *v0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_22071B274(Strong);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  (*(v3 + 48))(v4, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v5;
  sub_220524414();
  sub_220488378(&qword_281297D18, sub_220524414);

  sub_22088B6DC();
}

uint64_t sub_220715374(uint64_t a1)
{
  v2 = sub_22088C6AC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D6DF98])
  {
    return (*(v3 + 8))(v7, v2);
  }

  if (v8 != *MEMORY[0x277D6DF90] && v8 != *MEMORY[0x277D6DFA0])
  {
    return (*(v3 + 8))(v7, v2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        *(swift_allocObject() + 16) = Strong;
        swift_unknownObjectRetain();
        sub_220888FEC();
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_220715568(void *a1)
{
  v77 = *v1;
  v73 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v73, v3);
  v74 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A170(0, &qword_281297F58, sub_22051D97C, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v61 - v7;
  sub_22051D97C();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v69 = v13;
  v70 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v76 = v61 - v16;
  sub_2204F1480();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v20);
  v71 = v21;
  v72 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = v61 - v24;
  v75 = v1;
  sub_22088B6BC();
  v79 = *&v78[0];
  sub_220488310(0);
  sub_220488378(&qword_281297C80, sub_220488310);
  v26 = v10;
  v27 = v11;
  sub_22088BF9C();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088845C();
  sub_22088E70C();

  if ((*(v11 + 48))(v8, 1, v26) == 1)
  {
    sub_22071AF94(v8, &qword_281297F58, sub_22051D97C, MEMORY[0x277D83D88], sub_22047A170);
    v28 = a1[3];
    v29 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v28);
    MEMORY[0x223D85A60](0, v28, v29);
    return (*(v19 + 8))(v25, v18);
  }

  else
  {
    v67 = v25;
    v68 = v19;
    v31 = *(v11 + 32);
    v32 = v76;
    v31(v76, v8, v26);
    v33 = v74;
    sub_22088AD8C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v34 = *(v33 + 16);

      v35 = swift_allocObject();
      v64 = v31;
      v36 = v75;
      swift_weakInit();
      sub_22046DA2C(a1, v78);
      v37 = swift_allocObject();
      v63 = v27 + 32;
      v38 = v77;
      v73 = *(v77 + 80);
      v37[2] = v73;
      v74 = *(v38 + 88);
      v37[3] = v74;
      v37[4] = v34;
      v37[5] = v35;
      v39 = sub_220457328(v78, (v37 + 6));
      MEMORY[0x28223BE20](v39, v40);
      v61[-4] = v36;
      v61[-3] = v32;
      v65 = v34;
      v61[-2] = v34;

      sub_220888FBC();
      v61[2] = sub_22044D56C(0, &qword_28127E7C0);
      v41 = sub_220891D0C();
      v42 = swift_allocObject();
      v66 = v26;
      v61[0] = sub_22071B654;
      *(v42 + 16) = sub_22071B654;
      *(v42 + 24) = v37;

      v43 = sub_220888E6C();
      v62 = v18;
      v61[1] = v43;

      v44 = sub_220891D0C();
      v45 = v70;
      v46 = v66;
      (*(v27 + 16))(v70, v32, v66);
      v47 = (*(v27 + 80) + 56) & ~*(v27 + 80);
      v48 = swift_allocObject();
      v49 = v74;
      *(v48 + 2) = v73;
      *(v48 + 3) = v49;
      *(v48 + 4) = v61[0];
      *(v48 + 5) = v37;
      v50 = v64;
      *(v48 + 6) = v65;
      v50(&v48[v47], v45, v46);

      v70 = sub_220888EAC();

      v51 = sub_220891D0C();
      v53 = v67;
      v52 = v68;
      v54 = v72;
      v55 = v62;
      (*(v68 + 16))(v72, v67, v62);
      v56 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v57 = swift_allocObject();
      v58 = v74;
      *(v57 + 16) = v73;
      *(v57 + 24) = v58;
      (*(v52 + 32))(v57 + v56, v54, v55);
      sub_220888EEC();

      (*(v52 + 8))(v53, v55);
      return (*(v27 + 8))(v76, v66);
    }

    else
    {
      sub_22047BE48(v33, type metadata accessor for ForYouFeedModel);
      v59 = a1[3];
      v60 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v59);
      MEMORY[0x223D85A60](0, v59, v60);
      (*(v68 + 8))(v67, v18);
      return (*(v27 + 8))(v32, v26);
    }
  }
}

uint64_t sub_220715DC4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_2204F1480();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      if (a1)
      {
        v15 = a1;
      }

      else
      {

        sub_22088B6BC();
        aBlock[6] = aBlock[0];
        sub_220488310(0);
        sub_220488378(&qword_281297C80, sub_220488310);
        sub_22088BF9C();

        type metadata accessor for ForYouFeedSectionDescriptor();
        type metadata accessor for ForYouFeedModel();
        sub_220488378(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
        sub_220488378(&unk_281293320, type metadata accessor for ForYouFeedModel);
        sub_22088BEEC();
        (*(v9 + 8))(v12, v8);
      }

      sub_22088BF1C();

      v16 = [objc_opt_self() sharedApplication];
      aBlock[4] = sub_22071B884;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2204C35E8;
      aBlock[3] = &block_descriptor_34;
      v17 = _Block_copy(aBlock);

      [v16 su:v17 performBlockAfterCATransactionCommits:?];
      _Block_release(v17);
    }
  }

  v18 = a4[3];
  v19 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v18);
  return MEMORY[0x223D85A60](a1 == 0, v18, v19);
}

uint64_t sub_220716134()
{
  if (qword_281298C00 != -1)
  {
    swift_once();
  }

  return sub_2208883FC();
}

uint64_t sub_2207161A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22051D97C();
  v4 = sub_22088AD4C();
  v6 = sub_22052E0D0(v4, v5, a3);

  return v6;
}

uint64_t sub_220716220(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v31 = a3;
  v6 = *a2;
  v29 = sub_220886A4C();
  v7 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_220885D4C();
  v11 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[1];
  v16 = a1[2];
  v27 = *a1;
  v28 = v16;
  v26 = v6[14];
  v17 = (*(a2 + v6[16]) + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_watchlistManager);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_2208863EC();
  sub_2208869CC();
  (*(v7 + 8))(v10, v29);
  v18 = *(v6[11] + 56);
  v19 = v6[10];
  v20 = v27;
  v21 = v28;
  v22 = v18(v27, v15, v28, v14, v19);
  (*(v11 + 8))(v14, v30);
  v33 = v22;
  v23 = swift_allocObject();
  v23[2] = v20;
  v23[3] = v15;
  v23[4] = v21;
  v23[5] = a2;
  v24 = v32;
  v23[6] = v31;
  v23[7] = v24;
  sub_220524414();
  sub_220488378(&qword_281297D18, sub_220524414);

  sub_22088B6DC();
}

void sub_22071653C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v8 = sub_22088C6AC();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v13, a1, v8, v11);
  v14 = (*(v9 + 88))(v13, v8);
  if (v14 == *MEMORY[0x277D6DF98])
  {
    (*(v9 + 96))(v13, v8);
    v15 = *v13;
    v16 = *v13;
    (a6)(v15);

LABEL_5:
    return;
  }

  if (v14 == *MEMORY[0x277D6DF90])
  {
    type metadata accessor for ForYouFeedInteractor.Errors();
    swift_getWitnessTable();
    v15 = swift_allocError();
    a6();
    goto LABEL_5;
  }

  if (v14 == *MEMORY[0x277D6DFA0])
  {
    type metadata accessor for ForYouFeedServiceConfig();
    sub_220488378(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
    if ((sub_22088FAEC() & 1) != 0 && (sub_220716854() & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        __swift_project_boxed_opaque_existential_1((Strong + 88), *(Strong + 112));
        v18 = off_28341F618[0];
        v19 = type metadata accessor for ForYouFeedTracker();
        v18(v19, &off_28341F5D8);
        swift_unknownObjectRelease();
      }
    }

    (a6)(0);
  }

  else
  {
    sub_22089267C();
    __break(1u);
  }
}

uint64_t sub_220716854()
{
  v37 = type metadata accessor for ForYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v37, v0);
  v2 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FA2D0();
  v4 = v3;
  v33 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22071B7F0();
  v34 = v8 - 8;
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F1480();
  v13 = v12;
  v36 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v32 - v19;
  sub_22088B6BC();
  v38[4] = v38[5];
  sub_220488310(0);
  sub_220488378(&qword_281297C80, sub_220488310);
  sub_22088BF9C();

  v21 = *(v36 + 16);
  v35 = v20;
  v21(v16, v20, v13);
  sub_220488378(&qword_281296EC0, sub_2204F1480);
  sub_2208915BC();
  v22 = *(v34 + 44);
  sub_220488378(&unk_281296EB0, sub_2204F1480);
  sub_22089199C();
  if (*&v11[v22] == v38[0])
  {
LABEL_2:
    v23 = 0;
  }

  else
  {
    v25 = (v33 + 16);
    v26 = (v33 + 8);
    while (1)
    {
      v27 = sub_2208919BC();
      (*v25)(v7);
      v27(v38, 0);
      sub_2208919AC();
      sub_22088B2AC();
      (*v26)(v7, v4);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        sub_22047BE48(v2, type metadata accessor for ForYouFeedSectionDescriptor);
        v23 = 1;
        goto LABEL_3;
      }

      if (EnumCaseMultiPayload == 1)
      {
        sub_22045849C();
        v30 = *(v29 + 48);
        sub_22071AF94(&v2[*(v29 + 64)], &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88], sub_22047A170);
        sub_22047BE48(&v2[v30], type metadata accessor for StockViewModel);
        v31 = sub_22088685C();
        (*(*(v31 - 8) + 8))(v2, v31);
        v23 = 1;
        goto LABEL_3;
      }

      if (!EnumCaseMultiPayload)
      {
        break;
      }

      sub_22047BE48(v2, type metadata accessor for ForYouFeedSectionDescriptor);
      sub_22089199C();
      if (*&v11[v22] == v38[0])
      {
        goto LABEL_2;
      }
    }

    sub_22071AF94(v2, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88], sub_22047A170);
    v23 = 1;
  }

LABEL_3:
  sub_22047BE48(v11, sub_22071B7F0);
  (*(v36 + 8))(v35, v13);
  return v23;
}

uint64_t sub_220716DD4(void *a1, uint64_t *a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a6;
  v10 = *a2;
  v11 = sub_22089030C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206FCF38();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_22088C38C())
  {
    return a3(a1);
  }

  v41 = a1;
  v42 = a3;
  v43 = a4;
  if (!a5)
  {
    sub_220714428(v19);
    sub_2205E9E2C();
    v22 = v21;
    if ((*(*(v21 - 8) + 48))(v19, 1, v21) == 1)
    {
      a5 = 0;
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_13;
      }

      if (qword_28128CC70 != -1)
      {
        swift_once();
      }

      v23 = __swift_project_value_buffer(v11, qword_2812B6A88);
      type metadata accessor for ForYouFeedInteractor();
      sub_220822224(v23);
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v12 + 32))(v15, v19, v11);
      if (swift_unknownObjectWeakLoadStrong())
      {
        type metadata accessor for ForYouFeedInteractor();
        sub_220822224(v15);
        swift_unknownObjectRelease();
      }

      v24 = *(v22 + 48);
      v25 = *(v12 + 8);
      v25(v15, v11);
      v25(&v19[v24], v11);
    }

    a5 = 0;
  }

LABEL_13:
  sub_22051D97C();
  v26 = sub_22088AD4C();
  v28 = v27;
  v31 = v10 + 80;
  v30 = *(v10 + 80);
  v29 = *(v31 + 8);
  v32 = *(v29 + 96);

  v33 = v32(v26, v28, a5, v30, v29);

  v45 = v33;
  v34 = swift_allocObject();
  v35 = v41;
  v34[2] = v42;
  v34[3] = v43;
  v34[4] = v35;

  v36 = v35;
  sub_220524414();
  sub_220488378(&qword_281297D18, sub_220524414);
  sub_22088B6DC();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  __swift_project_boxed_opaque_existential_1((Strong + 88), *(Strong + 112));
  v38 = off_28341F620;
  v39 = type metadata accessor for ForYouFeedTracker();
  v38(v39, &off_28341F5D8);

  return swift_unknownObjectRelease();
}

uint64_t sub_220717248()
{
  sub_2204F1480();
  sub_220488378(&unk_281296EB0, sub_2204F1480);
  sub_22089193C();
  sub_22089199C();
  result = sub_22089198C();
  if (result == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_2208883FC();
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_22071733C()
{
  v0 = sub_22088BF0C();
  if (v0 >> 62)
  {
    if (v0 >> 62 != 1)
    {
      return;
    }
  }

  else
  {
    sub_2204A788C(v0);
  }

  sub_220888FBC();
  sub_22044D56C(0, &qword_28127E7C0);
  v1 = sub_220891D0C();
  sub_220888E6C();
}

uint64_t sub_22071747C(uint64_t *a1, void *a2)
{
  v4 = *a2;
  v19 = sub_220886A4C();
  v5 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220885D4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v17 = v4[14];
  v14 = (*(a2 + v4[16]) + OBJC_IVAR____TtC8StocksUI21ForYouFeedDataManager_watchlistManager);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_2208863EC();
  sub_2208869CC();
  (*(v5 + 8))(v8, v19);
  v15 = (*(v4[11] + 72))(v18, v13, v4[10]);
  (*(v10 + 8))(v13, v9);
  v20 = v15;
  sub_220524414();
  sub_220488378(&qword_281297D18, sub_220524414);
  sub_22088B6DC();
}

uint64_t sub_220717718(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *a4)
{
  v32 = a3;
  v29 = a2;
  v30 = a1;
  v28[1] = *v4;
  v31 = sub_2204FA2D0;
  v6 = MEMORY[0x277D83D88];
  sub_22047A170(0, &unk_281297E50, sub_2204FA2D0, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v28 - v9;
  sub_22047A170(0, &unk_281299810, type metadata accessor for ForYouFeedRouteModel, v6);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = (v28 - v13);
  v15 = type metadata accessor for ForYouFeedRouteModel();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a4;
  sub_2204FA2D0();
  v22 = v21;
  v23 = *(v21 - 8);
  (*(v23 + 16))(v10, v29, v21);
  v24 = v22;
  v25 = v30;
  (*(v23 + 56))(v10, 0, 1, v24);
  v34 = v20;
  sub_220717A7C(v25, v10, v32, &v34, v14);
  sub_22071AF94(v10, &unk_281297E50, v31, v6, sub_22047A170);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_22071AF94(v14, &unk_281299810, type metadata accessor for ForYouFeedRouteModel, MEMORY[0x277D83D88], sub_22047A170);
  }

  sub_22071B210(v14, v19);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = v20;
    sub_2208223F4(v19, v25, &v33, Strong);
    swift_unknownObjectRelease();
  }

  return sub_22047BE48(v19, type metadata accessor for ForYouFeedRouteModel);
}

uint64_t sub_220717A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned __int8 *a4@<X3>, void *a5@<X8>)
{
  LODWORD(v154) = a3;
  v155 = a2;
  v176 = a5;
  v171 = *v5;
  v8 = type metadata accessor for ForYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v150 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_22047A170(0, &unk_281297E50, sub_2204FA2D0, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v156 = &v142 - v14;
  sub_2204FA2D0();
  v162 = v15;
  v161 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v151 = &v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v168, v18);
  v166 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_220887C9C();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165, v20);
  v153 = &v142 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v158 = &v142 - v24;
  v160 = sub_22088822C();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160, v25);
  v163 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A170(0, &qword_2812994E0, MEMORY[0x277CC9260], v11);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v157 = &v142 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v174 = &v142 - v32;
  v33 = sub_2208876BC();
  MEMORY[0x28223BE20](v33 - 8, v34);
  v167 = &v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_22088698C();
  v170 = *(v173 - 8);
  MEMORY[0x28223BE20](v173, v36);
  v152 = &v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v175 = &v142 - v40;
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v142 - v43;
  sub_2205603E4();
  MEMORY[0x28223BE20](v45 - 8, v46);
  v48 = &v142 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720();
  v50 = v49;
  v172 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v51);
  v53 = &v142 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v54, v55);
  v57 = &v142 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *a4;
  sub_22051D97C();
  v60 = v59;
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      v62 = v176;
      if (EnumCaseMultiPayload != 5)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v62 = v176;
      if (EnumCaseMultiPayload == 3)
      {

        sub_220458918();
        v64 = *(v63 + 48);
        v65 = sub_22089030C();
        (*(*(v65 - 8) + 8))(&v57[v64], v65);
LABEL_9:
        v68 = type metadata accessor for ForYouFeedRouteModel();
        return (*(*(v68 - 8) + 56))(v62, 1, 1, v68);
      }
    }

LABEL_8:
    sub_22047BE48(v57, type metadata accessor for ForYouFeedModel);
    goto LABEL_9;
  }

  v144 = v60;
  v66 = v174;
  v145 = v58;
  v146 = a1;
  v147 = v44;
  v149 = v53;
  v148 = v50;
  v67 = v175;
  if (EnumCaseMultiPayload)
  {
    v62 = v176;
    goto LABEL_8;
  }

  v70 = v149;
  v71 = v148;
  (*(v172 + 32))(v149, v57, v148);
  v72 = v169;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_220821FD8(Strong);
    swift_unknownObjectRelease();
  }

  sub_2208903FC();
  v74 = sub_22089030C();
  v75 = (*(*(v74 - 8) + 48))(v48, 1, v74);
  sub_22047BE48(v48, sub_2205603E4);
  v76 = v67;
  v77 = v66;
  if (v75 != 1)
  {
    v78 = swift_unknownObjectWeakLoadStrong();
    if (v78)
    {
      __swift_project_boxed_opaque_existential_1((v78 + 88), *(v78 + 112));
      sub_22073ED74(v146);
      v70 = v149;
      swift_unknownObjectRelease();
    }
  }

  v79 = v147;
  sub_22088FF6C();
  v80 = v170;
  v81 = *(v170 + 16);
  v82 = v173;
  v81(v76, v79, v173);
  v83 = (*(v80 + 88))(v76, v82);
  if (v83 == *MEMORY[0x277D69850])
  {
    v143 = v81;
    (*(v80 + 96))(v76, v173);
    swift_unknownObjectRelease();
    v84 = [sub_2208868DC() routeURL];
    swift_unknownObjectRelease();
    if (v84)
    {
      sub_220884E4C();

      v85 = sub_220884E9C();
      v86 = *(*(v85 - 8) + 56);
      v86(v77, 0, 1, v85);
      v154 = MEMORY[0x277CC9260];
      v153 = MEMORY[0x277D83D88];
      sub_22071AF94(v77, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_22047A170);
      sub_2208868DC();
      v87 = v163;
      sub_2208881FC();
      v88 = v157;
      v86(v157, 1, 1, v85);
      v89 = v164;
      v90 = v158;
      v91 = v165;
      (*(v164 + 104))(v158, *MEMORY[0x277D2FF08], v165);
      v92 = v167;
      sub_22088767C();
      (*(v89 + 8))(v90, v91);
      v93 = v172;
      sub_22071AF94(v88, &qword_2812994E0, v154, v153, sub_22047A170);
      (*(v159 + 8))(v87, v160);
      v94 = v72;
      v95 = v79;
      v96 = v171;
      goto LABEL_24;
    }

    v101 = sub_220884E9C();
    (*(*(v101 - 8) + 56))(v77, 1, 1, v101);
    sub_22071AF94(v77, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_22047A170);
    sub_220887EDC();
    swift_allocObject();
    v102 = sub_220887ECC();
    v103 = *(*v72 + 192);
    *(v72 + v103) = v102;

    v104 = *(v72 + *(*v72 + 120));

    sub_22088AD4C();
    if (*(v72 + v103))
    {
      v94 = v72;
      *&v180 = v104;
      sub_22071AFF4();
      v106 = v105;
      swift_allocObject();

      v174 = sub_2208873CC();
      sub_22088AD4C();
      v95 = v147;
      sub_2208868DC();
      v143(v152, v95, v173);
      sub_2208928FC();
      sub_2208881DC();
      *(&v181 + 1) = v106;
      v182 = sub_220488378(&unk_281299800, sub_22071AFF4);
      *&v180 = v174;
      v96 = v171;
      swift_getWitnessTable();
      sub_220887E9C();
      swift_allocObject();

      sub_220887E8C();
      v107 = v164;
      v108 = MEMORY[0x277D2FEF8];
      if ((v154 & 1) == 0)
      {
        v108 = MEMORY[0x277D2FF08];
      }

      v109 = v153;
      v110 = v165;
      (*(v164 + 104))(v153, *v108, v165);
      v92 = v167;
      sub_2208876AC();

      (*(v107 + 8))(v109, v110);
      v80 = v170;
      v93 = v172;
LABEL_24:
      v111 = v166;
      sub_22071B134(v92, v166, MEMORY[0x277D2FB40]);
      v112 = 2 * (v145 != 0);
      sub_22052EC94();
      v174 = *(v113 + 48);
      sub_2204481D8();
      v115 = *(v114 + 64);
      *(v111 + *(v114 + 48)) = v112;
      v116 = (v111 + v115);
      v116[3] = v96;
      v116[4] = &off_28341E4D0;
      v117 = v111;
      *v116 = v94;
      swift_storeEnumTagMultiPayload();

      v118 = sub_22088695C();
      v119 = v149;
      if ((v118 & 1) == 0)
      {
        sub_22047BE48(v92, MEMORY[0x277D2FB40]);
        (*(v80 + 8))(v95, v173);
        (*(v93 + 8))(v119, v148);
        goto LABEL_28;
      }

      v120 = v156;
      sub_22071B19C(v155, v156, &unk_281297E50, sub_2204FA2D0, MEMORY[0x277D83D88], sub_22047A170);
      v121 = v161;
      v122 = v162;
      if ((*(v161 + 48))(v120, 1, v162) == 1)
      {
        sub_22047BE48(v92, MEMORY[0x277D2FB40]);
        (*(v80 + 8))(v147, v173);
        (*(v93 + 8))(v119, v148);
        sub_22071AF94(v120, &unk_281297E50, sub_2204FA2D0, MEMORY[0x277D83D88], sub_22047A170);
LABEL_28:
        v124 = v175;
        v123 = v176;
LABEL_29:
        v125 = v174;
        sub_22071B134(v117, v123, type metadata accessor for StocksActivity.Article);
        v126 = type metadata accessor for ForYouFeedRouteModel();
LABEL_30:
        swift_storeEnumTagMultiPayload();
        (*(*(v126 - 8) + 56))(v123, 0, 1, v126);
        sub_22047BE48(v117, type metadata accessor for StocksActivity.Article);
        v127 = sub_220885CDC();
        return (*(*(v127 - 8) + 8))(&v124[v125], v127);
      }

      v128 = v151;
      (*(v121 + 32))(v151, v120, v122);
      v129 = v150;
      v130 = v121;
      sub_22088B2AC();
      v131 = v122;
      v132 = sub_22075339C();
      sub_22047BE48(v129, type metadata accessor for ForYouFeedSectionDescriptor);
      v124 = v175;
      if (v132)
      {
        v133 = sub_2206D17E8();
        if ((v134 & 1) == 0 && !v133)
        {
          v135 = [*(v169 + *(*v169 + 152)) cachedSubscription];
          if (objc_getAssociatedObject(v135, v135 + 1))
          {
            sub_2208923BC();
            swift_unknownObjectRelease();
          }

          else
          {
            v178 = 0u;
            v179 = 0u;
          }

          v136 = v170;
          v180 = v178;
          v181 = v179;
          if (*(&v179 + 1))
          {
            sub_22044D56C(0, &qword_28127E470);
            if (swift_dynamicCast())
            {
              v137 = v177;
              v138 = [v177 integerValue];
              if (v138 == -1)
              {
                goto LABEL_54;
              }

              goto LABEL_46;
            }
          }

          else
          {
            sub_22047BE48(&v180, sub_22055F87C);
          }

          v137 = 0;
          v138 = 0;
LABEL_46:
          if (objc_getAssociatedObject(v135, ~v138))
          {
            sub_2208923BC();
            v136 = v170;
            swift_unknownObjectRelease();
          }

          else
          {
            v178 = 0u;
            v179 = 0u;
          }

          v180 = v178;
          v181 = v179;
          if (*(&v179 + 1))
          {
            sub_22044D56C(0, &qword_28127E470);
            if (swift_dynamicCast())
            {
              v139 = v93;
              v140 = v136;
              v141 = v177;
              [v177 integerValue];

              (*(v161 + 8))(v151, v162);
              sub_22047BE48(v167, MEMORY[0x277D2FB40]);
              (*(v140 + 8))(v147, v173);
              (*(v139 + 8))(v149, v148);

              v125 = v174;
LABEL_52:
              v123 = v176;
              sub_22071B134(v117, v176, type metadata accessor for StocksActivity.Article);
              v126 = type metadata accessor for ForYouFeedRouteModel();
              goto LABEL_30;
            }
          }

          else
          {
            sub_22047BE48(&v180, sub_22055F87C);
          }

LABEL_54:

          (*(v161 + 8))(v151, v162);
          sub_22047BE48(v167, MEMORY[0x277D2FB40]);
          (*(v136 + 8))(v147, v173);
          (*(v93 + 8))(v149, v148);

          v125 = v174;
          goto LABEL_52;
        }

        (*(v161 + 8))(v128, v162);
      }

      else
      {
        (*(v130 + 8))(v128, v131);
      }

      sub_22047BE48(v92, MEMORY[0x277D2FB40]);
      (*(v170 + 8))(v147, v173);
      (*(v93 + 8))(v149, v148);
      v123 = v176;
      goto LABEL_29;
    }

    __break(1u);
  }

  else if (v83 == *MEMORY[0x277D69840])
  {
    v97 = v79;
    v98 = v173;
    (*(v80 + 8))(v97, v173);
    (*(v172 + 8))(v70, v71);
    (*(v80 + 96))(v76, v98);
    v99 = v176;
    *v176 = *v76;
    swift_storeEnumTagMultiPayload();
    v100 = type metadata accessor for ForYouFeedRouteModel();
    swift_storeEnumTagMultiPayload();
    return (*(*(v100 - 8) + 56))(v99, 0, 1, v100);
  }

  result = sub_2208928AC();
  __break(1u);
  return result;
}

uint64_t sub_22071911C(void (*a1)(char *))
{
  v2 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206A1D94();
  v7 = *(v6 + 48);
  type metadata accessor for ForYouSectionDescriptor();
  swift_storeEnumTagMultiPayload();
  v8 = *MEMORY[0x277D6E258];
  v9 = sub_22088CC6C();
  (*(*(v9 - 8) + 104))(&v5[v7], v8, v9);
  swift_storeEnumTagMultiPayload();
  a1(v5);
  return sub_22047BE48(v5, type metadata accessor for StocksActivity);
}

uint64_t sub_2207192D4()
{
  v1 = (v0 + *(*v0 + 136));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 24))(v0, &off_28341E4A0, v2, v3);
}

uint64_t sub_22071934C()
{
  v1 = type metadata accessor for AttributionSource();
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for ForYouFeedRouteModel();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = (v0 + *(*v0 + 224));
    v12 = v11[3];
    v13 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v12);
    AttributionProviderType.source.getter(v12, v13);
    sub_22071B19C(&v4[*(v1 + 20)], v8, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_22047A170);
    sub_22047BE48(v4, type metadata accessor for AttributionSource);
    swift_storeEnumTagMultiPayload();
    __swift_project_boxed_opaque_existential_1((v10 + 48), *(v10 + 72));
    v15 = 0;
    sub_2207C4374(v8, &v15);
    sub_22047BE48(v8, type metadata accessor for ForYouFeedRouteModel);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_220719530()
{
  v1 = sub_2207DB514();
  sub_22044D56C(0, &qword_28127E420);
  v2 = sub_2208922DC();
  sub_220891AFC();
  if (v1)
  {
    sub_22088A7EC();

    *(v0 + *(*v0 + 192)) = 0;

    sub_22071733C();
  }

  else
  {
    sub_22088A7EC();
  }
}

uint64_t sub_2207196E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v106 = a3;
  v131 = a2;
  v134 = a1;
  v4 = MEMORY[0x277D83D88];
  sub_22047A170(0, &qword_281299820, MEMORY[0x277D2D430], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v111 = &v99 - v7;
  v113 = sub_22088ECCC();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v8);
  v105 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_2208899AC();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v10);
  v108 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_22088971C();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116, v12);
  v114 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_22088918C();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v14);
  v119 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A170(0, &unk_281297E50, sub_2204FA2D0, v4);
  MEMORY[0x28223BE20](v16 - 8, v17);
  *&v123 = &v99 - v18;
  sub_2204FA2D0();
  v124 = *(v19 - 8);
  v125 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v117 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A170(0, &qword_281297500, MEMORY[0x277D6E740], v4);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v122 = &v99 - v24;
  v25 = sub_22088A0DC();
  v127 = *(v25 - 8);
  v128 = v25;
  MEMORY[0x28223BE20](v25, v26);
  v118 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v126 = &v99 - v30;
  sub_22047A170(0, &qword_2812993D0, MEMORY[0x277CC9AF8], v4);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v129 = &v99 - v33;
  v34 = sub_2208854AC();
  v132 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v35);
  v130 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A170(0, &qword_281297F58, sub_22051D97C, v4);
  MEMORY[0x28223BE20](v37 - 8, v38);
  v40 = &v99 - v39;
  sub_22051D97C();
  v42 = v41;
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v44);
  v133 = &v99 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F1480();
  v47 = v46;
  v48 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v49);
  v51 = &v99 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v3;
  sub_22088B6BC();
  v137 = v135;
  sub_220488310(0);
  sub_220488378(&qword_281297C80, sub_220488310);
  sub_22088BF9C();
  v52 = v47;

  sub_2208881EC();
  sub_22088E70C();
  v53 = v43;

  if ((*(v43 + 48))(v40, 1, v42) == 1)
  {
    (*(v48 + 8))(v51, v47);
    v54 = &qword_281297F58;
    v55 = sub_22051D97C;
    return sub_22071AF94(v40, v54, v55, MEMORY[0x277D83D88], sub_22047A170);
  }

  v104 = v48;
  v56 = *(v43 + 32);
  v57 = v133;
  v56(v133, v40, v42);
  v40 = v129;
  sub_22088E7EC();
  v58 = v132;
  if ((*(v132 + 48))(v40, 1, v34) == 1)
  {
    (*(v53 + 8))(v57, v42);
    (*(v104 + 8))(v51, v47);
    v54 = &qword_2812993D0;
    v55 = MEMORY[0x277CC9AF8];
    return sub_22071AF94(v40, v54, v55, MEMORY[0x277D83D88], sub_22047A170);
  }

  v100 = v53;
  v60 = *(v58 + 32);
  v102 = v34;
  v60(v130, v40, v34);
  v61 = sub_22088D5BC();
  v62 = v122;
  (*(*(v61 - 8) + 56))(v122, 1, 1, v61);
  v101 = v42;
  sub_22088AD4C();
  v63 = v123;
  sub_22088E76C();

  v65 = v124;
  v64 = v125;
  result = (*(v124 + 6))(v63, 1, v125);
  v134 = v52;
  if (result == 1)
  {
    goto LABEL_27;
  }

  v66 = v117;
  (*(v65 + 4))(v117, v63, v64);
  v67 = v126;
  sub_22073BB24(v66, v62);
  (*(v65 + 1))(v66, v64);
  sub_22071AF94(v62, &qword_281297500, MEMORY[0x277D6E740], MEMORY[0x277D83D88], sub_22047A170);
  sub_22047A170(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v125 = v68;
  v69 = sub_220886F8C();
  v103 = v69;
  v70 = *(v69 - 8);
  v71 = *(v70 + 72);
  v129 = v51;
  v72 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v73 = swift_allocObject();
  v123 = xmmword_220899360;
  *(v73 + 16) = xmmword_220899360;
  v74 = *MEMORY[0x277CEAD10];
  v75 = *(v70 + 104);
  v75(v73 + v72, v74, v69);
  v124 = "ForYouFeed will auto-refresh";
  sub_220488378(&unk_281298290, MEMORY[0x277D68FD8]);
  v76 = v128;
  sub_2208872CC();

  (*(v127 + 16))(v118, v67, v76);
  v77 = v119;
  sub_22088917C();
  v122 = v71;
  v78 = v103;
  v79 = swift_allocObject();
  *(v79 + 16) = v123;
  LODWORD(v118) = v74;
  v117 = v75;
  v75(v79 + v72, v74, v78);
  sub_220488378(qword_27CF59148, MEMORY[0x277D68310]);
  v80 = v121;
  sub_2208872CC();

  (*(v120 + 8))(v77, v80);
  sub_220488378(&qword_281293340, type metadata accessor for ForYouFeedModel);
  v81 = v133;
  result = sub_22088E7FC();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v82 = v114;
  sub_22088970C();
  v83 = swift_allocObject();
  *(v83 + 16) = v123;
  (v117)(v83 + v72, v118, v78);
  sub_220488378(&qword_281298470, MEMORY[0x277D68720]);
  v84 = v116;
  sub_2208872CC();

  v85 = v82;
  v86 = v81;
  (*(v115 + 8))(v85, v84);
  result = sub_22088E80C();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v87 = v108;
  sub_22088999C();
  v88 = swift_allocObject();
  *(v88 + 16) = v123;
  (v117)(v88 + v72, v118, v78);
  sub_220488378(&qword_2812983F0, MEMORY[0x277D68928]);
  v89 = v110;
  sub_2208872CC();

  (*(v109 + 8))(v87, v89);
  sub_220488378(&qword_281299828, type metadata accessor for ForYouFeedSectionDescriptor);
  v90 = v111;
  sub_22088E78C();
  v91 = v112;
  v92 = v113;
  if ((*(v112 + 48))(v90, 1, v113) == 1)
  {
    sub_22071AF94(v90, &qword_281299820, MEMORY[0x277D2D430], MEMORY[0x277D83D88], sub_22047A170);
    v93 = v102;
    v94 = v104;
  }

  else
  {
    v95 = v105;
    (*(v91 + 32))(v105, v90, v92);
    sub_22071B19C(v106, &v135, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    v93 = v102;
    v94 = v104;
    if (v136)
    {
      __swift_project_boxed_opaque_existential_1(&v135, v136);
      sub_220488378(&qword_2812995B0, MEMORY[0x277D2D430]);
      sub_22088ED7C();
      (*(v91 + 8))(v95, v92);
      __swift_destroy_boxed_opaque_existential_1(&v135);
    }

    else
    {
      (*(v91 + 8))(v95, v92);
      sub_22071AF94(&v135, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    }

    v86 = v81;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v97 = v132;
  v98 = v134;
  if (Strong)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_22071B930(v130);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  (*(v127 + 8))(v126, v128);
  (*(v97 + 8))(v130, v93);
  (*(v100 + 8))(v86, v101);
  return (*(v94 + 8))(v129, v98);
}

uint64_t sub_22071A95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v44 = a2;
  v2 = sub_22088698C();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720();
  v37 = v5;
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v42 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v40, v8);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A170(0, &qword_281297F58, sub_22051D97C, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v35 - v12;
  sub_22051D97C();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F1480();
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088B6BC();
  v45 = v46;
  sub_220488310(0);
  sub_220488378(&qword_281297C80, sub_220488310);
  sub_22088BF9C();

  sub_2208881EC();
  sub_22088E70C();

  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    (*(v22 + 8))(v25, v21);
    sub_22071AF94(v13, &qword_281297F58, sub_22051D97C, MEMORY[0x277D83D88], sub_22047A170);
    v26 = sub_2208898CC();
    return (*(*(v26 - 8) + 56))(v44, 1, 1, v26);
  }

  else
  {
    (*(v16 + 32))(v19, v13, v15);
    v28 = v41;
    sub_22088AD8C();
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v16 + 8))(v19, v15);
      (*(v22 + 8))(v25, v21);
      v29 = sub_2208898CC();
      (*(*(v29 - 8) + 56))(v44, 1, 1, v29);
      return sub_22047BE48(v28, type metadata accessor for ForYouFeedModel);
    }

    else
    {
      v30 = v35;
      v31 = v28;
      v32 = v37;
      (*(v35 + 32))(v42, v31, v37);
      v33 = v36;
      sub_22088FF6C();
      sub_22057BB68();
      (*(v38 + 8))(v33, v39);
      (*(v30 + 8))(v42, v32);
      (*(v16 + 8))(v19, v15);
      (*(v22 + 8))(v25, v21);
      v34 = sub_2208898CC();
      return (*(*(v34 - 8) + 56))(v44, 0, 1, v34);
    }
  }
}

uint64_t sub_22071AF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_22071AFF4()
{
  if (!qword_2812997E0)
  {
    sub_2204888A4();
    sub_220488378(&unk_2812978D0, sub_2204888A4);
    sub_220488378(&unk_2812997E8, type metadata accessor for ForYouFeedLayoutModel);
    sub_220488378(&qword_28128DDF0, type metadata accessor for ForYouFeedLayoutModel);
    sub_220488378(&qword_2812997F8, type metadata accessor for ForYouFeedLayoutModel);
    v0 = sub_2208873DC();
    if (!v1)
    {
      atomic_store(v0, &qword_2812997E0);
    }
  }
}

uint64_t sub_22071B134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22071B19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_22071B210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouFeedRouteModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22071B274(uint64_t a1)
{
  v25 = sub_22088E85C();
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = sub_22088E86C();
  v6 = *(v24[0] - 8);
  MEMORY[0x28223BE20](v24[0], v7);
  v9 = (v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24[1] = sub_22088C6FC();
  v10 = (a1 + OBJC_IVAR____TtC8StocksUI24ForYouFeedViewController_styler);
  swift_beginAccess();
  v11 = __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v9[3] = sub_22088FE9C();
  v9[4] = sub_220488378(&qword_27CF58020, MEMORY[0x277D32BC8]);
  __swift_allocate_boxed_opaque_existential_1(v9);
  v12 = *v11;
  v13 = [objc_opt_self() labelColor];
  v15 = v12[5];
  v14 = v12[6];
  __swift_project_boxed_opaque_existential_1(v12 + 2, v15);
  (*(*(v14 + 16) + 472))(v15);
  sub_22088FE8C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v18 = sub_22089141C();
  v20 = v19;

  v9[5] = v18;
  v9[6] = v20;
  v21 = v24[0];
  (*(v6 + 104))(v9, *MEMORY[0x277D6EC80], v24[0]);
  v22 = v25;
  (*(v2 + 104))(v5, *MEMORY[0x277D6ECB0], v25);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_22088B54C();

  (*(v2 + 8))(v5, v22);

  return (*(v6 + 8))(v9, v21);
}

uint64_t sub_22071B6A0(void *a1, uint64_t *a2)
{
  sub_22051D97C();
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2 + ((*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80));

  return sub_220716DD4(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_22071B728()
{
  sub_2204F1480();

  return sub_220717248();
}

void sub_22071B7F0()
{
  if (!qword_28127E360)
  {
    sub_2204F1480();
    sub_220488378(&unk_281296EB0, sub_2204F1480);
    v0 = sub_22089265C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E360);
    }
  }
}

void sub_22071B930(uint64_t a1)
{
  sub_22047A170(0, &qword_2812993D0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v16[-v4];
  sub_22088C72C();
  sub_22088867C();

  if (v16[15] == 1)
  {
    swift_getObjectType();
    v6 = sub_2208854AC();
    v7 = *(v6 - 8);
    (*(v7 + 16))(v5, a1, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    sub_22088DDCC();
  }

  sub_22088C71C();
  v8 = sub_22088BFCC();

  v9 = [v8 indexPathsForVisibleItems];

  v10 = sub_2208854AC();
  v11 = sub_2208916EC();

  v12 = sub_2206FA288(a1, v11);

  sub_22088C71C();
  v13 = sub_22088BFCC();

  if (v12)
  {
    v14 = *(v10 - 8);
    (*(v14 + 16))(v5, a1, v10);
    (*(v14 + 56))(v5, 0, 1, v10);
    sub_220891BDC();

    sub_22071AF94(v5, &qword_2812993D0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88], sub_22047A170);
  }

  else
  {
    v15 = sub_22088544C();
    [v13 selectItemAtIndexPath:v15 animated:0 scrollPosition:2];
  }
}

uint64_t sub_22071BC60()
{
  v1 = *v0;
  sub_22088581C();
  (*(*(v1 + 88) + 88))();

  sub_220524414();
  sub_220488378(&qword_281297D18, sub_220524414);
  sub_22088B6DC();
}

void sub_22071BD70()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v0 = type metadata accessor for ForYouFeedViewController();
      v1 = sub_220488378(&unk_28128A3D0, type metadata accessor for ForYouFeedViewController);
      v2 = MEMORY[0x223D82EA0](v0, v1);
      if (v2)
      {
        v3 = v2;
        v4 = [v2 view];

        if (!v4)
        {
          __break(1u);
          return;
        }

        [v4 setNeedsLayout];
      }

      v5 = sub_22058B190();
      [v5 setNeedsLayout];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

void sub_22071BE9C()
{
  v0 = sub_22088BF0C();
  type metadata accessor for ForYouFeedSectionDescriptor();
  type metadata accessor for ForYouFeedModel();
  sub_220488378(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
  sub_220488378(&unk_281293320, type metadata accessor for ForYouFeedModel);
  v1 = sub_22088BEDC();
  sub_2204A788C(v0);
  if (v1)
  {

    sub_22071733C();
  }
}

uint64_t sub_22071C014()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_2812B6AF8);
  __swift_project_value_buffer(v0, qword_2812B6AF8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_22071C1C0()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_2812B6AE0);
  __swift_project_value_buffer(v0, qword_2812B6AE0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_22071C368()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D0C0);
  __swift_project_value_buffer(v0, qword_27CF6D0C0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_22071C514()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D0D8);
  __swift_project_value_buffer(v0, qword_27CF6D0D8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_22071C74C()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_2812B6AC8);
  __swift_project_value_buffer(v0, qword_2812B6AC8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_22071C900()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D0F0);
  __swift_project_value_buffer(v0, qword_27CF6D0F0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_22071CAAC()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D108);
  __swift_project_value_buffer(v0, qword_27CF6D108);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_22071CC58()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D120);
  __swift_project_value_buffer(v0, qword_27CF6D120);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

void sub_22071CE94()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v2 = Strong;
  v3 = [Strong view];

  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = [v3 window];

  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  sub_22088AC8C();
  v5 = sub_2208884CC();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v6 = v5;
  sub_22088AC5C();
}

uint64_t sub_22071CF7C()
{
  MEMORY[0x223D8B910](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ManageWatchlistsModel()
{
  result = qword_27CF591D0;
  if (!qword_27CF591D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22071D008()
{
  result = type metadata accessor for WatchlistCellViewModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CreateWatchlistViewModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22071D07C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for WatchlistCellViewModel(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ManageWatchlistsModel();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22071E654(v2, v11, type metadata accessor for ManageWatchlistsModel);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v16 = sub_220886A4C();
    (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    return sub_22071E5F4(v11, type metadata accessor for ManageWatchlistsModel);
  }

  else
  {
    sub_22061444C(v11, v7, type metadata accessor for WatchlistCellViewModel);
    v12 = *(v4 + 28);
    v13 = sub_220886A4C();
    v14 = *(v13 - 8);
    (*(v14 + 16))(a1, &v7[v12], v13);
    sub_22071E5F4(v7, type metadata accessor for WatchlistCellViewModel);
    return (*(v14 + 56))(a1, 0, 1, v13);
  }
}

uint64_t sub_22071D29C()
{
  v1 = v0;
  WatchlistViewModel = type metadata accessor for CreateWatchlistViewModel();
  MEMORY[0x28223BE20](WatchlistViewModel - 8, v3);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for WatchlistCellViewModel(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ManageWatchlistsModel();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22071E654(v1, v13, type metadata accessor for ManageWatchlistsModel);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_22061444C(v13, v5, type metadata accessor for CreateWatchlistViewModel);
    v14 = *v5;

    v15 = type metadata accessor for CreateWatchlistViewModel;
    v16 = v5;
  }

  else
  {
    sub_22061444C(v13, v9, type metadata accessor for WatchlistCellViewModel);
    v14 = *v9;

    v15 = type metadata accessor for WatchlistCellViewModel;
    v16 = v9;
  }

  sub_22071E5F4(v16, v15);
  return v14;
}

uint64_t sub_22071D474(uint64_t a1, uint64_t a2)
{
  v4 = sub_22071D5E4(&qword_27CF591F8);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_22071D5E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ManageWatchlistsModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22071D628@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  sub_22047A1D4(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v31 - v4;
  v6 = sub_220884E9C();
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220884B5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WatchlistCellViewModel(0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ManageWatchlistsModel();
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22071E654(v1, v22, type metadata accessor for ManageWatchlistsModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22061444C(v22, v18, type metadata accessor for WatchlistCellViewModel);
    sub_220884B4C();
    sub_220884B2C();
    v23 = sub_220884DDC();
    MEMORY[0x223D7CC90](v23);
    v24 = *(v18 + 2);
    v25 = *(v18 + 3);
    v35 = 0x696C68637461772FLL;
    v36 = 0xEB000000002F7473;
    MEMORY[0x223D89680](v24, v25);
    MEMORY[0x223D7CCB0](v35, v36);
    sub_220884ADC();
    if ((*(v33 + 48))(v5, 1, v6) != 1)
    {
      v32 = v10;
      v28 = v33;
      (*(v33 + 32))(v9, v5, v6);
      sub_220884E3C();

      v27 = v34;
      sub_22088E4DC();
      (*(v28 + 8))(v9, v6);
      (*(v11 + 8))(v14, v32);
      sub_22071E5F4(v18, type metadata accessor for WatchlistCellViewModel);
      v26 = 0;
      goto LABEL_7;
    }

    (*(v11 + 8))(v14, v10);
    sub_22071E5F4(v18, type metadata accessor for WatchlistCellViewModel);
    sub_22047C4E4(v5);
  }

  else
  {
    sub_22071E5F4(v22, type metadata accessor for ManageWatchlistsModel);
  }

  v26 = 1;
  v27 = v34;
LABEL_7:
  v29 = sub_22088E4EC();
  return (*(*(v29 - 8) + 56))(v27, v26, 1, v29);
}

uint64_t sub_22071DA9C()
{
  v1 = v0;
  v2 = type metadata accessor for ManageWatchlistsContentMode(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ManageWatchlistsModel();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WatchlistCellViewModel(0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22071E654(v1, v13, type metadata accessor for ManageWatchlistsModel);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_22071E5F4(v13, type metadata accessor for ManageWatchlistsModel);
    v19 = 0;
  }

  else
  {
    sub_22061444C(v13, v17, type metadata accessor for WatchlistCellViewModel);
    sub_22071E654(&v17[*(v14 + 32)], v9, type metadata accessor for ManageWatchlistsContentMode);
    sub_22071E5F4(v17, type metadata accessor for WatchlistCellViewModel);
    sub_22057B2D0();
    (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
    v19 = sub_2205D46B8(v9, v5);
    sub_22071E5F4(v5, type metadata accessor for ManageWatchlistsContentMode);
    sub_22071E5F4(v9, type metadata accessor for ManageWatchlistsContentMode);
  }

  return v19 & 1;
}

uint64_t sub_22071DD0C()
{
  v1 = v0;
  v2 = type metadata accessor for ManageWatchlistsContentMode(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WatchlistCellViewModel(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ManageWatchlistsModel();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22071E654(v1, v13, type metadata accessor for ManageWatchlistsModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22061444C(v13, v9, type metadata accessor for WatchlistCellViewModel);
    v14 = *(v6 + 32);
    sub_22057B2D0();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    LOBYTE(v14) = sub_2205D46B8(&v9[v14], v5);
    sub_22071E5F4(v5, type metadata accessor for ManageWatchlistsContentMode);
    if (v14)
    {
      v16 = MEMORY[0x277D84560];
      sub_22047A1D4(0, &qword_281299538, MEMORY[0x277D6DB00], MEMORY[0x277D84560]);
      v43 = sub_22088BCCC();
      v17 = *(v43 - 8);
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = swift_allocObject();
      v42 = v19;
      *(v19 + 16) = xmmword_220899360;
      v20 = (v19 + v18);
      sub_22067957C();
      v22 = *(v21 + 48);
      v41 = *(v21 + 64);
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v24 = [objc_opt_self() bundleForClass_];
      v25 = sub_220884CAC();
      v27 = v26;

      *v20 = v25;
      v20[1] = v27;
      v28 = *MEMORY[0x277D6DA70];
      v29 = sub_22088BC8C();
      (*(*(v29 - 8) + 104))(v20 + v22, v28, v29);
      sub_22047A1D4(0, qword_281299698, MEMORY[0x277D6DAF8], v16);
      v30 = sub_22088BCBC();
      v31 = *(v30 - 8);
      v32 = *(v31 + 72);
      v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_220899920;
      v35 = v34 + v33;
      v36 = *(v31 + 104);
      v36(v35, *MEMORY[0x277D6DAD8], v30);
      sub_22088E1DC();
      *(v35 + v32) = sub_22088E1AC();
      v36(v35 + v32, *MEMORY[0x277D6DAF0], v30);
      *(v20 + v41) = v34;
      (*(v17 + 104))(v20, *MEMORY[0x277D6DA90], v43);
      sub_22071E5F4(v9, type metadata accessor for WatchlistCellViewModel);
      return v42;
    }

    v38 = type metadata accessor for WatchlistCellViewModel;
    v39 = v9;
  }

  else
  {
    v38 = type metadata accessor for ManageWatchlistsModel;
    v39 = v13;
  }

  sub_22071E5F4(v39, v38);
  return MEMORY[0x277D84F90];
}

uint64_t sub_22071E24C()
{
  v1 = v0;
  v2 = type metadata accessor for ManageWatchlistsContentMode(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WatchlistCellViewModel(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22071E654(v1, v13, type metadata accessor for ManageWatchlistsModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22061444C(v13, v9, type metadata accessor for WatchlistCellViewModel);
    v14 = *(v6 + 32);
    sub_22057B2D0();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    v16 = sub_2205D46B8(&v9[v14], v5);
    sub_22071E5F4(v5, type metadata accessor for ManageWatchlistsContentMode);
    sub_22071E5F4(v9, type metadata accessor for WatchlistCellViewModel);
  }

  else
  {
    sub_22071E5F4(v13, type metadata accessor for ManageWatchlistsModel);
    v16 = 0;
  }

  return v16 & 1;
}

BOOL sub_22071E45C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](v2, a2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22071E654(v5, v4, type metadata accessor for ManageWatchlistsModel);
  v6 = swift_getEnumCaseMultiPayload() == 1;
  sub_22071E5F4(v4, type metadata accessor for ManageWatchlistsModel);
  return v6;
}

uint64_t sub_22071E554@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_22071E5F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22071E654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22071E6BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchlistCellViewModel(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for ManageWatchlistsModel();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22071EA34();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 56);
  sub_22071E654(a1, v19, type metadata accessor for ManageWatchlistsModel);
  sub_22071E654(a2, &v19[v21], type metadata accessor for ManageWatchlistsModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_20:
      sub_22071E5F4(&v19[v21], type metadata accessor for ManageWatchlistsModel);
      v26 = type metadata accessor for ManageWatchlistsModel;
      v25 = 1;
      goto LABEL_25;
    }

LABEL_18:
    v26 = sub_22071EA34;
    v25 = 0;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_22071E654(v19, v15, type metadata accessor for ManageWatchlistsModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22061444C(v15, v11, type metadata accessor for WatchlistCellViewModel);
    sub_22061444C(&v19[v21], v7, type metadata accessor for WatchlistCellViewModel);
    v23 = *v11 == *v7 && *(v11 + 1) == *(v7 + 1);
    if (v23 || (sub_2208928BC()) && (*(v11 + 2) == *(v7 + 2) ? (v24 = *(v11 + 3) == *(v7 + 3)) : (v24 = 0), (v24 || (sub_2208928BC()) && v11[32] == v7[32] && (MEMORY[0x223D7EB90](&v11[*(v4 + 28)], &v7[*(v4 + 28)])))
    {
      v25 = sub_2205D46B8(&v11[*(v4 + 32)], &v7[*(v4 + 32)]);
    }

    else
    {
      v25 = 0;
    }

    sub_22071E5F4(v7, type metadata accessor for WatchlistCellViewModel);
    sub_22071E5F4(v11, type metadata accessor for WatchlistCellViewModel);
    v27 = type metadata accessor for ManageWatchlistsModel;
  }

  else
  {
    sub_22071E5F4(v15, type metadata accessor for WatchlistCellViewModel);
    v25 = 0;
    v27 = sub_22071EA34;
  }

  v26 = v27;
LABEL_25:
  sub_22071E5F4(v19, v26);
  return v25 & 1;
}

void sub_22071EA34()
{
  if (!qword_27CF59208)
  {
    type metadata accessor for ManageWatchlistsModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF59208);
    }
  }
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

uint64_t sub_22071EAB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22071EAD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 96) = v3;
  return result;
}

uint64_t sub_22071EB30@<X0>(uint64_t *a1@<X8>)
{
  sub_22071F894();
  swift_allocObject();
  v2 = sub_220886CBC();
  swift_allocObject();
  v3 = sub_220886CBC();
  swift_allocObject();
  result = sub_220886CBC();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = result;
  return result;
}

uint64_t sub_22071EBFC(void *a1)
{
  v3 = v1;
  sub_22071F6B4(0, &qword_27CF59220, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22071F660();
  sub_220892A5C();
  v11 = v3[1];
  v17 = *v3;
  v18 = v11;
  v16 = 0;
  type metadata accessor for CGRect(0);
  sub_22071F914(&qword_27CF59228);
  sub_22089283C();
  if (!v2)
  {
    v12 = v3[3];
    v17 = v3[2];
    v18 = v12;
    v16 = 1;
    sub_22089283C();
    v13 = v3[5];
    v17 = v3[4];
    v18 = v13;
    v16 = 2;
    sub_22089283C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_22071EDE8()
{
  v1 = 0x62614C656C746974;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D617266;
  }
}

uint64_t sub_22071EE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22071F2D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22071EE78(uint64_t a1)
{
  v2 = sub_22071F660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22071EEB4(uint64_t a1)
{
  v2 = sub_22071F660();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_22071EEF0(CGRect *a1, CGRect *a2)
{
  x = a1[1].origin.x;
  y = a1[1].origin.y;
  width = a1[1].size.width;
  height = a1[1].size.height;
  v17 = a1[2].origin.y;
  v18 = a1[2].origin.x;
  v15 = a1[2].size.height;
  v16 = a1[2].size.width;
  v6 = a2[1].origin.x;
  v7 = a2[1].origin.y;
  v8 = a2[1].size.width;
  v9 = a2[1].size.height;
  v13 = a2[2].origin.y;
  v14 = a2[2].origin.x;
  v11 = a2[2].size.height;
  v12 = a2[2].size.width;
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v21.origin.x = v6;
    v21.origin.y = v7;
    v21.size.width = v8;
    v21.size.height = v9;
    result = CGRectEqualToRect(v19, v21);
    if (result)
    {
      v20.origin.y = v17;
      v20.origin.x = v18;
      v20.size.height = v15;
      v20.size.width = v16;
      v22.origin.y = v13;
      v22.origin.x = v14;
      v22.size.height = v11;
      v22.size.width = v12;
      return CGRectEqualToRect(v20, v22);
    }
  }

  return result;
}

uint64_t sub_22071EFB0()
{
  sub_22071F284();

  return sub_22088D90C();
}

double sub_22071EFEC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_22071F3FC(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_22071F050(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_22071F718();
  v11.n128_f64[0] = a2;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return MEMORY[0x2821D2AC0](a1, v10, v11, v12, v13, v14);
}

unint64_t sub_22071F0D0()
{
  result = qword_2812891F8;
  if (!qword_2812891F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812891F8);
  }

  return result;
}

unint64_t sub_22071F128()
{
  result = qword_281289200;
  if (!qword_281289200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281289200);
  }

  return result;
}

unint64_t sub_22071F180()
{
  result = qword_281289218;
  if (!qword_281289218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281289218);
  }

  return result;
}

unint64_t sub_22071F1D8()
{
  result = qword_281289210;
  if (!qword_281289210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281289210);
  }

  return result;
}

unint64_t sub_22071F230()
{
  result = qword_27CF59210;
  if (!qword_27CF59210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59210);
  }

  return result;
}

unint64_t sub_22071F284()
{
  result = qword_27CF59218;
  if (!qword_27CF59218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59218);
  }

  return result;
}

uint64_t sub_22071F2D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v4 || (sub_2208928BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x62614C656C746974 && a2 == 0xEF656D6172466C65 || (sub_2208928BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002208D14B0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2208928BC();

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

uint64_t sub_22071F3FC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_22071F6B4(0, &qword_28127E218, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22071F660();
  sub_220892A4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  type metadata accessor for CGRect(0);
  v23 = 0;
  sub_22071F914(&qword_28127E588);
  sub_22089279C();
  v19 = v22;
  v20 = v21;
  v23 = 1;
  sub_22089279C();
  v17 = v22;
  v18 = v21;
  v23 = 2;
  sub_22089279C();
  (*(v7 + 8))(v10, v6);
  v15 = v22;
  v16 = v21;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v12 = v19;
  *a2 = v20;
  a2[1] = v12;
  v13 = v17;
  a2[2] = v18;
  a2[3] = v13;
  v14 = v15;
  a2[4] = v16;
  a2[5] = v14;
  return result;
}

unint64_t sub_22071F660()
{
  result = qword_281289230;
  if (!qword_281289230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281289230);
  }

  return result;
}

void sub_22071F6B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22071F660();
    v7 = a3(a1, &type metadata for TodayViewLayoutAttributes.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22071F718()
{
  result = qword_281289208;
  if (!qword_281289208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281289208);
  }

  return result;
}

unint64_t sub_22071F790()
{
  result = qword_27CF59230;
  if (!qword_27CF59230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59230);
  }

  return result;
}

unint64_t sub_22071F7E8()
{
  result = qword_281289220;
  if (!qword_281289220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281289220);
  }

  return result;
}

unint64_t sub_22071F840()
{
  result = qword_281289228;
  if (!qword_281289228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281289228);
  }

  return result;
}

void sub_22071F894()
{
  if (!qword_281298CA0)
  {
    type metadata accessor for CGRect(255);
    sub_22071F914(&qword_28127E590);
    v0 = sub_220886CAC();
    if (!v1)
    {
      atomic_store(v0, &qword_281298CA0);
    }
  }
}

uint64_t sub_22071F914(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22071F95C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22046DA2C(a1, v6);
  v3 = type metadata accessor for TipsModule();
  v4 = swift_allocObject();
  result = sub_220457328(v6, v4 + 16);
  a2[3] = v3;
  a2[4] = &off_283414810;
  *a2 = v4;
  return result;
}

uint64_t sub_22071F9CC()
{
  sub_2204446D4(0, &qword_281298A30);
  sub_220888BEC();

  sub_2204446D4(0, &unk_281298B30);
  sub_220888BEC();

  sub_2204446D4(0, &qword_281298B60);
  sub_220888BEC();

  sub_2208877DC();
  sub_220888BDC();
  sub_2208882CC();
}

uint64_t sub_22071FB20@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_220887CCC();
  swift_allocObject();
  result = sub_220887CBC();
  v4 = MEMORY[0x277D2FF80];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22071FB78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204446D4(0, &qword_281298B60);
  result = sub_2208884DC();
  if (v6)
  {
    v4 = sub_22088761C();
    swift_allocObject();
    result = sub_22088760C();
    v5 = MEMORY[0x277D2FAA8];
    a2[3] = v4;
    a2[4] = v5;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22071FC24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045E8CC();
  v4 = sub_2208884CC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204446D4(0, &unk_281297D60);
  result = sub_2208884DC();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_2208884DC();
  if ((~v9 & 0xF000000000000007) == 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for TipInteractor();
    v8 = swift_allocObject();
    v8[2] = v4;
    sub_220457328(&v10, (v8 + 3));
    v8[8] = v9;
    v8[9] = v6;
    a2[3] = v7;
    result = sub_220720188(&qword_2812944C0, type metadata accessor for TipInteractor);
    a2[4] = result;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_22071FDCC(void *a1)
{
  sub_220720130();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_22088755C();
  sub_2208884DC();
  result = (*(*(v6 - 8) + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204446D4(0, &unk_281298B30);
  result = sub_2208884DC();
  if (!v16)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204446D4(0, &qword_281298A30);
  result = sub_2208884DC();
  if (!v15)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204446D4(0, &qword_281298A60);
  result = sub_2208884DC();
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_220457328(&v12, v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204446D4(0, &qword_281297128);
  result = sub_2208884DC();
  if (v10)
  {
    sub_220457328(&v9, v11);
    v8 = objc_allocWithZone(sub_2208877DC());
    return sub_2208877CC();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_220720038(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2204446D4(0, &qword_281298738);
  result = sub_2208884DC();
  if (v4)
  {
    sub_220457328(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_220720188(&qword_281298B58, MEMORY[0x277D2FBE8]);
    sub_220888BFC();
    __swift_destroy_boxed_opaque_existential_1(&v3);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_220720130()
{
  if (!qword_281298BA0)
  {
    sub_22088755C();
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_281298BA0);
    }
  }
}

uint64_t sub_220720188(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2207201D0(uint64_t a1, uint64_t a2)
{
  sub_2204D4A18();
  v4 = v3;
  v84 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v82 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v81 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v77 = &v69 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v69 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v69 - v19;
  v21 = type metadata accessor for StockSearchModel();
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v79 = &v69 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v69 - v30;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v69 - v34;
  v85 = sub_22088685C();
  v36 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v37);
  v78 = &v69 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v71 = &v69 - v41;
  v83 = v4;
  sub_22088AD8C();
  sub_2204C9FBC(v35, v31, type metadata accessor for StockSearchModel);
  v80 = v21;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22049550C();
    v43 = *(v42 + 48);
    sub_2204C9FBC(v31, v16, type metadata accessor for StockViewModel);
    v44 = sub_220886A4C();
    (*(*(v44 - 8) + 8))(&v31[v43], v44);
  }

  else
  {
    sub_2204C9FBC(v31, v16, type metadata accessor for StockViewModel);
  }

  sub_2204C9FBC(v16, v20, type metadata accessor for StockViewModel);
  v75 = *(v36 + 16);
  v76 = v36 + 16;
  v75(v71, v20, v85);
  sub_2204EFAD0(v20);
  v45 = *(a2 + 16);
  v46 = MEMORY[0x277D84F90];
  if (v45)
  {
    v86 = MEMORY[0x277D84F90];
    sub_22048DBA8(0, v45, 0);
    v46 = v86;
    v47 = *(v84 + 16);
    v48 = a2 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
    v73 = *(v84 + 72);
    v74 = v47;
    v84 += 16;
    v49 = (v84 - 8);
    v72 = v36 + 32;
    do
    {
      v51 = v82;
      v50 = v83;
      v74(v82, v48, v83);
      v52 = v79;
      sub_22088AD8C();
      (*v49)(v51, v50);
      sub_2204C9FBC(v52, v24, type metadata accessor for StockSearchModel);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22049550C();
        v54 = *(v53 + 48);
        v55 = v81;
        sub_2204C9FBC(v24, v81, type metadata accessor for StockViewModel);
        v56 = sub_220886A4C();
        (*(*(v56 - 8) + 8))(&v24[v54], v56);
      }

      else
      {
        v55 = v81;
        sub_2204C9FBC(v24, v81, type metadata accessor for StockViewModel);
      }

      v57 = v77;
      v58 = v78;
      sub_2204C9FBC(v55, v77, type metadata accessor for StockViewModel);
      v59 = v85;
      v75(v58, v57, v85);
      sub_2204EFAD0(v57);
      v86 = v46;
      v61 = *(v46 + 16);
      v60 = *(v46 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_22048DBA8(v60 > 1, v61 + 1, 1);
        v59 = v85;
        v46 = v86;
      }

      *(v46 + 16) = v61 + 1;
      (*(v36 + 32))(v46 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v61, v58, v59);
      v48 += v73;
      --v45;
    }

    while (v45);
  }

  v62 = v70;
  v63 = v70[9];
  v64 = v70[10];
  __swift_project_boxed_opaque_existential_1(v70 + 6, v63);
  v65 = v71;
  (*(v64 + 8))(v71, v46, v63, v64);

  v66 = v62[5];
  ObjectType = swift_getObjectType();
  (*(v66 + 64))(v65, ObjectType, v66);
  return (*(v36 + 8))(v65, v85);
}

uint64_t sub_220720878()
{
  v1 = v0;
  v2 = sub_22088685C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockSearchModel();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D4A18();
  sub_22088AD8C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22049550C();
    v16 = *(v15 + 48);
    sub_2204C9FBC(v10, v14, type metadata accessor for StockViewModel);
    v17 = sub_220886A4C();
    (*(*(v17 - 8) + 8))(&v10[v16], v17);
  }

  else
  {
    sub_2204C9FBC(v10, v14, type metadata accessor for StockViewModel);
  }

  v18 = v1[9];
  v19 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v18);
  (*(v3 + 16))(v6, v14, v2);
  sub_2204EFAD0(v14);
  v20 = sub_2205F0094();
  v21 = (*(v19 + 16))(v6, v20, v18, v19);

  (*(v3 + 8))(v6, v2);
  return v21;
}

uint64_t sub_220720B70(char a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = (a1 & 1) == 0;

    sub_220888FEC();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220720C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - v9;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v7 + 16))(v10, a1, v6);
    v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    (*(v7 + 32))(v14 + v13, v10, v6);

    sub_220888FEC();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t objectdestroy_21Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_220720F04(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

void sub_220720F90(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22088685C();
  if (v2 >= 2)
  {
    sub_2206CE438(a1, a1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)), 1, (2 * v2) | 1);
  }
}

uint64_t sub_220721020(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_220722E80, v4);
}

void sub_2207210B4(uint64_t a1, uint64_t a2)
{
  sub_22044D56C(0, &qword_28127E888);
  v3 = sub_2208916DC();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_220721130(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v54 = a2;
  v55 = a1;
  sub_2206AA758(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220886A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088B50C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x277D84560];
  sub_22044769C(0, &qword_28127E088, sub_22062DD90, MEMORY[0x277D84560]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_220899360;
  v21 = *(v15 + 104);
  v50 = *MEMORY[0x277D6D7B0];
  v51 = v15 + 104;
  v52 = v14;
  v49 = v21;
  v21(v18);
  sub_22044769C(0, &qword_28127E080, sub_2205D3A54, v19);
  v48 = v22;
  v23 = swift_allocObject();
  v47 = xmmword_220899920;
  *(v23 + 16) = xmmword_220899920;
  __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  sub_2208863EC();
  v24 = sub_2207E4BBC();
  (*(v10 + 8))(v13, v9);
  v25 = sub_22088B17C();
  v26 = MEMORY[0x277D6D630];
  *(v23 + 56) = v25;
  *(v23 + 64) = v26;
  *(v23 + 32) = v24;
  v27 = sub_22088685C();
  (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  v28 = sub_2207E3FA0(v8, 0, 0);
  sub_220722E88(v8, sub_2206AA758);
  *(v23 + 96) = v25;
  *(v23 + 104) = v26;
  *(v23 + 72) = v28;
  v29 = sub_22088B4FC();
  swift_allocObject();
  v30 = sub_22088B4CC();
  v31 = MEMORY[0x277D6D798];
  *(v20 + 56) = v29;
  *(v20 + 64) = v31;
  *(v20 + 32) = v30;
  v32 = sub_2207216A8();
  v34 = *(v20 + 16);
  v33 = *(v20 + 24);
  if (v34 >= v33 >> 1)
  {
    v45 = v32;
    v20 = sub_22058832C((v33 > 1), v34 + 1, 1, v20);
    v32 = v45;
  }

  v57 = v29;
  v58 = v31;
  *&v56 = v32;
  *(v20 + 16) = v34 + 1;
  sub_220457328(&v56, v20 + 40 * v34 + 32);
  v35 = sub_220722858();
  v37 = *(v20 + 16);
  v36 = *(v20 + 24);
  if (v37 >= v36 >> 1)
  {
    v46 = v35;
    v20 = sub_22058832C((v36 > 1), v37 + 1, 1, v20);
    v35 = v46;
  }

  v57 = v29;
  v58 = v31;
  *&v56 = v35;
  *(v20 + 16) = v37 + 1;
  sub_220457328(&v56, v20 + 40 * v37 + 32);
  v49(v18, v50, v52);
  v38 = swift_allocObject();
  *(v38 + 16) = v47;
  v39 = _s5TeaUI15ContextMenuItemC06StocksB0E15provideFeedbackACyFZ_0();
  *(v38 + 56) = v25;
  *(v38 + 64) = v26;
  *(v38 + 32) = v39;
  v40 = _s5TeaUI15ContextMenuItemC06StocksB0E24clearRecommendationsDataACyFZ_0();
  *(v38 + 96) = v25;
  *(v38 + 104) = v26;
  *(v38 + 72) = v40;
  swift_allocObject();
  v41 = sub_22088B4CC();
  v42 = *(v20 + 16);
  v43 = *(v20 + 24);

  if (v42 >= v43 >> 1)
  {
    v20 = sub_22058832C((v43 > 1), v42 + 1, 1, v20);
  }

  v57 = v29;
  v58 = v31;
  *&v56 = v41;
  *(v20 + 16) = v42 + 1;
  sub_220457328(&v56, v20 + 40 * v42 + 32);
  sub_22088AB2C();
  sub_22088AADC();
  sub_22088AA9C();
  v55();
}

uint64_t sub_2207216A8()
{
  v157 = sub_220885DBC();
  v155 = *(v157 - 8);
  MEMORY[0x28223BE20](v157, v0);
  v133 = &v132 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for SortWatchlistCommandContext(0);
  MEMORY[0x28223BE20](v154, v2);
  v140 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_220885DFC();
  v4 = *(v156 - 8);
  v6 = MEMORY[0x28223BE20](v156, v5);
  v8 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v141 = &v132 - v10;
  v143 = sub_220886A4C();
  v147 = *(v143 - 8);
  v12 = MEMORY[0x28223BE20](v143, v11);
  v138 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v149 = (&v132 - v15);
  v16 = sub_22088B50C();
  v148 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_220885DDC();
  v21 = *(v20 + 16);
  v144 = v19;
  v145 = v4;
  v146 = v16;
  if (v21)
  {
    v160 = MEMORY[0x277D84F90];
    sub_2208925EC();
    v23 = *(v4 + 16);
    v22 = v4 + 16;
    v24 = *(v22 + 64);
    v142 = v20;
    v25 = v20 + ((v24 + 32) & ~v24);
    v151 = *(v22 + 56);
    v152 = v23;
    v153 = v22;
    v150 = (v22 - 8);
    v26 = v156;
    v27 = v154;
    v28 = v140;
    do
    {
      v29 = v152;
      v152(v8, v25, v26);
      __swift_project_boxed_opaque_existential_1((v158 + 16), *(v158 + 40));
      sub_2208863EC();
      v29(v28 + *(v27 + 20), v8, v26);
      *(v28 + *(v27 + 24)) = 0;
      sub_2207E4DF0(v28);
      sub_220722E88(v28, type metadata accessor for SortWatchlistCommandContext);
      (*v150)(v8, v26);
      sub_2208925CC();
      sub_2208925FC();
      sub_22089260C();
      sub_2208925DC();
      v25 += v151;
      --v21;
    }

    while (v21);

    v30 = v160;
    v19 = v144;
    v31 = v145;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
    v31 = v4;
  }

  v139 = v8;
  v32 = *(v148 + 104);
  v134 = *MEMORY[0x277D6D7A8];
  v148 += 104;
  v142 = v32;
  (v32)(v19);
  sub_2205AF574(v30);
  v137 = sub_22088B4FC();
  swift_allocObject();
  v33 = sub_22088B4CC();
  sub_22048BC00();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_22089B130;
  *(v34 + 32) = v33;
  v160 = v34;
  __swift_project_boxed_opaque_existential_1((v158 + 16), *(v158 + 40));
  v136 = v33;

  v35 = v149;
  sub_2208863EC();
  v36 = v141;
  sub_220886A3C();
  v37 = v147 + 8;
  v38 = *(v147 + 8);
  v38(v35, v143);
  v39 = v156;
  v40 = (*(v31 + 88))(v36, v156);
  v41 = v40 == *MEMORY[0x277D694A8];
  v147 = v37;
  v135 = v38;
  LODWORD(v153) = v40;
  if (v41)
  {

    v42 = sub_220885D9C();
    v43 = *(v42 + 16);
    v44 = v155;
    if (v43)
    {
      v159 = MEMORY[0x277D84F90];
      sub_2208925EC();
      v46 = *(v44 + 16);
      v45 = v44 + 16;
      v152 = v46;
      v47 = (*(v45 + 64) + 32) & ~*(v45 + 64);
      v132 = v42;
      v48 = v42 + v47;
      v49 = *(v45 + 56);
      v150 = (v31 + 104);
      v151 = v49;
      v155 = v45;
      v149 = (v45 - 8);
      v50 = v157;
      v51 = v133;
      v52 = v140;
      do
      {
        v53 = v152;
        v152(v51, v48, v50);
        __swift_project_boxed_opaque_existential_1((v158 + 16), *(v158 + 40));
        sub_2208863EC();
        v54 = v154;
        v55 = *(v154 + 20);
        v53(v52 + v55, v51, v157);
        v56 = v52 + v55;
        v50 = v157;
        (*v150)(v56, v153, v156);
        *(v52 + *(v54 + 24)) = 1;
        sub_2207E4DF0(v52);
        sub_220722E88(v52, type metadata accessor for SortWatchlistCommandContext);
        (*v149)(v51, v50);
        sub_2208925CC();
        sub_2208925FC();
        sub_22089260C();
        sub_2208925DC();
        v48 += v151;
        --v43;
      }

      while (v43);

      v57 = v159;
      v19 = v144;
      v31 = v145;
      v58 = v146;
      v59 = v142;
    }

    else
    {

      v57 = MEMORY[0x277D84F90];
      v59 = v142;
      v58 = v146;
    }

    v39 = v156;
    (*(v31 + 8))(v141, v156);
    v91 = v134;
    goto LABEL_36;
  }

  v60 = v155;
  if (v40 == *MEMORY[0x277D694B8])
  {

    v61 = sub_220885D9C();
    v62 = *(v61 + 16);
    if (v62)
    {
      v159 = MEMORY[0x277D84F90];
      sub_2208925EC();
      v64 = *(v60 + 16);
      v63 = v60 + 16;
      v152 = v64;
      v65 = (*(v63 + 64) + 32) & ~*(v63 + 64);
      v66 = v63;
      v132 = v61;
      v67 = v61 + v65;
      v68 = *(v66 + 56);
      v150 = (v31 + 104);
      v151 = v68;
      v155 = v66;
      v149 = (v66 - 8);
      v69 = v157;
      v70 = v133;
      v71 = v140;
      v72 = v64;
      do
      {
        v72(v70, v67, v69);
        __swift_project_boxed_opaque_existential_1((v158 + 16), *(v158 + 40));
        sub_2208863EC();
        v73 = v154;
        v74 = *(v154 + 20);
        v72((v71 + v74), v70, v157);
        v75 = v71 + v74;
        v69 = v157;
        (*v150)(v75, v153, v156);
        *(v71 + *(v73 + 24)) = 1;
        sub_2207E4DF0(v71);
        sub_220722E88(v71, type metadata accessor for SortWatchlistCommandContext);
        (*v149)(v70, v69);
        sub_2208925CC();
        sub_2208925FC();
        sub_22089260C();
        sub_2208925DC();
        v67 += v151;
        --v62;
      }

      while (v62);
LABEL_33:

      v57 = v159;
      v19 = v144;
      v31 = v145;
      v58 = v146;
      v36 = v141;
LABEL_35:
      v39 = v156;
      (*(v31 + 8))(v36, v156);
      v91 = v134;
      v59 = v142;
LABEL_36:
      v59(v19, v91, v58);
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v40 == *MEMORY[0x277D694F0])
  {

    v76 = sub_220885D9C();
    v77 = *(v76 + 16);
    if (v77)
    {
      v159 = MEMORY[0x277D84F90];
      sub_2208925EC();
      v79 = *(v60 + 16);
      v78 = v60 + 16;
      v152 = v79;
      v80 = (*(v78 + 64) + 32) & ~*(v78 + 64);
      v81 = v78;
      v132 = v76;
      v82 = v76 + v80;
      v83 = *(v81 + 56);
      v150 = (v31 + 104);
      v151 = v83;
      v155 = v81;
      v149 = (v81 - 8);
      v84 = v157;
      v85 = v133;
      v86 = v140;
      v87 = v79;
      do
      {
        v87(v85, v82, v84);
        __swift_project_boxed_opaque_existential_1((v158 + 16), *(v158 + 40));
        sub_2208863EC();
        v88 = v154;
        v89 = *(v154 + 20);
        v87((v86 + v89), v85, v157);
        v90 = v86 + v89;
        v84 = v157;
        (*v150)(v90, v153, v156);
        *(v86 + *(v88 + 24)) = 1;
        sub_2207E4DF0(v86);
        sub_220722E88(v86, type metadata accessor for SortWatchlistCommandContext);
        (*v149)(v85, v84);
        sub_2208925CC();
        sub_2208925FC();
        sub_22089260C();
        sub_2208925DC();
        v82 += v151;
        --v77;
      }

      while (v77);
      goto LABEL_33;
    }

LABEL_34:

    v57 = MEMORY[0x277D84F90];
    v58 = v146;
    goto LABEL_35;
  }

  if (v40 == *MEMORY[0x277D694E8])
  {

    v92 = sub_220885D9C();
    v93 = *(v92 + 16);
    if (v93)
    {
      v159 = MEMORY[0x277D84F90];
      sub_2208925EC();
      v95 = *(v60 + 16);
      v94 = v60 + 16;
      v152 = v95;
      v96 = (*(v94 + 64) + 32) & ~*(v94 + 64);
      v97 = v94;
      v132 = v92;
      v98 = v92 + v96;
      v99 = *(v97 + 56);
      v150 = (v31 + 104);
      v151 = v99;
      v155 = v97;
      v149 = (v97 - 8);
      v100 = v157;
      v101 = v133;
      v102 = v140;
      v103 = v95;
      do
      {
        v103(v101, v98, v100);
        __swift_project_boxed_opaque_existential_1((v158 + 16), *(v158 + 40));
        sub_2208863EC();
        v104 = v154;
        v105 = *(v154 + 20);
        v103((v102 + v105), v101, v157);
        v106 = v102 + v105;
        v100 = v157;
        (*v150)(v106, v153, v156);
        *(v102 + *(v104 + 24)) = 1;
        sub_2207E4DF0(v102);
        sub_220722E88(v102, type metadata accessor for SortWatchlistCommandContext);
        (*v149)(v101, v100);
        sub_2208925CC();
        sub_2208925FC();
        sub_22089260C();
        sub_2208925DC();
        v98 += v151;
        --v93;
      }

      while (v93);
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  if (v40 == *MEMORY[0x277D694C0])
  {

    v107 = sub_220885D9C();
    v108 = *(v107 + 16);
    if (v108)
    {
      v159 = MEMORY[0x277D84F90];
      sub_2208925EC();
      v110 = *(v60 + 16);
      v109 = v60 + 16;
      v152 = v110;
      v111 = (*(v109 + 64) + 32) & ~*(v109 + 64);
      v112 = v109;
      v132 = v107;
      v113 = v107 + v111;
      v114 = *(v112 + 56);
      v150 = (v31 + 104);
      v151 = v114;
      v155 = v112;
      v149 = (v112 - 8);
      v115 = v157;
      v116 = v133;
      v117 = v140;
      v118 = v110;
      do
      {
        v118(v116, v113, v115);
        __swift_project_boxed_opaque_existential_1((v158 + 16), *(v158 + 40));
        sub_2208863EC();
        v119 = v154;
        v120 = *(v154 + 20);
        v118((v117 + v120), v116, v157);
        v121 = v117 + v120;
        v115 = v157;
        (*v150)(v121, v153, v156);
        *(v117 + *(v119 + 24)) = 1;
        sub_2207E4DF0(v117);
        sub_220722E88(v117, type metadata accessor for SortWatchlistCommandContext);
        (*v149)(v116, v115);
        sub_2208925CC();
        sub_2208925FC();
        sub_22089260C();
        sub_2208925DC();
        v113 += v151;
        --v108;
      }

      while (v108);
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  if (v40 != *MEMORY[0x277D694E0])
  {
    result = sub_2208928AC();
    __break(1u);
    return result;
  }

  v57 = MEMORY[0x277D84F90];
  v142(v19, v134, v146);
LABEL_37:
  sub_2205AF574(v57);

  swift_allocObject();
  sub_22088B4CC();

  MEMORY[0x223D89870](v122);
  if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22089177C();
  }

  sub_22089179C();
  v123 = v160;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v125 = [objc_opt_self() bundleForClass_];
  v157 = sub_220884CAC();

  __swift_project_boxed_opaque_existential_1((v158 + 16), *(v158 + 40));
  v126 = v138;
  sub_2208863EC();
  v127 = v139;
  sub_220886A3C();
  v135(v126, v143);
  sub_220885D6C();
  (*(v145 + 8))(v127, v39);
  v128 = sub_22089132C();
  v129 = [objc_opt_self() systemImageNamed_];

  sub_2205AFD34(v123);

  v142(v144, *MEMORY[0x277D6D7B8], v146);
  swift_allocObject();
  v130 = sub_22088B4CC();

  return v130;
}