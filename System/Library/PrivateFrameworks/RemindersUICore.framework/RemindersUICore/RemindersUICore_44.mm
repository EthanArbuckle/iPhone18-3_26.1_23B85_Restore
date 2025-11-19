uint64_t sub_21D4FE1D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = a5;
  v10 = sub_21DBFB11C();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v65);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C240);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C228);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - v22;
  v24 = *a1;
  if (v9 != 2)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    if (v24)
    {
      v61 = v24;
      sub_21D737D68();
LABEL_10:
      sub_21D0D3954(a2, v23, &qword_27CE5C228);
      v57 = sub_21D0D8CF0(0, &qword_280D1B900);
      v26 = sub_21DBFB12C();
      v55 = v26;
      sub_21DBF60DC();
      v58 = sub_21DBF60BC();
      v27 = sub_21DBF60AC();
      v54 = v27;
      v71 = *MEMORY[0x277D76648];
      v70 = *MEMORY[0x277D76768];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3A8);
      v28 = swift_allocObject();
      v29 = *(*v28 + 104);
      v30 = *(v19 + 56);
      v30(v28 + v29, 1, 1, v18);
      v31 = (v28 + *(*v28 + 136));
      *v31 = 0;
      v31[1] = 0;
      *(v28 + *(*v28 + 112)) = v26;
      *(v28 + *(*v28 + 120)) = v27;
      sub_21D0D3954(v23, v28 + *(*v28 + 96), &qword_27CE5C228);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C220);
      swift_storeEnumTagMultiPayload();
      sub_21D0D3954(v23, v17, &qword_27CE5C228);
      v30(v17, 0, 1, v18);
      swift_beginAccess();
      v32 = v71;
      v33 = v70;
      v55 = v55;
      v54 = v54;
      sub_21D0F02F4(v17, v28 + v29, &qword_27CE5C240);
      swift_endAccess();
      sub_21DBF9D4C();
      v72 = MEMORY[0x277D84F90];
      sub_21D0D9340(&qword_280D17808, MEMORY[0x277D85230]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00);
      sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00);
      sub_21DBFBCBC();
      (*(v68 + 104))(v67, *MEMORY[0x277D85260], v69);
      v34 = sub_21DBFB14C();
      v35 = v59;
      sub_21D0D3954(v23, v59, &qword_27CE5C228);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3B0);
      v36 = swift_allocObject();
      *(v36 + 72) = 0u;
      *(v36 + 88) = 0u;
      *(v36 + 104) = 0;
      *(v36 + 108) = -1;
      *(v36 + 120) = 0;
      *(v36 + 128) = 1;
      v37 = *(*v36 + 216);
      v38 = swift_slowAlloc();
      *(v36 + v37) = v38;
      *(v36 + *(*v36 + 224)) = 0;
      v39 = v58;
      *(v36 + 16) = v34;
      *(v36 + 24) = v39;
      v40 = v60;
      *(v36 + 32) = v54;
      *(v36 + 40) = v40;
      sub_21D0D3954(v35, v36 + *(*v36 + 208), &qword_27CE5C228);
      swift_storeEnumTagMultiPayload();
      *v38 = 0;

      sub_21D0CF7E0(v35, &qword_27CE5C228);
      sub_21D0CF7E0(v23, &qword_27CE5C228);
      v41 = v70;
      *(v36 + 48) = v71;
      *(v36 + 56) = v41;
      *(v36 + 64) = 1;
      *(v28 + *(*v28 + 128)) = v36;
      v42 = swift_allocObject();
      swift_weakInit();
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      *(v44 + 24) = v43;
      v45 = *(v36 + 72);
      *(v36 + 72) = sub_21D504684;
      *(v36 + 80) = v44;

      sub_21D0D0E88(v45);

      v46 = *(v28 + *(*v28 + 128));
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = *(v46 + 88);
      *(v46 + 88) = sub_21D50468C;
      *(v46 + 96) = v47;

      sub_21D0D0E88(v48);

      v49 = swift_allocObject();
      swift_weakInit();
      v50 = swift_allocObject();
      swift_weakInit();
      v51 = swift_allocObject();
      *(v51 + 16) = v49;
      *(v51 + 24) = v50;
      v52 = (v28 + *(*v28 + 136));
      v53 = *v52;
      *v52 = sub_21D504694;
      v52[1] = v51;

      sub_21D0D0E88(v53);

      *v63 = v28;
      return sub_21D400A74(1);
    }

LABEL_9:
    v61 = 0;
    goto LABEL_10;
  }

  if (!v24)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    goto LABEL_9;
  }

  sub_21D4FA934(sub_21D504BB0, a3, &unk_282EC1380, &unk_282EC13A8, sub_21D50469C, &block_descriptor_90_1);
}

uint64_t sub_21D4FEB8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = a5;
  v10 = sub_21DBFB11C();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v65);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2E0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C8);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - v22;
  v24 = *a1;
  if (v9 != 2)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    if (v24)
    {
      v61 = v24;
      sub_21D737D90();
LABEL_10:
      sub_21D0D3954(a2, v23, &qword_27CE5C2C8);
      v57 = sub_21D0D8CF0(0, &qword_280D1B900);
      v26 = sub_21DBFB12C();
      v55 = v26;
      sub_21DBF60DC();
      v58 = sub_21DBF60BC();
      v27 = sub_21DBF60AC();
      v54 = v27;
      v71 = *MEMORY[0x277D76648];
      v70 = *MEMORY[0x277D76768];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D418);
      v28 = swift_allocObject();
      v29 = *(*v28 + 104);
      v30 = *(v19 + 56);
      v30(v28 + v29, 1, 1, v18);
      v31 = (v28 + *(*v28 + 136));
      *v31 = 0;
      v31[1] = 0;
      *(v28 + *(*v28 + 112)) = v26;
      *(v28 + *(*v28 + 120)) = v27;
      sub_21D0D3954(v23, v28 + *(*v28 + 96), &qword_27CE5C2C8);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C0);
      swift_storeEnumTagMultiPayload();
      sub_21D0D3954(v23, v17, &qword_27CE5C2C8);
      v30(v17, 0, 1, v18);
      swift_beginAccess();
      v32 = v71;
      v33 = v70;
      v55 = v55;
      v54 = v54;
      sub_21D0F02F4(v17, v28 + v29, &qword_27CE5C2E0);
      swift_endAccess();
      sub_21DBF9D4C();
      v72 = MEMORY[0x277D84F90];
      sub_21D0D9340(&qword_280D17808, MEMORY[0x277D85230]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00);
      sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00);
      sub_21DBFBCBC();
      (*(v68 + 104))(v67, *MEMORY[0x277D85260], v69);
      v34 = sub_21DBFB14C();
      v35 = v59;
      sub_21D0D3954(v23, v59, &qword_27CE5C2C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D420);
      v36 = swift_allocObject();
      *(v36 + 72) = 0u;
      *(v36 + 88) = 0u;
      *(v36 + 104) = 0;
      *(v36 + 108) = -1;
      *(v36 + 120) = 0;
      *(v36 + 128) = 1;
      v37 = *(*v36 + 216);
      v38 = swift_slowAlloc();
      *(v36 + v37) = v38;
      *(v36 + *(*v36 + 224)) = 0;
      v39 = v58;
      *(v36 + 16) = v34;
      *(v36 + 24) = v39;
      v40 = v60;
      *(v36 + 32) = v54;
      *(v36 + 40) = v40;
      sub_21D0D3954(v35, v36 + *(*v36 + 208), &qword_27CE5C2C8);
      swift_storeEnumTagMultiPayload();
      *v38 = 0;

      sub_21D0CF7E0(v35, &qword_27CE5C2C8);
      sub_21D0CF7E0(v23, &qword_27CE5C2C8);
      v41 = v70;
      *(v36 + 48) = v71;
      *(v36 + 56) = v41;
      *(v36 + 64) = 1;
      *(v28 + *(*v28 + 128)) = v36;
      v42 = swift_allocObject();
      swift_weakInit();
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      *(v44 + 24) = v43;
      v45 = *(v36 + 72);
      *(v36 + 72) = sub_21D504800;
      *(v36 + 80) = v44;

      sub_21D0D0E88(v45);

      v46 = *(v28 + *(*v28 + 128));
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = *(v46 + 88);
      *(v46 + 88) = sub_21D504808;
      *(v46 + 96) = v47;

      sub_21D0D0E88(v48);

      v49 = swift_allocObject();
      swift_weakInit();
      v50 = swift_allocObject();
      swift_weakInit();
      v51 = swift_allocObject();
      *(v51 + 16) = v49;
      *(v51 + 24) = v50;
      v52 = (v28 + *(*v28 + 136));
      v53 = *v52;
      *v52 = sub_21D504810;
      v52[1] = v51;

      sub_21D0D0E88(v53);

      *v63 = v28;
      return sub_21D400A9C(1);
    }

LABEL_9:
    v61 = 0;
    goto LABEL_10;
  }

  if (!v24)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    goto LABEL_9;
  }

  sub_21D4FA934(sub_21D504BB0, a3, &unk_282EC18F8, &unk_282EC1920, sub_21D504818, &block_descriptor_210_0);
}

uint64_t sub_21D4FF544(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = a5;
  v10 = sub_21DBFB11C();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v65);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D440);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C318);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - v22;
  v24 = *a1;
  if (v9 != 2)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    if (v24)
    {
      v61 = v24;
      sub_21D737DB8();
LABEL_10:
      sub_21D0D3954(a2, v23, &qword_27CE5C318);
      v57 = sub_21D0D8CF0(0, &qword_280D1B900);
      v26 = sub_21DBFB12C();
      v55 = v26;
      sub_21DBF60DC();
      v58 = sub_21DBF60BC();
      v27 = sub_21DBF60AC();
      v54 = v27;
      v71 = *MEMORY[0x277D76648];
      v70 = *MEMORY[0x277D76768];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D448);
      v28 = swift_allocObject();
      v29 = *(*v28 + 104);
      v30 = *(v19 + 56);
      v30(v28 + v29, 1, 1, v18);
      v31 = (v28 + *(*v28 + 136));
      *v31 = 0;
      v31[1] = 0;
      *(v28 + *(*v28 + 112)) = v26;
      *(v28 + *(*v28 + 120)) = v27;
      sub_21D0D3954(v23, v28 + *(*v28 + 96), &qword_27CE5C318);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C310);
      swift_storeEnumTagMultiPayload();
      sub_21D0D3954(v23, v17, &qword_27CE5C318);
      v30(v17, 0, 1, v18);
      swift_beginAccess();
      v32 = v71;
      v33 = v70;
      v55 = v55;
      v54 = v54;
      sub_21D0F02F4(v17, v28 + v29, &qword_27CE5D440);
      swift_endAccess();
      sub_21DBF9D4C();
      v72 = MEMORY[0x277D84F90];
      sub_21D0D9340(&qword_280D17808, MEMORY[0x277D85230]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00);
      sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00);
      sub_21DBFBCBC();
      (*(v68 + 104))(v67, *MEMORY[0x277D85260], v69);
      v34 = sub_21DBFB14C();
      v35 = v59;
      sub_21D0D3954(v23, v59, &qword_27CE5C318);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D450);
      v36 = swift_allocObject();
      *(v36 + 72) = 0u;
      *(v36 + 88) = 0u;
      *(v36 + 104) = 0;
      *(v36 + 108) = -1;
      *(v36 + 120) = 0;
      *(v36 + 128) = 1;
      v37 = *(*v36 + 216);
      v38 = swift_slowAlloc();
      *(v36 + v37) = v38;
      *(v36 + *(*v36 + 224)) = 0;
      v39 = v58;
      *(v36 + 16) = v34;
      *(v36 + 24) = v39;
      v40 = v60;
      *(v36 + 32) = v54;
      *(v36 + 40) = v40;
      sub_21D0D3954(v35, v36 + *(*v36 + 208), &qword_27CE5C318);
      swift_storeEnumTagMultiPayload();
      *v38 = 0;

      sub_21D0CF7E0(v35, &qword_27CE5C318);
      sub_21D0CF7E0(v23, &qword_27CE5C318);
      v41 = v70;
      *(v36 + 48) = v71;
      *(v36 + 56) = v41;
      *(v36 + 64) = 1;
      *(v28 + *(*v28 + 128)) = v36;
      v42 = swift_allocObject();
      swift_weakInit();
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      *(v44 + 24) = v43;
      v45 = *(v36 + 72);
      *(v36 + 72) = sub_21D504898;
      *(v36 + 80) = v44;

      sub_21D0D0E88(v45);

      v46 = *(v28 + *(*v28 + 128));
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = *(v46 + 88);
      *(v46 + 88) = sub_21D5048A0;
      *(v46 + 96) = v47;

      sub_21D0D0E88(v48);

      v49 = swift_allocObject();
      swift_weakInit();
      v50 = swift_allocObject();
      swift_weakInit();
      v51 = swift_allocObject();
      *(v51 + 16) = v49;
      *(v51 + 24) = v50;
      v52 = (v28 + *(*v28 + 136));
      v53 = *v52;
      *v52 = sub_21D5048A8;
      v52[1] = v51;

      sub_21D0D0E88(v53);

      *v63 = v28;
      return sub_21D400AC4(1);
    }

LABEL_9:
    v61 = 0;
    goto LABEL_10;
  }

  if (!v24)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    goto LABEL_9;
  }

  sub_21D4FA934(sub_21D504BB0, a3, &unk_282EC1B28, &unk_282EC1B50, sub_21D5048B0, &block_descriptor_258);
}

uint64_t sub_21D4FFEFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = a5;
  v10 = sub_21DBFB11C();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v65);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D400);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - v22;
  v24 = *a1;
  if (v9 != 2)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    if (v24)
    {
      v61 = v24;
      sub_21D737E08();
LABEL_10:
      sub_21D0D3954(a2, v23, &qword_27CE5C288);
      v57 = sub_21D0D8CF0(0, &qword_280D1B900);
      v26 = sub_21DBFB12C();
      v55 = v26;
      sub_21DBF60DC();
      v58 = sub_21DBF60BC();
      v27 = sub_21DBF60AC();
      v54 = v27;
      v71 = *MEMORY[0x277D76648];
      v70 = *MEMORY[0x277D76768];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D408);
      v28 = swift_allocObject();
      v29 = *(*v28 + 104);
      v30 = *(v19 + 56);
      v30(v28 + v29, 1, 1, v18);
      v31 = (v28 + *(*v28 + 136));
      *v31 = 0;
      v31[1] = 0;
      *(v28 + *(*v28 + 112)) = v26;
      *(v28 + *(*v28 + 120)) = v27;
      sub_21D0D3954(v23, v28 + *(*v28 + 96), &qword_27CE5C288);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C280);
      swift_storeEnumTagMultiPayload();
      sub_21D0D3954(v23, v17, &qword_27CE5C288);
      v30(v17, 0, 1, v18);
      swift_beginAccess();
      v32 = v71;
      v33 = v70;
      v55 = v55;
      v54 = v54;
      sub_21D0F02F4(v17, v28 + v29, &qword_27CE5D400);
      swift_endAccess();
      sub_21DBF9D4C();
      v72 = MEMORY[0x277D84F90];
      sub_21D0D9340(&qword_280D17808, MEMORY[0x277D85230]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00);
      sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00);
      sub_21DBFBCBC();
      (*(v68 + 104))(v67, *MEMORY[0x277D85260], v69);
      v34 = sub_21DBFB14C();
      v35 = v59;
      sub_21D0D3954(v23, v59, &qword_27CE5C288);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D410);
      v36 = swift_allocObject();
      *(v36 + 72) = 0u;
      *(v36 + 88) = 0u;
      *(v36 + 104) = 0;
      *(v36 + 108) = -1;
      *(v36 + 120) = 0;
      *(v36 + 128) = 1;
      v37 = *(*v36 + 216);
      v38 = swift_slowAlloc();
      *(v36 + v37) = v38;
      *(v36 + *(*v36 + 224)) = 0;
      v39 = v58;
      *(v36 + 16) = v34;
      *(v36 + 24) = v39;
      v40 = v60;
      *(v36 + 32) = v54;
      *(v36 + 40) = v40;
      sub_21D0D3954(v35, v36 + *(*v36 + 208), &qword_27CE5C288);
      swift_storeEnumTagMultiPayload();
      *v38 = 0;

      sub_21D0CF7E0(v35, &qword_27CE5C288);
      sub_21D0CF7E0(v23, &qword_27CE5C288);
      v41 = v70;
      *(v36 + 48) = v71;
      *(v36 + 56) = v41;
      *(v36 + 64) = 1;
      *(v28 + *(*v28 + 128)) = v36;
      v42 = swift_allocObject();
      swift_weakInit();
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      *(v44 + 24) = v43;
      v45 = *(v36 + 72);
      *(v36 + 72) = sub_21D5047B4;
      *(v36 + 80) = v44;

      sub_21D0D0E88(v45);

      v46 = *(v28 + *(*v28 + 128));
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = *(v46 + 88);
      *(v46 + 88) = sub_21D5047BC;
      *(v46 + 96) = v47;

      sub_21D0D0E88(v48);

      v49 = swift_allocObject();
      swift_weakInit();
      v50 = swift_allocObject();
      swift_weakInit();
      v51 = swift_allocObject();
      *(v51 + 16) = v49;
      *(v51 + 24) = v50;
      v52 = (v28 + *(*v28 + 136));
      v53 = *v52;
      *v52 = sub_21D5047C4;
      v52[1] = v51;

      sub_21D0D0E88(v53);

      *v63 = v28;
      return sub_21D400B14(1);
    }

LABEL_9:
    v61 = 0;
    goto LABEL_10;
  }

  if (!v24)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    goto LABEL_9;
  }

  sub_21D4FA934(sub_21D504BB0, a3, &unk_282EC17E0, &unk_282EC1808, sub_21D5047CC, &block_descriptor_186);
}

uint64_t sub_21D5008B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = a5;
  v10 = sub_21DBFB11C();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v65);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A8);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - v22;
  v24 = *a1;
  if (v9 != 2)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    if (v24)
    {
      v61 = v24;
      sub_21D737E30();
LABEL_10:
      sub_21D0D3954(a2, v23, &qword_27CE5C3A8);
      v57 = sub_21D0D8CF0(0, &qword_280D1B900);
      v26 = sub_21DBFB12C();
      v55 = v26;
      sub_21DBF60DC();
      v58 = sub_21DBF60BC();
      v27 = sub_21DBF60AC();
      v54 = v27;
      v71 = *MEMORY[0x277D76648];
      v70 = *MEMORY[0x277D76768];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D478);
      v28 = swift_allocObject();
      v29 = *(*v28 + 104);
      v30 = *(v19 + 56);
      v30(v28 + v29, 1, 1, v18);
      v31 = (v28 + *(*v28 + 136));
      *v31 = 0;
      v31[1] = 0;
      *(v28 + *(*v28 + 112)) = v26;
      *(v28 + *(*v28 + 120)) = v27;
      sub_21D0D3954(v23, v28 + *(*v28 + 96), &qword_27CE5C3A8);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A0);
      swift_storeEnumTagMultiPayload();
      sub_21D0D3954(v23, v17, &qword_27CE5C3A8);
      v30(v17, 0, 1, v18);
      swift_beginAccess();
      v32 = v71;
      v33 = v70;
      v55 = v55;
      v54 = v54;
      sub_21D0F02F4(v17, v28 + v29, &qword_27CE5C3C0);
      swift_endAccess();
      sub_21DBF9D4C();
      v72 = MEMORY[0x277D84F90];
      sub_21D0D9340(&qword_280D17808, MEMORY[0x277D85230]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00);
      sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00);
      sub_21DBFBCBC();
      (*(v68 + 104))(v67, *MEMORY[0x277D85260], v69);
      v34 = sub_21DBFB14C();
      v35 = v59;
      sub_21D0D3954(v23, v59, &qword_27CE5C3A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D480);
      v36 = swift_allocObject();
      *(v36 + 72) = 0u;
      *(v36 + 88) = 0u;
      *(v36 + 104) = 0;
      *(v36 + 108) = -1;
      *(v36 + 120) = 0;
      *(v36 + 128) = 1;
      v37 = *(*v36 + 216);
      v38 = swift_slowAlloc();
      *(v36 + v37) = v38;
      *(v36 + *(*v36 + 224)) = 0;
      v39 = v58;
      *(v36 + 16) = v34;
      *(v36 + 24) = v39;
      v40 = v60;
      *(v36 + 32) = v54;
      *(v36 + 40) = v40;
      sub_21D0D3954(v35, v36 + *(*v36 + 208), &qword_27CE5C3A8);
      swift_storeEnumTagMultiPayload();
      *v38 = 0;

      sub_21D0CF7E0(v35, &qword_27CE5C3A8);
      sub_21D0CF7E0(v23, &qword_27CE5C3A8);
      v41 = v70;
      *(v36 + 48) = v71;
      *(v36 + 56) = v41;
      *(v36 + 64) = 1;
      *(v28 + *(*v28 + 128)) = v36;
      v42 = swift_allocObject();
      swift_weakInit();
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      *(v44 + 24) = v43;
      v45 = *(v36 + 72);
      *(v36 + 72) = sub_21D50497C;
      *(v36 + 80) = v44;

      sub_21D0D0E88(v45);

      v46 = *(v28 + *(*v28 + 128));
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = *(v46 + 88);
      *(v46 + 88) = sub_21D504984;
      *(v46 + 96) = v47;

      sub_21D0D0E88(v48);

      v49 = swift_allocObject();
      swift_weakInit();
      v50 = swift_allocObject();
      swift_weakInit();
      v51 = swift_allocObject();
      *(v51 + 16) = v49;
      *(v51 + 24) = v50;
      v52 = (v28 + *(*v28 + 136));
      v53 = *v52;
      *v52 = sub_21D50498C;
      v52[1] = v51;

      sub_21D0D0E88(v53);

      *v63 = v28;
      return sub_21D400B3C(1);
    }

LABEL_9:
    v61 = 0;
    goto LABEL_10;
  }

  if (!v24)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    goto LABEL_9;
  }

  sub_21D4FA934(sub_21D504BB0, a3, &unk_282EC1E70, &unk_282EC1E98, sub_21D504994, &block_descriptor_330);
}

uint64_t sub_21D50126C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = a5;
  v10 = sub_21DBFB11C();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v65);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3B8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - v22;
  v24 = *a1;
  if (v9 != 2)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    if (v24)
    {
      v61 = v24;
      sub_21D737E58();
LABEL_10:
      sub_21D0D3954(a2, v23, &qword_27CE5C1C0);
      v57 = sub_21D0D8CF0(0, &qword_280D1B900);
      v26 = sub_21DBFB12C();
      v55 = v26;
      sub_21DBF60DC();
      v58 = sub_21DBF60BC();
      v27 = sub_21DBF60AC();
      v54 = v27;
      v71 = *MEMORY[0x277D76648];
      v70 = *MEMORY[0x277D76768];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3C0);
      v28 = swift_allocObject();
      v29 = *(*v28 + 104);
      v30 = *(v19 + 56);
      v30(v28 + v29, 1, 1, v18);
      v31 = (v28 + *(*v28 + 136));
      *v31 = 0;
      v31[1] = 0;
      *(v28 + *(*v28 + 112)) = v26;
      *(v28 + *(*v28 + 120)) = v27;
      sub_21D0D3954(v23, v28 + *(*v28 + 96), &qword_27CE5C1C0);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1B8);
      swift_storeEnumTagMultiPayload();
      sub_21D0D3954(v23, v17, &qword_27CE5C1C0);
      v30(v17, 0, 1, v18);
      swift_beginAccess();
      v32 = v71;
      v33 = v70;
      v55 = v55;
      v54 = v54;
      sub_21D0F02F4(v17, v28 + v29, &qword_27CE5D3B8);
      swift_endAccess();
      sub_21DBF9D4C();
      v72 = MEMORY[0x277D84F90];
      sub_21D0D9340(&qword_280D17808, MEMORY[0x277D85230]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00);
      sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00);
      sub_21DBFBCBC();
      (*(v68 + 104))(v67, *MEMORY[0x277D85260], v69);
      v34 = sub_21DBFB14C();
      v35 = v59;
      sub_21D0D3954(v23, v59, &qword_27CE5C1C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3C8);
      v36 = swift_allocObject();
      *(v36 + 72) = 0u;
      *(v36 + 88) = 0u;
      *(v36 + 104) = 0;
      *(v36 + 108) = -1;
      *(v36 + 120) = 0;
      *(v36 + 128) = 1;
      v37 = *(*v36 + 216);
      v38 = swift_slowAlloc();
      *(v36 + v37) = v38;
      *(v36 + *(*v36 + 224)) = 0;
      v39 = v58;
      *(v36 + 16) = v34;
      *(v36 + 24) = v39;
      v40 = v60;
      *(v36 + 32) = v54;
      *(v36 + 40) = v40;
      sub_21D0D3954(v35, v36 + *(*v36 + 208), &qword_27CE5C1C0);
      swift_storeEnumTagMultiPayload();
      *v38 = 0;

      sub_21D0CF7E0(v35, &qword_27CE5C1C0);
      sub_21D0CF7E0(v23, &qword_27CE5C1C0);
      v41 = v70;
      *(v36 + 48) = v71;
      *(v36 + 56) = v41;
      *(v36 + 64) = 1;
      *(v28 + *(*v28 + 128)) = v36;
      v42 = swift_allocObject();
      swift_weakInit();
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      *(v44 + 24) = v43;
      v45 = *(v36 + 72);
      *(v36 + 72) = sub_21D5046D0;
      *(v36 + 80) = v44;

      sub_21D0D0E88(v45);

      v46 = *(v28 + *(*v28 + 128));
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = *(v46 + 88);
      *(v46 + 88) = sub_21D5046D8;
      *(v46 + 96) = v47;

      sub_21D0D0E88(v48);

      v49 = swift_allocObject();
      swift_weakInit();
      v50 = swift_allocObject();
      swift_weakInit();
      v51 = swift_allocObject();
      *(v51 + 16) = v49;
      *(v51 + 24) = v50;
      v52 = (v28 + *(*v28 + 136));
      v53 = *v52;
      *v52 = sub_21D5046E0;
      v52[1] = v51;

      sub_21D0D0E88(v53);

      *v63 = v28;
      return sub_21D400B64(1);
    }

LABEL_9:
    v61 = 0;
    goto LABEL_10;
  }

  if (!v24)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    goto LABEL_9;
  }

  sub_21D4FA934(sub_21D504BB0, a3, &unk_282EC1498, &unk_282EC14C0, sub_21D5046E8, &block_descriptor_114);
}

uint64_t sub_21D501C24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = a5;
  v10 = sub_21DBFB11C();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v65);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - v22;
  v24 = *a1;
  if (v9 != 2)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    if (v24)
    {
      v61 = v24;
      sub_21D737E80();
LABEL_10:
      sub_21D0D3954(a2, v23, &qword_27CE5C2A0);
      v57 = sub_21D0D8CF0(0, &qword_280D1B900);
      v26 = sub_21DBFB12C();
      v55 = v26;
      sub_21DBF60DC();
      v58 = sub_21DBF60BC();
      v27 = sub_21DBF60AC();
      v54 = v27;
      v71 = *MEMORY[0x277D76648];
      v70 = *MEMORY[0x277D76768];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D468);
      v28 = swift_allocObject();
      v29 = *(*v28 + 104);
      v30 = *(v19 + 56);
      v30(v28 + v29, 1, 1, v18);
      v31 = (v28 + *(*v28 + 136));
      *v31 = 0;
      v31[1] = 0;
      *(v28 + *(*v28 + 112)) = v26;
      *(v28 + *(*v28 + 120)) = v27;
      sub_21D0D3954(v23, v28 + *(*v28 + 96), &qword_27CE5C2A0);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298);
      swift_storeEnumTagMultiPayload();
      sub_21D0D3954(v23, v17, &qword_27CE5C2A0);
      v30(v17, 0, 1, v18);
      swift_beginAccess();
      v32 = v71;
      v33 = v70;
      v55 = v55;
      v54 = v54;
      sub_21D0F02F4(v17, v28 + v29, &qword_27CE5C2B0);
      swift_endAccess();
      sub_21DBF9D4C();
      v72 = MEMORY[0x277D84F90];
      sub_21D0D9340(&qword_280D17808, MEMORY[0x277D85230]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00);
      sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00);
      sub_21DBFBCBC();
      (*(v68 + 104))(v67, *MEMORY[0x277D85260], v69);
      v34 = sub_21DBFB14C();
      v35 = v59;
      sub_21D0D3954(v23, v59, &qword_27CE5C2A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D470);
      v36 = swift_allocObject();
      *(v36 + 72) = 0u;
      *(v36 + 88) = 0u;
      *(v36 + 104) = 0;
      *(v36 + 108) = -1;
      *(v36 + 120) = 0;
      *(v36 + 128) = 1;
      v37 = *(*v36 + 216);
      v38 = swift_slowAlloc();
      *(v36 + v37) = v38;
      *(v36 + *(*v36 + 224)) = 0;
      v39 = v58;
      *(v36 + 16) = v34;
      *(v36 + 24) = v39;
      v40 = v60;
      *(v36 + 32) = v54;
      *(v36 + 40) = v40;
      sub_21D0D3954(v35, v36 + *(*v36 + 208), &qword_27CE5C2A0);
      swift_storeEnumTagMultiPayload();
      *v38 = 0;

      sub_21D0CF7E0(v35, &qword_27CE5C2A0);
      sub_21D0CF7E0(v23, &qword_27CE5C2A0);
      v41 = v70;
      *(v36 + 48) = v71;
      *(v36 + 56) = v41;
      *(v36 + 64) = 1;
      *(v28 + *(*v28 + 128)) = v36;
      v42 = swift_allocObject();
      swift_weakInit();
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      *(v44 + 24) = v43;
      v45 = *(v36 + 72);
      *(v36 + 72) = sub_21D504930;
      *(v36 + 80) = v44;

      sub_21D0D0E88(v45);

      v46 = *(v28 + *(*v28 + 128));
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = *(v46 + 88);
      *(v46 + 88) = sub_21D504938;
      *(v46 + 96) = v47;

      sub_21D0D0E88(v48);

      v49 = swift_allocObject();
      swift_weakInit();
      v50 = swift_allocObject();
      swift_weakInit();
      v51 = swift_allocObject();
      *(v51 + 16) = v49;
      *(v51 + 24) = v50;
      v52 = (v28 + *(*v28 + 136));
      v53 = *v52;
      *v52 = sub_21D504940;
      v52[1] = v51;

      sub_21D0D0E88(v53);

      *v63 = v28;
      return sub_21D400B8C(1);
    }

LABEL_9:
    v61 = 0;
    goto LABEL_10;
  }

  if (!v24)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    goto LABEL_9;
  }

  sub_21D4FA934(sub_21D504BB0, a3, &unk_282EC1D58, &unk_282EC1D80, sub_21D504948, &block_descriptor_306);
}

uint64_t sub_21D5025DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = a5;
  v10 = sub_21DBFB11C();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v65);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1F8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1E0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - v22;
  v24 = *a1;
  if (v9 != 2)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    if (v24)
    {
      v61 = v24;
      sub_21D737EA8();
LABEL_10:
      sub_21D0D3954(a2, v23, &qword_27CE5C1E0);
      v57 = sub_21D0D8CF0(0, &qword_280D1B900);
      v26 = sub_21DBFB12C();
      v55 = v26;
      sub_21DBF60DC();
      v58 = sub_21DBF60BC();
      v27 = sub_21DBF60AC();
      v54 = v27;
      v71 = *MEMORY[0x277D76648];
      v70 = *MEMORY[0x277D76768];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D380);
      v28 = swift_allocObject();
      v29 = *(*v28 + 104);
      v30 = *(v19 + 56);
      v30(v28 + v29, 1, 1, v18);
      v31 = (v28 + *(*v28 + 136));
      *v31 = 0;
      v31[1] = 0;
      *(v28 + *(*v28 + 112)) = v26;
      *(v28 + *(*v28 + 120)) = v27;
      sub_21D0D3954(v23, v28 + *(*v28 + 96), &qword_27CE5C1E0);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D8);
      swift_storeEnumTagMultiPayload();
      sub_21D0D3954(v23, v17, &qword_27CE5C1E0);
      v30(v17, 0, 1, v18);
      swift_beginAccess();
      v32 = v71;
      v33 = v70;
      v55 = v55;
      v54 = v54;
      sub_21D0F02F4(v17, v28 + v29, &qword_27CE5C1F8);
      swift_endAccess();
      sub_21DBF9D4C();
      v72 = MEMORY[0x277D84F90];
      sub_21D0D9340(&qword_280D17808, MEMORY[0x277D85230]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00);
      sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00);
      sub_21DBFBCBC();
      (*(v68 + 104))(v67, *MEMORY[0x277D85260], v69);
      v34 = sub_21DBFB14C();
      v35 = v59;
      sub_21D0D3954(v23, v59, &qword_27CE5C1E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D388);
      v36 = swift_allocObject();
      *(v36 + 72) = 0u;
      *(v36 + 88) = 0u;
      *(v36 + 104) = 0;
      *(v36 + 108) = -1;
      *(v36 + 120) = 0;
      *(v36 + 128) = 1;
      v37 = *(*v36 + 216);
      v38 = swift_slowAlloc();
      *(v36 + v37) = v38;
      *(v36 + *(*v36 + 224)) = 0;
      v39 = v58;
      *(v36 + 16) = v34;
      *(v36 + 24) = v39;
      v40 = v60;
      *(v36 + 32) = v54;
      *(v36 + 40) = v40;
      sub_21D0D3954(v35, v36 + *(*v36 + 208), &qword_27CE5C1E0);
      swift_storeEnumTagMultiPayload();
      *v38 = 0;

      sub_21D0CF7E0(v35, &qword_27CE5C1E0);
      sub_21D0CF7E0(v23, &qword_27CE5C1E0);
      v41 = v70;
      *(v36 + 48) = v71;
      *(v36 + 56) = v41;
      *(v36 + 64) = 1;
      *(v28 + *(*v28 + 128)) = v36;
      v42 = swift_allocObject();
      swift_weakInit();
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      *(v44 + 24) = v43;
      v45 = *(v36 + 72);
      *(v36 + 72) = sub_21D504570;
      *(v36 + 80) = v44;

      sub_21D0D0E88(v45);

      v46 = *(v28 + *(*v28 + 128));
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = *(v46 + 88);
      *(v46 + 88) = sub_21D504578;
      *(v46 + 96) = v47;

      sub_21D0D0E88(v48);

      v49 = swift_allocObject();
      swift_weakInit();
      v50 = swift_allocObject();
      swift_weakInit();
      v51 = swift_allocObject();
      *(v51 + 16) = v49;
      *(v51 + 24) = v50;
      v52 = (v28 + *(*v28 + 136));
      v53 = *v52;
      *v52 = sub_21D504580;
      v52[1] = v51;

      sub_21D0D0E88(v53);

      *v63 = v28;
      return sub_21D400F60(1);
    }

LABEL_9:
    v61 = 0;
    goto LABEL_10;
  }

  if (!v24)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    goto LABEL_9;
  }

  sub_21D4FA934(sub_21D504BB0, a3, &unk_282EC1150, &unk_282EC1178, sub_21D504588, &block_descriptor_41);
}

uint64_t sub_21D502F94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = a5;
  v10 = sub_21DBFB11C();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v65);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D428);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F8);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - v22;
  v24 = *a1;
  if (v9 != 2)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    if (v24)
    {
      v61 = v24;
      sub_21D737ED0();
LABEL_10:
      sub_21D0D3954(a2, v23, &qword_27CE5C2F8);
      v57 = sub_21D0D8CF0(0, &qword_280D1B900);
      v26 = sub_21DBFB12C();
      v55 = v26;
      sub_21DBF60DC();
      v58 = sub_21DBF60BC();
      v27 = sub_21DBF60AC();
      v54 = v27;
      v71 = *MEMORY[0x277D76648];
      v70 = *MEMORY[0x277D76768];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D430);
      v28 = swift_allocObject();
      v29 = *(*v28 + 104);
      v30 = *(v19 + 56);
      v30(v28 + v29, 1, 1, v18);
      v31 = (v28 + *(*v28 + 136));
      *v31 = 0;
      v31[1] = 0;
      *(v28 + *(*v28 + 112)) = v26;
      *(v28 + *(*v28 + 120)) = v27;
      sub_21D0D3954(v23, v28 + *(*v28 + 96), &qword_27CE5C2F8);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F0);
      swift_storeEnumTagMultiPayload();
      sub_21D0D3954(v23, v17, &qword_27CE5C2F8);
      v30(v17, 0, 1, v18);
      swift_beginAccess();
      v32 = v71;
      v33 = v70;
      v55 = v55;
      v54 = v54;
      sub_21D0F02F4(v17, v28 + v29, &qword_27CE5D428);
      swift_endAccess();
      sub_21DBF9D4C();
      v72 = MEMORY[0x277D84F90];
      sub_21D0D9340(&qword_280D17808, MEMORY[0x277D85230]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00);
      sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00);
      sub_21DBFBCBC();
      (*(v68 + 104))(v67, *MEMORY[0x277D85260], v69);
      v34 = sub_21DBFB14C();
      v35 = v59;
      sub_21D0D3954(v23, v59, &qword_27CE5C2F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D438);
      v36 = swift_allocObject();
      *(v36 + 72) = 0u;
      *(v36 + 88) = 0u;
      *(v36 + 104) = 0;
      *(v36 + 108) = -1;
      *(v36 + 120) = 0;
      *(v36 + 128) = 1;
      v37 = *(*v36 + 216);
      v38 = swift_slowAlloc();
      *(v36 + v37) = v38;
      *(v36 + *(*v36 + 224)) = 0;
      v39 = v58;
      *(v36 + 16) = v34;
      *(v36 + 24) = v39;
      v40 = v60;
      *(v36 + 32) = v54;
      *(v36 + 40) = v40;
      sub_21D0D3954(v35, v36 + *(*v36 + 208), &qword_27CE5C2F8);
      swift_storeEnumTagMultiPayload();
      *v38 = 0;

      sub_21D0CF7E0(v35, &qword_27CE5C2F8);
      sub_21D0CF7E0(v23, &qword_27CE5C2F8);
      v41 = v70;
      *(v36 + 48) = v71;
      *(v36 + 56) = v41;
      *(v36 + 64) = 1;
      *(v28 + *(*v28 + 128)) = v36;
      v42 = swift_allocObject();
      swift_weakInit();
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = swift_allocObject();
      *(v44 + 16) = v42;
      *(v44 + 24) = v43;
      v45 = *(v36 + 72);
      *(v36 + 72) = sub_21D50484C;
      *(v36 + 80) = v44;

      sub_21D0D0E88(v45);

      v46 = *(v28 + *(*v28 + 128));
      v47 = swift_allocObject();
      swift_weakInit();
      v48 = *(v46 + 88);
      *(v46 + 88) = sub_21D504854;
      *(v46 + 96) = v47;

      sub_21D0D0E88(v48);

      v49 = swift_allocObject();
      swift_weakInit();
      v50 = swift_allocObject();
      swift_weakInit();
      v51 = swift_allocObject();
      *(v51 + 16) = v49;
      *(v51 + 24) = v50;
      v52 = (v28 + *(*v28 + 136));
      v53 = *v52;
      *v52 = sub_21D50485C;
      v52[1] = v51;

      sub_21D0D0E88(v53);

      *v63 = v28;
      return sub_21D40137C(1);
    }

LABEL_9:
    v61 = 0;
    goto LABEL_10;
  }

  if (!v24)
  {
    v59 = v21;
    v60 = a3;
    v62 = a4;
    v63 = a1;
    goto LABEL_9;
  }

  sub_21D4FA934(sub_21D504BB0, a3, &unk_282EC1A10, &unk_282EC1A38, sub_21D504864, &block_descriptor_234);
}

uint64_t sub_21D50394C(uint64_t a1)
{
  v34 = a1;
  v2 = sub_21DBF76AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D8);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1F8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v36 = sub_21DBF757C();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_dataViewMonitor;
  result = swift_beginAccess();
  v35 = v1;
  v18 = *(v1 + v16);
  if (v18)
  {
    v32 = v3;
    v33 = v2;
    v19 = *(*v18 + 96);
    swift_beginAccess();
    sub_21D0D3954(v18 + v19, v7, &qword_27CE5C1D8);
    sub_21DBFC83C();
    sub_21D0CF7E0(v7, &qword_27CE5C1D8);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1E0);
    if ((*(*(v20 - 8) + 48))(v10, 1, v20) == 1)
    {
      return sub_21D0CF7E0(v10, &qword_27CE5C1F8);
    }

    else
    {

      v21 = *(v38 + 32);
      v22 = v36;
      v21(v12, v10, v36);
      v21(v15, v12, v22);
      v41 = v34;
      swift_getKeyPath();
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80);
      sub_21D0D9418(&qword_27CE589E8, &qword_27CE5DF80);
      sub_21D183A0C();
      v23 = sub_21DBFA46C();

      v24 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v25 = v35;
      swift_beginAccess();
      if (*(v25 + v24))
      {

        TTRBatchFetchManager<A>.override(objects:)(v23);
      }

      v26 = sub_21D183AA0(v23);

      sub_21D19ED38(v26);

      if (MEMORY[0x277D84F90] >> 62)
      {
        if (sub_21DBFBD7C())
        {
          sub_21D1CDECC(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21D1CDECC(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21D1CDECC(MEMORY[0x277D84F90]);
        }
      }

      v27 = v37;
      sub_21DBF767C();
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_21DBFBEEC();
      v39 = *v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D328);
      v28 = sub_21DBFA1AC();
      v30 = v29;

      v39 = v28;
      v40 = v30;
      MEMORY[0x223D42AA0](0xD000000000000021, 0x800000021DC448D0);
      v31 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v31);
      *(&v32 - 4) = v25;
      *(&v32 - 3) = v15;
      *(&v32 - 2) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
      sub_21DBF625C();

      (*(v32 + 8))(v27, v33);
      return (*(v38 + 8))(v15, v22);
    }
  }

  return result;
}

uint64_t sub_21D503FB8(void *a1, char a2)
{
  *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_dataViewMonitor) = 0;
  *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_store) = a1;
  *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_countCompleted) = a2;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 18) = 0;
  *(v2 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_tipKitContextInstance) = v5;
  v6 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v7 = *MEMORY[0x277D45420];
  v8 = sub_21DBF70DC();
  (*(*(v8 - 8) + 104))(v2 + v6, v7, v8);
  *(v2 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v2 + 16) = 0;
  v11 = 10;
  v9 = a1;

  sub_21D4F6AD8(&v11);

  return v2;
}

void sub_21D504124(void *a1)
{
  if (qword_27CE56980 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5D2F8);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_21D0CDFB4(0x6574656C706D6F63, 0xE900000000000064, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowCompletedByDateBucketsDataModelSource did hit error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D50462C(void *a1)
{
  *a1 = v1;

  return 0;
}

uint64_t sub_21D5049F4()
{
  swift_beginAccess();
  *(v0 + 64) = MEMORY[0x277D84F98];
}

uint64_t objectdestroy_41Tm()
{

  return swift_deallocObject();
}

uint64_t sub_21D504BBC(uint64_t a1, uint64_t a2)
{
  result = a1 & 5;
  if (a2 == 1)
  {
    if ((a1 & 8) == 0)
    {
      if ((a1 & 2) == 0)
      {
        return result;
      }

      return result | 8;
    }

    v4 = -3;
  }

  else
  {
    if ((a1 & 2) == 0)
    {
      if ((a1 & 8) == 0)
      {
        return result;
      }

      return result | 8;
    }

    v4 = -9;
  }

  result |= 2uLL;
  if ((v4 | a1) == 0xFFFFFFFFFFFFFFFFLL)
  {
    return result | 8;
  }

  return result;
}

uint64_t sub_21D504C10()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5D498);
  v1 = __swift_project_value_buffer(v0, qword_27CE5D498);
  if (qword_280D17A48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void CGPoint.flippedForRTLIfNeeded(for:inContainerWithWidth:)(unint64_t a1)
{
  if (a1 > 1)
  {
    if (qword_27CE56988 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    __swift_project_value_buffer(v1, qword_27CE5D498);
    v2 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v2);
    sub_21DAEAB00("unknown language direction", 26, 2);
    __break(1u);
  }
}

double CGPoint.pixelAligned(toScale:)(double a1, double a2)
{
  if (a1 == 1.0)
  {
    return round(a2);
  }

  else
  {
    return round(a1 * a2) / a1;
  }
}

void *REMDaemonUserDefaults.observablePropertyForShowRemindersAsOverdue.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65120);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[11] = 0;
  v4[12] = 0;
  v4[9] = v3;
  v4[10] = 0;
  v4[4] = sub_21D504EEC;
  v4[5] = v1;
  v4[6] = sub_21D504F38;
  v4[7] = v2;
  v4[8] = sub_21D504F80;
  v5 = v0;
  return v4;
}

id sub_21D504EBC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 showRemindersAsOverdue];
  *a2 = result;
  return result;
}

id sub_21D504EEC@<X0>(_BYTE *a1@<X8>)
{
  result = [*(v1 + 16) showRemindersAsOverdue];
  *a1 = result;
  return result;
}

void *REMDaemonUserDefaults.observablePropertyForTreatRemindersAsNotOverdue.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65120);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[11] = 0;
  v4[12] = 0;
  v4[9] = v3;
  v4[10] = 0;
  v4[4] = sub_21D5050F4;
  v4[5] = v1;
  v4[6] = sub_21D505140;
  v4[7] = v2;
  v4[8] = sub_21D505188;
  v5 = v0;
  return v4;
}

id sub_21D5050C4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [a1 treatRemindersAsNotOverdue];
  *a2 = result;
  return result;
}

id sub_21D5050F4@<X0>(_BYTE *a1@<X8>)
{
  result = [*(v1 + 16) treatRemindersAsNotOverdue];
  *a1 = result;
  return result;
}

id sub_21D5051E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v17[4] = a5;
  v17[5] = v13;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_21D2F9D00;
  v17[3] = a6;
  v14 = _Block_copy(v17);

  v15 = [a3 *a7];
  _Block_release(v14);
  return v15;
}

void sub_21D5052D0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 timeZoneOverride];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21DBFA16C();
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

void sub_21D50533C(uint64_t a1, void *a2)
{
  if (*(a1 + 8))
  {
    v3 = sub_21DBFA12C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [a2 setTimeZoneOverride_];
}

void sub_21D5053B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t TTRICollectionViewAccessoryState.accessory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF85DC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRICollectionViewAccessoryState.accessory.setter(uint64_t a1)
{
  v3 = sub_21DBF85DC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_21D5055B8()
{
  v0 = sub_21DBF853C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v10 - v5;
  sub_21DBF855C();
  sub_21DBF855C();
  v7 = MEMORY[0x223D40CE0](v6, v3);
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

unint64_t sub_21D50570C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_21DBF6D7C();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_21D0CF7E0(v25, &qword_27CE5B208);
  }

  if (v18 < 1)
  {
    return sub_21D0CF7E0(v25, &qword_27CE5B208);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_21D0CF7E0(v25, &qword_27CE5B208);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_21D5058D0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = (v9 + 32 + 8 * result);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = &v10[a3];
      v15 = (v9 + 32 + 8 * a2);
      if (result != v15 || result >= v15 + 8 * v14)
      {
        result = memmove(result, v15, 8 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v10 = a4;
    result = sub_21DBF8E0C();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_21D5059E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_21DBFBD7C();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_21DBFBD7C();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_21D505B14(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = result - v8;
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_21DBFBD7C();
    v16 = result - v8;
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = sub_21DBFBD7C();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = result + v12;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;

    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_21D505C4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_21D0D8CF0(0, a5);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = &result[-v8];
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_21DBFBD7C();
    v16 = &result[-v8];
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = sub_21DBFBD7C();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = &result[v12];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;
    result = v9;
    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

unint64_t sub_21D505D70(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59BE8);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = swift_unknownObjectRetain();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_21D505E78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_21D0D8CF0(0, a4);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_21DBFBD7C();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_21DBFBD7C();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_21D505F94(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 48 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AA0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 48 * a3;
  v13 = (v7 + 32 + 48 * a2);
  if (result != v13 || result >= v13 + 48 * v12)
  {
    result = memmove(result, v13, 48 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t *sub_21D506094(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_21DBF85DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v8 + v11;
  v13 = ((v8 + v11) & ~v11) + *(v10 + 64);
  v14 = (*(v7 + 80) | *(v10 + 80));
  if (v14 > 7 || ((*(v7 + 80) | *(v10 + 80)) & 0x100000) != 0 || v13 > 0x18)
  {
    v17 = *a2;
    *a1 = *a2;
    a1 = (v17 + ((v14 + 16) & ~v14));
  }

  else
  {
    v18 = ~v11;
    (*(v7 + 16))(a1, a2, v6);
    (*(v10 + 16))((a1 + v12) & v18, (a2 + v12) & v18, v9);
  }

  return a1;
}

uint64_t sub_21D5061F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF85DC();
  v5 = *(v4 - 8) + 8;
  (*v5)(a1, v4);
  v6 = *(*(a2 + 16) - 8);
  v7 = *(v6 + 8);
  v8 = (*(v5 + 56) + a1 + *(v6 + 80)) & ~*(v6 + 80);

  return v7(v8);
}

uint64_t sub_21D5062A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF85DC();
  v7 = *(v6 - 8) + 16;
  (*v7)(a1, a2, v6);
  v8 = *(*(a3 + 16) - 8);
  (*(v8 + 16))((*(v7 + 48) + *(v8 + 80) + a1) & ~*(v8 + 80), (*(v7 + 48) + *(v8 + 80) + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t sub_21D506360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF85DC();
  v7 = *(v6 - 8) + 24;
  (*v7)(a1, a2, v6);
  v8 = *(*(a3 + 16) - 8);
  (*(v8 + 24))((*(v7 + 40) + *(v8 + 80) + a1) & ~*(v8 + 80), (*(v7 + 40) + *(v8 + 80) + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t sub_21D506418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF85DC();
  v7 = *(v6 - 8) + 32;
  (*v7)(a1, a2, v6);
  v8 = *(*(a3 + 16) - 8);
  (*(v8 + 32))((*(v7 + 32) + *(v8 + 80) + a1) & ~*(v8 + 80), (*(v7 + 32) + *(v8 + 80) + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t sub_21D5064D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF85DC();
  v7 = *(v6 - 8) + 40;
  (*v7)(a1, a2, v6);
  v8 = *(*(a3 + 16) - 8);
  (*(v8 + 40))((*(v7 + 24) + *(v8 + 80) + a1) & ~*(v8 + 80), (*(v7 + 24) + *(v8 + 80) + a2) & ~*(v8 + 80));
  return a1;
}

unint64_t sub_21D5065EC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DDC0);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 16 * a3;
  v15 = (v9 + 32 + 16 * a2);
  if (result != v15 || result >= v15 + 16 * v14)
  {
    result = memmove(result, v15, 16 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_21D506710(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = sub_21DBF8E0C();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_21D5067F4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
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

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
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

unint64_t sub_21D5068C8(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
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

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
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

unint64_t sub_21D50699C(unint64_t result, _BYTE *a2, uint64_t *a3, __int128 *a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3;
  v8 = a2;
  v9 = *v4;
  v10 = (v9 + 32 + 48 * result);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AA0);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_16;
  }

  result = &v10[3 * v7];
  a2 = (v9 + 32 + 48 * v8);
  if (result != a2 || result >= &a2[48 * v14])
  {
    result = memmove(result, a2, 48 * v14);
  }

  v15 = *(v9 + 16);
  v11 = __OFADD__(v15, v12);
  v16 = v15 + v12;
  if (v11)
  {
    goto LABEL_17;
  }

  *(v9 + 16) = v16;
LABEL_10:
  if (v7 <= 0)
  {
    return result;
  }

  v17 = *a4;
  v18 = a4[2];
  v10[1] = a4[1];
  v10[2] = v18;
  *v10 = v17;
  a3 = &qword_27CE5D4D8;
  a2 = v19;
  result = a4;
  if (v7 != 1)
  {
LABEL_18:
    result = sub_21D0D3954(result, a2, a3);
    __break(1u);
    return result;
  }

  return sub_21D0D3954(a4, v19, &qword_27CE5D4D8);
}

id TTRINavigationBarConfig.tintColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void **assignWithCopy for TTRINavigationBarConfig(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  v5 = v4;

  return a1;
}

void **assignWithTake for TTRINavigationBarConfig(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRINavigationBarConfig(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRINavigationBarConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

uint64_t TTRTextInputTextValueUpdateMode.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D506D18()
{
  result = qword_27CE5D4E0;
  if (!qword_27CE5D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5D4E0);
  }

  return result;
}

uint64_t sub_21D506D7C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5D4E8);
  v1 = __swift_project_value_buffer(v0, qword_27CE5D4E8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRIMarginProvidingView.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

void *TTRIMarginTransferAction.redirectedTarget.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t TTRIMarginTransferAction.init(edgesToReceiveMargins:redirectedTarget:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void (*sub_21D506FAC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = *(sub_21D507728() + 16);

  return sub_21D507000;
}

uint64_t sub_21D50700C@<X0>(void *a1@<X8>)
{
  v2 = sub_21D507728();
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_21D0D0E78(v3);

  if (v3)
  {
    result = swift_allocObject();
    *(result + 16) = v3;
    *(result + 24) = v4;
    v6 = sub_21D508AEC;
  }

  else
  {
    v6 = 0;
    result = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_21D507094(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = sub_21D508AF4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_21D0D0E78(v2);
  v5 = sub_21D507728();
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;
  *(v5 + 32) = v3;
  sub_21D0D0E78(v4);
  sub_21D0D0E88(v6);
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong setNeedsInvalidation_];

  sub_21D0D0E88(v4);
}

uint64_t (*sub_21D5071B0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = sub_21D507728();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  sub_21D0D0E78(v4);

  *a1 = v4;
  a1[1] = v5;
  return sub_21D50721C;
}

void sub_21D507228()
{
  v1 = v0;
  v58 = *(v0 + 48);
  v53 = *(v0 + 64);
  v2 = *(v0 + 80);
  v3 = *(v0 + 16);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = Strong;
  if (v3)
  {
    [Strong directionalLayoutMargins];
    v56 = v7;
    v57 = v6;
    v54 = v9;
    v55 = v8;
  }

  else
  {
    v10 = [Strong superview];

    if (!v10)
    {
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
      *(v0 + 80) = 1;
      return;
    }

    [v10 directionalLayoutMargins];
    v56 = v12;
    v57 = v11;
    v54 = v14;
    v55 = v13;
    v5 = v10;
  }

  v15.f64[0] = v57;
  *(v0 + 48) = v57;
  *(v0 + 56) = v56;
  *(v0 + 64) = v55;
  *(v0 + 72) = v54;
  *(v0 + 80) = 0;
  if ((v2 & 1) != 0 || (v15.f64[1] = v56, v16.f64[0] = v55, v16.f64[1] = v54, (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v15, v58), vceqq_f64(v16, v53)))) & 1) == 0))
  {
    v17 = swift_unknownObjectUnownedLoadStrong();
    v18 = [v17 arrangedSubviews];

    if (v18)
    {
      sub_21D114EC8();
      v59 = sub_21DBFA5EC();
    }

    else
    {
      v59 = MEMORY[0x277D84F90];
    }

    if (v59 >> 62)
    {
      v20 = sub_21DBFBD7C();
      if (v20)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v20 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
LABEL_12:
        v21 = v20 - 1;
        if (v20 >= 1)
        {
          v22 = 0;
          v23 = v59 & 0xC000000000000001;
          *&v19 = 136315138;
          v48 = v19;
          v49 = v20 - 1;
          v50 = v1;
          while (1)
          {
            v24 = v23 ? MEMORY[0x223D44740](v22, v59) : *(v59 + 8 * v22 + 32);
            v25 = v24;
            v26 = *(v1 + 24);
            if (!v26)
            {
              break;
            }

            v26(&v60, v25);
            sub_21D0D0E88(v26);
            v28 = v60;
            v27 = v61;
            if (v61)
            {
              if (v61 == 1)
              {
                break;
              }

              v29 = v61;
              v30 = v61;
            }

            else
            {
              v30 = v25;
              v29 = 0;
            }

            v31 = v29;
            v32 = [v30 edgesPreservingSuperviewLayoutMargins];
            if (v32 && (sub_21D504BBC(v32, [v30 effectiveUserInterfaceLayoutDirection]) & v28) != 0)
            {
              if (qword_27CE56990 != -1)
              {
                swift_once();
              }

              v33 = sub_21DBF84BC();
              __swift_project_value_buffer(v33, qword_27CE5D4E8);
              v34 = v30;
              v35 = sub_21DBF84AC();
              v36 = sub_21DBFAECC();

              v52 = v36;
              if (os_log_type_enabled(v35, v36))
              {
                v37 = swift_slowAlloc();
                v51 = swift_slowAlloc();
                v60 = v51;
                *v37 = v48;
                v38 = [v34 description];
                v39 = sub_21DBFA16C();
                v41 = v40;

                v42 = sub_21D0CDFB4(v39, v41, &v60);
                v1 = v50;

                *(v37 + 4) = v42;
                _os_log_impl(&dword_21D0C9000, v35, v52, "TTRIMarginTransferHelper: targetView preserves superview layout margins. This may cause problems {targetView: %s}", v37, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v51);
                MEMORY[0x223D46520](v51, -1, -1);
                v43 = v37;
                v21 = v49;
                MEMORY[0x223D46520](v43, -1, -1);
              }
            }

            [v30 directionalLayoutMargins];
            if (v28)
            {
              v44 = v57;
            }

            if ((v28 & 2) != 0)
            {
              v45 = v56;
            }

            if ((v28 & 8) != 0)
            {
              v47 = v54;
            }

            if ((v28 & 4) != 0)
            {
              v46 = v55;
            }

            [v30 setDirectionalLayoutMargins_];

            sub_21D508AD4(v28, v27);
            v23 = v59 & 0xC000000000000001;
            if (v21 == v22)
            {
              goto LABEL_44;
            }

LABEL_15:
            ++v22;
          }

          if (v21 == v22)
          {
            goto LABEL_44;
          }

          goto LABEL_15;
        }

        __break(1u);
        return;
      }
    }

LABEL_44:
  }
}

id TTRIMarginTransferringContainerBoxView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_21D5078A4@<X0>(uint64_t (*a1)(void)@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *(a1() + 16);
}

uint64_t sub_21D5078FC(unsigned __int8 *a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a2();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  if (v4 != v2)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    [Strong setNeedsInvalidation_];
  }
}

void (*sub_21D50796C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = *(sub_21D50801C() + 16);

  return sub_21D5079C0;
}

void sub_21D5079CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 8);
  v5 = *(*a1 + *a3);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;
  if (v4 != v6)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    [Strong setNeedsInvalidation_];
  }
}

uint64_t sub_21D507A3C@<X0>(void *a1@<X8>)
{
  v2 = sub_21D50801C();
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_21D0D0E78(v3);

  if (v3)
  {
    result = swift_allocObject();
    *(result + 16) = v3;
    *(result + 24) = v4;
    v6 = sub_21D508AA8;
  }

  else
  {
    v6 = 0;
    result = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_21D507AC4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = sub_21D508A70;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_21D0D0E78(v2);
  v5 = sub_21D50801C();
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;
  *(v5 + 32) = v3;
  sub_21D0D0E78(v4);
  sub_21D0D0E88(v6);
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong setNeedsInvalidation_];

  sub_21D0D0E88(v4);
}

uint64_t sub_21D507BC8(uint64_t (*a1)(void))
{
  v1 = *(a1() + 24);
  sub_21D0D0E78(v1);

  return v1;
}

uint64_t sub_21D507C30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v6 = *(v5 + 24);
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  sub_21D0D0E78(a1);
  sub_21D0D0E88(v6);
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong setNeedsInvalidation_];

  sub_21D0D0E88(a1);
}

uint64_t (*sub_21D507CD0(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = sub_21D50801C();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  sub_21D0D0E78(v4);

  *a1 = v4;
  a1[1] = v5;
  return sub_21D507D3C;
}

uint64_t sub_21D507D48(uint64_t *a1, char a2, void *a3)
{
  v3 = a1[1];
  v4 = *a1;
  v5 = *(a1[2] + *a3);
  v6 = *(v5 + 24);
  *(v5 + 24) = *a1;
  *(v5 + 32) = v3;
  if (a2)
  {
    sub_21D0D0E78(v4);
    sub_21D0D0E78(v4);

    sub_21D0D0E88(v6);
    Strong = swift_unknownObjectUnownedLoadStrong();
    [Strong setNeedsInvalidation_];

    sub_21D0D0E88(v4);

    return sub_21D0D0E88(v4);
  }

  else
  {

    sub_21D0D0E78(v4);
    sub_21D0D0E88(v6);
    v9 = swift_unknownObjectUnownedLoadStrong();
    [v9 setNeedsInvalidation_];

    sub_21D0D0E88(v4);
  }
}

double sub_21D507EA8(void *a1, double a2, double a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  v10 = a1;
  a5();
  sub_21D507228();

  v15.receiver = v10;
  v15.super_class = a6(v11);
  objc_msgSendSuper2(&v15, sel_calculateArrangedSizeFittingSize_, a2, a3);
  v13 = v12;

  return v13;
}

void sub_21D507F74(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, void (*a7)(void), uint64_t (*a8)(uint64_t))
{
  v14 = a1;
  a7();
  sub_21D507228();

  v16.receiver = v14;
  v16.super_class = a8(v15);
  objc_msgSendSuper2(&v16, sel_layoutArrangedSubviewsInBounds_, a2, a3, a4, a5);
}

uint64_t sub_21D508028(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    type metadata accessor for TTRIMarginTransferHelper();
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 1;
    swift_unknownObjectUnownedInit();
    *(v1 + v2) = v4;
  }

  return v4;
}

id _s15RemindersUICore38TTRIMarginTransferringContainerBoxViewC5frameACSo6CGRectV_tcfC_0(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_21D508164(void *a1, uint64_t (*a2)(void), double a3, double a4, double a5, double a6)
{
  *&v6[*a1] = 0;
  v12.receiver = v6;
  v12.super_class = a2();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a3, a4, a5, a6);
}

id sub_21D5081F4(char *a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7, uint64_t (*a8)(void))
{
  *&a1[*a7] = 0;
  v13.receiver = a1;
  v13.super_class = a8();
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a2, a3, a4, a5);
}

id _s15RemindersUICore38TTRIMarginTransferringContainerBoxViewC16arrangedSubviewsACSaySo6UIViewCGSg_tcfC_0(uint64_t a1)
{
  if (a1)
  {
    sub_21D114EC8();
    v2 = sub_21DBFA5DC();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithArrangedSubviews_];

  return v3;
}

id sub_21D508308(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  *&v3[*a2] = 0;
  if (a1)
  {
    sub_21D114EC8();
    v5 = sub_21DBFA5DC();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = a3(a1);
  v6 = objc_msgSendSuper2(&v8, sel_initWithArrangedSubviews_, v5);

  return v6;
}

id sub_21D5083BC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t))
{
  v7 = a3;
  v8 = a1;
  if (a3)
  {
    sub_21D114EC8();
    sub_21DBFA5EC();
    *&v8[*a4] = 0;
    v7 = sub_21DBFA5DC();
  }

  else
  {
    *(a1 + *a4) = 0;
  }

  v11.receiver = v8;
  v11.super_class = a5(a1);
  v9 = objc_msgSendSuper2(&v11, sel_initWithArrangedSubviews_, v7);

  return v9;
}

id sub_21D508494(void *a1, void *a2, uint64_t (*a3)(void))
{
  *&v3[*a2] = 0;
  v7.receiver = v3;
  v7.super_class = a3();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_21D508528(char *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void))
{
  *&a1[*a4] = 0;
  v9.receiver = a1;
  v9.super_class = a5();
  v6 = a3;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, v6);

  if (v7)
  {
  }

  return v7;
}

id sub_21D5085C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_21D508600()
{
  result = qword_27CE5D510;
  if (!qword_27CE5D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5D510);
  }

  return result;
}

uint64_t keypath_getTm_0@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  v3 = *(a1() + 16);

  *a2 = v3;
  return result;
}

void *assignWithCopy for TTRIMarginTransferAction(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a1[1];
  v4 = a2[1];
  a1[1] = v4;
  v5 = v4;

  return a1;
}

void *assignWithTake for TTRIMarginTransferAction(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  return a1;
}

uint64_t sub_21D508A0C()
{
  sub_21D0D0E88(*(v0 + 24));
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_21D508A70(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_21D508AD4(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
  }
}

id sub_21D508B20(double a1, double a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:a2 alpha:a1];
  result = [v2 _colorBlendedWithColor_];
  if (result)
  {
    v5 = result;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id UIColor.withAlphaComponentPreservingVariants(_:)(double a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = objc_allocWithZone(MEMORY[0x277D75348]);
  v9[4] = sub_21D508D0C;
  v9[5] = v3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21D114B20;
  v9[3] = &block_descriptor_43;
  v5 = _Block_copy(v9);
  v6 = v1;
  v7 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  return v7;
}

id sub_21D508C9C(uint64_t a1, id a2, double a3)
{
  v4 = [a2 resolvedColorWithTraitCollection_];
  v5 = [v4 colorWithAlphaComponent_];

  return v5;
}

id sub_21D508D24(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  v2 = [v1 colorWithAlphaComponent_];

  return v2;
}

uint64_t TTRIRemindersListDetailPopoverAnchorProvider.__allocating_init(targetItems:popoverAnchor:cellInfoButtonVisibilityAssertion:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  TTRIRemindersListDetailPopoverAnchorProvider.init(targetItems:popoverAnchor:cellInfoButtonVisibilityAssertion:)(a1, a2, a3);
  return v6;
}

uint64_t TTRIRemindersListDetailPopoverAnchorProvider.init(targetItems:popoverAnchor:cellInfoButtonVisibilityAssertion:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = a2[1];
  v17 = *a2;
  v18 = v10;
  v19[0] = a2[2];
  *(v19 + 9) = *(a2 + 41);
  *(v3 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_assertCount) = 0;
  *(v3 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_temporaryAssertionCancellable) = 0;
  if (!a1)
  {
    goto LABEL_5;
  }

  if (*(a1 + 16) != 1)
  {

LABEL_5:
    v13 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    goto LABEL_6;
  }

  v11 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v12 = *(v11 - 8);
  sub_21D1D338C(a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v9);

  (*(v12 + 56))(v9, 0, 1, v11);
LABEL_6:
  sub_21D36DFDC(v9, v3 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_singleTargetItem);
  v14 = (v3 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor);
  v15 = v18;
  *v14 = v17;
  v14[1] = v15;
  v14[2] = v19[0];
  *(v14 + 41) = *(v19 + 9);
  *(v3 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_cellInfoButtonVisibilityAssertion) = a3;
  return v3;
}

Swift::Void __swiftcall TTRIRemindersListDetailPopoverAnchorProvider.temporarilyAssertCellInfoButtonVisibility()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D540);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_temporaryAssertionCancellable;
  if (!*(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_temporaryAssertionCancellable))
  {
    sub_21D509108(&v8 - v3);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D548);
    v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
    sub_21D0CF7E0(v4, &qword_27CE5D540);
    if (v7 != 1)
    {
      sub_21DBF902C();
      swift_allocObject();

      *(v1 + v5) = sub_21DBF903C();
    }
  }
}

uint64_t sub_21D509108@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor + 32);
  v39 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor + 16);
  v40[0] = v13;
  *(v40 + 9) = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor + 41);
  v38 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor);
  v43 = v38;
  v44 = v39;
  v45 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor + 32);
  v14 = *(&v40[0] + 1);
  v41 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor + 48);
  v42 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor + 56);
  if ((~BYTE8(v13) & 0xFE) == 0)
  {
    goto LABEL_10;
  }

  sub_21D0D3954(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_singleTargetItem, v8, &unk_27CE5CD80);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v15 = &unk_27CE5CD80;
    v16 = v8;
LABEL_9:
    sub_21D0CF7E0(v16, v15);
LABEL_10:
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D548);
    return (*(*(v26 - 8) + 56))(a1, 1, 1, v26);
  }

  v30 = v1;
  sub_21D1056FC(v8, v12, type metadata accessor for TTRRemindersListViewModel.Item);
  v31[4] = v43;
  v31[5] = v44;
  v32 = v45;
  v33 = v14;
  v34 = v41;
  v35 = v42;
  v36[0] = v38;
  v36[1] = v39;
  v37[0] = v40[0];
  *(v37 + 9) = *(v40 + 9);
  sub_21D50B9A4(v36, v31);
  result = sub_21D50B218();
  if (!result)
  {
    sub_21D106978(v12, type metadata accessor for TTRRemindersListViewModel.Item);
    v15 = &qword_27CE5D558;
    v16 = &v38;
    goto LABEL_9;
  }

  v19 = *(v30 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_assertCount);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    v22 = result;
    v23 = v18;
    *(v30 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_assertCount) = v21;
    if (v21 == 1)
    {
      sub_21D1D338C(v12, v5);
      (*(v10 + 56))(v5, 0, 1, v9);
      sub_21DBF908C();
      sub_21D0CF7E0(&v38, &qword_27CE5D558);
      v24 = &unk_27CE5CD80;
      v25 = v5;
    }

    else
    {
      v24 = &qword_27CE5D558;
      v25 = &v38;
    }

    sub_21D0CF7E0(v25, v24);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D548);
    v28 = (a1 + *(v27 + 48));
    sub_21D1056FC(v12, a1, type metadata accessor for TTRRemindersListViewModel.Item);
    *v28 = v22;
    v28[1] = v23;
    return (*(*(v27 - 8) + 56))(a1, 0, 1, v27);
  }

  return result;
}

BOOL sub_21D509518()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v57 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v53 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  MEMORY[0x28223BE20](v3);
  v5 = &v48 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v6 - 8);
  v55 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  MEMORY[0x28223BE20](v11);
  v56 = &v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v13 - 8);
  v54 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  v21 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_assertCount);
  if (v27 >= 1)
  {
    *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_assertCount) = v27 - 1;
    if (v27 == 1)
    {
      v50 = v1;
      v51 = v5;
      v52 = &v48 - v25;
      v28 = v26;
      sub_21D0D3954(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_singleTargetItem, v20, &unk_27CE5CD80);
      v49 = v28;
      v29 = *(v28 + 48);
      if (v29(v20, 1, v21) == 1)
      {
        sub_21D0CF7E0(v20, &unk_27CE5CD80);
        return v27 > 0;
      }

      sub_21D1056FC(v20, v52, type metadata accessor for TTRRemindersListViewModel.Item);
      v48 = *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_cellInfoButtonVisibilityAssertion);
      sub_21DBF909C();
      if (v29(v17, 1, v21))
      {
        sub_21D0CF7E0(v17, &unk_27CE5CD80);
        v30 = 1;
        v32 = v50;
        v31 = v51;
        v34 = v56;
        v33 = v57;
      }

      else
      {
        sub_21D1D338C(v17, v23);
        sub_21D0CF7E0(v17, &unk_27CE5CD80);
        v34 = v56;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v56);
        sub_21D106978(v23, type metadata accessor for TTRRemindersListViewModel.Item);
        v30 = 0;
        v32 = v50;
        v31 = v51;
        v33 = v57;
      }

      v35 = *(v33 + 56);
      v35(v34, v30, 1, v32);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
      v35(v10, 0, 1, v32);
      v36 = v57;
      v37 = *(v3 + 48);
      sub_21D0D3954(v34, v31, &qword_27CE5FB90);
      sub_21D0D3954(v10, v31 + v37, &qword_27CE5FB90);
      v38 = v34;
      v39 = *(v36 + 48);
      if (v39(v31, 1, v32) == 1)
      {
        sub_21D0CF7E0(v10, &qword_27CE5FB90);
        sub_21D0CF7E0(v38, &qword_27CE5FB90);
        if (v39(v31 + v37, 1, v32) == 1)
        {
          sub_21D0CF7E0(v31, &qword_27CE5FB90);
LABEL_15:
          v46 = v54;
          (*(v49 + 56))(v54, 1, 1, v21);
          sub_21DBF908C();
          v41 = &unk_27CE5CD80;
          v42 = v46;
          goto LABEL_16;
        }
      }

      else
      {
        v40 = v55;
        sub_21D0D3954(v31, v55, &qword_27CE5FB90);
        if (v39(v31 + v37, 1, v32) != 1)
        {
          v43 = v53;
          sub_21D1056FC(v31 + v37, v53, type metadata accessor for TTRRemindersListViewModel.ItemID);
          v44 = v40;
          v45 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v40, v43);
          sub_21D106978(v43, type metadata accessor for TTRRemindersListViewModel.ItemID);
          sub_21D0CF7E0(v10, &qword_27CE5FB90);
          sub_21D0CF7E0(v56, &qword_27CE5FB90);
          sub_21D106978(v44, type metadata accessor for TTRRemindersListViewModel.ItemID);
          sub_21D0CF7E0(v31, &qword_27CE5FB90);
          if ((v45 & 1) == 0)
          {
LABEL_17:
            sub_21D106978(v52, type metadata accessor for TTRRemindersListViewModel.Item);
            return v27 > 0;
          }

          goto LABEL_15;
        }

        sub_21D0CF7E0(v10, &qword_27CE5FB90);
        sub_21D0CF7E0(v56, &qword_27CE5FB90);
        sub_21D106978(v40, type metadata accessor for TTRRemindersListViewModel.ItemID);
      }

      v41 = &qword_27CE5F2E0;
      v42 = v31;
LABEL_16:
      sub_21D0CF7E0(v42, v41);
      goto LABEL_17;
    }
  }

  return v27 > 0;
}

uint64_t TTRIRemindersListDetailPopoverAnchorProvider.acquirePopoverAnchor()@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D540);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D550);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  sub_21D509108(v8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D548);
  if ((*(*(v18 - 8) + 48))(v8, 1, v18) == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE5D540);
  }

  else
  {
    v19 = *(v18 + 48);
    v32 = a1;
    v20 = v5;
    v21 = *(v9 + 48);
    v33 = *&v8[v19];
    sub_21D1056FC(v8, v11, type metadata accessor for TTRRemindersListViewModel.Item);
    *&v11[v21] = v33;
    v33 = *&v11[*(v9 + 48)];
    sub_21D1056FC(v11, v17, type metadata accessor for TTRRemindersListViewModel.Item);
    v22 = sub_21DBFA89C();
    v23 = v20;
    a1 = v32;
    (*(*(v22 - 8) + 56))(v23, 1, 1, v22);
    sub_21D1D338C(v17, v14);
    v24 = (*(v34 + 80) + 40) & ~*(v34 + 80);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v1;
    sub_21D1056FC(v14, v25 + v24, type metadata accessor for TTRRemindersListViewModel.Item);
    *(v25 + ((v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;

    v26 = v33;
    sub_21D1B5178(0, 0, v23, &unk_21DC19B28, v25);

    sub_21D106978(v17, type metadata accessor for TTRRemindersListViewModel.Item);
  }

  *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_temporaryAssertionCancellable) = 0;

  v27 = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor + 16);
  v36[0] = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor);
  v36[1] = v27;
  v37[0] = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor + 32);
  v28 = v37[0];
  *(v37 + 9) = *(v1 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor + 41);
  v29 = *(v37 + 9);
  *a1 = v36[0];
  a1[1] = v27;
  a1[2] = v28;
  *(a1 + 41) = v29;
  return sub_21D0D3954(v36, v35, &qword_27CE5D558);
}

uint64_t sub_21D50A020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_21D1B795C;

  return sub_21D50A210(a5, a6);
}

uint64_t sub_21D50A0D4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_21D1B795C;

  return sub_21D50A020(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_21D50A210(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v3[22] = *v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0);
  v3[27] = swift_task_alloc();
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  v3[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D570);
  v3[35] = v6;
  v3[36] = *(v6 - 8);
  v3[37] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D578);
  v3[38] = v7;
  v3[39] = *(v7 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = sub_21DBFA84C();
  v3[42] = sub_21DBFA83C();
  v9 = sub_21DBFA7CC();
  v3[43] = v9;
  v3[44] = v8;

  return MEMORY[0x2822009F8](sub_21D50A524, v9, v8);
}

uint64_t sub_21D50A524()
{
  v1 = v0[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D580);
  swift_allocObject();
  v2 = sub_21DBF907C();
  v0[45] = v2;
  v24 = [objc_opt_self() defaultCenter];
  *(v0 + 4) = 0u;
  v3 = *MEMORY[0x277D76E30];
  *(v0 + 5) = 0u;
  v4 = [objc_opt_self() mainQueue];
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  sub_21D0D3954((v0 + 8), (v0 + 12), &qword_27CE5C690);
  v6 = v0[15];
  if (v6)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v0 + 12, v6);
    v8 = *(v6 - 8);
    v9 = v3;
    v10 = swift_task_alloc();
    (*(v8 + 16))(v10, v7, v6);

    v11 = sub_21DBFC62C();
    (*(v8 + 8))(v10, v6);
    v3 = v9;

    __swift_destroy_boxed_opaque_existential_0((v0 + 12));
  }

  else
  {

    v11 = 0;
  }

  v23 = v0[36];
  v21 = v0[37];
  v22 = v0[35];
  v0[6] = sub_21D50B6C8;
  v0[7] = v5;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_21D0EE46C;
  v0[5] = &block_descriptor_44;
  v12 = _Block_copy(v0 + 2);

  v13 = [v24 addObserverForName:v3 object:v11 queue:v4 usingBlock:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  sub_21DBF902C();
  swift_allocObject();

  v0[46] = sub_21DBF903C();

  swift_unknownObjectRelease();
  sub_21D0CF7E0((v0 + 8), &qword_27CE5C690);

  v0[16] = v2;
  sub_21D0D0F1C(&qword_27CE5D588, &qword_27CE5D580);
  sub_21DBF91FC();
  sub_21DBF904C();
  (*(v23 + 8))(v21, v22);
  v0[47] = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_cellInfoButtonVisibilityAssertion;
  v0[48] = sub_21DBFA83C();
  v17 = sub_21D0D0F1C(&qword_27CE5D590, &qword_27CE5D578);
  v18 = swift_task_alloc();
  v0[49] = v18;
  *v18 = v0;
  v18[1] = sub_21D50AA24;
  v19 = v0[38];

  return MEMORY[0x282200308](v0 + 17, v19, v17);
}

uint64_t sub_21D50AA24()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 384);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_21DBFA7CC();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_21D50B18C;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_21DBFA7CC();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_21D50ABBC;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_21D50ABBC()
{

  v0[51] = v0[17];
  v1 = v0[43];
  v2 = v0[44];

  return MEMORY[0x2822009F8](sub_21D50AC28, v1, v2);
}

uint64_t sub_21D50AC28()
{
  v1 = v0[51];
  if (!v1)
  {
LABEL_18:
    (*(v0[39] + 8))(v0[40], v0[38]);
    goto LABEL_19;
  }

  if ((sub_21DBFA98C() & 1) == 0)
  {
    v2 = v0[31];
    v3 = v0[28];
    v4 = v0[29];
    sub_21DBF909C();
    v35 = v1;
    if ((*(v4 + 48))(v2, 1, v3))
    {
      sub_21D0CF7E0(v0[31], &unk_27CE5CD80);
      v5 = 1;
    }

    else
    {
      v6 = v0[34];
      v8 = v0[30];
      v7 = v0[31];
      sub_21D1D338C(v7, v8);
      sub_21D0CF7E0(v7, &unk_27CE5CD80);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v6);
      sub_21D106978(v8, type metadata accessor for TTRRemindersListViewModel.Item);
      v5 = 0;
    }

    v10 = v0[33];
    v9 = v0[34];
    v12 = v0[26];
    v11 = v0[27];
    v13 = v0[23];
    v14 = v0[24];
    v15 = *(v14 + 56);
    v15(v9, v5, 1, v13);
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v10);
    v15(v10, 0, 1, v13);
    v16 = *(v12 + 48);
    sub_21D0D3954(v9, v11, &qword_27CE5FB90);
    sub_21D0D3954(v10, v11 + v16, &qword_27CE5FB90);
    v17 = *(v14 + 48);
    if (v17(v11, 1, v13) == 1)
    {
      v18 = v0[34];
      v19 = v0[23];
      sub_21D0CF7E0(v0[33], &qword_27CE5FB90);
      sub_21D0CF7E0(v18, &qword_27CE5FB90);
      v20 = v35;
      if (v17(v11 + v16, 1, v19) == 1)
      {
        sub_21D0CF7E0(v0[27], &qword_27CE5FB90);
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    v21 = v0[23];
    sub_21D0D3954(v0[27], v0[32], &qword_27CE5FB90);
    v22 = v17(v11 + v16, 1, v21);
    v24 = v0[33];
    v23 = v0[34];
    v25 = v0[32];
    v20 = v35;
    if (v22 == 1)
    {
      sub_21D0CF7E0(v0[33], &qword_27CE5FB90);
      sub_21D0CF7E0(v23, &qword_27CE5FB90);
      sub_21D106978(v25, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_11:
      sub_21D0CF7E0(v0[27], &qword_27CE5F2E0);
      goto LABEL_12;
    }

    v26 = v0[27];
    v27 = v0[25];
    sub_21D1056FC(v11 + v16, v27, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v28 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v25, v27);
    sub_21D106978(v27, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D0CF7E0(v24, &qword_27CE5FB90);
    sub_21D0CF7E0(v23, &qword_27CE5FB90);
    sub_21D106978(v25, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D0CF7E0(v26, &qword_27CE5FB90);
    if (v28)
    {
LABEL_14:
      v29 = v0[20];
      swift_unknownObjectRelease();
      if (v29 != v20)
      {
        v0[48] = sub_21DBFA83C();
        v30 = sub_21D0D0F1C(&qword_27CE5D590, &qword_27CE5D578);
        v31 = swift_task_alloc();
        v0[49] = v31;
        *v31 = v0;
        v31[1] = sub_21D50AA24;
        v32 = v0[38];

        return MEMORY[0x282200308](v0 + 17, v32, v30);
      }

      goto LABEL_18;
    }
  }

LABEL_12:
  (*(v0[39] + 8))(v0[40], v0[38]);
  swift_unknownObjectRelease();
LABEL_19:

  sub_21D509518();

  v33 = v0[1];

  return v33();
}

uint64_t sub_21D50B18C()
{
  *(v0 + 144) = *(v0 + 400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_21D50B218()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  if (!(v6 >> 6))
  {
    v7 = &qword_280D176A0;
    goto LABEL_5;
  }

  if (v6 >> 6 == 1)
  {
    v7 = &qword_280D0C300;
LABEL_5:
    ObjectType = sub_21D0D8CF0(0, v7);
    goto LABEL_7;
  }

  ObjectType = swift_getObjectType();
LABEL_7:
  v11[0] = v2;
  v11[3] = ObjectType;
  if (ObjectType)
  {
    sub_21D50BA00(v2, v1, v4, v3, v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D598);
    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_21D50BA00(v2, v1, v4, v3, v5, v6);
    sub_21D0CF7E0(v11, &qword_27CE5C690);
    return 0;
  }
}

uint64_t sub_21D50B358()
{
  result = sub_21D50B6D0();
  if (result)
  {
    result = sub_21D50B86C();
    if (result)
    {
      sub_21DBF906C();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t TTRIRemindersListDetailPopoverAnchorProvider.deinit()
{
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_singleTargetItem, &unk_27CE5CD80);
  sub_21D50B42C(*(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor), *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor + 8), *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor + 16), *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor + 24), *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor + 32), *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor + 40));

  return v0;
}

void sub_21D50B42C(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if ((~a6 & 0xFE) != 0)
  {
    sub_21D50B440(a1, a2, a3, a4, a5, a6);
  }
}

void sub_21D50B440(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if ((a6 >> 6) > 1u)
  {
    if (a6 >> 6 == 2)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
  }
}

uint64_t TTRIRemindersListDetailPopoverAnchorProvider.__deallocating_deinit()
{
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_singleTargetItem, &unk_27CE5CD80);
  sub_21D50B42C(*(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor), *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor + 8), *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor + 16), *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor + 24), *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor + 32), *(v0 + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListDetailPopoverAnchorProvider_popoverAnchor + 40));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIRemindersListDetailPopoverAnchorProvider()
{
  result = qword_27CE5D560;
  if (!qword_27CE5D560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D50B5DC()
{
  sub_21D2C7CD8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_21D50B6D0()
{
  v0 = sub_21DBF4D4C();
  if (v0)
  {
    v1 = v0;
    *&v11[0] = sub_21DBFA16C();
    *(&v11[0] + 1) = v2;
    sub_21DBFBE2C();
    if (*(v1 + 16))
    {
      v3 = sub_21D17EA0C(v9);
      if (v4)
      {
        sub_21D0CEB98(*(v1 + 56) + 32 * v3, v11);
        sub_21D181D3C(v9);

        goto LABEL_7;
      }
    }

    sub_21D181D3C(v9);
  }

  memset(v11, 0, sizeof(v11));
LABEL_7:
  sub_21D0D3954(v11, v9, &qword_27CE5C690);
  if (v9[3])
  {
    sub_21D0D8CF0(0, &unk_280D0C1E0);
    if (swift_dynamicCast())
    {
      v5 = v10;
      v6 = [v10 BOOLValue];

      sub_21D0CF7E0(v11, &qword_27CE5C690);
      return v6;
    }

    v8 = v11;
  }

  else
  {
    sub_21D0CF7E0(v11, &qword_27CE5C690);
    v8 = v9;
  }

  sub_21D0CF7E0(v8, &qword_27CE5C690);
  return 0;
}

id sub_21D50B86C()
{
  sub_21DBF4D3C();
  if (!v9)
  {
    sub_21D0CF7E0(v8, &qword_27CE5C690);
    return 0;
  }

  sub_21D0D8CF0(0, &qword_280D17818);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v0 = [v7 popoverPresentationController];
  if (!v0)
  {

    return 0;
  }

  v1 = v0;
  v2 = [v0 sourceItem];
  if (v2)
  {
    v3 = v2;

    return v3;
  }

  else
  {
    v5 = [v1 sourceView];
    if (!v5)
    {
      v5 = [v1 barButtonItem];
    }

    v6 = v5;

    return v6;
  }
}

id sub_21D50BA00(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if ((a6 >> 6) <= 1u)
  {
    return result;
  }

  if (a6 >> 6 == 2)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

id TTRIToolbarBarConfig.tintColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *TTRIToolbarBarConfig.barTintColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

id UIToolbar.apply(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  [v1 setTintColor_];
  [v1 setBarTintColor_];

  return [v1 setTranslucent_];
}

void UIToolbar.toolbarHeightAdjustment_workaround60289707.getter()
{
  v1 = [v0 superview];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 1)
    {
      [v2 safeAreaInsets];
      v6 = v5;
      v7 = v5;

      if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v6 > -9.22337204e18)
      {
        if (v6 < 9.22337204e18)
        {
          return;
        }

LABEL_11:
        __break(1u);
        return;
      }

      __break(1u);
      goto LABEL_11;
    }
  }
}

uint64_t sub_21D50BCC0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_21DBFBD7C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_21D9D9774(v3, 0);
  sub_21D565164(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21D50BD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v6 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = sub_21DBFBD0C();
    v9 = v8;
  }

  else
  {
    v7 = sub_21DBFBCCC();
    v9 = *(a2 + 36);
  }

  v10 = sub_21D515138(v7, v9, v6 != 0, a1, a2);
  v12 = v11;
  v14 = v13;
  sub_21D15746C(v7, v9, v6 != 0);
  if (v6)
  {
    result = sub_21DBFBD7C();
  }

  else
  {
    result = *(a2 + 16);
  }

  v16 = a1 + v31;
  if (__OFADD__(a1, v31))
  {
    goto LABEL_19;
  }

  if (v16 >= result)
  {
    v16 = result;
  }

  if (__OFSUB__(v16, a1))
  {
    goto LABEL_20;
  }

  result = sub_21D515138(v10, v12, v14 & 1, v16 - a1, a2);
  v18 = result;
  v19 = v17;
  v21 = v20;
  if (v20)
  {
    if (v14)
    {
      result = MEMORY[0x223D444F0](result, v17, v10, v12);
      if ((result & 1) == 0)
      {
LABEL_14:
        v26[0] = v10;
        v26[1] = v12;
        v27 = v14 & 1;
        v28 = v18;
        v29 = v19;
        v30 = v21 & 1;
        sub_21D517224(v10, v12, v14 & 1);
        sub_21D514FDC(v26, a2, v24);
        sub_21D15746C(v10, v12, v14 & 1);
        sub_21D15746C(v10, v12, v14 & 1);
        result = sub_21D15746C(v18, v19, v21 & 1);
        v22 = v24[1];
        *a4 = v24[0];
        *(a4 + 16) = v22;
        *(a4 + 32) = v24[2];
        *(a4 + 48) = v25;
        return result;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  else if ((v14 & 1) == 0)
  {
    if (v17 != v12)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (result >= v10)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_21D50BF54()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5D5A0);
  v1 = __swift_project_value_buffer(v0, qword_27CE5D5A0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration(0) + 20);
  v4 = sub_21DBF563C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration.init(isRightToLeft:timestamp:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration(0) + 20);
  v6 = sub_21DBF563C();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t TTRReminderPrintingPresenterCapability.__allocating_init(interactor:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t TTRReminderPrintingPresenterCapability.init(interactor:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t TTRReminderPrintingPresenterCapability.fetchAndGenerateHTML(configuration:)(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D5B8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - v9;
  v15[1] = sub_21D50C474(a1);
  sub_21D515C94(a1, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_21D514D7C(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D5C8);
  sub_21D0D0F1C(&qword_27CE5D5D0, &qword_27CE5D5C0);
  sub_21DBF931C();

  sub_21D0D0F1C(&qword_27CE5D5D8, &qword_27CE5D5B8);
  v13 = sub_21DBF920C();
  (*(v8 + 8))(v10, v7);
  return v13;
}

uint64_t sub_21D50C474(uint64_t a1)
{
  v53 = a1;
  v55 = *v1;
  v2 = type metadata accessor for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration(0);
  v52 = *(v2 - 8);
  v50 = *(v52 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A278);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A280);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D638);
  v51 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v43 = &v42 - v15;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D640);
  v58 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v46 = &v42 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D648);
  v18 = *(v17 - 8);
  v56 = v17;
  v57 = v18;
  MEMORY[0x28223BE20](v17);
  v49 = &v42 - v19;
  v20 = v1[2];
  v21 = v1[3];
  v59 = 1;
  sub_21DBF90EC();
  sub_21DBF60DC();
  v22 = sub_21DBF60AC();
  v59 = v22;
  v23 = sub_21DBFB0DC();
  (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  sub_21D0D8CF0(0, &qword_280D1B900);
  sub_21D0D0F1C(&qword_27CE5A2A8, &qword_27CE5A278);
  sub_21D47130C();
  sub_21DBF936C();
  sub_21D0CF7E0(v6, &unk_27CE5F250);

  (*(v8 + 8))(v10, v7);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = v21;
  v42 = v21;
  sub_21D0D0F1C(&qword_27CE5A2B8, &qword_27CE5A280);
  swift_unknownObjectRetain();
  v26 = v43;
  v25 = v44;
  sub_21DBF931C();

  (*(v45 + 8))(v14, v25);
  v27 = v47;
  sub_21D515C94(v53, v47, type metadata accessor for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration);
  v28 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v29 = (v50 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = v20;
  *(v30 + 24) = v21;
  sub_21D514D7C(v27, v30 + v28, type metadata accessor for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration);
  v31 = v55;
  *(v30 + v29) = v55;
  swift_unknownObjectRetain();
  sub_21DBF8FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D658);
  sub_21D0D0F1C(&qword_27CE5D660, &qword_27CE5D638);
  sub_21D0D0F1C(&qword_27CE5D668, &qword_27CE5D658);
  v32 = v46;
  v33 = v48;
  sub_21DBF934C();

  (*(v51 + 8))(v26, v33);
  v34 = swift_allocObject();
  v35 = v42;
  v34[2] = v20;
  v34[3] = v35;
  v34[4] = v31;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_21D515C08;
  *(v36 + 24) = v34;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D630);
  sub_21D0D0F1C(&qword_27CE5D670, &qword_27CE5D640);
  v37 = v49;
  v38 = v54;
  sub_21DBF927C();

  (*(v58 + 8))(v32, v38);
  sub_21D0D0F1C(&qword_27CE5D678, &qword_27CE5D648);
  v39 = v56;
  v40 = sub_21DBF920C();
  (*(v57 + 8))(v37, v39);
  return v40;
}

uint64_t sub_21D50CD00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, char *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D630);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v38 = type metadata accessor for TTRRemindersPrintingViewModel(0);
  MEMORY[0x28223BE20](v38);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a1, v10, &qword_27CE5D630);
  v13 = *(v8 + 56);
  sub_21D514D7C(v10, v12, type metadata accessor for TTRRemindersPrintingViewModel);
  sub_21D0D0FD0(&v10[v13], v37);
  LOBYTE(v10) = *a2;
  type metadata accessor for TTRReminderPrintingHTMLGenerator();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 40) = sub_21D1769A8(MEMORY[0x277D84F90]);
  *(inited + 16) = v10;
  v15 = TTRReminderPrintingHTMLGenerator.generateHTML(for:)(a1);
  if (v3)
  {
    swift_setDeallocating();

    __swift_destroy_boxed_opaque_existential_0(v37);
    return sub_21D515A94(v12, type metadata accessor for TTRRemindersPrintingViewModel);
  }

  else
  {
    v18 = v16;
    v36 = v15;
    type metadata accessor for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration(0);
    v19 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v19 setDateStyle_];
    [v19 setTimeStyle_];
    v20 = sub_21DBF55BC();
    v21 = [v19 stringFromDate_];

    v22 = sub_21DBFA16C();
    v34 = v23;
    v35 = v22;

    swift_setDeallocating();

    v25 = *v12;
    v24 = *(v12 + 1);
    v26 = *(v38 + 32);
    v27 = type metadata accessor for TTRRemindersPrintingHTMLResult(0);
    v28 = *(v27 + 24);
    v29 = sub_21DBF54CC();
    (*(*(v29 - 8) + 16))(&a3[v28], &v12[v26], v29);
    sub_21DBF8E0C();
    sub_21D515A94(v12, type metadata accessor for TTRRemindersPrintingViewModel);
    *a3 = v25;
    *(a3 + 1) = v24;
    v30 = v35;
    *(a3 + 2) = v36;
    *(a3 + 3) = v18;
    v31 = &a3[*(v27 + 28)];
    v32 = v34;
    *v31 = v30;
    v31[1] = v32;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D5C8);
    return sub_21D0D0FD0(v37, &a3[*(v33 + 48)]);
  }
}

uint64_t TTRReminderPrintingPresenterCapability.fetchAndGenerateHTMLFile(configuration:)(uint64_t a1)
{
  v23 = *v1;
  v3 = type metadata accessor for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D5B8);
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D5E0);
  v11 = *(v10 - 8);
  v25 = v10;
  v26 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - v12;
  v27 = sub_21D50C474(a1);
  sub_21D515C94(a1, v6, type metadata accessor for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = (v5 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_21D514D7C(v6, v16 + v14, type metadata accessor for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration);
  *(v16 + v15) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D5C8);
  sub_21D0D0F1C(&qword_27CE5D5D0, &qword_27CE5D5C0);
  sub_21DBF931C();

  sub_21D0D0F1C(&qword_27CE5D5D8, &qword_27CE5D5B8);
  v17 = v24;
  v18 = sub_21DBF920C();
  (*(v7 + 8))(v9, v17);
  v27 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D5E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D5F0);
  sub_21D0D0F1C(&qword_27CE5D5F8, &qword_27CE5D5E8);
  sub_21DBF931C();

  sub_21D0D0F1C(&qword_27CE5D600, &qword_27CE5D5E0);
  v19 = v25;
  v20 = sub_21DBF920C();
  (*(v26 + 8))(v13, v19);
  return v20;
}

uint64_t sub_21D50D544@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v69 = a1;
  v60 = a2;
  v2 = sub_21DBFA19C();
  v3 = *(v2 - 8);
  v65 = v2;
  v66 = v3;
  MEMORY[0x28223BE20](v2);
  v63 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v54 - v6;
  v8 = sub_21DBF54CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D5C8);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - v16;
  v18 = type metadata accessor for TTRRemindersPrintingHTMLResult(0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0D3954(v69, v17, &qword_27CE5D5C8);
  v21 = *(v15 + 56);
  v22 = v8;
  sub_21D514D7C(v17, v20, type metadata accessor for TTRRemindersPrintingHTMLResult);
  sub_21D0D0FD0(&v17[v21], v68);
  v59 = v18;
  v23 = v9 + 16;
  v24 = *(v9 + 16);
  v56 = *(v18 + 24);
  v24(v7, v20 + v56, v22);
  v69 = v9;
  v25 = v9;
  v26 = v13;
  (*(v25 + 56))(v7, 0, 1, v22);
  sub_21DBF539C();
  sub_21D0CF7E0(v7, &qword_27CE5EA20);
  if (qword_27CE56998 != -1)
  {
    swift_once();
  }

  v27 = sub_21DBF84BC();
  __swift_project_value_buffer(v27, qword_27CE5D5A0);
  v28 = v62;
  v57 = v24;
  v58 = v23;
  v24(v62, v13, v22);
  v29 = sub_21DBF84AC();
  v30 = sub_21DBFAEDC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = v28;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v55 = v13;
    v61 = v22;
    v34 = v33;
    v67[0] = v33;
    *v32 = 136315138;
    v35 = sub_21DBF535C();
    v37 = v36;
    v38 = *(v69 + 8);
    v38(v31, v61);
    v39 = sub_21D0CDFB4(v35, v37, v67);

    *(v32 + 4) = v39;
    _os_log_impl(&dword_21D0C9000, v29, v30, "TTRReminderPrintingPresenterCapability: saving index.html {URL: %s}", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    v40 = v34;
    v22 = v61;
    v26 = v55;
    MEMORY[0x223D46520](v40, -1, -1);
    MEMORY[0x223D46520](v32, -1, -1);
  }

  else
  {

    v38 = *(v69 + 8);
    v38(v28, v22);
  }

  v41 = v63;
  v42 = v20[3];
  v67[0] = v20[2];
  v67[1] = v42;
  sub_21DBF8E0C();
  sub_21DBFA18C();
  sub_21D176F0C();
  v43 = v64;
  sub_21DBFBBBC();
  (*(v66 + 8))(v41, v65);

  if (v43)
  {
    v38(v26, v22);
    __swift_destroy_boxed_opaque_existential_0(v68);
    return sub_21D515A94(v20, type metadata accessor for TTRRemindersPrintingHTMLResult);
  }

  else
  {
    v46 = *v20;
    v45 = v20[1];
    v47 = type metadata accessor for TTRRemindersPrintingHTMLFileResult(0);
    v48 = v60;
    (*(v69 + 32))(&v60[v47[5]], v26, v22);
    v57(&v48[v47[6]], v20 + v56, v22);
    v49 = (v20 + *(v59 + 28));
    v51 = *v49;
    v50 = v49[1];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21D515A94(v20, type metadata accessor for TTRRemindersPrintingHTMLResult);
    *v48 = v46;
    *(v48 + 1) = v45;
    v52 = &v48[v47[7]];
    *v52 = v51;
    *(v52 + 1) = v50;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D5F0);
    return sub_21D0D0FD0(v68, &v48[*(v53 + 48)]);
  }
}

uint64_t sub_21D50DB9C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a3;
  v28 = a5;
  v25 = a4;
  v26 = a2;
  v31 = a6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D688);
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D690);
  v11 = *(v10 - 8);
  v29 = v10;
  v30 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  LOBYTE(a1) = *(a1 + 48);
  v32 = v14;
  v33 = v15;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  v38 = a1;
  sub_21DBF8E0C();
  v23 = v16;
  sub_21DBF8E0C();
  sub_21DBF90EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
  v20 = v24;
  sub_21DBF90DC();
  (*(v7 + 8))(v9, v20);
  v32 = v14;
  v33 = v15;
  v34 = v23;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  v38 = a1;
  v32 = sub_21D50DE80(&v32, v26, v27, *v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D698);
  sub_21D0D0F1C(&qword_27CE5D6A0, &qword_27CE5D690);
  sub_21D0D0F1C(&qword_27CE5D6A8, &qword_27CE5D698);
  v21 = v29;
  sub_21DBF923C();

  return (*(v30 + 8))(v13, v21);
}

uint64_t sub_21D50DE80(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v104 = a4;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D6B0);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v85 - v7;
  v110 = type metadata accessor for TTRReminderPrintingPresenterCapability.GenerationResult(0);
  MEMORY[0x28223BE20](v110);
  v100 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D6B8);
  v90 = *(v91 - 1);
  MEMORY[0x28223BE20](v91);
  v89 = &v85 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D6C0);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v85 - v10;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D6C8);
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v85 - v11;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D6D0);
  v99 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v98 = &v85 - v12;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D6D8);
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v14 = &v85 - v13;
  v113 = sub_21DBF54CC();
  v111 = *(v113 - 8);
  v15 = *(v111 + 64);
  MEMORY[0x28223BE20](v113);
  MEMORY[0x28223BE20](v16);
  v18 = &v85 - v17;
  MEMORY[0x28223BE20](v19);
  v112 = &v85 - v20;
  v21 = *(a1 + 8);
  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  v26 = *(a1 + 48);
  *&v117 = *a1;
  *(&v117 + 1) = v21;
  *&v118 = v23;
  *(&v118 + 1) = v22;
  LOBYTE(v119) = v24;
  *(&v119 + 1) = v25;
  LODWORD(v105) = v26;
  LOBYTE(v120) = v26;
  v27 = sub_21D510338();
  ObjectType = swift_getObjectType();
  (*(a3 + 8))(ObjectType, a3);
  v107 = v23;
  v86 = v15;
  v87 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v14;
  v108 = a3;
  v106 = a2;
  v29 = v111 + 32;
  v30 = *(v111 + 32);
  v30(v112, v18, v113);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58680);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_21DC08D00;
  *&v117 = 0;
  *(&v117 + 1) = 0xE000000000000000;
  sub_21DBFBEEC();

  *&v117 = 0xD00000000000002BLL;
  *(&v117 + 1) = 0x800000021DC5F0D0;
  sub_21D232ABC();
  v32 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](v32);

  v33 = v117;
  *(v31 + 56) = MEMORY[0x277D837D0];
  *(v31 + 32) = v33;
  sub_21DBFC7AC();

  v34 = 0;
  if ((v105 & 1) == 0)
  {
    v34 = v107;
    v35 = v107;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
    v36 = sub_21DBFBD7C();
  }

  else
  {
    v36 = *(v27 + 16);
  }

  v107 = v34;
  if (v36 >= 1)
  {
    v37 = 0;
    v38 = 0;
    while (1)
    {
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      v40 = __OFADD__(v38, 100);
      v38 += 100;
      if (v40)
      {
        v38 = 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v37;
      if (v38 >= v36)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  v39 = 0;
LABEL_14:
  v114 = MEMORY[0x277D84F90];
  sub_21D18F0EC(0, v39 & ~(v39 >> 63), 0);
  if (v39 < 0)
  {
    goto LABEL_39;
  }

  v85 = v30;
  v105 = v29;
  v41 = v114;
  if (v39)
  {
    v42 = 0;
    while (v42 < v36)
    {
      if (__OFADD__(v42, 100))
      {
        v43 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v42 + 100;
      }

      sub_21D50BD54(v42, v27, 100, &v117);
      v114 = v41;
      v45 = *(v41 + 16);
      v44 = *(v41 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_21D18F0EC((v44 > 1), v45 + 1, 1);
        v41 = v114;
      }

      *(v41 + 16) = v45 + 1;
      v46 = v41 + 56 * v45;
      v47 = v117;
      v48 = v118;
      v49 = v119;
      *(v46 + 80) = v120;
      *(v46 + 48) = v48;
      *(v46 + 64) = v49;
      *(v46 + 32) = v47;
      v42 = v43;
      if (!--v39)
      {
        goto LABEL_26;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);

    __break(1u);
    return result;
  }

  v43 = 0;
LABEL_26:
  if (v43 < v36)
  {
    do
    {
      v50 = __OFADD__(v43, 100);
      sub_21D50BD54(v43, v27, 100, v115);
      v114 = v41;
      v52 = *(v41 + 16);
      v51 = *(v41 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_21D18F0EC((v51 > 1), v52 + 1, 1);
        v41 = v114;
      }

      *(v41 + 16) = v52 + 1;
      v53 = v41 + 56 * v52;
      v54 = v115[0];
      v55 = v115[1];
      v56 = v115[2];
      *(v53 + 80) = v116;
      *(v53 + 48) = v55;
      *(v53 + 64) = v56;
      *(v53 + 32) = v54;
      v57 = v43 + 100 >= v36 || v50;
      v43 += 100;
    }

    while ((v57 & 1) == 0);
  }

  v114 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D6E8);
  sub_21D0D0F1C(&qword_27CE5D6F0, &qword_27CE5D6E8);
  v58 = v89;
  sub_21DBFA4DC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
  v59 = v92;
  v60 = v91;
  sub_21DBF8FBC();
  (*(v90 + 8))(v58, v60);
  v61 = v111;
  v91 = *(v111 + 16);
  v62 = v87;
  v63 = v113;
  (v91)(v87, v112, v113);
  v64 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v65 = (v86 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v65 + 23) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  v85(v67 + v64, v62, v63);
  v68 = (v67 + v65);
  v69 = v106;
  v70 = v108;
  *v68 = v106;
  v68[1] = v70;
  *(v67 + v66) = v107;
  *(v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = v109;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D698);
  sub_21D0D0F1C(&qword_27CE5D6F8, &qword_27CE5D6C0);
  v105 = MEMORY[0x277CBCD90];
  sub_21D0D0F1C(&qword_27CE5D6A8, &qword_27CE5D698);
  v71 = v95;
  v72 = v94;
  v73 = v110;
  sub_21DBF934C();

  (*(v93 + 8))(v59, v72);
  v74 = v100;
  (v91)(v100, v112, v113);
  v75 = MEMORY[0x277D84F98];
  *(v74 + v73[5]) = MEMORY[0x277D84F98];
  *(v74 + v73[6]) = v75;
  *(v74 + v73[7]) = v75;
  v94 = MEMORY[0x277CBCCE0];
  sub_21D0D0F1C(&qword_27CE5D700, &qword_27CE5D6C8);
  v76 = v98;
  v77 = v97;
  sub_21DBF930C();
  sub_21D515A94(v74, type metadata accessor for TTRReminderPrintingPresenterCapability.GenerationResult);
  (*(v96 + 8))(v71, v77);
  v78 = swift_allocObject();
  v79 = v108;
  *(v78 + 16) = v69;
  *(v78 + 24) = v79;
  *(v78 + 32) = v104 & 1;
  *(v78 + 40) = v109;
  swift_unknownObjectRetain();
  sub_21DBF8FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D708);
  sub_21D0D0F1C(&qword_27CE5D710, &qword_27CE5D6D0);
  sub_21D0D0F1C(&qword_27CE5D718, &qword_27CE5D708);
  v80 = v88;
  v81 = v102;
  sub_21DBF933C();

  (*(v99 + 8))(v76, v81);
  sub_21D0D0F1C(&qword_27CE5D720, &qword_27CE5D6D8);
  v82 = v103;
  v83 = sub_21DBF920C();

  (*(v101 + 8))(v80, v82);
  (*(v111 + 8))(v112, v113);
  return v83;
}

uint64_t sub_21D50ED10(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v33 = a1;
  v34 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_21DBF54CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRRemindersPrintingViewModel(0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + 24);
  v20 = *(a3 + 32);
  v21 = *(a3 + 40);
  v22 = *(a3 + 48);
  v35 = *a3;
  v36 = *(a3 + 8);
  v37 = v19;
  v38 = v20;
  v39 = v21;
  v40 = v22;
  sub_21D50EFF0(&v35, a4, v18);
  (*(v12 + 16))(v14, &v18[*(v16 + 40)], v11);
  v23 = type metadata accessor for ResourceDirectoryAssertion(0);
  v24 = swift_allocObject();
  v25 = OBJC_IVAR____TtC15RemindersUICoreP33_8D3AD9A7C739B7114BFFF4D89520C33A26ResourceDirectoryAssertion_resourceDirectoryToRemove;
  v26 = *(v12 + 56);
  v26(v24 + OBJC_IVAR____TtC15RemindersUICoreP33_8D3AD9A7C739B7114BFFF4D89520C33A26ResourceDirectoryAssertion_resourceDirectoryToRemove, 1, 1, v11);
  (*(v12 + 32))(v10, v14, v11);
  v26(v10, 0, 1, v11);
  swift_beginAccess();
  sub_21D0F02F4(v10, v24 + v25, &qword_27CE5EA20);
  swift_endAccess();
  v27 = v32;
  *(v24 + 16) = v31;
  *(v24 + 24) = v27;
  sub_21D515C94(v18, v33, type metadata accessor for TTRRemindersPrintingViewModel);
  v28 = v34;
  v34[3] = v23;
  v28[4] = &off_282EC2870;
  *v28 = v24;
  swift_unknownObjectRetain();
  return sub_21D515A94(v18, type metadata accessor for TTRRemindersPrintingViewModel);
}

id sub_21D50EFF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v144 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58330);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v138[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v138[-v9];
  v186 = type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder(0);
  v159 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v168 = &v138[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v183 = &v138[-v13];
  MEMORY[0x28223BE20](v14);
  v16 = &v138[-v15];
  MEMORY[0x28223BE20](v17);
  v161 = &v138[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D680);
  MEMORY[0x28223BE20](v19 - 8);
  v174 = &v138[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v169 = &v138[-v22];
  v23 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v182 = &v138[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v167 = &v138[-v27];
  MEMORY[0x28223BE20](v28);
  v160 = &v138[-v29];
  MEMORY[0x28223BE20](v30);
  v157 = &v138[-v31];
  v32 = sub_21DBF6D7C();
  v172 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v187 = &v138[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v34);
  v185 = &v138[-v35];
  v164 = type metadata accessor for TTRRemindersPrintingViewModel.Item(0);
  v156 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v166 = &v138[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v37);
  v158 = &v138[-v38];
  MEMORY[0x28223BE20](v39);
  v147 = &v138[-v40];
  MEMORY[0x28223BE20](v41);
  v151 = &v138[-v42];
  v43 = *a1;
  v143 = a1[1];
  v44 = a1[3];
  v145 = a1[2];
  v140 = v44;
  v141 = v43;
  v139 = *(a1 + 32);
  v45 = a1[5];
  v142 = *(a1 + 48);
  v46 = *(type metadata accessor for TTRReminderPrintingPresenterCapability.GenerationResult(0) + 20);
  v181 = a2;
  v47 = *(a2 + v46);
  v48 = *(v47 + 16);
  v146 = *(v45 + 16);
  v49 = __OFADD__(v48, v146);
  v50 = v48 + v146;
  if (v49)
  {
    goto LABEL_57;
  }

  v196 = v47;
  v180 = sub_21D213864(0, v50 & ~(v50 >> 63), 0, MEMORY[0x277D84F90]);
  v150 = *(v45 + 16);
  if (!v150)
  {
LABEL_51:
    v130 = type metadata accessor for TTRRemindersPrintingViewModel(0);
    v131 = *(v130 + 32);
    v132 = sub_21DBF54CC();
    v133 = v144;
    (*(*(v132 - 8) + 16))(v144 + v131, v181, v132);
    v134 = v140;
    v135 = v143;
    *v133 = v141;
    *(v133 + 8) = v135;
    *(v133 + 16) = v145;
    *(v133 + 24) = v134;
    *(v133 + 32) = v139;
    *(v133 + 40) = v180;
    *(v133 + *(v130 + 36)) = v142;
    sub_21DBF8E0C();
    v136 = v145;

    return v136;
  }

  v51 = 0;
  v148 = v45;
  v149 = v45 + 32;
  v195 = v172 + 16;
  v194 = (v24 + 56);
  v178 = v23;
  v179 = (v24 + 48);
  v193 = (v172 + 8);
  v177 = v32;
  v154 = v16;
  v155 = v10;
  v165 = v7;
  while (1)
  {
    v152 = v51;
    v52 = (v149 + 136 * v51);
    v213[0] = *v52;
    v53 = v52[1];
    v54 = v52[2];
    v55 = v52[4];
    v213[3] = v52[3];
    v213[4] = v55;
    v213[1] = v53;
    v213[2] = v54;
    v56 = v52[5];
    v57 = v52[6];
    v58 = v52[7];
    v214 = *(v52 + 16);
    v213[6] = v57;
    v213[7] = v58;
    v213[5] = v56;
    v59 = *v52;
    v60 = v52[1];
    v61 = v52[3];
    v217 = v52[2];
    v218 = v61;
    v215 = v59;
    v216 = v60;
    v62 = v52[4];
    v63 = v52[5];
    v64 = v52[6];
    *(v221 + 10) = *(v52 + 106);
    v220 = v63;
    v221[0] = v64;
    v219 = v62;
    if (sub_21D1D9A6C(&v215) == 1)
    {
      if (v146 < 2)
      {
        sub_21D515D3C(v213, &v207);
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        sub_21D515D3C(v213, &v207);
        v66 = v180[2];
        v65 = v180[3];
        if (v66 >= v65 >> 1)
        {
          v180 = sub_21D213864(v65 > 1, v66 + 1, 1, v180);
        }

        v67 = v180;
        v180[2] = v66 + 1;
        sub_21D514D7C(v147, v67 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v66, type metadata accessor for TTRRemindersPrintingViewModel.Item);
      }
    }

    else
    {
      v68 = v220;
      v69 = v151;
      *(v151 + 4) = v219;
      v69[5] = v68;
      v69[6] = v221[0];
      *(v69 + 106) = *(v221 + 10);
      v70 = v216;
      *v69 = v215;
      v69[1] = v70;
      v71 = v218;
      v69[2] = v217;
      v69[3] = v71;
      swift_storeEnumTagMultiPayload();
      sub_21D0D3954(v213, &v207, &qword_27CE5B090);
      sub_21D0D3954(v213, &v207, &qword_27CE5B090);
      sub_21D515D3C(v213, &v207);
      v73 = v180[2];
      v72 = v180[3];
      if (v73 >= v72 >> 1)
      {
        v180 = sub_21D213864(v72 > 1, v73 + 1, 1, v180);
      }

      sub_21D0CF7E0(v213, &qword_27CE5B090);
      v74 = v180;
      v180[2] = v73 + 1;
      sub_21D514D7C(v151, v74 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v73, type metadata accessor for TTRRemindersPrintingViewModel.Item);
    }

    v75 = v214;
    v173 = *(v214 + 16);
    if (v173)
    {
      break;
    }

    sub_21DBF8E0C();
LABEL_48:
    sub_21D515D98(v213);

    v51 = v152 + 1;
    if (v152 + 1 == v150)
    {
      goto LABEL_51;
    }

    if (v51 >= *(v148 + 16))
    {
      goto LABEL_56;
    }
  }

  v153 = (*(v172 + 80) + 32) & ~*(v172 + 80);
  v171 = v214 + v153;
  sub_21DBF8E0C();
  v76 = 0;
  v170 = v75;
  while (1)
  {
    if (v76 >= *(v75 + 16))
    {
      goto LABEL_55;
    }

    v78 = *(v172 + 72);
    v184 = v76;
    v191 = *(v172 + 16);
    v192 = v78;
    v191(v185, v171 + v78 * v76, v32);
    v79 = sub_21DBF6D5C();
    v80 = v79;
    if (*(v196 + 16))
    {
      v81 = sub_21D17E07C(v79);
      if (v82)
      {
        break;
      }
    }

    v77 = v169;
    (*v194)(v169, 1, 1, v23);
LABEL_16:
    (*v193)(v185, v32);
    sub_21D0CF7E0(v77, &qword_27CE5D680);
LABEL_17:
    v75 = v170;
    v76 = v184 + 1;
    if (v184 + 1 == v173)
    {
      goto LABEL_48;
    }
  }

  v83 = *(v196 + 56);
  v176 = *(v159 + 72);
  sub_21D515C94(v83 + v176 * v81, v16, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
  v84 = v161;
  sub_21D514D7C(v16, v161, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
  sub_21D515C94(v84, v160, type metadata accessor for TTRRemindersPrintingViewModel.Reminder);
  v85 = &v84[*(v186 + 20)];
  v86 = *(v85 + 1);
  if (v86 == 1)
  {
    v87 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
    (*(*(v87 - 8) + 56))(v10, 1, 1, v87);
  }

  else
  {
    v88 = *v85;
    v89 = *(v85 + 2);
    v203 = *(v85 + 1);
    v204 = v89;
    v90 = *(v85 + 4);
    v205 = *(v85 + 3);
    v206 = v90;
    *&v202 = v88;
    *(&v202 + 1) = v86;
    v207 = v88;
    v208 = v86;
    v209 = v203;
    v210 = v89;
    v211 = v205;
    v212 = v90;
    sub_21D1D9B34(&v207, &v197);
    sub_21D51287C(&v202, v181, v10);
    v199 = v204;
    v200 = v205;
    v201 = v206;
    v197 = v202;
    v198 = v203;
    sub_21D1D9B90(&v197);
  }

  v91 = v160;
  v92 = sub_21D0F02F4(v10, &v160[*(v23 + 48)], &qword_27CE58330);
  v93 = v161;
  MEMORY[0x28223BE20](v92);
  *&v138[-16] = v181;
  v95 = sub_21D4E6FB0(sub_21D515DEC, &v138[-32], v94);

  v96 = v93;
  v23 = v178;
  sub_21D515A94(v96, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
  v97 = *(v23 + 56);

  *&v91[v97] = v95;
  v77 = v169;
  sub_21D515C94(v91, v169, type metadata accessor for TTRRemindersPrintingViewModel.Reminder);
  v188 = *v194;
  v188(v77, 0, 1, v23);
  sub_21D515A94(v91, type metadata accessor for TTRRemindersPrintingViewModel.Reminder);
  v175 = *v179;
  if (v175(v77, 1, v23) == 1)
  {
    v32 = v177;
    goto LABEL_16;
  }

  v98 = v157;
  sub_21D514D7C(v77, v157, type metadata accessor for TTRRemindersPrintingViewModel.Reminder);
  v99 = sub_21DBF6D6C();
  v100 = MEMORY[0x277D84F90];
  if (v99)
  {
    v100 = v99;
  }

  v190 = v100;
  v189 = *(v100 + 16);
  *v98 = v189 != 0;
  sub_21D515C94(v98, v158, type metadata accessor for TTRRemindersPrintingViewModel.Reminder);
  swift_storeEnumTagMultiPayload();
  v102 = v180[2];
  v101 = v180[3];
  v103 = v174;
  v32 = v177;
  if (v102 >= v101 >> 1)
  {
    v180 = sub_21D213864(v101 > 1, v102 + 1, 1, v180);
  }

  v104 = v180;
  v180[2] = v102 + 1;
  v163 = (*(v156 + 80) + 32) & ~*(v156 + 80);
  v162 = *(v156 + 72);
  sub_21D514D7C(v158, v104 + v163 + v162 * v102, type metadata accessor for TTRRemindersPrintingViewModel.Item);
  if (!v189)
  {
LABEL_46:

    sub_21D515A94(v157, type metadata accessor for TTRRemindersPrintingViewModel.Reminder);
    (*v193)(v185, v32);
    v16 = v154;
    v10 = v155;
    goto LABEL_17;
  }

  v105 = 0;
  v106 = v190 + v153;
  while (2)
  {
    if (v105 < *(v190 + 16))
    {
      v107 = v187;
      v191(v187, v106, v32);
      v108 = sub_21DBF6D5C();
      (*v193)(v107, v32);
      if (*(v196 + 16))
      {
        v109 = sub_21D17E07C(v108);
        if (v110)
        {
          v111 = v168;
          sub_21D515C94(*(v196 + 56) + v109 * v176, v168, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
          v112 = v111;
          v113 = v183;
          sub_21D514D7C(v112, v183, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
          sub_21D515C94(v113, v182, type metadata accessor for TTRRemindersPrintingViewModel.Reminder);
          v114 = &v113[*(v186 + 20)];
          v115 = *(v114 + 1);
          if (v115 == 1)
          {
            v116 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
            (*(*(v116 - 8) + 56))(v7, 1, 1, v116);
          }

          else
          {
            v117 = *v114;
            v118 = *(v114 + 2);
            v203 = *(v114 + 1);
            v204 = v118;
            v119 = *(v114 + 4);
            v205 = *(v114 + 3);
            v206 = v119;
            *&v202 = v117;
            *(&v202 + 1) = v115;
            v207 = v117;
            v208 = v115;
            v209 = v203;
            v210 = v118;
            v211 = v205;
            v212 = v119;
            sub_21D1D9B34(&v207, &v197);
            sub_21D51287C(&v202, v181, v7);
            v199 = v204;
            v200 = v205;
            v201 = v206;
            v197 = v202;
            v198 = v203;
            sub_21D1D9B90(&v197);
          }

          v120 = v182;
          v121 = sub_21D0F02F4(v7, &v182[*(v23 + 48)], &qword_27CE58330);
          v122 = v183;
          MEMORY[0x28223BE20](v121);
          *&v138[-16] = v181;
          v124 = sub_21D4E6FB0(sub_21D519C20, &v138[-32], v123);

          sub_21D515A94(v122, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
          v125 = *(v23 + 56);

          *&v120[v125] = v124;
          v103 = v174;
          sub_21D515C94(v120, v174, type metadata accessor for TTRRemindersPrintingViewModel.Reminder);
          v188(v103, 0, 1, v23);
          sub_21D515A94(v120, type metadata accessor for TTRRemindersPrintingViewModel.Reminder);
          if (v175(v103, 1, v23) == 1)
          {
            v7 = v165;
            v32 = v177;
            v23 = v178;
LABEL_33:
            sub_21D0CF7E0(v103, &qword_27CE5D680);
          }

          else
          {
            v126 = v167;
            sub_21D514D7C(v103, v167, type metadata accessor for TTRRemindersPrintingViewModel.Reminder);
            sub_21D515C94(v126, v166, type metadata accessor for TTRRemindersPrintingViewModel.Reminder);
            swift_storeEnumTagMultiPayload();
            v128 = v180[2];
            v127 = v180[3];
            v32 = v177;
            if (v128 >= v127 >> 1)
            {
              v180 = sub_21D213864(v127 > 1, v128 + 1, 1, v180);
            }

            v7 = v165;
            sub_21D515A94(v167, type metadata accessor for TTRRemindersPrintingViewModel.Reminder);
            v129 = v180;
            v180[2] = v128 + 1;
            sub_21D514D7C(v166, v129 + v163 + v128 * v162, type metadata accessor for TTRRemindersPrintingViewModel.Item);
            v23 = v178;
          }

          ++v105;
          v106 += v192;
          if (v189 == v105)
          {
            goto LABEL_46;
          }

          continue;
        }
      }

      v188(v103, 1, 1, v23);
      goto LABEL_33;
    }

    break;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  v199 = v204;
  v200 = v205;
  v201 = v206;
  v197 = v202;
  v198 = v203;
  result = sub_21D1D9B90(&v197);
  __break(1u);
  return result;
}

uint64_t sub_21D5101E8(uint64_t a1)
{
  v3 = type metadata accessor for TTRReminderPrintingPresenterCapability.GenerationResult(0);
  v4 = v3[5];
  v5 = *(a1 + v4);
  sub_21DBF8E0C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v1 + v4);
  sub_21D515FC8(v5, sub_21D514F38, 0, isUniquelyReferenced_nonNull_native, &v14);

  *(v1 + v4) = v14;
  v7 = v3[6];
  v8 = *(a1 + v7);
  sub_21DBF8E0C();
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v1 + v7);
  sub_21D516320(v8, sub_21D514E88, 0, v9, &v14);

  *(v1 + v7) = v14;
  v10 = v3[7];
  v11 = *(a1 + v10);
  sub_21DBF8E0C();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v1 + v10);
  sub_21D516690(v11, sub_21D514DE4, 0, v12, &v14);

  *(v1 + v10) = v14;
  return result;
}

uint64_t sub_21D510338()
{
  v1 = sub_21DBF6D7C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v95 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v88 = &v78 - v5;
  v6 = *(v0 + 40);
  result = MEMORY[0x277D84FA0];
  v106 = MEMORY[0x277D84FA0];
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v6 + 32;
    v101 = v2 + 16;
    v100 = v2 + 8;
    v93 = v1;
    v85 = v2;
    v82 = v8;
    v83 = v6;
    v81 = v6 + 32;
LABEL_3:
    v11 = v10 + 136 * v9;
    v104[0] = *v11;
    v12 = *(v11 + 16);
    v13 = *(v11 + 32);
    v14 = *(v11 + 64);
    v104[3] = *(v11 + 48);
    v104[4] = v14;
    v104[1] = v12;
    v104[2] = v13;
    v15 = *(v11 + 80);
    v16 = *(v11 + 96);
    v17 = *(v11 + 112);
    v105 = *(v11 + 128);
    v104[6] = v16;
    v104[7] = v17;
    v104[5] = v15;
    v18 = v105;
    v90 = *(v105 + 16);
    if (!v90)
    {
      goto LABEL_74;
    }

    v84 = v9;
    v87 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v89 = v105 + v87;
    sub_21D515D3C(v104, v103);
    sub_21DBF8E0C();
    v19 = 0;
    v86 = v18;
    while (v19 < *(v18 + 16))
    {
      v20 = v88;
      v99 = *(v2 + 72);
      v98 = *(v2 + 16);
      v98(v88, v89 + v99 * v19, v1);
      v21 = sub_21DBF6D5C();
      sub_21D29B0D0(v103, v21);

      v22 = sub_21DBF6D6C();
      v97 = *(v2 + 8);
      v97(v20, v1);
      if (v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = MEMORY[0x277D84F90];
      }

      v96 = *(v23 + 16);
      if (v96)
      {
        v91 = v23;
        v92 = v19;
        v24 = v23 + v87;
        sub_21D0D8CF0(0, &qword_280D17880);
        v25 = 0;
        v94 = v24;
        while (1)
        {
          while (1)
          {
            v26 = v95;
            v98(v95, v24 + v25 * v99, v1);
            ++v25;
            v27 = sub_21DBF6D5C();
            v97(v26, v1);
            v28 = v106;
            if ((v106 & 0xC000000000000001) == 0)
            {
              break;
            }

            if (v106 < 0)
            {
              v29 = v106;
            }

            else
            {
              v29 = v106 & 0xFFFFFFFFFFFFFF8;
            }

            v30 = v27;
            sub_21DBF8E0C();
            v31 = sub_21DBFBD8C();

            if (!v31)
            {
              v32 = sub_21DBFBD7C();
              if (__OFADD__(v32, 1))
              {
                goto LABEL_79;
              }

              v33 = sub_21D29F4B8(v29, v32 + 1);
              v103[0] = v33;
              v34 = *(v33 + 2);
              if (*(v33 + 3) <= v34)
              {
                sub_21D8ACA8C(v34 + 1);
                v33 = v103[0];
              }

              v35 = v30;
              v36 = sub_21DBFB62C();
              v37 = v33 + 56;
              v38 = -1 << v33[32];
              v39 = v36 & ~v38;
              v40 = v39 >> 6;
              if (((-1 << v39) & ~*&v33[8 * (v39 >> 6) + 56]) == 0)
              {
                v50 = 0;
                v51 = (63 - v38) >> 6;
                while (++v40 != v51 || (v50 & 1) == 0)
                {
                  v52 = v40 == v51;
                  if (v40 == v51)
                  {
                    v40 = 0;
                  }

                  v50 |= v52;
                  v53 = *&v37[8 * v40];
                  if (v53 != -1)
                  {
                    v41 = __clz(__rbit64(~v53)) + (v40 << 6);
                    goto LABEL_45;
                  }
                }

                goto LABEL_77;
              }

              v41 = __clz(__rbit64((-1 << v39) & ~*&v33[8 * (v39 >> 6) + 56])) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_45:
              *&v37[(v41 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v41;
              *(*(v33 + 6) + 8 * v41) = v35;
              ++*(v33 + 2);

LABEL_54:
              v106 = v33;
              goto LABEL_14;
            }

            v102 = v31;
            swift_dynamicCast();

LABEL_14:
            if (v25 == v96)
            {
              goto LABEL_5;
            }
          }

          v42 = sub_21DBFB62C();
          v43 = -1 << *(v28 + 32);
          v44 = v42 & ~v43;
          if (((*(v28 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
          {
LABEL_30:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v103[0] = v28;
            v49 = *(v28 + 16);
            v24 = v94;
            if (*(v28 + 24) <= v49)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                sub_21D8ACA8C(v49 + 1);
              }

              else
              {
                sub_21D8B2D58(v49 + 1);
              }

              v33 = v103[0];
              v54 = sub_21DBFB62C();
              v55 = -1 << v33[32];
              v44 = v54 & ~v55;
              if ((*&v33[((v44 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v44))
              {
                v56 = ~v55;
                do
                {
                  v57 = *(*(v33 + 6) + 8 * v44);
                  v58 = sub_21DBFB63C();

                  if (v58)
                  {
                    goto LABEL_84;
                  }

                  v44 = (v44 + 1) & v56;
                }

                while (((*&v33[((v44 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v44) & 1) != 0);
              }

              v1 = v93;
              v24 = v94;
            }

            else if (isUniquelyReferenced_nonNull_native)
            {
              v33 = v28;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59328);
              v62 = sub_21DBFBE8C();
              v33 = v62;
              if (*(v28 + 16))
              {
                v63 = (v62 + 56);
                v64 = (v28 + 56);
                v65 = ((1 << v33[32]) + 63) >> 6;
                v79 = v28 + 56;
                if (v33 != v28 || v63 >= &v64[8 * v65])
                {
                  memmove(v63, v64, 8 * v65);
                }

                v66 = 0;
                *(v33 + 2) = *(v28 + 16);
                v67 = 1 << *(v28 + 32);
                v68 = *(v28 + 56);
                if (v67 < 64)
                {
                  v69 = ~(-1 << v67);
                }

                else
                {
                  v69 = -1;
                }

                v70 = v69 & v68;
                v71 = (v67 + 63) >> 6;
                v80 = v71;
                if ((v69 & v68) != 0)
                {
                  do
                  {
                    v72 = __clz(__rbit64(v70));
                    v70 &= v70 - 1;
LABEL_69:
                    v75 = v72 | (v66 << 6);
                    v76 = *(*(v28 + 48) + 8 * v75);
                    *(*(v33 + 6) + 8 * v75) = v76;
                    v77 = v76;
                    v71 = v80;
                  }

                  while (v70);
                }

                v73 = v66;
                v24 = v94;
                while (1)
                {
                  v66 = v73 + 1;
                  if (__OFADD__(v73, 1))
                  {
                    goto LABEL_83;
                  }

                  if (v66 >= v71)
                  {
                    break;
                  }

                  v74 = *(v79 + 8 * v66);
                  ++v73;
                  if (v74)
                  {
                    v72 = __clz(__rbit64(v74));
                    v70 = (v74 - 1) & v74;
                    goto LABEL_69;
                  }
                }
              }
            }

            *&v33[((v44 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] |= 1 << v44;
            *(*(v33 + 6) + 8 * v44) = v27;
            v59 = *(v33 + 2);
            v60 = __OFADD__(v59, 1);
            v61 = v59 + 1;
            if (v60)
            {
              goto LABEL_78;
            }

            *(v33 + 2) = v61;
            goto LABEL_54;
          }

          v45 = ~v43;
          while (1)
          {
            v46 = *(*(v28 + 48) + 8 * v44);
            v47 = sub_21DBFB63C();

            if (v47)
            {
              break;
            }

            v44 = (v44 + 1) & v45;
            if (((*(v28 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
            {
              v28 = v106;
              v1 = v93;
              goto LABEL_30;
            }
          }

          v1 = v93;
          v24 = v94;
          if (v25 == v96)
          {
LABEL_5:

            v2 = v85;
            v18 = v86;
            v19 = v92;
            goto LABEL_6;
          }
        }
      }

LABEL_6:
      if (++v19 == v90)
      {
        sub_21D515D98(v104);

        v8 = v82;
        v6 = v83;
        v9 = v84;
        v10 = v81;
LABEL_74:
        if (++v9 == v8)
        {
          return v106;
        }

        if (v9 >= *(v6 + 16))
        {
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
          return v106;
        }

        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    result = sub_21DBFC6FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_21D510B00@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = a1[1];
  v23 = *a1;
  v24 = v8;
  v25 = a1[2];
  v26 = *(a1 + 6);
  v9 = v8;
  v10 = *(&v8 + 1);
  v11 = sub_21D515370(v23, *(&v23 + 1), v8, *(&v8 + 1), v25, BYTE8(v25), v26);
  if (!v11)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v18 = a6;
  v12 = v11;
  v13 = sub_21D9D9774(v11, 0);
  sub_21D517224(v23, *(&v23 + 1), v9);
  sub_21D517224(v10, v25, SBYTE8(v25));
  sub_21DBF8E0C();
  sub_21D515678(v22, (v13 + 32), v12);
  v15 = v14;
  result = sub_21D0CF7E0(v22, &qword_27CE5D788);
  if (v15 == v12)
  {
    a6 = v18;
LABEL_5:
    v17 = sub_21D510C4C(v13, a2, a3, a4, a5);

    *a6 = v17;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D510C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v40 = a2;
  v41 = a5;
  v39 = sub_21DBF54CC();
  v7 = *(v39 - 8);
  v38 = *(v7 + 64);
  MEMORY[0x28223BE20](v39);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D790);
  v46 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D798);
  v15 = *(v14 - 8);
  v44 = v14;
  v45 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  v36 = a3;
  swift_getObjectType();
  v18 = sub_21DBF8E0C();
  sub_21D50BCC0(v18);
  v35 = a4;
  v19 = (*(a4 + 32))();

  v48 = v19;
  sub_21DBF60DC();
  v20 = sub_21DBF60AC();
  v47 = v20;
  v21 = sub_21DBFB0DC();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A270);
  sub_21D0D8CF0(0, &qword_280D1B900);
  sub_21D0D0F1C(&qword_27CE5D7A0, &qword_27CE5A270);
  sub_21D47130C();
  sub_21DBF936C();
  sub_21D0CF7E0(v11, &unk_27CE5F250);

  v22 = v37;
  v23 = v39;
  (*(v7 + 16))(v37, v40, v39);
  v24 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v25 = (v38 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v41;
  *(v26 + 16) = v41;
  (*(v7 + 32))(v26 + v24, v22, v23);
  v28 = (v26 + v25);
  v29 = v35;
  *v28 = v36;
  v28[1] = v29;
  *(v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) = v43;
  v30 = v27;
  swift_unknownObjectRetain();
  sub_21DBF8FFC();
  type metadata accessor for TTRReminderPrintingPresenterCapability.GenerationResult(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D698);
  sub_21D0D0F1C(&qword_27CE5D7A8, &qword_27CE5D790);
  sub_21D0D0F1C(&qword_27CE5D6A8, &qword_27CE5D698);
  v31 = v42;
  sub_21DBF934C();

  (*(v46 + 8))(v13, v31);
  sub_21D0D0F1C(&qword_27CE5D7B0, &qword_27CE5D798);
  v32 = v44;
  v33 = sub_21DBF920C();
  (*(v45 + 8))(v17, v32);
  return v33;
}

void sub_21D511214(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  v71 = a5;
  v70 = a4;
  v80 = a3;
  v89 = a7;
  v10 = sub_21DBF54CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v78 = v12;
  v79 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D7B8);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D7C0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v81 = &v68 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D7C8);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v82 = &v68 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250);
  MEMORY[0x28223BE20](v20 - 8);
  v69 = &v68 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D7D0);
  v76 = *(v22 - 8);
  v77 = v22;
  MEMORY[0x28223BE20](v22);
  v75 = &v68 - v23;
  v24 = type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder(0);
  v91 = *(v24 - 8);
  v92 = v24;
  MEMORY[0x28223BE20](v24);
  v90 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v87 = v14;
  v88 = v17;
  v85 = v15;
  v86 = v18;
  v83 = v11;
  v84 = v10;
  if ((v26 & 0xC000000000000001) != 0)
  {
    if (v26 >= 0)
    {
      v26 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v27 = a2;
    v28 = sub_21D517700(v26, a2, a6);
  }

  else
  {
    v27 = a2;
    v28 = sub_21D517398(v26, a2, a6);
  }

  v93 = v28;

  v68 = 0;
  v29 = (v93 + 64);
  v30 = 1 << *(v93 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v93 + 64);
  v33 = (v30 + 63) >> 6;
  swift_retain_n();
  v34 = 0;
  v35 = MEMORY[0x277D84F90];
  while (v32)
  {
LABEL_15:
    v37 = v90;
    sub_21D515C94(*(v93 + 56) + *(v91 + 72) * (__clz(__rbit64(v32)) | (v34 << 6)), v90, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
    v38 = *(v37 + *(v92 + 24));
    sub_21DBF8E0C();
    sub_21D515A94(v37, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
    v39 = *(v38 + 16);
    v40 = v35[2];
    v41 = v40 + v39;
    if (__OFADD__(v40, v39))
    {
      goto LABEL_29;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v41 > v35[3] >> 1)
    {
      if (v40 <= v41)
      {
        v43 = v40 + v39;
      }

      else
      {
        v43 = v40;
      }

      v35 = sub_21D21388C(isUniquelyReferenced_nonNull_native, v43, 1, v35);
    }

    v32 &= v32 - 1;
    if (*(v38 + 16))
    {
      v44 = (v35[3] >> 1) - v35[2];
      type metadata accessor for TTRReminderPrintingPresenterCapability.ImageAttachment(0);
      if (v44 < v39)
      {
        goto LABEL_31;
      }

      swift_arrayInitWithCopy();

      if (v39)
      {
        v45 = v35[2];
        v46 = __OFADD__(v45, v39);
        v47 = v45 + v39;
        if (v46)
        {
          goto LABEL_32;
        }

        v35[2] = v47;
      }
    }

    else
    {

      if (v39)
      {
        goto LABEL_30;
      }
    }
  }

  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v36 >= v33)
    {
      v48 = v93;

      v49 = v80;
      v50 = sub_21D51219C(v35, v80, v70, v71);

      v95 = v50;
      sub_21DBF60DC();
      v51 = sub_21DBF60AC();
      v94 = v51;
      v52 = sub_21DBFB0DC();
      v53 = v69;
      (*(*(v52 - 8) + 56))(v69, 1, 1, v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D7D8);
      sub_21D0D8CF0(0, &qword_280D1B900);
      sub_21D0D0F1C(&qword_27CE5D7E0, &qword_27CE5D7D8);
      sub_21D47130C();
      v54 = v75;
      sub_21DBF936C();
      sub_21D0CF7E0(v53, &unk_27CE5F250);

      v95 = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D7E8);
      v55 = v72;
      sub_21DBF90EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
      v56 = v81;
      v57 = v74;
      sub_21DBF90DC();
      (*(v73 + 8))(v55, v57);
      v59 = v83;
      v58 = v84;
      v60 = v79;
      (*(v83 + 16))(v79, v49, v84);
      v61 = (*(v59 + 80) + 16) & ~*(v59 + 80);
      v62 = swift_allocObject();
      (*(v59 + 32))(v62 + v61, v60, v58);
      type metadata accessor for TTRReminderPrintingPresenterCapability.GenerationResult(0);
      sub_21D0D0F1C(&qword_27CE5D7F0, &qword_27CE5D7C0);
      sub_21D0D0F1C(&qword_27CE5D7F8, &qword_27CE5D7D0);
      v63 = v82;
      v64 = v87;
      v65 = v77;
      sub_21DBF925C();

      (*(v85 + 8))(v56, v64);
      sub_21D0D0F1C(&qword_27CE5D800, &qword_27CE5D7C8);
      v66 = v88;
      v67 = sub_21DBF920C();
      (*(v86 + 8))(v63, v66);
      (*(v76 + 8))(v54, v65);
      *v89 = v67;
      return;
    }

    v32 = v29[v36];
    ++v34;
    if (v32)
    {
      v34 = v36;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);

  __break(1u);
}

__n128 sub_21D511BF4@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v64 = sub_21DBF54CC();
  v6 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v51 - v9;
  v10 = type metadata accessor for TTRReminderPrintingPresenterCapability.ImageAttachment(0);
  v60 = *(v10 - 8);
  v61 = v10;
  MEMORY[0x28223BE20](v10);
  v59 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v15 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a2;
  v19 = a1;
  v53 = v17;
  sub_21D3D9998(v19, a2, v17);
  v20 = [v19 attachmentContext];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 imageAttachments];

    sub_21D0D8CF0(0, &qword_280D0C290);
    v23 = sub_21DBFA5EC();

    if (v23 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
    {
      v52 = a3;
      if (!i)
      {
        break;
      }

      v25 = 0;
      v65 = v23 & 0xFFFFFFFFFFFFFF8;
      v66 = v23 & 0xC000000000000001;
      v56 = (v6 + 4);
      v55 = (v6 + 2);
      v54 = (v6 + 1);
      v6 = MEMORY[0x277D84F90];
      v58 = v23;
      v57 = i;
      v26 = v62;
      while (1)
      {
        if (v66)
        {
          v27 = MEMORY[0x223D44740](v25, v23);
        }

        else
        {
          if (v25 >= *(v65 + 16))
          {
            goto LABEL_24;
          }

          v27 = *(v23 + 8 * v25 + 32);
        }

        v28 = v27;
        v29 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v30 = [v27 fileURL];
        if (v30)
        {
          v31 = v30;
          v32 = v63;
          sub_21DBF546C();

          v33 = v32;
          v34 = v64;
          (*v56)(v26, v33, v64);
          v35 = [v28 objectID];
          a3 = v61;
          v36 = *(v61 + 20);
          v37 = *v55;
          v67 = v6;
          v38 = v59;
          v37(&v59[v36], v26, v34);
          v39 = [v28 width];
          v40 = v14;
          v41 = [v28 height];

          (*v54)(v26, v34);
          v42 = v41;
          v14 = v40;
          *v38 = v35;
          v43 = (v38 + *(a3 + 24));
          *v43 = v39;
          v43[1] = v42;
          v44 = v38;
          v6 = v67;
          sub_21D514D7C(v44, v40, type metadata accessor for TTRReminderPrintingPresenterCapability.ImageAttachment);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_21D21388C(0, v6[2] + 1, 1, v6);
          }

          v46 = v6[2];
          v45 = v6[3];
          v23 = v58;
          i = v57;
          if (v46 >= v45 >> 1)
          {
            v6 = sub_21D21388C(v45 > 1, v46 + 1, 1, v6);
          }

          v6[2] = v46 + 1;
          sub_21D514D7C(v14, v6 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v46, type metadata accessor for TTRReminderPrintingPresenterCapability.ImageAttachment);
        }

        else
        {
        }

        ++v25;
        if (v29 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v6 = MEMORY[0x277D84F90];
LABEL_21:

    a3 = v52;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  sub_21D514D7C(v53, a3, type metadata accessor for TTRRemindersPrintingViewModel.Reminder);
  v47 = type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder(0);
  v48 = a3 + *(v47 + 20);
  v49 = v68[3];
  *(v48 + 32) = v68[2];
  *(v48 + 48) = v49;
  *(v48 + 64) = v68[4];
  result = v68[1];
  *v48 = v68[0];
  *(v48 + 16) = result;
  *(a3 + *(v47 + 24)) = v6;
  return result;
}

uint64_t sub_21D51219C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v32 = a2;
  v33 = a3;
  v5 = sub_21DBF54CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D808);
  v9 = *(v8 - 8);
  v37 = v8;
  v38 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D810);
  v13 = *(v12 - 8);
  v39 = v12;
  v40 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D818);
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v34 = &v32 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D820);
  v18 = *(v17 - 8);
  v42 = v17;
  v43 = v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - v19;
  v45 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D828);
  sub_21D0D0F1C(&qword_27CE5D830, &qword_27CE5D828);
  sub_21DBFA4DC();
  (*(v6 + 16))(&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v5);
  v21 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v22 = swift_allocObject();
  v23 = v36;
  v24 = v33;
  *(v22 + 2) = v35;
  *(v22 + 3) = v24;
  *(v22 + 4) = v23;
  (*(v6 + 32))(&v22[v21], &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  swift_unknownObjectRetain();
  sub_21DBF8FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D838);
  sub_21D0D0F1C(&qword_27CE5D840, &qword_27CE5D808);
  sub_21D0D0F1C(&qword_27CE5D848, &qword_27CE5D838);
  v25 = v37;
  sub_21DBF93DC();

  (*(v38 + 8))(v11, v25);
  v45 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D850);
  sub_21D0D0F1C(&qword_27CE5D858, &qword_27CE5D810);
  v26 = v34;
  v27 = v39;
  sub_21DBF930C();
  (*(v40 + 8))(v15, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
  sub_21D0D0F1C(&qword_27CE5D860, &qword_27CE5D818);
  v28 = v41;
  sub_21DBF93BC();
  (*(v44 + 8))(v26, v28);
  sub_21D0D0F1C(&qword_27CE5D868, &qword_27CE5D820);
  v29 = v42;
  v30 = sub_21DBF920C();
  (*(v43 + 8))(v20, v29);
  return v30;
}

uint64_t sub_21D5127B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  sub_21DBF8E0C();
  v8 = sub_21D17895C(MEMORY[0x277D84F90]);
  v9 = sub_21DBF54CC();
  (*(*(v9 - 8) + 16))(a4, a3, v9);
  v10 = type metadata accessor for TTRReminderPrintingPresenterCapability.GenerationResult(0);
  *(a4 + v10[5]) = v6;
  *(a4 + v10[6]) = v8;
  *(a4 + v10[7]) = v7;

  return sub_21DBF8E0C();
}

uint64_t sub_21D51287C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65260);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = (&v39 - v14);
  v16 = a1[2];
  v17 = a1[4];
  v45 = a1[3];
  v46 = v17;
  v18 = *a1;
  v43 = a1[1];
  v44 = v16;
  v42 = v18;
  v19 = *(a2 + *(type metadata accessor for TTRReminderPrintingPresenterCapability.GenerationResult(0) + 24));
  if (*(v19 + 16) && (v20 = sub_21D17E454(&v42), (v21 & 1) != 0))
  {
    sub_21D0D3954(*(v19 + 56) + *(v7 + 72) * v20, v12, &qword_27CE65260);
    sub_21D0D523C(v12, v15, &qword_27CE65260);
    v22 = *v15;
    v23 = v15[1];
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_21DC08D00;
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = sub_21D17A884();
    *(v24 + 32) = v22;
    *(v24 + 40) = v23;
    sub_21DBF8E0C();
    v25 = sub_21DBFA17C();
    v27 = v26;

    sub_21D0D3954(v15, v9, &qword_27CE65260);

    sub_21D0D523C(&v9[*(v6 + 48)], a3, &qword_27CE5EA20);
    v28 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
    v29 = (a3 + *(v28 + 20));
    *v29 = v25;
    v29[1] = v27;
    (*(*(v28 - 8) + 56))(a3, 0, 1, v28);
    return sub_21D0CF7E0(v15, &qword_27CE65260);
  }

  else
  {
    if (qword_27CE56998 != -1)
    {
      swift_once();
    }

    v31 = sub_21DBF84BC();
    __swift_project_value_buffer(v31, qword_27CE5D5A0);
    sub_21D1D9B34(&v42, v41);
    v32 = sub_21DBF84AC();
    v33 = sub_21DBFAEBC();
    sub_21D1D9B90(&v42);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v34 = 136315138;
      v41[2] = v44;
      v41[3] = v45;
      v41[4] = v46;
      v41[0] = v42;
      v41[1] = v43;
      v36 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
      v37 = sub_21D0CDFB4(v36._countAndFlagsBits, v36._object, &v40);

      *(v34 + 4) = v37;
      _os_log_impl(&dword_21D0C9000, v32, v33, "Missing avatar for participant {name: %s}", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x223D46520](v35, -1, -1);
      MEMORY[0x223D46520](v34, -1, -1);
    }

    v38 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.Assignment(0);
    return (*(*(v38 - 8) + 56))(a3, 1, 1, v38);
  }
}

uint64_t sub_21D512D60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v13 = *(a2 + *(type metadata accessor for TTRReminderPrintingPresenterCapability.GenerationResult(0) + 28));
  if (*(v13 + 16) && (v14 = sub_21D17E07C(*a1), (v15 & 1) != 0))
  {
    sub_21D515C94(*(v13 + 56) + *(v7 + 72) * v14, v9, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
    sub_21D514D7C(v9, v12, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
    v16 = sub_21DBF54CC();
    (*(*(v16 - 8) + 16))(a3, v12, v16);
    v17 = &v12[*(v6 + 20)];
    v18 = *v17;
    v19 = *(v17 + 1);
    sub_21D515A94(v12, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
    v20 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.ImageAttachment(0);
    v21 = (a3 + *(v20 + 20));
    *v21 = v18;
    v21[1] = v19;
    return (*(*(v20 - 8) + 56))(a3, 0, 1, v20);
  }

  else
  {
    v23 = type metadata accessor for TTRRemindersPrintingViewModel.Reminder.ImageAttachment(0);
    return (*(*(v23 - 8) + 56))(a3, 1, 1, v23);
  }
}

double sub_21D512F9C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1;
  v4 = [a1 assignmentContext];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 currentAssignment];

    if (v6)
    {
      v7 = [v6 assigneeID];

      if (v7)
      {
        v8 = [v2 list];
        v9 = [v8 shareeContext];
        if (v9)
        {
          v37 = v9;
          v10 = off_282ED4428[0];
          v11 = sub_21D0D8CF0(0, &qword_280D177C8);
          v12 = (v10)(v11, &protocol witness table for REMListShareeContext);
          v13 = v12;
          v34 = v8;
          v35 = v7;
          v33 = v2;
          if (v12 >> 62)
          {
            goto LABEL_20;
          }

          for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
          {
            v15 = 0;
            while (1)
            {
              if ((v13 & 0xC000000000000001) != 0)
              {
                v16 = MEMORY[0x223D44740](v15, v13);
              }

              else
              {
                if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_19;
                }

                v16 = *(v13 + 8 * v15 + 32);
              }

              v17 = v16;
              v18 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                break;
              }

              sub_21D0D8CF0(0, &qword_280D17680);
              v19 = [v17 objectID];
              v20 = sub_21DBFB63C();

              if (v20)
              {

                TTRParticipantModel.init(sharee:)(v17, v36);
                v21 = v36[3];
                a2[2] = v36[2];
                a2[3] = v21;
                a2[4] = v36[4];
                v22 = v36[1];
                *a2 = v36[0];
                a2[1] = v22;
                return *&v22;
              }

              ++v15;
              if (v18 == i)
              {
                goto LABEL_21;
              }
            }

            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            ;
          }

LABEL_21:

          v7 = v35;
          v2 = v33;
        }

        else
        {
        }

        if (qword_27CE56998 != -1)
        {
          swift_once();
        }

        v23 = sub_21DBF84BC();
        __swift_project_value_buffer(v23, qword_27CE5D5A0);
        v24 = v7;
        v25 = v2;
        v26 = sub_21DBF84AC();
        v27 = sub_21DBFAEBC();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *v28 = 138412546;
          *(v28 + 4) = v24;
          *v29 = v7;
          *(v28 + 12) = 2112;
          v30 = v24;
          v31 = [v25 objectID];
          *(v28 + 14) = v31;
          v29[1] = v31;
          _os_log_impl(&dword_21D0C9000, v26, v27, "Sharee for currentAssignment not found {assigneeID: %@, reminderID: %@}", v28, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070);
          swift_arrayDestroy();
          MEMORY[0x223D46520](v29, -1, -1);
          MEMORY[0x223D46520](v28, -1, -1);
          v24 = v26;
          v26 = v30;
        }
      }
    }
  }

  *&v22 = 0;
  *a2 = xmmword_21DC19C40;
  a2[1] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  return *&v22;
}

uint64_t sub_21D51338C@<X0>(id *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v51 = a3;
  v53 = a2;
  v65 = a4;
  v5 = type metadata accessor for TTRReminderPrintingPresenterCapability.ImageAttachment(0);
  v63 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v62 = v6;
  v64 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v54);
  v8 = &v50 - v7;
  v50 = sub_21DBF56BC();
  v9 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D878);
  v55 = *(v12 - 8);
  v56 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D880);
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v57 = &v50 - v15;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D888);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v52 = &v50 - v16;
  v17 = (a1 + *(v5 + 24));
  v18 = *v17;
  v19 = v17[1];
  v20 = 300.0 / *v17;
  v21 = 300.0 / v19;
  if (300.0 / v19 >= v20)
  {
    if (v20 >= v21)
    {
      v23 = 300.0;
    }

    else
    {
      v23 = v20 * v19;
    }

    v22 = 300.0;
  }

  else
  {
    v22 = v18 * v21;
    v23 = 300.0;
  }

  v24 = ceil(v22);
  v25 = ceil(v23);
  v26 = v18 <= v24;
  v27 = v19 <= v25;
  if (v27 && v26)
  {
    v28 = v18;
  }

  else
  {
    v28 = v24;
  }

  if (v27 && v26)
  {
    v29 = v19;
  }

  else
  {
    v29 = v25;
  }

  ObjectType = swift_getObjectType();
  v31 = *(v5 + 20);
  v32 = [*a1 uuid];
  sub_21DBF568C();

  v33 = sub_21DBF565C();
  v35 = v34;
  (*(v9 + 8))(v11, v50);
  v36 = (*(v53 + 48))(a1 + v31, v51, v33, v35, ObjectType, v28, v29, 1.0);

  v66 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A2F0);
  sub_21D0D0F1C(&qword_27CE5D890, &qword_27CE5A2F0);
  sub_21DBF927C();

  v37 = sub_21DBF54CC();
  (*(*(v37 - 8) + 56))(v8, 1, 1, v37);
  sub_21D0D0F1C(&qword_27CE5D898, &qword_27CE5D878);
  v38 = v56;
  v39 = v57;
  sub_21DBF922C();
  sub_21D0CF7E0(v8, &qword_27CE5EA20);
  (*(v55 + 8))(v14, v38);
  v40 = v64;
  sub_21D515C94(a1, v64, type metadata accessor for TTRReminderPrintingPresenterCapability.ImageAttachment);
  v41 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v42 = (v62 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  sub_21D514D7C(v40, v43 + v41, type metadata accessor for TTRReminderPrintingPresenterCapability.ImageAttachment);
  v44 = (v43 + v42);
  *v44 = v28;
  v44[1] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D870);
  sub_21D0D0F1C(&qword_27CE5D8A0, &qword_27CE5D880);
  v45 = v52;
  v46 = v61;
  sub_21DBF921C();

  (*(v59 + 8))(v39, v46);
  sub_21D0D0F1C(&qword_27CE5D8A8, &qword_27CE5D888);
  v47 = v60;
  v48 = sub_21DBF920C();
  result = (*(v58 + 8))(v45, v47);
  *v65 = v48;
  return result;
}

uint64_t sub_21D513AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF54CC();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

id sub_21D513B7C@<X0>(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_21DBF54CC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a1, v12, &qword_27CE5EA20);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_21D0CF7E0(v12, &qword_27CE5EA20);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D870);
    return (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }

  else
  {
    v19 = *(v14 + 32);
    v19(v16, v12, v13);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D870);
    v21 = a3 + *(v20 + 48);
    v25 = *a2;
    *a3 = v25;
    v19(v21, v16, v13);
    v22 = &v21[*(type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail(0) + 20)];
    *v22 = a4;
    v22[1] = a5;
    (*(*(v20 - 8) + 56))(a3, 0, 1, v20);
    v23 = v25;

    return v23;
  }
}

uint64_t sub_21D513E2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE583E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D870);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v20 - v14);
  *a3 = *a1;
  sub_21D0D3954(a2, &v20 - v14, &qword_27CE5D870);
  v16 = *v15;
  v21 = *(v10 + 56);
  sub_21D0D3954(a2, v12, &qword_27CE5D870);
  v17 = *v12;
  sub_21DBF8E0C();

  sub_21D514D7C(v12 + *(v10 + 56), v8, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
  v18 = type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail(0);
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  sub_21D17D068(v8, v16);
  return sub_21D515A94(v15 + v21, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
}

uint64_t sub_21D514020@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  sub_21D515C94(a2, a3, type metadata accessor for TTRReminderPrintingPresenterCapability.GenerationResult);
  v5 = *(type metadata accessor for TTRReminderPrintingPresenterCapability.GenerationResult(0) + 24);
  sub_21DBF8E0C();

  *(a3 + v5) = v4;
  return result;
}

uint64_t TTRReminderPrintingPresenterCapability.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

char *initializeBufferWithCopyOfBuffer for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 20);
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 16))(&v3[v5], &a2[v5], v7);
  }

  return v3;
}

uint64_t destroy for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = sub_21DBF563C();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1 + v3, v4);
}

_BYTE *initializeWithCopy for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *assignWithCopy for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *initializeWithTake for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

_BYTE *assignWithTake for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  return a1;
}

uint64_t sub_21D51446C()
{
  result = sub_21DBF563C();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D514504()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = OBJC_IVAR____TtC15RemindersUICoreP33_8D3AD9A7C739B7114BFFF4D89520C33A26ResourceDirectoryAssertion_resourceDirectoryToRemove;
  swift_beginAccess();
  sub_21D0D3954(v0 + v5, v4, &qword_27CE5EA20);
  v6 = sub_21DBF54CC();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_21D0CF7E0(v4, &qword_27CE5EA20);
  if (v7 != 1)
  {
    if (qword_27CE56998 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_27CE5D5A0);
    v9 = sub_21DBF84AC();
    v10 = sub_21DBFAECC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21D0C9000, v9, v10, "Unexpected: TTRReminderPrintingTemporaryResourceAssertion: finish() not called before deinit", v11, 2u);
      MEMORY[0x223D46520](v11, -1, -1);
    }
  }

  swift_unknownObjectRelease();
  sub_21D0CF7E0(v1 + v5, &qword_27CE5EA20);
  return v1;
}

uint64_t sub_21D5146F0()
{
  sub_21D514504();

  return swift_deallocClassInstance();
}

void sub_21D51476C()
{
  sub_21D514D00();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D514808()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v19 - v5;
  v7 = sub_21DBF54CC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  v12 = OBJC_IVAR____TtC15RemindersUICoreP33_8D3AD9A7C739B7114BFFF4D89520C33A26ResourceDirectoryAssertion_resourceDirectoryToRemove;
  swift_beginAccess();
  sub_21D0D3954(v0 + v12, v6, &qword_27CE5EA20);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE5EA20);
    if (qword_27CE56998 != -1)
    {
      swift_once();
    }

    v13 = sub_21DBF84BC();
    __swift_project_value_buffer(v13, qword_27CE5D5A0);
    v14 = sub_21DBF84AC();
    v15 = sub_21DBFAECC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21D0C9000, v14, v15, "Unexpected: TTRReminderPrintingTemporaryResourceAssertion.finish called twice", v16, 2u);
      MEMORY[0x223D46520](v16, -1, -1);
    }
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    (*(v8 + 56))(v3, 1, 1, v7);
    swift_beginAccess();
    sub_21D0F02F4(v3, v0 + v12, &qword_27CE5EA20);
    swift_endAccess();
    v17 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v17 + 16))(v11, ObjectType, v17);
    (*(v8 + 8))(v11, v7);
  }
}

void sub_21D514D00()
{
  if (!qword_280D1B888)
  {
    sub_21DBF54CC();
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_280D1B888);
    }
  }
}

uint64_t sub_21D514D7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_21D514DE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65240) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65250);
  v7 = *a1;
  sub_21D515C94(a1 + v4, a2 + *(v5 + 48), type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
  *a2 = v7;

  return v7;
}

uint64_t sub_21D514E88@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D768) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65270) + 48);
  v6 = a1[4];
  v16 = a1[3];
  v7 = v16;
  v17 = v6;
  v8 = a1[2];
  v14 = a1[1];
  v9 = v14;
  v15 = v8;
  v13 = *a1;
  v10 = v13;
  a2[2] = v8;
  a2[3] = v7;
  a2[4] = v6;
  *a2 = v10;
  a2[1] = v9;
  sub_21D0D3954(a1 + v4, a2 + v5, &qword_27CE65260);
  return sub_21D1D9B34(&v13, &v12);
}

id sub_21D514F38@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D780) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D778);
  v7 = *a1;
  sub_21D515C94(a1 + v4, a2 + *(v5 + 48), type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
  *a2 = v7;

  return v7;
}

uint64_t sub_21D514FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = sub_21DBFBD0C();
    v9 = v8;
    v10 = sub_21DBFBDDC();
    v12 = v11;
    result = MEMORY[0x223D444F0]();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_6:
    v14 = v6 != 0;
    v21[0] = v7;
    v21[1] = v9;
    v22 = v14;
    v23 = v10;
    v24 = v12;
    v25 = v14;
    sub_21D515F20(a1, v21);
    sub_21D15746C(v7, v9, v14);
    sub_21D15746C(v10, v12, v14);
    v15 = *a1;
    v16 = *(a1 + 8);
    v17 = *(a1 + 16);
    v18 = *(a1 + 24);
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    sub_21DBF8E0C();
    sub_21D517224(v15, v16, v17);
    result = sub_21D517224(v18, v19, v20);
    *a3 = v15;
    *(a3 + 8) = v16;
    *(a3 + 16) = v17;
    *(a3 + 24) = v18;
    *(a3 + 32) = v19;
    *(a3 + 40) = v20;
    *(a3 + 48) = a2;
    return result;
  }

  result = sub_21DBFBCCC();
  v10 = 1 << *(a2 + 32);
  if (v10 >= result)
  {
    v7 = result;
    v12 = *(a2 + 36);
    v9 = v12;
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21D515138(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 0)
  {
    goto LABEL_28;
  }

  v24 = result;
  v25 = a2;
  v26 = a3 & 1;
  if (!a4)
  {
    v22 = result;
    sub_21D517224(result, a2, a3 & 1);
    return v22;
  }

  v7 = a5 & 0xC000000000000001;
  result = sub_21D517224(result, a2, a3 & 1);
  v8 = 0;
  v9 = a4 - 1;
  while (1)
  {
    if (v7)
    {
      if (v26 != 1)
      {
        goto LABEL_29;
      }

      if (sub_21DBFBD2C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D8B8);
      v10 = sub_21DBFAAEC();
      sub_21DBFBDEC();
      result = v10(v23, 0);
      goto LABEL_5;
    }

    if (v26)
    {
      goto LABEL_30;
    }

    result = v24;
    if ((v24 & 0x8000000000000000) != 0)
    {
      break;
    }

    v12 = 1 << *(a5 + 32);
    if (v24 >= v12)
    {
      break;
    }

    v13 = v24 >> 6;
    v14 = *(a5 + 56 + 8 * (v24 >> 6));
    if (((v14 >> v24) & 1) == 0)
    {
      goto LABEL_26;
    }

    if (*(a5 + 36) != v25)
    {
      goto LABEL_27;
    }

    v15 = v14 & (-2 << (v24 & 0x3F));
    if (v15)
    {
      v12 = __clz(__rbit64(v15)) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v13 << 6;
      v17 = v13 + 1;
      v18 = (a5 + 64 + 8 * v13);
      while (v17 < (v12 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_21D15746C(v24, v25, 0);
          v12 = __clz(__rbit64(v19)) + v16;
          goto LABEL_22;
        }
      }

      result = sub_21D15746C(v24, v25, 0);
    }

LABEL_22:
    v21 = *(a5 + 36);
    v24 = v12;
    v25 = v21;
    v26 = 0;
LABEL_5:
    if (v8++ == v9)
    {
      return v24;
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
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_21D515370(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = result;
  if (a6)
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_53;
    }

    result = MEMORY[0x223D444F0](a4, a5, result, a2);
    if (result)
    {
      goto LABEL_48;
    }

    v33 = v13;
    v34 = v12;
    v35 = 1;
    v14 = MEMORY[0x223D44500](v13, v12, v10, v9);
    result = sub_21DBF8E0C();
    if (v14)
    {
LABEL_5:
      sub_21D15746C(result, v12, v11 & 1);
      return 0;
    }
  }

  else
  {
    if (a3)
    {
      goto LABEL_53;
    }

    if (a5 != a2)
    {
      goto LABEL_49;
    }

    if (a4 < result)
    {
      goto LABEL_48;
    }

    v33 = result;
    v34 = a2;
    v35 = 0;
    if (result == a4)
    {
      goto LABEL_5;
    }
  }

  if (a7 < 0)
  {
    v16 = a7;
  }

  else
  {
    v16 = a7 & 0xFFFFFFFFFFFFFF8;
  }

  v31 = v10;
  v15 = 1;
  do
  {
    if ((a7 & 0xC000000000000001) != 0)
    {
      if ((v11 & 1) == 0)
      {
        goto LABEL_51;
      }

      if (sub_21DBFBD2C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D8B8);
      v22 = sub_21DBFAAEC();
      sub_21DBFBDEC();
      result = v22(v32, 0);
      v18 = v33;
      v12 = v34;
      if (v35)
      {
        if ((v8 & 1) == 0)
        {
          goto LABEL_50;
        }

        v11 = 1;
        if (MEMORY[0x223D44500](v33, v34, v10, v9))
        {
          goto LABEL_41;
        }

        goto LABEL_14;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_52;
      }

      if (result < 0)
      {
        goto LABEL_45;
      }

      v18 = 1 << *(a7 + 32);
      if (result >= v18)
      {
        goto LABEL_45;
      }

      v19 = result >> 6;
      v20 = *(a7 + 56 + 8 * (result >> 6));
      if (((v20 >> result) & 1) == 0)
      {
        goto LABEL_46;
      }

      if (*(a7 + 36) != v12)
      {
        goto LABEL_47;
      }

      v21 = v20 & (-2 << (result & 0x3F));
      if (v21)
      {
        v18 = __clz(__rbit64(v21)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v9;
        v24 = v8;
        v25 = v16;
        v26 = v19 << 6;
        v27 = v19 + 1;
        v28 = (a7 + 64 + 8 * v19);
        while (v27 < (v18 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_21D15746C(result, v12, 0);
            v18 = __clz(__rbit64(v29)) + v26;
            goto LABEL_35;
          }
        }

        result = sub_21D15746C(result, v12, 0);
LABEL_35:
        v16 = v25;
        v8 = v24;
        v9 = v23;
        v10 = v31;
      }

      v12 = *(a7 + 36);
      v33 = v18;
      v34 = v12;
      v35 = 0;
    }

    if (v8)
    {
      goto LABEL_50;
    }

    if (v9 != v12)
    {
      goto LABEL_44;
    }

    v11 = 0;
    if (v18 == v10)
    {
      v18 = v10;
LABEL_41:
      sub_21D15746C(v18, v12, v11);
      return v15;
    }

LABEL_14:
    result = v18;
  }

  while (!__OFADD__(v15++, 1));
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
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

void sub_21D515678(_OWORD *a1, void *a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  *&v45[8] = *v3;
  v46 = *&v45[8];
  v5 = *(v3 + 32);
  v42 = *&v45[8];
  v43 = v4;
  v45[24] = *(v3 + 16);
  v47 = v45[24];
  v44 = v5;
  *v45 = *(v3 + 48);
  if (!a2)
  {
LABEL_40:
    v30 = *v45;
    a1[2] = v44;
    a1[3] = v30;
    *(a1 + 57) = *&v45[9];
    v31 = v43;
    *a1 = v42;
    a1[1] = v31;
    sub_21D0D3954(&v46, v41, &qword_27CE5D8B0);
    return;
  }

  v6 = a3;
  v34 = a1;
  if (!a3)
  {
    sub_21D0D3954(&v46, v41, &qword_27CE5D8B0);
LABEL_42:
    v32 = *v45;
    v34[2] = v44;
    v34[3] = v32;
    *(v34 + 57) = *&v45[9];
    v33 = v43;
    *v34 = v42;
    v34[1] = v33;
    return;
  }

  if (a3 < 0)
  {
    goto LABEL_52;
  }

  v7 = a2;
  v8 = *(v3 + 48);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v39 = *(v3 + 40);
  sub_21D0D3954(&v46, v41, &qword_27CE5D8B0);
  v38 = v8 & 0xC000000000000001;
  v36 = v6;
  v37 = v8 + 56;
  v40 = v8;
  v35 = v8 + 64;
  v11 = 1;
  while (1)
  {
    v12 = *&v45[8];
    v13 = *&v45[16];
    if ((v45[24] & 1) == 0)
    {
      break;
    }

    if ((v39 & 1) == 0)
    {
      goto LABEL_53;
    }

    if (MEMORY[0x223D44500](*&v45[8], *&v45[16], v9, v10))
    {
      goto LABEL_42;
    }

    if ((v47 & 1) == 0)
    {
      goto LABEL_54;
    }

    if (MEMORY[0x223D444F0](v12, v13, v46, *(&v46 + 1)))
    {
      goto LABEL_46;
    }

    if ((MEMORY[0x223D444F0](v12, v13, v9, v10) & 1) == 0)
    {
      goto LABEL_44;
    }

    sub_21D3659E4(v12, v13, 1, v40);
    if (!v38)
    {
      goto LABEL_55;
    }

    v15 = v14;
    if (sub_21DBFBD2C())
    {
      swift_isUniquelyReferenced_nonNull_native();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D8B8);
    v22 = sub_21DBFAAEC();
    sub_21DBFBDEC();
    a1 = v22(v41, 0);
LABEL_36:
    *v7 = v15;
    if (v11 == v6)
    {
      goto LABEL_42;
    }

    ++v7;
    if (__OFADD__(v11++, 1))
    {
      __break(1u);
      goto LABEL_40;
    }
  }

  if (v39)
  {
    goto LABEL_53;
  }

  if (*&v45[16] != v10)
  {
    goto LABEL_45;
  }

  if (*&v45[8] == v9)
  {
    goto LABEL_42;
  }

  if (v47)
  {
    goto LABEL_54;
  }

  if (DWORD2(v46) != v10)
  {
    goto LABEL_47;
  }

  if (*&v45[8] < v46)
  {
    goto LABEL_48;
  }

  if (*&v45[8] < v9)
  {
    v16 = v10;
    v17 = v9;
    sub_21D3659E4(*&v45[8], *&v45[16], 0, v40);
    if (v38)
    {
      goto LABEL_56;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    v18 = 1 << *(v40 + 32);
    if (v12 >= v18)
    {
      goto LABEL_49;
    }

    v19 = v12 >> 6;
    v20 = *(v37 + 8 * (v12 >> 6));
    if (((v20 >> v12) & 1) == 0)
    {
      goto LABEL_50;
    }

    if (*(v40 + 36) != v13)
    {
      goto LABEL_51;
    }

    v15 = a1;
    v21 = v20 & (-2 << (v12 & 0x3F));
    if (v21)
    {
      v18 = __clz(__rbit64(v21)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v19 << 6;
      v24 = v19 + 1;
      v25 = (v35 + 8 * v19);
      while (v24 < (v18 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          a1 = sub_21D15746C(v12, v13, 0);
          v18 = __clz(__rbit64(v26)) + v23;
          goto LABEL_34;
        }
      }

      a1 = sub_21D15746C(v12, v13, 0);
LABEL_34:
      v6 = v36;
    }

    v28 = *(v40 + 36);
    *&v45[8] = v18;
    *&v45[16] = v28;
    v45[24] = 0;
    v9 = v17;
    v10 = v16;
    goto LABEL_36;
  }

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
}

uint64_t sub_21D515A94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D515AF4()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 24))(ObjectType, v1);
}

uint64_t sub_21D515B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TTRReminderPrintingPresenterCapability.ViewModelGenerationConfiguration(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21D50DB9C(a1, v7, v8, (v2 + v6), v9, a2);
}

uint64_t sub_21D515C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D650) + 48);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D630);
  return v5(a2, a2 + *(v7 + 48), a1, a1 + v6);
}

uint64_t sub_21D515C94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D515E28@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_21DBF54CC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);

  return sub_21D510B00(a1, v2 + v6, v10, v11, v12, a2);
}

uint64_t sub_21D515EF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21D5169E8(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  return result;
}

uint64_t sub_21D515F20(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      result = MEMORY[0x223D444F0](result, v5, v6, v7);
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*(a2 + 16))
  {
    goto LABEL_18;
  }

  if (v5 != v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (result < v6)
  {
    goto LABEL_11;
  }

LABEL_4:
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  result = *(a2 + 24);
  v5 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (*(a1 + 40))
    {
      result = MEMORY[0x223D444F0](result, v5, v6, v7);
      if ((result & 1) == 0)
      {
        return result;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_12:
  if (v8)
  {
    goto LABEL_19;
  }

  if (v5 != v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result < v6)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_21D515FC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D770);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (v38 - v15);
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v38[1] = a1;
  v38[2] = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v38[3] = v18;
  v38[4] = 0;
  v38[5] = v21 & v19;
  v38[6] = a2;
  v38[7] = a3;
  sub_21DBF8E0C();
  v38[0] = a3;

  while (1)
  {
    sub_21DA5F158(v16);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D778);
    if ((*(*(v22 - 8) + 48))(v16, 1, v22) == 1)
    {
      sub_21D0CFAF8();
    }

    v23 = *v16;
    sub_21D514D7C(v16 + *(v22 + 48), v13, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
    v24 = *a5;
    v26 = sub_21D17E07C(v23);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if (a4)
      {
        v33 = *a5;
        if ((v25 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_21D2238D0();
        v33 = *a5;
        if ((v30 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:

      sub_21D5171BC(v13, v33[7] + *(v11 + 72) * v26, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
      a4 = 1;
    }

    else
    {
      sub_21D21B34C(v29, a4 & 1);
      v31 = sub_21D17E07C(v23);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_21;
      }

      v26 = v31;
      v33 = *a5;
      if (v30)
      {
        goto LABEL_5;
      }

LABEL_14:
      v33[(v26 >> 6) + 8] |= 1 << v26;
      *(v33[6] + 8 * v26) = v23;
      sub_21D514D7C(v13, v33[7] + *(v11 + 72) * v26, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_20;
      }

      v33[2] = v36;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_21D0D8CF0(0, &qword_280D17880);
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t sub_21D516320(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65260);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D760);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (v44 - v15);
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v44[1] = a1;
  v44[2] = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v44[3] = v18;
  v44[4] = 0;
  v44[5] = v21 & v19;
  v44[6] = a2;
  v44[7] = a3;
  sub_21DBF8E0C();
  v44[0] = a3;

  while (1)
  {
    sub_21DA5ED28(v16);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65270);
    if ((*(*(v22 - 8) + 48))(v16, 1, v22) == 1)
    {
      sub_21D0CFAF8();
    }

    v23 = *(v22 + 48);
    v24 = v16[3];
    v47 = v16[2];
    v48 = v24;
    v49 = v16[4];
    v25 = v16[1];
    v45 = *v16;
    v46 = v25;
    sub_21D0D523C(v16 + v23, v13, &qword_27CE65260);
    v26 = *a5;
    v28 = sub_21D17E454(&v45);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if (a4)
      {
        v35 = *a5;
        if ((v27 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_21D2217E0();
        v35 = *a5;
        if ((v32 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      sub_21D1D9B90(&v45);
      sub_21D0F02F4(v13, v35[7] + *(v11 + 72) * v28, &qword_27CE65260);
      a4 = 1;
    }

    else
    {
      sub_21D217ABC(v31, a4 & 1);
      v33 = sub_21D17E454(&v45);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_21;
      }

      v28 = v33;
      v35 = *a5;
      if (v32)
      {
        goto LABEL_5;
      }

LABEL_14:
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v35[6] + 80 * v28);
      *v36 = v45;
      v37 = v46;
      v38 = v47;
      v39 = v49;
      v36[3] = v48;
      v36[4] = v39;
      v36[1] = v37;
      v36[2] = v38;
      sub_21D0D523C(v13, v35[7] + *(v11 + 72) * v28, &qword_27CE65260);
      v40 = v35[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_20;
      }

      v35[2] = v42;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t sub_21D516690(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D758);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (v38 - v15);
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v38[1] = a1;
  v38[2] = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v38[3] = v18;
  v38[4] = 0;
  v38[5] = v21 & v19;
  v38[6] = a2;
  v38[7] = a3;
  sub_21DBF8E0C();
  v38[0] = a3;

  while (1)
  {
    sub_21DA5E964(v16);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65250);
    if ((*(*(v22 - 8) + 48))(v16, 1, v22) == 1)
    {
      sub_21D0CFAF8();
    }

    v23 = *v16;
    sub_21D514D7C(v16 + *(v22 + 48), v13, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
    v24 = *a5;
    v26 = sub_21D17E07C(v23);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if (a4)
      {
        v33 = *a5;
        if ((v25 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_21D223698();
        v33 = *a5;
        if ((v30 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:

      sub_21D5171BC(v13, v33[7] + *(v11 + 72) * v26, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
      a4 = 1;
    }

    else
    {
      sub_21D21B004(v29, a4 & 1);
      v31 = sub_21D17E07C(v23);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_21;
      }

      v26 = v31;
      v33 = *a5;
      if (v30)
      {
        goto LABEL_5;
      }

LABEL_14:
      v33[(v26 >> 6) + 8] |= 1 << v26;
      *(v33[6] + 8 * v26) = v23;
      sub_21D514D7C(v13, v33[7] + *(v11 + 72) * v26, type metadata accessor for TTRReminderPrintingPresenterCapability.Thumbnail);
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_20;
      }

      v33[2] = v36;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_21D0D8CF0(0, &qword_280D17880);
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t sub_21D5169E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v50 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for TTRReminderPrintingPresenterCapability.GenerationResult(0);
  v56 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v57 = v6;
  v61 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F250);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = &v49[-v8];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D728);
  v59 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v55 = &v49[-v9];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D730);
  v58 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v54 = &v49[-v10];
  v11 = type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder(0);
  v65 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = v5;
  v14 = *(v5 + 20);
  v60 = a1;
  v15 = *(a1 + v14);
  v73 = MEMORY[0x277D84FA0];
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v21 = 0;
  while (v18)
  {
    v22 = v21;
LABEL_10:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_21D515C94(*(v15 + 56) + *(v65 + 72) * (v23 | (v22 << 6)), v13, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
    v24 = &v13[*(v11 + 20)];
    v25 = *(v24 + 1);
    if (v25 != 1)
    {
      v26 = *(v24 + 2);
      v74[1] = *(v24 + 1);
      v74[2] = v26;
      v27 = *(v24 + 4);
      v29 = *(v24 + 1);
      v28 = *(v24 + 2);
      v74[3] = *(v24 + 3);
      v74[4] = v27;
      *&v74[0] = *v24;
      *(&v74[0] + 1) = v25;
      v67[0] = *&v74[0];
      v67[1] = v25;
      v68 = v29;
      v69 = v28;
      v30 = *(v24 + 4);
      v70 = *(v24 + 3);
      v71 = v30;
      sub_21D1D9B34(v67, v72);
      sub_21D29D138(v66, v74);
      v72[2] = v66[2];
      v72[3] = v66[3];
      v72[4] = v66[4];
      v72[0] = v66[0];
      v72[1] = v66[1];
      sub_21D1D9B90(v72);
    }

    result = sub_21D515A94(v13, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
    v21 = v22;
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      v31 = v73;
      v32 = *(v73 + 16);
      if (!v32)
      {
        goto LABEL_15;
      }

      v33 = sub_21D9D660C(*(v73 + 16), 0);
      v34 = sub_21D9D55E8(v72, v33 + 32, v32, v31);
      sub_21D0CFAF8();
      if (v34 != v32)
      {
        __break(1u);
LABEL_15:

        v33 = MEMORY[0x277D84F90];
      }

      ObjectType = swift_getObjectType();
      v36 = v60;
      v37 = (*(v52 + 40))(v33, v60, v50 & 1, ObjectType, 12.0, 12.0, 5.0);

      *&v72[0] = v37;
      sub_21DBF60DC();
      v38 = sub_21DBF60AC();
      v67[0] = v38;
      v39 = sub_21DBFB0DC();
      v40 = v53;
      (*(*(v39 - 8) + 56))(v53, 1, 1, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D738);
      sub_21D0D8CF0(0, &qword_280D1B900);
      sub_21D0D0F1C(&qword_27CE5D740, &qword_27CE5D738);
      sub_21D47130C();
      v41 = v55;
      sub_21DBF936C();
      sub_21D0CF7E0(v40, &unk_27CE5F250);

      v42 = v61;
      sub_21D515C94(v36, v61, type metadata accessor for TTRReminderPrintingPresenterCapability.GenerationResult);
      v43 = (*(v56 + 80) + 16) & ~*(v56 + 80);
      v44 = swift_allocObject();
      sub_21D514D7C(v42, v44 + v43, type metadata accessor for TTRReminderPrintingPresenterCapability.GenerationResult);
      sub_21D0D0F1C(&qword_27CE5D748, &qword_27CE5D728);
      v45 = v54;
      v46 = v63;
      sub_21DBF927C();

      (*(v59 + 8))(v41, v46);
      sub_21D0D0F1C(&qword_27CE5D750, &qword_27CE5D730);
      v47 = v62;
      v48 = sub_21DBF920C();
      (*(v58 + 8))(v45, v47);
      return v48;
    }

    v18 = *(v15 + 64 + 8 * v22);
    ++v21;
    if (v18)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D51713C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TTRReminderPrintingPresenterCapability.GenerationResult(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21D514020(a1, v6, a2);
}

uint64_t sub_21D5171BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D517224(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_21DBF8E0C();
  }

  return result;
}

void sub_21D517230(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_21DBF54CC() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = (v2 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v2 + v8);

  sub_21D511214(a1, v9, v2 + v6, v11, v12, v13, a2);
}

uint64_t sub_21D517310@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(sub_21DBF54CC() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_21D5127B8(a1, a2, v8, a3);
}

uint64_t sub_21D517398(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v4 = type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder(0);
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59C28);
  result = sub_21DBFC3DC();
  v8 = result;
  v9 = 0;
  v30 = result;
  v31 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v28 = result + 64;
  if ((v14 & v10) != 0)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v31 + 56) + 8 * v20);
      v22 = *(*(v31 + 48) + 8 * v20);
      v23 = v21;
      sub_21D511BF4(v23, v32, v6);

      if (v34)
      {
        break;
      }

      *(v28 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v24 = v29;
      v8 = v30;
      *(*(v30 + 48) + 8 * v20) = v22;
      result = sub_21D514D7C(v6, *(v8 + 56) + *(v24 + 72) * v20, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
      v25 = *(v8 + 16);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_17;
      }

      *(v8 + 16) = v27;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v8 = v30;

    return v8;
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return v8;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_21D5175C8@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_21DBF54CC() - 8);
  v6 = *(v2 + 32);
  v7 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_21D51338C(a1, v6, v7, a2);
}

id sub_21D517650@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for TTRReminderPrintingPresenterCapability.ImageAttachment(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_21D513B7C(a1, (v2 + v6), a2, v8, v9);
}

uint64_t sub_21D517700(uint64_t a1, void *a2, void *a3)
{
  v27[1] = a3;
  v27[0] = a2;
  v3 = type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21DBFBD7C())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59C28);
    v7 = sub_21DBFC40C();
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  v30 = v7;
  sub_21DBFC21C();
  swift_unknownObjectRetain();
  v8 = sub_21DBFC2DC();
  if (v8)
  {
    v10 = v9;
    v11 = v8;
    sub_21D0D8CF0(0, &qword_280D17880);
    v12 = v11;
    while (1)
    {
      v28 = v12;
      swift_dynamicCast();
      v27[3] = v10;
      sub_21D0D8CF0(0, &qword_280D17860);
      swift_dynamicCast();
      v20 = v29;
      sub_21D511BF4(v28, v27[0], v6);
      if (v27[2])
      {
        break;
      }

      v21 = *(v7 + 16);
      if (*(v7 + 24) <= v21)
      {
        sub_21D21B34C(v21 + 1, 1);
      }

      v7 = v30;
      result = sub_21DBFB62C();
      v14 = v7 + 64;
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v7 + 64 + 8 * (v16 >> 6))) != 0)
      {
        v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 64 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = 0;
        v23 = (63 - v15) >> 6;
        do
        {
          if (++v17 == v23 && (v22 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v24 = v17 == v23;
          if (v17 == v23)
          {
            v17 = 0;
          }

          v22 |= v24;
          v25 = *(v14 + 8 * v17);
        }

        while (v25 == -1);
        v18 = __clz(__rbit64(~v25)) + (v17 << 6);
      }

      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + 8 * v18) = v20;
      sub_21D514D7C(v6, *(v7 + 56) + *(v4 + 72) * v18, type metadata accessor for TTRReminderPrintingPresenterCapability.ProcessedReminder);
      ++*(v7 + 16);
      v12 = sub_21DBFC2DC();
      v10 = v19;
      if (!v12)
      {
        goto LABEL_20;
      }
    }

    v26 = v28;
  }

  else
  {
LABEL_20:
  }

  return v7;
}

uint64_t sub_21D517A50()
{
  result = sub_21DBF54CC();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void **sub_21D517AE4(void **a1, void **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v9 = sub_21DBF54CC();
    v10 = *(*(v9 - 8) + 16);
    v11 = v4;
    v10(v6 + v7, a2 + v7, v9);
    *(v6 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  }

  return v6;
}