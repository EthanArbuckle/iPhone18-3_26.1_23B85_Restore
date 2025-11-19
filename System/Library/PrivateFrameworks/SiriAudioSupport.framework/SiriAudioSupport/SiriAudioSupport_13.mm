unint64_t sub_2663DAE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_2662A3E98(a1, a2), (v5 & 1) != 0))
  {
    v6 = *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EAA60;
  *(inited + 32) = 0xD00000000000001ELL;
  v20 = inited + 32;
  *(inited + 40) = 0x80000002664F12F0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
  *(inited + 48) = v6;
  v21 = 0xD000000000000014;
  v22 = 0x80000002664F0E30;
  *(inited + 72) = v8;
  *(inited + 80) = 0xD00000000000001CLL;
  *(inited + 88) = 0x80000002664F1310;
  MEMORY[0x28223BE20](v8);
  v19 = &v21;

  v9 = sub_2662AA720(sub_2663A6860, v18, v6);
  *(inited + 96) = v9 & 1;
  *(inited + 136) = 0x80000002664F1330;
  v21 = 0xD000000000000014;
  v22 = 0x80000002664F0E50;
  v10 = MEMORY[0x277D83B88];
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 128) = 0xD00000000000001CLL;
  MEMORY[0x28223BE20](v9);
  v19 = &v21;
  v11 = sub_2662AA720(sub_2663A6860, v18, v6);
  *(inited + 144) = v11 & 1;
  *(inited + 168) = v10;
  *(inited + 176) = 0xD00000000000001ELL;
  *(inited + 184) = 0x80000002664F1370;
  v21 = 0xD000000000000016;
  v22 = 0x80000002664F0EB0;
  MEMORY[0x28223BE20](v11);
  v19 = &v21;
  v12 = sub_2662AA720(sub_2663A6860, v18, v6);
  *(inited + 192) = v12 & 1;
  *(inited + 216) = v10;
  *(inited + 224) = 0xD00000000000001CLL;
  *(inited + 232) = 0x80000002664F1350;
  v21 = 0xD000000000000014;
  v22 = 0x80000002664F0ED0;
  MEMORY[0x28223BE20](v12);
  v19 = &v21;
  v13 = sub_2662AA720(sub_2663A6860, v18, v6);
  *(inited + 240) = v13 & 1;
  *(inited + 264) = v10;
  *(inited + 272) = 0xD00000000000001ELL;
  *(inited + 280) = 0x80000002664F1390;
  v21 = 0xD000000000000017;
  v22 = 0x80000002664F0E70;
  MEMORY[0x28223BE20](v13);
  v19 = &v21;
  v14 = sub_2662AA720(sub_2663A6860, v18, v6);
  *(inited + 288) = v14 & 1;
  *(inited + 312) = v10;
  *(inited + 320) = 0xD000000000000020;
  *(inited + 328) = 0x80000002664F13B0;
  v21 = 0xD000000000000019;
  v22 = 0x80000002664F0E90;
  MEMORY[0x28223BE20](v14);
  v19 = &v21;
  v15 = sub_2662AA720(sub_2663A6860, v18, v6);

  *(inited + 360) = v10;
  *(inited + 336) = v15 & 1;
  v16 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();
  return v16;
}

uint64_t sub_2663DB250(uint64_t a1, uint64_t a2, double *a3, uint64_t a4)
{
  if (*(a4 + 16) && (v6 = sub_2662A3E98(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(a4 + 56) + 8 * v6);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = sub_26639EB98(v8);

  if (sub_2663CD060(0xD000000000000014, 0x80000002664F0E30, v9))
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  a3[14] = v10;
  if (sub_2663CD060(0xD000000000000014, 0x80000002664F0E50, v9))
  {
    v11 = 1.0;
  }

  else
  {
    v11 = 0.0;
  }

  a3[16] = v11;
  if (sub_2663CD060(0xD000000000000016, 0x80000002664F0EB0, v9))
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  a3[7] = v12;
  if (sub_2663CD060(0xD000000000000014, 0x80000002664F0ED0, v9))
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 0.0;
  }

  a3[5] = v13;
  if (sub_2663CD060(0xD000000000000017, 0x80000002664F0E70, v9))
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.0;
  }

  a3[19] = v14;
  v15 = sub_2663CD060(0xD000000000000019, 0x80000002664F0E90, v9);

  if (v15)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  a3[28] = v17;
  return result;
}

double sub_2663DB3DC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[5] = a1;
  v31 = a2;
  v11 = qword_280F914E8;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v10, v12, v6);

  v13 = sub_2664DFE18();
  v14 = sub_2664E06E8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v6;
    v16 = v15;
    v27 = swift_slowAlloc();
    v29[0] = v27;
    *v16 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
    v17 = sub_2664E01D8();
    v19 = v18;

    v20 = sub_2662A320C(v17, v19, v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v21 = sub_2664E01D8();
    v23 = sub_2662A320C(v21, v22, v29);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_26629C000, v13, v14, "SupportedMediaSignal#init bundleIdentifiersAndCounterparts:%{public}s, mediaCategories: %{public}s", v16, 0x16u);
    v24 = v27;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v24, -1, -1);
    MEMORY[0x266784AD0](v16, -1, -1);

    (*(v7 + 8))(v10, v28);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v30 = a3;
  v32 = MEMORY[0x277D84FA0];
  sub_2663D9F84(a1);
  return v30;
}

uint64_t sub_2663DB714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v41 = a1;
  v48 = sub_2664DE438();
  v43 = *(v48 - 8);
  v4 = *(v43 + 64);
  v5 = MEMORY[0x28223BE20](v48);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v6;
  MEMORY[0x28223BE20](v5);
  v50 = &v41 - v7;
  v8 = sub_2664DFE08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - v13;
  v53[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073420, &qword_2664EAC10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073428, &qword_2664EAC18);
  v15 = sub_2664E0318();
  v17 = v16;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v18 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v9 + 16))(v12, v14, v8);
  v19 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v49 = v14;
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = "appSelectionSignalsSignal";
  *(v21 + 24) = 25;
  *(v21 + 32) = 2;
  v46 = v9;
  v22 = *(v9 + 32);
  v47 = v8;
  v22(v21 + v19, v12);
  v23 = (v21 + v20);
  *v23 = v42;
  v23[1] = a3;

  sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2664E36F0;
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 64) = sub_2662C4094();
  *(v24 + 32) = v15;
  *(v24 + 40) = v17;
  sub_2664DFDC8();

  v25 = swift_allocObject();
  *(v25 + 16) = sub_266352A18;
  *(v25 + 24) = v21;
  v26 = qword_280F91468;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = sub_26632958C(1020);
  v28 = v41;
  if (qword_280F90270 != -1)
  {
    swift_once();
  }

  if (qword_280F8F6F0 != -1)
  {
    swift_once();
  }

  v29 = swift_allocObject();
  v29[2] = v27;
  v29[3] = sub_2663DBD84;
  v29[4] = v25;
  v30 = *__swift_project_boxed_opaque_existential_1(qword_280F91C10, qword_280F91C28);
  sub_2662B8E78(&qword_280F90278, v53);
  v52[3] = &type metadata for AppSelectionConfigurationProvider;
  v52[4] = &off_2877EDBD8;
  v52[0] = v30;

  sub_2664DE428();
  v42 = v27;
  if (v28)
  {
    v41 = sub_26636E9A0(1u);
    v32 = v31;
  }

  else
  {
    v41 = 0;
    v32 = 0;
  }

  v33 = sub_2663DBD8C();
  sub_2662A5550(v52, v51);
  v34 = v43;
  v35 = v45;
  v36 = v50;
  v37 = v48;
  (*(v43 + 16))(v45, v50, v48);
  v38 = (*(v34 + 80) + 72) & ~*(v34 + 80);
  v39 = swift_allocObject();
  sub_2662A8618(v51, v39 + 16);
  *(v39 + 56) = sub_266352BC8;
  *(v39 + 64) = v29;
  (*(v34 + 32))(v39 + v38, v35, v37);

  sub_2662BFF60(v33, v41, v32, 1, sub_2663DBDD8, v39);

  (*(v34 + 8))(v36, v37);
  sub_2663DBE50(v53);
  (*(v46 + 8))(v49, v47);
  return __swift_destroy_boxed_opaque_existential_1Tm(v52);
}

unint64_t sub_2663DBD8C()
{
  result = qword_280F8F5E0;
  if (!qword_280F8F5E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F8F5E0);
  }

  return result;
}

uint64_t sub_2663DBDD8(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1 + ((*(v3 + 80) + 72) & ~*(v3 + 80));

  return sub_2663DA080(a1, v1 + 2, v4, v5, v6);
}

uint64_t sub_2663DBEA4(uint64_t a1)
{
  v3 = *(*(sub_2664DE438() - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];

  return sub_2663DA214(a1, v4, v5);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2663DBF28(uint64_t *a1, int a2)
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

uint64_t sub_2663DBF70(uint64_t result, int a2, int a3)
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

uint64_t sub_2663DBFE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 57))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 56);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2663DC030(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_2663DC0A8()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_2663DC160()
{
  *v0;
  *v0;
  *v0;
  sub_2664E0368();
}

uint64_t sub_2663DC204()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_2663DC2B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2663DCCC8();
  *a2 = result;
  return result;
}

void sub_2663DC2E8(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6D7269666E6F63;
  v4 = 0xE800000000000000;
  v5 = 0x6F666E4965726F6DLL;
  if (*v1 != 2)
  {
    v5 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x7463656A6572;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2663DC35C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_2663DC3B8(v5, v7) & 1;
}

uint64_t sub_2663DC3B8(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 56);
  if (v5 <= 1)
  {
    if (*(a1 + 56))
    {
      if (a2[56] != 1)
      {
        return 0;
      }

      v38 = *(a2 + 1);
      if (!v2)
      {
        return !v38;
      }

      if (!v38)
      {
        return 0;
      }

      if (v3 == *a2 && v2 == v38)
      {
        return 1;
      }

      v39 = *a1;
      return (sub_2664E0D88() & 1) != 0;
    }

    if (a2[56])
    {
      return 0;
    }

    v8 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v2)
    {
      if (!v8)
      {
        return 0;
      }

      if (v3 != *a2 || v2 != v8)
      {
        v10 = *a1;
        if ((sub_2664E0D88() & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v8)
    {
      return 0;
    }

    if (!v4)
    {
      return !v9;
    }

    if (v9)
    {
      sub_2662C1744(0, &qword_280F8F560, 0x277CD3D30);
      v44 = v9;
      v45 = v4;
      v46 = sub_2664E0918();

      if (v46)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v5 == 2)
  {
    if (a2[56] == 2)
    {
      v11 = 0x6D7269666E6F63;
      v12 = 0xE700000000000000;
      v13 = 0xE800000000000000;
      v14 = 0x6F666E4965726F6DLL;
      if (*a1 != 2)
      {
        v14 = 0x6C65636E6163;
        v13 = 0xE600000000000000;
      }

      v15 = 0x7463656A6572;
      if (*a1)
      {
        v12 = 0xE600000000000000;
      }

      else
      {
        v15 = 0x6D7269666E6F63;
      }

      if (*a1 <= 1u)
      {
        v16 = v15;
      }

      else
      {
        v16 = v14;
      }

      if (v3 <= 1u)
      {
        v17 = v12;
      }

      else
      {
        v17 = v13;
      }

      v18 = 0xE700000000000000;
      v19 = 0xE800000000000000;
      v20 = 0x6F666E4965726F6DLL;
      if (*a2 != 2)
      {
        v20 = 0x6C65636E6163;
        v19 = 0xE600000000000000;
      }

      if (*a2)
      {
        v11 = 0x7463656A6572;
        v18 = 0xE600000000000000;
      }

      if (*a2 <= 1u)
      {
        v21 = v11;
      }

      else
      {
        v21 = v20;
      }

      if (*a2 <= 1u)
      {
        v22 = v18;
      }

      else
      {
        v22 = v19;
      }

      if (v16 != v21 || v17 != v22)
      {
        v40 = sub_2664E0D88();

        return v40 & 1;
      }

      return 1;
    }

    return 0;
  }

  if (v5 != 3)
  {
    if (a2[56] != 4)
    {
      return 0;
    }

    v23 = *(a1 + 24);
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    v28 = *a2;
    v27 = *(a2 + 1);
    v30 = *(a2 + 2);
    v29 = *(a2 + 3);
    v31 = *(a2 + 4);
    v32 = *(a2 + 5);
    v33 = *(a2 + 6);
    if (v3)
    {
      if (!v28)
      {
        return 0;
      }

      v49 = *(a2 + 3);
      v50 = *(a2 + 4);
      v47 = *(a2 + 1);
      v48 = *(a2 + 2);
      sub_2664DFCD8();
      v51 = v24;
      v34 = v26;
      v35 = v28;
      v36 = v3;
      v37 = sub_2664E0918();

      v26 = v34;
      v24 = v51;

      v27 = v47;
      v30 = v48;
      v29 = v49;
      v31 = v50;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v28)
    {
      return 0;
    }

    if (v4)
    {
      if (!v30)
      {
        return 0;
      }

      if (v2 != v27 || v4 != v30)
      {
        v41 = v29;
        v42 = v31;
        v43 = sub_2664E0D88();
        v29 = v41;
        v31 = v42;
        if ((v43 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v30)
    {
      return 0;
    }

    if (v24)
    {
      if (!v31 || (v23 != v29 || v24 != v31) && (sub_2664E0D88() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v31)
    {
      return 0;
    }

    if (!v26)
    {
      return !v33;
    }

    if (!v33)
    {
      return 0;
    }

    if (v25 == v32 && v26 == v33)
    {
      return 1;
    }

    return (sub_2664E0D88() & 1) != 0;
  }

  if (a2[56] != 3)
  {
    return 0;
  }

  if (v3 == *a2 && v2 == *(a2 + 1))
  {
    return 1;
  }

  v6 = *a1;

  return sub_2664E0D88();
}

uint64_t sub_2663DC7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_2664DFE18();
  v11 = sub_2664E06E8();

  if (!os_log_type_enabled(v10, v11))
  {

    result = (*(v5 + 8))(v8, v4);
    if (a1)
    {
      goto LABEL_7;
    }

LABEL_18:
    v21 = 0;
    v20 = 0;
    goto LABEL_23;
  }

  v27 = a2;
  v12 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v30[0] = v26;
  *v12 = 136315138;
  if (!a1)
  {
    sub_2663854AC(MEMORY[0x277D84F90]);
  }

  v13 = sub_2664E01D8();
  v15 = v14;

  v16 = sub_2662A320C(v13, v15, v30);

  *(v12 + 4) = v16;
  _os_log_impl(&dword_26629C000, v10, v11, "Parsing replay request data with user data: %s", v12, 0xCu);
  v17 = v26;
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  MEMORY[0x266784AD0](v17, -1, -1);
  MEMORY[0x266784AD0](v12, -1, -1);

  result = (*(v5 + 8))(v8, v4);
  a2 = v27;
  if (!a1)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (!*(a1 + 16) || (result = sub_2662A3E98(0x6C646E7542707061, 0xEB00000000644965), (v19 & 1) == 0))
  {
    v20 = 0;
    v21 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_20;
    }

LABEL_23:
    v25 = 0;
    goto LABEL_24;
  }

  sub_2662A01E8(*(a1 + 56) + 32 * result, v30);
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v28;
  }

  else
  {
    v20 = 0;
  }

  if (result)
  {
    v21 = v29;
  }

  else
  {
    v21 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

LABEL_20:
  result = sub_2662A3E98(0x746E65746E69, 0xE600000000000000);
  if ((v22 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_2662A01E8(*(a1 + 56) + 32 * result, v30);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  v23 = v28;
  v24 = v29;
  sub_2662C1744(0, &qword_280073E30, 0x277CCAAC8);
  sub_2662C1744(0, &qword_280F8F560, 0x277CD3D30);
  v25 = sub_2664E0718();
  result = sub_266348774(v23, v24);
LABEL_24:
  *a2 = v20;
  *(a2 + 8) = v21;
  *(a2 + 16) = v25;
  *(a2 + 56) = 0;
  return result;
}

unint64_t sub_2663DCC10@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!result)
  {
    goto LABEL_6;
  }

  v3 = result;
  v4 = *(result + 16);
  if (!v4)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  result = sub_2662A3E98(0x6C646E7542707061, 0xEB00000000644965);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  sub_2662A01E8(*(v3 + 56) + 32 * result, v9);
  result = swift_dynamicCast();
  v4 = v7;
  v6 = v8;
  if (!result)
  {
    v4 = 0;
    v6 = 0;
  }

LABEL_8:
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 56) = 1;
  return result;
}

uint64_t sub_2663DCCC8()
{
  v0 = sub_2664E0CB8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

double sub_2663DCD14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36[-1] - v10;
  if (a1 && *(a1 + 16) && (v12 = sub_2662A3E98(0x6E6F74747562, 0xE600000000000000), (v13 & 1) != 0) && (sub_2662A01E8(*(a1 + 56) + 32 * v12, v37), (swift_dynamicCast() & 1) != 0))
  {
    v15 = v36[0];
    v14 = v36[1];

    v16 = sub_2663DCCC8();
    if (v16 != 4)
    {
      v34 = v16;

      v31 = v34;
      v32 = 2;
      goto LABEL_16;
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v11, v17, v4);

    v18 = sub_2664DFE18();
    v19 = sub_2664E06D8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36[0] = v21;
      *v20 = 136315138;
      v22 = sub_2662A320C(v15, v14, v36);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_26629C000, v18, v19, "DirectInvocationUseCase#parseButtonPress unrecognized buttonPressed value: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x266784AD0](v21, -1, -1);
      MEMORY[0x266784AD0](v20, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v11, v4);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v23, v4);

    v24 = sub_2664DFE18();
    v25 = sub_2664E06D8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36[0] = v27;
      *v26 = 136315138;
      v36[2] = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073430, &qword_2664EADE0);
      v28 = sub_2664E0318();
      v30 = sub_2662A320C(v28, v29, v36);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_26629C000, v24, v25, "DirectInvocationUseCase#parseButtonPress invalid user data for buttonPress: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x266784AD0](v27, -1, -1);
      MEMORY[0x266784AD0](v26, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
  }

  v31 = 0;
  v32 = -1;
LABEL_16:
  *a2 = v31;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = v32;
  return result;
}

double sub_2663DD1A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_7:
    v7 = 0;
    v8 = -1;
    goto LABEL_8;
  }

  v5 = sub_2662A3E98(0x64496D657469, 0xE600000000000000);
  if ((v6 & 1) == 0 || (sub_2662A01E8(*(a1 + 56) + 32 * v5, v12), (swift_dynamicCast() & 1) == 0))
  {
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = v10;
  v7 = v11;
  v8 = 3;
LABEL_8:
  *a2 = v4;
  *(a2 + 8) = v7;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  *(a2 + 56) = v8;
  return result;
}

unint64_t sub_2663DD254@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!result)
  {
    v11 = 0;
    v10 = 0;
    v5 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_32;
  }

  v3 = result;
  if (*(result + 16) && (result = sub_2662A3E98(0x7078456F69647561, 0xEF65636E65697265), (v4 & 1) != 0) && (sub_2662A01E8(*(v3 + 56) + 32 * result, v17), result = swift_dynamicCast(), (result & 1) != 0))
  {
    sub_2663C50C4(v15, v16);
    v5 = _s16SiriAudioSupport13ShimUtilitiesV011deserializeB10Experience05audioG4Data0A17InformationSearch0bG0CSg10Foundation0I0VSg_tFZ_0(v15, v16);
    sub_266348774(v15, v16);
    result = sub_266348774(v15, v16);
    if (!*(v3 + 16))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    if (!*(v3 + 16))
    {
      goto LABEL_17;
    }
  }

  result = sub_2662A3E98(0x656D616E656C6966, 0xE800000000000000);
  if (v6)
  {
    sub_2662A01E8(*(v3 + 56) + 32 * result, v17);
    result = swift_dynamicCast();
    if (result)
    {
      v7 = v15;
    }

    else
    {
      v7 = 0;
    }

    if (result)
    {
      v8 = v16;
    }

    else
    {
      v8 = 0;
    }

    if (!*(v3 + 16))
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = 0;
  v8 = 0;
  if (!*(v3 + 16))
  {
    goto LABEL_27;
  }

LABEL_18:
  result = sub_2662A3E98(0x726577736E61, 0xE600000000000000);
  if (v9)
  {
    sub_2662A01E8(*(v3 + 56) + 32 * result, v17);
    result = swift_dynamicCast();
    if (result)
    {
      v10 = v15;
    }

    else
    {
      v10 = 0;
    }

    if (result)
    {
      v11 = v16;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v3 + 16);
    if (!v12)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

LABEL_27:
  v10 = 0;
  v11 = 0;
  v12 = *(v3 + 16);
  if (!v12)
  {
LABEL_33:
    v14 = 0;
    goto LABEL_34;
  }

LABEL_28:
  result = sub_2662A3E98(0x726F727265, 0xE500000000000000);
  if ((v13 & 1) == 0)
  {
LABEL_32:
    v12 = 0;
    goto LABEL_33;
  }

  sub_2662A01E8(*(v3 + 56) + 32 * result, v17);
  result = swift_dynamicCast();
  v12 = v15;
  v14 = v16;
  if (!result)
  {
    v12 = 0;
    v14 = 0;
  }

LABEL_34:
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v14;
  *(a2 + 56) = 4;
  return result;
}

uint64_t sub_2663DD4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2664DEBD8();
  v67 = *(v4 - 8);
  *&v68 = v4;
  v5 = *(v67 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v64 - v9;
  v11 = sub_2664DFE38();
  *&v69 = *(v11 - 8);
  v12 = *(v69 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v64 - v16;
  v19 = sub_2664DEBB8();
  v20 = v18;
  if (v19 == 0xD000000000000033 && 0x80000002664F7810 == v18 || (sub_2664E0D88() & 1) != 0)
  {

    v21 = sub_2664DEBC8();
    sub_2663DC7F4(v21, v72);
LABEL_5:
    v68 = v72[0];
    v69 = v72[1];
    v22 = v73;
    v23 = v74;
    v24 = v75;
    v25 = v76;

    v27 = v68;
    v28 = v69;
    goto LABEL_6;
  }

  if (v19 == 0xD00000000000002CLL && 0x80000002664F7850 == v20 || (sub_2664E0D88() & 1) != 0)
  {

    v29 = sub_2664DEBC8();
    sub_2663DCC10(v29, v72);
    goto LABEL_5;
  }

  if (v19 == 0xD000000000000031 && 0x80000002664F7880 == v20 || (sub_2664E0D88() & 1) != 0)
  {

    v30 = sub_2664DEBC8();
    sub_2663DCD14(v30, v72);
    goto LABEL_5;
  }

  if (v19 == 0xD000000000000034 && 0x80000002664F78C0 == v20 || (sub_2664E0D88() & 1) != 0)
  {

    v31 = sub_2664DEBC8();
    sub_2663DD1A0(v31, v72);
    goto LABEL_5;
  }

  if (v19 == 0xD000000000000029 && 0x80000002664F7900 == v20)
  {

    v32 = v11;
LABEL_23:
    v34 = v69;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v32, qword_280F914F0);
    swift_beginAccess();
    (*(v34 + 16))(v17, v35, v32);
    v66 = v32;
    v36 = v67;
    v37 = v68;
    (*(v67 + 16))(v10, a1, v68);
    v38 = sub_2664DFE18();
    v39 = sub_2664E06C8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v64 = v40;
      v65 = swift_slowAlloc();
      *&v72[0] = v65;
      *v40 = 136315138;
      v70 = sub_2664DEBC8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073430, &qword_2664EADE0);
      v41 = sub_2664E0318();
      v42 = v37;
      v44 = v43;
      (*(v36 + 8))(v10, v42);
      v45 = sub_2662A320C(v41, v44, v72);

      v46 = v64;
      *(v64 + 1) = v45;
      v47 = v46;
      _os_log_impl(&dword_26629C000, v38, v39, "DirectInvocationUseCase#from shim: %s", v46, 0xCu);
      v48 = v65;
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      MEMORY[0x266784AD0](v48, -1, -1);
      MEMORY[0x266784AD0](v47, -1, -1);
    }

    else
    {

      (*(v36 + 8))(v10, v37);
    }

    (*(v34 + 8))(v17, v66);
    v49 = sub_2664DEBC8();
    sub_2663DD254(v49, v72);
    goto LABEL_5;
  }

  v33 = sub_2664E0D88();

  v32 = v11;
  if (v33)
  {
    goto LABEL_23;
  }

  v50 = v69;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v51 = __swift_project_value_buffer(v32, qword_280F914F0);
  swift_beginAccess();
  (*(v50 + 16))(v15, v51, v32);
  v52 = v32;
  v53 = v67;
  v54 = v68;
  (*(v67 + 16))(v8, a1, v68);
  v55 = sub_2664DFE18();
  v56 = sub_2664E06D8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v66 = v52;
    v58 = v57;
    v65 = swift_slowAlloc();
    v71 = v65;
    *v58 = 136315138;
    v64 = sub_2664DEBB8();
    v60 = v59;
    (*(v53 + 8))(v8, v54);
    v61 = v50;
    v62 = sub_2662A320C(v64, v60, &v71);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_26629C000, v55, v56, "DirectInvocationUseCase#from unsupported identifier: %s", v58, 0xCu);
    v63 = v65;
    __swift_destroy_boxed_opaque_existential_1Tm(v65);
    MEMORY[0x266784AD0](v63, -1, -1);
    MEMORY[0x266784AD0](v58, -1, -1);

    result = (*(v61 + 8))(v15, v66);
  }

  else
  {

    (*(v53 + 8))(v8, v54);
    result = (*(v50 + 8))(v15, v52);
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v27 = 0uLL;
  v25 = -1;
  v28 = 0uLL;
LABEL_6:
  *a2 = v27;
  *(a2 + 16) = v28;
  *(a2 + 32) = v22;
  *(a2 + 40) = v23;
  *(a2 + 48) = v24;
  *(a2 + 56) = v25;
  return result;
}

unint64_t sub_2663DDC80()
{
  result = qword_280073438[0];
  if (!qword_280073438[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280073438);
  }

  return result;
}

Swift::Void __swiftcall INIntent.setLaunchId(launchId:caller:)(Swift::String_optional launchId, Swift::String caller)
{
  object = caller._object;
  countAndFlagsBits = caller._countAndFlagsBits;
  v4 = launchId.value._object;
  v5 = launchId.value._countAndFlagsBits;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);

  v12 = v2;
  v13 = sub_2664DFE18();
  v14 = sub_2664E06E8();

  v15 = os_log_type_enabled(v13, v14);
  v31 = v5;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v30 = v12;
    v17 = v16;
    v28 = swift_slowAlloc();
    v32 = v28;
    *v17 = 136315650;
    if (v4)
    {
      v18 = v5;
    }

    else
    {
      v18 = 0x3E6C696E3CLL;
    }

    if (v4)
    {
      v19 = v4;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    v20 = sub_2662A320C(v18, v19, &v32);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_2662A320C(countAndFlagsBits, object, &v32);
    *(v17 + 22) = 2080;
    v21 = [v30 description];
    v22 = sub_2664E02C8();
    v24 = v23;

    v25 = sub_2662A320C(v22, v24, &v32);

    *(v17 + 24) = v25;
    _os_log_impl(&dword_26629C000, v13, v14, "Setting launchID to: %s, caller: %s, for intent: %s", v17, 0x20u);
    v26 = v28;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v26, -1, -1);
    v27 = v17;
    v12 = v30;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  if (v4)
  {
    v4 = sub_2664E02A8();
  }

  [v12 _setLaunchId_];
}

id sub_2663DDFF8()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    result = [v0 mediaItems];
    if (!result)
    {
      return result;
    }

    v2 = result;
    sub_2663D9B50();
    v3 = sub_2664E04A8();

    if (v3 >> 62)
    {
      if (!sub_2664E0A68())
      {
        goto LABEL_38;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      goto LABEL_32;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    result = [v4 mediaItems];
    if (!result)
    {
      return result;
    }

    v5 = result;
    sub_2663D9B50();
    v3 = sub_2664E04A8();

    if (v3 >> 62)
    {
      if (!sub_2664E0A68())
      {
        goto LABEL_38;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      goto LABEL_32;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    result = [v6 mediaItems];
    if (!result)
    {
      return result;
    }

    v7 = result;
    sub_2663D9B50();
    v3 = sub_2664E04A8();

    if (v3 >> 62)
    {
      if (!sub_2664E0A68())
      {
        goto LABEL_38;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

    if ((v3 & 0xC000000000000001) == 0)
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

LABEL_28:
      v9 = *(v3 + 32);
LABEL_29:
      v10 = v9;

      return v10;
    }

LABEL_32:
    v9 = MEMORY[0x266783B70](0, v3);
    goto LABEL_29;
  }

LABEL_22:
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  result = [result mediaItems];
  if (!result)
  {
    return result;
  }

  v8 = result;
  sub_2663D9B50();
  v3 = sub_2664E04A8();

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_26;
    }

LABEL_38:

    return 0;
  }

  result = sub_2664E0A68();
  if (!result)
  {
    goto LABEL_38;
  }

LABEL_26:
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_32;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t INIntent.uniqueId.getter()
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 intentId];
  if (v6)
  {
    v7 = v6;
    v8 = sub_2664E02C8();
    v10 = v9;
  }

  else if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4D8();

    v8 = sub_2664DFA88();
    v10 = v11;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  (*(v2 + 16))(v5, v12, v1);

  v13 = sub_2664DFE18();
  v14 = sub_2664E06E8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v10;
    v25 = v16;
    *v15 = 136315138;
    v23 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v17 = sub_2664E0318();
    v22 = v1;
    v19 = sub_2662A320C(v17, v18, &v25);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_26629C000, v13, v14, "INIntent#refId: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266784AD0](v16, -1, -1);
    MEMORY[0x266784AD0](v15, -1, -1);

    (*(v2 + 8))(v5, v22);
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  return v8;
}

uint64_t UserPreferenceProvider.preferredMusicBundleIdentifier(deviceProvider:featureFlagProvider:serviceBundleIdentifier:intent:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(__int128 *))
{
  v12 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v11 = 0;
  a6(&v7);
  v13[2] = v9;
  v13[3] = v10;
  v14 = v11;
  v13[0] = v7;
  v13[1] = v8;
  return sub_2663DE5F4(v13);
}

uint64_t sub_2663DE5F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073450, &qword_2664EAEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2663DE65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(__int128 *))
{
  v12 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v11 = 0;
  a6(&v7);
  v13[2] = v9;
  v13[3] = v10;
  v14 = v11;
  v13[0] = v7;
  v13[1] = v8;
  return sub_2663DE5F4(v13);
}

id sub_2663DE6D4()
{
  v1 = [*v0 ams_DSID];

  return v1;
}

uint64_t sub_2663DE730@<X0>(void *a1@<X8>)
{
  v13 = [objc_allocWithZone(MEMORY[0x277D27820]) init];
  v2 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v3 = qword_280F8F808;
  v28 = type metadata accessor for MultiUserConnectionProvider();
  v29 = &protocol witness table for MultiUserConnectionProvider;
  *&v27 = v3;
  v4 = type metadata accessor for AccountProvider();
  v5 = swift_allocObject();

  v6 = sub_266360778(v2, &v27, v5);

  v7 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v8 = [objc_allocWithZone(MEMORY[0x277D27838]) init];
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, &v27);
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  *&v24 = qword_280F905C8;
  *(&v24 + 5) = *(&qword_280F905C8 + 5);
  v25 = &type metadata for FeatureFlagProvider;
  v26 = &protocol witness table for FeatureFlagProvider;
  v23 = &protocol witness table for SharedContextProvider;
  v22 = type metadata accessor for SharedContextProvider();
  v20 = &protocol witness table for SubscriptionProvider;
  *&v21 = swift_initStaticObject();
  v19 = &type metadata for SubscriptionProvider;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v9 = qword_280F91470;
  v16 = type metadata accessor for SiriKitTaskLoggingProvider();
  v17 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v15 = v9;
  v14[3] = &type metadata for WatchOSSupportProvider;
  v14[4] = &off_2877EC0A0;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v11 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v14, &type metadata for WatchOSSupportProvider);
  v11[28] = &type metadata for WatchOSSupportProvider;
  v11[29] = &off_2877EC0A0;
  v11[5] = v4;
  v11[6] = &protocol witness table for AccountProvider;
  v11[2] = v6;
  v11[17] = v13;
  v11[18] = v7;
  v11[19] = v8;
  sub_2662A8618(&v27, (v11 + 20));
  sub_2662A8618(&v24, (v11 + 30));
  sub_2662A8618(&v21, (v11 + 35));
  sub_2662A8618(&v18, (v11 + 7));
  sub_2662A8618(&v15, (v11 + 12));

  result = __swift_destroy_boxed_opaque_existential_1Tm(v14);
  a1[3] = v10;
  a1[4] = &off_2877F3740;
  *a1 = v11;
  return result;
}

uint64_t sub_2663DEA80@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v3 = qword_280F8F808;
  v9[3] = type metadata accessor for MultiUserConnectionProvider();
  v9[4] = &protocol witness table for MultiUserConnectionProvider;
  v9[0] = v3;
  v4 = type metadata accessor for AccountProvider();
  v5 = swift_allocObject();

  v6 = sub_266360778(v2, v9, v5);

  a1[3] = &type metadata for PlaybackCreateRadioProvider;
  a1[4] = &off_2877EA030;
  v7 = swift_allocObject();
  *a1 = v7;
  v7[5] = v4;
  v7[6] = &protocol witness table for AccountProvider;
  v7[2] = v6;
  return sub_2663DE730(v7 + 7);
}

void sub_2663DEBA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v10;
  v12[0] = *(a2 + 32);
  *(v12 + 15) = *(a2 + 47);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_26633F1D8(v11, a3, a4, a5);
}

uint64_t sub_2663DEC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  memset(v6, 0, sizeof(v6));
  v7 = 0;
  return a5(v6);
}

void sub_2663DEC94(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CD5EA8]) init];
  [v4 setModelObject_];
  v5 = [objc_allocWithZone(MEMORY[0x277CD5EB0]) initWithChangeAction_];
  [v4 setRequestAction_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073458, &qword_2664EB038);
  v6 = [swift_getObjCClassFromMetadata() preferredQueue];
  v7 = [v4 newOperationWithResponseHandler_];
  [v6 addOperation_];
}

void sub_2663DEE18(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2664E0A68())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x266783B70](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_2663E029C(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t INMediaItem.slimDescription.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072878, &qword_2664E4ED8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EAA60;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v3 = [v1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2664E02C8();
    v7 = v6;

    v8 = MEMORY[0x277D837D0];
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v8 = 0;
    *(inited + 64) = 0;
  }

  *(inited + 48) = v5;
  *(inited + 56) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = 0x656C746974;
  *(inited + 88) = 0xE500000000000000;
  v9 = [v1 title];
  if (v9)
  {
    v10 = v9;
    v11 = sub_2664E02C8();
    v13 = v12;

    v14 = MEMORY[0x277D837D0];
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v14 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v11;
  *(inited + 104) = v13;
  *(inited + 120) = v14;
  *(inited + 128) = 0x747369747261;
  *(inited + 136) = 0xE600000000000000;
  v15 = [v1 artist];
  if (v15)
  {
    v16 = v15;
    v17 = sub_2664E02C8();
    v19 = v18;

    v20 = MEMORY[0x277D837D0];
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v20 = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v17;
  *(inited + 152) = v19;
  *(inited + 168) = v20;
  *(inited + 176) = 0x6B726F77747261;
  *(inited + 184) = 0xE700000000000000;
  v21 = [v1 artwork];
  v22 = v21;
  if (v21)
  {
    v21 = sub_2662C1744(0, &qword_280073460, 0x277CD3D10);
  }

  else
  {
    *(inited + 200) = 0;
    *(inited + 208) = 0;
  }

  *(inited + 192) = v22;
  *(inited + 216) = v21;
  *(inited + 224) = 1701869940;
  *(inited + 232) = 0xE400000000000000;
  v23 = [v1 type];
  v24 = MEMORY[0x277D83B88];
  *(inited + 240) = v23;
  *(inited + 264) = v24;
  strcpy((inited + 272), "hasAssetInfo");
  *(inited + 285) = 0;
  *(inited + 286) = -5120;
  v25 = [v1 privateMediaItemValueData];
  if (v25 && (v26 = v25, v27 = [v25 assetInfo], v26, v27))
  {

    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  v29 = MEMORY[0x277D839B0];
  *(inited + 288) = v28;
  *(inited + 312) = v29;
  *(inited + 320) = 0xD000000000000014;
  *(inited + 328) = 0x80000002664F7990;
  v30 = [v1 privateMediaItemValueData];
  if (v30 && (v31 = v30, v32 = [v30 requiresSubscription], v31, v32))
  {
    *(inited + 360) = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    *(inited + 336) = v32;
  }

  else
  {
    *(inited + 336) = 0u;
    *(inited + 352) = 0u;
  }

  sub_266385778(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072880, &unk_2664E4EE0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074250, &unk_2664E3680);
  v33 = sub_2664E01D8();

  return v33;
}

uint64_t INMediaItem.requiresSubscription.getter()
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = [v0 privateMediaItemValueData];
  if (v6 && (v7 = v6, v8 = [v6 requiresSubscription], v7, v8))
  {
    v21[0] = 2;
    MEMORY[0x266783580](v8, v21);

    v9 = v21[0];
  }

  else
  {
    v9 = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  (*(v2 + 16))(v5, v10, v1);
  v11 = v0;
  v12 = sub_2664DFE18();
  v13 = sub_2664E06C8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315394;
    v16 = INMediaItem.slimDescription.getter();
    v18 = sub_2662A320C(v16, v17, &v20);

    *(v14 + 4) = v18;
    *(v14 + 12) = 1024;
    *(v14 + 14) = v9 & 1;
    _os_log_impl(&dword_26629C000, v12, v13, "INMediaItem#requiresSubscription MediaItem: %s requiresSubscription?: %{BOOL}d", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x266784AD0](v15, -1, -1);
    MEMORY[0x266784AD0](v14, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  return v9 & 1;
}

id static INMediaItem.createRadio(title:artist:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  MEMORY[0x2667833B0](0x6574616572632D78, 0xEF6E6F6974617473);
  MEMORY[0x2667833B0](3092282, 0xE300000000000000);
  sub_2664E0C28();
  MEMORY[0x2667833B0](47, 0xE100000000000000);
  v6 = sub_2664E0D48();
  MEMORY[0x2667833B0](v6);

  privateMediaItemDataFromBacking(recommendationId:assetInfo:subItemIdentifiers:sharedUserIdFromPlayableMusicAccount:)(0, 0, 0, 0, MEMORY[0x277D84F90], 0, 0);
  v8 = v7;
  v9 = sub_2664E02A8();

  if (!a2)
  {
    v10 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = sub_2664E02A8();
  if (a4)
  {
LABEL_3:
    a4 = sub_2664E02A8();
  }

LABEL_4:
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:v9 title:v10 type:16 artwork:0 artist:a4 topics:0 namedEntities:0 privateMediaItemValueData:v8];

  return v11;
}

id static INMediaItem.syntheticItem(identifier:type:title:artist:subItemIdentifiers:sharedUserIdFromPlayableMusicAccount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10)
{
  privateMediaItemDataFromBacking(recommendationId:assetInfo:subItemIdentifiers:sharedUserIdFromPlayableMusicAccount:)(0, 0, 0, 0, a8, a9, a10);
  v14 = v13;
  v15 = sub_2664E02A8();
  if (a5)
  {
    a5 = sub_2664E02A8();
  }

  if (a7)
  {
    a7 = sub_2664E02A8();
  }

  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:v15 title:a5 type:a3 artwork:0 artist:a7 topics:0 namedEntities:0 privateMediaItemValueData:v14];

  return v16;
}

id static INMediaItem.allLibrary(mediaType:sharedUserIdFromPlayableMusicAccount:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2664E0D48();
  MEMORY[0x2667833B0](v5);

  privateMediaItemDataFromBacking(recommendationId:assetInfo:subItemIdentifiers:sharedUserIdFromPlayableMusicAccount:)(0, 0, 0, 0, MEMORY[0x277D84F90], a2, a3);
  v7 = v6;
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_2664E02A8();

  v10 = [v8 initWithIdentifier:v9 title:0 type:18 artwork:0 artist:0 topics:0 namedEntities:0 privateMediaItemValueData:v7];

  return v10;
}

id static INMediaItem.podcastLibrary(sharedUserIdFromPlayableMusicAccount:)(uint64_t a1, void *a2)
{
  v4 = sub_2664E0D48();
  MEMORY[0x2667833B0](v4);

  privateMediaItemDataFromBacking(recommendationId:assetInfo:subItemIdentifiers:sharedUserIdFromPlayableMusicAccount:)(0, 0, 0, 0, MEMORY[0x277D84F90], a1, a2);
  v6 = v5;
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_2664E02A8();

  v9 = [v7 initWithIdentifier:v8 title:0 type:7 artwork:0 artist:0 topics:0 namedEntities:0 privateMediaItemValueData:v6];

  return v9;
}

id static INMediaItem.syntheticItemForAddIntent(with:scheme:contentOrigin:type:title:artist:)(uint64_t a1, uint64_t a2, _BYTE *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v50 = a6;
  v51 = a8;
  v52 = a9;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a4;
  LOBYTE(v53) = *a3;
  v54 = PlaybackItem.Scheme.rawValue.getter();
  v55 = v21;
  MEMORY[0x2667833B0](3092282, 0xE300000000000000);
  v22 = 0xE600000000000000;
  v23 = 0x656369766564;
  v24 = 0xEC00000079726172;
  v25 = 0x62696C656C6F6877;
  if (v20 != 6)
  {
    v25 = 0x6E776F6E6B6E75;
    v24 = 0xE700000000000000;
  }

  v26 = 0xE400000000000000;
  v27 = 1684630645;
  if (v20 != 4)
  {
    v27 = 0x6867696C746F7073;
    v26 = 0xE900000000000074;
  }

  if (v20 <= 5)
  {
    v25 = v27;
    v24 = v26;
  }

  v28 = 0xEA00000000006573;
  v29 = 0x72657669746C756DLL;
  if (v20 != 2)
  {
    v29 = 0x65726F7473;
    v28 = 0xE500000000000000;
  }

  if (v20)
  {
    v23 = 0x636E797369726973;
    v22 = 0xE800000000000000;
  }

  if (v20 > 1)
  {
    v23 = v29;
    v22 = v28;
  }

  if (v20 <= 3)
  {
    v30 = v23;
  }

  else
  {
    v30 = v25;
  }

  if (v20 <= 3)
  {
    v31 = v22;
  }

  else
  {
    v31 = v24;
  }

  MEMORY[0x2667833B0](v30, v31);

  MEMORY[0x2667833B0](47, 0xE100000000000000);
  MEMORY[0x2667833B0](a1, a2);
  v32 = v54;
  v33 = v55;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  (*(v16 + 16))(v19, v34, v15);

  v35 = sub_2664DFE18();
  v36 = sub_2664E06C8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v49 = a7;
    v39 = a5;
    v40 = v38;
    v53 = v38;
    *v37 = 136446210;
    *(v37 + 4) = sub_2662A320C(v32, v33, &v53);
    _os_log_impl(&dword_26629C000, v35, v36, "Creating playback item uri: %{public}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    v41 = v40;
    a5 = v39;
    a7 = v49;
    MEMORY[0x266784AD0](v41, -1, -1);
    MEMORY[0x266784AD0](v37, -1, -1);
  }

  (*(v16 + 8))(v19, v15);
  privateMediaItemDataFromBacking(recommendationId:assetInfo:subItemIdentifiers:sharedUserIdFromPlayableMusicAccount:)(0, 0, 0, 0, MEMORY[0x277D84F90], 0, 0);
  v43 = v42;
  v44 = sub_2664E02A8();

  if (a7)
  {
    a7 = sub_2664E02A8();
  }

  if (v52)
  {
    v45 = sub_2664E02A8();
  }

  else
  {
    v45 = 0;
  }

  v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:v44 title:a7 type:a5 artwork:0 artist:v45 topics:0 namedEntities:0 privateMediaItemValueData:v43];

  return v46;
}

void *static INMediaItem.unique(_:)(unint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x277D84F90];
  sub_2663DEE18(a1, &v41);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_2664DFE18();
  v9 = sub_2664E06C8();
  if (!os_log_type_enabled(v8, v9))
  {
    goto LABEL_20;
  }

  v10 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  v40 = v37;
  *v10 = 136446210;
  swift_beginAccess();
  v11 = v41;
  v38 = v9;
  if (v41 >> 62)
  {
    v12 = sub_2664E0A68();
  }

  else
  {
    v12 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
LABEL_19:
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v27 = MEMORY[0x2667834D0](v13, v26);
    v29 = v28;

    v30 = sub_2662A320C(v27, v29, &v40);

    *(v10 + 4) = v30;
    _os_log_impl(&dword_26629C000, v8, v38, "INMediaItem#unique items: %{public}s", v10, 0xCu);
    v31 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x266784AD0](v31, -1, -1);
    MEMORY[0x266784AD0](v10, -1, -1);
LABEL_20:

    (*(v3 + 8))(v6, v2);
    swift_beginAccess();
    return v41;
  }

  v39 = MEMORY[0x277D84F90];

  result = sub_2662FD1B0(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v32 = v10;
    v33 = v8;
    v34 = v6;
    v35 = v3;
    v36 = v2;
    v15 = 0;
    v13 = v39;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x266783B70](v15, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 identifier];
      if (v18)
      {
        v19 = v18;
        v20 = sub_2664E02C8();
        v22 = v21;
      }

      else
      {

        v20 = 0;
        v22 = 0;
      }

      v39 = v13;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2662FD1B0((v23 > 1), v24 + 1, 1);
        v13 = v39;
      }

      ++v15;
      *(v13 + 16) = v24 + 1;
      v25 = v13 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
    }

    while (v12 != v15);

    v3 = v35;
    v2 = v36;
    v8 = v33;
    v6 = v34;
    v10 = v32;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_2663E029C(id *a1, void *a2)
{
  v3 = v2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *a1;
  v12 = *a2;
  if (*a2 >> 62)
  {
LABEL_55:
    v53 = v9;
    v54 = sub_2664E0A68();
    v9 = v53;
    v65 = v54;
    if (v54)
    {
      goto LABEL_3;
    }

LABEL_43:
    v38 = v66;
    MEMORY[0x266783490]();
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v55 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2664E04C8();
    }

    return sub_2664E0518();
  }

  v65 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v65)
  {
    goto LABEL_43;
  }

LABEL_3:
  v59 = v9;
  v60 = a2;
  v57 = v11;
  v58 = v7;
  v11 = (v12 & 0xC000000000000001);
  v61 = v3;
  v62 = v12 & 0xFFFFFFFFFFFFFF8;

  v13 = 0;
  v63 = v12 & 0xC000000000000001;
  v64 = v12;
  a2 = v65;
  v3 = v66;
  while (1)
  {
    if (v11)
    {
      v9 = MEMORY[0x266783B70](v13, v12);
    }

    else
    {
      if (v13 >= *(v62 + 16))
      {
        goto LABEL_54;
      }

      v9 = *(v12 + 8 * v13 + 32);
    }

    v7 = v9;
    v14 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v15 = [v3 type];
    if (v15 == [v7 type])
    {
      break;
    }

LABEL_5:
    ++v13;
    if (v14 == a2)
    {

      a2 = v60;
      goto LABEL_43;
    }
  }

  v16 = [v3 title];
  if (v16)
  {
    v17 = v16;
    v18 = sub_2664E02C8();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [v7 title];
  if (!v21)
  {
    if (!v20)
    {
      goto LABEL_26;
    }

    goto LABEL_37;
  }

  v22 = v21;
  v23 = sub_2664E02C8();
  v25 = v24;

  if (v20)
  {
    if (v25)
    {
      if (v18 == v23 && v20 == v25)
      {
      }

      else
      {
        v26 = sub_2664E0D88();

        if ((v26 & 1) == 0)
        {
LABEL_40:

          goto LABEL_41;
        }
      }

      goto LABEL_26;
    }

LABEL_37:

LABEL_41:
    v12 = v64;
    a2 = v65;
    v11 = v63;
    v3 = v66;
    goto LABEL_5;
  }

  if (v25)
  {
LABEL_39:

    goto LABEL_40;
  }

LABEL_26:
  v27 = [v66 artist];
  if (v27)
  {
    v28 = v27;
    v29 = sub_2664E02C8();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = [v7 artist];
  if (!v32)
  {
    if (!v31)
    {
      goto LABEL_48;
    }

    goto LABEL_37;
  }

  v33 = v32;
  v34 = sub_2664E02C8();
  v36 = v35;

  if (!v31)
  {
    if (!v36)
    {
      goto LABEL_48;
    }

    goto LABEL_39;
  }

  if (!v36)
  {
    goto LABEL_37;
  }

  if (v29 != v34 || v31 != v36)
  {
    v37 = sub_2664E0D88();

    if (v37)
    {
      goto LABEL_48;
    }

    goto LABEL_40;
  }

LABEL_48:

  v40 = v66;
  v41 = v59;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v41, qword_280F914F0);
  swift_beginAccess();
  v44 = v57;
  v43 = v58;
  (v58[2])(v57, v42, v41);
  v45 = v40;
  v46 = sub_2664DFE18();
  v47 = sub_2664E06C8();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v67 = v49;
    *v48 = 136315138;
    v50 = INMediaItem.slimDescription.getter();
    v52 = sub_2662A320C(v50, v51, &v67);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_26629C000, v46, v47, "INMediaItem#unique suppressing duplicate type/artist/title result: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x266784AD0](v49, -1, -1);
    MEMORY[0x266784AD0](v48, -1, -1);

    return (v43[1])(v44, v59);
  }

  else
  {

    return (v43[1])(v44, v41);
  }
}

Swift::Bool __swiftcall INMediaItem.isLibrary()()
{
  v0 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4C98);
  sub_2662C1834(&unk_2877E4CB8);
  return v0 & 1;
}

uint64_t INMediaItem.toAudioMediaItem()()
{
  v1 = v0;
  v2 = sub_2664DFBE8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 identifier];
  if (v6)
  {
    v7 = v6;
    sub_2664E02C8();
  }

  v8 = [v1 title];
  if (v8)
  {
    v9 = v8;
    sub_2664E02C8();
  }

  sub_2663ECB60([v1 type], v5);
  v10 = [v1 artist];
  if (v10)
  {
    v11 = v10;
    sub_2664E02C8();
  }

  return sub_2664DFBF8();
}

Swift::String_optional __swiftcall INMediaItem.machineUtterance(for:)(INPlayMediaIntent a1)
{
  v2 = v1;
  v142 = sub_2664DFE38();
  v4 = *(v142 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v142);
  v8 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v139 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v139 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v141 = &v139 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v139 = &v139 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v139 - v20;
  MEMORY[0x28223BE20](v19);
  v140 = &v139 - v22;
  v23 = [(objc_class *)a1.super.super.isa hashedRouteUIDs];
  if (!v23 || (v24 = v23, v25 = v4, v26 = sub_2664E04A8(), v24, v27 = *(v26 + 16), v4 = v25, , v27))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = v142;
    v29 = __swift_project_value_buffer(v142, qword_280F914F0);
    swift_beginAccess();
    (*(v4 + 16))(v8, v29, v28);
    v30 = a1.super.super.isa;
    v31 = sub_2664DFE18();
    v32 = sub_2664E06C8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v145 = v34;
      *v33 = 136315138;
      v35 = [(objc_class *)v30 hashedRouteUIDs];
      if (v35)
      {
        v36 = sub_2664E04A8();

        v37 = *(v36 + 16);
      }

      else
      {
        v37 = 0;
      }

      v143 = v37;
      v144 = v35 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073468, &qword_2664EB040);
      v55 = sub_2664E0318();
      v57 = sub_2662A320C(v55, v56, &v145);

      *(v33 + 4) = v57;
      _os_log_impl(&dword_26629C000, v31, v32, "INMediaItem#machineUtterance skipping machineUtterance generation due to presence of hashedRouteUIDs of count: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x266784AD0](v34, -1, -1);
      MEMORY[0x266784AD0](v33, -1, -1);

      (*(v4 + 8))(v8, v142);
    }

    else
    {

      (*(v4 + 8))(v8, v28);
    }

LABEL_20:
    v58 = 0;
    v59 = 0;
    goto LABEL_59;
  }

  v38 = [(objc_class *)a1.super.super.isa mediaSearch];
  if (v38 && (v39 = v38, v40 = [v38 sortOrder], v39, v40 == 4) || (v41 = -[objc_class mediaSearch](a1.super.super.isa, sel_mediaSearch)) != 0 && (v42 = v41, v43 = objc_msgSend(v41, sel_sortOrder), v42, v43 == 5))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v44 = v142;
    v45 = __swift_project_value_buffer(v142, qword_280F914F0);
    swift_beginAccess();
    v46 = v25;
    (*(v25 + 16))(v11, v45, v44);
    v47 = a1.super.super.isa;
    v48 = sub_2664DFE18();
    v49 = sub_2664E06C8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v145 = v51;
      *v50 = 136315138;
      v52 = [(objc_class *)v47 mediaSearch];
      v53 = v52;
      if (v52)
      {
        v54 = [v52 sortOrder];
      }

      else
      {
        v54 = 0;
      }

      v143 = v54;
      v144 = v53 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073470, &qword_2664EB048);
      v99 = sub_2664E0318();
      v101 = sub_2662A320C(v99, v100, &v145);

      *(v50 + 4) = v101;
      _os_log_impl(&dword_26629C000, v48, v49, "INMediaItem#machineUtterance skipping machineUtterance generation because sortOrder: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x266784AD0](v51, -1, -1);
      MEMORY[0x266784AD0](v50, -1, -1);

      (*(v46 + 8))(v11, v142);
    }

    else
    {

      (*(v25 + 8))(v11, v44);
    }

    goto LABEL_20;
  }

  v60 = [v2 type];
  v61 = vdupq_n_s64(v60);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2877E4CE8, v61), vceqq_s64(unk_2877E4CF8, v61)))) & 1) == 0 && qword_2877E4D08 != v60)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v62 = v142;
    v63 = __swift_project_value_buffer(v142, qword_280F914F0);
    swift_beginAccess();
    v64 = v25;
    (*(v25 + 16))(v14, v63, v62);
    v65 = v2;
    v66 = sub_2664DFE18();
    v67 = sub_2664E06C8();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v143 = v69;
      *v68 = 136315394;
      v145 = [v65 type];
      type metadata accessor for INMediaItemType(0);
      v71 = v70;
      v72 = sub_2664E0318();
      v74 = sub_2662A320C(v72, v73, &v143);

      *(v68 + 4) = v74;
      *(v68 + 12) = 2080;
      v75 = MEMORY[0x2667834D0](&unk_2877E4CC8, v71);
      v77 = sub_2662A320C(v75, v76, &v143);

      *(v68 + 14) = v77;
      _os_log_impl(&dword_26629C000, v66, v67, "INMediaItem#machineUtterance skipping machineUtterance generation self.type: %s not in supportedTypes: %s", v68, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v69, -1, -1);
      MEMORY[0x266784AD0](v68, -1, -1);
    }

    (*(v64 + 8))(v14, v62);
    goto LABEL_20;
  }

  if ([v2 type] == 3)
  {
    v78 = sub_2664DEB98();
    v79 = *(v78 + 48);
    v80 = *(v78 + 52);
    swift_allocObject();
    sub_2664DEB88();
    sub_2664DEB68();

    v81 = [v2 title];
    if (v81)
    {
      v82 = v81;
      sub_2664E02C8();
    }

    v107 = v141;
    sub_2664DEB68();

    v108 = sub_2664DEB78();
    v110 = v109;

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v111 = v142;
    v112 = __swift_project_value_buffer(v142, qword_280F914F0);
    swift_beginAccess();
    (*(v25 + 16))(v107, v112, v111);

    v113 = sub_2664DFE18();
    v114 = sub_2664E06C8();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v143 = v116;
      *v115 = 136315138;

      v117 = sub_2662A320C(v108, v110, &v143);

      *(v115 + 4) = v117;
      _os_log_impl(&dword_26629C000, v113, v114, "INMediaItem#machineUtterance generate machineUtterance for artist result: %s", v115, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v116);
      MEMORY[0x266784AD0](v116, -1, -1);
      MEMORY[0x266784AD0](v115, -1, -1);

      (*(v25 + 8))(v107, v111);
      v59 = v110;
      v58 = v108;
    }

    else
    {

      (*(v25 + 8))(v107, v111);
      v58 = v108;
      v59 = v110;
    }
  }

  else
  {
    v83 = v25;
    if (_s16SiriAudioSupport22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a1.super.super.isa, &unk_2877E4D10))
    {
      v84 = sub_2664DEB98();
      v85 = *(v84 + 48);
      v86 = *(v84 + 52);
      swift_allocObject();
      sub_2664DEB88();
      sub_2664DEB68();

      sub_2664DEB68();

      v87 = sub_2664DEB78();
      v89 = v88;

      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v90 = v142;
      v91 = __swift_project_value_buffer(v142, qword_280F914F0);
      swift_beginAccess();
      v92 = v139;
      (*(v83 + 16))(v139, v91, v90);

      v93 = sub_2664DFE18();
      v94 = sub_2664E06C8();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v143 = v96;
        *v95 = 136315138;

        v97 = v83;
        v98 = sub_2662A320C(v87, v89, &v143);

        *(v95 + 4) = v98;
        _os_log_impl(&dword_26629C000, v93, v94, "INMediaItem#machineUtterance generate machineUtterance for implicit recommendation: %s", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v96);
        MEMORY[0x266784AD0](v96, -1, -1);
        MEMORY[0x266784AD0](v95, -1, -1);

        (*(v97 + 8))(v92, v90);
        v59 = v89;
        v58 = v87;
      }

      else
      {

        (*(v83 + 8))(v92, v90);
        v58 = v87;
        v59 = v89;
      }
    }

    else
    {
      v102 = [v2 identifier];
      if (v102)
      {
        v103 = v102;
        v104 = sub_2664E02C8();
        v106 = v105;
      }

      else
      {
        v104 = 0;
        v106 = 0xE000000000000000;
      }

      v118 = v142;
      v119 = v140;
      static PlaybackItem.Identifier.parse(uri:)(v104, v106, v146);

      if (!v146[2])
      {
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v134 = __swift_project_value_buffer(v118, qword_280F914F0);
        swift_beginAccess();
        (*(v83 + 16))(v21, v134, v118);
        v135 = sub_2664DFE18();
        v136 = sub_2664E06C8();
        if (os_log_type_enabled(v135, v136))
        {
          v137 = swift_slowAlloc();
          *v137 = 0;
          _os_log_impl(&dword_26629C000, v135, v136, "INMediaItem#machineUtterance skipping machineUtterance because of an invalid mediaId", v137, 2u);
          MEMORY[0x266784AD0](v137, -1, -1);
        }

        (*(v83 + 8))(v21, v118);
        goto LABEL_20;
      }

      v120 = sub_2664DEB98();
      v121 = *(v120 + 48);
      v122 = *(v120 + 52);
      swift_allocObject();
      sub_2664DEB88();
      sub_2664DEB68();

      sub_2664DEB68();

      v123 = sub_2664DEB78();
      v125 = v124;

      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v126 = v142;
      v127 = __swift_project_value_buffer(v142, qword_280F914F0);
      swift_beginAccess();
      (*(v83 + 16))(v119, v127, v126);

      v128 = sub_2664DFE18();
      v129 = sub_2664E06C8();

      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v143 = v131;
        *v130 = 136315138;

        v132 = v83;
        v133 = sub_2662A320C(v123, v125, &v143);

        *(v130 + 4) = v133;
        _os_log_impl(&dword_26629C000, v128, v129, "INMediaItem#machineUtterance generate machineUtterance: %s", v130, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v131);
        MEMORY[0x266784AD0](v131, -1, -1);
        MEMORY[0x266784AD0](v130, -1, -1);

        (*(v132 + 8))(v119, v126);
        v59 = v125;
        v58 = v123;
      }

      else
      {

        (*(v83 + 8))(v119, v126);
        v58 = v123;
        v59 = v125;
      }
    }
  }

LABEL_59:
  result.value._object = v59;
  result.value._countAndFlagsBits = v58;
  return result;
}

void INMediaItem.addToPlaybackContext(intentSignals:)(void *a1)
{
  v2 = v1;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v78 - v10;
  v12 = [v1 identifier];
  if (v12)
  {
    v13 = v12;
    v14 = sub_2664E02C8();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  static PlaybackItem.Identifier.parse(uri:)(v14, v16, v83);

  v80 = v83[0];
  v81 = v83[2];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  if ((*(v18 + 8))(v17, v18))
  {
    v19 = qword_280071C68;
    v20 = 4;
  }

  else
  {
    v21 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4DD0);
    sub_2662C1834(&unk_2877E4DF0);
    if (v21)
    {
      if (qword_280071C68 != -1)
      {
        swift_once();
      }

      v22 = off_280073BF8;
      if ([*(off_280073BF8 + 2) executionSource] == 3)
      {
        v20 = 6;
        v23 = v22;
        goto LABEL_22;
      }
    }

    v24 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4E00);
    sub_2662C1834(&unk_2877E4E20);
    if (v24 & 1) != 0 && v81 && BYTE1(v80) != 8 && (sub_266341AA4(BYTE1(v80), 5u))
    {
      v19 = qword_280071C68;
      v20 = 3;
    }

    else
    {
      v25 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4E30);
      sub_2662C1834(&unk_2877E4E50);
      v19 = qword_280071C68;
      if (v25)
      {
        v20 = 5;
      }

      else
      {
        v20 = 2;
      }
    }
  }

  if (v19 != -1)
  {
    v77 = v20;
    swift_once();
    v20 = v77;
  }

  v23 = off_280073BF8;
LABEL_22:
  [v23[2] setEndpoint_];
  v26 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4E60);
  sub_2662C1834(&unk_2877E4E80);
  if (v26)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v11, v27, v4);
    v28 = sub_2664DFE18();
    v29 = sub_2664E06C8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26629C000, v28, v29, "INMediaItem#addToPlaybackContext ignore Nls signals since library result is first", v30, 2u);
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    v31 = v81;
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v32, v4);
    v33 = sub_2664DFE18();
    v34 = sub_2664E06C8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_26629C000, v33, v34, "INMediaItem#addToPlaybackContext set Nls signals since Pegasus result is first", v35, 2u);
      MEMORY[0x266784AD0](v35, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    v36 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v37 = CommonIntentSignals.isNlsResult()();
    v31 = v81;
    if (v37)
    {
      if (qword_280071C68 != -1)
      {
        swift_once();
      }

      *(v23[3] + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsResult) = 1;
    }

    v38 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if (CommonIntentSignals.isNlsContainerResult()())
    {
      if (qword_280071C68 != -1)
      {
        swift_once();
      }

      *(v23[3] + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_isNlsContainerResult) = 1;
    }
  }

  INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4E90);
  sub_2662C1834(&unk_2877E4EB0);
  if (qword_280071C68 != -1)
  {
    swift_once();
  }

  [v23[2] setContentSource_];
  if (!v31)
  {
    return;
  }

  v79 = v23;
  v82 = v80;
  if (PlaybackItem.Scheme.rawValue.getter() == 0x6172706D61732D78 && v39 == 0xEB000000006F6964)
  {

    goto LABEL_47;
  }

  v40 = sub_2664E0D88();

  if (v40)
  {
LABEL_47:
    v41 = [objc_allocWithZone(MEMORY[0x277D57650]) init];
    if (v41)
    {
      v42 = v41;

      v43 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4EC0);
      swift_arrayDestroy();
      if (v43)
      {
        [v42 setRadioStationSubtype_];
      }

      else
      {
        v66 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4F00);
        sub_2662C1834(&unk_2877E4F20);
        if (v66)
        {
          [v42 setRadioStationSubtype_];
        }

        else
        {
          v67 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4F30);
          sub_2662C1834(&unk_2877E4F50);
          if (v67)
          {
            [v42 setRadioStationSubtype_];
          }

          else
          {
            v68 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4F60);
            sub_2662C1834(&unk_2877E4F80);
            if (v68)
            {
              [v42 setRadioStationSubtype_];
            }

            else
            {
              v71 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4F90);
              sub_2662C1834(&unk_2877E4FB0);
              if (v71)
              {
                [v42 setRadioStationSubtype_];
              }

              else
              {
                v72 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4FC0);
                sub_2662C1834(&unk_2877E4FE0);
                if (v72)
                {
                  [v42 setRadioStationSubtype_];
                }

                else
                {
                  v73 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E4FF0);
                  sub_2662C1834(&unk_2877E5010);
                  if (v73)
                  {
                    [v42 setRadioStationSubtype_];
                  }

                  else
                  {
                    v74 = INMediaItem.isInternalSignalPresent(_:)(&unk_2877E5020);
                    sub_2662C1834(&unk_2877E5040);
                    if (v74)
                    {
                      v75 = 7;
                    }

                    else
                    {
                      v75 = 0;
                    }

                    [v42 setRadioStationSubtype_];
                  }
                }
              }
            }
          }
        }
      }

      v76 = v79;
      if (qword_280071C68 != -1)
      {
        swift_once();
      }

      [v76[2] setRadioStationContext_];

      return;
    }
  }

  if ([v2 type] == 5 && (v44 = objc_msgSend(objc_allocWithZone(MEMORY[0x277D57648]), sel_init)) != 0)
  {
    v78 = v44;
    v45 = 0;
    v46 = BYTE1(v80);
    while (v45 != 4)
    {
      v48 = byte_2877E5050[v45 + 32];
      if (v48 > 3)
      {
        if (byte_2877E5050[v45 + 32] > 5u)
        {
          if (v48 == 6)
          {
            v53 = 0x62696C656C6F6877;
            v54 = 0xEC00000079726172;
          }

          else
          {
            v54 = 0xE700000000000000;
            v53 = 0x6E776F6E6B6E75;
          }
        }

        else
        {
          if (v48 == 4)
          {
            v53 = 1684630645;
          }

          else
          {
            v53 = 0x6867696C746F7073;
          }

          if (v48 == 4)
          {
            v54 = 0xE400000000000000;
          }

          else
          {
            v54 = 0xE900000000000074;
          }
        }
      }

      else
      {
        if (v48 == 2)
        {
          v49 = 0x72657669746C756DLL;
        }

        else
        {
          v49 = 0x65726F7473;
        }

        if (v48 == 2)
        {
          v50 = 0xEA00000000006573;
        }

        else
        {
          v50 = 0xE500000000000000;
        }

        if (byte_2877E5050[v45 + 32])
        {
          v51 = 0x636E797369726973;
        }

        else
        {
          v51 = 0x656369766564;
        }

        if (byte_2877E5050[v45 + 32])
        {
          v52 = 0xE800000000000000;
        }

        else
        {
          v52 = 0xE600000000000000;
        }

        if (byte_2877E5050[v45 + 32] <= 1u)
        {
          v53 = v51;
        }

        else
        {
          v53 = v49;
        }

        if (byte_2877E5050[v45 + 32] <= 1u)
        {
          v54 = v52;
        }

        else
        {
          v54 = v50;
        }
      }

      v55 = 0x62696C656C6F6877;
      if (v46 != 6)
      {
        v55 = 0x6E776F6E6B6E75;
      }

      v56 = 0xEC00000079726172;
      if (v46 != 6)
      {
        v56 = 0xE700000000000000;
      }

      v57 = 0x6867696C746F7073;
      if (v46 == 4)
      {
        v57 = 1684630645;
      }

      v58 = 0xE900000000000074;
      if (v46 == 4)
      {
        v58 = 0xE400000000000000;
      }

      if (v46 <= 5)
      {
        v55 = v57;
        v56 = v58;
      }

      if (v46 == 2)
      {
        v59 = 0x72657669746C756DLL;
      }

      else
      {
        v59 = 0x65726F7473;
      }

      if (v46 == 2)
      {
        v60 = 0xEA00000000006573;
      }

      else
      {
        v60 = 0xE500000000000000;
      }

      if (v46)
      {
        v61 = 0x636E797369726973;
      }

      else
      {
        v61 = 0x656369766564;
      }

      if (v46)
      {
        v62 = 0xE800000000000000;
      }

      else
      {
        v62 = 0xE600000000000000;
      }

      if (v46 <= 1)
      {
        v59 = v61;
        v60 = v62;
      }

      if (v46 <= 3)
      {
        v63 = v59;
      }

      else
      {
        v63 = v55;
      }

      if (v46 <= 3)
      {
        v64 = v60;
      }

      else
      {
        v64 = v56;
      }

      if (v53 == v63 && v54 == v64)
      {

LABEL_117:
        v65 = 1;
        goto LABEL_126;
      }

      v47 = sub_2664E0D88();

      ++v45;
      if (v47)
      {
        goto LABEL_117;
      }
    }

    v65 = 2;
LABEL_126:

    v69 = v78;
    [v78 setPlaylistSubtype_];
    v70 = v79;
    if (qword_280071C68 != -1)
    {
      swift_once();
    }

    [v70[2] setPlaylistContext_];
  }

  else
  {
  }
}

void INMediaItem.toSAMPMediaItem()()
{
  v1 = v0;
  v79 = sub_2664DFE38();
  v2 = *(v79 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v79);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v72 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v72 - v11;
  v13 = sub_2664DE268();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v76 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v72 - v19;
  MEMORY[0x28223BE20](v18);
  v77 = &v72 - v21;
  v22 = [objc_allocWithZone(MEMORY[0x277D47560]) init];
  v23 = [v1 identifier];
  v78 = v2;
  if (!v23)
  {
    goto LABEL_4;
  }

  v24 = v23;
  v75 = v8;
  sub_2664E02C8();

  sub_2664DE258();

  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    v37 = v13;
    v38 = *(v14 + 32);
    v74 = v37;
    v38(v77, v12);
    v39 = v22;
    v40 = sub_2664DE208();
    [v39 setIdentifier_];

    v41 = v39;
    v42 = [v1 title];
    [v41 setTitle_];

    v43 = [v1 artist];
    [v41 setArtist_];

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v44 = v79;
    __swift_project_value_buffer(v79, qword_280F914F0);
    swift_beginAccess();
    v45 = v78;
    v46 = v75;
    (*(v78 + 16))();
    v47 = v41;
    v48 = sub_2664DFE18();
    v49 = sub_2664E06C8();
    if (!os_log_type_enabled(v48, v49))
    {

      (*(v45 + 8))(v46, v44);
      (*(v14 + 8))(v77, v74);
      return;
    }

    v73 = v49;
    v50 = v38;
    v51 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v80 = v72;
    *v51 = 136315650;
    v52 = [v47 identifier];

    if (v52)
    {
      v53 = v76;
      sub_2664DE218();

      v54 = v74;
      v50(v20, v53, v74);
      sub_2663C12D0();
      v55 = sub_2664E0D48();
      v57 = v56;
      v58 = *(v14 + 8);
      v58(v20, v54);
      v59 = sub_2662A320C(v55, v57, &v80);

      *(v51 + 4) = v59;
      *(v51 + 12) = 2080;
      v60 = [v47 title];

      if (v60)
      {
        v61 = sub_2664E02C8();
        v63 = v62;

        v64 = sub_2662A320C(v61, v63, &v80);

        *(v51 + 14) = v64;
        *(v51 + 22) = 2080;
        v65 = [v47 artist];

        if (v65)
        {
          v66 = sub_2664E02C8();
          v68 = v67;

          v69 = sub_2662A320C(v66, v68, &v80);

          *(v51 + 24) = v69;
          _os_log_impl(&dword_26629C000, v48, v73, "INMediaItem#toSAMPMediaItem Converted to SAMPMediaItem with identifier: %s, title: %s, artist: %s", v51, 0x20u);
          v70 = v72;
          swift_arrayDestroy();
          MEMORY[0x266784AD0](v70, -1, -1);
          MEMORY[0x266784AD0](v51, -1, -1);

          (*(v78 + 8))(v75, v79);
          v58(v77, v74);
          return;
        }

        goto LABEL_22;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  sub_2663E3554(v12);
  v2 = v78;
LABEL_4:
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = v79;
  v26 = __swift_project_value_buffer(v79, qword_280F914F0);
  swift_beginAccess();
  (*(v2 + 16))(v6, v26, v25);
  v27 = v1;
  v28 = sub_2664DFE18();
  v29 = sub_2664E06D8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v80 = v31;
    *v30 = 136446210;
    v32 = [v27 identifier];
    if (v32)
    {
      v33 = v32;
      v34 = sub_2664E02C8();
      v36 = v35;
    }

    else
    {
      v36 = 0xE500000000000000;
      v34 = 0x3E6C696E3CLL;
    }

    v71 = sub_2662A320C(v34, v36, &v80);

    *(v30 + 4) = v71;
    _os_log_impl(&dword_26629C000, v28, v29, "INMediaItem#toSAMPMediaItem Error converting identifier to URL: %{public}s. Returning nil.", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x266784AD0](v31, -1, -1);
    MEMORY[0x266784AD0](v30, -1, -1);

    (*(v78 + 8))(v6, v25);
  }

  else
  {

    (*(v2 + 8))(v6, v25);
  }
}

id _sSo11INMediaItemC16SiriAudioSupportE4from010audioMediaB0ABSg0cD11IntentUtils0dhB0V_tFZ_0(char *a1)
{
  v2 = sub_2664DFE38();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = *(v56 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v54 - v7;
  v9 = sub_2664DFC48();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v54 - v15;
  v17 = sub_2664DFBE8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DFC18();
  v54 = sub_2663ECDE0(v21);
  (*(v18 + 8))(v21, v17);
  v22 = *(v10 + 16);
  v55 = a1;
  v22(v16, a1, v9);
  PlaybackItem.Identifier.init(from:)(v16, v60);
  v23 = v61;
  if (v61)
  {
    v24 = v60[1];
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v25 = v57;
    v26 = __swift_project_value_buffer(v57, qword_280F914F0);
    swift_beginAccess();
    v27 = v56;
    (*(v56 + 16))(v8, v26, v25);

    v28 = sub_2664DFE18();
    v29 = sub_2664E06C8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v58[0] = v31;
      *v30 = 136315138;

      v32 = sub_2662A320C(v24, v23, v58);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_26629C000, v28, v29, "INMediaItem#from Identifier: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x266784AD0](v31, -1, -1);
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    (*(v27 + 8))(v8, v25);
    sub_2664DFC28();
    v34 = v33;
    v35 = sub_2664E02A8();

    if (v34)
    {
      v36 = sub_2664E02A8();
    }

    else
    {
      v36 = 0;
    }

    v51 = objc_allocWithZone(MEMORY[0x277CD3DB8]);
    v52 = [v51 initWithIdentifier:v35 title:v36 type:v54 artwork:0];
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v37 = v57;
    v38 = __swift_project_value_buffer(v57, qword_280F914F0);
    swift_beginAccess();
    v39 = v56;
    v40 = v6;
    (*(v56 + 16))(v6, v38, v37);
    v22(v14, v55, v9);
    v41 = sub_2664DFE18();
    v42 = sub_2664E06D8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v55 = v40;
      v44 = v43;
      v45 = swift_slowAlloc();
      v59 = v45;
      *v44 = 136315138;
      v58[0] = sub_2664DFC08();
      v58[1] = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v47 = sub_2664E0318();
      v49 = v48;
      (*(v10 + 8))(v14, v9);
      v50 = sub_2662A320C(v47, v49, &v59);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_26629C000, v41, v42, "INMediaItem#from audioMediaItem failed to create playbackItem with identifier: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x266784AD0](v45, -1, -1);
      MEMORY[0x266784AD0](v44, -1, -1);

      (*(v39 + 8))(v55, v57);
    }

    else
    {

      (*(v10 + 8))(v14, v9);
      (*(v39 + 8))(v40, v37);
    }

    return 0;
  }

  return v52;
}

uint64_t sub_2663E3554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_2663E3650(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_2664E0C38();

    if (v4)
    {
      sub_2662C1744(0, &unk_280F8F600, 0x277CFE340);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_26634DC88(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

id sub_2663E3714()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073490, &qword_2664E8E20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2664EB090;
  v1 = objc_opt_self();
  result = [v1 keyPathForWorkoutStatus];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  *(v0 + 32) = result;
  result = [v1 keyPathForDeviceLockStatus];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v0 + 40) = result;
  result = [v1 keyPathForCarplayConnectedStatus];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v0 + 48) = result;
  result = [v1 keyPathForCarConnectedStatus];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v0 + 56) = result;
  result = [v1 keyPathForNavigationStatus];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v0 + 64) = result;
  result = [v1 keyPathForSunriseSunsetDataDictionary];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v0 + 72) = result;
  result = [v1 keyPathForMotionState];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v0 + 80) = result;
  result = [v1 keyPathForForegroundApp];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v0 + 88) = result;
  result = [v1 keyPathForAppUsageDataDictionaries];
  if (result)
  {
    *(v0 + 96) = result;
    qword_280F91CC0 = v0;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_2663E38B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v24 = a2;
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073478, &qword_2664EB188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073480, &qword_2664EB190);
  v11 = sub_2664E0318();
  v22 = v12;
  v23 = v11;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v13 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = "appSelectionSignalsSignal";
  *(v16 + 24) = 25;
  *(v16 + 32) = 2;
  (*(v5 + 32))(v16 + v14, v8, v4);
  v17 = (v16 + v15);
  *v17 = v24;
  v17[1] = a3;

  sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2664E36F0;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_2662C4094();
  v19 = v22;
  *(v18 + 32) = v23;
  *(v18 + 40) = v19;
  sub_2664DFDC8();

  v20 = swift_allocObject();
  *(v20 + 16) = sub_266352A18;
  *(v20 + 24) = v16;

  sub_2663E3BE0(sub_266352AC0, v20, v26, v25);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_2663E3BE0(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v13 = sub_26632958C(1009);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v14, v8);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06E8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = a2;
    v18 = a4;
    v19 = a3;
    v20 = a1;
    v21 = v17;
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "ClientContextSignal#signal", v17, 2u);
    v22 = v21;
    a1 = v20;
    a3 = v19;
    a4 = v18;
    a2 = v25;
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v23 = [objc_opt_self() userContext];

  sub_2663E72D0(v23, a4, a3, v13, a1, a2);
}

uint64_t sub_2663E3E68(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, _BOOL8 a5)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06E8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "ClientContextSignal#signal context values", v16, 2u);
    MEMORY[0x266784AD0](v16, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  v17 = sub_2663E61E8(a1, a5);
  v19[3] = type metadata accessor for ClientContextSignal();
  v19[4] = &off_2877EEE58;
  v19[0] = v17;
  a2(v19);
  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

uint64_t sub_2663E4068(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_2662C1744(0, &qword_280F8F5A0, 0x277CFE358);
    sub_2662C1744(0, &unk_280F8F600, 0x277CFE340);
    sub_2663E788C();
    v2 = sub_2664E01C8();
  }

  v4(v2);
}

uint64_t sub_2663E4124()
{
  v0 = sub_2662C3A68(&unk_2877E1520);
  result = swift_arrayDestroy();
  qword_280F91CC8 = v0;
  return result;
}

unint64_t sub_2663E4170(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EB0A0;
  strcpy((inited + 32), "clientWorkout");
  *(inited + 46) = -4864;
  v27 = v2[3];
  v5 = MEMORY[0x277D83B88];
  v6 = sub_2664E0D48();
  MEMORY[0x2667833B0](v6);

  v7 = MEMORY[0x277D837D0];
  *(inited + 48) = 0x6574617473;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = v7;
  strcpy((inited + 80), "clientLocked");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v28 = v2[4];
  v8 = sub_2664E0D48();
  MEMORY[0x2667833B0](v8);

  *(inited + 96) = 0x6574617473;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 120) = v7;
  strcpy((inited + 128), "clientCarplay");
  *(inited + 142) = -4864;
  v29 = v2[5];
  v9 = sub_2664E0D48();
  MEMORY[0x2667833B0](v9);

  *(inited + 144) = 0x6574617473;
  *(inited + 152) = 0xE500000000000000;
  *(inited + 168) = v7;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = 0x80000002664F1090;
  v30 = v2[6];
  v10 = sub_2664E0D48();
  MEMORY[0x2667833B0](v10);

  *(inited + 192) = 0x6574617473;
  *(inited + 200) = 0xE500000000000000;
  *(inited + 216) = v7;
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x80000002664F10B0;
  v31 = v2[7];
  v11 = sub_2664E0D48();
  MEMORY[0x2667833B0](v11);

  *(inited + 240) = 0x6574617473;
  *(inited + 248) = 0xE500000000000000;
  *(inited + 264) = v7;
  strcpy((inited + 272), "clientMotion");
  *(inited + 285) = 0;
  *(inited + 286) = -5120;
  v32 = v2[9];
  v12 = sub_2664E0D48();
  MEMORY[0x2667833B0](v12);

  *(inited + 288) = 0x6574617473;
  *(inited + 296) = 0xE500000000000000;
  *(inited + 312) = v7;
  strcpy((inited + 320), "clientDaylight");
  *(inited + 335) = -18;
  v33 = v2[8];
  v13 = sub_2664E0D48();
  MEMORY[0x2667833B0](v13);

  *(inited + 336) = 0x6574617473;
  *(inited + 344) = 0xE500000000000000;
  *(inited + 360) = v7;
  *(inited + 368) = 0xD000000000000016;
  *(inited + 376) = 0x80000002664F10D0;
  v14 = v2[11];
  *(inited + 384) = v2[10];
  *(inited + 392) = v14;
  *(inited + 408) = v7;
  *(inited + 416) = 0xD000000000000014;
  *(inited + 424) = 0x80000002664F10F0;
  v15 = v2[13];
  *(inited + 432) = v3[12];
  *(inited + 440) = v15;
  *(inited + 456) = v7;
  *(inited + 464) = 0xD00000000000001CLL;
  *(inited + 472) = 0x80000002664F1110;
  v16 = v3[15];
  if (v16)
  {
    if (v3[14] == a1 && v16 == a2)
    {
      v17 = 1;
    }

    else
    {
      v17 = sub_2664E0D88();
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = MEMORY[0x277D839B0];
  *(inited + 480) = v17 & 1;
  *(inited + 504) = v18;
  *(inited + 512) = 0x6F48746E65696C63;
  *(inited + 520) = 0xEF796144664F7275;
  v19 = v3[16];
  *(inited + 552) = v5;
  *(inited + 528) = v19;
  *(inited + 560) = 0x6144746E65696C63;
  *(inited + 568) = 0xEF6B656557664F79;
  v20 = v3[17];
  *(inited + 600) = v5;
  *(inited + 576) = v20;
  strcpy((inited + 608), "clientDevice");
  *(inited + 621) = 0;
  *(inited + 622) = -5120;
  v21 = v3[18];
  v22 = v3[19];
  *(inited + 648) = v7;
  *(inited + 624) = v21;
  *(inited + 632) = v22;

  v23 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();
  return v23;
}

unint64_t sub_2663E4630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = sub_2663E4170(a1, a2);
  if (*(result + 16))
  {
    v7 = result;
    result = sub_2662A3E98(0xD000000000000016, 0x80000002664F10D0);
    if (v8)
    {
      sub_2662A01E8(*(v7 + 56) + 32 * result, v12);

      sub_266318804(v12, &v13);
      swift_dynamicCast();
      v9 = *(a3 + 144);
      *(a3 + 136) = v10;
      *(a3 + 144) = v11;

      *(a3 + 208) = *(v4 + 128);
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

uint64_t sub_2663E4700()
{
  v1 = v0[11];

  v2 = v0[13];

  v3 = v0[15];

  v4 = v0[19];

  return swift_deallocClassInstance();
}

uint64_t sub_2663E4784()
{
  if (qword_280F90728 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2663E47E0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 120);
  if (v4)
  {
    v6 = *(*v1 + 120);

    v3 = sub_2664475B4(a1, v3, v4);
    v8 = v7;

    v9 = *(v2 + 120);
  }

  else
  {
    v8 = 0;
  }

  *(v2 + 112) = v3;
  *(v2 + 120) = v8;
}

uint64_t sub_2663E48B0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v89 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v89 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v89 - v20;
  MEMORY[0x28223BE20](v19);
  v24 = &v89 - v23;
  if (!v22)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v68 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    (*(v8 + 16))(v12, v68, v7);
    v69 = a1;
    v70 = sub_2664DFE18();
    v71 = sub_2664E06D8();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138412290;
      *(v72 + 4) = v69;
      *v73 = v69;
      v74 = v69;
      _os_log_impl(&dword_26629C000, v70, v71, "ClientContextSignal#valueForKeyPath missing values, so no value for path: %@", v72, 0xCu);
      sub_2662E4324(v73);
      MEMORY[0x266784AD0](v73, -1, -1);
      MEMORY[0x266784AD0](v72, -1, -1);
    }

    (*(v8 + 8))(v12, v7);
    return -1;
  }

  v98 = a3;
  v25 = sub_2663E3650(a1, v22);
  if (!v25 || (v26 = v25, v27 = [v25 value], v26, !v27))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v61 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    (*(v8 + 16))(v15, v61, v7);
    v62 = a1;
    v63 = sub_2664DFE18();
    v64 = sub_2664E06C8();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *v65 = 138412290;
      *(v65 + 4) = v62;
      *v66 = v62;
      v67 = v62;
      _os_log_impl(&dword_26629C000, v63, v64, "ClientContextSignal#valueForKeyPath missing value for path: %@", v65, 0xCu);
      sub_2662E4324(v66);
      MEMORY[0x266784AD0](v66, -1, -1);
      MEMORY[0x266784AD0](v65, -1, -1);
    }

    (*(v8 + 8))(v15, v7);
    return -1;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v29 = *(v8 + 16);
  v96 = v8 + 16;
  v97 = v28;
  v95 = v29;
  v29(v24, v28, v7);
  swift_unknownObjectRetain();
  v30 = a1;
  v31 = sub_2664DFE18();
  v32 = sub_2664E06C8();
  swift_unknownObjectRelease();

  v33 = os_log_type_enabled(v31, v32);
  v94 = v30;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v92 = a4;
    v35 = v34;
    v36 = swift_slowAlloc();
    v90 = v32;
    v37 = v27;
    v38 = v36;
    v89 = v36;
    v91 = swift_slowAlloc();
    v99[0] = v91;
    *v35 = 138412802;
    *(v35 + 4) = v30;
    *v38 = v30;
    v27 = v37;
    *(v35 + 12) = 2080;
    ObjectType = swift_getObjectType();
    v39 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734E0, &qword_2664EB1E8);
    v40 = sub_2664E0318();
    v93 = v18;
    v42 = sub_2662A320C(v40, v41, v99);

    *(v35 + 14) = v42;
    *(v35 + 22) = 2080;
    ObjectType = v37;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734B8, &unk_2664EB1C0);
    v43 = sub_2664E0318();
    v45 = sub_2662A320C(v43, v44, v99);
    v18 = v93;

    *(v35 + 24) = v45;
    _os_log_impl(&dword_26629C000, v31, v90, "ClientContextSignal#valueForKeyPath for path: %@ received value of type: %s: %s", v35, 0x20u);
    v46 = v89;
    sub_2662E4324(v89);
    MEMORY[0x266784AD0](v46, -1, -1);
    v47 = v91;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v47, -1, -1);
    v48 = v35;
    a4 = v92;
    MEMORY[0x266784AD0](v48, -1, -1);
  }

  v49 = *(v8 + 8);
  v49(v24, v7);
  v99[0] = v27;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734B8, &unk_2664EB1C0);
  v50 = swift_dynamicCast();
  v51 = v98;
  if (!v50)
  {
    if (a4)
    {
      v99[0] = v27;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
      if (swift_dynamicCast())
      {
        v76 = ObjectType;
        if (*(ObjectType + 16) && (v77 = sub_2662A3E98(v51, a4), (v78 & 1) != 0))
        {
          sub_2662A01E8(*(v76 + 56) + 32 * v77, v99);

          if (swift_dynamicCast())
          {
            v92 = ObjectType;
            v95(v18, v97, v7);
            v79 = v94;

            v80 = sub_2664DFE18();
            v81 = sub_2664E06C8();

            if (os_log_type_enabled(v80, v81))
            {
              v82 = swift_slowAlloc();
              v83 = swift_slowAlloc();
              v93 = v18;
              v84 = v83;
              v85 = swift_slowAlloc();
              v97 = v49;
              v86 = v85;
              v99[0] = v85;
              *v82 = 138412802;
              *(v82 + 4) = v79;
              *v84 = v79;
              *(v82 + 12) = 2080;
              v87 = v79;
              *(v82 + 14) = sub_2662A320C(v98, a4, v99);
              *(v82 + 22) = 2048;
              v88 = v92;
              *(v82 + 24) = v92;
              _os_log_impl(&dword_26629C000, v80, v81, "ClientContextSignal#valueForKeyPath for path: %@ and subpath: %s, received BOOL value: %ld", v82, 0x20u);
              sub_2662E4324(v84);
              MEMORY[0x266784AD0](v84, -1, -1);
              __swift_destroy_boxed_opaque_existential_1Tm(v86);
              MEMORY[0x266784AD0](v86, -1, -1);
              MEMORY[0x266784AD0](v82, -1, -1);
              swift_unknownObjectRelease();

              v97(v93, v7);
              return v88;
            }

            else
            {

              swift_unknownObjectRelease();
              v49(v18, v7);
              return v92;
            }
          }
        }

        else
        {
        }
      }
    }

    swift_unknownObjectRelease();
    return -1;
  }

  v52 = ObjectType;
  v95(v21, v97, v7);
  v53 = v94;
  v54 = sub_2664DFE18();
  v55 = sub_2664E06C8();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v97 = v49;
    v58 = v57;
    *v56 = 138412546;
    *(v56 + 4) = v53;
    *v57 = v53;
    *(v56 + 12) = 2048;
    *(v56 + 14) = v52;
    v59 = v53;
    _os_log_impl(&dword_26629C000, v54, v55, "ClientContextSignal#valueForKeyPath for path: %@ received BOOL value: %ld", v56, 0x16u);
    sub_2662E4324(v58);
    v60 = v58;
    v49 = v97;
    MEMORY[0x266784AD0](v60, -1, -1);
    MEMORY[0x266784AD0](v56, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v49(v21, v7);
  return v52;
}

uint64_t sub_2663E52E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v120 = a3;
  v121 = a4;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v115 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v115 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v115 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v115 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v115 - v24;
  if (!a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v51 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v11, v51, v6);
    v52 = a1;
    v53 = sub_2664DFE18();
    v54 = sub_2664E06D8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      *(v55 + 4) = v52;
      *v56 = v52;
      v57 = v52;
      _os_log_impl(&dword_26629C000, v53, v54, "ClientContextSignal#stringValueForKeyPath missing values, so no value for path: %@", v55, 0xCu);
      sub_2662E4324(v56);
      MEMORY[0x266784AD0](v56, -1, -1);
      MEMORY[0x266784AD0](v55, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    return 0;
  }

  v26 = sub_2663E3650(a1, a2);
  if (!v26)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v58 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v14, v58, v6);
    v59 = a1;
    v60 = sub_2664DFE18();
    v61 = sub_2664E06C8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v62 = 138412290;
      *(v62 + 4) = v59;
      *v63 = v59;
      v64 = v59;
      _os_log_impl(&dword_26629C000, v60, v61, "ClientContextSignal#stringValueForKeyPath missing entry for path: %@", v62, 0xCu);
      sub_2662E4324(v63);
      MEMORY[0x266784AD0](v63, -1, -1);
      MEMORY[0x266784AD0](v62, -1, -1);
    }

    (*(v7 + 8))(v14, v6);
    return 0;
  }

  v27 = v26;
  if (v121)
  {
    v28 = [v26 value];
    if (v28)
    {
      v124[0] = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734B8, &unk_2664EB1C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
      if (swift_dynamicCast())
      {
        v29 = v122;
        if (v122[2] && (v30 = sub_2662A3E98(v120, v121), (v31 & 1) != 0))
        {
          sub_2662A01E8(*(v29 + 56) + 32 * v30, v124);

          if (swift_dynamicCast())
          {
            v118 = v27;
            v119 = v122;
            v117 = v123;
            if (qword_280F914E8 != -1)
            {
              swift_once();
            }

            v32 = v6;
            v33 = __swift_project_value_buffer(v6, qword_280F914F0);
            swift_beginAccess();
            v34 = v7;
            (*(v7 + 16))(v25, v33, v6);

            v35 = a1;
            v36 = v121;

            v37 = sub_2664DFE18();
            v38 = sub_2664E06C8();

            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              v40 = swift_slowAlloc();
              v116 = swift_slowAlloc();
              v122 = v116;
              *v39 = 138413058;
              *(v39 + 4) = v35;
              *v40 = v35;
              *(v39 + 12) = 2080;
              v41 = v35;
              *(v39 + 14) = sub_2662A320C(v120, v36, &v122);
              *(v39 + 22) = 2080;
              v125 = MEMORY[0x277D837D0];
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734D0, &qword_2664EB1D8);
              v42 = sub_2664E0318();
              v43 = v32;
              v45 = sub_2662A320C(v42, v44, &v122);

              *(v39 + 24) = v45;
              *(v39 + 32) = 2080;
              v46 = v117;

              v47 = v119;
              v48 = sub_2662A320C(v119, v46, &v122);

              *(v39 + 34) = v48;
              _os_log_impl(&dword_26629C000, v37, v38, "ClientContextSignal#stringValueForKeyPath for path: %@ and subpath: %s received value of type: %s: %s", v39, 0x2Au);
              sub_2662E4324(v40);
              MEMORY[0x266784AD0](v40, -1, -1);
              v49 = v116;
              swift_arrayDestroy();
              MEMORY[0x266784AD0](v49, -1, -1);
              MEMORY[0x266784AD0](v39, -1, -1);

              (*(v34 + 8))(v25, v43);
              return v47;
            }

            (*(v34 + 8))(v25, v32);
            return v119;
          }
        }

        else
        {
        }
      }
    }

    v65 = [v27 value];
    if (v65)
    {
      v124[0] = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734B8, &unk_2664EB1C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734C0, qword_2664EB4A0);
      if (swift_dynamicCast())
      {
        if (v122[2] && (v66 = v122[4], , , *(v66 + 16)) && (v67 = sub_2662A3E98(v120, v121), (v68 & 1) != 0))
        {
          sub_2662A01E8(*(v66 + 56) + 32 * v67, v124);

          if (swift_dynamicCast())
          {
            v119 = v122;
            v117 = v123;
            if (qword_280F914E8 != -1)
            {
              swift_once();
            }

            v69 = v6;
            v70 = __swift_project_value_buffer(v6, qword_280F914F0);
            swift_beginAccess();
            v71 = v7;
            (*(v7 + 16))(v23, v70, v6);
            v72 = a1;
            v73 = v121;

            v74 = sub_2664DFE18();
            v75 = sub_2664E06C8();

            if (os_log_type_enabled(v74, v75))
            {
              v76 = swift_slowAlloc();
              v77 = swift_slowAlloc();
              v116 = v69;
              v78 = v77;
              v115 = swift_slowAlloc();
              v122 = v115;
              *v76 = 138413058;
              *(v76 + 4) = v72;
              *v78 = v72;
              *(v76 + 12) = 2080;
              v79 = v72;
              *(v76 + 14) = sub_2662A320C(v120, v73, &v122);
              *(v76 + 22) = 2080;
              v125 = MEMORY[0x277D837D0];
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734D0, &qword_2664EB1D8);
              v80 = sub_2664E0318();
              v82 = sub_2662A320C(v80, v81, &v122);
              v118 = v27;
              v83 = v82;

              *(v76 + 24) = v83;
              *(v76 + 32) = 2080;
              v84 = v117;

              v85 = v119;
              v86 = sub_2662A320C(v119, v84, &v122);

              *(v76 + 34) = v86;
              _os_log_impl(&dword_26629C000, v74, v75, "ClientContextSignal#stringValueForKeyPath for path: %@ and nested array subpath: %s received value of type: %s: %s", v76, 0x2Au);
              sub_2662E4324(v78);
              MEMORY[0x266784AD0](v78, -1, -1);
              v87 = v115;
              swift_arrayDestroy();
              MEMORY[0x266784AD0](v87, -1, -1);
              MEMORY[0x266784AD0](v76, -1, -1);

              (*(v71 + 8))(v23, v116);
              return v85;
            }

            (*(v7 + 8))(v23, v69);
            return v119;
          }
        }

        else
        {
        }
      }
    }
  }

  v88 = [v27 value];
  if (!v88 || (v122 = v88, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734B8, &unk_2664EB1C0), v89 = MEMORY[0x277D837D0], (swift_dynamicCast() & 1) == 0))
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v106 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v17, v106, v6);
    v107 = a1;
    v108 = sub_2664DFE18();
    v109 = sub_2664E06C8();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = v27;
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *v111 = 138412290;
      *(v111 + 4) = v107;
      *v112 = v107;
      v113 = v107;
      _os_log_impl(&dword_26629C000, v108, v109, "ClientContextSignal#stringValueForKeyPath missing value for path: %@", v111, 0xCu);
      sub_2662E4324(v112);
      MEMORY[0x266784AD0](v112, -1, -1);
      v114 = v111;
      v27 = v110;
      MEMORY[0x266784AD0](v114, -1, -1);
    }

    (*(v7 + 8))(v17, v6);
    return 0;
  }

  v90 = v124[1];
  v118 = v27;
  v119 = v124[0];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v91 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v20, v91, v6);
  v92 = a1;

  v93 = sub_2664DFE18();
  v94 = sub_2664E06C8();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v121 = v7;
    v122 = v97;
    v98 = v97;
    *v95 = 138412802;
    *(v95 + 4) = v92;
    *v96 = v92;
    *(v95 + 12) = 2080;
    v125 = v89;
    v99 = v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734D0, &qword_2664EB1D8);
    v100 = sub_2664E0318();
    v102 = sub_2662A320C(v100, v101, &v122);

    *(v95 + 14) = v102;
    *(v95 + 22) = 2080;
    v103 = v90;

    v104 = v119;
    v105 = sub_2662A320C(v119, v103, &v122);

    *(v95 + 24) = v105;
    _os_log_impl(&dword_26629C000, v93, v94, "ClientContextSignal#stringValueForKeyPath for path: %@ received value of type: %s: %s", v95, 0x20u);
    sub_2662E4324(v96);
    MEMORY[0x266784AD0](v96, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v98, -1, -1);
    MEMORY[0x266784AD0](v95, -1, -1);

    (*(v121 + 8))(v20, v6);
    return v104;
  }

  else
  {

    (*(v7 + 8))(v20, v6);
    return v119;
  }
}

void *sub_2663E61E8(uint64_t a1, _BOOL8 a2)
{
  v143 = a2;
  v141 = sub_2664DE178();
  v140 = *(v141 - 8);
  v3 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v139 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_2664DE578();
  v134 = *(v137 - 8);
  v5 = *(v134 + 64);
  MEMORY[0x28223BE20](v137);
  v131 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_2664DE598();
  v135 = *(v138 - 8);
  v7 = *(v135 + 64);
  MEMORY[0x28223BE20](v138);
  v132 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_2664DE438();
  v133 = *(v136 - 8);
  v9 = *(v133 + 64);
  MEMORY[0x28223BE20](v136);
  v152 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664DE518();
  v145 = *(v11 - 8);
  v12 = *(v145 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v151 = &v125 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v125 - v23;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v26 = v16[2];
  v147 = v16 + 2;
  v148 = v25;
  v146 = v26;
  v26(v24, v25, v15);

  v27 = sub_2664DFE18();
  v28 = sub_2664E06C8();

  v29 = os_log_type_enabled(v27, v28);
  v144 = v15;
  v150 = v16;
  v127 = v20;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v154[0] = v31;
    *v30 = 136315138;
    v155 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734C8, &qword_2664EB1D0);
    v32 = sub_2664E0318();
    v142 = v11;
    v34 = a1;
    v35 = sub_2662A320C(v32, v33, v154);

    *(v30 + 4) = v35;
    a1 = v34;
    _os_log_impl(&dword_26629C000, v27, v28, "ClientContextSignal#clientContextSignal values: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x266784AD0](v31, -1, -1);
    v36 = v30;
    v15 = v144;
    MEMORY[0x266784AD0](v36, -1, -1);

    v11 = v142;
  }

  else
  {
  }

  v149 = v16[1];
  v149(v24, v15);
  sub_2664DE508();
  v129 = sub_2664DE4D8();
  v38 = v37;
  v39 = *(v145 + 8);
  v39(v14, v11);
  sub_2664DE508();
  v40 = sub_2664DE4C8();
  v130 = v41;
  v39(v14, v11);
  v42 = v151;
  if (qword_280F90D58 != -1)
  {
    swift_once();
  }

  v43 = BYTE2(dword_280F90D60);
  v44 = objc_opt_self();
  result = [v44 keyPathForCarplayConnectedStatus];
  if (!result)
  {
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v46 = result;
  v47 = sub_2663E48B0(result, a1, 0, 0);

  v146(v42, v148, v15);

  v48 = sub_2664DFE18();
  v49 = v15;
  v50 = sub_2664E06C8();
  v51 = os_log_type_enabled(v48, v50);
  v128 = v40;
  LODWORD(v142) = v43;
  v145 = v47;
  if (v51)
  {
    v126 = v38;
    v52 = v47 == 1;
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v154[0] = v55;
    *v53 = 67109634;
    *(v53 + 4) = v52;
    *(v53 + 8) = 2112;
    v56 = [v44 keyPathForAppUsageDataDictionaries];
    *(v53 + 10) = v56;
    *v54 = v56;
    *(v53 + 18) = 2080;
    v125 = a1;
    if (!a1)
    {
      goto LABEL_18;
    }

    v57 = [v44 keyPathForAppUsageDataDictionaries];

    if (!v57)
    {
LABEL_61:
      __break(1u);
      return result;
    }

    v58 = sub_2663E3650(v57, a1);

    if (v58 && (v59 = [v58 value], v58, v59))
    {
      v155 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734B8, &unk_2664EB1C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734C0, qword_2664EB4A0);
      v60 = swift_dynamicCast();
      v61 = v153;
      if (!v60)
      {
        v61 = 0;
      }
    }

    else
    {
LABEL_18:
      v61 = 0;
    }

    v155 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A8, qword_2664EB198);
    v63 = sub_2664E0318();
    v65 = sub_2662A320C(v63, v64, v154);

    *(v53 + 20) = v65;
    _os_log_impl(&dword_26629C000, v48, v50, "ClientContextSignal#clientContextSignal isCarplay? %{BOOL}d, keypath: %@ values: %s", v53, 0x1Cu);
    sub_2662E4324(v54);
    MEMORY[0x266784AD0](v54, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    MEMORY[0x266784AD0](v55, -1, -1);
    MEMORY[0x266784AD0](v53, -1, -1);

    v62 = v144;
    v149(v151, v144);
    a1 = v125;
    v38 = v126;
  }

  else
  {

    v149(v42, v49);
    v62 = v49;
  }

  result = [v44 keyPathForForegroundApp];
  if (!result)
  {
    goto LABEL_53;
  }

  v66 = result;
  v67 = sub_2663E52E4(result, a1, 0, 0);
  v69 = v68;

  v70 = v145;
  if (v145 != 1)
  {
    goto LABEL_31;
  }

  result = [v44 keyPathForAppUsageDataDictionaries];
  if (!result)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v71 = result;
  v72 = sub_2663E52E4(result, a1, 0x4449656C646E7562, 0xE800000000000000);
  v74 = v73;

  if (!v74)
  {
    goto LABEL_31;
  }

  v75 = HIBYTE(v74) & 0xF;
  if ((v74 & 0x2000000000000000) == 0)
  {
    v75 = v72 & 0xFFFFFFFFFFFFLL;
  }

  if (!v75)
  {

LABEL_31:
    v151 = v67;
    v74 = v69;
    goto LABEL_32;
  }

  v151 = v72;
  v76 = v127;
  v146(v127, v148, v62);

  v77 = sub_2664DFE18();
  v78 = sub_2664E06C8();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v126 = v38;
    LODWORD(v148) = v78;
    v80 = v79;
    v81 = swift_slowAlloc();
    v154[1] = v69;
    v155 = v81;
    *v80 = 136315394;
    v154[0] = v67;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v82 = sub_2664E0318();
    v84 = a1;
    v85 = sub_2662A320C(v82, v83, &v155);

    *(v80 + 4) = v85;
    a1 = v84;
    *(v80 + 12) = 2080;
    *(v80 + 14) = sub_2662A320C(v151, v74, &v155);
    _os_log_impl(&dword_26629C000, v77, v148, "ClientContextSignal#clientContextSignal overriding foreground bundle: %s with carplay foreground bundle: %s", v80, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v81, -1, -1);
    v38 = v126;
    MEMORY[0x266784AD0](v80, -1, -1);

    v149(v76, v144);
  }

  else
  {

    v149(v76, v62);
  }

  v70 = v145;
LABEL_32:
  sub_2664DE428();
  sub_2664DE388();
  v87 = v86;
  result = [v44 keyPathForWorkoutStatus];
  if (!result)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v88 = result;
  v89 = sub_2663E48B0(result, a1, 0, 0);

  result = [v44 keyPathForDeviceLockStatus];
  v90 = v142;
  if (!result)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v91 = result;
  v92 = sub_2663E48B0(result, a1, 0, 0);

  result = [v44 keyPathForCarConnectedStatus];
  if (!result)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v93 = result;
  v150 = sub_2663E48B0(result, a1, 0, 0);

  result = [v44 keyPathForNavigationStatus];
  if (!result)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v94 = result;
  v149 = sub_2663E48B0(result, a1, 0, 0);

  result = [v44 keyPathForSunriseSunsetDataDictionary];
  if (!result)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v95 = result;
  v147 = v92;
  v148 = v89;
  v146 = sub_2663E48B0(result, a1, 0x67696C7961447369, 0xEA00000000007468);

  result = [v44 keyPathForMotionState];
  if (!result)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v96 = result;
  v143 = v70 == 1;
  if (v90)
  {
    v97 = 0xE300000000000000;
  }

  else
  {
    v97 = 0xE500000000000000;
  }

  v98 = 6578544;
  if (!v90)
  {
    v98 = 0x656E6F6870;
  }

  v144 = v98;
  v145 = v97;
  v142 = sub_2663E48B0(result, a1, 0, 0);

  v99 = 0x6E776F6E6B6E75;
  if (v38)
  {
    v99 = v129;
  }

  v129 = v99;
  v100 = 0xE700000000000000;
  if (v38)
  {
    v100 = v38;
  }

  v127 = v100;

  v126 = v74;
  v101 = v132;
  sub_2664DE568();
  v102 = v134;
  v103 = *(v134 + 104);
  v104 = v131;
  v105 = v137;
  v103(v131, *MEMORY[0x277CC9980], v137);
  v125 = sub_2664DE588();
  v106 = *(v102 + 8);
  v102 += 8;
  v106(v104, v105);
  v135 = *(v135 + 8);
  v107 = v138;
  (v135)(v101, v138);
  sub_2664DE568();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073208, &unk_2664E9A70);
  v108 = *(v102 + 64);
  v109 = (*(v102 + 72) + 32) & ~*(v102 + 72);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_2664E36F0;
  v103((v110 + v109), *MEMORY[0x277CC99B8], v105);
  sub_2662C43B4(v110);
  swift_setDeallocating();
  v106((v110 + v109), v105);
  swift_deallocClassInstance();
  v111 = v139;
  v112 = v152;
  sub_2664DE538();

  (v135)(v101, v107);
  v113 = sub_2664DE168();
  LOBYTE(v102) = v114;
  (*(v140 + 8))(v111, v141);
  (*(v133 + 8))(v112, v136);
  if (v102)
  {
    v115 = 0;
  }

  else
  {
    v115 = v113;
  }

  type metadata accessor for ClientContextSignal();
  v116 = swift_allocObject();
  v116[2] = v87;
  v117 = v147;
  v116[3] = v148;
  v116[4] = v117;
  v119 = v149;
  v118 = v150;
  v116[5] = v143;
  v116[6] = v118;
  v120 = v146;
  v116[7] = v119;
  v116[8] = v120;
  v121 = v128;
  v116[9] = v142;
  v116[10] = v121;
  v122 = v129;
  v116[11] = v130;
  v116[12] = v122;
  v123 = v151;
  v116[13] = v127;
  v116[14] = v123;
  v116[15] = v126;

  v116[16] = v125;
  v116[17] = v115;
  v124 = v145;
  v116[18] = v144;
  v116[19] = v124;
  return v116;
}

uint64_t sub_2663E722C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[3] = a5;
  v12[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  if (a2)
  {
    sub_26636B8D0();
  }

  a3(v12);
  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_2663E72D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v38 = a3;
  v39 = a2;
  v10 = sub_2664DFE38();
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2664DE438();
  v40 = *(v42 - 8);
  v14 = *(v40 + 64);
  v15 = MEMORY[0x28223BE20](v42);
  v16 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - v17;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;

  v41 = v18;
  sub_2664DE428();
  if (a1)
  {
    v20 = qword_280F90720;
    swift_unknownObjectRetain();
    if (v20 != -1)
    {
      swift_once();
    }

    sub_2662C1744(0, &qword_280F8F5A0, 0x277CFE358);
    v21 = sub_2664E0488();
    v22 = v40;
    v23 = v41;
    v24 = v42;
    (*(v40 + 16))(v16, v41, v42);
    v25 = (*(v22 + 80) + 40) & ~*(v22 + 80);
    v26 = swift_allocObject();
    *(v26 + 2) = sub_2663E77B0;
    *(v26 + 3) = v19;
    *(v26 + 4) = v38;
    (*(v22 + 32))(&v26[v25], v16, v24);
    v45 = sub_2663E7814;
    v46 = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2663E4068;
    v44 = &block_descriptor_30;
    v27 = _Block_copy(aBlock);

    [a1 valuesForKeyPaths:v21 responseQueue:v39 withCompletion:v27];
    _Block_release(v27);
    swift_unknownObjectRelease();

    (*(v22 + 8))(v23, v24);
  }

  else
  {
    v28 = v37;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v28 + 16))(v13, v29, v10);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06D8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26629C000, v30, v31, "ClientContextSignal#signal nil user context", v32, 2u);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    (*(v28 + 8))(v13, v10);
    v33 = v41;
    v34 = sub_2663E61E8(0, v41);
    v44 = type metadata accessor for ClientContextSignal();
    v45 = &off_2877EEE58;
    aBlock[0] = v34;

    if (a4)
    {
      sub_26636B8D0();
    }

    a5(aBlock);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    (*(v40 + 8))(v33, v42);
  }
}

uint64_t sub_2663E77B0(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);

  return sub_2663E722C(v7, v2, v3, v4, v5, v6);
}

uint64_t sub_2663E7814(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_2663E3E68(a1, v4, v5, v6, v7);
}

unint64_t sub_2663E788C()
{
  result = qword_280F8F598;
  if (!qword_280F8F598)
  {
    sub_2662C1744(255, &qword_280F8F5A0, 0x277CFE358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F598);
  }

  return result;
}

uint64_t CompanionDeviceProvider.__allocating_init(multiUserConnectionProvider:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v11 = *(a1 + 24);
  v3 = v11;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v5 = *(v11 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  *(v2 + 40) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 16));
  (*(v5 + 32))(boxed_opaque_existential_1, v8, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t CompanionDeviceError.hashValue.getter()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1);
  return sub_2664E0EB8();
}

uint64_t *CompanionDeviceProvider.init(multiUserConnectionProvider:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_2663E8770(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

uint64_t sub_2663E7B90(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  v3 = sub_2664DFE08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v10 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v4 + 16))(v7, v9, v3);
  v11 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v12 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = "recognizedUserCompanion";
  *(v13 + 24) = 23;
  *(v13 + 32) = 2;
  (*(v4 + 32))(v13 + v11, v7, v3);
  v14 = (v13 + v12);
  v15 = v18;
  *v14 = v17;
  v14[1] = v15;

  sub_2664E0848();
  sub_2664DFDC8();

  sub_2663E8908(v19, v20, sub_2663899A8, v13);

  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_2663E7DEC(uint64_t (*a1)(void), uint64_t a2, void *a3, void *a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = a3[3];
  v17 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v16);
  LOBYTE(v42[0]) = 1;
  v18 = (*(v17 + 32))(v42, v16, v17);
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v41 = a1;
    v22 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v13, v22, v8);

    v23 = sub_2664DFE18();
    v24 = sub_2664E06E8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v40 = a2;
      v26 = v25;
      v27 = swift_slowAlloc();
      v44 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_2662A320C(v20, v21, &v44);
      _os_log_impl(&dword_26629C000, v23, v24, "CompanionDeviceProvider#supports sharedUserID %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x266784AD0](v27, -1, -1);
      v28 = v26;
      a2 = v40;
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    v29 = a4[5];
    v30 = a4[6];
    __swift_project_boxed_opaque_existential_1(a4 + 2, v29);
    v31 = swift_allocObject();
    *(v31 + 16) = v41;
    *(v31 + 24) = a2;
    v32 = *(v30 + 40);

    v32(v20, v21, sub_2663E8E7C, v31, v29, v30);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v15, v34, v8);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06D8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = a1;
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26629C000, v35, v36, "User is not recognized or confidence is not high enough to get companion information", v38, 2u);
      v39 = v38;
      a1 = v37;
      MEMORY[0x266784AD0](v39, -1, -1);
    }

    (*(v9 + 8))(v15, v8);
    memset(v42, 0, sizeof(v42));
    v43 = 256;
    return a1(v42);
  }
}

void sub_2663E8230(void *a1, void (*a2)(void), uint64_t a3)
{
  v45 = a3;
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v42 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v44 = &v41 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  v15 = v6[2];
  v46 = v5;
  v43 = v15;
  v15(v13, v14, v5);
  v16 = a1;
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v41 = a2;
    v20 = v19;
    v21 = v6;
    v22 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v16;
    *v22 = a1;
    v23 = v16;
    _os_log_impl(&dword_26629C000, v17, v18, "CompanionDeviceProvider#supports sharedUserInfo %@", v20, 0xCu);
    sub_2662E4324(v22);
    v24 = v22;
    v6 = v21;
    MEMORY[0x266784AD0](v24, -1, -1);
    v25 = v20;
    a2 = v41;
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  v26 = v6[1];
  v27 = v46;
  v26(v13, v46);
  if (a1)
  {
    v28 = v16;
    sub_2664DD460(v28, &v47);
    if (v48 == 1)
    {
      v29 = v42;
      v30 = v46;
      v43(v42, v14, v46);
      v31 = sub_2664DFE18();
      v32 = sub_2664E06D8();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = a2;
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_26629C000, v31, v32, "CompanionDeviceProvider#supports Failed to get companion device info for user", v34, 2u);
        v35 = v34;
        a2 = v33;
        MEMORY[0x266784AD0](v35, -1, -1);
      }

      v26(v29, v30);
      v47 = 1;
      v48 = 0;
      v49 = 0uLL;
      v50 = 256;
      a2(&v47);
    }

    else
    {
      v50 = v50;
      a2(&v47);

      sub_2663E8E84(v47, v48, v49, *(&v49 + 1), v50, SHIBYTE(v50));
    }
  }

  else
  {
    v43(v44, v14, v27);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06D8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = a2;
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_26629C000, v36, v37, "CompanionDeviceProvider#supports Failed to retrieve sharedUserInfo", v39, 2u);
      v40 = v39;
      a2 = v38;
      MEMORY[0x266784AD0](v40, -1, -1);
    }

    v26(v44, v27);
    v47 = 1;
    v48 = 0;
    v49 = 0uLL;
    v50 = 256;
    a2(&v47);
  }
}

uint64_t CompanionDeviceProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2663E8708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v7 = a1;
  v8 = v4;
  return sub_266388150("recognizedUserCompanion", 23, 2, a2, a3, " enableTelemetry=YES ", 21, 2, sub_2663E8E74, v6);
}

uint64_t *sub_2663E8770(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  return a2;
}

uint64_t sub_2663E87E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_OWORD *))
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 33);
  v9 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v9;
  v12 = v7;
  v13 = v8;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(v11);
}

uint64_t sub_2663E88BC(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 33);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v7 = v2;
  v8 = v3;
  return a2(v6);
}

uint64_t sub_2663E8908(void *a1, void *a2, void (*a3)(_OWORD *), uint64_t a4)
{
  v40 = a2;
  v42 = sub_2664DFE38();
  v7 = *(v42 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v42);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  v41 = v14;
  v16 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  LOBYTE(v43[0]) = 1;
  v17 = *(v15 + 32);

  v18 = v17(v43, v16, v15);
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v22 = v42;
    v23 = __swift_project_value_buffer(v42, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v13, v23, v22);

    v24 = sub_2664DFE18();
    v25 = sub_2664E06E8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v45 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_2662A320C(v20, v21, &v45);
      _os_log_impl(&dword_26629C000, v24, v25, "CompanionDeviceProvider#supports sharedUserID %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x266784AD0](v27, -1, -1);
      MEMORY[0x266784AD0](v26, -1, -1);
    }

    (*(v7 + 8))(v13, v22);
    v28 = v40[5];
    v29 = v40[6];
    __swift_project_boxed_opaque_existential_1(v40 + 2, v28);
    v30 = swift_allocObject();
    v31 = v41;
    *(v30 + 16) = sub_2663E8EC8;
    *(v30 + 24) = v31;
    v32 = *(v29 + 40);

    v32(v20, v21, sub_2663E8F14, v30, v28, v29);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = v42;
    v34 = __swift_project_value_buffer(v42, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v11, v34, v33);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06D8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26629C000, v35, v36, "User is not recognized or confidence is not high enough to get companion information", v37, 2u);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    (*(v7 + 8))(v11, v42);
    memset(v43, 0, sizeof(v43));
    v44 = 256;
    a3(v43);
  }
}

unint64_t sub_2663E8D88()
{
  result = qword_280073500[0];
  if (!qword_280073500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280073500);
  }

  return result;
}

uint64_t sub_2663E8E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2663E8EC8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = v4;
  v10 = v5;
  return v2(v8);
}

void sub_2663E8F30(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v5 = sub_2664DFE38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v9, v10, v5);

  v11 = sub_2664DFE18();
  v12 = sub_2664E06B8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2662A320C(*(a1 + 56), *(a1 + 64), v20);
    _os_log_impl(&dword_26629C000, v11, v12, "WholeLibraryHandler: building device playlist query for identifier: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x266784AD0](v14, -1, -1);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v15 = [objc_opt_self() songsQuery];
  v16 = [v15 filterPredicates];

  if (v16)
  {
    sub_2663E9D9C();
    sub_26637F50C();
    v17 = sub_2664E0608();

    v18 = sub_2663E967C(v17);

    v20[1] = 0;
    v20[2] = 0;
    v20[0] = v18;
    v21 = xmmword_2664EB350;
    v22 = 0;
    v23 = 0;
    a3(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2663E91F8()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06B8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "WholeLibraryHandler: overriding shuffle for whole library", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 1;
}

uint64_t sub_2663E93A0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = swift_allocObject();
  v9 = a1[3];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = a2[3];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = a4[3];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a4, v21);
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = (&v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = sub_2663E972C(*v13, v19, a3, v25, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v27;
}

uint64_t sub_2663E9608()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);

  return swift_deallocClassInstance();
}

void *sub_2663E967C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_2664E0A68();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_26640C934(v2, 0);

    v1 = sub_26640CDF8(&v5, v3 + 4, v2, v1);
    sub_2662B793C();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_2663E972C(uint64_t a1, _OWORD *a2, uint64_t *a3, _OWORD *a4, uint64_t a5)
{
  v68 = a3;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v94[3] = v10;
  v94[4] = &off_2877F3740;
  v94[0] = a1;
  v93[3] = &type metadata for PlaybackStarter;
  v93[4] = &off_2877EE098;
  v11 = swift_allocObject();
  v93[0] = v11;
  v12 = a2[3];
  v11[3] = a2[2];
  v11[4] = v12;
  v11[5] = a2[4];
  v13 = a2[1];
  v11[1] = *a2;
  v11[2] = v13;
  v92[3] = &type metadata for PlaybackQueueLocationProvider;
  v92[4] = &off_2877E8100;
  v14 = swift_allocObject();
  v92[0] = v14;
  v15 = a4[3];
  v14[3] = a4[2];
  v14[4] = v15;
  v14[5] = a4[4];
  v16 = a4[1];
  v14[1] = *a4;
  v14[2] = v16;
  sub_2662A5550(v94, v90);
  sub_2662A5550(v93, v88);
  sub_2662A5550(a3, v87);
  sub_2662A5550(v92, v85);
  v17 = v91;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v90, v91);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = v89;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v88, v89);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = v86;
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v85, v86);
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = (&v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *v21;
  v84[3] = v10;
  v84[4] = &off_2877F3740;
  v84[0] = v35;
  v82 = &type metadata for PlaybackStarter;
  v83 = &off_2877EE098;
  v36 = swift_allocObject();
  v81[0] = v36;
  v37 = v27[3];
  v36[3] = v27[2];
  v36[4] = v37;
  v36[5] = v27[4];
  v38 = v27[1];
  v36[1] = *v27;
  v36[2] = v38;
  v79 = &type metadata for PlaybackQueueLocationProvider;
  v80 = &off_2877E8100;
  v39 = swift_allocObject();
  v78[0] = v39;
  v40 = v33[3];
  v39[3] = v33[2];
  v39[4] = v40;
  v39[5] = v33[4];
  v41 = v33[1];
  v39[1] = *v33;
  v39[2] = v41;
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v84, v10);
  v43 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v45 = (&v67 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45);
  v47 = v82;
  v48 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
  v49 = *(v47[-1].Description + 8);
  MEMORY[0x28223BE20](v48);
  v51 = (&v67 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51);
  v53 = v79;
  v54 = __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
  v55 = *(v53[-1].Description + 8);
  MEMORY[0x28223BE20](v54);
  v57 = (&v67 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v58 + 16))(v57);
  v59 = *v45;
  v76 = v10;
  v77 = &off_2877F3740;
  v74 = &off_2877EE098;
  *&v75 = v59;
  v73 = &type metadata for PlaybackStarter;
  v60 = swift_allocObject();
  *&v72 = v60;
  v61 = v51[3];
  v60[3] = v51[2];
  v60[4] = v61;
  v60[5] = v51[4];
  v62 = v51[1];
  v60[1] = *v51;
  v60[2] = v62;
  v70 = &type metadata for PlaybackQueueLocationProvider;
  v71 = &off_2877E8100;
  v63 = swift_allocObject();
  *&v69 = v63;
  v64 = v57[3];
  v63[3] = v57[2];
  v63[4] = v64;
  v63[5] = v57[4];
  v65 = v57[1];
  v63[1] = *v57;
  v63[2] = v65;
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  __swift_destroy_boxed_opaque_existential_1Tm(v92);
  __swift_destroy_boxed_opaque_existential_1Tm(v93);
  __swift_destroy_boxed_opaque_existential_1Tm(v94);
  sub_2662A8618(&v75, a5 + 16);
  sub_2662A8618(&v72, a5 + 56);
  sub_2662A8618(v87, a5 + 96);
  sub_2662A8618(&v69, a5 + 136);
  __swift_destroy_boxed_opaque_existential_1Tm(v78);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  __swift_destroy_boxed_opaque_existential_1Tm(v85);
  __swift_destroy_boxed_opaque_existential_1Tm(v88);
  __swift_destroy_boxed_opaque_existential_1Tm(v90);
  return a5;
}

unint64_t sub_2663E9D9C()
{
  result = qword_280072EE8;
  if (!qword_280072EE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280072EE8);
  }

  return result;
}

uint64_t Pair.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(TupleTypeMetadata2 + 48);

  return v9(v10, a2, a4);
}

uint64_t static Pair.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v33 - v17;
  v19 = *(v12 + 16);
  v34 = a1;
  v19(&v33 - v17, a1, TupleTypeMetadata2);
  v38 = *(TupleTypeMetadata2 + 48);
  v35 = a2;
  v33 = v19;
  v19(v16, a2, TupleTypeMetadata2);
  v20 = *(TupleTypeMetadata2 + 48);
  v21 = *(a5 + 8);
  LODWORD(v37) = sub_2664E0298();
  v22 = *(*(a4 - 8) + 8);
  v22(&v16[v20], a4);
  v23 = *(*(a3 - 8) + 8);
  v23(v16, a3);
  v24 = v38 + v18;
  v38 = v22;
  v22(v24, a4);
  v23(v18, a3);
  if (v37)
  {
    v25 = v33;
    v33(v18, v34, TupleTypeMetadata2);
    v37 = *(TupleTypeMetadata2 + 48);
    v25(v16, v35, TupleTypeMetadata2);
    v26 = *(TupleTypeMetadata2 + 48);
    v27 = v37;
    v28 = *(v36 + 8);
    v29 = sub_2664E0298();
    v30 = &v16[v26];
    v31 = v38;
    v38(v30, a4);
    v23(v16, a3);
    v31(&v18[v27], a4);
    v23(v18, a3);
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t Pair.hash(into:)(uint64_t a1, void *a2)
{
  v20 = a1;
  v4 = a2[2];
  v5 = a2[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v17 - v9;
  v18 = *(v7 + 16);
  v18(&v17 - v9, v2, TupleTypeMetadata2);
  v11 = *(TupleTypeMetadata2 + 48);
  v12 = a2[4];
  sub_2664E0268();
  v17 = *(*(v5 - 8) + 8);
  v17(&v10[v11], v5);
  v13 = *(*(v4 - 8) + 8);
  v13(v10, v4);
  v18(v10, v19, TupleTypeMetadata2);
  v14 = *(TupleTypeMetadata2 + 48);
  v15 = a2[5];
  sub_2664E0268();
  v17(&v10[v14], v5);
  return (v13)(v10, v4);
}

uint64_t Pair.hashValue.getter(void *a1)
{
  sub_2664E0E68();
  Pair.hash(into:)(v3, a1);
  return sub_2664E0EB8();
}

uint64_t sub_2663EA38C(uint64_t a1, void *a2)
{
  sub_2664E0E68();
  Pair.hash(into:)(v4, a2);
  return sub_2664E0EB8();
}

uint64_t sub_2663EA404(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = swift_getTupleTypeMetadata2();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2663EA47C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_2663EA658(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t static SiriAudioEnvironment.siriLocale.getter()
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4E8();
    sub_2664DF588();
  }

  else
  {
    sub_2664DEC08();
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    sub_2664DE928();
    return __swift_destroy_boxed_opaque_existential_1Tm(v1);
  }
}

uint64_t sub_2663EAB9C()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0068();
  sub_2664E0768();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD00000000000001FLL, 0x80000002664F7BC0, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280073598 = v10;
  return result;
}

uint64_t static SiriAudioEnvironment.directInvocationContext.getter()
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    v0 = sub_2664DF4B8();
  }

  else
  {
    sub_2664DEC08();
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v0 = sub_2664DE9D8();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  return v0;
}

uint64_t static SiriAudioEnvironment.userAssignedDeviceName.getter()
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    if (qword_280071C00 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    sub_2664E07D8();

    return v2[0];
  }

  else
  {
    sub_2664DEC08();
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    v1 = sub_2664DE8F8();
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    return v1;
  }
}

uint64_t sub_2663EAEB8@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280073590)
  {
    v1 = qword_280073588;
    v2 = qword_280073590;
LABEL_9:
    *a1 = v1;
    a1[1] = v2;
  }

  v3 = a1;
  result = MGGetStringAnswer();
  if (result)
  {
    v5 = result;
    v1 = sub_2664E02C8();
    v2 = v6;

    if (!qword_2800735A0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800735B0, &qword_2664EB478);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_2664E36F0;
      *(v7 + 32) = @"UserAssignedDeviceName";
      v8 = @"UserAssignedDeviceName";
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800737F0, &unk_2664E5320);
      v9 = sub_2664E0488();

      if (qword_280071C00 != -1)
      {
        swift_once();
      }

      v12[4] = sub_2663EB588;
      v12[5] = 0;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 1107296256;
      v12[2] = sub_2663EB0C0;
      v12[3] = &block_descriptor_31;
      v10 = _Block_copy(v12);

      v11 = MGRegisterForUpdates();
      _Block_release(v10);

      qword_2800735A0 = v11;
    }

    qword_280073588 = v1;
    qword_280073590 = v2;

    a1 = v3;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_2663EB0C0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t static SiriAudioEnvironment.responseMode.getter@<X0>(uint64_t a1@<X8>)
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4D8();

    sub_2664DFA98();

    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = sub_2664DF578();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1, v2, 1, v3);
}

uint64_t static SiriAudioEnvironment.isDialogDriven.getter()
{
  v0 = sub_2664DF5C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  v8 = sub_2664DF578();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v21 - v14;
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4D8();
    sub_2664DFA98();

    sub_2664DF568();
    v16 = sub_2664DF558();
    v17 = *(v9 + 8);
    v17(v13, v8);
    v17(v15, v8);
    if (v16)
    {

      v18 = 1;
    }

    else
    {
      sub_2664DF4D8();
      sub_2664DFA98();

      sub_2664DF548();
      v18 = sub_2664DF558();

      v17(v13, v8);
      v17(v15, v8);
    }
  }

  else
  {
    sub_2664DEC08();
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    sub_2664DE958();
    (*(v1 + 104))(v5, *MEMORY[0x277D61D90], v0);
    sub_2663EB77C(&qword_2800735A8, MEMORY[0x277D61DA0]);
    sub_2664E0468();
    sub_2664E0468();
    if (v21[3] == v21[1] && v21[4] == v21[2])
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_2664E0D88();
    }

    v19 = *(v1 + 8);
    v19(v5, v0);
    v19(v7, v0);

    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  return v18 & 1;
}

uint64_t sub_2663EB588()
{
  qword_280073588 = 0;
  qword_280073590 = 0;
}

uint64_t _s16SiriAudioSupport0aB11EnvironmentV12isCarDNDModeSbvgZ_0()
{
  v0 = sub_2664DF608();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-1] - v6;
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4E8();
    sub_2664DF598();

    sub_2664DF5F8();
    sub_2663EB77C(&qword_2800735B8, MEMORY[0x277D61DC0]);
    v8 = sub_2664E09F8();

    v9 = *(v1 + 8);
    v9(v5, v0);
    v9(v7, v0);
  }

  else
  {
    sub_2664DEC08();
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    v8 = sub_2664DE938();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  return v8 & 1;
}

uint64_t sub_2663EB77C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static RecordableResult.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_2800735C0 = a1;
  return result;
}

uint64_t RecordableResult.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_name);
  v2 = *(v0 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_name + 8);

  return v1;
}

uint64_t sub_2663EB990(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_info;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_2663EB9F8()
{
  v1 = OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_info;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_2663EBA40(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_info;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id RecordableResult.__allocating_init(name:version:timeElapsed:rows:info:signalTiming:test:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_name];
  *v18 = a1;
  v18[1] = a2;
  *&v17[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_version] = a3;
  *&v17[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_timeElapsed] = a8;
  *&v17[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_rows] = a4;
  *&v17[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_info] = a5;
  *&v17[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_signalTiming] = a6;
  v17[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_test] = a7;
  v20.receiver = v17;
  v20.super_class = v8;
  return objc_msgSendSuper2(&v20, sel_init);
}

id RecordableResult.init(name:version:timeElapsed:rows:info:signalTiming:test:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, double a8)
{
  v9 = &v8[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_name];
  *v9 = a1;
  v9[1] = a2;
  *&v8[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_version] = a3;
  *&v8[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_timeElapsed] = a8;
  *&v8[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_rows] = a4;
  *&v8[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_info] = a5;
  *&v8[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_signalTiming] = a6;
  v8[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_test] = a7;
  v11.receiver = v8;
  v11.super_class = type metadata accessor for RecordableResult();
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_2663EBC80()
{
  v46 = sub_266386244(MEMORY[0x277D84F90]);
  sub_266448F64([objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_], 0x6C6C694D656D6974, 0xEF6C61746F547369);
  v1 = *(v0 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_signalTiming);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_signalTiming) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v45 = *(v0 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_signalTiming);

  v9 = 0;
  if (v7)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v12 >= v8)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2664EB480;
      *(inited + 32) = 1701667182;
      *(inited + 40) = 0xE400000000000000;
      v33 = *(v0 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_name + 8);
      v34 = MEMORY[0x277D837D0];
      *(inited + 48) = *(v0 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_name);
      *(inited + 56) = v33;
      *(inited + 72) = v34;
      *(inited + 80) = 0x6E6F6973726576;
      *(inited + 88) = 0xE700000000000000;
      v35 = MEMORY[0x277D83B88];
      *(inited + 96) = *(v0 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_version);
      *(inited + 120) = v35;
      *(inited + 128) = 0x6C6C694D656D6974;
      *(inited + 136) = 0xEA00000000007369;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073608, &qword_2664EB498);
      *(inited + 144) = v46;
      *(inited + 168) = v36;
      *(inited + 176) = 1937207154;
      *(inited + 184) = 0xE400000000000000;
      v37 = *(v0 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_rows);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734C0, qword_2664EB4A0);
      *(inited + 192) = v37;
      *(inited + 216) = v38;
      *(inited + 224) = 1868983913;
      *(inited + 232) = 0xE400000000000000;
      v39 = OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_info;
      swift_beginAccess();
      v40 = *(v0 + v39);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
      *(inited + 240) = v40;
      *(inited + 264) = v41;
      *(inited + 272) = 0x747365547369;
      *(inited + 280) = 0xE600000000000000;
      v42 = *(v0 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_test);
      *(inited + 312) = MEMORY[0x277D839B0];
      *(inited + 288) = v42;

      v43 = sub_2663854AC(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
      swift_arrayDestroy();

      return v43;
    }

    v7 = *(v3 + 8 * v12);
    ++v9;
  }

  while (!v7);
  while (1)
  {
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = (*(v45 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(v45 + 56) + 8 * v13);

    v18 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_2662A3E98(v16, v15);
    v22 = v46[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      break;
    }

    v26 = v21;
    if (v46[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = v20;
        sub_266454428();
        v20 = v31;
      }
    }

    else
    {
      sub_2664513B0(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_2662A3E98(v16, v15);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }
    }

    v7 &= v7 - 1;
    if (v26)
    {
      v10 = v46[7];
      v11 = *(v10 + 8 * v20);
      *(v10 + 8 * v20) = v18;

      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v46[(v20 >> 6) + 8] |= 1 << v20;
      v28 = (v46[6] + 16 * v20);
      *v28 = v16;
      v28[1] = v15;
      *(v46[7] + 8 * v20) = v18;
      v29 = v46[2];
      v24 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      v46[2] = v30;
      v9 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v12 = v9;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_2664E0DD8();
  __break(1u);
  return result;
}

void sub_2663EC104(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_name);
  v4 = *(v1 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_name + 8);
  v5 = sub_2664E02A8();
  v6 = sub_2664E02A8();
  [a1 encodeObject:v5 forKey:v6];

  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v8 = sub_2664E02A8();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_timeElapsed);
  v10 = sub_2664E02A8();
  [a1 encodeDouble:v10 forKey:v9];

  v11 = *(v1 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_rows);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
  v12 = sub_2664E0488();
  v13 = sub_2664E02A8();
  [a1 encodeObject:v12 forKey:v13];

  v14 = OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_info;
  swift_beginAccess();
  v15 = *(v1 + v14);

  v16 = sub_2664E01A8();

  v17 = sub_2664E02A8();
  [a1 encodeObject:v16 forKey:v17];

  v18 = *(v1 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_signalTiming);
  sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  v19 = sub_2664E01A8();
  v20 = sub_2664E02A8();
  [a1 encodeObject:v19 forKey:v20];

  v21 = *(v1 + OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_test);
  v22 = sub_2664E02A8();
  [a1 encodeBool:v21 forKey:v22];
}

id RecordableResult.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_2663EC638(a1);

  return v4;
}

id RecordableResult.init(coder:)(void *a1)
{
  v2 = sub_2663EC638(a1);

  return v2;
}

id RecordableResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecordableResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecordableResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2663EC638(void *a1)
{
  v2 = v1;
  v4 = sub_2662C1744(0, &qword_280072F00, 0x277CCACA8);
  result = sub_2664E08C8();
  if (!result)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = sub_2664E02C8();
  v9 = v8;

  v10 = &v2[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_name];
  *v10 = v7;
  v10[1] = v9;
  v11 = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
  v12 = sub_2664E08C8();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 integerValue];
  }

  else
  {
    v14 = -1;
  }

  *&v2[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_version] = v14;
  v15 = sub_2664E02A8();
  [a1 decodeDoubleForKey_];
  v17 = v16;

  *&v2[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_timeElapsed] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073610, qword_2664EB4F8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2664E34D0;
  v19 = sub_2662C1744(0, &qword_280073618, 0x277CBEAC0);
  *(v18 + 32) = v19;
  v20 = sub_2662C1744(0, &unk_280F8F570, 0x277CBEA60);
  *(v18 + 40) = v20;
  *(v18 + 48) = v4;
  *(v18 + 56) = v11;
  sub_2664E08D8();

  if (!v28)
  {
    goto LABEL_10;
  }

  sub_266318804(&v27, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734C0, qword_2664EB4A0);
  swift_dynamicCast();
  *&v2[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_rows] = v26;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2664E34D0;
  *(v21 + 32) = v19;
  *(v21 + 40) = v20;
  *(v21 + 48) = v4;
  *(v21 + 56) = v11;
  sub_2664E08D8();

  if (!v28)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_266318804(&v27, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D0, &qword_2664EB1E0);
  swift_dynamicCast();
  *&v2[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_info] = v26;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2664E34D0;
  *(v22 + 32) = v19;
  *(v22 + 40) = v20;
  *(v22 + 48) = v4;
  *(v22 + 56) = v11;
  sub_2664E08D8();

  if (v28)
  {
    sub_266318804(&v27, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073608, &qword_2664EB498);
    swift_dynamicCast();
    *&v2[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_signalTiming] = v26;
    v23 = sub_2664E02A8();
    v24 = [a1 decodeBoolForKey_];

    v2[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_test] = v24;
    v25.receiver = v2;
    v25.super_class = type metadata accessor for RecordableResult();
    return objc_msgSendSuper2(&v25, sel_init);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2663ECB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2664DFBE8();
  v5 = *(*(v4 - 8) + 104);
  if ((a1 - 1) > 0x13)
  {
    v6 = MEMORY[0x277D55508];
  }

  else
  {
    v6 = qword_279BCC358[a1 - 1];
  }

  v7 = *v6;

  return v5(a2, v7, v4);
}

uint64_t sub_2663ECBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v3 = MEMORY[0x277D5ED90];
      goto LABEL_19;
    case 2:
      v3 = MEMORY[0x277D5ED98];
      goto LABEL_19;
    case 3:
      v3 = MEMORY[0x277D5EDC0];
      goto LABEL_19;
    case 4:
      v3 = MEMORY[0x277D5EDA0];
      goto LABEL_19;
    case 5:
      v3 = MEMORY[0x277D5EE18];
      goto LABEL_19;
    case 6:
    case 8:
      v3 = MEMORY[0x277D5EE08];
      goto LABEL_19;
    case 7:
    case 13:
      v3 = MEMORY[0x277D5EDF0];
      goto LABEL_19;
    case 9:
    case 17:
      v3 = MEMORY[0x277D5EE10];
      goto LABEL_19;
    case 10:
      v3 = MEMORY[0x277D5ED28];
      goto LABEL_19;
    case 11:
      v3 = MEMORY[0x277D5EDA8];
      goto LABEL_19;
    case 12:
      v3 = MEMORY[0x277D5EDD8];
      goto LABEL_19;
    case 14:
      v3 = MEMORY[0x277D5ED38];
      goto LABEL_19;
    case 15:
      v3 = MEMORY[0x277D5ED58];
      goto LABEL_19;
    case 16:
    case 19:
      v3 = MEMORY[0x277D5ED48];
      goto LABEL_19;
    case 18:
      v3 = MEMORY[0x277D5EDB0];
      goto LABEL_19;
    case 20:
      v3 = MEMORY[0x277D5ED80];
LABEL_19:
      v9 = *v3;
      v10 = sub_2664DF248();
      v12 = *(v10 - 8);
      (*(v12 + 104))(a2, v9, v10);
      v5 = *(v12 + 56);
      v7 = a2;
      v8 = 0;
      v6 = v10;
      break;
    default:
      v4 = sub_2664DF248();
      v5 = *(*(v4 - 8) + 56);
      v6 = v4;
      v7 = a2;
      v8 = 1;
      break;
  }

  return v5(v7, v8, 1, v6);
}

uint64_t sub_2663ECDE0(uint64_t a1)
{
  v2 = sub_2664DFBE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D554A8])
  {
    return 4;
  }

  if (v7 == *MEMORY[0x277D554C8])
  {
    return 3;
  }

  if (v7 == *MEMORY[0x277D55510])
  {
    return 5;
  }

  if (v7 == *MEMORY[0x277D55500])
  {
    return 9;
  }

  if (v7 == *MEMORY[0x277D55498])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x277D554F8])
  {
    return 6;
  }

  if (v7 == *MEMORY[0x277D55448])
  {
    return 14;
  }

  if (v7 == *MEMORY[0x277D554B8])
  {
    return 18;
  }

  if (v7 == *MEMORY[0x277D55488])
  {
    return 20;
  }

  if (v7 == *MEMORY[0x277D554E0])
  {
    return 12;
  }

  if (v7 == *MEMORY[0x277D554A0])
  {
    return 2;
  }

  if (v7 == *MEMORY[0x277D55458])
  {
    return 16;
  }

  if (v7 == *MEMORY[0x277D554E8])
  {
    return 7;
  }

  if (v7 == *MEMORY[0x277D55468])
  {
    return 15;
  }

  if (v7 == *MEMORY[0x277D554B0])
  {
    return 11;
  }

  if (v7 == *MEMORY[0x277D55520])
  {
    return 10;
  }

  if (v7 != *MEMORY[0x277D55508])
  {
    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_2663ED10C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_2663ED154(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2663ED1E4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_2664DFE18();
  v11 = sub_2664E06E8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2662A320C(a1, a2, &v20);
    _os_log_impl(&dword_26629C000, v10, v11, "BiomeDonator#donateSharedUserId %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266784AD0](v13, -1, -1);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v15 = [v14 RecognizedUser];
  swift_unknownObjectRelease();
  v16 = objc_allocWithZone(MEMORY[0x277CF1568]);
  v17 = sub_2664E02A8();
  v18 = [v16 initWithSharedUserId_];

  v19 = [v15 source];
  [v19 sendEvent_];
}

id sub_2663ED4D8(void *a1)
{
  [a1 clientDayOfWeek];
  v25 = sub_2664E0E38();
  [a1 rawClientHourOfDay];
  v24 = sub_2664E0E38();
  [a1 isMediaAlbumPresent];
  v23 = sub_2664E0558();
  [a1 isMediaArtistPresent];
  v22 = sub_2664E0558();
  [a1 isMediaGenrePresent];
  v21 = sub_2664E0558();
  [a1 isMediaMoodPresent];
  v20 = sub_2664E0558();
  [a1 isMediaNamePresent];
  v19 = sub_2664E0558();
  [a1 isMediaReleaseDatePresent];
  v18 = sub_2664E0558();
  [a1 nowPlayingLastBundleRecencyS];
  v17 = sub_2664E0E38();
  [a1 rawLanguage];
  v16 = sub_2664E0E48();
  [a1 rawLocale];
  v29 = sub_2664E0E48();
  [a1 rawRegion];
  v27 = sub_2664E0E48();
  [a1 isClientDaylight];
  v2 = sub_2664E0558();
  [a1 isClientNavigating];
  v3 = sub_2664E0558();
  [a1 isClientWorkout];
  v4 = sub_2664E0558();
  [a1 mediaType];
  v28 = sub_2664E0E38();
  [a1 nowPlayingState];
  v26 = sub_2664E0E38();
  [a1 isPireneRequest];
  v5 = sub_2664E0558();
  [a1 foregroundBundleRecencyS];
  v6 = sub_2664E05D8();
  [a1 mediaParsecCategory];
  v7 = sub_2664E0E38();
  [a1 sirikitResponseCode];
  v8 = sub_2664E0E38();
  [a1 appSelectionUses];
  v9 = sub_2664E0E38();
  [a1 modelVersion];
  v10 = sub_2664E0EE8();
  v11 = [a1 resolutionType];
  if (v11 > 9 || (v12 = v11, ((1 << v11) & 0x20C) == 0))
  {
    v12 = 0;
  }

  LODWORD(v14) = v12;
  v15 = [objc_allocWithZone(MEMORY[0x277CF14C0]) initWithClientDayOfWeek:v25 rawClientHourOfDay:v24 isMediaAlbumPresent:v23 isMediaArtistPresent:v22 isMediaGenrePresent:v21 isMediaMoodPresent:v20 isMediaNamePresent:v19 isMediaReleaseDatePresent:v18 nowPlayingLastBundleRecencyS:v17 rawLanguage:v16 rawLocale:v29 rawRegion:v27 isClientDaylight:v2 isClientNavigating:v3 isClientWorkout:v4 mediaType:v28 nowPlayingState:v26 isPireneRequest:v5 foregroundBundleRecencyS:v6 mediaParsecCategory:v7 sirikitResponseCode:v8 appSelectionUses:v9 modelVersion:v10 resolutionType:v14];

  return v15;
}

id sub_2663ED8C4(void *a1)
{
  [a1 isClientForegroundActiveBundle];
  v24 = sub_2664E0558();
  [a1 compoundActiveBundleScore];
  v22 = sub_2664E05D8();
  [a1 compoundMediaTypeBundleScore];
  v21 = sub_2664E05D8();
  [a1 entitySearchBundleRecencyS];
  v20 = sub_2664E05D8();
  [a1 entitySearchBundleScore];
  v19 = sub_2664E05D8();
  [a1 isForegroundBundle];
  v23 = sub_2664E0558();
  [a1 isNowPlayingBundle];
  v18 = sub_2664E0558();
  [a1 nowPlayingBundleCount];
  v17 = sub_2664E0E38();
  [a1 nowPlayingBundleRecencyS];
  v16 = sub_2664E05D8();
  [a1 nowPlayingBundleScore];
  v15 = sub_2664E05D8();
  [a1 isNowPlayingLastBundle];
  v54 = sub_2664E0558();
  [a1 nowPlayingUsage1Day];
  v53 = sub_2664E0E38();
  [a1 nowPlayingUsage7Days];
  v52 = sub_2664E0E38();
  [a1 nowPlayingUsage14Days];
  v51 = sub_2664E0E38();
  [a1 isRawLastNowPlayingCoreDuet];
  v50 = sub_2664E0558();
  [a1 isRawMediaCategoryAudiobookSignal];
  v49 = sub_2664E0558();
  [a1 isRawMediaCategoryMusicSignal];
  v48 = sub_2664E0558();
  [a1 isRawMediaCategoryPodcastSignal];
  v47 = sub_2664E0558();
  [a1 isRawMediaCategoryRadioSignal];
  v46 = sub_2664E0558();
  [a1 isRawMediaCategoryVideoSignal];
  v45 = sub_2664E0558();
  [a1 rawMediaTypeUsageSignalBook];
  v44 = sub_2664E0E38();
  [a1 rawMediaTypeUsageSignalMusic];
  v43 = sub_2664E0E38();
  [a1 rawMediaTypeUsageSignalPodcast];
  v42 = sub_2664E0E38();
  [a1 rawMediaTypeUsageSignalVideo];
  v41 = sub_2664E0E38();
  [a1 rawNowPlayingCountCoreDuet10Min];
  v40 = sub_2664E0E38();
  [a1 rawNowPlayingCountCoreDuet1Day];
  v39 = sub_2664E0E38();
  [a1 rawNowPlayingCountCoreDuet1Hr];
  v38 = sub_2664E0E38();
  [a1 rawNowPlayingCountCoreDuet28Day];
  v37 = sub_2664E0E38();
  [a1 rawNowPlayingCountCoreDuet2Min];
  v36 = sub_2664E0E38();
  [a1 rawNowPlayingCountCoreDuet6Hr];
  v35 = sub_2664E0E38();
  [a1 rawNowPlayingCountCoreDuet7Day];
  v34 = sub_2664E0E38();
  [a1 rawNowPlayingRecencyCD];
  v33 = sub_2664E0E38();
  [a1 rawEntitySearchRecency];
  v32 = sub_2664E0E38();
  [a1 usageScoreBooks];
  v31 = sub_2664E05D8();
  [a1 usageScoreMusic];
  v30 = sub_2664E05D8();
  [a1 usageScorePodcasts];
  v29 = sub_2664E05D8();
  [a1 isAppFirstParty];
  v28 = sub_2664E0558();
  [a1 isRequestedApp];
  v27 = sub_2664E0558();
  [a1 isNowPlayingBundlePSE1];
  v26 = sub_2664E0558();
  [a1 isNowPlayingBundlePSE2];
  v25 = sub_2664E0558();
  [a1 vq21Score];
  v5 = sub_2664E05D8();
  [a1 isSupportedFlag];
  v6 = sub_2664E0558();
  [a1 isUnicornFlag];
  v7 = sub_2664E0558();
  [a1 isSupportedUnicornMatchFlag];
  v8 = sub_2664E0558();
  [a1 isDisambiguationSelectedApp];
  v9 = sub_2664E0558();
  v2 = [a1 isModelPredictedApp];
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [a1 usageScoreRadio];
  v11 = sub_2664E05D8();
  [a1 usageScoreMusicWithoutRadio];
  v12 = sub_2664E05D8();
  [a1 rawMediaTypeUsageSignalRadio];
  v13 = sub_2664E0E38();
  [a1 rawMediaTypeUsageSignalMusicWithoutRadio];
  v14 = sub_2664E0E38();
  v4 = [objc_allocWithZone(MEMORY[0x277CF14B8]) initWithIsClientForegroundActiveBundle:v24 compoundActiveBundleScore:v22 compoundMediaTypeBundleScore:v21 entitySearchBundleRecencyS:v20 entitySearchBundleScore:v19 isForegroundBundle:v23 isNowPlayingBundle:v18 nowPlayingBundleCount:v17 nowPlayingBundleRecencyS:v16 nowPlayingBundleScore:v15 isNowPlayingLastBundle:v54 nowPlayingUsage1Day:v53 nowPlayingUsage7Days:v52 nowPlayingUsage14Days:v51 isRawLastNowPlayingCoreDuet:v50 isRawMediaCategoryAudiobookSignal:v49 isRawMediaCategoryMusicSignal:v48 isRawMediaCategoryPodcastSignal:v47 isRawMediaCategoryRadioSignal:v46 isRawMediaCategoryVideoSignal:v45 rawMediaTypeUsageSignalBook:v44 rawMediaTypeUsageSignalMusic:v43 rawMediaTypeUsageSignalPodcast:v42 rawMediaTypeUsageSignalVideo:v41 rawNowPlayingCountCoreDuet10Min:v40 rawNowPlayingCountCoreDuet1Day:v39 rawNowPlayingCountCoreDuet1Hr:v38 rawNowPlayingCountCoreDuet28Day:v37 rawNowPlayingCountCoreDuet2Min:v36 rawNowPlayingCountCoreDuet6Hr:v35 rawNowPlayingCountCoreDuet7Day:v34 rawNowPlayingRecencyCD:v33 rawEntitySearchRecency:v32 usageScoreBooks:v31 usageScoreMusic:v30 usageScorePodcasts:v29 isAppFirstParty:v28 isRequestedApp:v27 isNowPlayingBundlePSE1:v26 isNowPlayingBundlePSE2:v25 vq21Score:v5 isSupportedFlag:v6 isUnicornFlag:v7 isSupportedUnicornMatchFlag:v8 isDisambiguationSelectedApp:v9 isModelPredictedApp:v10 usageScoreRadio:v11 usageScoreMusicWithoutRadio:v12 rawMediaTypeUsageSignalRadio:v13 rawMediaTypeUsageSignalMusicWithoutRadio:v14];

  return v4;
}

unint64_t sub_2663EE0AC(unint64_t result)
{
  v1 = result;
  v7 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_2664E0A68();
  v2 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x266783B70](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      sub_2663ED8C4(v4);
      MEMORY[0x266783490]();
      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v6 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2664E04C8();
      }

      sub_2664E0518();
    }

    return v7;
  }

  return result;
}

uint64_t sub_2663EE1D8(void *a1, unint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  if (a1 && a2)
  {
    v12 = a1;
    v13 = sub_2663ED4D8(v12);
    sub_2663EE0AC(a2);
    v14 = objc_allocWithZone(MEMORY[0x277CF14B0]);
    sub_2663EE6DC();
    v15 = v13;
    v16 = sub_2664E0488();

    v17 = [v14 initWithIndepSignals:v15 depSignals:v16];

    v18 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v19 = [v18 AppSelection];
    swift_unknownObjectRelease();
    v20 = [v19 Music];
    swift_unknownObjectRelease();
    v21 = [v20 source];
    [v21 sendEvent_];

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v11, v22, v4);
    v23 = sub_2664DFE18();
    v24 = sub_2664E06C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_26629C000, v23, v24, "BiomeDonator#donateAppSelectionSignals: Sent event to Biome", v25, 2u);
      MEMORY[0x266784AD0](v25, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v9, v26, v4);
    v12 = sub_2664DFE18();
    v27 = sub_2664E06C8();
    if (os_log_type_enabled(v12, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26629C000, v12, v27, "BiomeDonator#donateAppSelectionSignals: Signals not available returning", v28, 2u);
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    v11 = v9;
  }

  return (*(v5 + 8))(v11, v4);
}

unint64_t sub_2663EE6DC()
{
  result = qword_280073620;
  if (!qword_280073620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280073620);
  }

  return result;
}

uint64_t TCCStatus.hashValue.getter()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1);
  return sub_2664E0EB8();
}

unint64_t sub_2663EE7B4()
{
  result = qword_280073628;
  if (!qword_280073628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073628);
  }

  return result;
}

uint64_t AccountStoreProviding.ownerDSID.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v5);
  v2 = v6;
  if (v6)
  {
    v3 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v2 = (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  else
  {
    sub_2662A9238(v5, &qword_2800729A0, qword_2664E5288);
  }

  return v2;
}

uint64_t AccountStoreProviding.amsDSID(forHomeUserIdentifier:completion:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a6;
  v42 = a5;
  v46 = a3;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v44 = v9;
  v45 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073C60, &unk_2664EE400);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v40 - v16;
  v18 = sub_2664DE4A8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v22 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v40 - v23;
  v41 = a1;
  sub_2664DE448();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v25 = v46;
    sub_2662A9238(v17, &qword_280073C60, &unk_2664EE400);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v26 = v44;
    v27 = __swift_project_value_buffer(v44, qword_280F914F0);
    swift_beginAccess();
    v28 = v45;
    (*(v45 + 16))(v13, v27, v26);

    v29 = sub_2664DFE18();
    v30 = sub_2664E06D8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v47 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_2662A320C(v41, a2, &v47);
      _os_log_impl(&dword_26629C000, v29, v30, "AccountProvider#identity Unable to convert homeID: %s to UUID", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x266784AD0](v32, -1, -1);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    (*(v28 + 8))(v13, v26);
    return v25(0);
  }

  else
  {
    v34 = *(v19 + 32);
    v34(v24, v17, v18);
    (*(v19 + 16))(v22, v24, v18);
    v35 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v36 = swift_allocObject();
    v34((v36 + v35), v22, v18);
    v37 = (v36 + ((v20 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v37 = v46;
    v37[1] = a4;
    v38 = v43;
    v39 = *(v43 + 8);

    v39(v24, sub_2663EF5FC, v36, v42, v38);

    return (*(v19 + 8))(v24, v18);
  }
}

uint64_t sub_2663EED60(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v82 = a4;
  v83 = a5;
  v79 = a3;
  v7 = sub_2664DE4A8();
  v80 = *(v7 - 8);
  v81 = v7;
  v8 = *(v80 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v78 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v78 - v15;
  v17 = sub_2664DFE38();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v78 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v78 - v26;
  if (a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v17, qword_280F914F0);
    swift_beginAccess();
    v29 = v18;
    (*(v18 + 16))(v22, v28, v17);
    v30 = v80;
    v31 = v81;
    (*(v80 + 16))(v11, v79, v81);
    v32 = a2;
    v33 = sub_2664DFE18();
    v34 = sub_2664E06D8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v84 = v79;
      *v35 = 136315394;
      sub_2663EF71C();
      LODWORD(v78) = v34;
      v36 = sub_2664E0D48();
      v37 = v31;
      v38 = v29;
      v40 = v39;
      (*(v30 + 8))(v11, v37);
      v41 = sub_2662A320C(v36, v40, &v84);

      *(v35 + 4) = v41;
      *(v35 + 12) = 2080;
      swift_getErrorValue();
      *&v85 = sub_2664E0DE8();
      *(&v85 + 1) = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v43 = sub_2664E0318();
      v45 = sub_2662A320C(v43, v44, &v84);

      *(v35 + 14) = v45;
      _os_log_impl(&dword_26629C000, v33, v78, "AccountStoreProviding#amsDSID homeID %s not found in database. Error: %s", v35, 0x16u);
      v46 = v79;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v46, -1, -1);
      MEMORY[0x266784AD0](v35, -1, -1);

      (*(v38 + 8))(v22, v17);
    }

    else
    {

      (*(v30 + 8))(v11, v31);
      (*(v29 + 8))(v22, v17);
    }

    return (v82)(0);
  }

  sub_2663EF6AC(a1, &v85);
  if (!v86)
  {
    sub_2662A9238(&v85, &qword_2800729A0, qword_2664E5288);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v52 = __swift_project_value_buffer(v17, qword_280F914F0);
    swift_beginAccess();
    v53 = v18;
    (*(v18 + 16))(v27, v52, v17);
    v54 = v80;
    v55 = v81;
    (*(v80 + 16))(v16, v79, v81);
    v56 = sub_2664DFE18();
    v57 = sub_2664E06D8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&v85 = v78;
      *v58 = 136315138;
      v59 = MEMORY[0x266781480]();
      v79 = v17;
      v61 = v60;
      (*(v54 + 8))(v16, v55);
      v62 = sub_2662A320C(v59, v61, &v85);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_26629C000, v56, v57, "AccountStoreProviding#amsDSID store Account is nil for homeIdentifier: %s", v58, 0xCu);
      v63 = v78;
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x266784AD0](v63, -1, -1);
      MEMORY[0x266784AD0](v58, -1, -1);

      (*(v53 + 8))(v27, v79);
    }

    else
    {

      (*(v54 + 8))(v16, v55);
      (*(v53 + 8))(v27, v17);
    }

    return (v82)(0);
  }

  sub_2662A8618(&v85, v87);
  v47 = v88;
  v48 = v89;
  __swift_project_boxed_opaque_existential_1(v87, v88);
  v49 = (*(v48 + 8))(v47, v48);
  if (v49)
  {
    v50 = v49;
    v82();
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v64 = v17;
    v65 = __swift_project_value_buffer(v17, qword_280F914F0);
    swift_beginAccess();
    v66 = v18;
    (*(v18 + 16))(v25, v65, v64);
    v67 = v80;
    v68 = v81;
    (*(v80 + 16))(v14, v79, v81);
    v69 = sub_2664DFE18();
    v70 = sub_2664E06D8();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v79 = v64;
      v72 = v71;
      v78 = swift_slowAlloc();
      v84 = v78;
      *v72 = 136315138;
      sub_2663EF71C();
      v73 = sub_2664E0D48();
      v75 = v74;
      (*(v67 + 8))(v14, v68);
      v76 = sub_2662A320C(v73, v75, &v84);

      *(v72 + 4) = v76;
      _os_log_impl(&dword_26629C000, v69, v70, "AccountStoreProviding#amsDSID no DSID for homeID: %s", v72, 0xCu);
      v77 = v78;
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x266784AD0](v77, -1, -1);
      MEMORY[0x266784AD0](v72, -1, -1);

      (*(v66 + 8))(v25, v79);
    }

    else
    {

      (*(v67 + 8))(v14, v68);
      (*(v66 + 8))(v25, v64);
    }

    (v82)(0);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v87);
}

uint64_t sub_2663EF5FC(uint64_t a1, void *a2)
{
  v5 = *(sub_2664DE4A8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_2663EED60(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_2663EF6AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729A0, qword_2664E5288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2663EF71C()
{
  result = qword_280073630;
  if (!qword_280073630)
  {
    sub_2664DE4A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073630);
  }

  return result;
}

void __swiftcall UserPreferenceLookupData.init(serviceBundleIdentifier:serviceName:fallbackUserSharedUserID:fallbackUsername:)(SiriAudioSupport::UserPreferenceLookupData *__return_ptr retstr, Swift::String_optional serviceBundleIdentifier, Swift::String_optional serviceName, Swift::String_optional fallbackUserSharedUserID, Swift::String_optional fallbackUsername)
{
  retstr->serviceBundleIdentifier = serviceBundleIdentifier;
  retstr->serviceName = serviceName;
  retstr->fallbackUserSharedUserID = fallbackUserSharedUserID;
  retstr->fallbackUsername = fallbackUsername;
}

uint64_t UserPreferenceLookupData.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[7];
  v16 = v0[6];

  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD000000000000034, 0x80000002664F7D00);
  if (v1)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0x3E6C696E3CLL;
  }

  if (!v1)
  {
    v1 = 0xE500000000000000;
  }

  MEMORY[0x2667833B0](v8, v1);

  MEMORY[0x2667833B0](0x636976726573202CLL, 0xEF203A656D614E65);
  if (v3)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0x3E6C696E3CLL;
  }

  if (v3)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x2667833B0](v9, v10);

  MEMORY[0x2667833B0](0xD00000000000001CLL, 0x80000002664F7D40);
  if (v5)
  {
    v11 = v6;
  }

  else
  {
    v11 = 0x3E6C696E3CLL;
  }

  if (v5)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x2667833B0](v11, v12);

  MEMORY[0x2667833B0](0xD000000000000014, 0x80000002664F7D60);
  if (v7)
  {
    v13 = v16;
  }

  else
  {
    v13 = 0x3E6C696E3CLL;
  }

  if (v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x2667833B0](v13, v14);

  MEMORY[0x2667833B0](2129184, 0xE300000000000000);
  return 0;
}

uint64_t UserPreferenceLookupData.serviceBundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UserPreferenceLookupData.serviceBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UserPreferenceLookupData.serviceName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t UserPreferenceLookupData.serviceName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t UserPreferenceLookupData.fallbackUserSharedUserID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t UserPreferenceLookupData.fallbackUserSharedUserID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t UserPreferenceLookupData.fallbackUsername.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t UserPreferenceLookupData.fallbackUsername.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_2663EFB9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_2663EFBF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id static Locks.named(_:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1 = sub_2664E02A8();
  [v0 setName_];

  return v0;
}

uint64_t sub_2663EFE80(void (*a1)(uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v27 = a4;
  v28 = a8;
  v30 = a2;
  v31 = a1;
  v29 = a10;
  v26 = a9;
  v14 = sub_2664DE438();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a6, v14);
  v18 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v27;
  *(v21 + 2) = a3;
  *(v21 + 3) = v22;
  *(v21 + 4) = a5;
  (*(v15 + 32))(&v21[v18], v17, v14);
  *&v21[v19] = a7;
  v23 = v28;
  *&v21[v20] = v28;

  v24 = v23;
  v31(v29, v21);
}

void sub_2663F0020(uint64_t a1, unint64_t a2, uint64_t a3, _BYTE *a4, int a5, NSObject *a6)
{
  v42 = a5;
  v43 = a4;
  v41 = a1;
  v9 = sub_2664DE438();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v40 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  (*(v17 + 16))(v20, v21, v16);
  (*(v10 + 16))(v15, a3, v9);

  v22 = v9;
  v23 = sub_2664DFE18();
  v24 = a2;
  v25 = sub_2664E06E8();

  if (os_log_type_enabled(v23, v25))
  {
    v26 = swift_slowAlloc();
    v38 = v22;
    v27 = v26;
    v28 = swift_slowAlloc();
    v39 = a6;
    v29 = v28;
    v44[0] = v28;
    *v27 = 136446466;
    *(v27 + 4) = sub_2662A320C(v41, v24, v44);
    *(v27 + 12) = 2050;
    v30 = v40;
    sub_2664DE428();
    sub_2664DE388();
    v32 = v31;
    v41 = v16;
    v33 = *(v10 + 8);
    v34 = v30;
    v35 = v38;
    v33(v34, v38);
    v33(v15, v35);
    *(v27 + 14) = v32;
    _os_log_impl(&dword_26629C000, v23, v25, "Completions#timeout completion: %{public}s received result in %{public}f seconds", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    v36 = v29;
    a6 = v39;
    MEMORY[0x266784AD0](v36, -1, -1);
    MEMORY[0x266784AD0](v27, -1, -1);

    (*(v17 + 8))(v20, v41);
  }

  else
  {

    (*(v10 + 8))(v15, v22);
    (*(v17 + 8))(v20, v16);
  }

  v37 = v43;
  swift_beginAccess();
  *v37 = v42 & 1;
  dispatch_group_leave(a6);
}

void sub_2663F03E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, NSObject *a6)
{
  v47 = a5;
  v48 = a6;
  v45 = a1;
  v9 = sub_2664DE438();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v44 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - v14;
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  (*(v17 + 16))(v20, v21, v16);
  (*(v10 + 16))(v15, a3, v9);

  v22 = sub_2664DFE18();
  v46 = v9;
  v23 = v22;
  v24 = v16;
  v25 = sub_2664E06E8();

  if (os_log_type_enabled(v23, v25))
  {
    v26 = a2;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v26;
    v30 = v28;
    v49[0] = v28;
    *v27 = 136446466;
    *(v27 + 4) = sub_2662A320C(v45, v29, v49);
    *(v27 + 12) = 2050;
    v45 = v24;
    v31 = v44;
    sub_2664DE428();
    sub_2664DE388();
    v33 = v32;
    v43 = v20;
    v34 = *(v10 + 8);
    v35 = v31;
    v36 = v46;
    v34(v35, v46);
    v34(v15, v36);
    *(v27 + 14) = v33;
    _os_log_impl(&dword_26629C000, v23, v25, "Completions#timeout completion: %{public}s received result in %{public}f seconds", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x266784AD0](v30, -1, -1);
    MEMORY[0x266784AD0](v27, -1, -1);

    (*(v17 + 8))(v43, v45);
  }

  else
  {

    (*(v10 + 8))(v15, v46);
    (*(v17 + 8))(v20, v24);
  }

  swift_beginAccess();
  v37 = *(a4 + 8);
  v38 = *(a4 + 16);
  v39 = *(a4 + 24);
  v40 = *(a4 + 32);
  v41 = v47;
  v42 = v47[1];
  *a4 = *v47;
  *(a4 + 16) = v42;
  *(a4 + 32) = *(v41 + 32);
  sub_2663F5560(v41, v49);
  sub_2663142F4(v37);
  dispatch_group_leave(v48);
}

void sub_2663F07B4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, NSObject *a8)
{
  v48 = a6;
  v49 = a7;
  v46 = a5;
  v47 = a4;
  v45 = a1;
  v11 = sub_2664DE438();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v44 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  v18 = sub_2664DFE38();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v18, qword_280F914F0);
  swift_beginAccess();
  (*(v19 + 16))(v22, v23, v18);
  (*(v12 + 16))(v17, a3, v11);

  v24 = v18;
  v25 = sub_2664DFE18();
  v26 = a2;
  v27 = v11;
  v28 = sub_2664E06E8();

  if (os_log_type_enabled(v25, v28))
  {
    v29 = swift_slowAlloc();
    v42 = v24;
    v30 = v29;
    v31 = swift_slowAlloc();
    v43 = a8;
    v32 = v31;
    v50[0] = v31;
    *v30 = 136446466;
    *(v30 + 4) = sub_2662A320C(v45, v26, v50);
    *(v30 + 12) = 2050;
    v33 = v44;
    sub_2664DE428();
    sub_2664DE388();
    v35 = v34;
    v45 = v22;
    v36 = *(v12 + 8);
    v36(v33, v27);
    v36(v17, v27);
    *(v30 + 14) = v35;
    _os_log_impl(&dword_26629C000, v25, v28, "Completions#timeout completion: %{public}s received result in %{public}f seconds", v30, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v37 = v32;
    a8 = v43;
    MEMORY[0x266784AD0](v37, -1, -1);
    MEMORY[0x266784AD0](v30, -1, -1);

    (*(v19 + 8))(v45, v42);
  }

  else
  {

    (*(v12 + 8))(v17, v27);
    (*(v19 + 8))(v22, v24);
  }

  v38 = v47;
  swift_beginAccess();
  v39 = v38[2];
  v41 = v48;
  v40 = v49;
  *v38 = v46;
  v38[1] = v41;
  v38[2] = v40;

  dispatch_group_leave(a8);
}

void sub_2663F0B88(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, NSObject *a6)
{
  v42 = a4;
  v43 = a6;
  v40 = a1;
  v9 = sub_2664DE438();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v39 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  (*(v17 + 16))(v20, v21, v16);
  (*(v10 + 16))(v15, a3, v9);

  v22 = sub_2664DFE18();
  v41 = v9;
  v23 = v22;
  v24 = sub_2664E06E8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = a2;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v38 = a5;
    v28 = v27;
    v44[0] = v27;
    *v26 = 136446466;
    *(v26 + 4) = sub_2662A320C(v40, v25, v44);
    *(v26 + 12) = 2050;
    v29 = v39;
    sub_2664DE428();
    sub_2664DE388();
    v31 = v30;
    v40 = v16;
    v32 = *(v10 + 8);
    v33 = v29;
    v34 = v41;
    v32(v33, v41);
    v32(v15, v34);
    *(v26 + 14) = v31;
    _os_log_impl(&dword_26629C000, v23, v24, "Completions#timeout completion: %{public}s received result in %{public}f seconds", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    v35 = v28;
    a5 = v38;
    MEMORY[0x266784AD0](v35, -1, -1);
    MEMORY[0x266784AD0](v26, -1, -1);

    (*(v17 + 8))(v20, v40);
  }

  else
  {

    (*(v10 + 8))(v15, v41);
    (*(v17 + 8))(v20, v16);
  }

  v36 = v42;
  swift_beginAccess();
  v37 = *v36;
  *v36 = a5;

  dispatch_group_leave(v43);
}

uint64_t sub_2663F0F4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, int a7, uint64_t (*a8)(uint64_t *), uint64_t a9, uint64_t a10)
{
  v71 = a8;
  v68 = a7;
  v62 = a6;
  v60 = a5;
  v63 = a4;
  v58 = a3;
  v72 = a9;
  v11 = sub_2664DE438();
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = *(v65 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v61 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v64 = &v57 - v15;
  v67 = sub_2664DFE38();
  v70 = *(v67 - 8);
  v16 = *(v70 + 64);
  MEMORY[0x28223BE20](v67);
  v69 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2664E0018();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_2664E00E8();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v57 - v29;
  sub_2664E00C8();
  v59 = a2;
  *v22 = a2;
  (*(v19 + 104))(v22, *MEMORY[0x277D85178], v18);
  MEMORY[0x266783140](v28, v22);
  (*(v19 + 8))(v22, v18);
  v31 = *(v24 + 8);
  v31(v28, v23);
  sub_2664E0738();
  v31(v30, v23);
  if (sub_2664E0028())
  {
    swift_beginAccess();
    LOBYTE(v74[0]) = *(a10 + 16);
    return v71(v74);
  }

  else
  {
    v57 = a10;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = v67;
    v34 = __swift_project_value_buffer(v67, qword_280F914F0);
    swift_beginAccess();
    v35 = v69;
    v36 = v70;
    (*(v70 + 16))(v69, v34, v33);
    v38 = v64;
    v37 = v65;
    v39 = v66;
    (*(v65 + 16))(v64, v62, v66);
    v40 = v63;

    v41 = sub_2664DFE18();
    v42 = sub_2664E06D8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v74[0] = v44;
      *v43 = 136446978;
      *(v43 + 4) = sub_2662A320C(v58, v40, v74);
      *(v43 + 12) = 2050;
      *(v43 + 14) = v59;
      *(v43 + 22) = 2080;
      v73 = v60 & 1;
      v45 = sub_2664E0318();
      v47 = sub_2662A320C(v45, v46, v74);

      *(v43 + 24) = v47;
      *(v43 + 32) = 2050;
      v48 = v61;
      sub_2664DE428();
      sub_2664DE388();
      v50 = v49;
      v51 = *(v37 + 8);
      v51(v48, v39);
      v51(v38, v39);
      *(v43 + 34) = v50;
      _os_log_impl(&dword_26629C000, v41, v42, "Completions#timeout completion: %{public}s not complete within timeout: %{public}ldms, returning default: %s. %{public}f seconds since start.", v43, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v44, -1, -1);
      MEMORY[0x266784AD0](v43, -1, -1);

      (*(v70 + 8))(v69, v33);
    }

    else
    {

      (*(v37 + 8))(v38, v39);
      (*(v36 + 8))(v35, v33);
    }

    v52 = v71;
    v53 = v57;
    if (v68)
    {
      v54 = sub_2664DF638();
      v55 = *(v54 + 48);
      v56 = *(v54 + 52);
      swift_allocObject();
      sub_2664DF628();
      sub_2664DF618();
    }

    swift_beginAccess();
    v73 = *(v53 + 16);
    return v52(&v73);
  }
}

uint64_t sub_2663F1638(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(__int128 *), uint64_t a9, uint64_t a10)
{
  v80 = a8;
  v76 = a7;
  v70 = a6;
  v72 = a5;
  v71 = a4;
  v67 = a3;
  v81 = a9;
  v74 = sub_2664DE438();
  v73 = *(v74 - 8);
  v11 = *(v73 + 64);
  v12 = MEMORY[0x28223BE20](v74);
  v69 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v79 = &v67 - v14;
  v78 = sub_2664DFE38();
  v75 = *(v78 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20](v78);
  v77 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2664E0018();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_2664E00E8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v67 - v28;
  sub_2664E00C8();
  v68 = a2;
  *v21 = a2;
  (*(v18 + 104))(v21, *MEMORY[0x277D85178], v17);
  MEMORY[0x266783140](v27, v21);
  (*(v18 + 8))(v21, v17);
  v30 = *(v23 + 8);
  v30(v27, v22);
  sub_2664E0738();
  v30(v29, v22);
  if (sub_2664E0028())
  {
    swift_beginAccess();
    v31 = *(a10 + 24);
    v32 = *(a10 + 32);
    v33 = *(a10 + 40);
    v34 = *(a10 + 48);
    LOBYTE(v83) = *(a10 + 16);
    *(&v83 + 1) = v31;
    *&v84 = v32;
    *(&v84 + 1) = v33;
    v85 = v34;
    sub_266314294(v31);
    v80(&v83);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v35 = v78;
    v36 = __swift_project_value_buffer(v78, qword_280F914F0);
    swift_beginAccess();
    v37 = v75;
    v38 = v77;
    (*(v75 + 16))(v77, v36, v35);
    v39 = v73;
    v40 = v74;
    (*(v73 + 16))(v79, v70, v74);
    v41 = v71;

    v42 = v72;
    sub_2663F5560(v72, &v83);
    v43 = sub_2664DFE18();
    v44 = sub_2664E06D8();

    LODWORD(v70) = v44;
    v45 = v44;
    v46 = v43;
    if (os_log_type_enabled(v43, v45))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v82[0] = v48;
      *v47 = 136446978;
      *(v47 + 4) = sub_2662A320C(v67, v41, v82);
      *(v47 + 12) = 2050;
      *(v47 + 14) = v68;
      *(v47 + 22) = 2080;
      v49 = *(v42 + 16);
      v83 = *v42;
      v84 = v49;
      v85 = *(v42 + 32);
      v50 = sub_2664E0318();
      v52 = sub_2662A320C(v50, v51, v82);

      *(v47 + 24) = v52;
      *(v47 + 32) = 2050;
      v53 = v69;
      sub_2664DE428();
      v54 = v79;
      sub_2664DE388();
      v56 = v55;
      v57 = *(v39 + 8);
      v57(v53, v40);
      v57(v54, v40);
      *(v47 + 34) = v56;
      _os_log_impl(&dword_26629C000, v46, v70, "Completions#timeout completion: %{public}s not complete within timeout: %{public}ldms, returning default: %s. %{public}f seconds since start.", v47, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v48, -1, -1);
      MEMORY[0x266784AD0](v47, -1, -1);

      (*(v37 + 8))(v77, v78);
    }

    else
    {

      sub_2663F55BC(v42);
      (*(v39 + 8))(v79, v40);
      (*(v37 + 8))(v38, v35);
    }

    v58 = v80;
    if (v76)
    {
      v59 = sub_2664DF638();
      v60 = *(v59 + 48);
      v61 = *(v59 + 52);
      swift_allocObject();
      sub_2664DF628();
      sub_2664DF618();
    }

    swift_beginAccess();
    v62 = *(a10 + 24);
    v63 = *(a10 + 32);
    v64 = *(a10 + 40);
    v65 = *(a10 + 48);
    LOBYTE(v83) = *(a10 + 16);
    *(&v83 + 1) = v62;
    *&v84 = v63;
    *(&v84 + 1) = v64;
    v85 = v65;
    sub_266314294(v62);
    v58(&v83);
  }

  return sub_2663142F4(*(&v83 + 1));
}