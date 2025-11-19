uint64_t sub_261345570()
{
  v1 = *v0;
  v2 = *(*v0 + 816);
  v4 = *v0;

  sub_26124C718(v1 + 448, &qword_27FE9F458, &unk_2613A4BE0);

  return MEMORY[0x2822009F8](sub_261345684);
}

uint64_t sub_261345684()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 728);

  sub_26124A168(v2, v1);

  v4 = *(v0 + 712);
  v5 = *(v0 + 704);

  v6 = *(v0 + 8);

  return v6(36, 0);
}

uint64_t sub_261345728()
{
  v1 = *v0;
  v2 = *(*v0 + 832);
  v4 = *v0;

  sub_26124C718(v1 + 304, &qword_27FE9F458, &unk_2613A4BE0);

  return MEMORY[0x2822009F8](sub_26134583C);
}

uint64_t sub_26134583C()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 776);
  v5 = *(v0 + 752);
  v6 = *(v0 + 744);
  v7 = *(v0 + 728);
  v8 = *(v0 + 720);
  v9 = *(v0 + 712);
  v10 = sub_261272A24(*(v0 + 824), *(v0 + 153));

  sub_26124C6C4(v4, v3);
  sub_26124C6C4(v2, v1);
  sub_26124A168(v6, v5);
  sub_261345C6C(v9, type metadata accessor for StoreAndForwardReadResult);
  v11 = *(v0 + 712);
  v12 = *(v0 + 704);

  v13 = *(v0 + 8);

  return v13(v10, 0);
}

uint64_t sub_26134594C()
{
  v1 = *v0;
  v2 = *(*v0 + 840);
  v4 = *v0;

  sub_26124C718(v1 + 160, &qword_27FE9F458, &unk_2613A4BE0);

  return MEMORY[0x2822009F8](sub_261345A60);
}

uint64_t sub_261345A60()
{
  v1 = v0[91];

  v2 = v0[89];
  v3 = v0[88];

  v4 = v0[1];

  return v4(25, 0);
}

uint64_t sub_261345ADC()
{
  v1 = *v0;
  v2 = *(*v0 + 848);
  v4 = *v0;

  sub_26124C718(v1 + 16, &qword_27FE9F458, &unk_2613A4BE0);

  return MEMORY[0x2822009F8](sub_261345BF0);
}

uint64_t sub_261345BF0()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);

  v3 = *(v0 + 8);

  return v3(37, 0);
}

uint64_t sub_261345C6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261345CCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_261345D90()
{
  result = qword_27FEA0728;
  if (!qword_27FEA0728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0728);
  }

  return result;
}

uint64_t objectdestroy_49Tm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  v8 = v0[17];

  v9 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_261345E5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261345EA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  sub_261345F0C(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_261345F0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 16) = 0;
  v9 = *(**sub_2612C11DC() + 112);

  v9(v10);

  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 96) = 0;
  return v4;
}

uint64_t sub_261345FAC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = sub_2613A1C1C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;

  sub_261266800(0, 0, v8, &unk_2613ACE50, v10);
}

uint64_t sub_2613460D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2613461A0);
}

uint64_t sub_2613461A0()
{
  v1 = *(v0 + 64);
  type metadata accessor for MerchantService();
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_261346264;

  return sub_26129616C(v0 + 16, v2, v3, v4);
}

uint64_t sub_261346264()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v4 = *v0;

  *(v1 + 136) = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_261346380);
}

uint64_t sub_261346380()
{
  v81 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (*(v0 + 56))
  {
    v4 = *(v0 + 48);
    v78 = *(v0 + 40);
    v5 = *(v0 + 88);
    v6 = (*(v0 + 33) << 8) | ((*(v0 + 37) | (*(v0 + 39) << 16)) << 40);
    v7 = sub_26129B5FC();
    sub_26125A870(v7, v5, &qword_27FE9F560, &qword_2613A3CB0);
    v8 = sub_2613A124C();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      sub_26124C718(*(v0 + 88), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v79 = v1;

      v15 = sub_2613A122C();
      v16 = sub_2613A1D8C();

      if (os_log_type_enabled(v15, v16))
      {
        v77 = v2;
        v2 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v80 = v76;
        *v2 = 136315394;
        *(v2 + 4) = sub_26124C11C(v79, v6 | v3, &v80);
        *(v2 + 12) = 2080;
        *(v2 + 14) = sub_26124C11C(v78, v4, &v80);
        _os_log_impl(&dword_261243000, v15, v16, "Check Merchant <-- ERROR %s - %s", v2, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266701350](v76, -1, -1);
        v17 = v2;
        LOBYTE(v2) = v77;
        MEMORY[0x266701350](v17, -1, -1);
      }

      (*(v9 + 8))(*(v0 + 88), v8);
      v1 = v79;
    }

    v19 = *(v0 + 72);
    v18 = *(v0 + 80);
    v20 = *(v0 + 64);
    v21 = sub_261349180(v2, v1, v6 | v3);
    goto LABEL_33;
  }

  if (*(*(v0 + 64) + 48) != 1)
  {
    if (v2 == sub_2613A0F1C() && v1 == v22)
    {
    }

    else
    {
      v24 = sub_2613A241C();

      if ((v24 & 1) == 0)
      {
        v25 = *(v0 + 96);
        v26 = sub_26129B5FC();
        sub_26125A870(v26, v25, &qword_27FE9F560, &qword_2613A3CB0);
        v12 = sub_2613A124C();
        v13 = *(v12 - 8);
        if ((*(v13 + 48))(v25, 1, v12) == 1)
        {
          v14 = *(v0 + 96);
          goto LABEL_20;
        }

        v67 = *(v0 + 136);
        v68 = *(v0 + 96);

        v69 = sub_2613A122C();
        v70 = sub_2613A1D7C();
        sub_26124C718(v0 + 16, &qword_27FE9F7D0, &qword_2613A6240);
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v73 = v1;
          v74 = v72;
          v80 = v72;
          *v71 = 136315138;
          *(v71 + 4) = sub_26124C11C(v2, v73, &v80);
          _os_log_impl(&dword_261243000, v69, v70, "Check Merchant: success, %s", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v74);
          MEMORY[0x266701350](v74, -1, -1);
          MEMORY[0x266701350](v71, -1, -1);
        }

        v66 = *(v0 + 96);
LABEL_43:
        (*(v13 + 8))(v66, v12);
        goto LABEL_44;
      }
    }

    v33 = *(v0 + 104);
    v34 = sub_26129B5FC();
    sub_26125A870(v34, v33, &qword_27FE9F560, &qword_2613A3CB0);
    v35 = sub_2613A124C();
    v36 = *(v35 - 8);
    v37 = (*(v36 + 48))(v33, 1, v35);
    v32 = *(v0 + 104);
    if (v37 != 1)
    {
      v43 = *(v0 + 104);
      v44 = sub_2613A122C();
      v45 = sub_2613A1D8C();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_261243000, v44, v45, "Check Merchant <-- ERROR Merchant already registered", v46, 2u);
        MEMORY[0x266701350](v46, -1, -1);
      }

      v47 = *(v0 + 104);

      (*(v36 + 8))(v47, v35);
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  if (v3 == 2 || (v3 & 1) == 0)
  {
    v27 = *(v0 + 112);
    v28 = sub_26129B5FC();
    sub_26125A870(v28, v27, &qword_27FE9F560, &qword_2613A3CB0);
    v29 = sub_2613A124C();
    v30 = *(v29 - 8);
    v31 = (*(v30 + 48))(v27, 1, v29);
    v32 = *(v0 + 112);
    if (v31 != 1)
    {
      v38 = *(v0 + 112);
      v39 = sub_2613A122C();
      v40 = sub_2613A1D8C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_261243000, v39, v40, "Check Merchant <-- ERROR not allowed to relink", v41, 2u);
        MEMORY[0x266701350](v41, -1, -1);
      }

      v42 = *(v0 + 112);

      (*(v30 + 8))(v42, v29);
      goto LABEL_32;
    }

LABEL_25:
    sub_26124C718(v32, &qword_27FE9F560, &qword_2613A3CB0);
LABEL_32:
    v19 = *(v0 + 72);
    v48 = *(v0 + 80);
    v49 = objc_allocWithZone(sub_26139F2CC());
    v21 = sub_26139F2DC();
LABEL_33:
    v50 = v21;
    v19(0, v21);
    sub_26124C718(v0 + 16, &qword_27FE9F7D0, &qword_2613A6240);

    goto LABEL_34;
  }

  v10 = *(v0 + 120);
  v11 = sub_26129B5FC();
  sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v58 = *(v0 + 136);
    v59 = *(v0 + 120);

    v60 = sub_2613A122C();
    v61 = sub_2613A1D7C();
    sub_26124C718(v0 + 16, &qword_27FE9F7D0, &qword_2613A6240);
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v64 = v1;
      v65 = v63;
      v80 = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_26124C11C(v2, v64, &v80);
      _os_log_impl(&dword_261243000, v60, v61, "Check Merchant: success, %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);
      MEMORY[0x266701350](v65, -1, -1);
      MEMORY[0x266701350](v62, -1, -1);
    }

    v66 = *(v0 + 120);
    goto LABEL_43;
  }

  v14 = *(v0 + 120);
LABEL_20:
  sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
LABEL_44:
  v75 = *(v0 + 80);
  (*(v0 + 72))(1, 0);
  sub_26124C718(v0 + 16, &qword_27FE9F7D0, &qword_2613A6240);
LABEL_34:
  v52 = *(v0 + 112);
  v51 = *(v0 + 120);
  v54 = *(v0 + 96);
  v53 = *(v0 + 104);
  v55 = *(v0 + 88);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_261346C7C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_2613460D0(v5, v6, v7, v2, v3, v4);
}

void sub_261346D24(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = sub_2612F6894(*(v2 + 32), *(v2 + 40));
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v13 = sub_2613487FC();
    if (!v14)
    {
LABEL_8:
      v17 = sub_2613A1C1C();
      (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
      v18 = swift_allocObject();
      v18[2] = 0;
      v18[3] = 0;
      v18[4] = v2;
      v18[5] = a1;
      v18[6] = a2;
      v18[7] = v11;
      v18[8] = v12;

      sub_261266800(0, 0, v8, &unk_2613ACE60, v18);

      return;
    }

    if (v13 == v11 && v14 == v12)
    {
    }

    else
    {
      v16 = sub_2613A241C();

      if ((v16 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    a1(1, 0);
  }

  else
  {
    v19 = objc_allocWithZone(sub_26139F2CC());
    v22 = sub_26139F2DC();
    a1(0, v22);
    v20 = v22;
  }
}

uint64_t sub_261346F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  return MEMORY[0x2822009F8](sub_261346F60);
}

uint64_t sub_261346F60()
{
  v1 = *(v0 + 64);
  type metadata accessor for MerchantService();
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_261347024;

  return sub_26129616C(v0 + 16, v2, v3, v4);
}

uint64_t sub_261347024()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_261347120);
}

uint64_t sub_261347120()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if ((*(v0 + 56) & 1) == 0)
  {
    v9 = (*(v0 + 17) << 8) | ((*(v0 + 21) | (*(v0 + 23) << 16)) << 40) | v1;
    if (v9 == sub_2613A0F1C() && v2 == v10)
    {
    }

    else
    {
      v12 = sub_2613A241C();

      if ((v12 & 1) == 0)
      {
        v13 = *(v0 + 80);
        (*(v0 + 72))(0, 0);
LABEL_13:
        sub_26124C718(v0 + 16, &qword_27FE9F7D0, &qword_2613A6240);
        goto LABEL_14;
      }
    }

    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);
    v17 = *(v0 + 64);
    (*(v0 + 72))(1, 0);
    (*(*v17 + 232))(v15, v14);
    goto LABEL_13;
  }

  v3 = *(v0 + 64);
  v4 = sub_261349180(v1, *(v0 + 24), *(v0 + 32));
  sub_26139F2BC();

  v5 = sub_26139F2FC();
  if (v5 == sub_26139F2FC())
  {
    v6 = objc_allocWithZone(sub_26139F2CC());
    v7 = sub_26139F2DC();

    v4 = v7;
  }

  v8 = *(v0 + 80);
  (*(v0 + 72))(0, v4);
  sub_26124C718(v0 + 16, &qword_27FE9F7D0, &qword_2613A6240);

LABEL_14:
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_26134731C(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v20 - v14;
  v16 = sub_2613A1C1C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v6;
  *(v17 + 40) = a1;
  *(v17 + 48) = a2;
  *(v17 + 56) = a3;
  *(v17 + 64) = a4;
  *(v17 + 72) = a5;

  v18 = a1;

  sub_261266800(0, 0, v15, &unk_2613ACE70, v17);
}

uint64_t sub_26134746C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 88) = a7;
  *(v8 + 96) = v15;
  *(v8 + 57) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  v10 = sub_26139F64C();
  *(v8 + 128) = v10;
  v11 = *(v10 - 8);
  *(v8 + 136) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261347590);
}

uint64_t sub_261347590()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 64);
  sub_26139F40C();
  sub_26139F5DC();
  v5 = *(v2 + 8);
  *(v0 + 152) = v5;
  *(v0 + 160) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  type metadata accessor for MerchantService();
  v6 = *(v4 + 24);
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *v7 = v0;
  v7[1] = sub_26134768C;
  v8 = *(v0 + 57);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v11 = *(v0 + 72);

  return sub_261296A28(v0 + 16, v6, v11, v9, v10, v8);
}

uint64_t sub_26134768C()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v4 = *v0;

  *(v1 + 176) = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_2613477A8);
}

uint64_t sub_2613477A8()
{
  v74 = v0;
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = *(v0 + 64);
  sub_26139F40C();
  sub_26139F5BC();
  v2(v3, v4);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v5 + 96);
  if (*(v0 + 56))
  {
    v9 = *(v0 + 32);
    v10 = *(v0 + 40);
    v11 = *(v0 + 48);
    v12 = *(v0 + 104);
    *(v5 + 96) = 0;

    v13 = sub_26129B5FC();
    sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
    v14 = sub_2613A124C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v12, 1, v14) == 1)
    {
      sub_26124C718(*(v0 + 104), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v23 = sub_2613A122C();
      v24 = sub_2613A1D8C();

      if (os_log_type_enabled(v23, v24))
      {
        v72 = v7;
        v25 = swift_slowAlloc();
        v71 = v10;
        v26 = swift_slowAlloc();
        v73 = v26;
        *v25 = 136315394;
        *(v25 + 4) = sub_26124C11C(v72, v9, &v73);
        *(v25 + 12) = 2080;
        *(v25 + 14) = sub_26124C11C(v71, v11, &v73);
        _os_log_impl(&dword_261243000, v23, v24, "Enrollment <-- ERROR %s - %s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266701350](v26, -1, -1);
        MEMORY[0x266701350](v25, -1, -1);
      }

      (*(v15 + 8))(*(v0 + 104), v14);
    }

    v28 = *(v0 + 152);
    v27 = *(v0 + 160);
    v29 = *(v0 + 144);
    v30 = *(v0 + 128);
    v31 = *(v0 + 96);
    sub_26139F4DC();
    sub_26139F5BC();
    v28(v29, v30);
    v32 = sub_2613A189C();
    [v31 notifyRegUIResultWithResult_];
    sub_26124C718(v0 + 16, &qword_27FE9F7E0, &qword_2613A6250);
  }

  else
  {
    v16 = *(v0 + 72);
    *(v5 + 96) = v16;
    v17 = v16;

    type metadata accessor for Mock();
    v18 = sub_26129B0F4(9);
    v19 = sub_26129B5FC();
    if (v18)
    {
      v20 = *(v0 + 120);
      sub_26125A870(v19, v20, &qword_27FE9F560, &qword_2613A3CB0);
      v21 = sub_2613A124C();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v20, 1, v21) == 1)
      {
        sub_26124C718(*(v0 + 120), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v36 = *(v0 + 120);
        v37 = sub_2613A122C();
        v38 = sub_2613A1D7C();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_261243000, v37, v38, "Relink: forcing error MMG-4501", v39, 2u);
          MEMORY[0x266701350](v39, -1, -1);
        }

        v40 = *(v0 + 120);

        (*(v22 + 8))(v40, v21);
      }

      v42 = *(v0 + 152);
      v41 = *(v0 + 160);
      v43 = *(v0 + 144);
      v44 = *(v0 + 128);
      v45 = *(v0 + 96);
      sub_26139F4DC();
      sub_26139F5BC();
      v42(v43, v44);
      sub_2613A0EFC();
      v46 = sub_2613A189C();

      [v45 notifyRegUIResultWithResult_];
    }

    else
    {
      v33 = *(v0 + 112);
      sub_26125A870(v19, v33, &qword_27FE9F560, &qword_2613A3CB0);
      v34 = sub_2613A124C();
      v35 = *(v34 - 8);
      if ((*(v35 + 48))(v33, 1, v34) == 1)
      {
        sub_26124C718(*(v0 + 112), &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v47 = *(v0 + 176);
        v48 = *(v0 + 112);

        v49 = sub_2613A122C();
        v50 = sub_2613A1D7C();
        sub_26124C718(v0 + 16, &qword_27FE9F7E0, &qword_2613A6250);
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v73 = v52;
          *v51 = 136315138;
          *(v51 + 4) = sub_26124C11C(v6, v7, &v73);
          _os_log_impl(&dword_261243000, v49, v50, "Enrollment: success %s", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v52);
          MEMORY[0x266701350](v52, -1, -1);
          MEMORY[0x266701350](v51, -1, -1);
        }

        (*(v35 + 8))(*(v0 + 112), v34);
      }

      v54 = *(v0 + 152);
      v53 = *(v0 + 160);
      v55 = *(v0 + 144);
      v56 = *(v0 + 128);
      v57 = *(v0 + 96);
      v58 = *(v0 + 72);
      sub_26139F4DC();
      sub_26139F5BC();
      v54(v55, v56);
      v59 = sub_2613A189C();
      [v57 notifyRegUIResultWithResult_];

      v60 = sub_26139F68C();
      v62 = sub_2612F6894(v60, v61);
      v64 = v63;

      if (v64)
      {
        (*(**(v0 + 64) + 232))(v62, v64);
        sub_26124C718(v0 + 16, &qword_27FE9F7E0, &qword_2613A6250);

        goto LABEL_23;
      }
    }

    sub_26124C718(v0 + 16, &qword_27FE9F7E0, &qword_2613A6250);
  }

LABEL_23:
  v65 = *(v0 + 144);
  v66 = *(v0 + 112);
  v67 = *(v0 + 120);
  v68 = *(v0 + 104);

  v69 = *(v0 + 8);

  return v69();
}

uint64_t sub_261347EE4()
{
  v1[8] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261347F98);
}

uint64_t sub_261347F98()
{
  v1 = v0[8];
  v2 = *(v1 + 96);
  v0[12] = v2;
  if (v2)
  {
    type metadata accessor for MerchantService();
    v3 = *(v1 + 24);
    v4 = v2;
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_2613481F0;

    return sub_2612976AC((v0 + 2), v3, v4);
  }

  else
  {
    v7 = v0[9];
    v8 = sub_26129B5FC();
    sub_26125A870(v8, v7, &qword_27FE9F560, &qword_2613A3CB0);
    v9 = sub_2613A124C();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_26124C718(v0[9], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v11 = v0[9];
      v12 = sub_2613A122C();
      v13 = sub_2613A1D8C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_261243000, v12, v13, "Subscription: account info not available", v14, 2u);
        MEMORY[0x266701350](v14, -1, -1);
      }

      v15 = v0[9];

      (*(v10 + 8))(v15, v9);
    }

    v17 = v0[10];
    v16 = v0[11];
    v18 = v0[9];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_2613481F0()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v4 = *v0;

  *(v1 + 112) = *(v1 + 24);

  return MEMORY[0x2822009F8](sub_26134830C);
}

uint64_t sub_26134830C()
{
  v42 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (*(v0 + 56))
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = *(v0 + 80);
    v7 = sub_26129B5FC();
    sub_26125A870(v7, v6, &qword_27FE9F560, &qword_2613A3CB0);
    v8 = sub_2613A124C();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v6, 1, v8) != 1)
    {
      v16 = *(v0 + 80);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v17 = sub_2613A122C();
      v18 = sub_2613A1D8C();
      v19 = os_log_type_enabled(v17, v18);
      v39 = *(v0 + 96);
      if (v19)
      {
        v37 = v4;
        v20 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v41 = v38;
        *v20 = 136315394;

        v21 = sub_26124C11C(v1, v3, &v41);

        *(v20 + 4) = v21;
        *(v20 + 12) = 2080;

        v22 = sub_26124C11C(v37, v5, &v41);

        *(v20 + 14) = v22;
        _os_log_impl(&dword_261243000, v17, v18, "Subscription <-- ERROR %s - %s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266701350](v38, -1, -1);
        MEMORY[0x266701350](v20, -1, -1);

        sub_26124C718(v0 + 16, &qword_27FE9F7E0, &qword_2613A6250);
      }

      else
      {

        sub_26124C718(v0 + 16, &qword_27FE9F7E0, &qword_2613A6250);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      (*(v9 + 8))(*(v0 + 80), v8);
      goto LABEL_15;
    }

    v10 = *(v0 + 96);
    v11 = *(v0 + 80);
  }

  else
  {
    v12 = *(v0 + 88);
    v13 = sub_26129B5FC();
    sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
    v14 = sub_2613A124C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v12, 1, v14) != 1)
    {
      v23 = *(v0 + 112);
      v24 = *(v0 + 88);

      v25 = sub_2613A122C();
      v26 = sub_2613A1D7C();
      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 96);
      if (v27)
      {
        v40 = *(v0 + 96);
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v41 = v30;
        *v29 = 136315138;
        v31 = sub_26124C11C(v2, v1, &v41);
        sub_26124C718(v0 + 16, &qword_27FE9F7E0, &qword_2613A6250);
        *(v29 + 4) = v31;
        _os_log_impl(&dword_261243000, v25, v26, "Subscription: success %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v30);
        MEMORY[0x266701350](v30, -1, -1);
        MEMORY[0x266701350](v29, -1, -1);
      }

      else
      {

        sub_26124C718(v0 + 16, &qword_27FE9F7E0, &qword_2613A6250);
      }

      sub_26124C718(v0 + 16, &qword_27FE9F7E0, &qword_2613A6250);
      (*(v15 + 8))(*(v0 + 88), v14);
      goto LABEL_15;
    }

    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
  }

  sub_26124C718(v0 + 16, &qword_27FE9F7E0, &qword_2613A6250);
  sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
LABEL_15:
  v33 = *(v0 + 80);
  v32 = *(v0 + 88);
  v34 = *(v0 + 72);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_2613487FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = sub_26129B5FC();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D7C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "Retrieving accountLinked mid from cache", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  v12 = [objc_opt_self() standardUserDefaults];
  strcpy(v22, "AccountLink-");
  BYTE13(v22[0]) = 0;
  HIWORD(v22[0]) = -5120;
  v13 = *(v1 + 24);
  v14 = *(v13 + 32);
  v15 = *(v13 + 40);

  MEMORY[0x2666FFEA0](v14, v15);

  v16 = sub_2613A189C();

  v17 = [v12 objectForKey_];

  if (v17)
  {
    sub_2613A202C();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22[0] = v20;
  v22[1] = v21;
  if (*(&v21 + 1))
  {
    if (swift_dynamicCast())
    {
      return v19;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_26124C718(v22, &qword_27FEA00C0, &unk_2613A44B0);
    return 0;
  }
}

uint64_t sub_261348AD8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_261262AA4;

  return sub_261346F38(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_261348B94()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_261265144;

  return sub_26134746C(v8, v9, v10, v2, v3, v4, v5, v6);
}

void sub_261348C5C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v18 - v4;
  v6 = sub_26129B5FC();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D7C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "Caching accountLinked mid", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_2613A189C();
  strcpy(v18, "AccountLink-");
  HIBYTE(v18[6]) = 0;
  v18[7] = -5120;
  v14 = *(v1 + 24);
  v15 = *(v14 + 32);
  v16 = *(v14 + 40);

  MEMORY[0x2666FFEA0](v15, v16);

  v17 = sub_2613A189C();

  [v12 setObject:v13 forKey:v17];
}

void sub_261348EC8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v17 - v4;
  v6 = sub_26129B5FC();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D7C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "Clearing cached accountLinked mid", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  v12 = [objc_opt_self() standardUserDefaults];
  strcpy(v17, "AccountLink-");
  HIBYTE(v17[6]) = 0;
  v17[7] = -5120;
  v13 = *(v1 + 24);
  v14 = *(v13 + 32);
  v15 = *(v13 + 40);

  MEMORY[0x2666FFEA0](v14, v15);

  v16 = sub_2613A189C();

  [v12 removeObjectForKey_];
}

uint64_t sub_26134910C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_261349180(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v106[2] = a3;
  v106[1] = a2;
  v4 = sub_26139FAAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v106 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v106 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v106 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v106 - v23;
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v25 = sub_26129B5FC();
        sub_26125A870(v25, v22, &qword_27FE9F560, &qword_2613A3CB0);
        v26 = sub_2613A124C();
        v27 = *(v26 - 8);
        if ((*(v27 + 48))(v22, 1, v26) == 1)
        {
          sub_26124C718(v22, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v53 = sub_2613A122C();
          v54 = sub_2613A1D7C();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            _os_log_impl(&dword_261243000, v53, v54, "Check Merchant | unable to parse response", v55, 2u);
            MEMORY[0x266701350](v55, -1, -1);
          }

          (*(v27 + 8))(v22, v26);
        }
      }

      else
      {
        v40 = sub_26129B5FC();
        sub_26125A870(v40, v16, &qword_27FE9F560, &qword_2613A3CB0);
        v41 = sub_2613A124C();
        v42 = *(v41 - 8);
        if ((*(v42 + 48))(v16, 1, v41) == 1)
        {
          sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v66 = sub_2613A122C();
          v67 = sub_2613A1D7C();
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            *v68 = 0;
            _os_log_impl(&dword_261243000, v66, v67, "Check Merchant | not authorized", v68, 2u);
            MEMORY[0x266701350](v68, -1, -1);
          }

          (*(v42 + 8))(v16, v41);
        }
      }
    }

    else
    {
      v34 = sub_26129B5FC();
      sub_26125A870(v34, v24, &qword_27FE9F560, &qword_2613A3CB0);
      v35 = sub_2613A124C();
      v36 = *(v35 - 8);
      if ((*(v36 + 48))(v24, 1, v35) == 1)
      {
        sub_26124C718(v24, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v47 = sub_2613A122C();
        v48 = sub_2613A1D7C();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&dword_261243000, v47, v48, "Check Merchant | internalError, secure channel failed", v49, 2u);
          MEMORY[0x266701350](v49, -1, -1);
        }

        (*(v36 + 8))(v24, v35);
      }
    }

    goto LABEL_37;
  }

  if (a1 == 3)
  {
    v37 = sub_26129B5FC();
    sub_26125A870(v37, v19, &qword_27FE9F560, &qword_2613A3CB0);
    v38 = sub_2613A124C();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v19, 1, v38) == 1)
    {
      sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v50 = sub_2613A122C();
      v51 = sub_2613A1D7C();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_261243000, v50, v51, "Check Merchant | server not reachable", v52, 2u);
        MEMORY[0x266701350](v52, -1, -1);
      }

      (*(v39 + 8))(v19, v38);
    }

    goto LABEL_37;
  }

  if (a1 != 4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A4310;
    v44 = sub_26139F2CC();
    *(inited + 32) = sub_26139F28C();
    *(inited + 40) = v45;
    (*(v5 + 104))(v8, *MEMORY[0x277D43838], v4);
    v46 = sub_26139FA9C();
    (*(v5 + 8))(v8, v4);
    *(inited + 72) = MEMORY[0x277D83B88];
    *(inited + 48) = v46;
    sub_261259E78(inited);
    swift_setDeallocating();
    sub_26124C718(inited + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
    objc_allocWithZone(v44);
    return sub_26139F2DC();
  }

  v28 = sub_2613A197C();
  v30 = v29;
  v31 = sub_26129B5FC();
  sub_26125A870(v31, v13, &qword_27FE9F560, &qword_2613A3CB0);
  v32 = sub_2613A124C();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v13, 1, v32) == 1)
  {
    sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v56 = sub_2613A122C();
    v57 = sub_2613A1D7C();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = v28;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v107 = v60;
      *v59 = 136315138;
      *(v59 + 4) = sub_26124C11C(v58, v30, &v107);
      _os_log_impl(&dword_261243000, v56, v57, "Check Merchant | server error: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v60);
      MEMORY[0x266701350](v60, -1, -1);
      v61 = v59;
      v28 = v58;
      MEMORY[0x266701350](v61, -1, -1);
    }

    (*(v33 + 8))(v13, v32);
  }

  v62 = v106[3];
  if (sub_2613A0F0C() == v28 && v63 == v30)
  {
    goto LABEL_31;
  }

  v64 = sub_2613A241C();

  if (v64)
  {
    goto LABEL_33;
  }

  if (sub_2613A0EAC() == v28 && v71 == v30)
  {
    goto LABEL_31;
  }

  v72 = sub_2613A241C();

  if (v72)
  {
    goto LABEL_33;
  }

  if (sub_2613A0E9C() == v28 && v73 == v30)
  {
    goto LABEL_31;
  }

  v74 = sub_2613A241C();

  if (v74)
  {
    goto LABEL_33;
  }

  if (sub_2613A0EBC() == v28 && v75 == v30)
  {
    goto LABEL_31;
  }

  v76 = sub_2613A241C();

  if (v76)
  {
    goto LABEL_33;
  }

  if (sub_2613A0EDC() == v28 && v77 == v30)
  {
    goto LABEL_31;
  }

  v78 = sub_2613A241C();

  if (v78)
  {
    goto LABEL_33;
  }

  if (sub_2613A0ECC() == v28 && v79 == v30)
  {
    goto LABEL_31;
  }

  v80 = sub_2613A241C();

  if (v80)
  {
    goto LABEL_33;
  }

  if (sub_2613A0E8C() == v28 && v81 == v30)
  {
LABEL_31:

LABEL_33:

    v65 = objc_allocWithZone(sub_26139F2CC());
    return sub_26139F2DC();
  }

  v82 = sub_2613A241C();

  if (v82)
  {
    goto LABEL_33;
  }

  if (sub_2613A0F2C() != v28 || v83 != v30)
  {
    v84 = sub_2613A241C();

    if (v84)
    {
      goto LABEL_65;
    }

    if (*(sub_2613A0EEC() + 16))
    {
      sub_26124E5EC(v28, v30);
      v95 = v94;

      if (v95)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
        v96 = swift_initStackObject();
        *(v96 + 16) = xmmword_2613A4310;
        v97 = sub_26139F2CC();
        *(v96 + 32) = sub_26139F27C();
        *(v96 + 40) = v98;
        v99 = sub_2613A0EEC();
        *(v96 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9FBA0, &qword_2613A9B30);
        if (*(v99 + 16))
        {
          v100 = sub_26124E5EC(v28, v30);
          v102 = v101;

          if (v102)
          {
            v103 = (*(v99 + 56) + 16 * v100);
            v105 = *v103;
            v104 = v103[1];

LABEL_78:
            *(v96 + 48) = v105;
            *(v96 + 56) = v104;
            sub_261259E78(v96);
            swift_setDeallocating();
            sub_26124C718(v96 + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
            objc_allocWithZone(v97);
            return sub_26139F2DC();
          }
        }

        else
        {
        }

        v105 = 0;
        v104 = 0;
        goto LABEL_78;
      }
    }

    else
    {
    }

LABEL_37:
    v69 = objc_allocWithZone(sub_26139F2CC());
    return sub_26139F2DC();
  }

LABEL_65:

  v85 = sub_261290BB0(*(*(v62 + 24) + 96), 12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
  v86 = swift_initStackObject();
  *(v86 + 16) = xmmword_2613A4310;
  if (v85)
  {
    v87 = sub_26139F2CC();
    *(v86 + 32) = sub_26139F27C();
    v88 = v86 + 32;
    *(v86 + 40) = v89;
    v90 = sub_2613A0F4C();
  }

  else
  {
    v87 = sub_26139F2CC();
    *(v86 + 32) = sub_26139F27C();
    v88 = v86 + 32;
    *(v86 + 40) = v92;
    v90 = sub_2613A0F5C();
  }

  *(v86 + 72) = MEMORY[0x277D837D0];
  *(v86 + 48) = v90;
  *(v86 + 56) = v91;
  sub_261259E78(v86);
  swift_setDeallocating();
  sub_26124C718(v88, &qword_27FE9F2F0, &qword_2613A4BD0);
  v93 = objc_allocWithZone(v87);
  return sub_26139F2DC();
}

uint64_t sub_261349F44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0750, &qword_2613ACF00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_26134A018(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  v6 = v5;
  v70 = a4;
  v71 = a5;
  v69 = a3;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v73 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v69 - v13;
  v15 = sub_26139FFEC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_continuityDisplayMonitor;
  type metadata accessor for ContinuityDisplayMonitor();
  *&v5[v20] = sub_2612FC220();
  v21 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0730, &unk_2613ACEC8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0738, &unk_2613ACED8);
  v24 = type metadata accessor for IdentityUIManager(0);
  *&v6[v21] = sub_26127B4E0(2u, v22, v23, v24);
  v25 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_regUIManager;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0740, &unk_2613ACEE8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0748, &qword_2613ACEF8);
  v28 = type metadata accessor for IdentityRegUIManager(0);
  *&v6[v25] = sub_26127B4E0(3u, v26, v27, v28);
  v29 = &v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_startReader];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readerReadyListener];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = &v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareSessionID];
  *v32 = 0;
  *(v32 + 1) = 0;
  *&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError] = 0;
  v33 = &v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareHandler];
  *v33 = 0;
  *(v33 + 1) = 0;
  *&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_registrationTask] = 0;
  v34 = &v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask];
  *v34 = 0;
  *(v34 + 1) = 0;
  *&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError] = 0;
  v35 = &v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler];
  *v35 = 0;
  *(v35 + 1) = 0;
  *&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestResponse] = 0;
  v36 = &v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestHandler];
  *v36 = 0;
  *(v36 + 1) = 0;
  *&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestResponse] = 0;
  *&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask] = 0;
  v37 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
  v38 = type metadata accessor for IdentityAnalyticsTransaction(0);
  (*(*(v38 - 8) + 56))(&v6[v37], 1, 1, v38);
  v39 = a1;
  sub_26139FFFC();
  (*(v16 + 32))(&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_entitlements], v19, v15);
  type metadata accessor for IdentityReaderAdapter();
  [v39 auditToken];
  *&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter] = sub_26137D498(v76, *(&v76 + 1), v77, *(&v77 + 1));
  *&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_connection] = v39;
  v40 = v39;
  sub_2612D5DB4(a2, v69, v70, v71, &v76);
  v41 = &v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_terminalContext];
  v42 = v77;
  *v41 = v76;
  *(v41 + 1) = v42;
  *(v41 + 2) = v78;
  type metadata accessor for IdentityAnalyticsManager();
  *&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsManager] = sub_2612D7F84();
  *&v6[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsSessions] = sub_26135ABAC(MEMORY[0x277D84F90]);
  v75.receiver = v6;
  v75.super_class = ObjectType;
  v43 = objc_msgSendSuper2(&v75, sel_init);
  sub_26134A760();
  v44 = sub_26129BA7C();
  sub_26125A870(v44, v14, &qword_27FE9F560, &qword_2613A3CB0);
  v45 = sub_2613A124C();
  v46 = *(v45 - 8);
  v47 = *(v46 + 48);
  if (v47(v14, 1, v45) == 1)
  {
    sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v48 = sub_2613A122C();
    v49 = sub_2613A1D7C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      ObjectType = v40;
      v51 = v50;
      v71 = swift_slowAlloc();
      v74 = v71;
      *v51 = 136315650;
      v52 = sub_2612E6298();
      v70 = v48;
      LODWORD(v69) = v49;
      v53 = *v52;
      v54 = v52[1];

      v55 = sub_26124C11C(v53, v54, &v74);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      v56 = sub_2612E62A4();
      v57 = *v56;
      v58 = v56[1];

      v59 = sub_26124C11C(v57, v58, &v74);

      *(v51 + 14) = v59;
      *(v51 + 22) = 1024;
      v60 = sub_2613A0C2C();
      LOBYTE(v58) = v60();

      *(v51 + 24) = v58 & 1;
      v48 = v70;
      _os_log_impl(&dword_261243000, v70, v69, "\nCOMPONENTS: ------------------------------------\nmd: %s (%s)\ninternal: %{BOOL}d\n-------------------------------------------------", v51, 0x1Cu);
      v61 = v71;
      swift_arrayDestroy();
      MEMORY[0x266701350](v61, -1, -1);
      v62 = v51;
      v40 = ObjectType;
      MEMORY[0x266701350](v62, -1, -1);
    }

    (*(v46 + 8))(v14, v45);
  }

  v63 = v44;
  v64 = v73;
  sub_26125A870(v63, v73, &qword_27FE9F560, &qword_2613A3CB0);
  if (v47(v64, 1, v45) == 1)
  {

    sub_26124C718(v64, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v65 = sub_2613A122C();
    v66 = sub_2613A1D9C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_261243000, v65, v66, "Created", v67, 2u);
      MEMORY[0x266701350](v67, -1, -1);
    }

    (*(v46 + 8))(v64, v45);
  }

  return v43;
}

uint64_t sub_26134A760()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07A0, &qword_2613AD170);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v13 = *(v7 + 16);
  v13(&v19 - v11, *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter) + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderAdapter_events, v6);
  v14 = sub_2613A1C1C();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13(v10, v12, v6);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  (*(v7 + 32))(v17 + v16, v10, v6);
  *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  sub_261266800(0, 0, v5, &unk_2613AD180, v17);

  return (*(v7 + 8))(v12, v6);
}

id sub_26134A9E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsSessions;
  swift_beginAccess();
  v8 = *&v1[v7];
  *&v1[v7] = MEMORY[0x277D84F98];

  v9 = sub_26129BA7C();
  sub_26125A870(v9, v6, &qword_27FE9F560, &qword_2613A3CB0);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v6, 1, v10) == 1)
  {
    sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v12 = sub_2613A122C();
    v13 = sub_2613A1D9C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_261243000, v12, v13, "Destroyed", v14, 2u);
      MEMORY[0x266701350](v14, -1, -1);
    }

    (*(v11 + 8))(v6, v10);
  }

  v17.receiver = v1;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_dealloc);
}

void sub_26134AE24(int a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v45 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - v10;
  v12 = sub_26129BA7C();
  sub_26125A870(v12, v11, &qword_27FE9F560, &qword_2613A3CB0);
  v13 = sub_2613A124C();
  v14 = *(v13 - 8);
  v15 = v14 + 48;
  v16 = *(v14 + 48);
  if (v16(v11, 1, v13) == 1)
  {
    sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v47 = v14 + 48;
    LODWORD(v46) = a1;
    v17 = v6;
    v18 = v9;
    v19 = v13;
    v20 = v16;
    v21 = v12;
    v22 = v14;
    v23 = sub_26125A798();
    v24 = sub_261291AA8();
    v25 = v23 & 1;
    v14 = v22;
    v12 = v21;
    v16 = v20;
    v13 = v19;
    v9 = v18;
    v6 = v17;
    LOBYTE(a1) = v46;
    v15 = v47;
    sub_26129BC3C(v25, v49, 0xD00000000000001FLL, 0x80000002613BD4B0, v24, v26);

    (*(v14 + 8))(v11, v13);
  }

  sub_26125A870(v12, v9, &qword_27FE9F560, &qword_2613A3CB0);
  v27 = v16(v9, 1, v13);
  v48 = v6;
  if (v27 == 1)
  {
    sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v28 = sub_2613A122C();
    v29 = sub_2613A1D8C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v46 = v14;
      v31 = v30;
      v32 = swift_slowAlloc();
      v45 = v12;
      v33 = v32;
      v52[0] = v32;
      *v31 = 136315138;
      v34 = sub_261274710(a1);
      v47 = v15;
      v36 = v9;
      v37 = sub_26124C11C(v34, v35, v52);

      *(v31 + 4) = v37;
      v9 = v36;
      _os_log_impl(&dword_261243000, v28, v29, "UI was invalidated with error: [%s]", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      v38 = v33;
      v12 = v45;
      MEMORY[0x266701350](v38, -1, -1);
      v39 = v31;
      v14 = v46;
      MEMORY[0x266701350](v39, -1, -1);
    }

    (*(v14 + 8))(v9, v13);
  }

  v54 = a1;
  v53 = 1;
  sub_26135AD64();
  sub_2613A1B1C();
  sub_2613A1B1C();
  if (v52[0] == v50 && v52[1] == v51)
  {
  }

  else
  {
    v40 = sub_2613A241C();

    if ((v40 & 1) == 0)
    {
      sub_26135B36C();
      return;
    }
  }

  v41 = v48;
  sub_26125A870(v12, v48, &qword_27FE9F560, &qword_2613A3CB0);
  if (v16(v41, 1, v13) == 1)
  {
    sub_26124C718(v41, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v42 = sub_2613A122C();
    v43 = sub_2613A1D8C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_261243000, v42, v43, "ERROR xpc error, IdentityUI cannot be presented, cleaning up transaction", v44, 2u);
      MEMORY[0x266701350](v44, -1, -1);
    }

    (*(v14 + 8))(v41, v13);
  }

  sub_26134B330(v49);
}

void sub_26134B330(char *a1)
{
  v2 = sub_26139F30C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v18 = sub_26139FFDC();
  v19 = sub_26129BA7C();
  if (v18)
  {
    sub_26125A870(v19, v17, &qword_27FE9F560, &qword_2613A3CB0);
    v20 = sub_2613A124C();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v17, 1, v20) == 1)
    {
      sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v24 = sub_2613A122C();
      v25 = sub_2613A1D9C();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_261243000, v24, v25, "Executing host app cancel read request", v26, 2u);
        MEMORY[0x266701350](v26, -1, -1);
      }

      (*(v21 + 8))(v17, v20);
    }

    sub_26137C1FC();
    sub_26134D8A0();
    v27 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask;
    if (*&a1[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask])
    {
      v28 = *&a1[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask];

      sub_2613A1C9C();

      v29 = *&a1[v27];
    }

    *&a1[v27] = 0;

    [*&a1[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager] updateUIState_];
    v34 = sub_2613A1C1C();
    (*(*(v34 - 8) + 56))(v10, 1, 1, v34);
    v35 = swift_allocObject();
    v35[2] = 0;
    v35[3] = 0;
    v35[4] = a1;
    v35[5] = nullsub_1;
    v35[6] = 0;
    v36 = a1;
    sub_261266800(0, 0, v10, &unk_2613AD130, v35);
  }

  else
  {
    sub_26125A870(v19, v15, &qword_27FE9F560, &qword_2613A3CB0);
    v22 = sub_2613A124C();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v15, 1, v22) == 1)
    {
      sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v30 = sub_2613A122C();
      v31 = sub_2613A1D8C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_261243000, v30, v31, "no entitlement", v32, 2u);
        MEMORY[0x266701350](v32, -1, -1);
      }

      (*(v23 + 8))(v15, v22);
    }

    (*(v3 + 104))(v6, *MEMORY[0x277D43638], v2);
    sub_26139F33C();
    sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0]);
    v33 = swift_allocError();
    sub_26139F31C();
  }
}

uint64_t sub_26134B8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07A8, &qword_2613AD188);
  v5[10] = v7;
  v8 = *(v7 - 8);
  v5[11] = v8;
  v9 = *(v8 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26134B9A8);
}

uint64_t sub_26134B9A8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07A0, &qword_2613AD170);
  sub_2613A1C4C();
  swift_beginAccess();
  *(v0 + 49) = 1;
  *(v0 + 104) = 0;
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_26134BA9C;
  v6 = *(v0 + 96);
  v7 = *(v0 + 80);

  return MEMORY[0x2822003E8](v0 + 40, 0, 0, v7);
}

uint64_t sub_26134BA9C()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26134BB98);
}

uint64_t sub_26134BB98()
{
  v31 = v0;
  v1 = *(v0 + 40);
  if (*(v0 + 48))
  {
    v2 = *(v0 + 72);
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 72);
    v6 = sub_26129BA7C();
    sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
    v7 = sub_2613A124C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v5, 1, v7) == 1)
    {
      sub_26124C718(*(v0 + 72), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v9 = *(v0 + 72);
      v10 = sub_2613A122C();
      v11 = sub_2613A1D9C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30 = v29;
        *v12 = 136315138;
        v13 = sub_26139F91C();
        v15 = sub_26124C11C(v13, v14, &v30);

        *(v12 + 4) = v15;
        _os_log_impl(&dword_261243000, v10, v11, "Updating UI state with event: [ %s ]", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        MEMORY[0x266701350](v29, -1, -1);
        MEMORY[0x266701350](v12, -1, -1);
      }

      (*(v8 + 8))(*(v0 + 72), v7);
    }

    v16 = *(v0 + 64);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = sub_26139F92C();
      if (v19 == sub_26139F92C())
      {
        v20 = *&v18[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readerReadyListener];
        if (v20)
        {
          v21 = *&v18[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readerReadyListener + 8];

          v20(v22);
          sub_26124A228(v20);
        }
      }

      v23 = *(v0 + 49);
      v24 = *(v0 + 104);
      [*&v18[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager] updateUIState_];
      sub_26137C34C(v24, v23, v1);
    }

    *(v0 + 49) = 0;
    *(v0 + 104) = v1;
    v25 = *(MEMORY[0x277D85798] + 4);
    v26 = swift_task_alloc();
    *(v0 + 112) = v26;
    *v26 = v0;
    v26[1] = sub_26134BA9C;
    v27 = *(v0 + 96);
    v28 = *(v0 + 80);

    return MEMORY[0x2822003E8](v0 + 40, 0, 0, v28);
  }
}

uint64_t sub_26134BF00(int a1)
{
  v33 = a1;
  v1 = sub_26139F30C();
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v1);
  v38 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_26139F64C();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v35 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v13 = &v32[-v12];
  v14 = sub_26129BA7C();
  sub_26125A870(v14, v13, &qword_27FE9F560, &qword_2613A3CB0);
  v15 = sub_2613A124C();
  v39 = *(v15 - 8);
  v16 = *(v39 + 48);
  if (v16(v13, 1, v15) == 1)
  {
    sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v17 = sub_2613A122C();
    v18 = sub_2613A1D9C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_261243000, v17, v18, "Checking prepare preconditions", v19, 2u);
      MEMORY[0x266701350](v19, -1, -1);
    }

    (*(v39 + 8))(v13, v15);
  }

  sub_26139F54C();
  sub_26139F5DC();
  v20 = v41;
  v21 = *(v40 + 8);
  v21(v7, v41);
  if ((sub_26139FFDC() & 1) == 0)
  {
    v25 = v14;
    v26 = v35;
    sub_26125A870(v25, v35, &qword_27FE9F560, &qword_2613A3CB0);
    if (v16(v26, 1, v15) == 1)
    {
      sub_26124C718(v26, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v27 = sub_2613A122C();
      v28 = sub_2613A1D8C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_261243000, v27, v28, "No entitlement", v29, 2u);
        v30 = v29;
        v20 = v41;
        MEMORY[0x266701350](v30, -1, -1);
      }

      (*(v39 + 8))(v26, v15);
    }

    v24 = MEMORY[0x277D43638];
    goto LABEL_18;
  }

  v22 = v34;
  v23 = sub_261377244();
  if (!v22 && (v33 & 1) != 0 && (((*(**(v42 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager) + 192))(v23) & 1) != 0 || *(v42 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask)))
  {
    v24 = MEMORY[0x277D43640];
LABEL_18:
    (*(v36 + 104))(v38, *v24, v37);
    sub_26139F33C();
    sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0]);
    swift_allocError();
    sub_26139F31C();
    swift_willThrow();
  }

  sub_26139F54C();
  sub_26139F5BC();
  return (v21)(v7, v20);
}

void sub_26134C43C(uint64_t a1, void *a2)
{
  v39 = a1;
  v3 = sub_26139F30C();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26139F64C();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v40 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  v16 = sub_26129BA7C();
  sub_26125A870(v16, v15, &qword_27FE9F560, &qword_2613A3CB0);
  v17 = sub_2613A124C();
  v45 = *(v17 - 8);
  v18 = *(v45 + 48);
  if (v18(v15, 1, v17) == 1)
  {
    sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v38 = v6;
    v19 = sub_2613A122C();
    v20 = sub_2613A1D9C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v37 = a2;
      v22 = v21;
      *v21 = 0;
      _os_log_impl(&dword_261243000, v19, v20, "Checking read preconditions", v21, 2u);
      v23 = v22;
      a2 = v37;
      MEMORY[0x266701350](v23, -1, -1);
    }

    (*(v45 + 8))(v15, v17);
    v6 = v38;
  }

  sub_26139F54C();
  sub_26139F5DC();
  v24 = *(v46 + 8);
  v46 += 8;
  v24(v9, v6);
  if (!sub_26139FFBC())
  {
    v29 = v16;
    v30 = v40;
    sub_26125A870(v29, v40, &qword_27FE9F560, &qword_2613A3CB0);
    if (v18(v30, 1, v17) == 1)
    {
      sub_26124C718(v30, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v31 = sub_2613A122C();
      v32 = sub_2613A1D8C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = a2;
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_261243000, v31, v32, "No entitlement", v34, 2u);
        v35 = v34;
        a2 = v33;
        MEMORY[0x266701350](v35, -1, -1);
      }

      (*(v45 + 8))(v40, v17);
    }

    v28 = MEMORY[0x277D43638];
    goto LABEL_18;
  }

  v25 = v44;
  v26 = sub_26137725C();
  if (!v25)
  {
    v27 = v39;
    if (*(v39 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask) || ((*(**(v39 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager) + 192))(v26) & 1) != 0 || *(v27 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask))
    {
      v28 = MEMORY[0x277D43640];
LABEL_18:
      (*(v41 + 104))(v43, *v28, v42);
      sub_26139F33C();
      sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0]);
      swift_allocError();
      sub_26139F31C();
      swift_willThrow();
    }
  }

  sub_26139F54C();
  sub_26139F5BC();
  v24(v9, v6);
}

void sub_26134C998(uint64_t a1, void *a2)
{
  v39 = a1;
  v3 = sub_26139F30C();
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26139F64C();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v45 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - v14;
  v16 = sub_26129BA7C();
  sub_26125A870(v16, v15, &qword_27FE9F560, &qword_2613A3CB0);
  v17 = sub_2613A124C();
  v44 = *(v17 - 8);
  v18 = *(v44 + 48);
  if (v18(v15, 1, v17) == 1)
  {
    sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v38 = v6;
    v19 = sub_2613A122C();
    v20 = sub_2613A1D9C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v37 = a2;
      v22 = v21;
      *v21 = 0;
      _os_log_impl(&dword_261243000, v19, v20, "Checking read preconditions", v21, 2u);
      v23 = v22;
      a2 = v37;
      MEMORY[0x266701350](v23, -1, -1);
    }

    (*(v44 + 8))(v15, v17);
    v6 = v38;
  }

  sub_26139F54C();
  sub_26139F5DC();
  v24 = *(v46 + 8);
  v46 += 8;
  v24(v9, v6);
  if ((sub_26139FFCC() & 1) == 0)
  {
    v29 = v16;
    v30 = v45;
    sub_26125A870(v29, v45, &qword_27FE9F560, &qword_2613A3CB0);
    if (v18(v30, 1, v17) == 1)
    {
      sub_26124C718(v30, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v31 = sub_2613A122C();
      v32 = sub_2613A1D8C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = a2;
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_261243000, v31, v32, "No entitlement", v34, 2u);
        v35 = v34;
        a2 = v33;
        MEMORY[0x266701350](v35, -1, -1);
      }

      (*(v44 + 8))(v45, v17);
    }

    v28 = MEMORY[0x277D43638];
    goto LABEL_18;
  }

  v25 = v40;
  v26 = sub_26137725C();
  if (!v25)
  {
    v27 = v39;
    if (*(v39 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask) || ((*(**(v39 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager) + 192))(v26) & 1) != 0 || *(v27 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask))
    {
      v28 = MEMORY[0x277D43640];
LABEL_18:
      (*(v41 + 104))(v43, *v28, v42);
      sub_26139F33C();
      sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0]);
      swift_allocError();
      sub_26139F31C();
      swift_willThrow();
    }
  }

  sub_26139F54C();
  sub_26139F5BC();
  v24(v9, v6);
}

uint64_t sub_26134CEE8()
{
  v1 = sub_26139F30C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_continuityDisplayMonitor);
  if (sub_2612FC1C0())
  {
    v7 = MEMORY[0x277D436B0];
  }

  else
  {
    result = sub_2612FBFC4();
    if ((result & 1) == 0)
    {
      return result;
    }

    v7 = MEMORY[0x277D43640];
  }

  (*(v2 + 104))(v5, *v7, v1);
  sub_26139F33C();
  sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0]);
  swift_allocError();
  sub_26139F31C();
  return swift_willThrow();
}

uint64_t sub_26134D058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a1;
  v46 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0770, &qword_2613AD0C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = &v33 - v6;
  v41 = sub_26139FFAC();
  v38 = *(v41 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v41);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_26139FF3C();
  v9 = *(v36 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v36);
  v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_26139FEEC();
  v40 = *(v42 - 8);
  v12 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_26139F64C();
  v15 = *(v35 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v35);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v33 - v21;
  v23 = sub_26129BA7C();
  sub_26125A870(v23, v22, &qword_27FE9F560, &qword_2613A3CB0);
  v24 = sub_2613A124C();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v22, 1, v24) == 1)
  {
    sub_26124C718(v22, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v34 = a2;
    v26 = sub_2613A122C();
    v27 = sub_2613A1D9C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_261243000, v26, v27, "Show identity UI", v28, 2u);
      MEMORY[0x266701350](v28, -1, -1);
    }

    (*(v25 + 8))(v22, v24);
    a2 = v34;
  }

  sub_26139F49C();
  sub_26139F5DC();
  v29 = *(v15 + 8);
  v30 = v35;
  v29(v18, v35);
  v31 = *(v43 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager);
  (*(*v31 + 376))();
  (*(v9 + 16))(v37, v44, v36);
  (*(v38 + 16))(v39, a2, v41);
  sub_26125A870(v46, v45, &qword_27FEA0770, &qword_2613AD0C8);
  sub_26139FEDC();
  if (sub_2613A1CDC())
  {
    sub_26139F49C();
    sub_26139F5BC();
    v29(v18, v30);
  }

  else
  {
    (*(*v31 + 488))(v14);
  }

  return (*(v40 + 8))(v14, v42);
}

uint64_t sub_26134D5A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_26139F64C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v25 - v13;
  v15 = sub_26129BA7C();
  sub_26125A870(v15, v14, &qword_27FE9F560, &qword_2613A3CB0);
  v16 = sub_2613A124C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v26 = a1;
    v18 = sub_2613A122C();
    v19 = sub_2613A1D9C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v25 = a2;
      v21 = v20;
      *v20 = 0;
      _os_log_impl(&dword_261243000, v18, v19, "Show registration UI", v20, 2u);
      v22 = v21;
      a2 = v25;
      MEMORY[0x266701350](v22, -1, -1);
    }

    (*(v17 + 8))(v14, v16);
    a1 = v26;
  }

  sub_26139F55C();
  sub_26139F5DC();
  (*(v7 + 8))(v10, v6);
  v23 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_regUIManager);
  (*(*v23 + 376))(v3);
  return (*(*v23 + 488))(a1, a2, *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_connection));
}

void sub_26134D8A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  v6 = sub_26129BA7C();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "Executing cleanup", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  v12 = (v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask);
  v13 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask);
  v14 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask + 8);
  *v12 = 0;
  v12[1] = 0;
  sub_26124A228(v13);
  v15 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError);
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError) = 0;

  v16 = (v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler);
  v17 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler);
  v18 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler + 8);
  *v16 = 0;
  v16[1] = 0;
  sub_26124A228(v17);
  v19 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestResponse);
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestResponse) = 0;

  v20 = (v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestHandler);
  v21 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestHandler);
  v22 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestHandler + 8);
  *v20 = 0;
  v20[1] = 0;
  sub_26124A228(v21);
  v23 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestResponse);
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestResponse) = 0;
}

void sub_26134DAC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v82 - v2;
  v90 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v4 = *(v90 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v90);
  v85 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26139F64C();
  v88 = *(v7 - 8);
  v89 = v7;
  v8 = *(v88 + 64);
  MEMORY[0x28223BE20](v7);
  v87 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2613A01BC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v83 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v84 = &v82 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v91 = &v82 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v82 - v23;
  v92 = sub_26129BA7C();
  sub_26125A870(v92, v24, &qword_27FE9F560, &qword_2613A3CB0);
  v25 = sub_2613A124C();
  v26 = *(v25 - 8);
  v93 = *(v26 + 48);
  if (v93(v24, 1, v25) == 1)
  {
    sub_26124C718(v24, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v82 = v11;
    v27 = v10;
    v28 = v3;
    v29 = v25;
    v30 = sub_2613A122C();
    v31 = sub_2613A1D9C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v86 = v4;
      v33 = v26;
      v34 = v32;
      *v32 = 0;
      _os_log_impl(&dword_261243000, v30, v31, "Returning result to host app", v32, 2u);
      v35 = v34;
      v26 = v33;
      v4 = v86;
      MEMORY[0x266701350](v35, -1, -1);
    }

    v25 = v29;
    (*(v26 + 8))(v24, v29);
    v3 = v28;
    v10 = v27;
    v11 = v82;
  }

  v36 = *&v94[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler];
  if (v36)
  {
    v37 = *&v94[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler + 8];
    v38 = *&v94[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestResponse];
    if (v38)
    {
      v39 = *&v94[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler];
      v84 = *&v94[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler + 8];
      sub_26124A17C(v39);
      v83 = v38;
      sub_2613A01EC();
      v40 = (*(v11 + 88))(v14, v10);
      v41 = *MEMORY[0x277D43BE8];
      v86 = v4;
      if (v40 == v41)
      {
        (*(v11 + 96))(v14, v10);
        v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0798, &qword_2613AD9F0) + 48);
        v43 = v87;
        sub_26139F57C();
        sub_26139F5BC();
        (*(v88 + 8))(v43, v89);
        v44 = sub_2613A15AC();
        (*(*(v44 - 8) + 8))(&v14[v42], v44);
        v45 = sub_26139FD9C();
        (*(*(v45 - 8) + 8))(v14, v45);
      }

      else
      {
        v53 = v40;
        v54 = v26;
        v55 = v25;
        v56 = *MEMORY[0x277D43BE0];
        (*(v11 + 8))(v14, v10);
        v57 = v53 == v56;
        v25 = v55;
        v26 = v54;
        if (v57)
        {
          v58 = v87;
          sub_26139F5AC();
          sub_26139F5BC();
          (*(v88 + 8))(v58, v89);
        }
      }

      v59 = v91;
      sub_26125A870(v92, v91, &qword_27FE9F560, &qword_2613A3CB0);
      if (v93(v59, 1, v25) == 1)
      {
        sub_26124C718(v59, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v60 = sub_2613A122C();
        v61 = sub_2613A1D9C();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_261243000, v60, v61, "Returning read data response", v62, 2u);
          MEMORY[0x266701350](v62, -1, -1);
        }

        (*(v26 + 8))(v59, v25);
      }

      v63 = v83;
      v36(v38, 0);

      v64 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
      v65 = v94;
      swift_beginAccess();
      if ((*(v86 + 48))(&v65[v64], 1, v90))
      {
        sub_26124A228(v36);
      }

      else
      {
        v66 = v85;
        sub_26135E584(&v94[v64], v85);
        v67 = sub_2613A01FC();
        sub_2612DC410(v67, v68);
        sub_26124A228(v36);

        sub_26135E528(v66);
      }
    }

    else
    {
      v52 = *&v94[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler + 8];
      sub_26124A17C(*&v94[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler]);
      sub_26135ADB8(v94, v36, v52, &unk_2873BDA68, &unk_2613AD158);
      sub_26124A228(v36);
    }
  }

  else
  {
    v46 = *&v94[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestHandler];
    if (v46)
    {
      v47 = *&v94[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestHandler + 8];
      v48 = *&v94[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestResponse];
      if (v48)
      {
        v49 = v84;
        sub_26125A870(v92, v84, &qword_27FE9F560, &qword_2613A3CB0);
        v50 = v93(v49, 1, v25);
        sub_26124A17C(v46);
        v51 = v48;
        if (v50 == 1)
        {
          sub_26124C718(v49, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v70 = v25;
          v71 = sub_2613A122C();
          v72 = sub_2613A1D9C();
          if (os_log_type_enabled(v71, v72))
          {
            v73 = swift_slowAlloc();
            *v73 = 0;
            _os_log_impl(&dword_261243000, v71, v72, "Returning display only response", v73, 2u);
            MEMORY[0x266701350](v73, -1, -1);
          }

          (*(v26 + 8))(v49, v70);
        }

        v74 = v51;
        v46(v48, 0);

        sub_26124A228(v46);
      }

      else
      {
        sub_26124A17C(v46);
        sub_26135ADB8(v94, v46, v47, &unk_2873BDA90, &unk_2613AD160);
        sub_26124A228(v46);
      }
    }

    else
    {
      v69 = v83;
      sub_26125A870(v92, v83, &qword_27FE9F560, &qword_2613A3CB0);
      if (v93(v69, 1, v25) == 1)
      {
        sub_26124C718(v69, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v75 = sub_2613A122C();
        v76 = sub_2613A1D8C();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&dword_261243000, v75, v76, "No error handler to process read response", v77, 2u);
          MEMORY[0x266701350](v77, -1, -1);
        }

        (*(v26 + 8))(v69, v25);
      }

      v78 = sub_2613A1C1C();
      (*(*(v78 - 8) + 56))(v3, 1, 1, v78);
      v79 = swift_allocObject();
      v79[2] = 0;
      v79[3] = 0;
      v80 = v94;
      v79[4] = v94;
      v81 = v80;
      sub_261266800(0, 0, v3, &unk_2613AD140, v79);
    }
  }

  sub_26134D8A0();
}

uint64_t sub_26134E5CC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter);
  v0[3] = v1;
  v2 = *v1 + 264;
  v0[4] = *v2;
  v0[5] = v2 & 0xFFFFFFFFFFFFLL | 0xF337000000000000;
  return MEMORY[0x2822009F8](sub_26135F9EC);
}

uint64_t sub_26134E61C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26139F30C();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0790, &unk_2613AD120);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v53 - v17;
  v19 = sub_26139F33C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v53 - v25;
  v60 = a1;
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v28 = swift_dynamicCast();
  v29 = *(v20 + 56);
  if (v28)
  {
    v29(v18, 0, 1, v19);
    v30 = *(v20 + 32);
    v30(v26, v18, v19);
    v31 = sub_26129BA7C();
    sub_26125A870(v31, v14, &qword_27FE9F560, &qword_2613A3CB0);
    v32 = sub_2613A124C();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v14, 1, v32) == 1)
    {
      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v58 = v30;
      v59 = a2;
      v55 = *(v20 + 16);
      v55(v24, v26, v19);
      v37 = sub_2613A122C();
      v56 = sub_2613A1D8C();
      v57 = v37;
      if (os_log_type_enabled(v37, v56))
      {
        v38 = swift_slowAlloc();
        v53 = v38;
        v54 = swift_slowAlloc();
        *v38 = 138412290;
        sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0]);
        swift_allocError();
        v55(v39, v24, v19);
        v40 = _swift_stdlib_bridgeErrorToNSError();
        (*(v20 + 8))(v24, v19);
        v41 = v53;
        v42 = v54;
        *(v53 + 1) = v40;
        *v42 = v40;
        v43 = v57;
        v44 = v41;
        _os_log_impl(&dword_261243000, v57, v56, "Execution failed with error: [ %@ ]", v41, 0xCu);
        sub_26124C718(v42, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v42, -1, -1);
        MEMORY[0x266701350](v44, -1, -1);
      }

      else
      {

        (*(v20 + 8))(v24, v19);
      }

      a2 = v59;
      (*(v33 + 8))(v14, v32);
      v30 = v58;
    }

    return (v30)(a2, v26, v19);
  }

  else
  {
    v29(v18, 1, 1, v19);
    sub_26124C718(v18, &qword_27FEA0790, &unk_2613AD120);
    v34 = sub_26129BA7C();
    sub_26125A870(v34, v12, &qword_27FE9F560, &qword_2613A3CB0);
    v35 = sub_2613A124C();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v12, 1, v35) == 1)
    {
      sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v45 = a1;
      v46 = sub_2613A122C();
      v47 = sub_2613A1D8C();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412290;
        v50 = a1;
        v51 = _swift_stdlib_bridgeErrorToNSError();
        *(v48 + 4) = v51;
        *v49 = v51;
        _os_log_impl(&dword_261243000, v46, v47, "Execution failed with unexpected error: [ %@ ]", v48, 0xCu);
        sub_26124C718(v49, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v49, -1, -1);
        MEMORY[0x266701350](v48, -1, -1);
      }

      (*(v36 + 8))(v12, v35);
    }

    (*(v58 + 13))(v7, *MEMORY[0x277D436D0], v59);
    return sub_26139F31C();
  }
}

uint64_t sub_26134ED18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_26139F33C();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = sub_2613A1BFC();
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26134EE74);
}

uint64_t sub_26134EE74()
{
  v1 = v0[7];
  sub_26134D8A0();
  sub_26134CEE8();
  v6 = (v0[3] + *v0[3]);
  v2 = *(v0[3] + 4);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_26134F1D0;
  v4 = v0[4];

  return v6();
}

uint64_t sub_26134F1D0()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26134F320);
  }

  else
  {
    v4 = v3[14];
    v5 = v3[10];
    v6 = v3[11];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_26134F320()
{
  v1 = *(v0 + 128);
  *(v0 + 16) = v1;
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 88);

    v6 = sub_26129BA7C();
    sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
    v7 = sub_2613A124C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v5, 1, v7) == 1)
    {
      sub_26124C718(*(v0 + 88), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v14 = *(v0 + 88);
      v15 = sub_2613A122C();
      v16 = sub_2613A1D9C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_261243000, v15, v16, "Request was cancelled by host app", v17, 2u);
        MEMORY[0x266701350](v17, -1, -1);
      }

      v18 = *(v0 + 88);

      (*(v8 + 8))(v18, v7);
    }

    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  }

  else
  {
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = *(v0 + 64);
    v13 = *(v0 + 40);
    v12 = *(v0 + 48);

    sub_26134E61C(v1, v9);
    sub_26135BC34(v9);
    v13(v9);

    (*(v10 + 8))(v9, v11);
  }

  v19 = *(v0 + 112);
  v20 = *(v0 + 80);
  v21 = *(v0 + 88);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_26134F598(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26134F638);
}

uint64_t sub_26134F638()
{
  sub_2613A1CEC();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_26134F724;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_26134FBC8(v4, v2);
}

uint64_t sub_26134F724()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26134F9B0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[8] = v4;
    *v4 = v3;
    v4[1] = sub_26134F89C;
    v5 = v3[4];
    v6 = v3[2];
    v7 = v3[3];

    return sub_261379ADC(v7, v6);
  }
}

uint64_t sub_26134F89C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_26134F9B0()
{
  v1 = v0[5];
  v2 = sub_26129BA7C();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[5], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = v0[7];
    v6 = v0[5];
    v7 = v5;
    v8 = sub_2613A122C();
    v9 = sub_2613A1D8C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[7];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v10;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_261243000, v8, v9, "Error requesting merchant: [ %@ ]", v11, 0xCu);
      sub_26124C718(v12, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v12, -1, -1);
      MEMORY[0x266701350](v11, -1, -1);
    }

    v15 = v0[5];

    (*(v4 + 8))(v15, v3);
  }

  v16 = v0[7];
  swift_willThrow();
  v17 = v0[7];
  v18 = v0[5];

  v19 = v0[1];

  return v19();
}

uint64_t sub_26134FBC8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_26139F64C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26134FCC4);
}

uint64_t sub_26134FCC4()
{
  v1 = v0[8];
  v2 = sub_26129BA7C();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[8], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = v0[8];
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "Loading merchant", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = v0[8];

    (*(v4 + 8))(v9, v3);
  }

  v11 = v0[6];
  v10 = v0[7];
  v13 = v0[4];
  v12 = v0[5];
  v14 = v0[3];
  sub_26139F59C();
  sub_26139F5DC();
  v15 = *(v11 + 8);
  v0[9] = v15;
  v0[10] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v10, v12);
  v16 = *(v13 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter);
  v17 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v18 = sub_2613A00FC();
  v20 = v19;
  v0[11] = v19;
  v21 = *(*v16 + 224);
  v26 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  v0[12] = v23;
  *v23 = v0;
  v23[1] = sub_26134FF94;
  v24 = v0[2];

  return v26(v24, v18, v20);
}

uint64_t sub_26134FF94()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_261350150;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_2613500B0;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2613500B0()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  sub_26139F59C();
  sub_26139F5BC();
  v2(v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_261350150()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = v0[5];

  sub_26139F59C();
  sub_26139F5BC();
  v4(v5, v6);

  v7 = v0[1];
  v8 = v0[13];

  return v7();
}

uint64_t sub_2613501F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v23 - v9;
  v11 = *&v0[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager];
  result = (*(*v11 + 192))(v8);
  if (result)
  {
    v13 = sub_26129BA7C();
    sub_26125A870(v13, v10, &qword_27FE9F560, &qword_2613A3CB0);
    v14 = sub_2613A124C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v10, 1, v14) == 1)
    {
      sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v16 = sub_2613A122C();
      v17 = sub_2613A1D9C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_261243000, v16, v17, "XPC is disconnecting and UI still visible", v18, 2u);
        MEMORY[0x266701350](v18, -1, -1);
      }

      (*(v15 + 8))(v10, v14);
    }

    [v11 updateUIState_];
    v19 = sub_26137C34C(0, 1, 17);
    (*(**&v1[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_regUIManager] + 456))(v19);
    v20 = sub_2613A1C1C();
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v1;
    v22 = v1;
    sub_261266800(0, 0, v5, &unk_2613ACF28, v21);
  }

  return result;
}

uint64_t sub_261350544()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter);
  v0[3] = v1;
  v2 = *v1 + 264;
  v0[4] = *v2;
  v0[5] = v2 & 0xFFFFFFFFFFFFLL | 0xF337000000000000;
  return MEMORY[0x2822009F8](sub_261350594);
}

uint64_t sub_261350594()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  (*(v0 + 32))();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_261350628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v6[6] = swift_task_alloc();
  v8 = sub_26139F64C();
  v6[7] = v8;
  v9 = *(v8 - 8);
  v6[8] = v9;
  v10 = *(v9 + 64) + 15;
  v6[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261350730);
}

uint64_t sub_261350730()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  sub_26139F4BC();
  sub_26139F5DC();
  v5 = *(v2 + 8);
  v0[10] = v5;
  v0[11] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = *(**(v4 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter) + 200);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_261350898;

  return v10();
}

uint64_t sub_261350898(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v7 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = sub_261350BB0;
  }

  else
  {
    v5 = sub_2613509AC;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2613509AC()
{
  v1 = v0[6];
  v2 = sub_26129BA7C();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[6], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = v0[6];
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "Returning identity configuration", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = v0[6];

    (*(v4 + 8))(v9, v3);
  }

  v10 = v0[13];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[9];
  v14 = v0[7];
  v16 = v0[3];
  v15 = v0[4];
  v17 = v10;
  v16(v10, 0);

  sub_26139F4BC();
  sub_26139F5BC();
  v12(v13, v14);
  v18 = v0[9];
  v19 = v0[5];
  v20 = v0[6];

  v21 = v0[1];

  return v21();
}

uint64_t sub_261350BB0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[7];
  v5 = v0[5];
  sub_26139F4BC();
  sub_26139F5BC();
  v2(v3, v4);
  v6 = sub_26129BA7C();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v0[5], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = v0[14];
    v10 = v0[5];
    v11 = v9;
    v12 = sub_2613A122C();
    v13 = sub_2613A1D8C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[14];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v14;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_261243000, v12, v13, "Could not retrieve reader configuration: [ %@ ]", v15, 0xCu);
      sub_26124C718(v16, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v16, -1, -1);
      MEMORY[0x266701350](v15, -1, -1);
    }

    v19 = v0[5];

    (*(v8 + 8))(v19, v7);
  }

  v20 = v0[14];
  v22 = v0[3];
  v21 = v0[4];
  sub_26139F33C();
  sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0]);
  v23 = swift_allocError();
  sub_26134E61C(v20, v24);
  v22(0, v23);

  v25 = v0[9];
  v26 = v0[5];
  v27 = v0[6];

  v28 = v0[1];

  return v28();
}

void sub_261350E98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, void (*a6)(uint64_t, uint64_t, void *), uint64_t a7)
{
  v68 = a2;
  v69 = a7;
  v64 = a5;
  v67 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0790, &unk_2613AD120);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v59 - v18;
  v20 = sub_26139F33C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v59 - v26;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v66 = a6;
    v30 = (Strong + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareHandler);
    swift_beginAccess();
    v31 = *v30;
    v32 = v30[1];
    *v30 = 0;
    v30[1] = 0;
    sub_26124A228(v31);
    v33 = &v29[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask];
    v34 = *&v29[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask];
    v35 = *&v29[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask + 8];
    *v33 = 0;
    *(v33 + 1) = 0;
    sub_26124A228(v34);
    v65 = a3;
    if (a3)
    {
      v70 = a3;
      v36 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
      v37 = swift_dynamicCast();
      (*(v21 + 56))(v19, v37 ^ 1u, 1, v20);
      if ((*(v21 + 48))(v19, 1, v20) != 1)
      {
        (*(v21 + 32))(v27, v19, v20);
        sub_26137A604(v64 & 1, v27);
        v38 = sub_26129BA7C();
        sub_26125A870(v38, v13, &qword_27FE9F560, &qword_2613A3CB0);
        v39 = sub_2613A124C();
        v40 = *(v39 - 8);
        if ((*(v40 + 48))(v13, 1, v39) == 1)
        {
          (*(v21 + 8))(v27, v20);
          sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
          v66(v67, v68, v65);
LABEL_17:

          return;
        }

        v63 = *(v21 + 16);
        v63(v25, v27, v20);
        v50 = sub_2613A122C();
        v64 = sub_2613A1D8C();
        if (os_log_type_enabled(v50, v64))
        {
          v51 = swift_slowAlloc();
          v62 = v39;
          v52 = v51;
          v61 = swift_slowAlloc();
          *v52 = 138412290;
          sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0]);
          swift_allocError();
          v60 = v50;
          v63(v53, v25, v20);
          v54 = _swift_stdlib_bridgeErrorToNSError();
          v63 = *(v21 + 8);
          (v63)(v25, v20);
          v55 = v52;
          v59 = v52;
          v56 = v61;
          v39 = v62;
          *(v55 + 1) = v54;
          *v56 = v54;
          v57 = v60;
          _os_log_impl(&dword_261243000, v60, v64, "Returning error during prepare: [ %@ ]", v55, 0xCu);
          sub_26124C718(v56, &qword_27FEA0410, &qword_2613AA780);
          MEMORY[0x266701350](v56, -1, -1);
          MEMORY[0x266701350](v59, -1, -1);

          (v63)(v27, v20);
        }

        else
        {

          v58 = *(v21 + 8);
          v58(v25, v20);
          v58(v27, v20);
        }

        v45 = v66;
        (*(v40 + 8))(v13, v39);
LABEL_16:
        v45(v67, v68, v65);
        goto LABEL_17;
      }
    }

    else
    {
      (*(v21 + 56))(v19, 1, 1, v20);
    }

    sub_26124C718(v19, &qword_27FEA0790, &unk_2613AD120);
    v41 = sub_26129BA7C();
    sub_26125A870(v41, v15, &qword_27FE9F560, &qword_2613A3CB0);
    v42 = sub_2613A124C();
    v43 = *(v42 - 8);
    v44 = (*(v43 + 48))(v15, 1, v42);
    v45 = v66;
    if (v44 == 1)
    {
      sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v46 = sub_2613A122C();
      v47 = sub_2613A1D9C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_261243000, v46, v47, "Returning session to host app", v48, 2u);
        v49 = v48;
        v45 = v66;
        MEMORY[0x266701350](v49, -1, -1);
      }

      (*(v43 + 8))(v15, v42);
    }

    goto LABEL_16;
  }
}

uint64_t sub_261351584(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 248) = a3;
  *(v4 + 256) = a4;
  *(v4 + 240) = a2;
  *(v4 + 392) = a1;
  v5 = sub_26139F30C();
  *(v4 + 264) = v5;
  v6 = *(v5 - 8);
  *(v4 + 272) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  v8 = sub_26139F33C();
  *(v4 + 296) = v8;
  v9 = *(v8 - 8);
  *(v4 + 304) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261351704);
}

uint64_t sub_261351704()
{
  v1 = *(v0 + 240);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 344) = Strong;
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter);
    *(v0 + 352) = v3;
    v4 = *(*v3 + 208);

    v18 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    *(v0 + 360) = v6;
    *v6 = v0;
    v6[1] = sub_2613518E0;
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v9 = *(v0 + 392);

    return v18(v8, v7, v9);
  }

  else
  {
    v12 = *(v0 + 328);
    v11 = *(v0 + 336);
    v14 = *(v0 + 312);
    v13 = *(v0 + 320);
    v16 = *(v0 + 280);
    v15 = *(v0 + 288);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_2613518E0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 360);
  v9 = *v3;
  v4[46] = a1;
  v4[47] = a2;
  v4[48] = v2;

  if (v2)
  {
    v6 = sub_261351D30;
  }

  else
  {
    v7 = v4[44];

    v6 = sub_261351A00;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_261351A00()
{
  v33 = v0;
  v1 = v0[42];
  v2 = sub_26129BA7C();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[42], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = v0[47];
    v6 = v0[42];

    v7 = sub_2613A122C();
    v8 = sub_2613A1D9C();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[46];
      v9 = v0[47];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_26124C11C(v10, v9, &v32);
      _os_log_impl(&dword_261243000, v7, v8, "Session [ %s ] is ready!", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x266701350](v12, -1, -1);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v4 + 8))(v0[42], v3);
  }

  v13 = v0[43] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareHandler;
  swift_beginAccess();
  v14 = *v13;
  if (*v13)
  {
    v16 = v0[46];
    v15 = v0[47];
    v17 = *(v13 + 8);

    sub_26124A17C(v14);
    v14(v16, v15, 0);
    sub_26124A228(v14);
  }

  v19 = v0[46];
  v18 = v0[47];
  v20 = v0[43];
  sub_261379734(v19, v18, v0[32] != 0, v0 + 2);
  v21 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsSessions;
  swift_beginAccess();
  v22 = *&v20[v21];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *&v20[v21];
  *&v20[v21] = 0x8000000000000000;
  sub_26135A79C(v0 + 1, v19, v18, isUniquelyReferenced_nonNull_native);

  *&v20[v21] = v32;
  swift_endAccess();

  v25 = v0[41];
  v24 = v0[42];
  v27 = v0[39];
  v26 = v0[40];
  v29 = v0[35];
  v28 = v0[36];

  v30 = v0[1];

  return v30();
}

uint64_t sub_261351D30()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 352);
  v3 = *(v0 + 312);
  v4 = *(v0 + 296);

  *(v0 + 232) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 312);
    v6 = *(v0 + 320);
    v8 = *(v0 + 296);
    v9 = *(v0 + 304);
    v10 = *(v0 + 392);

    (*(v9 + 32))(v6, v7, v8);
    if ((v10 & 1) == 0)
    {
      v11 = *(v0 + 320);
      v12 = *(v0 + 288);
      v13 = *(v0 + 264);
      v14 = *(v0 + 272);
      sub_26139F32C();
      if ((*(v14 + 88))(v12, v13) == *MEMORY[0x277D436C8])
      {
        v15 = *(v0 + 344);
        v16 = *(v0 + 320);
        v17 = *(v0 + 296);
        v18 = *(v0 + 304);
        v19 = *(v0 + 288);
        (*(*(v0 + 272) + 96))(v19, *(v0 + 264));
        sub_26134D5A8(*v19, v19[1]);

        (*(v18 + 8))(v16, v17);
LABEL_17:
        v42 = *(v0 + 232);
        goto LABEL_18;
      }

      (*(*(v0 + 272) + 8))(*(v0 + 288), *(v0 + 264));
    }

    v43 = *(v0 + 344);
    sub_26135BC34(*(v0 + 320));
    v44 = v43 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareHandler;
    swift_beginAccess();
    v45 = *v44;
    v46 = *(v0 + 344);
    v47 = *(v0 + 320);
    v48 = *(v0 + 296);
    v49 = *(v0 + 304);
    if (*v44)
    {
      v50 = *(v44 + 8);
      swift_endAccess();
      sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0]);
      v51 = swift_allocError();
      (*(v49 + 16))(v52, v47, v48);

      v45(0, 0, v51);

      sub_26124A228(v45);
      (*(v49 + 8))(v47, v48);
    }

    else
    {
      (*(v49 + 8))(*(v0 + 320), *(v0 + 296));
      swift_endAccess();
    }

    goto LABEL_17;
  }

  v20 = *(v0 + 328);

  v21 = sub_26129BA7C();
  sub_26125A870(v21, v20, &qword_27FE9F560, &qword_2613A3CB0);
  v22 = sub_2613A124C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v20, 1, v22) == 1)
  {
    sub_26124C718(*(v0 + 328), &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v24 = *(v0 + 384);
    v25 = *(v0 + 328);
    v26 = v24;
    v27 = sub_2613A122C();
    v28 = sub_2613A1D9C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 384);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = v29;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&dword_261243000, v27, v28, "Unexpected error during prepare: [ %@ ]", v30, 0xCu);
      sub_26124C718(v31, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v31, -1, -1);
      MEMORY[0x266701350](v30, -1, -1);
    }

    v34 = *(v0 + 328);

    (*(v23 + 8))(v34, v22);
  }

  v35 = *(v0 + 344) + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareHandler;
  swift_beginAccess();
  v36 = *v35;
  v37 = *(v0 + 384);
  v38 = *(v0 + 344);
  if (!*v35)
  {

    goto LABEL_19;
  }

  v39 = *(v0 + 296);
  v40 = *(v35 + 8);
  (*(*(v0 + 272) + 104))(*(v0 + 280), *MEMORY[0x277D436D0], *(v0 + 264));
  sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0]);
  v41 = swift_allocError();

  sub_26139F31C();
  v36(0, 0, v41);

  sub_26124A228(v36);
  v42 = v41;
LABEL_18:

LABEL_19:
  v54 = *(v0 + 328);
  v53 = *(v0 + 336);
  v56 = *(v0 + 312);
  v55 = *(v0 + 320);
  v58 = *(v0 + 280);
  v57 = *(v0 + 288);

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_26135230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_26139F64C();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2613523CC);
}

uint64_t sub_2613523CC()
{
  v1 = v0[2] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask;
  v2 = *v1;
  v0[6] = *v1;
  if (v2)
  {
    v0[7] = *(v1 + 8);

    v10 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_261352554;

    return v10(0);
  }

  else
  {
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[3];
    sub_26139F45C();
    sub_26139F5BC();
    (*(v7 + 8))(v6, v8);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_261352554()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v5 = *v0;

  sub_26124A228(v3);

  return MEMORY[0x2822009F8](sub_261352684);
}

uint64_t sub_261352684()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_26139F45C();
  sub_26139F5BC();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void sub_2613527B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_2613A189C();
    if (a3)
    {
LABEL_3:
      v7 = sub_26139EE6C();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_261352848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return MEMORY[0x2822009F8](sub_26135286C);
}

uint64_t sub_26135286C()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];
    v7 = swift_task_alloc();
    v0[10] = v7;
    v7[2] = v3;
    v7[3] = v6;
    v7[4] = v5;
    v7[5] = v4;
    v8 = swift_task_alloc();
    v0[11] = v8;
    v8[2] = v5;
    v8[3] = v4;
    v8[4] = v3;
    v8[5] = v6;
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_2613529D8;

    return sub_26134ED18(&unk_2613AD0F0, v7, sub_26135F184, v8);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2613529D8()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_261352B0C);
}

uint64_t sub_261352B0C()
{
  v1 = *(v0 + 72);
  v2 = *&v1[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask];
  *&v1[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask] = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_261352B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_261262AA4;

  return sub_261352C38(a2, a3, a4);
}

uint64_t sub_261352C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0770, &qword_2613AD0C8) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v6 = sub_26139FFAC();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();
  v9 = sub_26139F64C();
  v4[15] = v9;
  v10 = *(v9 - 8);
  v4[16] = v10;
  v4[17] = *(v10 + 64);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v11 = sub_2613A147C();
  v4[20] = v11;
  v12 = *(v11 - 8);
  v4[21] = v12;
  v4[22] = *(v12 + 64);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v13 = sub_26139FF3C();
  v4[25] = v13;
  v14 = *(v13 - 8);
  v4[26] = v14;
  v15 = *(v14 + 64) + 15;
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261352E70);
}

uint64_t sub_261352E70()
{
  v1 = v0[7];
  v2 = sub_2613A013C();
  v3 = MEMORY[0x277D43B98];
  v0[5] = v2;
  v0[6] = v3;
  v0[2] = v1;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_261352F3C;
  v6 = v0[27];
  v7 = v0[10];

  return sub_26134F598(v6, (v0 + 2));
}

uint64_t sub_261352F3C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v6 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_2613536D8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v4 = sub_261353058;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_261353058()
{
  v1 = *(**(v0[10] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter) + 232);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[30] = v3;
  *v3 = v0;
  v3[1] = sub_261353184;
  v4 = v0[24];
  v5 = v0[7];

  return v7(v4, v5);
}

uint64_t sub_261353184()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_26135379C;
  }

  else
  {
    v3 = sub_261353298;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_261353298()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = (v0[10] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestHandler);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v0[8];
  v3[1] = v1;
  sub_26124A228(v4);

  v6 = sub_2613A010C();
  v7 = v0[19];
  if (v6)
  {
    sub_26139F38C();
  }

  else
  {
    sub_26139F37C();
  }

  v42 = v0[27];
  v45 = v0[26];
  v49 = v0[24];
  v46 = v0[25];
  v47 = v0[23];
  v35 = v0[21];
  v36 = v0[20];
  v37 = v0[22];
  v8 = v0[18];
  v48 = v0[19];
  v9 = v0[16];
  v10 = v0[17];
  v11 = v0[15];
  v43 = v0[13];
  v44 = v0[12];
  v12 = v0[10];
  v40 = v0[14];
  v41 = v0[11];
  v38 = v0[7];
  v34 = *(v9 + 16);
  v34(v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  v15 = *(v9 + 32);
  v39 = v11;
  v15(v14 + v13, v8, v11);
  v16 = (v12 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_startReader);
  v17 = *(v12 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_startReader);
  v18 = *(v12 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_startReader + 8);
  *v16 = sub_26135F2BC;
  v16[1] = v14;
  sub_26124A228(v17);
  (v34)(v8, v48, v11);
  v19 = swift_allocObject();
  v15(v19 + v13, v8, v11);
  v20 = (v12 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readerReadyListener);
  v21 = *(v12 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readerReadyListener);
  v22 = *(v12 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readerReadyListener + 8);
  *v20 = sub_26135F35C;
  v20[1] = v19;
  sub_26124A228(v21);
  v23 = swift_allocObject();
  v24 = v12;
  swift_unknownObjectWeakInit();
  (*(v35 + 16))(v47, v49, v36);
  v25 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  (*(v35 + 32))(v26 + v25, v47, v36);
  *(v26 + ((v37 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v38;
  v27 = (v24 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask);
  v29 = *(v24 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask);
  v28 = *(v24 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask + 8);
  *v27 = &unk_2613AD108;
  v27[1] = v26;
  v30 = v38;

  sub_26124A228(v29);

  sub_26135408C(v40);
  v31 = sub_2613A014C();
  (*(*(v31 - 8) + 56))(v41, 1, 1, v31);
  sub_26134D058(v42, v40, v41);
  sub_26124C718(v41, &qword_27FEA0770, &qword_2613AD0C8);
  (*(v43 + 8))(v40, v44);
  (*(v9 + 8))(v48, v39);
  (*(v35 + 8))(v49, v36);
  (*(v45 + 8))(v42, v46);

  v32 = v0[1];

  return v32();
}

uint64_t sub_2613536D8()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[29];
  v2 = v0[27];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[14];
  v8 = v0[11];

  v9 = v0[1];

  return v9();
}

uint64_t sub_26135379C()
{
  (*(v0[26] + 8))(v0[27], v0[25]);
  v1 = v0[31];
  v2 = v0[27];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[14];
  v8 = v0[11];

  v9 = v0[1];

  return v9();
}

uint64_t sub_261353888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261353938);
}

uint64_t sub_261353938()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v3 = v0[9];
    v4 = *(Strong + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter);
    v0[13] = v4;

    v5 = sub_2613A010C();
    v6 = *(*v4 + 240);
    v16 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_261353AF4;
    v9 = v0[8];
    v10 = v0[5];
    v11 = v0[6];

    return (v16)(v9, v5 & 1, v10, v11);
  }

  else
  {
    v14 = v0[10];
    v13 = v0[11];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_261353AF4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_261353DE4;
  }

  else
  {
    v8 = *(v4 + 104);

    *(v4 + 128) = a1;
    v7 = sub_261353C24;
  }

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_261353C24()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestResponse);
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_dataRequestResponse) = *(v0 + 128);

  v4 = sub_26129BA7C();
  sub_26125A870(v4, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v5 = sub_2613A124C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    v7 = *(v0 + 88);

    sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = *(v0 + 88);
    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "Identity information read successfully", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    v12 = *(v0 + 88);
    v13 = *(v0 + 96);

    (*(v6 + 8))(v12, v5);
  }

  v15 = *(v0 + 80);
  v14 = *(v0 + 88);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_261353DE4()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = sub_26129BA7C();
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_26124C718(v0[10], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = v0[15];
    v7 = v0[10];
    v8 = v6;
    v9 = sub_2613A122C();
    v10 = sub_2613A1D8C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[15];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v11;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_261243000, v9, v10, "Error reading identity information: [%@]", v12, 0xCu);
      sub_26124C718(v13, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v13, -1, -1);
      MEMORY[0x266701350](v12, -1, -1);
    }

    v16 = v0[10];

    (*(v5 + 8))(v16, v4);
  }

  v17 = v0[15];
  v18 = v0[12];
  sub_26139F33C();
  sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0]);
  v19 = swift_allocError();
  sub_26134E61C(v17, v20);

  v21 = *&v18[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError];
  *&v18[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError] = v19;

  v23 = v0[10];
  v22 = v0[11];

  v24 = v0[1];

  return v24();
}

uint64_t sub_26135408C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0780, &qword_2613AD110);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - v4;
  v6 = sub_26139FD9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = sub_2613A012C();
  sub_26135A16C(v14, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_26124C718(v5, &qword_27FEA0780, &qword_2613AD110);
  }

  else
  {
    v15 = *(v7 + 32);
    v15(v13, v5, v6);
    v16 = *(sub_2613A012C() + 16);

    if (v16 == 1)
    {
      v15(v11, v13, v6);
      v17 = (*(v7 + 88))(v11, v6);
      if (v17 == *MEMORY[0x277D43928])
      {
        v18 = *MEMORY[0x277D43A20];
        v19 = sub_26139FFAC();
        v20 = *(*(v19 - 8) + 104);
        v21 = a1;
        v22 = v18;
      }

      else
      {
        if (v17 == *MEMORY[0x277D43920])
        {
          v24 = MEMORY[0x277D43A18];
          goto LABEL_9;
        }

        v28 = *MEMORY[0x277D43930];
        v29 = v17;
        v19 = sub_26139FFAC();
        v20 = *(*(v19 - 8) + 104);
        if (v29 == v28)
        {
          v27 = *MEMORY[0x277D43A40];
          v26 = a1;
          return v20(v26, v27, v19);
        }

        v22 = *MEMORY[0x277D43A20];
        v21 = a1;
      }

      v20(v21, v22, v19);
      return (*(v7 + 8))(v11, v6);
    }

    (*(v7 + 8))(v13, v6);
  }

  v24 = MEMORY[0x277D43A28];
LABEL_9:
  v25 = *v24;
  v19 = sub_26139FFAC();
  v20 = *(*(v19 - 8) + 104);
  v26 = a1;
  v27 = v25;
  return v20(v26, v27, v19);
}

uint64_t sub_2613543D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return MEMORY[0x2822009F8](sub_2613543FC);
}

uint64_t sub_2613543FC()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];
    v7 = swift_task_alloc();
    v0[10] = v7;
    v7[2] = v3;
    v7[3] = v6;
    v7[4] = v5;
    v7[5] = v4;
    v8 = swift_task_alloc();
    v0[11] = v8;
    v8[2] = v5;
    v8[3] = v4;
    v8[4] = v3;
    v8[5] = v6;
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_261354568;

    return sub_26134ED18(&unk_2613AD0A8, v7, sub_26135EF64, v8);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_261354568()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_26135F9F0);
}

uint64_t sub_26135469C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_261265144;

  return sub_261354750(a2, a3, a4);
}

uint64_t sub_261354750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0770, &qword_2613AD0C8) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v6 = sub_26139FFAC();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();
  v9 = sub_2613A147C();
  v4[15] = v9;
  v10 = *(v9 - 8);
  v4[16] = v10;
  v4[17] = *(v10 + 64);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v11 = sub_26139FF3C();
  v4[20] = v11;
  v12 = *(v11 - 8);
  v4[21] = v12;
  v13 = *(v12 + 64) + 15;
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261354918);
}

uint64_t sub_261354918()
{
  v1 = v0[7];
  v2 = sub_2613A01AC();
  v3 = MEMORY[0x277D43BD8];
  v0[5] = v2;
  v0[6] = v3;
  v0[2] = v1;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_2613549E4;
  v6 = v0[22];
  v7 = v0[10];

  return sub_26134F598(v6, (v0 + 2));
}

uint64_t sub_2613549E4()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v6 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_261355064;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v4 = sub_261354B00;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_261354B00()
{
  v1 = *(**(v0[10] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter) + 248);
  v7 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_261354C2C;
  v4 = v0[19];
  v5 = v0[7];

  return v7(v4, v5);
}

uint64_t sub_261354C2C()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_26135510C;
  }

  else
  {
    v3 = sub_261354D40;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_261354D40()
{
  v1 = v0[19];
  v34 = v0[21];
  v35 = v0[20];
  v36 = v0[18];
  v27 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v30 = v0[14];
  v31 = v0[22];
  v4 = v0[11];
  v32 = v0[13];
  v33 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v28 = v0[7];
  v29 = v1;
  v7 = (v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestHandler);
  v8 = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestHandler);
  v9 = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestHandler + 8);
  *v7 = v0[8];
  v7[1] = v5;
  sub_26124A228(v8);
  v10 = (v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_startReader);
  v12 = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_startReader);
  v11 = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_startReader + 8);
  *v10 = sub_261355270;
  v10[1] = 0;

  sub_26124A228(v12);
  v13 = (v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readerReadyListener);
  v14 = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readerReadyListener);
  v15 = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readerReadyListener + 8);
  *v13 = sub_261355288;
  v13[1] = 0;
  sub_26124A228(v14);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(v36, v1, v2);
  v17 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v3 + 32))(v18 + v17, v36, v2);
  *(v18 + ((v27 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  v19 = (v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask);
  v21 = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask);
  v20 = *(v6 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask + 8);
  *v19 = &unk_2613AD0E0;
  v19[1] = v18;
  v22 = v28;

  sub_26124A228(v21);

  sub_261355F28(v30);
  v23 = sub_2613A018C();
  sub_2613A015C();

  v24 = sub_2613A014C();
  (*(*(v24 - 8) + 56))(v4, 0, 1, v24);
  sub_26134D058(v31, v30, v4);
  sub_26124C718(v4, &qword_27FEA0770, &qword_2613AD0C8);
  (*(v32 + 8))(v30, v33);
  (*(v3 + 8))(v29, v2);
  (*(v34 + 8))(v31, v35);

  v25 = v0[1];

  return v25();
}

uint64_t sub_261355064()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[24];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[14];
  v6 = v0[11];

  v7 = v0[1];

  return v7();
}

uint64_t sub_26135510C()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  v1 = v0[26];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[14];
  v6 = v0[11];

  v7 = v0[1];

  return v7();
}

void sub_2613551DC(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_2613552A0(void (*a1)(uint64_t))
{
  v2 = sub_26139F64C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26139F35C();
  a1(v7);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_26135536C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();
  v9 = sub_2613A021C();
  v5[18] = v9;
  v10 = *(v9 - 8);
  v5[19] = v10;
  v11 = *(v10 + 64) + 15;
  v5[20] = swift_task_alloc();
  v12 = sub_2613A014C();
  v5[21] = v12;
  v13 = *(v12 - 8);
  v5[22] = v13;
  v14 = *(v13 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v15 = sub_26139F64C();
  v5[25] = v15;
  v16 = *(v15 - 8);
  v5[26] = v16;
  v17 = *(v16 + 64) + 15;
  v5[27] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261355598);
}

uint64_t sub_261355598()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[30] = Strong;
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter);
    v0[31] = v3;
    v4 = *(*v3 + 256);

    v19 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    v0[32] = v6;
    *v6 = v0;
    v6[1] = sub_261355798;
    v7 = v0[13];
    v8 = v0[10];
    v9 = v0[11];

    return v19(v7, v8, v9);
  }

  else
  {
    v12 = v0[28];
    v11 = v0[29];
    v13 = v0[27];
    v15 = v0[23];
    v14 = v0[24];
    v16 = v0[20];
    v17 = v0[17];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_261355798(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 256);
  v8 = *v2;
  v3[33] = a1;
  v3[34] = v1;

  if (v1)
  {
    v5 = sub_261355CB4;
  }

  else
  {
    v6 = v3[31];

    v5 = sub_2613558B4;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2613558B4()
{
  v1 = v0[29];
  v2 = sub_26129BA7C();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[29], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v5 = v0[29];
    v6 = sub_2613A122C();
    v7 = sub_2613A1D9C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_261243000, v6, v7, "Displaying identity information", v8, 2u);
      MEMORY[0x266701350](v8, -1, -1);
    }

    v9 = v0[29];

    (*(v4 + 8))(v9, v3);
  }

  v11 = v0[26];
  v10 = v0[27];
  v12 = v0[24];
  v13 = v0[25];
  v15 = v0[22];
  v14 = v0[23];
  v16 = v0[21];
  v17 = v0[14];
  [*(v0[30] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager) displayIdentityInformation_];
  sub_26139F58C();
  sub_26139F5BC();
  (*(v11 + 8))(v10, v13);
  v18 = sub_2613A018C();
  sub_2613A015C();

  (*(v15 + 104))(v14, *MEMORY[0x277D43BA8], v16);
  sub_26135F090(&qword_27FEA0778, MEMORY[0x277D43BB8]);
  sub_2613A1B1C();
  sub_2613A1B1C();
  v19 = *(v15 + 8);
  v19(v14, v16);
  v19(v12, v16);
  if (v0[8] == v0[9])
  {
    v20 = v0[30];
    (*(v0[19] + 104))(v0[20], *MEMORY[0x277D43C10], v0[18]);
    v21 = objc_allocWithZone(sub_2613A023C());
    v22 = sub_2613A022C();
    v23 = *(v20 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestResponse);
    *(v20 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestResponse) = v22;
  }

  v24 = v0[30];
  v26 = v0[15];
  v25 = v0[16];
  v27 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
  swift_beginAccess();
  v28 = (*(v25 + 48))(v24 + v27, 1, v26);
  v29 = v0[33];
  v30 = v0[30];
  if (v28)
  {
  }

  else
  {
    v31 = v0[17];
    sub_26135E584(v24 + v27, v31);
    v32 = sub_26139FBEC();
    sub_2612DBFE8(v32, v33);

    sub_26135E528(v31);
  }

  v35 = v0[28];
  v34 = v0[29];
  v36 = v0[27];
  v38 = v0[23];
  v37 = v0[24];
  v39 = v0[20];
  v40 = v0[17];

  v41 = v0[1];

  return v41();
}

uint64_t sub_261355CB4()
{
  v1 = v0[31];
  v2 = v0[28];

  v3 = sub_26129BA7C();
  sub_26125A870(v3, v2, &qword_27FE9F560, &qword_2613A3CB0);
  v4 = sub_2613A124C();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {
    sub_26124C718(v0[28], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = v0[34];
    v7 = v0[28];
    v8 = v6;
    v9 = sub_2613A122C();
    v10 = sub_2613A1D8C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[34];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v11;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_261243000, v9, v10, "Error loading identity information: [ %@ ]", v12, 0xCu);
      sub_26124C718(v13, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v13, -1, -1);
      MEMORY[0x266701350](v12, -1, -1);
    }

    v16 = v0[28];

    (*(v5 + 8))(v16, v4);
  }

  v17 = v0[30];
  v18 = *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError];
  *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError] = v0[34];

  v20 = v0[28];
  v19 = v0[29];
  v21 = v0[27];
  v23 = v0[23];
  v22 = v0[24];
  v24 = v0[20];
  v25 = v0[17];

  v26 = v0[1];

  return v26();
}

uint64_t sub_261355F28@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26139FD9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v35 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = sub_2613A016C();
  if (!*(v13 + 16))
  {

LABEL_8:
    v18 = MEMORY[0x277D43A28];
    goto LABEL_9;
  }

  (*(v3 + 16))(v10, v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

  v14 = *(v3 + 32);
  v14(v12, v10, v2);
  v15 = *(sub_2613A016C() + 16);

  if (v15 != 1)
  {
    (*(v3 + 8))(v12, v2);
    goto LABEL_8;
  }

  v16 = sub_2613A019C();
  if (sub_26135A228(v16, MEMORY[0x277D43A48], MEMORY[0x277D43AA0]))
  {
    v17 = sub_26135A228(v16, MEMORY[0x277D43AD8], MEMORY[0x277D43A50]);

    if (v17)
    {
      (*(v3 + 8))(v12, v2);
      v18 = MEMORY[0x277D43A10];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v25 = sub_2613A019C();
  v26 = sub_26135A228(v25, MEMORY[0x277D43A48], MEMORY[0x277D43AA0]);

  if (v26)
  {
    (*(v3 + 8))(v12, v2);
    v18 = MEMORY[0x277D43A30];
  }

  else
  {
    v27 = sub_2613A019C();
    v28 = sub_26135A228(v27, MEMORY[0x277D43AD8], MEMORY[0x277D43A50]);

    if ((v28 & 1) == 0)
    {
      v14(v7, v12, v2);
      v29 = (*(v3 + 88))(v7, v2);
      if (v29 == *MEMORY[0x277D43928])
      {
        v30 = *MEMORY[0x277D43A20];
        v20 = sub_26139FFAC();
        v21 = *(*(v20 - 8) + 104);
        v31 = a1;
        v32 = v30;
      }

      else
      {
        if (v29 == *MEMORY[0x277D43920])
        {
          v18 = MEMORY[0x277D43A18];
          goto LABEL_9;
        }

        v33 = *MEMORY[0x277D43930];
        v34 = v29;
        v20 = sub_26139FFAC();
        v21 = *(*(v20 - 8) + 104);
        if (v34 == v33)
        {
          v23 = *MEMORY[0x277D43A40];
          v22 = a1;
          return v21(v22, v23, v20);
        }

        v32 = *MEMORY[0x277D43A20];
        v31 = a1;
      }

      v21(v31, v32, v20);
      return (*(v3 + 8))(v7, v2);
    }

    (*(v3 + 8))(v12, v2);
    v18 = MEMORY[0x277D43A38];
  }

LABEL_9:
  v19 = *v18;
  v20 = sub_26139FFAC();
  v21 = *(*(v20 - 8) + 104);
  v22 = a1;
  v23 = v19;
  return v21(v22, v23, v20);
}

uint64_t sub_261356364(char a1, const char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_26129BA7C();
  sub_26125A870(v8, v7, &qword_27FE9F560, &qword_2613A3CB0);
  v9 = sub_2613A124C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    return sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  v12 = sub_2613A122C();
  v13 = sub_2613A1D9C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = a1 & 1;
    _os_log_impl(&dword_261243000, v12, v13, a2, v14, 8u);
    MEMORY[0x266701350](v14, -1, -1);
  }

  return (*(v10 + 8))(v7, v9);
}

uint64_t sub_261356544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_261356568);
}

uint64_t sub_261356568()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_adapter);
  v0[5] = v1;
  v2 = *v1 + 264;
  v0[6] = *v2;
  v0[7] = v2 & 0xFFFFFFFFFFFFLL | 0xF337000000000000;
  return MEMORY[0x2822009F8](sub_2613565B8);
}

uint64_t sub_2613565B8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  (*(v0 + 48))();

  return MEMORY[0x2822009F8](sub_261356624);
}

uint64_t sub_261356624()
{
  v1 = *(v0 + 32);
  (*(v0 + 24))(0);
  v2 = *(v0 + 8);

  return v2();
}

void sub_2613566A4(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

void sub_261356720(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_26139EE6C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_261356784()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v13 - v4;
  if ((*(**(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager) + 192))(v3))
  {

    return sub_2613569D8();
  }

  else if ((*(**(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_regUIManager) + 192))())
  {

    return sub_26135E154();
  }

  else
  {
    v7 = sub_26129BA7C();
    sub_26125A870(v7, v5, &qword_27FE9F560, &qword_2613A3CB0);
    v8 = sub_2613A124C();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      return sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v10 = sub_2613A122C();
      v11 = sub_2613A1D8C();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_261243000, v10, v11, "No UI seems loaded, unable to process uiDidLoad", v12, 2u);
        MEMORY[0x266701350](v12, -1, -1);
      }

      return (*(v9 + 8))(v5, v8);
    }
  }
}

id sub_2613569D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v52 = &v47 - v4;
  v53 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v53);
  v51 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26139F64C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  v20 = sub_26129BB98();
  sub_26125A870(v20, v19, &qword_27FE9F560, &qword_2613A3CB0);
  v21 = sub_2613A124C();
  v22 = *(v21 - 8);
  v50 = *(v22 + 48);
  if (v50(v19, 1, v21) == 1)
  {
    sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v48 = v22;
    v49 = v1;
    v23 = sub_2613A122C();
    v24 = sub_2613A1D9C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v47 = v17;
      v26 = v25;
      *v25 = 0;
      _os_log_impl(&dword_261243000, v23, v24, "Identity UI is visible", v25, 2u);
      v27 = v26;
      v17 = v47;
      MEMORY[0x266701350](v27, -1, -1);
    }

    v22 = v48;
    (*(v48 + 8))(v19, v21);
    v1 = v49;
  }

  sub_26139F49C();
  sub_26139F5BC();
  (*(v9 + 8))(v12, v8);
  v28 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
  swift_beginAccess();
  if (!(*(v5 + 48))(v1 + v28, 1, v53))
  {
    v29 = v1 + v28;
    v30 = v51;
    sub_26135E584(v29, v51);
    sub_2612DBD9C();
    sub_26135E528(v30);
  }

  v31 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask);
  if (v31)
  {
    v32 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask + 8);
    v33 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_startReader);
    if (v33)
    {
      v34 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_startReader + 8);
      sub_26124A17C(*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask));
      v35 = sub_26124A17C(v33);
      v33(v35);
      sub_26124A228(v33);
    }

    else
    {
    }

    v37 = sub_2613A1C1C();
    v38 = v52;
    (*(*(v37 - 8) + 56))(v52, 1, 1, v37);
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v31;
    v39[5] = v32;
    sub_261266800(0, 0, v38, &unk_2613AD098, v39);
  }

  else
  {
    v36 = sub_26129BA7C();
    sub_26125A870(v36, v17, &qword_27FE9F560, &qword_2613A3CB0);
    if (v50(v17, 1, v21) == 1)
    {
      sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v41 = v22;
      v42 = sub_2613A122C();
      v43 = sub_2613A1D9C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = v17;
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_261243000, v42, v43, "UI loaded, but no read document is scheduled, dismissing UI", v45, 2u);
        v46 = v45;
        v17 = v44;
        MEMORY[0x266701350](v46, -1, -1);
      }

      (*(v41 + 8))(v17, v21);
    }

    return [*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager) updateUIState_];
  }
}

void sub_261356FD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  v4 = sub_26129BA7C();
  sub_26125A870(v4, v3, &qword_27FE9F560, &qword_2613A3CB0);
  v5 = sub_2613A124C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v7 = sub_2613A122C();
    v8 = sub_2613A1D9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261243000, v7, v8, "UI is finished, reporting result", v9, 2u);
      MEMORY[0x266701350](v9, -1, -1);
    }

    (*(v6 + 8))(v3, v5);
  }

  sub_26134DAC4();
}

void sub_261357180()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = sub_26129BA7C();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261243000, v9, v10, "Identity registration UI was dismissed", v11, 2u);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  v12 = v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareHandler;
  swift_beginAccess();
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 8);
    v15 = (v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareSessionID);
    v16 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareSessionID + 8);
    if (v16)
    {
      v17 = *(v12 + 8);
    }

    else
    {
      v18 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError);

      if (v18)
      {
        v16 = 0;
      }

      else
      {
        sub_261357548();
        v16 = v15[1];
      }
    }

    v19 = *v15;
    v20 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError);

    v21 = v20;
    v13(v19, v16, v20);

    sub_26124A228(v13);
  }

  v22 = (v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareSessionID);
  v23 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareSessionID + 8);
  *v22 = 0;
  v22[1] = 0;

  v24 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError);
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError) = 0;
}

uint64_t sub_261357458(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_261262AA4;

  return (v8)(0, 0xF000000000000000);
}

void sub_261357548()
{
  v1 = v0;
  v2 = sub_26139F30C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_26129BA7C();
  sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v14 = sub_2613A122C();
    v15 = sub_2613A1D9C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_261243000, v14, v15, "Cancelling registration flow", v16, 2u);
      MEMORY[0x266701350](v16, -1, -1);
    }

    (*(v13 + 8))(v10, v12);
  }

  if (*(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_registrationTask))
  {
    *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_registrationTask) = 0;
    sub_2613A1C9C();
    (*(v3 + 104))(v6, *MEMORY[0x277D436D0], v2);
    sub_26139F33C();
    sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0]);
    v17 = swift_allocError();
    sub_26139F31C();
  }

  else
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D436D8], v2);
    sub_26139F33C();
    sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0]);
    v17 = swift_allocError();
    sub_26139F31C();
  }

  v18 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError);
  *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError) = v17;
}

uint64_t sub_2613578E0(int a1)
{
  v2 = v1;
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v33 - v5;
  v38 = sub_26139F30C();
  v7 = *(v38 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v38);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_26139F64C();
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v36);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v33 - v17;
  v19 = sub_26129BA7C();
  sub_26125A870(v19, v18, &qword_27FE9F560, &qword_2613A3CB0);
  v20 = sub_2613A124C();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    sub_26124C718(v18, &qword_27FE9F560, &qword_2613A3CB0);
    if (v37)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v35 = v10;
  v22 = sub_2613A122C();
  v23 = sub_2613A1D9C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v34 = v6;
    v25 = v24;
    *v24 = 0;
    _os_log_impl(&dword_261243000, v22, v23, "Executing request to cancel current read", v24, 2u);
    v26 = v25;
    v6 = v34;
    MEMORY[0x266701350](v26, -1, -1);
  }

  (*(v21 + 8))(v18, v20);
  v10 = v35;
  if ((v37 & 1) == 0)
  {
LABEL_7:
    sub_26137C1FC();
  }

LABEL_8:
  sub_26139F4CC();
  sub_26139F5BC();
  (*(v11 + 8))(v14, v36);
  (*(v7 + 104))(v10, *MEMORY[0x277D436D8], v38);
  sub_26139F33C();
  sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0]);
  v27 = swift_allocError();
  sub_26139F31C();
  v28 = *&v2[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError];
  *&v2[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError] = v27;

  v29 = sub_2613A1C1C();
  (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v2;
  v31 = v2;
  sub_261266800(0, 0, v6, &unk_2613ACF90, v30);
}

uint64_t sub_261357DA4(int a1)
{
  v2 = v1;
  LODWORD(v51) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0750, &qword_2613ACF00);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  v13 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v49 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v50 = &v47 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v47 - v21;
  v23 = sub_26129BA7C();
  sub_26125A870(v23, v22, &qword_27FE9F560, &qword_2613A3CB0);
  v24 = sub_2613A124C();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v22, 1, v24) == 1)
  {
    result = sub_26124C718(v22, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v27 = sub_2613A122C();
    v28 = sub_2613A1D9C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v48 = v12;
      v30 = v13;
      v31 = v10;
      v32 = v14;
      v33 = v29;
      *v29 = 0;
      _os_log_impl(&dword_261243000, v27, v28, "Requesting read restart", v29, 2u);
      v34 = v33;
      v14 = v32;
      v10 = v31;
      v13 = v30;
      v12 = v48;
      MEMORY[0x266701350](v34, -1, -1);
    }

    result = (*(v25 + 8))(v22, v24);
  }

  v35 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask);
  if (v35)
  {
    v36 = v14;
    v37 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask + 8);
    v38 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError);
    *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError) = 0;

    if (v51)
    {
      v39 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
      swift_beginAccess();
      sub_26125A870(v2 + v39, v12, &qword_27FEA0750, &qword_2613ACF00);
      v40 = *(v36 + 48);
      if (v40(v12, 1, v13) == 1)
      {
        sub_26124C718(v12, &qword_27FEA0750, &qword_2613ACF00);
      }

      else
      {
        v41 = v12;
        v42 = v50;
        sub_26135E4C4(v41, v50);
        v51 = v40;
        sub_2612DB5CC(v10);
        (*(v36 + 56))(v10, 0, 1, v13);
        swift_beginAccess();
        sub_261349F44(v10, v2 + v39);
        swift_endAccess();
        swift_beginAccess();
        if (v51(v2 + v39, 1, v13))
        {
          sub_26135E528(v42);
          swift_endAccess();
        }

        else
        {
          v43 = v49;
          sub_26135E584(v2 + v39, v49);
          swift_endAccess();
          sub_2612DBD9C();
          sub_26135E528(v43);
          sub_26135E528(v42);
        }
      }
    }

    v44 = sub_2613A1C1C();
    v45 = v52;
    (*(*(v44 - 8) + 56))(v52, 1, 1, v44);
    v46 = swift_allocObject();
    v46[2] = 0;
    v46[3] = 0;
    v46[4] = v35;
    v46[5] = v37;
    sub_261266800(0, 0, v45, &unk_2613ACFA0, v46);
  }

  return result;
}

uint64_t sub_2613582FC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_261265144;

  return (v8)(0, 0xF000000000000000);
}

uint64_t sub_261358440(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  v14 = sub_26129BA7C();
  sub_26125A870(v14, v13, &qword_27FE9F560, &qword_2613A3CB0);
  v15 = sub_2613A124C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v17 = sub_2613A122C();
    v18 = sub_2613A1D9C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_261243000, v17, v18, "Executing request with scanned payload", v19, 2u);
      MEMORY[0x266701350](v19, -1, -1);
    }

    (*(v16 + 8))(v13, v15);
  }

  v20 = *&v3[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError];
  *&v3[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError] = 0;

  v21 = sub_2613A1C1C();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v3;
  v22[5] = a1;
  v22[6] = a2;
  v23 = v3;
  sub_26124C778(a1, a2);
  sub_261287FE0(0, 0, v9, &unk_2613ACFB0, v22);
}

uint64_t sub_2613586F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_261358714);
}

uint64_t sub_261358714()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readDocumentTask;
  v2 = *v1;
  *(v0 + 48) = *v1;
  if (v2)
  {
    *(v0 + 56) = *(v1 + 8);

    v9 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    *(v0 + 64) = v4;
    *v4 = v0;
    v4[1] = sub_261358874;
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);

    return v9(v6, v5);
  }

  else
  {
    **(v0 + 16) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_261358874()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v5 = *v0;

  sub_26124A228(v3);

  return MEMORY[0x2822009F8](sub_2613589A4);
}

uint64_t sub_261358A54(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2613A021C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v74[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v74[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v74[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v74[-v17];
  v19 = type metadata accessor for IdentityAnalyticsTransaction(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v74[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v40 = v23;
      sub_2613578E0(1);
      v41 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
      swift_beginAccess();
      result = (*(v20 + 48))(v2 + v41, 1, v19);
      if (result)
      {
        return result;
      }

      sub_26135E584(v2 + v41, v40);
      v42 = sub_2613A091C();
      v44 = v43;
      v45 = sub_2613A08BC();
      sub_2612DC0FC(v42, v44, v45, v46);

      v47 = v40;
      return sub_26135E528(v47);
    }

    if (a1 == 2)
    {
      v24 = v23;
      v25 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
      swift_beginAccess();
      result = (*(v20 + 48))(v2 + v25, 1, v19);
      if (result)
      {
        return result;
      }

      v27 = v2 + v25;
      v28 = v24;
      sub_26135E584(v27, v24);
      v29 = sub_2613A0BAC();
      v31 = v30;
      v32 = sub_2613A094C();
      goto LABEL_29;
    }

    goto LABEL_10;
  }

  if (a1 == 3)
  {
    v77 = v23;
    v48 = sub_26129BA7C();
    sub_26125A870(v48, v18, &qword_27FE9F560, &qword_2613A3CB0);
    v49 = sub_2613A124C();
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v18, 1, v49) == 1)
    {
      sub_26124C718(v18, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v66 = sub_2613A122C();
      v75 = sub_2613A1D9C();
      v76 = v66;
      if (os_log_type_enabled(v66, v75))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_261243000, v76, v75, "Displayed identity matches", v67, 2u);
        MEMORY[0x266701350](v67, -1, -1);
      }

      (*(v50 + 8))(v18, v49);
    }

    (*(v5 + 104))(v8, *MEMORY[0x277D43C00], v4);
    v68 = objc_allocWithZone(sub_2613A023C());
    v69 = sub_2613A022C();
    v70 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestResponse);
    *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestResponse) = v69;

    v71 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
    swift_beginAccess();
    result = (*(v20 + 48))(v2 + v71, 1, v19);
    if (!result)
    {
      v72 = v2 + v71;
      v28 = v77;
      sub_26135E584(v72, v77);
      v29 = sub_2613A0BAC();
      v31 = v73;
      v32 = sub_2613A093C();
      goto LABEL_29;
    }
  }

  else
  {
    if (a1 != 4)
    {
LABEL_10:
      v37 = sub_26129BA7C();
      sub_26125A870(v37, v13, &qword_27FE9F560, &qword_2613A3CB0);
      v38 = sub_2613A124C();
      v39 = *(v38 - 8);
      if ((*(v39 + 48))(v13, 1, v38) == 1)
      {
        return sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
      }

      v51 = sub_2613A122C();
      v52 = sub_2613A1D8C();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v78[0] = v54;
        *v53 = 136315138;
        v78[3] = a1;
        v55 = sub_2613A195C();
        v57 = sub_26124C11C(v55, v56, v78);

        *(v53 + 4) = v57;
        _os_log_impl(&dword_261243000, v51, v52, "Button [ %s ] not being handled", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v54);
        MEMORY[0x266701350](v54, -1, -1);
        MEMORY[0x266701350](v53, -1, -1);
      }

      return (*(v39 + 8))(v13, v38);
    }

    v77 = v23;
    v34 = sub_26129BA7C();
    sub_26125A870(v34, v16, &qword_27FE9F560, &qword_2613A3CB0);
    v35 = sub_2613A124C();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v16, 1, v35) == 1)
    {
      sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v58 = sub_2613A122C();
      v75 = sub_2613A1D9C();
      v76 = v58;
      if (os_log_type_enabled(v58, v75))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_261243000, v76, v75, "Displayed identity does not match", v59, 2u);
        MEMORY[0x266701350](v59, -1, -1);
      }

      (*(v36 + 8))(v16, v35);
    }

    (*(v5 + 104))(v8, *MEMORY[0x277D43C08], v4);
    v60 = objc_allocWithZone(sub_2613A023C());
    v61 = sub_2613A022C();
    v62 = *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestResponse);
    *(v2 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_displayRequestResponse) = v61;

    v63 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_analyticsTransaction;
    swift_beginAccess();
    result = (*(v20 + 48))(v2 + v63, 1, v19);
    if (!result)
    {
      v64 = v2 + v63;
      v28 = v77;
      sub_26135E584(v64, v77);
      v29 = sub_2613A0BAC();
      v31 = v65;
      v32 = sub_2613A092C();
LABEL_29:
      sub_2612DC510(v29, v31, v32, v33);

      v47 = v28;
      return sub_26135E528(v47);
    }
  }

  return result;
}

uint64_t sub_26135934C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v42 - v12;
  v14 = sub_26129BA7C();
  sub_26125A870(v14, v13, &qword_27FE9F560, &qword_2613A3CB0);
  v15 = sub_2613A124C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    result = sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v18 = sub_2613A122C();
    v19 = sub_2613A1D9C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_261243000, v18, v19, "Identity T&C accepted, registering", v20, 2u);
      MEMORY[0x266701350](v20, -1, -1);
    }

    result = (*(v16 + 8))(v13, v15);
  }

  v21 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask);
  if (v21)
  {
    v22 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask + 8);
    v23 = (v3 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareHandler);
    swift_beginAccess();
    v24 = *v23;
    v25 = v23[1];
    v26 = (v3 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareSessionID);
    v27 = a1;
    v28 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareSessionID + 8);
    *v26 = 0;
    v26[1] = 0;
    sub_26124A17C(v21);
    sub_26124A17C(v24);

    v29 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError);
    *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError) = 0;

    v30 = swift_allocObject();
    v42 = v9;
    v31 = a2;
    v32 = v30;
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v33[2] = v27;
    v33[3] = v31;
    v33[4] = v32;
    v33[5] = v24;
    v33[6] = v25;
    v34 = *v23;
    v35 = v23[1];
    *v23 = sub_26135E69C;
    v23[1] = v33;
    sub_26124A17C(v24);

    sub_26124A228(v34);

    v36 = sub_2613A1C1C();
    v37 = v42;
    (*(*(v36 - 8) + 56))(v42, 1, 1, v36);
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v38;
    v39[5] = v21;
    v39[6] = v22;

    v40 = sub_261266800(0, 0, v37, &unk_2613ACFC0, v39);
    sub_26124A228(v24);
    sub_26124A228(v21);
    v41 = *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_registrationTask);
    *(v3 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_registrationTask) = v40;
  }

  return result;
}

void sub_261359754(uint64_t a1, uint64_t a2, void *a3, void (*a4)(BOOL), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a1;
  v62 = a8;
  v64 = a5;
  v65 = a4;
  v63 = sub_26139F64C();
  v11 = *(v63 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v63);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v57 - v20;
  if (a3)
  {
    v22 = a3;
    v23 = sub_26129BA7C();
    sub_26125A870(v23, v19, &qword_27FE9F560, &qword_2613A3CB0);
    v24 = sub_2613A124C();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v19, 1, v24) == 1)
    {

      sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v59 = a7;
      v29 = a3;
      v30 = sub_2613A122C();
      v31 = sub_2613A1D8C();

      v58 = v30;
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v60 = a2;
        v33 = v32;
        v34 = swift_slowAlloc();
        *v33 = 138412290;
        v35 = a3;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 4) = v36;
        *v34 = v36;
        v37 = v31;
        v38 = v58;
        _os_log_impl(&dword_261243000, v58, v37, "Identity registration error: [ %@ ]", v33, 0xCu);
        sub_26124C718(v34, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v34, -1, -1);
        v39 = v33;
        a2 = v60;
        MEMORY[0x266701350](v39, -1, -1);
      }

      else
      {
      }

      (*(v25 + 8))(v19, v24);
      a7 = v59;
    }
  }

  else
  {
    v60 = a2;
    v26 = sub_26129BA7C();
    sub_26125A870(v26, v21, &qword_27FE9F560, &qword_2613A3CB0);
    v27 = sub_2613A124C();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v21, 1, v27) == 1)
    {
      sub_26124C718(v21, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v59 = a7;
      v40 = sub_2613A122C();
      v41 = sub_2613A1D9C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_261243000, v40, v41, "Identity registration completed", v42, 2u);
        MEMORY[0x266701350](v42, -1, -1);
      }

      (*(v28 + 8))(v21, v27);
      a7 = v59;
    }

    a2 = v60;
  }

  sub_26139F48C();
  sub_26139F5BC();
  (*(v11 + 8))(v14, v63);
  v65(a3 == 0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v44 = (Strong + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareSessionID);
    v45 = *(Strong + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareSessionID + 8);
    *v44 = v61;
    v44[1] = a2;
    v46 = Strong;
  }

  swift_beginAccess();
  v47 = swift_unknownObjectWeakLoadStrong();
  if (v47)
  {
    v48 = *(v47 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError);
    *(v47 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareError) = a3;
    v49 = v47;
    v50 = a3;
  }

  swift_beginAccess();
  v51 = swift_unknownObjectWeakLoadStrong();
  if (v51)
  {
    v52 = (v51 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareHandler);
    v53 = v51;
    swift_beginAccess();
    v54 = *v52;
    v55 = v52[1];
    v56 = v62;
    *v52 = a7;
    v52[1] = v56;
    sub_26124A17C(a7);
    sub_26124A228(v54);
  }
}

uint64_t sub_261359CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_26139F64C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261359D94);
}

uint64_t sub_261359D94()
{
  if (sub_2613A1CDC())
  {
    v1 = v0[5];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *&Strong[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_registrationTask];
      *&Strong[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_registrationTask] = 0;
    }

    v4 = v0[10];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[8];
    v10 = v0[6];
    sub_26139F48C();
    sub_26139F5DC();
    (*(v8 + 8))(v7, v9);
    v14 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[11] = v12;
    *v12 = v0;
    v12[1] = sub_261359F44;
    v13 = v0[7];

    return v14(1);
  }
}

uint64_t sub_261359F44()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26135A040);
}

uint64_t sub_26135A040()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&Strong[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_registrationTask];
    *&Strong[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_registrationTask] = 0;
  }

  v4 = v0[10];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26135A16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_2613A204C();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_26135AAEC(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = sub_26139FD9C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_26135A228(uint64_t a1, int *a2, int *a3)
{
  v6 = sub_2613A002C();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    return 0;
  }

  v16 = *(v11 + 16);
  v15 = v11 + 16;
  v31 = v16;
  v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
  v28 = *(v15 + 56);
  v18 = (v15 + 16);
  v19 = (v15 + 72);
  v20 = *a2;
  v29 = *a3;
  v30 = v20;
  v21 = (v15 - 8);
  do
  {
    v22 = v15;
    v31(v13, v17, v6);
    (*v18)(v10, v13, v6);
    v23 = (*v19)(v10, v6);
    v24 = v23 == v30 || v23 == v29;
    v25 = v24;
    if (v24)
    {
      break;
    }

    (*v21)(v10, v6);
    v17 += v28;
    --v14;
    v15 = v22;
  }

  while (v14);
  return v25;
}

uint64_t sub_26135A3F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0788, &qword_2613AD118);
  v41 = a2;
  result = sub_2613A223C();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 96 * v22);
      if (v41)
      {
        v45 = v26[2];
        v44 = v26[3];
        v43 = v26[4];
        v42 = v26[5];
        v49 = v26[6];
        v46 = v26[7];
        v47 = v26[1];
        v51 = *v26;
        v52 = v26[8];
        v48 = v26[9];
        v53 = v26[10];
        v50 = v26[11];
      }

      else
      {
        v27 = *(v26 + 2);
        v28 = *(v26 + 3);
        v29 = *(v26 + 5);
        v57 = *(v26 + 4);
        v58 = v29;
        v56 = v28;
        v30 = *(v26 + 1);
        v55[0] = *v26;
        v55[1] = v30;
        v55[2] = v27;
        v52 = v57;
        v53 = v29;
        v49 = v56;
        v50 = *(&v29 + 1);
        v47 = *(&v55[0] + 1);
        v51 = *&v55[0];
        v48 = *(&v57 + 1);
        v45 = v30;
        v46 = *(&v56 + 1);
        v44 = *(&v30 + 1);
        v42 = *(&v27 + 1);
        v43 = v27;

        sub_26135F62C(v55, v54);
      }

      v31 = *(v8 + 40);
      sub_2613A256C();
      sub_2613A19DC();
      result = sub_2613A25CC();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v8 + 56) + 96 * v16);
      *v18 = v51;
      v18[1] = v47;
      v18[2] = v45;
      v18[3] = v44;
      v18[4] = v43;
      v18[5] = v42;
      v18[6] = v49;
      v18[7] = v46;
      v18[8] = v52;
      v18[9] = v48;
      v18[10] = v53;
      v18[11] = v50;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_26135A79C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26124E5EC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26135A3F0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_26124E5EC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2613A249C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_26135A934();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 96 * v11;

    return sub_26135F5D0(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v22[7] + 96 * v11);
  v27 = a1[1];
  *v26 = *a1;
  v26[1] = v27;
  v28 = a1[2];
  v29 = a1[3];
  v30 = a1[5];
  v26[4] = a1[4];
  v26[5] = v30;
  v26[2] = v28;
  v26[3] = v29;
  v31 = v22[2];
  v15 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v32;
}

void *sub_26135A934()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0788, &qword_2613AD118);
  v2 = *v0;
  v3 = sub_2613A222C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 96;
        v23 = *(v19 + v17 + 32);
        v24 = *(v19 + v17 + 48);
        v25 = *(v19 + v17 + 80);
        v38 = *(v19 + v17 + 64);
        v39 = v25;
        v37 = v24;
        v26 = *(v19 + v17 + 16);
        v34 = *(v19 + v17);
        v35 = v26;
        v36 = v23;
        v27 = (*(v4 + 48) + v18);
        *v27 = v22;
        v27[1] = v21;
        v28 = (*(v4 + 56) + v17);
        v29 = v35;
        *v28 = v34;
        v28[1] = v29;
        v30 = v36;
        v31 = v37;
        v32 = v39;
        v28[4] = v38;
        v28[5] = v32;
        v28[2] = v30;
        v28[3] = v31;

        result = sub_26135F62C(&v34, &v33);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26135AAEC@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_26139FD9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

unint64_t sub_26135ABAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA0788, &qword_2613AD118);
  v3 = sub_2613A224C();

  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v4;
  v33 = *(a1 + 128);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  sub_26125A870(&v27, v26, &qword_27FEA07B0, &unk_2613AD190);
  result = sub_26124E5EC(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 144);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = (v3[7] + 96 * result);
    v14 = v29;
    *v13 = v28;
    v13[1] = v14;
    v15 = v30;
    v16 = v31;
    v17 = v33;
    v13[4] = v32;
    v13[5] = v17;
    v13[2] = v15;
    v13[3] = v16;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = v11 + 7;
    v22 = v11[5];
    v31 = v11[4];
    v32 = v22;
    v33 = v11[6];
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    sub_26125A870(&v27, v26, &qword_27FEA07B0, &unk_2613AD190);
    result = sub_26124E5EC(v7, v8);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26135AD64()
{
  result = qword_27FEA0758;
  if (!qword_27FEA0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA0758);
  }

  return result;
}

void sub_26135ADB8(char *a1, void (*a2)(void, void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a5;
  v52 = a2;
  v7 = sub_26139F30C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v47 - v21;
  v23 = *&a1[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_readError];
  if (v23)
  {
    v24 = v23;
    v25 = sub_26129BA7C();
    sub_26125A870(v25, v22, &qword_27FE9F560, &qword_2613A3CB0);
    v26 = sub_2613A124C();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v22, 1, v26) == 1)
    {
      sub_26124C718(v22, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v31 = v23;
      v32 = sub_2613A122C();
      v33 = sub_2613A1D8C();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = v23;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_261243000, v32, v33, "Returning read error [ %@ ]", v34, 0xCu);
        sub_26124C718(v35, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v35, -1, -1);
        MEMORY[0x266701350](v34, -1, -1);
      }

      (*(v27 + 8))(v22, v26);
    }

    v52(0, v23);
  }

  else
  {
    v47 = v15;
    v48 = v11;
    v49 = v8;
    v50 = a3;
    v28 = sub_26129BA7C();
    sub_26125A870(v28, v20, &qword_27FE9F560, &qword_2613A3CB0);
    v29 = sub_2613A124C();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v20, 1, v29) == 1)
    {
      sub_26124C718(v20, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v38 = sub_2613A122C();
      v39 = sub_2613A1D8C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_261243000, v38, v39, "No response or error from read, cancel transaction", v40, 2u);
        MEMORY[0x266701350](v40, -1, -1);
      }

      (*(v30 + 8))(v20, v29);
    }

    v41 = v7;
    v43 = v47;
    v42 = v48;
    v44 = sub_2613A1C1C();
    (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = a1;
    a1;
    sub_261266800(0, 0, v43, v51, v45);

    (*(v49 + 104))(v42, *MEMORY[0x277D436D8], v41);
    sub_26139F33C();
    sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0]);
    v46 = swift_allocError();
    sub_26139F31C();
    v52(0, v46);

    sub_26137C1FC();
  }
}

void sub_26135B36C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v12 - v4;
  if ((*(**(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager) + 192))(v3))
  {

    sub_261356FD4();
  }

  else if ((*(**(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_regUIManager) + 192))())
  {

    sub_261357180();
  }

  else
  {
    v6 = sub_26129BA7C();
    sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
    v7 = sub_2613A124C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v5, 1, v7) == 1)
    {
      sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v9 = sub_2613A122C();
      v10 = sub_2613A1D8C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_261243000, v9, v10, "No UI seems loaded, unable to process uiFinished", v11, 2u);
        MEMORY[0x266701350](v11, -1, -1);
      }

      (*(v8 + 8))(v5, v7);
    }
  }
}

uint64_t sub_26135B5C0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261265144;

  return sub_261350524(v3, v4, v5, v2);
}

uint64_t sub_26135B654(char *a1, void (**a2)(void, void))
{
  v4 = sub_26139F30C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  v42 = swift_allocObject();
  *(v42 + 16) = a2;
  _Block_copy(a2);
  v20 = sub_26139FFDC();
  v21 = sub_26129BA7C();
  if (v20)
  {
    sub_26125A870(v21, v19, &qword_27FE9F560, &qword_2613A3CB0);
    v22 = sub_2613A124C();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v19, 1, v22) == 1)
    {
      sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v26 = sub_2613A122C();
      v27 = sub_2613A1D9C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_261243000, v26, v27, "Executing host app cancel read request", v28, 2u);
        MEMORY[0x266701350](v28, -1, -1);
      }

      (*(v23 + 8))(v19, v22);
    }

    sub_26137C1FC();
    sub_26134D8A0();
    v29 = OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask;
    if (*&a1[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask])
    {
      v30 = *&a1[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask];

      sub_2613A1C9C();

      v31 = *&a1[v29];
    }

    *&a1[v29] = 0;

    [*&a1[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_uiManager] updateUIState_];
    v37 = sub_2613A1C1C();
    (*(*(v37 - 8) + 56))(v12, 1, 1, v37);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = a1;
    v38[5] = sub_26135E930;
    v38[6] = v42;
    v39 = a1;

    sub_261266800(0, 0, v12, &unk_2613AD050, v38);
  }

  else
  {
    sub_26125A870(v21, v17, &qword_27FE9F560, &qword_2613A3CB0);
    v24 = sub_2613A124C();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v17, 1, v24) == 1)
    {
      sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v32 = sub_2613A122C();
      v33 = sub_2613A1D8C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_261243000, v32, v33, "no entitlement", v34, 2u);
        MEMORY[0x266701350](v34, -1, -1);
      }

      (*(v25 + 8))(v17, v24);
    }

    (*(v5 + 104))(v8, *MEMORY[0x277D43638], v4);
    sub_26139F33C();
    sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0]);
    v35 = swift_allocError();
    sub_26139F31C();
    v36 = sub_26139EE6C();
    (a2)[2](a2, v36);
  }
}

uint64_t sub_26135BC34(void (*a1)(void, void, void))
{
  v2 = sub_26139F33C();
  v98 = *(v2 - 8);
  v99 = v2;
  v3 = *(v98 + 64);
  MEMORY[0x28223BE20](v2);
  v97 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v102 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v100 = &v93 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v93 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v93 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v93 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v93 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v93 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v93 - v26;
  v28 = sub_26139F30C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = a1;
  sub_26139F32C();
  v101 = v29;
  v33 = (*(v29 + 88))(v32, v28);
  if (v33 == *MEMORY[0x277D43648])
  {
    v34 = sub_26129BA7C();
    sub_26125A870(v34, v22, &qword_27FE9F560, &qword_2613A3CB0);
    v35 = sub_2613A124C();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v22, 1, v35) == 1)
    {
      sub_26124C718(v22, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v41 = sub_2613A122C();
      v42 = sub_2613A1D8C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_261243000, v41, v42, "Show alert for NFC disabled", v43, 2u);
        MEMORY[0x266701350](v43, -1, -1);
      }

      (*(v36 + 8))(v22, v35);
    }

    sub_2613A121C();
    return sub_2613A112C();
  }

  else
  {
    v37 = v33;
    if (v33 == *MEMORY[0x277D43698])
    {
      v38 = sub_26129BA7C();
      sub_26125A870(v38, v25, &qword_27FE9F560, &qword_2613A3CB0);
      v39 = sub_2613A124C();
      v40 = *(v39 - 8);
      if ((*(v40 + 48))(v25, 1, v39) == 1)
      {
        sub_26124C718(v25, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v48 = sub_2613A122C();
        v49 = sub_2613A1D8C();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_261243000, v48, v49, "Show alert for Bluetooth disabled", v50, 2u);
          MEMORY[0x266701350](v50, -1, -1);
        }

        (*(v40 + 8))(v25, v39);
      }

      sub_2613A121C();
      return sub_2613A11BC();
    }

    else if (v33 == *MEMORY[0x277D436C0])
    {
      v45 = sub_26129BA7C();
      sub_26125A870(v45, v19, &qword_27FE9F560, &qword_2613A3CB0);
      v46 = sub_2613A124C();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v19, 1, v46) == 1)
      {
        sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v54 = sub_2613A122C();
        v55 = sub_2613A1D8C();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&dword_261243000, v54, v55, "Show alert for iCloud Two-Factor Auth disabled", v56, 2u);
          MEMORY[0x266701350](v56, -1, -1);
        }

        (*(v47 + 8))(v19, v46);
      }

      sub_2613A121C();
      return sub_2613A11DC();
    }

    else if (v33 == *MEMORY[0x277D43688])
    {
      v51 = sub_26129BA7C();
      sub_26125A870(v51, v16, &qword_27FE9F560, &qword_2613A3CB0);
      v52 = sub_2613A124C();
      v53 = *(v52 - 8);
      if ((*(v53 + 48))(v16, 1, v52) == 1)
      {
        sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v60 = sub_2613A122C();
        v61 = sub_2613A1D8C();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_261243000, v60, v61, "Show alert for iCloud signed out", v62, 2u);
          MEMORY[0x266701350](v62, -1, -1);
        }

        (*(v53 + 8))(v16, v52);
      }

      sub_2613A121C();
      return sub_2613A118C();
    }

    else if (v33 == *MEMORY[0x277D43690])
    {
      v57 = sub_26129BA7C();
      sub_26125A870(v57, v27, &qword_27FE9F560, &qword_2613A3CB0);
      v58 = sub_2613A124C();
      v59 = *(v58 - 8);
      if ((*(v59 + 48))(v27, 1, v58) == 1)
      {
        sub_26124C718(v27, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v66 = sub_2613A122C();
        v67 = sub_2613A1D8C();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&dword_261243000, v66, v67, "Show alert for Passcode disabled", v68, 2u);
          MEMORY[0x266701350](v68, -1, -1);
        }

        (*(v59 + 8))(v27, v58);
      }

      sub_2613A121C();
      return sub_2613A119C();
    }

    else if (v33 == *MEMORY[0x277D436A8])
    {
      v63 = sub_26129BA7C();
      sub_26125A870(v63, v13, &qword_27FE9F560, &qword_2613A3CB0);
      v64 = sub_2613A124C();
      v65 = *(v64 - 8);
      if ((*(v65 + 48))(v13, 1, v64) == 1)
      {
        sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v74 = sub_2613A122C();
        v75 = sub_2613A1D8C();
        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          *v76 = 0;
          _os_log_impl(&dword_261243000, v74, v75, "Show alert for iOS version not supported", v76, 2u);
          MEMORY[0x266701350](v76, -1, -1);
        }

        (*(v65 + 8))(v13, v64);
      }

      sub_2613A121C();
      return sub_2613A11CC();
    }

    else
    {
      v69 = *MEMORY[0x277D436B0];
      v70 = sub_26129BA7C();
      if (v37 == v69)
      {
        v71 = v100;
        sub_26125A870(v70, v100, &qword_27FE9F560, &qword_2613A3CB0);
        v72 = sub_2613A124C();
        v73 = *(v72 - 8);
        if ((*(v73 + 48))(v71, 1, v72) == 1)
        {
          sub_26124C718(v71, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v80 = sub_2613A122C();
          v81 = sub_2613A1D7C();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            *v82 = 0;
            _os_log_impl(&dword_261243000, v80, v81, "Show alert for Continuity display not allowed", v82, 2u);
            MEMORY[0x266701350](v82, -1, -1);
          }

          (*(v73 + 8))(v71, v72);
        }

        sub_2613A121C();
        return sub_2613A11FC();
      }

      else
      {
        v77 = v102;
        sub_26125A870(v70, v102, &qword_27FE9F560, &qword_2613A3CB0);
        v78 = sub_2613A124C();
        v79 = *(v78 - 8);
        if ((*(v79 + 48))(v77, 1, v78) == 1)
        {
          sub_26124C718(v77, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v84 = v97;
          v83 = v98;
          v85 = v96;
          v86 = v99;
          v96 = *(v98 + 16);
          v96(v97, v85, v99);
          v87 = sub_2613A122C();
          LODWORD(v100) = sub_2613A1D9C();
          if (os_log_type_enabled(v87, v100))
          {
            v88 = swift_slowAlloc();
            v94 = v88;
            v95 = swift_slowAlloc();
            *v88 = 138412290;
            sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0]);
            swift_allocError();
            v96(v89, v84, v86);
            v90 = _swift_stdlib_bridgeErrorToNSError();
            (*(v83 + 8))(v84, v86);
            v91 = v94;
            v92 = v95;
            *(v94 + 1) = v90;
            *v92 = v90;
            v77 = v102;
            _os_log_impl(&dword_261243000, v87, v100, "No alert needed for error: [ %@ ]", v91, 0xCu);
            sub_26124C718(v92, &qword_27FEA0410, &qword_2613AA780);
            MEMORY[0x266701350](v92, -1, -1);
            MEMORY[0x266701350](v91, -1, -1);
          }

          else
          {

            (*(v83 + 8))(v84, v86);
          }

          (*(v79 + 8))(v77, v78);
        }

        return (*(v101 + 8))(v32, v28);
      }
    }
  }
}

uint64_t sub_26135CAC0(void *a1, const void *a2)
{
  v30 = a1;
  v32 = sub_26139F33C();
  v29 = *(v32 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v32);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v26 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  _Block_copy(a2);
  v13 = sub_26129BA7C();
  sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v16 = sub_2613A122C();
    v17 = sub_2613A1D9C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v27 = v15;
      v19 = v18;
      *v18 = 0;
      _os_log_impl(&dword_261243000, v16, v17, "Reading configuration", v18, 2u);
      v15 = v27;
      MEMORY[0x266701350](v19, -1, -1);
    }

    (*(v15 + 8))(v12, v14);
  }

  v20 = v30;
  sub_26134BF00(0);
  v21 = sub_2613A1C1C();
  v22 = v26;
  (*(*(v21 - 8) + 56))(v26, 1, 1, v21);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v20;
  v23[5] = sub_26135ED14;
  v23[6] = v31;
  v24 = v20;

  sub_261266800(0, 0, v22, &unk_2613AD078, v23);
}

uint64_t sub_26135D0E4(uint64_t a1, unint64_t a2, char *a3, const void *a4)
{
  v57 = a1;
  v7 = sub_26139F33C();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v54 = &v50 - v11;
  v12 = sub_26139F64C();
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = *(v52 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v50 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  _Block_copy(a4);
  v21 = sub_26129BA7C();
  sub_26125A870(v21, v19, &qword_27FE9F560, &qword_2613A3CB0);
  v22 = sub_2613A124C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v19, 1, v22) == 1)
  {
    sub_26124C718(v19, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v51 = v20;
    v24 = sub_2613A122C();
    v25 = sub_2613A1D9C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v50 = a3;
      v27 = v26;
      *v26 = 0;
      _os_log_impl(&dword_261243000, v24, v25, "Received prepare request", v26, 2u);
      v28 = v27;
      a3 = v50;
      MEMORY[0x266701350](v28, -1, -1);
    }

    (*(v23 + 8))(v19, v22);
    v20 = v51;
  }

  v29 = HIBYTE(a2) & 0xF;
  v30 = v57;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v29 = v57 & 0xFFFFFFFFFFFFLL;
  }

  v31 = v29 != 0;
  if (a2)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  sub_26134BF00(1);
  sub_26139F45C();
  sub_26139F5DC();
  (*(v52 + 8))(v15, v53);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = v30;
  v35 = a3;
  v36 = swift_allocObject();
  *(v36 + 16) = v33;
  *(v36 + 24) = v32;
  *(v36 + 32) = sub_26135EB88;
  *(v36 + 40) = v20;
  v37 = &v35[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareHandler];
  swift_beginAccess();
  v38 = *v37;
  v39 = v37[1];
  *v37 = sub_26135F9F8;
  v37[1] = v36;

  sub_26124A228(v38);

  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v34;
  v41[4] = a2;
  v42 = &v35[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask];
  v43 = *&v35[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask];
  v44 = *&v35[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_prepareTask + 8];
  *v42 = &unk_2613AD068;
  *(v42 + 1) = v41;

  sub_26124A228(v43);

  v45 = sub_2613A1C1C();
  v46 = v54;
  (*(*(v45 - 8) + 56))(v54, 1, 1, v45);
  v47 = swift_allocObject();
  v47[2] = 0;
  v47[3] = 0;
  v47[4] = v35;
  v48 = v35;
  sub_261266800(0, 0, v46, &unk_2613AD070, v47);
}

uint64_t sub_26135D744(void *a1, void *a2, const void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - v8;
  v10 = sub_26139F33C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v37 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  _Block_copy(a3);
  v17 = a2;
  sub_26134C43C(v17, v17);
  v18 = sub_26129BA7C();
  sub_26125A870(v18, v15, &qword_27FE9F560, &qword_2613A3CB0);
  v19 = sub_2613A124C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v15, 1, v19) == 1)
  {
    sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v21 = a1;
    v22 = sub_2613A122C();
    v23 = sub_2613A1D9C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v38 = v22;
      v25 = v24;
      v26 = swift_slowAlloc();
      v37 = v26;
      *v25 = 138412290;
      *(v25 + 4) = v21;
      *v26 = v21;
      v27 = v21;
      _os_log_impl(&dword_261243000, v38, v23, "Executing Data Request:\n%@", v25, 0xCu);
      v28 = v37;
      sub_26124C718(v37, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v28, -1, -1);
      v29 = v25;
      v22 = v38;
      MEMORY[0x266701350](v29, -1, -1);
    }

    (*(v20 + 8))(v15, v19);
  }

  v30 = sub_2613A1C1C();
  (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v31;
  v32[5] = a1;
  v32[6] = sub_26135F9F4;
  v32[7] = v16;
  v33 = a1;

  v34 = sub_261266800(0, 0, v9, &unk_2613AD060, v32);
  v35 = *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask];
  *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask] = v34;
}

uint64_t sub_26135DC4C(void *a1, void *a2, const void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - v8;
  v10 = sub_26139F33C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v37 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  _Block_copy(a3);
  v17 = a2;
  sub_26134C998(v17, v17);
  v18 = sub_26129BA7C();
  sub_26125A870(v18, v15, &qword_27FE9F560, &qword_2613A3CB0);
  v19 = sub_2613A124C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v15, 1, v19) == 1)
  {
    sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v21 = a1;
    v22 = sub_2613A122C();
    v23 = sub_2613A1D9C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v38 = v22;
      v25 = v24;
      v26 = swift_slowAlloc();
      v37 = v26;
      *v25 = 138412290;
      *(v25 + 4) = v21;
      *v26 = v21;
      v27 = v21;
      _os_log_impl(&dword_261243000, v38, v23, "Executing Display Request:\n%@", v25, 0xCu);
      v28 = v37;
      sub_26124C718(v37, &qword_27FEA0410, &qword_2613AA780);
      MEMORY[0x266701350](v28, -1, -1);
      v29 = v25;
      v22 = v38;
      MEMORY[0x266701350](v29, -1, -1);
    }

    (*(v20 + 8))(v15, v19);
  }

  v30 = sub_2613A1C1C();
  (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v32[4] = v31;
  v32[5] = a1;
  v32[6] = sub_26135F9F4;
  v32[7] = v16;
  v33 = a1;

  v34 = sub_261266800(0, 0, v9, &unk_2613AD058, v32);
  v35 = *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask];
  *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon21IdentityReaderService_requestExecutionTask] = v34;
}

uint64_t sub_26135E154()
{
  v0 = sub_26139F64C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = sub_26129BA7C();
  sub_26125A870(v9, v8, &qword_27FE9F560, &qword_2613A3CB0);
  v10 = sub_2613A124C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v12 = sub_2613A122C();
    v13 = sub_2613A1D9C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_261243000, v12, v13, "Identity registration UI is visible", v14, 2u);
      MEMORY[0x266701350](v14, -1, -1);
    }

    (*(v11 + 8))(v8, v10);
  }

  sub_26139F55C();
  sub_26139F5BC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_26135E398()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261265144;

  return sub_26134E5AC(v3, v4, v5, v2);
}

uint64_t sub_26135E42C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_2613582FC(v4, v5, v6, v2);
}

uint64_t sub_26135E4C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityAnalyticsTransaction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26135E528(uint64_t a1)
{
  v2 = type metadata accessor for IdentityAnalyticsTransaction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26135E584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityAnalyticsTransaction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26135E5E8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_261265144;

  return sub_2613586F0(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_26135E6AC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_261359CD0(v5, v6, v7, v2, v3, v4);
}

uint64_t type metadata accessor for IdentityReaderService()
{
  result = qword_27FEAE410;
  if (!qword_27FEAE410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26135E7A8()
{
  v0 = sub_26139FFEC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_26135E8D8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_26135E8D8()
{
  if (!qword_27FEA0768)
  {
    type metadata accessor for IdentityAnalyticsTransaction(255);
    v0 = sub_2613A1F8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FEA0768);
    }
  }
}

uint64_t sub_26135E938()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_261356544(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_26135E9E0()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_261265144;

  return sub_2613543D8(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t objectdestroy_29Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26135EADC()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_261265144;

  return sub_261352848(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26135EBD0(char a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_261265144;

  return sub_261351584(a1, v4, v5, v6);
}

uint64_t sub_26135EC80()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261265144;

  return sub_26135230C(v3, v4, v5, v2);
}

uint64_t sub_26135ED30()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_261350628(v5, v6, v7, v2, v3, v4);
}

uint64_t objectdestroy_16Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 40);

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t sub_26135EE20()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261265144;

  return sub_261357458(v4, v5, v6, v2);
}

uint64_t sub_26135EEB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_261265144;

  return sub_26135469C(v2, v3, v5, v4);
}

uint64_t sub_26135EF70(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_2613A147C() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_261265144;

  return sub_26135536C(a1, a2, v8, v2 + v7, v9);
}

uint64_t sub_26135F090(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26135F0D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_261262AA4;

  return sub_261352B84(v2, v3, v5, v4);
}

uint64_t sub_26135F190(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  ObjectType = swift_getObjectType();
  v10 = sub_26139F33C();
  sub_26135F090(&qword_27FEA0760, MEMORY[0x277D436E0]);
  v11 = swift_allocError();
  (*(*(v10 - 8) + 16))(v12, a1, v10);
  v6(0, v11);

  v15[3] = ObjectType;
  v15[4] = a2;
  v15[0] = v8;
  v13 = v8;
  sub_26137B4C0(v15, a1);
  return __swift_destroy_boxed_opaque_existential_0Tm(v15);
}

uint64_t objectdestroy_158Tm()
{
  v1 = sub_26139F64C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_143Tm()
{
  v1 = sub_2613A147C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_26135F4B0(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_2613A147C() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_261265144;

  return sub_261353888(a1, a2, v8, v2 + v7, v9);
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26135F6D0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261262AA4;

  return sub_261356544(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_26135F778()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261265144;

  return sub_26134E5AC(v3, v4, v5, v2);
}

uint64_t sub_26135F80C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261265144;

  return sub_26134E5AC(v3, v4, v5, v2);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26135F8E0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07A0, &qword_2613AD170) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261265144;

  return sub_26134B8A4(v5, v6, v7, v0 + v3, v4);
}

__n128 sub_26135F9FC@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a4 + 32);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 9) = a3;
  result = *a4;
  v7 = *(a4 + 16);
  *(a5 + 16) = *a4;
  *(a5 + 32) = v7;
  *(a5 + 48) = v5;
  return result;
}

uint64_t sub_26135FA2C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEA07D8, &qword_2613AD218) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26135FAD4);
}

uint64_t sub_26135FAD4()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_storeAnalytics;
  v0[12] = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_storeAnalytics;
  swift_beginAccess();
  sub_26125A870(v2 + v3, v1, &qword_27FEA07D8, &qword_2613AD218);
  v4 = type metadata accessor for StoreAnalytics();
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_26124C718(v1, &qword_27FEA07D8, &qword_2613AD218);
  if (v2 == 1)
  {
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_26135FC8C;
    v6 = v0[10];

    return sub_2612674C4(v6);
  }

  else
  {
    v8 = v0[11];
    v9 = v0[10];
    sub_26125A870(v0[9] + v0[12], v0[8], &qword_27FEA07D8, &qword_2613AD218);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_26135FC8C()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26135FD88);
}

uint64_t sub_26135FD88()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  swift_beginAccess();
  sub_26125C010(v2, v3 + v1, &qword_27FEA07D8, &qword_2613AD218);
  swift_endAccess();
  v4 = v0[11];
  v5 = v0[10];
  sub_26125A870(v0[9] + v0[12], v0[8], &qword_27FEA07D8, &qword_2613AD218);

  v6 = v0[1];

  return v6();
}

id sub_26135FE64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = v8;
  v54 = a8;
  v56 = a7;
  v55 = a6;
  v53 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v52 = &v50 - v16;
  v57 = v9;
  v17 = objc_allocWithZone(v9);
  v51 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_storeAndForwardStorage;
  *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_storeAndForwardStorage] = 0;
  v18 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_storeAnalytics;
  v19 = type metadata accessor for StoreAnalytics();
  (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_connection;
  *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_connection] = a1;
  v21 = a1;
  sub_26128DAD8(v21, v61);
  v22 = &v17[OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_entitlements];
  v23 = v61[3];
  *(v22 + 2) = v61[2];
  *(v22 + 3) = v23;
  *(v22 + 4) = v62[0];
  *(v22 + 79) = *(v62 + 15);
  v24 = v61[1];
  *v22 = v61[0];
  *(v22 + 1) = v24;
  type metadata accessor for NetworkConnectivityMonitor();
  v25 = sub_2612C5C70();
  v26 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_networkConnectivityMonitor;
  *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_networkConnectivityMonitor] = v25;
  v27 = sub_261372C14(a2, a3, v53, a5, v55, v56, v54 & 1);

  if (v27)
  {
    *&v17[OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext] = v27;

    v28 = *(**sub_2612C11DC() + 112);

    v28(v59, v29);

    sub_26124A200(v59, &v17[OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter]);
    v58.receiver = v17;
    v58.super_class = v57;
    v30 = objc_msgSendSuper2(&v58, sel_init);
  }

  else
  {
    v56 = v20;
    v31 = v21;
    v32 = sub_26129B934();
    v33 = v52;
    sub_26125A870(v32, v52, &qword_27FE9F560, &qword_2613A3CB0);
    v34 = sub_2613A124C();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v33, 1, v34) == 1)
    {

      sub_26124C718(v33, &qword_27FE9F560, &qword_2613A3CB0);
      v36 = v51;
    }

    else
    {
      v55 = v26;
      v37 = sub_2613A122C();
      v38 = sub_2613A1D8C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_261243000, v37, v38, "Could not retrieve context", v39, 2u);
        v40 = v39;
        v33 = v52;
        MEMORY[0x266701350](v40, -1, -1);
      }

      (*(v35 + 8))(v33, v34);
      v36 = v51;
      v26 = v55;
    }

    v41 = *v22;
    v59[1] = *(v22 + 1);
    v59[0] = v41;
    v42 = *(v22 + 2);
    v43 = *(v22 + 3);
    v44 = *(v22 + 4);
    *&v60[15] = *(v22 + 79);
    v59[3] = v43;
    *v60 = v44;
    v59[2] = v42;
    sub_26127D7B0(v59);
    v45 = *&v17[v26];

    v46 = *&v17[v36];

    sub_26124C718(&v17[v18], &qword_27FEA07D8, &qword_2613AD218);
    v47 = *((*MEMORY[0x277D85000] & *v17) + 0x30);
    v48 = *((*MEMORY[0x277D85000] & *v17) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v30;
}

id sub_261360330()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for StoreAnalytics();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_storeAnalytics;
  swift_beginAccess();
  if (!(*(v4 + 48))(&v1[v8], 1, v3))
  {
    sub_2613765A4(&v1[v8], v7, type metadata accessor for StoreAnalytics);
    sub_261266F18();
    sub_261376698(v7, type metadata accessor for StoreAnalytics);
  }

  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

uint64_t sub_261360684()
{
  v2 = sub_26139FB0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v24 - v9;
  v11 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_storeAndForwardStorage;
  v12 = *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_storeAndForwardStorage);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_storeAndForwardStorage);
  }

  else if (sub_261252980())
  {
    v14 = sub_261252928();
    if (v1)
    {
      swift_getErrorValue();
      *v6 = sub_2613A250C();
      (*(v3 + 104))(v6, *MEMORY[0x277D43890], v2);
      v15 = objc_allocWithZone(sub_26139FB2C());
      v12 = sub_26139FB3C();
      v24[1] = v12;
      sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
      swift_willThrowTypedImpl();
    }

    else
    {
      v12 = v14;
      v22 = *(v0 + v11);
      *(v0 + v11) = v14;
    }
  }

  else
  {
    v16 = sub_26129B934();
    sub_26125A870(v16, v10, &qword_27FE9F560, &qword_2613A3CB0);
    v17 = sub_2613A124C();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v10, 1, v17) == 1)
    {
      sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v19 = sub_2613A122C();
      v20 = sub_2613A1D7C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_261243000, v19, v20, "SAF DB does not exist yet", v21, 2u);
        MEMORY[0x266701350](v21, -1, -1);
      }

      (*(v18 + 8))(v10, v17);
    }

    return 0;
  }

  return v12;
}

uint64_t sub_2613609EC()
{
  v1[7] = v0;
  v2 = sub_26139FAAC();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v5 = sub_26139FB0C();
  v1[11] = v5;
  v6 = *(v5 - 8);
  v1[12] = v6;
  v7 = *(v6 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v8 = sub_2613A1EBC();
  v1[15] = v8;
  v9 = *(v8 - 8);
  v1[16] = v9;
  v10 = *(v9 + 64) + 15;
  v1[17] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261360BB4);
}

uint64_t sub_261360BB4()
{
  v1 = v0[19];
  v2 = sub_26129B934();
  v0[20] = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[21] = v3;
  v4 = *(v3 - 8);
  v0[22] = v4;
  v5 = *(v4 + 48);
  v0[23] = v5;
  v0[24] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = v5(v1, 1, v3);
  v7 = v0[19];
  if (v6 == 1)
  {
    sub_26124C718(v0[19], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v8 = v0[7];
    v9 = sub_26125A798();
    v10 = sub_261291AA8();
    sub_26129BC3C(v9 & 1, v8, 0xD000000000000027, 0x80000002613BD7A0, v10, v11);

    (*(v4 + 8))(v7, v3);
  }

  v12 = v0[7];
  sub_261361BF0();
  v13 = v0[7];
  v14 = sub_261360684();
  v15 = v14;
  v0[25] = v14;
  if (v14)
  {
    v17 = v0[17];
    v18 = v0[7];
    v19 = swift_allocObject();
    v0[26] = v19;
    *(v19 + 16) = v18;
    v20 = v18;
    v21 = MEMORY[0x277D83B88];
    sub_2612529C0(v17);
    v22 = swift_task_alloc();
    v0[27] = v22;
    *v22 = v0;
    v22[1] = sub_2613612D4;
    v23 = v0[17];

    return sub_261252A34((v0 + 6), v23, sub_261372E2C, v19, v15, v21);
  }

  else
  {
    v25 = v0[18];
    v24 = v0[19];
    v26 = v0[17];
    v28 = v0[13];
    v27 = v0[14];
    v29 = v0[10];

    v30 = v0[1];

    return v30(0);
  }
}

uint64_t sub_2613612D4()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = v2[26];
  (*(v2[16] + 8))(v2[17], v2[15]);

  if (v0)
  {
    v6 = sub_261361714;
  }

  else
  {
    v6 = sub_261361458;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_261361458()
{
  v1 = v0[25];

  v2 = v0[6];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[10];

  v9 = v0[1];

  return v9(v2);
}

uint64_t sub_261361510()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26136160C);
}

uint64_t sub_26136160C()
{
  v1 = *(v0 + 232);
  *(v0 + 40) = *(v0 + 240);
  sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
  swift_willThrowTypedImpl();

  v2 = *(v0 + 240);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 80);

  v9 = *(v0 + 8);

  return v9(v2);
}

uint64_t sub_261361714()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 224);
  *(v0 + 16) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v4 = sub_26139FB2C();
  *(v0 + 232) = v4;
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 112);
    v6 = *(v0 + 88);
    v7 = *(v0 + 96);

    v8 = *(v0 + 24);
    *(v0 + 240) = v8;
    sub_26139FB1C();
    if ((*(v7 + 88))(v5, v6) == *MEMORY[0x277D43890])
    {
      v9 = *(v0 + 56);
      type metadata accessor for SafMonitorEventDispatcher();
      v10 = *(v9 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
      v11 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
      v12 = sub_2613A0C7C();
      v13 = swift_task_alloc();
      *(v0 + 248) = v13;
      *v13 = v0;
      v13[1] = sub_261361510;

      return sub_2612A0064(v10, v9 + v11, v12, v8);
    }

    (*(*(v0 + 96) + 8))(*(v0 + 112), *(v0 + 88));
    v20 = *(v0 + 232);
    *(v0 + 40) = *(v0 + 240);
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
    swift_willThrowTypedImpl();

    v21 = *(v0 + 240);
  }

  else
  {
    v16 = *(v0 + 184);
    v15 = *(v0 + 192);
    v18 = *(v0 + 160);
    v17 = *(v0 + 168);
    v19 = *(v0 + 144);

    sub_26125A870(v18, v19, &qword_27FE9F560, &qword_2613A3CB0);
    v47 = v4;
    if (v16(v19, 1, v17) == 1)
    {
      sub_26124C718(*(v0 + 144), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v22 = v2;
      v23 = sub_2613A122C();
      v24 = sub_2613A1D8C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        v27 = v2;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_261243000, v23, v24, "Unexpected error: [%@]", v25, 0xCu);
        sub_26124C718(v26, &qword_27FEA0410, &qword_2613AA780);
        MEMORY[0x266701350](v26, -1, -1);
        MEMORY[0x266701350](v25, -1, -1);
      }

      v29 = *(v0 + 168);
      v30 = *(v0 + 176);
      v31 = *(v0 + 144);

      (*(v30 + 8))(v31, v29);
    }

    v33 = *(v0 + 96);
    v32 = *(v0 + 104);
    v34 = *(v0 + 80);
    v35 = *(v0 + 88);
    v37 = *(v0 + 64);
    v36 = *(v0 + 72);
    (*(v36 + 104))(v34, *MEMORY[0x277D43838], v37);
    v38 = sub_26139FA9C();
    (*(v36 + 8))(v34, v37);
    *v32 = v38;
    (*(v33 + 104))(v32, *MEMORY[0x277D438D8], v35);
    v39 = objc_allocWithZone(v47);
    v21 = sub_26139FB3C();
    *(v0 + 32) = v21;
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
    swift_willThrowTypedImpl();
  }

  v41 = *(v0 + 144);
  v40 = *(v0 + 152);
  v42 = *(v0 + 136);
  v44 = *(v0 + 104);
  v43 = *(v0 + 112);
  v45 = *(v0 + 80);

  v46 = *(v0 + 8);

  return v46(v21);
}

uint64_t sub_261361BF0()
{
  v1 = sub_26139FB0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - v8;
  if ((*(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_entitlements + 80) & 1) == 0)
  {
    v10 = sub_26129B934();
    sub_26125A870(v10, v9, &qword_27FE9F560, &qword_2613A3CB0);
    v11 = sub_2613A124C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v13 = sub_2613A122C();
      v14 = sub_2613A1D8C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_261243000, v13, v14, "No entitlement to use the API", v15, 2u);
        MEMORY[0x266701350](v15, -1, -1);
      }

      (*(v12 + 8))(v9, v11);
    }

    (*(v2 + 104))(v5, *MEMORY[0x277D43888], v1);
    v16 = objc_allocWithZone(sub_26139FB2C());
    v1 = sub_26139FB3C();
    v18[1] = v1;
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
    swift_willThrowTypedImpl();
  }

  return v1;
}

uint64_t sub_261361EC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v21 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v20 - v10);
  v12 = *(a2 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v14 = *(v12 + 80);
  v13 = *(v12 + 88);
  v15 = sub_26139F13C();
  v16 = *(*(v15 - 8) + 56);
  v16(v11, 1, 1, v15);
  v16(v9, 1, 1, v15);

  v17 = v22;
  v18 = sub_261253720(a1, v14, v13, v11, v9);

  sub_26124C718(v9, &qword_27FE9F280, &unk_2613A42B0);
  result = sub_26124C718(v11, &qword_27FE9F280, &unk_2613A42B0);
  if (!v17)
  {
    *v21 = v18;
  }

  return result;
}

uint64_t sub_2613621E8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_261362290;

  return sub_2613609EC();
}

uint64_t sub_261362290(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v4 + 24);
  if (v1)
  {
    sub_26139FB2C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
    v10 = swift_allocError();
    *v11 = a1;
    v12 = sub_26139EE6C();
    (*(v9 + 16))(v9, 0, v12);
  }

  else
  {
    (*(v9 + 16))(v9, a1, 0);
  }

  _Block_release(*(v5 + 24));
  v13 = *(v8 + 8);

  return v13();
}

uint64_t sub_261362474(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = sub_2613A1EBC();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = sub_26139FB0C();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261362624);
}

uint64_t sub_261362624()
{
  v1 = sub_26128E1F4();
  v2 = *v1;
  *(v0 + 136) = *v1;
  v3 = *(*v2 + 160);

  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_261362750;

  return v7();
}

uint64_t sub_261362750()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26136284C);
}

uint64_t sub_26136284C()
{
  v1 = v0[16];
  v2 = sub_26129B934();
  v0[19] = v2;
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v0[20] = v3;
  v4 = *(v3 - 8);
  v0[21] = v4;
  v5 = *(v4 + 48);
  v0[22] = v5;
  v0[23] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v1, 1, v3) == 1)
  {
    sub_26124C718(v0[16], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v6 = v0[16];
    v7 = sub_2613A122C();
    v8 = sub_2613A1D9C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[4];
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v9;
      _os_log_impl(&dword_261243000, v7, v8, "Requesting a transaction batch of size: %ld", v10, 0xCu);
      MEMORY[0x266701350](v10, -1, -1);
    }

    v11 = v0[16];

    (*(v4 + 8))(v11, v3);
  }

  v12 = v0[5];
  sub_261361BF0();
  v13 = v0[5];
  v14 = sub_261360684();
  v0[24] = v14;
  if (v14)
  {
    sub_2613A121C();
    if (sub_2613A10FC())
    {
      v15 = *(v0[5] + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_networkConnectivityMonitor);
      if (sub_2612C5A88())
      {
        v16 = v0[9];
        v17 = v0[5];
        v18 = swift_allocObject();
        v0[25] = v18;
        *(v18 + 16) = v17;
        v19 = v17;
        v20 = MEMORY[0x277D839B0];
        sub_2612529C0(v16);
        v21 = swift_task_alloc();
        v0[26] = v21;
        *v21 = v0;
        v21[1] = sub_261362FF0;
        v22 = v0[9];

        return sub_261252A34((v0 + 33), v22, sub_26137366C, v18, v14, v20);
      }

      v30 = v0[14];
      sub_26125A870(v2, v30, &qword_27FE9F560, &qword_2613A3CB0);
      if (v5(v30, 1, v3) == 1)
      {
        sub_26124C718(v0[14], &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v40 = v0[14];
        v41 = sub_2613A122C();
        v42 = sub_2613A1D8C();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_261243000, v41, v42, "No network connection, cannot fetch SAF transactions", v43, 2u);
          MEMORY[0x266701350](v43, -1, -1);
        }

        v44 = v0[14];

        (*(v4 + 8))(v44, v3);
      }

      v36 = v0[11];
      v37 = v0[12];
      v38 = v0[10];
      v39 = MEMORY[0x277D43880];
    }

    else
    {
      v29 = v0[15];
      sub_26125A870(v2, v29, &qword_27FE9F560, &qword_2613A3CB0);
      if (v5(v29, 1, v3) == 1)
      {
        sub_26124C718(v0[15], &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v31 = v0[15];
        v32 = sub_2613A122C();
        v33 = sub_2613A1D8C();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_261243000, v32, v33, "Passcode is disabled, cannot fetch SAF transactions", v34, 2u);
          MEMORY[0x266701350](v34, -1, -1);
        }

        v35 = v0[15];

        (*(v4 + 8))(v35, v3);
      }

      v36 = v0[11];
      v37 = v0[12];
      v38 = v0[10];
      v39 = MEMORY[0x277D43898];
    }

    (*(v36 + 104))(v37, *v39, v38);
    v45 = objc_allocWithZone(sub_26139FB2C());
    v46 = sub_26139FB3C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
    v47 = swift_allocError();
    *v48 = v46;
    swift_willThrow();

    v28 = v47;
  }

  else
  {
    (*(v0[11] + 104))(v0[12], *MEMORY[0x277D438A8], v0[10]);
    v24 = objc_allocWithZone(sub_26139FB2C());
    v25 = sub_26139FB3C();
    sub_2613770D8(&qword_27FEA07F0, MEMORY[0x277D438E0]);
    v26 = swift_allocError();
    *v27 = v25;
    swift_willThrow();
    v28 = v26;
  }

  v0[30] = v28;
  v49 = v0[5];
  v50 = sub_261372E48(v28, 0xD00000000000002CLL, 0x80000002613BD7D0);
  v0[31] = v50;
  type metadata accessor for SafMonitorEventDispatcher();
  v51 = *(v49 + OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_paymentContext);
  v52 = OBJC_IVAR____TtC21ProximityReaderDaemon29PaymentReadResultStoreService_cardReaderAdapter;
  v53 = swift_task_alloc();
  v0[32] = v53;
  *v53 = v0;
  v53[1] = sub_261363898;
  v54 = v0[4];

  return sub_2612A0064(v51, v49 + v52, v54, v50);
}