BOOL _s15VisionCompanion18SoftwareUpdateInfoV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v49 = a1[7];
  v50 = a1[6];
  v47 = a1[9];
  v48 = a1[8];
  v43 = a1[11];
  v44 = a1[10];
  v39 = a1[13];
  v40 = a1[12];
  v35 = a1[15];
  v36 = a1[14];
  v29 = a1[16];
  v30 = a1[17];
  v25 = a1[18];
  v26 = a1[19];
  v22 = a1[20];
  v23 = a1[21];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v45 = a2[9];
  v46 = a2[8];
  v42 = a2[10];
  v41 = a2[11];
  v37 = a2[13];
  v38 = a2[12];
  v33 = a2[15];
  v34 = a2[14];
  v27 = a2[16];
  v28 = a2[17];
  v24 = a2[18];
  v21 = a2[20];
  v31 = a2[19];
  v32 = a2[21];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2330F2DC0() & 1) == 0 || (v2 != v7 || v4 != v6) && (sub_2330F2DC0() & 1) == 0 || (v3 != v9 || v5 != v8) && (sub_2330F2DC0() & 1) == 0 || (v50 != v10 || v49 != v11) && (sub_2330F2DC0() & 1) == 0 || (v48 != v46 || v47 != v45) && (sub_2330F2DC0() & 1) == 0 || (v44 != v42 || v43 != v41) && (sub_2330F2DC0() & 1) == 0 || (v40 != v38 || v39 != v37) && (sub_2330F2DC0() & 1) == 0 || (v36 != v34 || v35 != v33) && (sub_2330F2DC0() & 1) == 0)
  {
    return 0;
  }

  if (v30 >> 60 == 15)
  {
    v12 = v28;
    v14 = v31;
    v13 = v32;
    if (v28 >> 60 == 15)
    {
      sub_2330B4224(v29, v30);
      sub_2330B4224(v27, v28);
      sub_2330B5294(v29, v30);
      goto LABEL_31;
    }

LABEL_29:
    sub_2330B4224(v29, v30);
    sub_2330B4224(v27, v12);
    sub_2330B5294(v29, v30);
    v15 = v27;
    v16 = v12;
LABEL_42:
    sub_2330B5294(v15, v16);
    return 0;
  }

  v12 = v28;
  v14 = v31;
  v13 = v32;
  if (v28 >> 60 == 15)
  {
    goto LABEL_29;
  }

  sub_2330B4224(v29, v30);
  sub_2330B4224(v27, v28);
  v17 = sub_2330B4B00(v29, v30, v27, v28);
  sub_2330B5294(v27, v28);
  sub_2330B5294(v29, v30);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  if (v26 >> 60 == 15)
  {
    if (v14 >> 60 == 15)
    {
      sub_2330B4224(v25, v26);
      sub_2330B4224(v24, v14);
      sub_2330B5294(v25, v26);
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (v14 >> 60 == 15)
  {
LABEL_35:
    sub_2330B4224(v25, v26);
    sub_2330B4224(v24, v14);
    sub_2330B5294(v25, v26);
    v15 = v24;
    v16 = v14;
    goto LABEL_42;
  }

  sub_2330B4224(v25, v26);
  sub_2330B4224(v24, v14);
  v18 = sub_2330B4B00(v25, v26, v24, v14);
  sub_2330B5294(v24, v14);
  sub_2330B5294(v25, v26);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  if (v23 >> 60 == 15)
  {
    if (v13 >> 60 == 15)
    {
      sub_2330B4224(v22, v23);
      sub_2330B4224(v21, v13);
      sub_2330B5294(v22, v23);
      return 1;
    }

    goto LABEL_41;
  }

  if (v13 >> 60 == 15)
  {
LABEL_41:
    sub_2330B4224(v22, v23);
    sub_2330B4224(v21, v13);
    sub_2330B5294(v22, v23);
    v15 = v21;
    v16 = v13;
    goto LABEL_42;
  }

  sub_2330B4224(v22, v23);
  sub_2330B4224(v21, v13);
  v20 = sub_2330B4B00(v22, v23, v21, v13);
  sub_2330B5294(v21, v13);
  sub_2330B5294(v22, v23);
  return (v20 & 1) != 0;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_2330B51D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_2330B5218(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2330B5294(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2330B52A8(a1, a2);
  }

  return a1;
}

uint64_t sub_2330B52A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t static SoftwareUpdateUtilities.uiImageFromData(_:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_27DDDDBE0 != -1)
    {
      swift_once();
    }

    v2 = sub_2330F23C0();
    __swift_project_value_buffer(v2, qword_27DDE18D8);
    v3 = sub_2330F23A0();
    v4 = sub_2330F2980();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v17 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_233098F44(0xD000000000000017, 0x80000002330F5670, &v17);
      _os_log_impl(&dword_233084000, v3, v4, "%s uiImageFromData: descriptor doesnt have an icon", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x23839A490](v6, -1, -1);
      MEMORY[0x23839A490](v5, -1, -1);
    }

    return 0;
  }

  sub_233099620(0, &qword_27DDDE158, 0x277CCAAC8);
  sub_233099620(0, &qword_27DDDE160, 0x277D755B8);
  sub_2330B4238(a1, a2);
  v9 = sub_2330F29A0();
  if (!v9)
  {
    if (qword_27DDDDBE0 != -1)
    {
      swift_once();
    }

    v10 = sub_2330F23C0();
    __swift_project_value_buffer(v10, qword_27DDE18D8);
    v11 = sub_2330F23A0();
    v12 = sub_2330F2960();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_233098F44(0xD000000000000017, 0x80000002330F5670, &v17);
      _os_log_impl(&dword_233084000, v11, v12, "%s uiImageFromData returned nil", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x23839A490](v14, -1, -1);
      MEMORY[0x23839A490](v13, -1, -1);
    }

    sub_2330B5294(a1, a2);

    return 0;
  }

  v16 = v9;
  sub_2330B5294(a1, a2);
  return v16;
}

uint64_t static SoftwareUpdateUtilities.stringFromData(_:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_2330F2640();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  result = 0;
  if (a2 >> 60 != 15)
  {
    sub_2330B4238(a1, a2);
    sub_2330F2630();
    sub_2330B60C4();
    v8 = sub_2330F2610();
    sub_2330B5294(a1, a2);
    return v8;
  }

  return result;
}

void static SoftwareUpdateUtilities.highestVersionDevice(from:)(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE78, &qword_2330F4AF0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v64 - v11;
  v13 = sub_2330F2370();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v74 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v64 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v64 - v25;
  isa = a1[2].isa;
  v75 = v24;
  if (!isa)
  {
    (*(v14 + 56))(a2, 1, 1, v13);
LABEL_5:
    if (qword_27DDDDBE0 != -1)
    {
      goto LABEL_28;
    }

    goto LABEL_6;
  }

  v65 = a2;
  v66 = v9;
  v67 = v12;
  v68 = a1;
  v69 = v14;
  v29 = *(v14 + 16);
  v28 = v14 + 16;
  v30 = (*(v28 + 64) + 32) & ~*(v28 + 64);
  v72 = v29;
  v73 = v28;
  v29(&v64 - v25, a1 + v30, v13);
  if (isa == 1)
  {
LABEL_3:
    v14 = v69;
    a2 = v65;
    (v69[4].isa)(v65, v26, v13);
    (*(v14 + 56))(a2, 0, 1, v13);
    v12 = v67;
    a1 = v68;
    v9 = v66;
    goto LABEL_5;
  }

  v37 = v69[9].isa;
  a1 = v69 + 1;
  v70 = v69 + 4;
  v71 = v37;
  v14 = v37 + v68 + v30;
  v9 = 1;
  while (1)
  {
    v72(v22, v14, v13);
    v12 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v38 = sub_2330F22A0();
    a2 = v39;
    if (v38 == sub_2330F22A0() && a2 == v40)
    {

      v41 = a1->isa;
LABEL_18:
      v13 = v75;
      v41(v22, v75);
      goto LABEL_12;
    }

    v42 = sub_2330F2DC0();

    v41 = a1->isa;
    if ((v42 & 1) == 0)
    {
      goto LABEL_18;
    }

    v13 = v75;
    v41(v26, v75);
    (v70->isa)(v26, v22, v13);
LABEL_12:
    ++v9;
    v14 += v71;
    if (v12 == isa)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_28:
  swift_once();
LABEL_6:
  v31 = sub_2330F23C0();
  __swift_project_value_buffer(v31, qword_27DDE18D8);
  sub_2330A7AD0(a2, v12);

  v32 = sub_2330F23A0();
  v33 = sub_2330F2980();

  if (os_log_type_enabled(v32, v33))
  {
    LODWORD(v71) = v33;
    v34 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v77 = v70;
    *v34 = 136315650;
    *(v34 + 4) = sub_233098F44(0xD000000000000017, 0x80000002330F5670, &v77);
    *(v34 + 12) = 2080;
    sub_2330A7AD0(v12, v9);
    if ((*(v14 + 48))(v9, 1, v13) == 1)
    {
      sub_2330B6118(v9);
      v35 = 0xE300000000000000;
      v36 = 7104878;
    }

    else
    {
      v36 = sub_2330F22A0();
      v35 = v43;
      (*(v14 + 8))(v9, v13);
    }

    sub_2330B6118(v12);
    v44 = sub_233098F44(v36, v35, &v77);

    *(v34 + 14) = v44;
    *(v34 + 22) = 2080;
    v45 = MEMORY[0x277D84F90];
    if (isa)
    {
      v68 = v34;
      v69 = v32;
      v76 = MEMORY[0x277D84F90];
      sub_2330AC704(0, isa, 0);
      v45 = v76;
      v47 = *(v14 + 16);
      v46 = v14 + 16;
      v48 = a1 + ((*(v46 + 64) + 32) & ~*(v46 + 64));
      v72 = *(v46 + 56);
      v73 = v47;
      v49 = (v46 - 8);
      do
      {
        v51 = v74;
        v50 = v75;
        v52 = v46;
        v73(v74, v48, v75);
        v53 = sub_2330F22A0();
        v55 = v54;
        (*v49)(v51, v50);
        v76 = v45;
        v57 = *(v45 + 16);
        v56 = *(v45 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_2330AC704((v56 > 1), v57 + 1, 1);
          v45 = v76;
        }

        *(v45 + 16) = v57 + 1;
        v58 = v45 + 16 * v57;
        *(v58 + 32) = v53;
        *(v58 + 40) = v55;
        v48 += v72;
        --isa;
        v46 = v52;
      }

      while (isa);
      v34 = v68;
      v32 = v69;
    }

    v76 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE170, &qword_2330F56B0);
    sub_2330B6180();
    v59 = sub_2330F2580();
    v61 = v60;

    v62 = sub_233098F44(v59, v61, &v77);

    *(v34 + 24) = v62;
    _os_log_impl(&dword_233084000, v32, v71, "%s chose highest version: %s among: %s", v34, 0x20u);
    v63 = v70;
    swift_arrayDestroy();
    MEMORY[0x23839A490](v63, -1, -1);
    MEMORY[0x23839A490](v34, -1, -1);
  }

  else
  {

    sub_2330B6118(v12);
  }
}

uint64_t _s15VisionCompanion23SoftwareUpdateUtilitiesV15dataFromUIImagey10Foundation4DataVSgSo0H0CSgFZ_0(void *a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    if (qword_27DDDDBE0 != -1)
    {
      swift_once();
    }

    v8 = sub_2330F23C0();
    __swift_project_value_buffer(v8, qword_27DDE18D8);
    v3 = sub_2330F23A0();
    v9 = sub_2330F2980();
    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_233098F44(0xD000000000000017, 0x80000002330F5670, v20);
      _os_log_impl(&dword_233084000, v3, v9, "%s dataFromUIImage: descriptor doesnt have an icon", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x23839A490](v11, -1, -1);
      MEMORY[0x23839A490](v10, -1, -1);
    }

    goto LABEL_13;
  }

  v2 = objc_opt_self();
  v20[0] = 0;
  v3 = a1;
  v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v20];
  v5 = v20[0];
  if (!v4)
  {
    v12 = v5;
    v13 = sub_2330F1D60();

    swift_willThrow();
    if (qword_27DDDDBE0 != -1)
    {
      swift_once();
    }

    v14 = sub_2330F23C0();
    __swift_project_value_buffer(v14, qword_27DDE18D8);
    v15 = sub_2330F23A0();
    v16 = sub_2330F2960();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_233098F44(0xD000000000000017, 0x80000002330F5670, v20);
      _os_log_impl(&dword_233084000, v15, v16, "%s dataFromUIImage returned nil", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x23839A490](v18, -1, -1);
      MEMORY[0x23839A490](v17, -1, -1);
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  v6 = sub_2330F1E00();

  result = v6;
LABEL_14:
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2330B60C4()
{
  result = qword_27DDDE168;
  if (!qword_27DDDE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE168);
  }

  return result;
}

uint64_t sub_2330B6118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE78, &qword_2330F4AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2330B6180()
{
  result = qword_27DDDE178;
  if (!qword_27DDDE178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDDE170, &qword_2330F56B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE178);
  }

  return result;
}

uint64_t sub_2330B61F4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE1A8, &qword_2330F5768);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2330B68F8();
  sub_2330F2EE0();
  v16 = 0;
  sub_2330F2D70();
  if (!v3)
  {
    v14[1] = a3;
    v15 = 1;
    sub_2330B694C();
    sub_2330B6998(&qword_27DDDE1B0);
    sub_2330F2D60();
  }

  return (*(v7 + 8))(v11, v6);
}

unint64_t sub_2330B639C()
{
  if (*v0)
  {
    result = 0x444964726F636572;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_2330B63DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000002330F8110 == a2 || (sub_2330F2DC0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x444964726F636572 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2330F2DC0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_2330B64C4(uint64_t a1)
{
  v2 = sub_2330B68F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2330B6500(uint64_t a1)
{
  v2 = sub_2330B68F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2330B653C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2330B6714(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_2330B658C()
{
  sub_2330B665C();
  sub_2330B66B0();
  return sub_2330F2180();
}

uint64_t sub_2330B65E0()
{
  sub_2330B665C();
  sub_2330B66B0();
  return sub_2330F2190();
}

unint64_t sub_2330B665C()
{
  result = qword_27DDDE180;
  if (!qword_27DDDE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE180);
  }

  return result;
}

unint64_t sub_2330B66B0()
{
  result = qword_27DDDE188;
  if (!qword_27DDDE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE188);
  }

  return result;
}

uint64_t sub_2330B6714(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE190, &qword_2330F5760);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2330B68F8();
  sub_2330F2ED0();
  if (!v1)
  {
    v11[31] = 0;
    v9 = sub_2330F2D40();
    sub_2330B694C();
    v11[15] = 1;
    sub_2330B6998(&qword_27DDDE1A0);
    sub_2330F2D30();
    (*(v4 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

unint64_t sub_2330B68F8()
{
  result = qword_27DDDE198;
  if (!qword_27DDDE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE198);
  }

  return result;
}

unint64_t sub_2330B694C()
{
  result = qword_27DDDDE80;
  if (!qword_27DDDDE80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDDDE80);
  }

  return result;
}

uint64_t sub_2330B6998(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2330B694C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2330B69F0()
{
  result = qword_27DDDE1B8;
  if (!qword_27DDDE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE1B8);
  }

  return result;
}

unint64_t sub_2330B6A48()
{
  result = qword_27DDDE1C0;
  if (!qword_27DDDE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE1C0);
  }

  return result;
}

unint64_t sub_2330B6AA0()
{
  result = qword_27DDDE1C8;
  if (!qword_27DDDE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE1C8);
  }

  return result;
}

uint64_t sub_2330B6AF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330B6B80;

  return sub_2330B7354();
}

uint64_t sub_2330B6B80(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x2822009F8](sub_2330B6C80, 0, 0);
}

uint64_t sub_2330B6C80()
{
  sub_2330CEF6C(1, *(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2330B6D0C()
{
  type metadata accessor for CloudKitAccountCoordinator();
  swift_allocObject();
  v1 = CloudKitAccountCoordinator.init()();
  v0[12] = v1;
  type metadata accessor for AsyncLock();
  v2 = swift_allocObject();
  v0[13] = v2;
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  v0[5] = &type metadata for AuthKitCoordinator;
  v0[6] = &off_28486A258;
  v3 = sub_2330B7638();
  v0[7] = v2;
  v0[10] = &type metadata for DeviceCloudKitCoordinator;
  v0[11] = &off_284869F80;

  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_2330B6E64;

  return sub_2330C7FDC((v0 + 2), v1, v3, (v0 + 7), v1, v2);
}

uint64_t sub_2330B6E64(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[14];
  v6 = *v2;
  (*v2)[15] = v1;

  if (v1)
  {
    v7 = sub_2330B701C;
  }

  else
  {
    v4[16] = a1;
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm(v4 + 2);
    v7 = sub_2330B6F9C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2330B6F9C()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];

  v4 = *(v1 + 16);

  v5 = v0[1];

  return v5(v4 != 0);
}

uint64_t sub_2330B701C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (qword_27DDDDBC8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_27DDE1890);
  v3 = v1;
  v4 = sub_2330F23A0();
  v5 = sub_2330F2960();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_233084000, v4, v5, "Failed to fetch vision devices: %@", v10, 0xCu);
    sub_23309AE8C(v11);
    MEMORY[0x23839A490](v11, -1, -1);
    MEMORY[0x23839A490](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14(0);
}

id sub_2330B71F0()
{
  if (qword_2814EB0D0 != -1)
  {
    swift_once();
  }

  if (qword_2814EB0D8)
  {
    v0 = qword_2814EB0D8;
    v1 = sub_2330F25C0();
    v2 = [v0 BOOLForKey_];
  }

  else
  {
    if (qword_27DDDDBC8 != -1)
    {
      swift_once();
    }

    v3 = sub_2330F23C0();
    __swift_project_value_buffer(v3, qword_27DDE1890);
    v1 = sub_2330F23A0();
    v4 = sub_2330F2960();
    if (os_log_type_enabled(v1, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_233084000, v1, v4, "Failed to access daemon user defaults", v5, 2u);
      MEMORY[0x23839A490](v5, -1, -1);
    }

    v2 = 0;
  }

  return v2;
}

uint64_t sub_2330B7370()
{
  *(v0 + 16) = sub_2330B3ABC(MEMORY[0x277D84F90]);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2330B740C;

  return sub_2330B6CF0();
}

uint64_t sub_2330B740C(char a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_2330B750C, 0, 0);
}

uint64_t sub_2330B750C()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2330AE8B0(v2, 0xD000000000000017, 0x80000002330F8130, isUniquelyReferenced_nonNull_native);
  v4 = v1;
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_2330AE8B0(v5, 0xD000000000000018, 0x80000002330F8150, v6);
  v7 = *(v0 + 8);

  return v7(v4);
}

unint64_t sub_2330B7638()
{
  result = qword_2814EAFA0;
  if (!qword_2814EAFA0)
  {
    type metadata accessor for CloudKitAccountCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814EAFA0);
  }

  return result;
}

id sub_2330B7690()
{
  sub_233099620(0, &qword_2814EACD0, 0x277CBC218);
  v0 = sub_2330F2230();
  v2 = v1;
  if (qword_2814EB110 != -1)
  {
    swift_once();
  }

  result = CKContainer.init(identifier:bundleIdentifierOverride:environment:)(0xD000000000000010, 0x80000002330F81A0, v0, v2, qword_2814EBE48);
  qword_2814EB0E8 = result;
  return result;
}

void sub_2330B7780()
{
  if (qword_2814EB0E0 != -1)
  {
    swift_once();
  }

  v0 = qword_2814EB0E8;
  v1 = [v0 privateCloudDatabase];

  qword_2814EB100 = v1;
}

id sub_2330B7824(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

void sub_2330B78A4()
{
  if (qword_2814EB0D0 != -1)
  {
    swift_once();
  }

  if (qword_2814EB0D8 && (v0 = qword_2814EB0D8, v1 = sub_2330F25C0(), v2 = [v0 BOOLForKey_], v0, v1, (v2 & 1) != 0))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  qword_2814EBE48 = v3;
}

uint64_t sub_2330B7964(uint64_t a1, uint64_t a2)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = a2;
  return MEMORY[0x2822009F8](sub_2330B7984, 0, 0);
}

uint64_t sub_2330B7984()
{
  v1 = v0[27];
  v2 = v0[28];
  sub_233099620(0, &qword_2814EAC90, 0x277CBC5F8);
  v3 = *MEMORY[0x277CBBF28];
  sub_2330F25F0();

  v4 = sub_2330F2990();
  v0[29] = v4;
  if (qword_2814EB0F8 != -1)
  {
    swift_once();
  }

  v5 = qword_2814EB100;
  v0[30] = qword_2814EB100;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_2330B7B44;
  v6 = swift_continuation_init();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE1E0, &qword_2330F58F8);
  v0[31] = v7;
  v0[25] = v7;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_2330B8688;
  v0[21] = &block_descriptor_9_0;
  v0[22] = v6;
  [v5 fetchRecordZoneWithID:v4 completionHandler:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2330B7B44()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = sub_2330B7CBC;
  }

  else
  {
    v3 = sub_2330B7C54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2330B7C54()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2330B7CBC()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  swift_willThrow();

  v5 = [objc_allocWithZone(MEMORY[0x277CBC5E8]) initWithZoneID_];
  v0[33] = v5;
  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_2330B7E14;
  v6 = swift_continuation_init();
  v0[25] = v2;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_2330B8688;
  v0[21] = &block_descriptor_12;
  v0[22] = v6;
  [v3 saveRecordZone:v5 completionHandler:v0 + 18];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_2330B7E14()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_2330B7F94;
  }

  else
  {
    v3 = sub_2330B7F24;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2330B7F24()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 208);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2330B7F94()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[29];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[34];

  return v4();
}

uint64_t sub_2330B800C(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_2330B802C, 0, 0);
}

uint64_t sub_2330B802C()
{
  if (qword_2814EB0F8 != -1)
  {
    swift_once();
  }

  v0[21] = qword_2814EB100;
  v1 = *(MEMORY[0x277CBBE30] + 4);
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_2330B8100;
  v4 = v0[19];
  v3 = v0[20];

  return MEMORY[0x28210DE70](v4, v3);
}

uint64_t sub_2330B8100()
{
  v2 = *(*v1 + 176);
  v3 = *v1;

  if (!v0)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x2822009F8](sub_2330B8240, 0, 0);
}

uint64_t sub_2330B8240()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  sub_233099620(0, &qword_2814EAC90, 0x277CBC5F8);
  v4 = *MEMORY[0x277CBBF28];
  sub_2330F25F0();

  v5 = sub_2330F2990();
  v0[23] = v5;
  sub_233099620(0, &qword_27DDDE1D0, 0x277CBC618);

  v6 = v5;
  v7 = sub_2330F2A70();
  v0[24] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x277CBC4D0]) init];
  v0[25] = v8;
  [v8 setShouldSendContentAvailable_];
  [v7 setNotificationInfo_];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2330B8458;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE1D8, &unk_2330F58E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2330B8688;
  v0[13] = &block_descriptor_5;
  v0[14] = v9;
  [v1 saveSubscription:v7 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2330B8458()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_2330B85DC;
  }

  else
  {
    v3 = sub_2330B8568;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2330B8568()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  v3 = *(v0 + 144);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_2330B85DC()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[26];

  return v5();
}

uint64_t sub_2330B868C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE98, &qword_2330F4480);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2, v5);
  v8 = &v13 - v7;
  v9 = *(a1 + 112);
  if (v9)
  {
    if (v9[2])
    {
      result = (*(v3 + 16))(v8, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);
      v10 = v9[2];
      if (v10)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = v9;
        if (!isUniquelyReferenced_nonNull_native || (v10 - 1) > v9[3] >> 1)
        {
          v9 = sub_233098A48(isUniquelyReferenced_nonNull_native, v10, 1, v9);
          v14 = v9;
        }

        sub_2330B8E08(0, 1, 0);
        v12 = *(a1 + 112);
        *(a1 + 112) = v9;

        sub_2330F2860();
        return (*(v3 + 8))(v8, v2);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      *(a1 + 112) = 0;
    }
  }

  return result;
}

uint64_t sub_2330B883C()
{
  v1 = v0[3];
  v2 = *(v1 + 112);
  if (v2)
  {
    v0[2] = v2;
    sub_2330B8F5C();
    v3 = swift_task_alloc();
    v0[4] = v3;
    *(v3 + 16) = v0 + 2;
    *(v3 + 24) = v1;
    v4 = *(MEMORY[0x277D859E0] + 4);

    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_2330B8998;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    *(v1 + 112) = MEMORY[0x277D84F90];
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2330B8998()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2330B8AC4, v3, 0);
}

uint64_t sub_2330B8AC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2330B8B24(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE98, &qword_2330F4480);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v19 - v10;
  (*(v7 + 16))(&v19 - v10, a1, v6);
  v12 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_233098A48(0, v12[2] + 1, 1, v12);
    *a2 = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_233098A48(v14 > 1, v15 + 1, 1, v12);
    *a2 = v12;
  }

  v12[2] = v15 + 1;
  (*(v7 + 32))(v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v11, v6);
  v16 = *a2;
  v17 = *(a3 + 112);
  *(a3 + 112) = v16;
}

uint64_t sub_2330B8CC0()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2330B8D1C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_2330B8D6C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2330B8DC0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2330B8DD8(void *result, int a2)
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

unint64_t sub_2330B8E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE98, &qword_2330F4480);
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

unint64_t sub_2330B8F5C()
{
  result = qword_27DDDE1E8;
  if (!qword_27DDDE1E8)
  {
    type metadata accessor for AsyncLock();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE1E8);
  }

  return result;
}

uint64_t sub_2330B8FB8()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2330B901C(uint64_t a1)
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

uint64_t sub_2330B908C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_2330B91CC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

unint64_t sub_2330B9400()
{
  result = qword_27DDDE1F0;
  if (!qword_27DDDE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE1F0);
  }

  return result;
}

uint64_t sub_2330B94D8()
{
  v1 = *(v0 + 64);
  sub_233092A18((v0 + 16));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = *(MEMORY[0x277D78418] + 4);

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_2330B95CC;
  v6 = *(v0 + 64);

  return MEMORY[0x2821DF758](301, &unk_2330F5B78, v6, v2, v3);
}

uint64_t sub_2330B95CC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330B96E4, 0, 0);
}

uint64_t sub_2330B96E4()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  v0[10] = v4;
  *(v4 + 16) = &unk_2330F5B88;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D78408] + 4);

  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_2330B9810;
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277D784C0];

  return MEMORY[0x2821DF748](302, &unk_2330F5B98, v4, v2, v7, v3, v8);
}

uint64_t sub_2330B9810()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330B9928, 0, 0);
}

uint64_t sub_2330B9928()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(MEMORY[0x277D78418] + 4);

  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_2330B9A14;
  v6 = v0[8];

  return MEMORY[0x2821DF758](303, &unk_2330F5BA8, v6, v2, v3);
}

uint64_t sub_2330B9A14()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330B9B2C, 0, 0);
}

uint64_t sub_2330B9B2C()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  v0[13] = v4;
  *(v4 + 16) = &unk_2330F5BB8;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D78408] + 4);

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_2330B9C58;
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277D784C0];

  return MEMORY[0x2821DF748](304, &unk_2330F5BC0, v4, v2, v7, v3, v8);
}

uint64_t sub_2330B9C58()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23308D118, 0, 0);
}

uint64_t sub_2330B9D70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330B9E04(a1);
}

uint64_t sub_2330B9E24()
{
  v1 = v0[2];
  sub_233090A7C();
  if (sub_2330F2380())
  {
    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_2330B9F3C;
    v3 = v0[2];

    return sub_2330BC0B4(v3);
  }

  else
  {
    sub_2330A7B40();
    swift_allocError();
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2330B9F3C()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2330BA038, 0, 0);
}

uint64_t sub_2330BA038()
{
  v9 = v0;
  if (qword_27DDDDBE0 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_27DDE18D8);
  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_233098F44(0xD000000000000014, 0x80000002330F5AF0, &v8);
    _os_log_impl(&dword_233084000, v2, v3, "%s force scanned software update", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x23839A490](v5, -1, -1);
    MEMORY[0x23839A490](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2330BA1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2330877C8;

  return sub_2330BA25C(a1, a2, a3);
}

uint64_t sub_2330BA25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 256) = a2;
  *(v3 + 264) = a3;
  return MEMORY[0x2822009F8](sub_2330BA27C, 0, 0);
}

void sub_2330BA27C()
{
  v42 = v0;
  v1 = *(v0 + 264);
  sub_233090A7C();
  if (sub_2330F2380() & 1) != 0 || (sub_2330F2380())
  {
    v2 = *(v0 + 256);

    sub_2330F2390();
    if (sub_2330F2380())
    {
      if (!v2)
      {
        v3 = *(v0 + 264);
        sub_233091A08(v0 + 192);
        v4 = MobileGestalt_get_current_device();
        if (v4)
        {
          v5 = v4;
          v6 = MobileGestalt_copy_serialNumber_obj();

          if (v6)
          {
            v7 = sub_2330F25F0();
            v9 = v8;

            *(v0 + 272) = v9;
            v10 = MobileGestalt_get_current_device();
            if (v10)
            {
              v11 = v10;
              v12 = MobileGestalt_copy_buildVersion_obj();

              if (v12)
              {
                v13 = sub_2330F25F0();
                v15 = v14;

                __swift_destroy_boxed_opaque_existential_1Tm((v0 + 192));
                sub_2330DBF30(v7, v9, v13, v15, v41);

                v16 = v41[9];
                *(v0 + 144) = v41[8];
                *(v0 + 160) = v16;
                *(v0 + 176) = v41[10];
                v17 = v41[5];
                *(v0 + 80) = v41[4];
                *(v0 + 96) = v17;
                v18 = v41[7];
                *(v0 + 112) = v41[6];
                *(v0 + 128) = v18;
                v19 = v41[1];
                *(v0 + 16) = v41[0];
                *(v0 + 32) = v19;
                v20 = v41[3];
                *(v0 + 48) = v41[2];
                *(v0 + 64) = v20;
                v21 = swift_task_alloc();
                *(v0 + 280) = v21;
                *v21 = v0;
                v21[1] = sub_2330BA858;

                sub_2330C3EB4();
                return;
              }

LABEL_31:
              __break(1u);
              return;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_30;
      }

      goto LABEL_13;
    }

    if (v2)
    {
LABEL_13:
      if (qword_27DDDDBE0 != -1)
      {
        swift_once();
      }

      v22 = sub_2330F23C0();
      __swift_project_value_buffer(v22, qword_27DDE18D8);
      v23 = sub_2330F23A0();
      v24 = sub_2330F2980();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *&v41[0] = v27;
        *v25 = 136315394;
        *(v25 + 4) = sub_233098F44(0xD000000000000014, 0x80000002330F5AF0, v41);
        *(v25 + 12) = 2112;
        sub_2330BE9F4();
        swift_allocError();
        *v28 = 1;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 14) = v29;
        *v26 = v29;
        _os_log_impl(&dword_233084000, v23, v24, "%s %@", v25, 0x16u);
        sub_2330952BC(v26, &unk_27DDDE520, &qword_2330F4340);
        MEMORY[0x23839A490](v26, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        MEMORY[0x23839A490](v27, -1, -1);
        MEMORY[0x23839A490](v25, -1, -1);
      }

      sub_2330BE9F4();
      swift_allocError();
      *v30 = 1;
      swift_willThrow();

      goto LABEL_25;
    }

    if (qword_27DDDDBE0 != -1)
    {
      swift_once();
    }

    v31 = sub_2330F23C0();
    __swift_project_value_buffer(v31, qword_27DDE18D8);
    v32 = sub_2330F23A0();
    v33 = sub_2330F2980();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&v41[0] = v36;
      *v34 = 136315394;
      *(v34 + 4) = sub_233098F44(0xD000000000000014, 0x80000002330F5AF0, v41);
      *(v34 + 12) = 2112;
      sub_2330BE9F4();
      swift_allocError();
      *v37 = 0;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v38;
      *v35 = v38;
      _os_log_impl(&dword_233084000, v32, v33, "%s %@", v34, 0x16u);
      sub_2330952BC(v35, &unk_27DDDE520, &qword_2330F4340);
      MEMORY[0x23839A490](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x23839A490](v36, -1, -1);
      MEMORY[0x23839A490](v34, -1, -1);
    }

    sub_2330BE9F4();
    swift_allocError();
    *v39 = 0;
  }

  else
  {
    sub_2330A7B40();
    swift_allocError();
  }

  swift_willThrow();
LABEL_25:
  v40 = *(v0 + 8);

  v40();
}

uint64_t sub_2330BA858(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[29] = v2;
  v4[30] = a1;
  v4[31] = a2;
  v5 = v3[35];
  v7 = *v2;
  v4[36] = a2;

  return MEMORY[0x2822009F8](sub_2330BA960, 0, 0);
}

uint64_t sub_2330BA960()
{
  v20 = v0;
  v1 = *(v0 + 288);
  if (v1)
  {
    v2._countAndFlagsBits = *(v0 + 240);
    v3 = *(v0 + 160);
    v19[8] = *(v0 + 144);
    v19[9] = v3;
    v19[10] = *(v0 + 176);
    v4 = *(v0 + 96);
    v19[4] = *(v0 + 80);
    v19[5] = v4;
    v5 = *(v0 + 128);
    v19[6] = *(v0 + 112);
    v19[7] = v5;
    v6 = *(v0 + 32);
    v19[0] = *(v0 + 16);
    v19[1] = v6;
    v7 = *(v0 + 64);
    v19[2] = *(v0 + 48);
    v19[3] = v7;
    v2._object = v1;
    v8.super.isa = SoftwareUpdateInfo.makeRecord(deviceID:)(v2).super.isa;
    *(v0 + 296) = v8;

    v9 = swift_task_alloc();
    *(v0 + 304) = v9;
    *v9 = v0;
    v9[1] = sub_2330BABF8;

    return sub_2330C4ED0(v8.super.isa);
  }

  else
  {
    if (qword_27DDDDBE0 != -1)
    {
      swift_once();
    }

    v11 = sub_2330F23C0();
    __swift_project_value_buffer(v11, qword_27DDE18D8);
    v12 = sub_2330F23A0();
    v13 = sub_2330F2980();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v19[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_233098F44(0xD000000000000014, 0x80000002330F5AF0, v19);
      _os_log_impl(&dword_233084000, v12, v13, "%s deviceID couldnt be fetched", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x23839A490](v15, -1, -1);
      MEMORY[0x23839A490](v14, -1, -1);
    }

    v16 = *(v0 + 272);
    sub_2330BE9F4();
    swift_allocError();
    *v17 = 5;
    swift_willThrow();
    sub_2330BEA48(v0 + 16);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_2330BABF8()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_2330BAEC0;
  }

  else
  {
    v3 = sub_2330BAD0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2330BAD0C()
{
  v12 = v0;
  if (qword_27DDDDBE0 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_27DDE18D8);
  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[37];
  v6 = v0[34];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_233098F44(0xD000000000000014, 0x80000002330F5AF0, &v11);
    _os_log_impl(&dword_233084000, v2, v3, "%s saved sample software update", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x23839A490](v8, -1, -1);
    MEMORY[0x23839A490](v7, -1, -1);

    sub_2330BEA48((v0 + 2));
  }

  else
  {
    sub_2330BEA48((v0 + 2));
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_2330BAEC0()
{
  v1 = *(v0 + 272);

  sub_2330BEA48(v0 + 16);

  v2 = *(v0 + 312);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2330BAF38(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v8 = (a2 + *a2);
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233088E00;

  return v8(v3, v4);
}

uint64_t sub_2330BB034(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330BB0C8(a1);
}

uint64_t sub_2330BB0E8()
{
  v1 = v0[2];
  sub_233090A7C();
  if (sub_2330F2380() & 1) != 0 || (sub_2330F2380())
  {
    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_2330BB220;

    return sub_2330C5C7C();
  }

  else
  {
    sub_2330A7B40();
    swift_allocError();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2330BB220()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2330BB350, 0, 0);
}

uint64_t sub_2330BB350()
{
  v9 = v0;
  if (qword_27DDDDBE0 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_27DDE18D8);
  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_233098F44(0xD000000000000014, 0x80000002330F5AF0, &v8);
    _os_log_impl(&dword_233084000, v2, v3, "%s deleted all software update records", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x23839A490](v5, -1, -1);
    MEMORY[0x23839A490](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2330BB4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_233088E00;

  return sub_2330BB574(a1, a2, a3);
}

uint64_t sub_2330BB574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_2330BB598, 0, 0);
}

void sub_2330BB598()
{
  v24 = v0;
  v1 = v0[9];
  sub_233090A7C();
  if (sub_2330F2380() & 1) != 0 || (sub_2330F2380())
  {
    v2 = v0[8];

    sub_2330F2390();
    if (sub_2330F2380())
    {
      if (!v2)
      {
        v3 = v0[9];
        sub_233091A08((v0 + 2));
        v4 = MobileGestalt_get_current_device();
        if (v4)
        {
          v5 = v4;
          v6 = MobileGestalt_copy_serialNumber_obj();

          if (v6)
          {
            v7 = sub_2330F25F0();
            v2 = v8;

            v9 = [objc_opt_self() standardUserDefaults];
            v10 = sub_2330F25C0();
            [v9 removeObjectForKey_];

            __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
            v11 = v2;
LABEL_10:
            v0[11] = v2;
            v0[12] = v11;
            v0[10] = v7;
            v12 = swift_task_alloc();
            v0[13] = v12;
            *v12 = v0;
            v12[1] = sub_2330BB96C;

            sub_2330C62FC(v7, v2);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

LABEL_9:
      v7 = v0[7];
      v11 = v0[8];
      goto LABEL_10;
    }

    if (v2)
    {
      goto LABEL_9;
    }

    if (qword_27DDDDBE0 != -1)
    {
      swift_once();
    }

    v13 = sub_2330F23C0();
    __swift_project_value_buffer(v13, qword_27DDE18D8);
    v14 = sub_2330F23A0();
    v15 = sub_2330F2980();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v16 = 136315394;
      *(v16 + 4) = sub_233098F44(0xD000000000000014, 0x80000002330F5AF0, &v23);
      *(v16 + 12) = 2112;
      sub_2330BE9F4();
      swift_allocError();
      *v19 = 0;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v20;
      *v17 = v20;
      _os_log_impl(&dword_233084000, v14, v15, "%s %@", v16, 0x16u);
      sub_2330952BC(v17, &unk_27DDDE520, &qword_2330F4340);
      MEMORY[0x23839A490](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x23839A490](v18, -1, -1);
      MEMORY[0x23839A490](v16, -1, -1);
    }

    sub_2330BE9F4();
    swift_allocError();
    *v21 = 0;
  }

  else
  {
    sub_2330A7B40();
    swift_allocError();
  }

  swift_willThrow();
  v22 = v0[1];

  v22();
}

uint64_t sub_2330BB96C(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_2330BBA6C, 0, 0);
}

uint64_t sub_2330BBA6C()
{
  v18 = v0;
  v1 = v0[14];
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDFD0, &qword_2330F5BD0);
    v2 = swift_allocObject();
    v0[15] = v2;
    *(v2 + 16) = xmmword_2330F4D50;
    *(v2 + 32) = [v1 recordID];
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_2330BBD34;

    return sub_2330C573C(v2);
  }

  else
  {
    if (qword_27DDDDBE0 != -1)
    {
      swift_once();
    }

    v5 = v0[11];
    v6 = sub_2330F23C0();
    __swift_project_value_buffer(v6, qword_27DDE18D8);

    v7 = sub_2330F23A0();
    v8 = sub_2330F2980();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[11];
    v10 = v0[12];
    if (v9)
    {
      v12 = v0[10];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_233098F44(0xD000000000000014, 0x80000002330F5AF0, &v17);
      *(v13 + 12) = 2080;
      v15 = sub_233098F44(v12, v11, &v17);

      *(v13 + 14) = v15;
      _os_log_impl(&dword_233084000, v7, v8, "%s deleted software update records for %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23839A490](v14, -1, -1);
      MEMORY[0x23839A490](v13, -1, -1);
    }

    else
    {
    }

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_2330BBD34()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_2330BC040;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_2330BBE50;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2330BBE50()
{
  v15 = v0;

  if (qword_27DDDDBE0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_27DDE18D8);

  v3 = sub_2330F23A0();
  v4 = sub_2330F2980();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  if (v5)
  {
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_233098F44(0xD000000000000014, 0x80000002330F5AF0, &v14);
    *(v9 + 12) = 2080;
    v11 = sub_233098F44(v8, v7, &v14);

    *(v9 + 14) = v11;
    _os_log_impl(&dword_233084000, v3, v4, "%s deleted software update records for %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v10, -1, -1);
    MEMORY[0x23839A490](v9, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2330BC040()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];

  v4 = v0[17];
  v5 = v0[1];

  return v5();
}

uint64_t sub_2330BC0B4(uint64_t a1)
{
  v1[9] = a1;
  v2 = sub_2330F1EB0();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330BC174, 0, 0);
}

void sub_2330BC174()
{
  v21 = v0;
  v1 = v0[9];
  sub_233091A08((v0 + 2));
  v2 = MobileGestalt_get_current_device();
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  v4 = MobileGestalt_copy_serialNumber_obj();

  if (!v4)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  v8 = sub_2330F25F0();
  v10 = v9;

  v0[13] = v8;
  v0[14] = v10;
  v11 = [objc_opt_self() standardUserDefaults];
  sub_2330F1EA0();
  v12 = sub_2330F1E50();
  (*(v6 + 8))(v5, v7);
  v13 = sub_2330F25C0();
  [v11 setObject:v12 forKey:v13];

  if (qword_27DDDDBE0 != -1)
  {
    swift_once();
  }

  v14 = sub_2330F23C0();
  v0[15] = __swift_project_value_buffer(v14, qword_27DDE18D8);
  v15 = sub_2330F23A0();
  v16 = sub_2330F2980();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_233098F44(0xD000000000000014, 0x80000002330F5AF0, &v20);
    _os_log_impl(&dword_233084000, v15, v16, "%s Scanning software update", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x23839A490](v18, -1, -1);
    MEMORY[0x23839A490](v17, -1, -1);
  }

  v19 = swift_task_alloc();
  v0[16] = v19;
  *v19 = v0;
  v19[1] = sub_2330BC420;

  sub_2330BE64C();
}

uint64_t sub_2330BC420(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v8 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v5 = v3[14];

    v6 = sub_2330BC844;
  }

  else
  {
    v6 = sub_2330BC53C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2330BC53C()
{
  v17 = v0;
  v1 = v0[17];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_2330BC714;
    v5 = v0[13];
    v4 = v0[14];
    v6 = v0[9];

    return sub_2330BDC14(v5, v4, v2, v6);
  }

  else
  {
    v8 = v0[14];

    v9 = v0[15];
    v10 = sub_2330F23A0();
    v11 = sub_2330F2980();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_233098F44(0xD000000000000014, 0x80000002330F5AF0, &v16);
      _os_log_impl(&dword_233084000, v10, v11, "%s No scanResults", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x23839A490](v13, -1, -1);
      MEMORY[0x23839A490](v12, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v14 = v0[12];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_2330BC714()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_2330BCB48;
  }

  else
  {
    v4 = sub_2330BCAD4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2330BC844()
{
  v22 = v0;
  v1 = v0[18];
  v2 = v0[15];
  v3 = v1;
  v4 = sub_2330F23A0();
  v5 = sub_2330F2960();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[18];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_233098F44(0xD000000000000014, 0x80000002330F5AF0, &v21);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_233084000, v4, v5, "%s error scanning: %@", v8, 0x16u);
    sub_2330952BC(v9, &unk_27DDDE520, &qword_2330F4340);
    MEMORY[0x23839A490](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x23839A490](v10, -1, -1);
    MEMORY[0x23839A490](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[15];
  v14 = sub_2330F23A0();
  v15 = sub_2330F2980();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_233098F44(0xD000000000000014, 0x80000002330F5AF0, &v21);
    _os_log_impl(&dword_233084000, v14, v15, "%s No scanResults", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x23839A490](v17, -1, -1);
    MEMORY[0x23839A490](v16, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v18 = v0[12];

  v19 = v0[1];

  return v19();
}

uint64_t sub_2330BCAD4()
{
  v1 = v0[17];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2330BCB48()
{
  v34 = v0;
  v1 = *(v0 + 160);

  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE470, &qword_2330F46A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_4;
  }

  v3 = *(v0 + 64);
  if (v3 < 6)
  {
    sub_2330BE9E4(*(v0 + 64));
LABEL_4:
    v4 = *(v0 + 160);
    v5 = *(v0 + 120);
    v6 = v4;
    v7 = sub_2330F23A0();
    v8 = sub_2330F2960();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 160);
    v11 = *(v0 + 136);
    if (!v9)
    {

      goto LABEL_10;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_233098F44(0xD000000000000014, 0x80000002330F5AF0, &v33);
    *(v12 + 12) = 2112;
    v15 = v10;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_233084000, v7, v8, "%s error handling scan results: %@", v12, 0x16u);
    sub_2330952BC(v13, &unk_27DDDE520, &qword_2330F4340);
    MEMORY[0x23839A490](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x23839A490](v14, -1, -1);
    MEMORY[0x23839A490](v12, -1, -1);

    v17 = v10;
    goto LABEL_9;
  }

  v18 = *(v0 + 120);
  v19 = v3;
  v20 = sub_2330F23A0();
  v21 = sub_2330F2960();
  sub_2330BE9E4(v3);
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 160);
  v24 = *(v0 + 136);
  if (v22)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v25 = 136315394;
    *(v25 + 4) = sub_233098F44(0xD000000000000014, 0x80000002330F5AF0, &v33);
    *(v25 + 12) = 2112;
    v28 = v3;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v29;
    *v26 = v29;
    _os_log_impl(&dword_233084000, v20, v21, "%s error encountered while modifying records: %@", v25, 0x16u);
    sub_2330952BC(v26, &unk_27DDDE520, &qword_2330F4340);
    MEMORY[0x23839A490](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x23839A490](v27, -1, -1);
    MEMORY[0x23839A490](v25, -1, -1);

    sub_2330BE9E4(v3);
    v17 = v23;
LABEL_9:

    goto LABEL_10;
  }

  sub_2330BE9E4(v3);
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v30 = *(v0 + 96);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_2330BCEFC(uint64_t a1)
{
  v1[11] = a1;
  v2 = sub_2330F1EB0();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE208, &unk_2330F5B58) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330BD03C, 0, 0);
}

void sub_2330BD03C()
{
  v96 = v0;
  v1 = *(v0 + 88);
  sub_233091A08(v0 + 16);
  v2 = MobileGestalt_get_current_device();
  if (!v2)
  {
    __break(1u);
    goto LABEL_36;
  }

  v3 = v2;
  v4 = MobileGestalt_copy_serialNumber_obj();

  if (!v4)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v5 = sub_2330F25F0();
  v7 = v6;

  if (qword_27DDDDBE0 != -1)
  {
    swift_once();
  }

  v8 = sub_2330F23C0();
  __swift_project_value_buffer(v8, qword_27DDE18D8);

  v9 = sub_2330F23A0();
  v10 = sub_2330F2980();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v94 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_233098F44(0xD000000000000014, 0x80000002330F5AF0, &v94);
    *(v11 + 12) = 2080;
    v13 = sub_233098F44(v5, v7, &v94);

    *(v11 + 14) = v13;
    _os_log_impl(&dword_233084000, v9, v10, "%s Requested scan for software update for: %s, if needed", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v12, -1, -1);
    MEMORY[0x23839A490](v11, -1, -1);
  }

  else
  {
  }

  v14 = [objc_opt_self() standardUserDefaults];
  v15 = sub_2330F25C0();
  v16 = [v14 objectForKey_];

  if (v16)
  {
    sub_2330F2B50();
    swift_unknownObjectRelease();
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
  }

  v17 = v94;
  *(v0 + 72) = v95;
  *(v0 + 56) = v17;
  v18 = *(v0 + 168);
  v19 = *(v0 + 96);
  v20 = *(v0 + 104);
  if (*(v0 + 80))
  {
    v21 = *(v0 + 168);
    v22 = *(v0 + 96);
    v23 = swift_dynamicCast();
    (*(v20 + 56))(v18, v23 ^ 1u, 1, v19);
  }

  else
  {
    sub_2330952BC(v0 + 56, &qword_27DDDDD78, &qword_2330F4200);
    (*(v20 + 56))(v18, 1, 1, v19);
  }

  sub_2330BEB48(*(v0 + 168), *(v0 + 160));
  v24 = sub_2330F23A0();
  v25 = sub_2330F2980();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 160);
  if (v26)
  {
    v28 = *(v0 + 152);
    v29 = *(v0 + 96);
    v30 = *(v0 + 104);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v94 = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_233098F44(0xD000000000000014, 0x80000002330F5AF0, &v94);
    *(v31 + 12) = 2080;
    sub_2330BEB48(v27, v28);
    v33 = (*(v30 + 48))(v28, 1, v29);
    v34 = *(v0 + 152);
    if (v33 == 1)
    {
      sub_2330952BC(*(v0 + 152), &qword_27DDDE208, &unk_2330F5B58);
      v35 = 0xE300000000000000;
      v36 = 7104878;
    }

    else
    {
      v38 = *(v0 + 96);
      v37 = *(v0 + 104);
      v39 = *(v0 + 152);
      v36 = sub_2330F1E40();
      v35 = v40;
      (*(v37 + 8))(v34, v38);
    }

    sub_2330952BC(*(v0 + 160), &qword_27DDDE208, &unk_2330F5B58);
    v41 = sub_233098F44(v36, v35, &v94);

    *(v31 + 14) = v41;
    _os_log_impl(&dword_233084000, v24, v25, "%s LastScanDate: %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v32, -1, -1);
    MEMORY[0x23839A490](v31, -1, -1);
  }

  else
  {

    sub_2330952BC(v27, &qword_27DDDE208, &unk_2330F5B58);
  }

  v42 = *(v0 + 144);
  v44 = *(v0 + 96);
  v43 = *(v0 + 104);
  sub_2330BEB48(*(v0 + 168), v42);
  v45 = (*(v43 + 48))(v42, 1, v44);
  v46 = *(v0 + 144);
  if (v45 == 1)
  {
    sub_2330952BC(*(v0 + 144), &qword_27DDDE208, &unk_2330F5B58);
LABEL_26:
    v75 = sub_2330F23A0();
    v76 = sub_2330F2980();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&v94 = v78;
      *v77 = 136315138;
      *(v77 + 4) = sub_233098F44(0xD000000000000014, 0x80000002330F5AF0, &v94);
      _os_log_impl(&dword_233084000, v75, v76, "%s Request not bounced, continuing", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      MEMORY[0x23839A490](v78, -1, -1);
      MEMORY[0x23839A490](v77, -1, -1);
    }

    v79 = swift_task_alloc();
    *(v0 + 176) = v79;
    *v79 = v0;
    v79[1] = sub_2330BDA38;
    v80 = *(v0 + 88);

    sub_2330BC0B4(v80);
    return;
  }

  v47 = *(v0 + 128);
  (*(*(v0 + 104) + 32))(*(v0 + 136), *(v0 + 144), *(v0 + 96));
  sub_2330F1E70();
  v48 = sub_2330F1E60();
  v49 = *(v0 + 128);
  v50 = *(v0 + 136);
  if ((v48 & 1) == 0)
  {
    v73 = *(v0 + 96);
    v74 = *(*(v0 + 104) + 8);
    v74(*(v0 + 128), v73);
    v74(v50, v73);
    goto LABEL_26;
  }

  v51 = *(v0 + 112);
  v52 = *(v0 + 96);
  v53 = *(*(v0 + 104) + 16);
  v53(*(v0 + 120), *(v0 + 136), v52);
  v53(v51, v49, v52);
  v54 = sub_2330F23A0();
  v55 = sub_2330F2980();
  v56 = os_log_type_enabled(v54, v55);
  v58 = *(v0 + 128);
  v57 = *(v0 + 136);
  v60 = *(v0 + 112);
  v59 = *(v0 + 120);
  v61 = *(v0 + 96);
  v62 = *(v0 + 104);
  if (v56)
  {
    v91 = v55;
    v63 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *&v94 = v93;
    *v63 = 136315650;
    *(v63 + 4) = sub_233098F44(0xD000000000000014, 0x80000002330F5AF0, &v94);
    *(v63 + 12) = 2080;
    sub_2330BEBB8();
    log = v54;
    v92 = v57;
    v64 = sub_2330F2D80();
    v66 = v65;
    v67 = *(v62 + 8);
    v67(v59, v61);
    v68 = sub_233098F44(v64, v66, &v94);

    *(v63 + 14) = v68;
    *(v63 + 22) = 2080;
    v69 = sub_2330F2D80();
    v71 = v70;
    v67(v60, v61);
    v72 = sub_233098F44(v69, v71, &v94);

    *(v63 + 24) = v72;
    _os_log_impl(&dword_233084000, log, v91, "%s Bouncing the request, lastScanDate: %s, bounceScanDate: %s", v63, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v93, -1, -1);
    MEMORY[0x23839A490](v63, -1, -1);

    v67(v58, v61);
    v67(v92, v61);
  }

  else
  {

    v81 = *(v62 + 8);
    v81(v60, v61);
    v81(v59, v61);
    v81(v58, v61);
    v81(v57, v61);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v82 = *(v0 + 160);
  v84 = *(v0 + 144);
  v83 = *(v0 + 152);
  v86 = *(v0 + 128);
  v85 = *(v0 + 136);
  v88 = *(v0 + 112);
  v87 = *(v0 + 120);
  sub_2330952BC(*(v0 + 168), &qword_27DDDE208, &unk_2330F5B58);

  v89 = *(v0 + 8);

  v89();
}

uint64_t sub_2330BDA38()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2330BDB34, 0, 0);
}

uint64_t sub_2330BDB34()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[20];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  sub_2330952BC(v0[21], &qword_27DDDE208, &unk_2330F5B58);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2330BDC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a3;
  v4[35] = a4;
  v4[32] = a1;
  v4[33] = a2;
  return MEMORY[0x2822009F8](sub_2330BDC38, 0, 0);
}

void sub_2330BDC38()
{
  v1 = [*(v0 + 272) preferredDescriptor];
  *(v0 + 288) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 280);
    sub_233091A08(v0 + 192);
    v4 = MobileGestalt_get_current_device();
    if (v4)
    {
      v5 = v4;
      v6 = MobileGestalt_copy_buildVersion_obj();

      if (v6)
      {
        v7 = sub_2330F25F0();
        v9 = v8;

        v10 = v2;
        if ([v10 promoteAlternateUpdate])
        {
          v11 = [*(v0 + 272) alternateDescriptor];
          if (v11)
          {
            v12 = v11;

            v10 = v12;
          }
        }

        *(v0 + 296) = v10;
        v14 = *(v0 + 256);
        v13 = *(v0 + 264);
        v15 = v10;

        sub_2330B4328(v15, v14, v13, v7, v9, (v0 + 16));
        v16 = swift_task_alloc();
        *(v0 + 304) = v16;
        *v16 = v0;
        v16[1] = sub_2330BDE3C;

        sub_2330C3EB4();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  sub_2330BE9F4();
  swift_allocError();
  *v17 = 4;
  swift_willThrow();
  v18 = *(v0 + 8);

  v18();
}

uint64_t sub_2330BDE3C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[29] = v2;
  v4[30] = a1;
  v4[31] = a2;
  v5 = v3[38];
  v7 = *v2;
  v4[39] = a2;

  return MEMORY[0x2822009F8](sub_2330BDF44, 0, 0);
}

uint64_t sub_2330BDF44()
{
  if (*(v0 + 312))
  {
    v1._countAndFlagsBits = *(v0 + 240);
    v17 = *(v0 + 144);
    v18 = *(v0 + 160);
    v19 = *(v0 + 176);
    v13 = *(v0 + 80);
    v14 = *(v0 + 96);
    v15 = *(v0 + 112);
    v16 = *(v0 + 128);
    v9 = *(v0 + 16);
    v10 = *(v0 + 32);
    v11 = *(v0 + 48);
    v12 = *(v0 + 64);
    v1._object = *(v0 + 312);
    v2.super.isa = SoftwareUpdateInfo.makeRecord(deviceID:)(v1).super.isa;
    *(v0 + 320) = v2;

    v3 = swift_task_alloc();
    *(v0 + 328) = v3;
    *v3 = v0;
    v3[1] = sub_2330BE0D4;

    return sub_2330C4ED0(v2.super.isa);
  }

  else
  {
    v6 = *(v0 + 288);
    v5 = *(v0 + 296);
    sub_2330BE9F4();
    swift_allocError();
    *v7 = 5;
    swift_willThrow();
    sub_2330BEA48(v0 + 16);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 192));
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_2330BE0D4()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_2330BE270;
  }

  else
  {
    v3 = sub_2330BE1E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2330BE1E8()
{
  v1 = v0[40];
  v3 = v0[36];
  v2 = v0[37];
  sub_2330BEA48((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2330BE270()
{
  v1 = v0[40];
  v3 = v0[36];
  v2 = v0[37];
  sub_2330BEA48((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  v4 = v0[42];
  v5 = v0[1];

  return v5();
}

void sub_2330BE2F8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE200, &qword_2330F5B48);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = aBlock - v8;
  (*(v5 + 16))(aBlock - v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  aBlock[4] = sub_2330BEAA4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2330BE52C;
  aBlock[3] = &block_descriptor_6;
  v12 = _Block_copy(aBlock);

  [a2 descriptors_];
  _Block_release(v12);
}

uint64_t sub_2330BE4A8(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE200, &qword_2330F5B48);
    return sub_2330F2850();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE200, &qword_2330F5B48);
    return sub_2330F2860();
  }
}

void sub_2330BE52C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_2330BE5B8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330877C8;

  return sub_2330B94B8(v2);
}

uint64_t sub_2330BE668()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D648B8]) initWithDelegate:0 clientType:1];
  v0[3] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[4] = v3;
    *(v3 + 16) = v2;
    v4 = *(MEMORY[0x277D85A40] + 4);
    v5 = swift_task_alloc();
    v0[5] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE1F8, &qword_2330F5B40);
    *v5 = v0;
    v5[1] = sub_2330BE7F4;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x29286E616373, 0xE600000000000000, sub_2330BEA9C, v3, v6);
  }

  else
  {
    sub_2330BE9F4();
    swift_allocError();
    *v7 = 2;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2330BE7F4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_2330BE978;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_2330BE910;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2330BE910()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2330BE978()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);
  v3 = *(v0 + 8);

  return v3();
}

void sub_2330BE9E4(id a1)
{
  if (a1 >= 6)
  {
  }
}

unint64_t sub_2330BE9F4()
{
  result = qword_27DDDE290;
  if (!qword_27DDDE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE290);
  }

  return result;
}

uint64_t sub_2330BEAA4(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE200, &qword_2330F5B48) - 8) + 80);

  return sub_2330BE4A8(a1, a2);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2330BEB48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE208, &unk_2330F5B58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2330BEBB8()
{
  result = qword_27DDDE210;
  if (!qword_27DDDE210)
  {
    sub_2330F1EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE210);
  }

  return result;
}

uint64_t sub_2330BEC10()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_233088E00;

  return sub_2330B9D70(v0);
}

uint64_t sub_2330BECA0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2330877C8;

  return sub_2330BA1B0(a1, a2, v2);
}

uint64_t sub_2330BED48(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233088E00;

  return sub_2330BAF38(a1, v5);
}

uint64_t sub_2330BEDFC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_233088E00;

  return sub_2330BB034(v0);
}

uint64_t sub_2330BEE8C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_233088E00;

  return sub_2330BB4C8(a1, a2, v2);
}

uint64_t DeviceFallbackProviding.fetchDevicesWithFallback(authKitCoordinator:cloudKitAccountCoordinator:deviceCloudKitCoordinator:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a2;
  v6[13] = a4;
  v6[16] = *a3;
  return MEMORY[0x2822009F8](sub_2330BEF70, 0, 0);
}

uint64_t sub_2330BEF70()
{
  v1 = v0[16];
  v0[5] = &type metadata for AuthKitCoordinator;
  v0[6] = &off_28486A258;
  v2 = sub_2330B7638();
  v0[10] = &type metadata for DeviceCloudKitCoordinator;
  v0[11] = &off_284869F80;
  v0[7] = v1;

  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_2330BF064;
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];

  return sub_2330BF230((v0 + 2), v6, v2, (v0 + 7), v7, v4);
}

uint64_t sub_2330BF064()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
    v5 = *(v4 + 8);

    __asm { BRAA            X2, X16 }
  }

  return MEMORY[0x2822009F8](sub_2330BF1C4, 0, 0);
}

uint64_t sub_2330BF1C4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[18];

  return v1();
}

uint64_t sub_2330BF230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE78, &qword_2330F4AF0) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v10 = sub_2330F2370();
  v7[10] = v10;
  v11 = *(v10 - 8);
  v7[11] = v11;
  v12 = *(v11 + 64) + 15;
  v7[12] = swift_task_alloc();
  swift_getObjectType();
  v13 = *(a3 + 8);
  v15 = sub_2330F2840();

  return MEMORY[0x2822009F8](sub_2330BF360, v15, v14);
}

uint64_t sub_2330BF388()
{
  v16 = v0;
  if (*(v0 + 144))
  {
    if (*(v0 + 144) == 1)
    {
      __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
      v1 = swift_task_alloc();
      *(v0 + 120) = v1;
      *v1 = v0;
      v1[1] = sub_2330BF938;

      return DeviceCloudKitCoordinator.fetchDevices()();
    }

    else
    {
      if (qword_2814EAD80 != -1)
      {
        swift_once();
      }

      v5 = sub_2330F23C0();
      __swift_project_value_buffer(v5, qword_2814EBD80);
      v6 = sub_2330F23A0();
      v7 = sub_2330F2980();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = *(v0 + 48);
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v15 = v10;
        *v9 = 136315138;
        v11 = sub_2330F2F30();
        v13 = sub_233098F44(v11, v12, &v15);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_233084000, v6, v7, "%s Manatee unavailable; fetching devices from AuthKit", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x23839A490](v10, -1, -1);
        MEMORY[0x23839A490](v9, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
      v14 = swift_task_alloc();
      *(v0 + 128) = v14;
      *v14 = v0;
      v14[1] = sub_2330BFA80;

      return sub_23309B4C0(0);
    }
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_2330BF65C;
    v4 = *(v0 + 24);

    return sub_23309A05C();
  }
}

uint64_t sub_2330BF65C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[12];
    v6 = v2[9];

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v2[14] = v9;
    *v9 = v4;
    v9[1] = sub_2330BF7F0;
    v10 = v2[7];
    v11 = v2[8];
    v12 = v2[5];
    v13 = v2[6];
    v14 = v2[3];
    v15 = v2[4];
    v16 = v2[2];

    return sub_2330BF230(v16, v14, v15, v12, v13, v10);
  }
}

uint64_t sub_2330BF7F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;

  v7 = *(v4 + 96);
  v8 = *(v4 + 72);

  v10 = *(v6 + 8);
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

uint64_t sub_2330BF938(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;

  v7 = *(v4 + 96);
  v8 = *(v4 + 72);

  v10 = *(v6 + 8);
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

uint64_t sub_2330BFA80(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v5 = *v2;
  *(*v2 + 136) = a1;

  if (v1)
  {
    v6 = *(v3 + 96);
    v7 = *(v3 + 72);

    v8 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2330BFBDC, 0, 0);
}

uint64_t sub_2330BFBDC()
{
  v1 = v0[17];
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[17]; v2; i = v0[17])
  {
    v4 = 0;
    v5 = v0[11];
    v24 = v1 & 0xFFFFFFFFFFFFFF8;
    v25 = v1 & 0xC000000000000001;
    v23 = i + 32;
    v1 = v5 + 48;
    v6 = (v5 + 32);
    v7 = MEMORY[0x277D84F90];
    v22 = v2;
    while (v25)
    {
      v8 = MEMORY[0x238399A10](v4, v0[17]);
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_19;
      }

LABEL_9:
      v11 = v0[9];
      v10 = v0[10];
      sub_2330B088C(v8, v11);
      if ((*v1)(v11, 1, v10) == 1)
      {
        sub_2330B6118(v0[9]);
      }

      else
      {
        v12 = *v6;
        (*v6)(v0[12], v0[9], v0[10]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_233098870(0, *(v7 + 2) + 1, 1, v7);
        }

        v14 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v14 >= v13 >> 1)
        {
          v7 = sub_233098870(v13 > 1, v14 + 1, 1, v7);
        }

        v15 = v0[12];
        v16 = v0[10];
        *(v7 + 2) = v14 + 1;
        v12(&v7[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14], v15, v16);
        v2 = v22;
      }

      ++v4;
      if (v9 == v2)
      {
        v17 = v0[17];
        goto LABEL_23;
      }
    }

    if (v4 >= *(v24 + 16))
    {
      goto LABEL_20;
    }

    v8 = *(v23 + 8 * v4);
    v9 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v2 = sub_2330F2CB0();
  }

  v7 = MEMORY[0x277D84F90];
LABEL_23:

  v18 = v0[12];
  v19 = v0[9];

  v20 = v0[1];

  return v20(v7);
}

uint64_t sub_2330BFF60()
{
  v0 = sub_2330F23C0();
  __swift_allocate_value_buffer(v0, qword_2814EBDC8);
  __swift_project_value_buffer(v0, qword_2814EBDC8);
  return sub_2330F23B0();
}

uint64_t sub_2330BFFE0()
{
  v0 = sub_2330F23C0();
  __swift_allocate_value_buffer(v0, qword_2814EBDE0);
  __swift_project_value_buffer(v0, qword_2814EBDE0);
  return sub_2330F23B0();
}

uint64_t sub_2330C00C8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2330F23C0();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_2330F23B0();
}

void sub_2330C0140(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = sub_2330C025C(a1, a2, a3, a4);
  v6 = v5;
  oslog = sub_2330F23A0();
  v7 = sub_2330F2980();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136446210;
    v10 = sub_233098F44(v4, v6, &v12);

    *(v8 + 4) = v10;
    _os_log_impl(&dword_233084000, oslog, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x23839A490](v9, -1, -1);
    MEMORY[0x23839A490](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2330C025C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_2330C04B8();
  v8 = (sub_2330F2B10() + 16);
  if (*v8)
  {
    v9 = &v8[2 * *v8];
    a1 = *v9;
    a2 = v9[1];
  }

  else
  {
  }

  sub_2330C050C(46, 0xE100000000000000, a1, a2);
  v10 = sub_2330F2780();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = MEMORY[0x238399480](v10, v12, v14, v16);
  v19 = v18;

  sub_2330C050C(40, 0xE100000000000000, a3, a4);
  v20 = sub_2330F2780();
  v21 = MEMORY[0x238399480](v20);
  v23 = v22;

  v24 = pthread_self();
  pthread_mach_thread_np(v24);
  v25 = sub_2330F2D80();
  MEMORY[0x2383994D0](v25);

  MEMORY[0x2383994D0](8285, 0xE200000000000000);
  MEMORY[0x2383994D0](v17, v19);

  MEMORY[0x2383994D0](14906, 0xE200000000000000);
  MEMORY[0x2383994D0](v21, v23);

  return 91;
}

unint64_t sub_2330C04B8()
{
  result = qword_2814EAD50;
  if (!qword_2814EAD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814EAD50);
  }

  return result;
}

unint64_t sub_2330C050C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_2330F2760() != a1 || v9 != a2)
  {
    v10 = sub_2330F2DC0();

    if (v10)
    {
      return v8;
    }

    v8 = sub_2330F26B0();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_2330C060C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE240, &qword_2330F5CE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2330C0BD8();
  sub_2330F2EE0();
  v12[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE228, &qword_2330F5CE0);
  sub_2330C0C80(&qword_27DDDE248, sub_2330C0D04);
  sub_2330F2D60();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_2330C07A0()
{
  sub_2330F2E80();
  sub_2330F26A0();
  return sub_2330F2EB0();
}

uint64_t sub_2330C0814()
{
  sub_2330F2E80();
  sub_2330F26A0();
  return sub_2330F2EB0();
}

uint64_t sub_2330C0868@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2330F2D10();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2330C08F8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2330F2D10();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2330C095C(uint64_t a1)
{
  v2 = sub_2330C0BD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2330C0998(uint64_t a1)
{
  v2 = sub_2330C0BD8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2330C09D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2330C0A1C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_2330C0A1C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE218, &qword_2330F5CD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2330C0BD8();
  sub_2330F2ED0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE228, &qword_2330F5CE0);
    sub_2330C0C80(&qword_27DDDE230, sub_2330C0C2C);
    sub_2330F2D30();
    (*(v4 + 8))(v8, v3);
    v10 = v12[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v10;
}

unint64_t sub_2330C0BD8()
{
  result = qword_27DDDE220;
  if (!qword_27DDDE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE220);
  }

  return result;
}

unint64_t sub_2330C0C2C()
{
  result = qword_27DDDE238;
  if (!qword_27DDDE238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE238);
  }

  return result;
}

uint64_t sub_2330C0C80(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDDE228, &qword_2330F5CE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2330C0D04()
{
  result = qword_27DDDE250;
  if (!qword_27DDDE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE250);
  }

  return result;
}

unint64_t sub_2330C0D6C()
{
  result = qword_27DDDE258;
  if (!qword_27DDDE258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE258);
  }

  return result;
}

unint64_t sub_2330C0DC4()
{
  result = qword_27DDDE260;
  if (!qword_27DDDE260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE260);
  }

  return result;
}

unint64_t sub_2330C0E1C()
{
  result = qword_27DDDE268;
  if (!qword_27DDDE268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE268);
  }

  return result;
}

uint64_t static CloudKitUtilities.fetchDeviceIDFromContainer()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330C0F10;

  return sub_2330C3EB4();
}

uint64_t sub_2330C0F10(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

CKRecord __swiftcall SoftwareUpdateInfo.makeRecord(deviceID:)(Swift::String deviceID)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[3];
  v5 = v1[5];
  v38 = v1[6];
  v39 = v1[2];
  v37 = v1[7];
  v35 = v1[9];
  v36 = v1[8];
  v33 = v1[4];
  v34 = v1[10];
  v31 = v1[12];
  v32 = v1[11];
  v29 = v1[14];
  v30 = v1[13];
  v26 = v1[16];
  v27 = v1[17];
  v28 = v1[15];
  v25 = v1[19];
  v20 = v1[20];
  v21 = v1[21];
  v22 = v1[18];
  sub_233099620(0, &qword_2814EAC90, 0x277CBC5F8);
  v6 = *MEMORY[0x277CBBF28];
  sub_2330F25F0();
  v7 = sub_2330F2990();
  sub_233099620(0, &qword_27DDDDE80, 0x277CBC5D0);

  v24 = v7;
  v8 = sub_2330F2920();
  sub_233099620(0, &qword_27DDDDFA0, 0x277CBC5A0);
  v23 = v8;
  v9 = sub_2330F2A90();
  v10 = [v9 encryptedValues];
  swift_getObjectType();

  sub_2330F2A30();
  swift_unknownObjectRelease();
  v11 = [v9 encryptedValues];
  swift_getObjectType();

  sub_2330F2A30();
  swift_unknownObjectRelease();
  v12 = [v9 encryptedValues];
  swift_getObjectType();

  sub_2330F2A30();
  swift_unknownObjectRelease();
  v13 = [v9 encryptedValues];
  swift_getObjectType();

  sub_2330F2A30();
  swift_unknownObjectRelease();
  v14 = [v9 encryptedValues];
  swift_getObjectType();

  sub_2330F2A30();
  swift_unknownObjectRelease();
  v15 = [v9 encryptedValues];
  swift_getObjectType();

  sub_2330F2A30();
  swift_unknownObjectRelease();
  v16 = [v9 encryptedValues];
  swift_getObjectType();

  sub_2330F2A30();
  swift_unknownObjectRelease();
  v17 = [v9 encryptedValues];
  swift_getObjectType();

  sub_2330F2A30();
  swift_unknownObjectRelease();
  v18 = [v9 &off_2789C29C8 + 1];
  swift_getObjectType();
  sub_2330F2A30();
  swift_unknownObjectRelease();
  if (v27 >> 60 == 15)
  {
    sub_2330F2AC0();
  }

  else
  {
    sub_2330B4238(v26, v27);
    sub_2330C2D18(v26, v27);
    sub_2330F2AC0();
    sub_2330B5294(v26, v27);
  }

  if (v25 >> 60 == 15)
  {
    sub_2330F2AC0();
  }

  else
  {
    sub_2330B4238(v22, v25);
    sub_2330C2D18(v22, v25);
    sub_2330F2AC0();
    sub_2330B5294(v22, v25);
  }

  if (v21 >> 60 == 15)
  {
    sub_2330F2AC0();
  }

  else
  {
    sub_2330B4238(v20, v21);
    sub_2330C2D18(v20, v21);
    sub_2330F2AC0();

    sub_2330B5294(v20, v21);
  }

  return v9;
}

uint64_t static CloudKitUtilities.modifySoftwareUpdateInfoRecord(record:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233088E00;

  return sub_2330C4ED0(a1);
}

uint64_t static CloudKitUtilities.deleteAllSoftwareUpdateInfoRecords()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_233088E00;

  return sub_2330C5C7C();
}

uint64_t static CloudKitUtilities.deleteSoftwareUpdateInfoRecord(serialNumber:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2330C1A30;

  return sub_2330C62FC(a1, a2);
}

uint64_t sub_2330C1A30(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x2822009F8](sub_2330C1B30, 0, 0);
}

uint64_t sub_2330C1B30()
{
  v1 = v0[3];
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDFD0, &qword_2330F5BD0);
    v2 = swift_allocObject();
    v0[4] = v2;
    *(v2 + 16) = xmmword_2330F4D50;
    *(v2 + 32) = [v1 recordID];
    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_2330C1C64;

    return sub_2330C573C(v2);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2330C1C64()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_2330AB0C0;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_2330C1D80;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2330C1D80()
{
  v1 = *(v0 + 8);

  return v1();
}

void SoftwareUpdateInfo.init(record:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2330F1DD0();
  v118 = *(v4 - 8);
  v5 = *(v118 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v116 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v117 = &v98 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v98 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v98 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v98 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v98 - v25;
  if (sub_2330F2AA0() == 0xD000000000000012 && 0x80000002330F7DA0 == v27)
  {

LABEL_5:
    v29 = [a1 encryptedValues];
    v30 = sub_2330F25C0();
    v31 = [v29 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (!v31)
    {
      goto LABEL_42;
    }

    v119 = v31;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE270, &qword_2330F4C70);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_42;
    }

    v115 = v32;
    v113 = v4;
    v33 = *(&v120[0] + 1);
    v112 = *&v120[0];
    v34 = [a1 encryptedValues];
    v35 = sub_2330F25C0();
    v36 = [v34 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (!v36)
    {
      goto LABEL_41;
    }

    v114 = v33;
    v119 = v36;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_39;
    }

    v37 = *(&v120[0] + 1);
    v110 = *&v120[0];
    v38 = [a1 encryptedValues];
    v39 = sub_2330F25C0();
    v40 = [v38 objectForKeyedSubscript_];
    swift_unknownObjectRelease();

    if (v40)
    {
      v111 = v37;
      v119 = v40;
      if (swift_dynamicCast())
      {
        v41 = *(&v120[0] + 1);
        v108 = *&v120[0];
        v42 = [a1 encryptedValues];
        v43 = sub_2330F25C0();
        v44 = [v42 objectForKeyedSubscript_];
        swift_unknownObjectRelease();

        if (v44)
        {
          v109 = v41;
          v119 = v44;
          if (swift_dynamicCast())
          {
            v45 = *(&v120[0] + 1);
            v106 = *&v120[0];
            v46 = [a1 encryptedValues];
            v47 = sub_2330F25C0();
            v48 = [v46 objectForKeyedSubscript_];
            swift_unknownObjectRelease();

            if (v48)
            {
              v107 = v45;
              v119 = v48;
              if (swift_dynamicCast())
              {
                v49 = *(&v120[0] + 1);
                v104 = *&v120[0];
                v50 = [a1 encryptedValues];
                v51 = sub_2330F25C0();
                v52 = [v50 objectForKeyedSubscript_];
                swift_unknownObjectRelease();

                if (v52)
                {
                  v105 = v49;
                  v119 = v52;
                  if (swift_dynamicCast())
                  {
                    v53 = *(&v120[0] + 1);
                    v103 = *&v120[0];
                    v54 = [a1 encryptedValues];
                    v55 = sub_2330F25C0();
                    v56 = [v54 objectForKeyedSubscript_];
                    swift_unknownObjectRelease();

                    if (v56)
                    {
                      v119 = v56;
                      if (swift_dynamicCast())
                      {
                        v102 = v120[0];
                        v57 = [a1 encryptedValues];
                        v58 = sub_2330F25C0();
                        v59 = [v57 objectForKeyedSubscript_];
                        swift_unknownObjectRelease();

                        if (v59)
                        {
                          v119 = v59;
                          if ((swift_dynamicCast() & 1) == 0)
                          {

                            goto LABEL_38;
                          }

                          v101 = v53;
                          v100 = v120[0];
                          v60 = [a1 encryptedValues];
                          v61 = sub_2330F25C0();
                          v62 = [v60 objectForKeyedSubscript_];
                          swift_unknownObjectRelease();

                          if (v62)
                          {
                            *&v120[0] = v62;
                            if (swift_dynamicCast())
                            {
                              if (v119 == 1)
                              {
                                if (MEMORY[0x2383998B0](0x67616D496E6F6369, 0xED00006174614465))
                                {
                                  objc_opt_self();
                                  v63 = swift_dynamicCastObjCClass();
                                  if (v63)
                                  {
                                    v64 = [v63 fileURL];
                                    if (v64)
                                    {
                                      v65 = v64;
                                      sub_2330F1DA0();

                                      (*(v118 + 32))(v26, v23, v113);
                                      v115 = sub_2330F1DE0();
                                      v99 = v66;
                                      (*(v118 + 8))(v26, v113);
                                      swift_unknownObjectRelease();
                                      goto LABEL_52;
                                    }
                                  }

                                  swift_unknownObjectRelease();
                                }

                                v115 = 0;
                                v99 = 0xF000000000000000;
LABEL_52:
                                if (MEMORY[0x2383998B0](0x7972616D6D7573, 0xE700000000000000))
                                {
                                  objc_opt_self();
                                  v78 = swift_dynamicCastObjCClass();
                                  if (v78)
                                  {
                                    v79 = [v78 fileURL];
                                    if (v79)
                                    {
                                      sub_2330F1DA0();

                                      (*(v118 + 32))(v19, v15, v113);
                                      v79 = sub_2330F1DE0();
                                      v94 = v93;
                                      (*(v118 + 8))(v19, v113);
                                      swift_unknownObjectRelease();
                                      goto LABEL_59;
                                    }

                                    swift_unknownObjectRelease();
LABEL_58:
                                    v94 = 0xF000000000000000;
LABEL_59:
                                    if (MEMORY[0x2383998B0](0x4E657361656C6572, 0xEC0000007365746FLL))
                                    {
                                      objc_opt_self();
                                      v80 = swift_dynamicCastObjCClass();
                                      if (v80)
                                      {
                                        v81 = [v80 fileURL];
                                        if (v81)
                                        {
                                          v82 = v81;
                                          v83 = v116;
                                          sub_2330F1DA0();

                                          (*(v118 + 32))(v117, v83, v113);
                                          v95 = sub_2330F1DE0();
                                          v97 = v96;
                                          (*(v118 + 8))(v117, v113);

                                          swift_unknownObjectRelease();
LABEL_66:
                                          v84 = v114;
                                          *a2 = v112;
                                          a2[1] = v84;
                                          v85 = v111;
                                          a2[2] = v110;
                                          a2[3] = v85;
                                          v86 = v109;
                                          a2[4] = v108;
                                          a2[5] = v86;
                                          v87 = v107;
                                          a2[6] = v106;
                                          a2[7] = v87;
                                          v88 = v105;
                                          a2[8] = v104;
                                          a2[9] = v88;
                                          v89 = v101;
                                          a2[10] = v103;
                                          a2[11] = v89;
                                          v90 = *(&v102 + 1);
                                          a2[12] = v102;
                                          a2[13] = v90;
                                          v91 = *(&v100 + 1);
                                          a2[14] = v100;
                                          a2[15] = v91;
                                          v92 = v99;
                                          a2[16] = v115;
                                          a2[17] = v92;
                                          a2[18] = v79;
                                          a2[19] = v94;
                                          a2[20] = v95;
                                          a2[21] = v97;
                                          nullsub_1(a2);
                                          return;
                                        }
                                      }

                                      swift_unknownObjectRelease();
                                    }

                                    else
                                    {
                                    }

                                    v95 = 0;
                                    v97 = 0xF000000000000000;
                                    goto LABEL_66;
                                  }

                                  swift_unknownObjectRelease();
                                }

                                v79 = 0;
                                goto LABEL_58;
                              }

                              v67 = v121;
                              goto LABEL_40;
                            }
                          }
                        }

                        else
                        {
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_38:

LABEL_39:
    v67 = &v122;
LABEL_40:
    v68 = *(v67 - 32);
LABEL_41:

    goto LABEL_42;
  }

  v28 = sub_2330F2DC0();

  if (v28)
  {
    goto LABEL_5;
  }

LABEL_42:
  if (qword_27DDDDBE0 != -1)
  {
    swift_once();
  }

  v69 = sub_2330F23C0();
  __swift_project_value_buffer(v69, qword_27DDE18D8);
  v70 = sub_2330F23A0();
  v71 = sub_2330F2980();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_233084000, v70, v71, "Failed to create SoftareUpdateInfo from CKRecord", v72, 2u);
    MEMORY[0x23839A490](v72, -1, -1);
  }

  sub_2330C6F70(v120);
  v73 = v121[4];
  *(a2 + 8) = v121[3];
  *(a2 + 9) = v73;
  *(a2 + 10) = v121[5];
  v74 = v121[0];
  *(a2 + 4) = v120[4];
  *(a2 + 5) = v74;
  v75 = v121[2];
  *(a2 + 6) = v121[1];
  *(a2 + 7) = v75;
  v76 = v120[1];
  *a2 = v120[0];
  *(a2 + 1) = v76;
  v77 = v120[3];
  *(a2 + 2) = v120[2];
  *(a2 + 3) = v77;
}

id sub_2330C2D18(uint64_t a1, uint64_t a2)
{
  v24[1] = a2;
  v2 = sub_2330F1DD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = v24 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = v24 - v14;
  v16 = [objc_opt_self() defaultManager];
  v17 = [v16 temporaryDirectory];

  sub_2330F1DA0();
  v18 = v2;
  sub_2330F1D80();
  v19 = *(v3 + 8);
  v19(v8, v2);
  sub_2330F1D90();
  v19(v12, v2);
  sub_2330F1E10();
  v20 = objc_allocWithZone(MEMORY[0x277CBC190]);
  v21 = sub_2330F1D70();
  v22 = [v20 initWithFileURL_];

  v19(v15, v18);
  return v22;
}

uint64_t sub_2330C30D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE470, &qword_2330F46A0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = sub_2330F25F0();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x282200950](v4);
  }
}

uint64_t static CloudKitUtilities.fetchSoftwareUpdateInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 192) = a1;
  v6 = swift_task_alloc();
  *(v3 + 200) = v6;
  *v6 = v3;
  v6[1] = sub_2330C3248;

  return sub_2330C62FC(a2, a3);
}

uint64_t sub_2330C3248(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_2330C3348, 0, 0);
}

uint64_t sub_2330C3348()
{
  v19 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  if (v1)
  {
    SoftwareUpdateInfo.init(record:)(v1, v18);
    v3 = v18[9];
    v2[8] = v18[8];
    v2[9] = v3;
    v2[10] = v18[10];
    v4 = v18[5];
    v2[4] = v18[4];
    v2[5] = v4;
    v5 = v18[7];
    v2[6] = v18[6];
    v2[7] = v5;
    v6 = v18[1];
    *v2 = v18[0];
    v2[1] = v6;
    v7 = v18[3];
    v2[2] = v18[2];
    v2[3] = v7;
  }

  else
  {
    sub_2330C6F70((v0 + 16));
    v8 = *(v0 + 16);
    v9 = *(v0 + 48);
    v2[1] = *(v0 + 32);
    v2[2] = v9;
    *v2 = v8;
    v10 = *(v0 + 64);
    v11 = *(v0 + 80);
    v12 = *(v0 + 112);
    v2[5] = *(v0 + 96);
    v2[6] = v12;
    v2[3] = v10;
    v2[4] = v11;
    v13 = *(v0 + 128);
    v14 = *(v0 + 144);
    v15 = *(v0 + 176);
    v2[9] = *(v0 + 160);
    v2[10] = v15;
    v2[7] = v13;
    v2[8] = v14;
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2330C3438(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE2C8, &qword_2330F5F98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v12 - v6;
  if (qword_2814EB0F8 != -1)
  {
    swift_once();
  }

  v8 = *MEMORY[0x277CBBFC0];
  (*(v3 + 16))(v7, a1, v2);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  (*(v3 + 32))(v10 + v9, v7, v2);
  sub_2330F2900();
}

uint64_t sub_2330C35E0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
  }

  else
  {
    v4 = 0;
    v6 = MEMORY[0x277D84F90];
    v16 = MEMORY[0x277D84F90];
    v7 = a1[2];
    v8 = a1 + 6;
LABEL_4:
    v9 = &v8[3 * v4];
    while (v7 != v4)
    {
      if (v4 >= v7)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        if (!sub_2330F2CB0())
        {
          goto LABEL_18;
        }

LABEL_14:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE2C8, &qword_2330F5F98);
        return sub_2330F2860();
      }

      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_16;
      }

      v11 = *v9;
      v9 += 3;
      ++v4;
      if ((v11 & 1) == 0)
      {
        v12 = *(v9 - 4);
        MEMORY[0x2383995B0]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2330F27F0();
        }

        sub_2330F2810();
        v6 = v16;
        v4 = v10;
        goto LABEL_4;
      }
    }

    if (v6 >> 62)
    {
      goto LABEL_17;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_18:

    sub_2330BE9F4();
    swift_allocError();
    *v14 = 3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE2C8, &qword_2330F5F98);
  return sub_2330F2850();
}

uint64_t static CloudKitUtilities.registerForSoftwareUpdateInfoPushNotifications()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330877C8;

  return sub_2330C459C();
}

uint64_t static CloudKitUtilities.deleteSoftwareUpdateInfoRecord(recordIDs:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330877C8;

  return sub_2330C573C(a1);
}

id sub_2330C38E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE288, &qword_2330F5F78);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v23 - v12;
  (*(v9 + 16))(&v23 - v12, a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v13, v8);
  sub_2330F2A50();
  if (qword_2814EB0F8 != -1)
  {
    swift_once();
  }

  v16 = qword_2814EB100;
  if (qword_27DDDDBE0 != -1)
  {
    swift_once();
  }

  v17 = sub_2330F23C0();
  __swift_project_value_buffer(v17, qword_27DDE18D8);
  v18 = sub_2330F23A0();
  v19 = sub_2330F2980();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_233098F44(0xD000000000000011, 0x80000002330F8380, &v24);
    _os_log_impl(&dword_233084000, v18, v19, a5, v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x23839A490](v21, -1, -1);
    MEMORY[0x23839A490](v20, -1, -1);
  }

  return [v16 addOperation_];
}

uint64_t sub_2330C3B80(void *a1, char a2, uint64_t a3, const char *a4, const char *a5)
{
  if (qword_27DDDDBE0 != -1)
  {
    swift_once();
  }

  v9 = sub_2330F23C0();
  __swift_project_value_buffer(v9, qword_27DDE18D8);
  v10 = sub_2330F23A0();
  v11 = sub_2330F2980();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_233098F44(0xD000000000000011, 0x80000002330F8380, &v22);
    _os_log_impl(&dword_233084000, v10, v11, a4, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x23839A490](v13, -1, -1);
    MEMORY[0x23839A490](v12, -1, -1);
  }

  if (a2)
  {
    sub_2330BE9F4();
    v14 = swift_allocError();
    *v15 = a1;
    v22 = v14;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE288, &qword_2330F5F78);
    return sub_2330F2850();
  }

  else
  {
    v18 = sub_2330F23A0();
    v19 = sub_2330F2980();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_233098F44(0xD000000000000011, 0x80000002330F8380, &v22);
      _os_log_impl(&dword_233084000, v18, v19, a5, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x23839A490](v21, -1, -1);
      MEMORY[0x23839A490](v20, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE288, &qword_2330F5F78);
    return sub_2330F2860();
  }
}

uint64_t sub_2330C3E18(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2330F26C0();

    return sub_2330F2780();
  }

  return result;
}

uint64_t sub_2330C3ED0()
{
  if (qword_2814EB0E0 != -1)
  {
    swift_once();
  }

  v1 = qword_2814EB0E8;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2330C401C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE2D0, &unk_2330F5FA0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2330C30D4;
  v0[13] = &block_descriptor_7;
  v0[14] = v2;
  [v1 fetchCurrentDeviceIDWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2330C401C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_2330C43F8;
  }

  else
  {
    v3 = sub_2330C412C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2330C412C()
{
  v28 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    if (qword_27DDDDBE0 != -1)
    {
      swift_once();
    }

    v4 = sub_2330F23C0();
    __swift_project_value_buffer(v4, qword_27DDE18D8);

    v5 = sub_2330F23A0();
    v6 = sub_2330F2980();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v7 = 136315138;

      v8 = sub_2330C3E18(10);
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = MEMORY[0x238399480](v8, v10, v12, v14);
      v17 = v16;

      v18 = sub_233098F44(v15, v17, &v27);

      *(v7 + 4) = v18;
      _os_log_impl(&dword_233084000, v5, v6, "fetched currentDeviceID successfully, updating CKRecord with: %s...", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x23839A490](v26, -1, -1);
      MEMORY[0x23839A490](v7, -1, -1);
    }
  }

  else
  {
    v19 = v0[19];

    if (qword_27DDDDBE0 != -1)
    {
      swift_once();
    }

    v20 = sub_2330F23C0();
    __swift_project_value_buffer(v20, qword_27DDE18D8);
    v21 = sub_2330F23A0();
    v22 = sub_2330F2960();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_233084000, v21, v22, "currentDeviceID returned an empty string", v23, 2u);
      MEMORY[0x23839A490](v23, -1, -1);
    }

    v2 = 0;
    v1 = 0;
  }

  v24 = v0[1];

  return v24(v2, v1);
}

uint64_t sub_2330C43F8()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  if (qword_27DDDDBE0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 160);
  v3 = sub_2330F23C0();
  __swift_project_value_buffer(v3, qword_27DDE18D8);
  v4 = v2;
  v5 = sub_2330F23A0();
  v6 = sub_2330F2960();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 160);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_233084000, v5, v6, "Failed to get currentDeviceID from container with error: %@", v9, 0xCu);
    sub_23309AE8C(v10);
    MEMORY[0x23839A490](v10, -1, -1);
    MEMORY[0x23839A490](v9, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13(0, 0);
}

uint64_t sub_2330C459C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2330C4654;

  return sub_2330B7964(0xD000000000000012, 0x80000002330F7DA0);
}

uint64_t sub_2330C4654(void *a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  *(v5 + 24) = v1;

  if (!v1)
  {

    v6 = swift_task_alloc();
    *(v5 + 32) = v6;
    *v6 = v5;
    v6[1] = sub_2330C47FC;

    JUMPOUT(0x2330B800CLL);
  }

  return MEMORY[0x2822009F8](sub_2330C4910, 0, 0);
}

uint64_t sub_2330C47FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v7 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v5 = sub_2330C4CE0;
  }

  else
  {
    v5 = sub_2330C4B00;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2330C4910()
{
  v14 = v0;
  v1 = *(v0 + 24);
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDE0);
  v3 = v1;
  v4 = sub_2330F23A0();
  v5 = sub_2330F2960();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_233098F44(0xD000000000000011, 0x80000002330F8380, &v13);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_233084000, v4, v5, "%s failed to register for CloudKit subscription: %@", v6, 0x16u);
    sub_23309AE8C(v7);
    MEMORY[0x23839A490](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x23839A490](v8, -1, -1);
    MEMORY[0x23839A490](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2330C4B00()
{
  v15 = v0;
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDE0);
  v3 = v1;
  v4 = sub_2330F23A0();
  v5 = sub_2330F2980();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_233098F44(0xD000000000000011, 0x80000002330F8380, &v14);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v7;
    *v9 = v7;
    v11 = v7;
    _os_log_impl(&dword_233084000, v4, v5, "%s registered CloudKit subscription %@", v8, 0x16u);
    sub_23309AE8C(v9);
    MEMORY[0x23839A490](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x23839A490](v10, -1, -1);
    MEMORY[0x23839A490](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2330C4CE0()
{
  v14 = v0;
  v1 = *(v0 + 48);
  if (qword_2814EADA8 != -1)
  {
    swift_once();
  }

  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDE0);
  v3 = v1;
  v4 = sub_2330F23A0();
  v5 = sub_2330F2960();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_233098F44(0xD000000000000011, 0x80000002330F8380, &v13);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_233084000, v4, v5, "%s failed to register for CloudKit subscription: %@", v6, 0x16u);
    sub_23309AE8C(v7);
    MEMORY[0x23839A490](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x23839A490](v8, -1, -1);
    MEMORY[0x23839A490](v6, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2330C4ED0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2330C4F74;

  return sub_2330C459C();
}

uint64_t sub_2330C4F74()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2330C5070, 0, 0);
}

uint64_t sub_2330C5070()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  v0[4] = v1;
  if (qword_2814EB0E0 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  [v1 setContainer_];
  sub_233099620(0, &qword_27DDDE280, 0x277CBC4A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDFD0, &qword_2330F5BD0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2330F4D50;
  *(v3 + 32) = v2;
  v4 = v2;
  v5 = sub_2330F2A60();
  v0[5] = v5;
  [v5 setSavePolicy_];
  [v5 setConfiguration_];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *(v6 + 16) = v5;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_2330C525C;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_2330C525C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2330C7340;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2330C7344;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2330C5398()
{
  v1 = v0[3];
  sub_233099620(0, &qword_2814EAC90, 0x277CBC5F8);
  v2 = *MEMORY[0x277CBBF28];
  sub_2330F25F0();
  v3 = sub_2330F2990();
  v0[4] = v3;
  sub_233099620(0, &qword_2814EAC08, 0x277CBC578);
  v4 = v1;
  v5 = sub_2330F2A80();
  v0[5] = v5;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v3;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  v0[7] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE2C0, &qword_2330F5F90);
  *v8 = v0;
  v8[1] = sub_2330C5540;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000022, 0x80000002330F83F0, sub_2330C711C, v6, v9);
}

uint64_t sub_2330C5540()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2330C56C8;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2330C565C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2330C565C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2330C56C8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  v3 = *(v0 + 8);
  v4 = *(v0 + 64);

  return v3();
}

uint64_t sub_2330C573C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2330C57E0;

  return sub_2330C459C();
}

uint64_t sub_2330C57E0()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2330C58DC, 0, 0);
}

uint64_t sub_2330C58DC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  v0[4] = v1;
  if (qword_2814EB0E0 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  [v1 setContainer_];
  sub_233099620(0, &qword_27DDDE280, 0x277CBC4A0);

  v3 = sub_2330F2A60();
  v0[5] = v3;
  [v3 setConfiguration_];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v3;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_2330C5A84;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD00000000000002ALL, 0x80000002330F83A0, sub_2330C7060, v4, v7);
}

uint64_t sub_2330C5A84()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2330C5C08;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2330C5BA0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2330C5BA0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2330C5C08()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);
  v4 = *(v0 + 64);

  return v3();
}

uint64_t sub_2330C5C98()
{
  v1 = [objc_opt_self() predicateWithValue_];
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_2330C5D54;

  return sub_2330C5378(v1);
}

uint64_t sub_2330C5D54(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  v7 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v5 = sub_2330C60AC;
  }

  else
  {
    v5 = sub_2330C5E68;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2330C5E68()
{
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v12 = *(v0 + 32);
    }

    v2 = sub_2330F2CB0();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:
    v13 = *(v0 + 32);

    v11 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x277D84F90];
  result = sub_2330F2C70();
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = *(v0 + 32) + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x238399A10](v4, *(v0 + 32));
    }

    else
    {
      v6 = *(v5 + 8 * v4);
    }

    v7 = v6;
    ++v4;
    v8 = [v6 recordID];

    sub_2330F2C50();
    v9 = *(v16 + 16);
    sub_2330F2C80();
    sub_2330F2C90();
    sub_2330F2C60();
  }

  while (v2 != v4);
  v10 = *(v0 + 32);

  v11 = v16;
LABEL_14:
  *(v0 + 48) = v11;
  if (v11 >> 62)
  {
    if (sub_2330F2CB0())
    {
      goto LABEL_16;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    v14 = swift_task_alloc();
    *(v0 + 56) = v14;
    *v14 = v0;
    v14[1] = sub_2330C6110;

    return sub_2330C573C(v11);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2330C60AC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2330C6110()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2330C6290;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2330C622C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2330C622C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2330C6290()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = v0[8];
  v4 = v0[1];

  return v4();
}

uint64_t sub_2330C62FC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_2330F1EB0();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330C63BC, 0, 0);
}

uint64_t sub_2330C63BC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDFD0, &qword_2330F5BD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2330F4D50;
  sub_233099620(0, &qword_27DDDE298, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE2A0, &qword_2330F5F80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2330F46B0;
  sub_2330F1E70();
  v6 = sub_2330F1E50();
  (*(v2 + 8))(v1, v3);
  *(v5 + 56) = sub_233099620(0, &qword_27DDDE2A8, 0x277CBEAA8);
  *(v5 + 64) = sub_2330C70B4();
  *(v5 + 32) = v6;
  *(v4 + 32) = sub_2330F2930();
  v7 = sub_2330F27C0();

  v8 = [objc_opt_self() andPredicateWithSubpredicates_];
  v0[10] = v8;

  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_2330C65B4;

  return sub_2330C5378(v8);
}

uint64_t sub_2330C65B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v7 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v5 = sub_2330C6ADC;
  }

  else
  {
    v5 = sub_2330C66C8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2330C66C8()
{
  if (qword_27DDDDBE0 != -1)
  {
LABEL_25:
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_27DDE18D8);
  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_233084000, v2, v3, "fetched records successfully, will be matching against SN", v6, 2u);
    MEMORY[0x23839A490](v6, -1, -1);
  }

  v7 = v0[12];
  v26 = v1;
  if (v7 >> 62)
  {
    v8 = sub_2330F2CB0();
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_27:

    if (qword_27DDDDBE0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v26, qword_27DDE18D8);
    v19 = sub_2330F23A0();
    v20 = sub_2330F2980();
    v13 = 0;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = "No matching records found";
LABEL_31:
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_233084000, v19, v20, v21, v22, 2u);
      MEMORY[0x23839A490](v22, -1, -1);
    }

    goto LABEL_32;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_27;
  }

LABEL_6:
  v9 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x238399A10](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v12 = *(v7 + 8 * v9 + 32);
    }

    v13 = v12;
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v15 = [v12 encryptedValues];
    v16 = sub_2330F25C0();
    v17 = [v15 objectForKeyedSubscript_];

    swift_unknownObjectRelease();
    if (v17)
    {
      v0[4] = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE270, &qword_2330F4C70);
      if (swift_dynamicCast())
      {
        break;
      }
    }

LABEL_8:

    ++v9;
    if (v14 == v8)
    {
      goto LABEL_27;
    }
  }

  if (v0[2] != v0[5] || v0[3] != v0[6])
  {
    v10 = v0[3];
    v11 = sub_2330F2DC0();

    if (v11)
    {
      goto LABEL_19;
    }

    goto LABEL_8;
  }

LABEL_19:

  v18 = v26;
  if (qword_27DDDDBE0 != -1)
  {
    swift_once();
    v18 = v26;
  }

  __swift_project_value_buffer(v18, qword_27DDE18D8);
  v19 = sub_2330F23A0();
  v20 = sub_2330F2980();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = "matched a record successfully, updating softwareUpdateInfo";
    goto LABEL_31;
  }

LABEL_32:
  v23 = v0[9];

  v24 = v0[1];

  return v24(v13);
}

uint64_t sub_2330C6ADC()
{
  if (qword_27DDDDBE0 != -1)
  {
LABEL_26:
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_27DDE18D8);
  v3 = v1;
  v4 = sub_2330F23A0();
  v5 = sub_2330F2960();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  v31 = v2;
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_233084000, v4, v5, "Failed to get records from db with error: %@", v8, 0xCu);
    sub_23309AE8C(v9);
    MEMORY[0x23839A490](v9, -1, -1);
    MEMORY[0x23839A490](v8, -1, -1);
  }

  else
  {
  }

  v12 = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D84F90] >> 62;
  if (MEMORY[0x277D84F90] >> 62)
  {
    v13 = sub_2330F2CB0();
    if (v13)
    {
      goto LABEL_7;
    }

LABEL_28:

    if (qword_27DDDDBE0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v31, qword_27DDE18D8);
    v24 = sub_2330F23A0();
    v25 = sub_2330F2980();
    v18 = 0;
    if (os_log_type_enabled(v24, v25))
    {
      v26 = "No matching records found";
LABEL_32:
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_233084000, v24, v25, v26, v27, 2u);
      MEMORY[0x23839A490](v27, -1, -1);
    }

    goto LABEL_33;
  }

  v13 = *((MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_28;
  }

LABEL_7:
  v14 = 0;
  while (1)
  {
    if (v32)
    {
      v17 = MEMORY[0x238399A10](v14, v12);
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v17 = *(v12 + 8 * v14 + 32);
    }

    v18 = v17;
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v20 = [v17 encryptedValues];
    v21 = sub_2330F25C0();
    v22 = [v20 objectForKeyedSubscript_];

    swift_unknownObjectRelease();
    if (v22)
    {
      *(v0 + 32) = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE270, &qword_2330F4C70);
      if (swift_dynamicCast())
      {
        break;
      }
    }

LABEL_9:

    ++v14;
    if (v19 == v13)
    {
      goto LABEL_28;
    }
  }

  if (*(v0 + 16) != *(v0 + 40) || *(v0 + 24) != *(v0 + 48))
  {
    v15 = *(v0 + 24);
    v16 = sub_2330F2DC0();

    if (v16)
    {
      goto LABEL_20;
    }

    goto LABEL_9;
  }

LABEL_20:

  v23 = v31;
  if (qword_27DDDDBE0 != -1)
  {
    swift_once();
    v23 = v31;
  }

  __swift_project_value_buffer(v23, qword_27DDE18D8);
  v24 = sub_2330F23A0();
  v25 = sub_2330F2980();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = "matched a record successfully, updating softwareUpdateInfo";
    goto LABEL_32;
  }

LABEL_33:
  v28 = *(v0 + 72);

  v29 = *(v0 + 8);

  return v29(v18);
}

double sub_2330C6F70(_OWORD *a1)
{
  result = 0.0;
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

uint64_t get_enum_tag_for_layout_string_15VisionCompanion18SoftwareUpdateInfoV0cD5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2330C6FA8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2330C7000(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

unint64_t sub_2330C70B4()
{
  result = qword_27DDDE2B0;
  if (!qword_27DDDE2B0)
  {
    sub_233099620(255, &qword_27DDDE2A8, 0x277CBEAA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE2B0);
  }

  return result;
}

uint64_t sub_2330C711C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2330C3438(a1);
}

uint64_t sub_2330C7124(void *a1, uint64_t a2, char a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE2C8, &qword_2330F5F98) - 8) + 80);

  return sub_2330C35E0(a1, a2, a3 & 1);
}

uint64_t objectdestroyTm_1(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

id sub_2330C7348(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_233099620(0, &qword_27DDDE038, 0x277D82BB8);
    v5 = sub_2330F2520();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_2330C73E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE78, &qword_2330F4AF0) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v8 = sub_2330F2370();
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  v10 = *(v9 + 64) + 15;
  v5[10] = swift_task_alloc();
  swift_getObjectType();
  v11 = *(a3 + 8);
  v13 = sub_2330F2840();

  return MEMORY[0x2822009F8](sub_2330C7508, v13, v12);
}

uint64_t sub_2330C7530()
{
  v12 = v0;
  if (*(v0 + 128))
  {
    if (*(v0 + 128) == 1)
    {
      __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
      v1 = swift_task_alloc();
      *(v0 + 96) = v1;
      *v1 = v0;
      v1[1] = sub_2330C7990;

      return DeviceCloudKitCoordinator.fetchDevices()();
    }

    else
    {
      if (qword_2814EAD80 != -1)
      {
        swift_once();
      }

      v5 = sub_2330F23C0();
      __swift_project_value_buffer(v5, qword_2814EBD80);
      v6 = sub_2330F23A0();
      v7 = sub_2330F2980();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v11 = v9;
        *v8 = 136315138;
        *(v8 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v11);
        _os_log_impl(&dword_233084000, v6, v7, "%s Manatee unavailable; fetching devices from AuthKit", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x23839A490](v9, -1, -1);
        MEMORY[0x23839A490](v8, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
      v10 = swift_task_alloc();
      *(v0 + 112) = v10;
      *v10 = v0;
      v10[1] = sub_2330C7C20;

      return sub_23309B4C0(0);
    }
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_2330C77EC;
    v4 = *(v0 + 24);

    return sub_23309A05C();
  }
}

uint64_t sub_2330C77EC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[10];
    v6 = v2[7];

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v2[13] = v9;
    *v9 = v4;
    v9[1] = sub_2330C7AD8;
    v10 = v2[5];
    v11 = v2[6];
    v12 = v2[3];
    v13 = v2[4];
    v14 = v2[2];

    return sub_2330C73E4(v14, v12, v13, v10, v11);
  }
}

uint64_t sub_2330C7990(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;

  v7 = *(v4 + 80);
  v8 = *(v4 + 56);

  v10 = *(v6 + 8);
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

uint64_t sub_2330C7AD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;

  v7 = *(v4 + 80);
  v8 = *(v4 + 56);

  v10 = *(v6 + 8);
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

uint64_t sub_2330C7C20(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v5 = *v2;
  *(*v2 + 120) = a1;

  if (v1)
  {
    v6 = *(v3 + 80);
    v7 = *(v3 + 56);

    v8 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2330C7D7C, 0, 0);
}

uint64_t sub_2330C7D7C()
{
  v1 = v0[15];
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[15]; v2; i = v0[15])
  {
    v4 = 0;
    v5 = v0[9];
    v24 = v1 & 0xFFFFFFFFFFFFFF8;
    v25 = v1 & 0xC000000000000001;
    v23 = i + 32;
    v1 = v5 + 48;
    v6 = (v5 + 32);
    v7 = MEMORY[0x277D84F90];
    v22 = v2;
    while (v25)
    {
      v8 = MEMORY[0x238399A10](v4, v0[15]);
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_19;
      }

LABEL_9:
      v11 = v0[7];
      v10 = v0[8];
      sub_2330B088C(v8, v11);
      if ((*v1)(v11, 1, v10) == 1)
      {
        sub_2330952BC(v0[7], &qword_27DDDDE78, &qword_2330F4AF0);
      }

      else
      {
        v12 = *v6;
        (*v6)(v0[10], v0[7], v0[8]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_233098870(0, *(v7 + 2) + 1, 1, v7);
        }

        v14 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v14 >= v13 >> 1)
        {
          v7 = sub_233098870(v13 > 1, v14 + 1, 1, v7);
        }

        v15 = v0[10];
        v16 = v0[8];
        *(v7 + 2) = v14 + 1;
        v12(&v7[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14], v15, v16);
        v2 = v22;
      }

      ++v4;
      if (v9 == v2)
      {
        v17 = v0[15];
        goto LABEL_23;
      }
    }

    if (v4 >= *(v24 + 16))
    {
      goto LABEL_20;
    }

    v8 = *(v23 + 8 * v4);
    v9 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v2 = sub_2330F2CB0();
  }

  v7 = MEMORY[0x277D84F90];
LABEL_23:

  v18 = v0[10];
  v19 = v0[7];

  v20 = v0[1];

  return v20(v7);
}

uint64_t sub_2330C7FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE78, &qword_2330F4AF0) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v9 = sub_2330F2370();
  v6[9] = v9;
  v10 = *(v9 - 8);
  v6[10] = v10;
  v11 = *(v10 + 64) + 15;
  v6[11] = swift_task_alloc();
  swift_getObjectType();
  v12 = *(a3 + 8);
  v14 = sub_2330F2840();

  return MEMORY[0x2822009F8](sub_2330C80FC, v14, v13);
}

uint64_t sub_2330C8124()
{
  v12 = v0;
  if (*(v0 + 136))
  {
    if (*(v0 + 136) == 1)
    {
      __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
      v1 = swift_task_alloc();
      *(v0 + 104) = v1;
      *v1 = v0;
      v1[1] = sub_2330C8584;

      return DeviceCloudKitCoordinator.fetchDevices()();
    }

    else
    {
      if (qword_2814EAD80 != -1)
      {
        swift_once();
      }

      v5 = sub_2330F23C0();
      __swift_project_value_buffer(v5, qword_2814EBD80);
      v6 = sub_2330F23A0();
      v7 = sub_2330F2980();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v11 = v9;
        *v8 = 136315138;
        *(v8 + 4) = sub_233098F44(0xD000000000000018, 0x80000002330F8550, &v11);
        _os_log_impl(&dword_233084000, v6, v7, "%s Manatee unavailable; fetching devices from AuthKit", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x23839A490](v9, -1, -1);
        MEMORY[0x23839A490](v8, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
      v10 = swift_task_alloc();
      *(v0 + 120) = v10;
      *v10 = v0;
      v10[1] = sub_2330C8814;

      return sub_23309B4C0(0);
    }
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_2330C83E0;
    v4 = *(v0 + 24);

    return sub_23309A05C();
  }
}

uint64_t sub_2330C83E0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[11];
    v6 = v2[8];

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v2[14] = v9;
    *v9 = v4;
    v9[1] = sub_2330C86CC;
    v10 = v2[6];
    v11 = v2[7];
    v12 = v2[4];
    v13 = v2[5];
    v14 = v2[3];
    v15 = v2[2];

    return sub_2330C7FDC(v15, v14, v12, v13, v10, v11);
  }
}

uint64_t sub_2330C8584(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;

  v7 = *(v4 + 88);
  v8 = *(v4 + 64);

  v10 = *(v6 + 8);
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

uint64_t sub_2330C86CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;

  v7 = *(v4 + 88);
  v8 = *(v4 + 64);

  v10 = *(v6 + 8);
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

uint64_t sub_2330C8814(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v5 = *v2;
  *(*v2 + 128) = a1;

  if (v1)
  {
    v6 = *(v3 + 88);
    v7 = *(v3 + 64);

    v8 = *(v5 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2330C8970, 0, 0);
}

uint64_t sub_2330C8970()
{
  v1 = v0[16];
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[16]; v2; i = v0[16])
  {
    v4 = 0;
    v5 = v0[10];
    v24 = v1 & 0xFFFFFFFFFFFFFF8;
    v25 = v1 & 0xC000000000000001;
    v23 = i + 32;
    v1 = v5 + 48;
    v6 = (v5 + 32);
    v7 = MEMORY[0x277D84F90];
    v22 = v2;
    while (v25)
    {
      v8 = MEMORY[0x238399A10](v4, v0[16]);
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_19;
      }

LABEL_9:
      v11 = v0[8];
      v10 = v0[9];
      sub_2330B088C(v8, v11);
      if ((*v1)(v11, 1, v10) == 1)
      {
        sub_2330952BC(v0[8], &qword_27DDDDE78, &qword_2330F4AF0);
      }

      else
      {
        v12 = *v6;
        (*v6)(v0[11], v0[8], v0[9]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_233098870(0, *(v7 + 2) + 1, 1, v7);
        }

        v14 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v14 >= v13 >> 1)
        {
          v7 = sub_233098870(v13 > 1, v14 + 1, 1, v7);
        }

        v15 = v0[11];
        v16 = v0[9];
        *(v7 + 2) = v14 + 1;
        v12(&v7[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14], v15, v16);
        v2 = v22;
      }

      ++v4;
      if (v9 == v2)
      {
        v17 = v0[16];
        goto LABEL_23;
      }
    }

    if (v4 >= *(v24 + 16))
    {
      goto LABEL_20;
    }

    v8 = *(v23 + 8 * v4);
    v9 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v2 = sub_2330F2CB0();
  }

  v7 = MEMORY[0x277D84F90];
LABEL_23:

  v18 = v0[11];
  v19 = v0[8];

  v20 = v0[1];

  return v20(v7);
}

uint64_t sub_2330C8BD0(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE860, &qword_2330F3BB0) - 8) + 64) + 15;
  *(v1 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330C8C6C, 0, 0);
}

uint64_t sub_2330C8C6C()
{
  v1 = *(v0 + 64);
  sub_233092A18((v0 + 16));
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_2330F6108;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v0 + 80) = v5;
  *(v5 + 16) = &unk_2330F6118;
  *(v5 + 24) = v4;
  v6 = *(MEMORY[0x277D78400] + 4);

  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_2330C8DD0;
  v8 = MEMORY[0x277D78428];
  v9 = MEMORY[0x277D78420];

  return MEMORY[0x2821DF740](201, &unk_2330F6128, v5, v2, v8, v3, v9);
}

uint64_t sub_2330C8DD0()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330C8EE8, 0, 0);
}

uint64_t sub_2330C8EE8()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(MEMORY[0x277D78418] + 4);

  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_2330C8FD4;
  v6 = v0[8];

  return MEMORY[0x2821DF758](202, &unk_2330F6138, v6, v2, v3);
}

uint64_t sub_2330C8FD4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2330C90EC, 0, 0);
}

uint64_t sub_2330C90EC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = sub_233099620(0, &qword_2814EAC28, 0x277CCAB98);
  v4 = *MEMORY[0x277CF0010];
  v5 = sub_2330F2890();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;
  v6[5] = v4;
  v6[6] = 0xD000000000000067;
  v6[7] = 0x80000002330F85B0;
  v6[8] = &unk_2330F6148;
  v6[9] = v1;

  v7 = v4;
  sub_2330878BC(0, 0, v2, &unk_2330F3BC0, v6);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2330C9258(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330C92EC;

  return sub_2330C93EC(a1);
}

uint64_t sub_2330C92EC(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2330C940C()
{
  v1 = v0[2];
  sub_233090A7C();
  if (sub_2330F2380())
  {
    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_2330C9524;
    v3 = v0[2];

    return sub_2330CA200(v3);
  }

  else
  {
    sub_2330A7B40();
    swift_allocError();
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2330C9524(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v7 = sub_2330C96B8;
  }

  else
  {
    *(v4 + 40) = a1;
    v7 = sub_2330C964C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2330C964C()
{
  v1 = *(v0 + 16);
  sub_2330CBCD8(*(v0 + 40));
  v2 = *(v0 + 8);
  v3 = *(v0 + 40);

  return v2(v3);
}

uint64_t sub_2330C96B8()
{
  v16 = v0;
  if (qword_2814EADB8 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_2330F23C0();
  __swift_project_value_buffer(v2, qword_2814EBDF8);
  v3 = v1;
  v4 = sub_2330F23A0();
  v5 = sub_2330F2960();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v15);
    *(v7 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_233084000, v4, v5, "%s failed to install Tetsuo: %@", v7, 0x16u);
    sub_2330952BC(v8, &unk_27DDDE520, &qword_2330F4340);
    MEMORY[0x23839A490](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x23839A490](v9, -1, -1);
    MEMORY[0x23839A490](v7, -1, -1);
  }

  sub_2330CBE10(v0[2]);
  v12 = v0[4];
  swift_willThrow();
  v13 = v0[1];

  return v13();
}

uint64_t sub_2330C98B8(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330D06A8;

  return v5();
}

uint64_t sub_2330C99A0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2330C9A8C;

  return v6();
}

uint64_t sub_2330C9A8C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_2330C9B9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330877C8;

  return sub_2330C9C30(a1);
}

uint64_t sub_2330C9C50()
{
  v1 = v0[2];
  sub_233090A7C();
  if (sub_2330F2380())
  {
    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_2330C9D68;
    v3 = v0[2];

    return sub_2330CD184(v3);
  }

  else
  {
    sub_2330A7B40();
    swift_allocError();
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2330C9D68()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_2330C9E98, 0, 0);
}

uint64_t sub_2330C9E98()
{
  v9 = v0;
  if (qword_2814EADB8 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_2814EBDF8);
  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v8);
    _os_log_impl(&dword_233084000, v2, v3, "%s force installed Tetsuo", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x23839A490](v5, -1, -1);
    MEMORY[0x23839A490](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2330CA030()
{
  v1 = v0[2];
  if (sub_233090A7C())
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[3] = v4;
    *v4 = v0;
    v4[1] = sub_2330CA100;
    v5 = v0[2];

    return sub_2330CA200(v5);
  }
}

uint64_t sub_2330CA100()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
  }

  v4 = *(v3 + 8);

  return v4();
}

id sub_2330CA220()
{
  v26 = v0;
  v1 = v0[22];
  sub_233091A08((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  if (sub_2330EA348())
  {
    v2 = swift_task_alloc();
    v0[23] = v2;
    *v2 = v0;
    v2[1] = sub_2330CA69C;

    return sub_2330CF2E4();
  }

  v4 = v0[22];
  v5 = sub_233091780();
  v0[27] = v5;
  v6 = sub_2330F25C0();
  v7 = [v5 BOOLForKey_];

  if (v7)
  {
    if (qword_2814EADB8 != -1)
    {
      swift_once();
    }

    v8 = sub_2330F23C0();
    __swift_project_value_buffer(v8, qword_2814EBDF8);
    v9 = sub_2330F23A0();
    v10 = sub_2330F2980();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v25);
      _os_log_impl(&dword_233084000, v9, v10, "%s not installing Tetsuo; previously installed", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x23839A490](v12, -1, -1);
      MEMORY[0x23839A490](v11, -1, -1);
    }

    v13 = 0;
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v23 = v0[1];

    return v23(v13);
  }

  v14 = v0[22];
  sub_233091CBC((v0 + 7));
  sub_2330F2230();
  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v15 = result;
  v16 = sub_2330F25C0();

  v17 = [v15 applicationIsInstalled_];

  if (v17)
  {
    if (qword_2814EADB8 != -1)
    {
      swift_once();
    }

    v18 = sub_2330F23C0();
    __swift_project_value_buffer(v18, qword_2814EBDF8);
    v19 = sub_2330F23A0();
    v20 = sub_2330F2980();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v25);
      _os_log_impl(&dword_233084000, v19, v20, "%s not installing Tetsuo; already installed", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x23839A490](v22, -1, -1);
      MEMORY[0x23839A490](v21, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    v13 = 1;
    goto LABEL_18;
  }

  v24 = swift_task_alloc();
  v0[28] = v24;
  *v24 = v0;
  v24[1] = sub_2330CB05C;

  return sub_2330CFD14();
}

uint64_t sub_2330CA69C(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  v5 = *v1;

  if (a1)
  {
    v6 = swift_task_alloc();
    v3[26] = v6;
    *v6 = v5;
    v6[1] = sub_2330CAB5C;

    return sub_2330CFAF0();
  }

  else
  {
    v8 = swift_task_alloc();
    v3[24] = v8;
    *v8 = v5;
    v8[1] = sub_2330CA838;
    v9 = v3[22];

    return sub_2330CC320(v9);
  }
}

uint64_t sub_2330CA838(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = sub_2330CBB5C;
  }

  else
  {
    *(v4 + 296) = a1 & 1;
    v7 = sub_2330CA964;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2330CA964()
{
  v10 = v0;
  if (*(v0 + 296))
  {
    v1 = swift_task_alloc();
    *(v0 + 208) = v1;
    *v1 = v0;
    v1[1] = sub_2330CAB5C;

    return sub_2330CFAF0();
  }

  else
  {
    if (qword_2814EADB8 != -1)
    {
      swift_once();
    }

    v3 = sub_2330F23C0();
    __swift_project_value_buffer(v3, qword_2814EBDF8);
    v4 = sub_2330F23A0();
    v5 = sub_2330F2980();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v9);
      _os_log_impl(&dword_233084000, v4, v5, "%s unable to install, user has failed the GreenTea dialog. Either declined or has encountered an error.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x23839A490](v7, -1, -1);
      MEMORY[0x23839A490](v6, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v8 = *(v0 + 8);

    return v8(4);
  }
}

uint64_t sub_2330CAB5C(char a1)
{
  v2 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 297) = a1;

  return MEMORY[0x2822009F8](sub_2330CAC5C, 0, 0);
}

id sub_2330CAC5C()
{
  v24 = v0;
  if (*(v0 + 297) != 1)
  {
    v10 = 4;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v11 = *(v0 + 8);

    return v11(v10);
  }

  v1 = *(v0 + 176);
  v2 = sub_233091780();
  *(v0 + 216) = v2;
  v3 = sub_2330F25C0();
  v4 = [v2 BOOLForKey_];

  if (v4)
  {
    if (qword_2814EADB8 != -1)
    {
      swift_once();
    }

    v5 = sub_2330F23C0();
    __swift_project_value_buffer(v5, qword_2814EBDF8);
    v6 = sub_2330F23A0();
    v7 = sub_2330F2980();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v23);
      _os_log_impl(&dword_233084000, v6, v7, "%s not installing Tetsuo; previously installed", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x23839A490](v9, -1, -1);
      MEMORY[0x23839A490](v8, -1, -1);
    }

    v10 = 0;
    goto LABEL_9;
  }

  v13 = *(v0 + 176);
  sub_233091CBC(v0 + 56);
  sub_2330F2230();
  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = sub_2330F25C0();

  v16 = [v14 applicationIsInstalled_];

  if (v16)
  {
    if (qword_2814EADB8 != -1)
    {
      swift_once();
    }

    v17 = sub_2330F23C0();
    __swift_project_value_buffer(v17, qword_2814EBDF8);
    v18 = sub_2330F23A0();
    v19 = sub_2330F2980();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v23);
      _os_log_impl(&dword_233084000, v18, v19, "%s not installing Tetsuo; already installed", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x23839A490](v21, -1, -1);
      MEMORY[0x23839A490](v20, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v10 = 1;
    goto LABEL_9;
  }

  v22 = swift_task_alloc();
  *(v0 + 224) = v22;
  *v22 = v0;
  v22[1] = sub_2330CB05C;

  return sub_2330CFD14();
}

uint64_t sub_2330CB05C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = sub_2330CB3E4;
  }

  else
  {
    *(v4 + 298) = a1 & 1;
    v7 = sub_2330CB188;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2330CB188()
{
  v17 = v0;
  if (*(v0 + 298) == 1)
  {
    v1 = *(v0 + 176);
    sub_233090F8C(v0 + 96);
    v2 = sub_233091F70();
    v4 = v3;
    *(v0 + 240) = v2;
    sub_233090CD8(v0 + 136);
    v5 = swift_task_alloc();
    *(v0 + 248) = v5;
    *v5 = v0;
    v5[1] = sub_2330CB458;
    v6 = *(v0 + 176);

    return sub_2330C73E4(v0 + 96, v2, v4, v0 + 136, v6);
  }

  else
  {
    if (qword_2814EADB8 != -1)
    {
      swift_once();
    }

    v8 = sub_2330F23C0();
    __swift_project_value_buffer(v8, qword_2814EBDF8);
    v9 = sub_2330F23A0();
    v10 = sub_2330F2980();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 216);
    if (v11)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v16);
      _os_log_impl(&dword_233084000, v9, v10, "%s not installing Tetsuo; unsupported storefront", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x23839A490](v14, -1, -1);
      MEMORY[0x23839A490](v13, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v15 = *(v0 + 8);

    return v15(2);
  }
}

uint64_t sub_2330CB3E4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 232);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2330CB458(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v7 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v5 = sub_2330CBBC0;
  }

  else
  {
    v5 = sub_2330CB56C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2330CB56C()
{
  v25 = v0;
  if (qword_2814EADB8 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = sub_2330F23C0();
  v0[34] = __swift_project_value_buffer(v2, qword_2814EBDF8);

  v3 = sub_2330F23A0();
  v4 = sub_2330F2980();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[32];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v24);
    *(v6 + 12) = 2080;
    v8 = sub_2330F2370();
    v9 = MEMORY[0x2383995E0](v5, v8);
    v11 = sub_233098F44(v9, v10, &v24);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_233084000, v3, v4, "%s fetched devices: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v7, -1, -1);
    MEMORY[0x23839A490](v6, -1, -1);
  }

  v12 = *(v0[32] + 16);

  if (v12)
  {
    v13 = swift_task_alloc();
    v0[35] = v13;
    *v13 = v0;
    v13[1] = sub_2330CB8D4;
    v14 = v0[22];

    return sub_2330CD184(v14);
  }

  else
  {
    v16 = sub_2330F23A0();
    v17 = sub_2330F2980();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[30];
    v20 = v0[27];
    if (v18)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v24);
      _os_log_impl(&dword_233084000, v16, v17, "%s not installing Tetsuo; not available", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x23839A490](v22, -1, -1);
      MEMORY[0x23839A490](v21, -1, -1);
    }

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v23 = v0[1];

    return v23(2);
  }
}

uint64_t sub_2330CB8D4()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_2330CBC4C;
  }

  else
  {
    v3 = sub_2330CB9E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2330CB9E8()
{
  v12 = v0;
  v1 = v0[34];
  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[30];
  v6 = v0[27];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v11);
    _os_log_impl(&dword_233084000, v2, v3, "%s installed Tetsuo", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x23839A490](v8, -1, -1);
    MEMORY[0x23839A490](v7, -1, -1);
  }

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v9 = v0[1];

  return v9(3);
}

uint64_t sub_2330CBB5C()
{
  v1 = v0[25];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2330CBBC0()
{
  v1 = v0[30];
  v2 = v0[27];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v3 = v0[33];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2330CBC4C()
{
  v1 = v0[30];
  v2 = v0[27];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v3 = v0[36];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2330CBCD8(char a1)
{
  if (((1 << a1) & 0x15) == 0)
  {
    v1 = sub_233091780();
    v2 = sub_2330F25C0();
    [v1 setBool:1 forKey:v2];

    v3 = sub_2330F25C0();
    [v1 removeObjectForKey_];
  }

  sub_233090738(v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 40))(0xD000000000000033, 0x80000002330F7930, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

void sub_2330CBE10(uint64_t a1)
{
  v2 = sub_2330F24A0();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2330F24F0();
  v31 = *(v7 - 8);
  v32 = v7;
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2330F24B0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_233091780();
  v18 = sub_2330F25C0();
  v19 = [v34 integerForKey_];

  if (v19 > 4)
  {
    if (qword_2814EADB8 != -1)
    {
      swift_once();
    }

    v24 = sub_2330F23C0();
    __swift_project_value_buffer(v24, qword_2814EBDF8);
    v25 = sub_2330F23A0();
    v26 = sub_2330F2980();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, aBlock);
      _os_log_impl(&dword_233084000, v25, v26, "%s not scheduling installation retry; max retry count reached", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x23839A490](v28, -1, -1);
      MEMORY[0x23839A490](v27, -1, -1);
    }

    else
    {

      v29 = v34;
    }
  }

  else
  {
    sub_233099620(0, &qword_2814EAC60, 0x277D85C78);
    (*(v13 + 104))(v17, *MEMORY[0x277D851C8], v12);
    v20 = sub_2330F29F0();
    (*(v13 + 8))(v17, v12);
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = a1;
    v21[4] = v34;
    aBlock[4] = sub_2330CEE8C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2330CE2D8;
    aBlock[3] = &block_descriptor_8;
    v22 = _Block_copy(aBlock);

    v23 = v34;
    sub_2330F24D0();
    v35 = MEMORY[0x277D84F90];
    sub_2330CEEB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE2E0, &qword_2330F6080);
    sub_2330CEF08();
    sub_2330F2B80();
    MEMORY[0x2383997D0](0, v11, v6, v22);
    _Block_release(v22);

    (*(v33 + 8))(v6, v2);
    (*(v31 + 8))(v11, v32);
  }
}

uint64_t sub_2330CC320(uint64_t a1)
{
  v1[12] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDDE78, &qword_2330F4AF0) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v3 = sub_2330F2370();
  v1[14] = v3;
  v4 = *(v3 - 8);
  v1[15] = v4;
  v5 = *(v4 + 64) + 15;
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2330CC418, 0, 0);
}

uint64_t sub_2330CC418()
{
  v1 = v0[12];
  sub_233090CD8((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_2330CC4C4;

  return DeviceCloudKitCoordinator.fetchDevices()();
}

uint64_t sub_2330CC4C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v7 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v5 = sub_2330CC82C;
  }

  else
  {
    v5 = sub_2330CC5D8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2330CC5D8()
{
  v18 = v0;
  if (qword_2814EAD68 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_2330F23C0();
  v0[20] = __swift_project_value_buffer(v2, qword_2814EBD50);

  v3 = sub_2330F23A0();
  v4 = sub_2330F2980();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[18];
  if (v5)
  {
    v7 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v17);
    *(v8 + 12) = 2080;
    v10 = MEMORY[0x2383995E0](v6, v7);
    v12 = v11;

    v13 = sub_233098F44(v10, v12, &v17);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_233084000, v3, v4, "%s fetched CloudKit devices: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v9, -1, -1);
    MEMORY[0x23839A490](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[12];
  sub_233090F8C((v0 + 7));
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v15 = swift_task_alloc();
  v0[21] = v15;
  *v15 = v0;
  v15[1] = sub_2330CC8B4;

  return sub_23309B4C0(0);
}

uint64_t sub_2330CC82C()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[13];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_2330CC8B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  v7 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v5 = sub_2330CCEA4;
  }

  else
  {
    v5 = sub_2330CC9C8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2330CC9C8()
{
  v43 = v0;
  v1 = v0[22];
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[22]; v2; i = v0[22])
  {
    v4 = 0;
    v5 = v0[15];
    v40 = v1 & 0xFFFFFFFFFFFFFF8;
    v41 = v1 & 0xC000000000000001;
    v39 = i + 32;
    v1 = v5 + 48;
    v6 = (v5 + 32);
    v7 = MEMORY[0x277D84F90];
    v38 = v2;
    while (v41)
    {
      v8 = MEMORY[0x238399A10](v4, v0[22]);
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_19;
      }

LABEL_9:
      v11 = v0[13];
      v10 = v0[14];
      sub_2330B088C(v8, v11);
      if ((*v1)(v11, 1, v10) == 1)
      {
        sub_2330952BC(v0[13], &qword_27DDDDE78, &qword_2330F4AF0);
      }

      else
      {
        v12 = *v6;
        (*v6)(v0[16], v0[13], v0[14]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_233098870(0, *(v7 + 2) + 1, 1, v7);
        }

        v14 = *(v7 + 2);
        v13 = *(v7 + 3);
        if (v14 >= v13 >> 1)
        {
          v7 = sub_233098870(v13 > 1, v14 + 1, 1, v7);
        }

        v15 = v0[16];
        v16 = v0[14];
        *(v7 + 2) = v14 + 1;
        v12(&v7[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14], v15, v16);
        v2 = v38;
      }

      ++v4;
      if (v9 == v2)
      {
        v17 = v0[22];
        goto LABEL_23;
      }
    }

    if (v4 >= *(v40 + 16))
    {
      goto LABEL_20;
    }

    v8 = *(v39 + 8 * v4);
    v9 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v2 = sub_2330F2CB0();
  }

  v7 = MEMORY[0x277D84F90];
LABEL_23:
  v18 = v0[20];

  v19 = sub_2330F23A0();
  v20 = sub_2330F2980();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = v0[14];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v42 = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v42);
    *(v22 + 12) = 2080;
    v24 = MEMORY[0x2383995E0](v7, v21);
    v26 = sub_233098F44(v24, v25, &v42);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_233084000, v19, v20, "%s fetched AuthKit devices: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v23, -1, -1);
    MEMORY[0x23839A490](v22, -1, -1);
  }

  v27 = *(v7 + 2);

  if (v27)
  {
    v28 = swift_task_alloc();
    v0[24] = v28;
    *v28 = v0;
    v28[1] = sub_2330CCF34;

    return sub_2330CF508();
  }

  else
  {
    v30 = v0[20];
    v31 = sub_2330F23A0();
    v32 = sub_2330F2980();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v42 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v42);
      _os_log_impl(&dword_233084000, v31, v32, "%s User has no authKit devices", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x23839A490](v34, -1, -1);
      MEMORY[0x23839A490](v33, -1, -1);
    }

    v35 = v0[16];
    v36 = v0[13];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v37 = v0[1];

    return v37(0);
  }
}

uint64_t sub_2330CCEA4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[23];
  v2 = v0[16];
  v3 = v0[13];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_2330CCF34(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = sub_2330CD0F4;
  }

  else
  {
    *(v4 + 208) = a1 & 1;
    v7 = sub_2330CD060;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2330CD060()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 128);
  v3 = *(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_2330CD0F4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[25];
  v2 = v0[16];
  v3 = v0[13];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_2330CD1A4()
{
  v1 = v0[13];
  v2 = sub_233091240();
  v4 = v3;
  v5 = sub_2330F2230();
  v7 = v6;
  v8 = *(v4 + 8);
  v0[5] = v2;
  v0[6] = v4;
  __swift_allocate_boxed_opaque_existential_0Tm(v0 + 2);
  v8(v5, v7, v2, v4);
  v9 = *(v4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_2330CD320;

  return v13(v2, v4);
}

uint64_t sub_2330CD320()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_2330CD63C;
  }

  else
  {
    v3 = sub_2330CD434;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2330CD434()
{
  v1 = v0[13];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_2330914CC((v0 + 7));
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v3 = sub_2330F2230();
  v5 = v4;
  v0[16] = v4;
  v6 = *v2;
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_2330CD508;

  return sub_2330D7354(v3, v5);
}

uint64_t sub_2330CD508()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 128);

  if (v0)
  {
    v6 = sub_2330CD710;
  }

  else
  {
    v6 = sub_2330CD6A0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2330CD63C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[15];
  v2 = v0[1];

  return v2();
}

uint64_t sub_2330CD6A0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  sub_2330CEF6C(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2330CD710()
{
  v19 = v0;
  v1 = *(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  *(v0 + 96) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE470, &qword_2330F46A0);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 152) == 2)
  {
    if (qword_2814EADB8 != -1)
    {
      swift_once();
    }

    v3 = sub_2330F23C0();
    __swift_project_value_buffer(v3, qword_2814EBDF8);
    v4 = sub_2330F23A0();
    v5 = sub_2330F2980();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v18 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v18);
      _os_log_impl(&dword_233084000, v4, v5, "%s user uninstalled application before installation completed.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x23839A490](v7, -1, -1);
      MEMORY[0x23839A490](v6, -1, -1);
    }

    v8 = *(v0 + 144);
    v9 = *(v0 + 104);
    v10 = sub_233091780();
    v11 = sub_2330F25C0();
    [v10 setBool:1 forKey:v11];

    v12 = sub_2330F25C0();
    [v10 removeObjectForKey_];

    sub_2330D0250();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();
  }

  else
  {
    v14 = *(v0 + 144);
    swift_willThrow();
    v15 = *(v0 + 144);
  }

  v16 = *(v0 + 8);

  return v16();
}

void sub_2330CD9B0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE2F0, &qword_2330F60D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = aBlock - v8;
  (*(v5 + 16))(aBlock - v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  aBlock[4] = sub_2330D02B4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2330CDDB8;
  aBlock[3] = &block_descriptor_37;
  v12 = _Block_copy(aBlock);

  [a2 valueWithCompletion_];
  _Block_release(v12);
}

void sub_2330CDB60(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      v5 = a1;
      v6 = a3;
      if (qword_2814EADB8 != -1)
      {
        swift_once();
      }

      v7 = sub_2330F23C0();
      __swift_project_value_buffer(v7, qword_2814EBDF8);
      v8 = a3;
      v9 = sub_2330F23A0();
      v10 = sub_2330F2960();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v17 = v12;
        *v11 = 136315394;
        *(v11 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v17);
        *(v11 + 12) = 2080;
        swift_getErrorValue();
        v13 = sub_2330F2E20();
        v15 = sub_233098F44(v13, v14, &v17);

        *(v11 + 14) = v15;
        _os_log_impl(&dword_233084000, v9, v10, "%s error fetching user region. %s", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23839A490](v12, -1, -1);
        MEMORY[0x23839A490](v11, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v16 = a1;
    }

    LOBYTE(v17) = [a1 BOOLValue];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE2F0, &qword_2330F60D0);
    sub_2330F2860();
  }

  else
  {
    LOBYTE(v17) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE2F0, &qword_2330F60D0);
    sub_2330F2860();
  }
}

void sub_2330CDDB8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a4;
  v8(a2, a3, a4);
}

void sub_2330CDE4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
    swift_once();
    v15 = sub_2330F23C0();
    __swift_project_value_buffer(v15, qword_2814EBDF8);
    v16 = v3;
    v17 = sub_2330F23A0();
    v18 = sub_2330F2960();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31[0] = v21;
      *v19 = 136315394;
      *(v19 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, v31);
      *(v19 + 12) = 2112;
      v22 = v3;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v23;
      *v20 = v23;
      _os_log_impl(&dword_233084000, v17, v18, "%s failed to schedule installation retry with delay: %@", v19, 0x16u);
      sub_2330952BC(v20, &unk_27DDDE520, &qword_2330F4340);
      MEMORY[0x23839A490](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x23839A490](v21, -1, -1);
      MEMORY[0x23839A490](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v6 = v4 * 600.0;
    v7 = objc_allocWithZone(MEMORY[0x277CF07C8]);
    v8 = sub_2330F25C0();
    v9 = [v7 initWithIdentifier_];

    [v9 setScheduleAfter_];
    v10 = v9;
    [v10 setRequiresNetworkConnectivity_];
    [v10 setPriority_];

    sub_233090738(v31);
    v11 = v32;
    v12 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v12 + 40))(0xD000000000000033, 0x80000002330F7930, v11, v12);
    v13 = v32;
    v14 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    (*(v14 + 32))(v10, v13, v14);
    v24 = sub_2330F25C0();
    [a3 setInteger:v4 forKey:v24];

    if (qword_2814EADB8 != -1)
    {
      swift_once();
    }

    v25 = sub_2330F23C0();
    __swift_project_value_buffer(v25, qword_2814EBDF8);
    v26 = sub_2330F23A0();
    v27 = sub_2330F2980();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v30);
      *(v28 + 12) = 2048;
      *(v28 + 14) = v6;
      _os_log_impl(&dword_233084000, v26, v27, "%s scheduled installation retry with delay: %f", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x23839A490](v29, -1, -1);
      MEMORY[0x23839A490](v28, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }
}

uint64_t sub_2330CE2D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2330CE33C()
{
  v23 = v0;
  v1 = v0[24];
  sub_233091CBC((v0 + 18));
  v2 = [objc_opt_self() defaultWorkspace];
  if (!v2)
  {
    __break(1u);
    return MEMORY[0x282200938](v2);
  }

  v3 = v2;
  v4 = sub_2330F25C0();
  v5 = [v3 applicationIsInstalled_];

  if (!v5)
  {
    if (qword_2814EADB8 != -1)
    {
      swift_once();
    }

    v13 = sub_2330F23C0();
    __swift_project_value_buffer(v13, qword_2814EBDF8);
    v14 = sub_2330F23A0();
    v15 = sub_2330F2980();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_18;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v22);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_233098F44(0xD000000000000010, 0x80000002330F8570, &v22);
    v18 = "%s app not installed %s";
    goto LABEL_17;
  }

  v6 = objc_allocWithZone(MEMORY[0x277D1C160]);
  v7 = sub_2330F25C0();
  v8 = [v6 initWithBundleIdentifier_];
  v0[25] = v8;

  if (v8)
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D1C1D0]) init];
    v0[26] = v9;
    if (v9)
    {
      v10 = v9;
      v11 = objc_opt_self();
      v0[2] = v0;
      v0[7] = v0 + 23;
      v0[3] = sub_2330CE7D4;
      v12 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDDE2F8, &qword_2330F60E8);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2330CED2C;
      v0[13] = &block_descriptor_45;
      v0[14] = v12;
      [v11 uninstallAppWithIdentity:v8 options:v10 completion:v0 + 10];
      v2 = v0 + 2;

      return MEMORY[0x282200938](v2);
    }
  }

  if (qword_2814EADB8 != -1)
  {
    swift_once();
  }

  v19 = sub_2330F23C0();
  __swift_project_value_buffer(v19, qword_2814EBDF8);
  v14 = sub_2330F23A0();
  v15 = sub_2330F2960();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v22);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_233098F44(0xD000000000000010, 0x80000002330F8570, &v22);
    v18 = "%s failed to uninstall %s; invalid identity/options";
LABEL_17:
    _os_log_impl(&dword_233084000, v14, v15, v18, v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v17, -1, -1);
    MEMORY[0x23839A490](v16, -1, -1);
  }

LABEL_18:

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  v20 = v0[1];

  return v20();
}

uint64_t sub_2330CE7D4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_2330CEAB8;
  }

  else
  {
    v3 = sub_2330CE8E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2330CE8E4()
{
  v12 = v0;
  if (qword_2814EADB8 != -1)
  {
    swift_once();
  }

  v1 = sub_2330F23C0();
  __swift_project_value_buffer(v1, qword_2814EBDF8);
  v2 = sub_2330F23A0();
  v3 = sub_2330F2980();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[25];
  v5 = v0[26];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v11);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_233098F44(0xD000000000000010, 0x80000002330F8570, &v11);
    _os_log_impl(&dword_233084000, v2, v3, "%s successfully uninstalled %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v8, -1, -1);
    MEMORY[0x23839A490](v7, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  v9 = v0[1];

  return v9();
}

uint64_t sub_2330CEAB8()
{
  v19 = v0;
  v1 = v0[27];
  swift_willThrow();
  if (qword_2814EADB8 != -1)
  {
    swift_once();
  }

  v2 = v0[27];
  v3 = sub_2330F23C0();
  __swift_project_value_buffer(v3, qword_2814EBDF8);
  v4 = v2;
  v5 = sub_2330F23A0();
  v6 = sub_2330F2960();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[25];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v13;
    *v11 = 136315650;
    *(v11 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, v18);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_233098F44(0xD000000000000010, 0x80000002330F8570, v18);
    *(v11 + 22) = 2112;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v15;
    *v12 = v15;
    _os_log_impl(&dword_233084000, v5, v6, "%s failed to uninstall %s; error: %@", v11, 0x20u);
    sub_2330952BC(v12, &unk_27DDDE520, &qword_2330F4340);
    MEMORY[0x23839A490](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v13, -1, -1);
    MEMORY[0x23839A490](v11, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  v16 = v0[1];

  return v16();
}

uint64_t sub_2330CED2C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDDE470, &qword_2330F46A0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2330CEDF8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2330877C8;

  return sub_2330C8BD0(v2);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2330CEEB0()
{
  result = qword_27DDDE2D8;
  if (!qword_27DDDE2D8)
  {
    sub_2330F24A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE2D8);
  }

  return result;
}

unint64_t sub_2330CEF08()
{
  result = qword_27DDDE2E8;
  if (!qword_27DDDE2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDDE2E0, &qword_2330F6080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDDE2E8);
  }

  return result;
}

uint64_t sub_2330CEF6C(char a1, uint64_t a2)
{
  v31[3] = &type metadata for AnalyticsCoordinator.DaemonAnalyticsEvent;
  v31[4] = &off_28486AAD8;
  LOBYTE(v31[0]) = a1 & 1;
  if (qword_27DDDDBC8 != -1)
  {
    swift_once();
  }

  v4 = sub_2330F23C0();
  __swift_project_value_buffer(v4, qword_27DDE1890);
  sub_233094AE0(v31, &aBlock);

  v5 = sub_2330F23A0();
  v6 = sub_2330F2980();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315394;
    v9 = __swift_project_boxed_opaque_existential_1(&aBlock, v28);
    v10 = sub_2330AFC9C(*v9);
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
    v13 = sub_233098F44(v10, v12, &v24);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2080;
    if (a2)
    {
      sub_233099620(0, &qword_27DDDE038, 0x277D82BB8);
      v14 = sub_2330F2540();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v17 = sub_233098F44(v14, v16, &v24);

    *(v7 + 14) = v17;
    _os_log_impl(&dword_233084000, v5, v6, "Submit event: %s, payload: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23839A490](v8, -1, -1);
    MEMORY[0x23839A490](v7, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  }

  aBlock = 0;
  v26 = 0xE000000000000000;
  sub_2330F2C00();

  aBlock = 0xD00000000000001BLL;
  v26 = 0x80000002330F7FE0;
  if (a1)
  {
    v18 = 0xD000000000000018;
  }

  else
  {
    v18 = 0xD000000000000015;
  }

  if (a1)
  {
    v19 = "VisionProAppInstalled";
  }

  else
  {
    v19 = "com.apple.visionproapp";
  }

  MEMORY[0x2383994D0](v18, v19 | 0x8000000000000000);

  v20 = sub_2330F25C0();

  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  v29 = sub_2330D02A4;
  v30 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_2330C7348;
  v28 = &block_descriptor_24;
  v22 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v22);

  return __swift_destroy_boxed_opaque_existential_1Tm(v31);
}

uint64_t sub_2330CF300()
{
  v12 = v0;
  if (qword_2814EB0D0 != -1)
  {
    swift_once();
  }

  if (qword_2814EB0D8)
  {
    v1 = qword_2814EB0D8;
    v2 = sub_2330F25C0();
    v3 = [v1 BOOLForKey_];
  }

  else
  {
    if (qword_2814EAD68 != -1)
    {
      swift_once();
    }

    v4 = sub_2330F23C0();
    __swift_project_value_buffer(v4, qword_2814EBD50);
    v5 = sub_2330F23A0();
    v6 = sub_2330F2980();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v11);
      _os_log_impl(&dword_233084000, v5, v6, "%s error fetching the daemon user defaults.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x23839A490](v8, -1, -1);
      MEMORY[0x23839A490](v7, -1, -1);
    }

    v3 = 0;
  }

  v9 = *(v0 + 8);

  return v9(v3);
}

uint64_t sub_2330CF524()
{
  v30 = v0;
  if (qword_2814EB0D0 != -1)
  {
    swift_once();
  }

  if (!qword_2814EB0D8)
  {
    if (qword_2814EAD68 != -1)
    {
      swift_once();
    }

    v9 = sub_2330F23C0();
    __swift_project_value_buffer(v9, qword_2814EBD50);
    v5 = sub_2330F23A0();
    v10 = sub_2330F2970();
    if (os_log_type_enabled(v5, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v29);
      _os_log_impl(&dword_233084000, v5, v10, "%s error fetching the daemon defaults.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x23839A490](v12, -1, -1);
      MEMORY[0x23839A490](v11, -1, -1);
    }

    goto LABEL_14;
  }

  v1 = qword_2814EB0D8;
  v2 = sub_2330F25C0();
  v3 = [v1 BOOLForKey_];

  if (v3)
  {
    if (qword_2814EAD68 != -1)
    {
      swift_once();
    }

    v4 = sub_2330F23C0();
    __swift_project_value_buffer(v4, qword_2814EBD50);
    v5 = sub_2330F23A0();
    v6 = sub_2330F2980();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v29 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v29);
      _os_log_impl(&dword_233084000, v5, v6, "%s user has already seen GreenTea dialog.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x23839A490](v8, -1, -1);
      MEMORY[0x23839A490](v7, -1, -1);
    }

LABEL_14:
    v13 = 0;
    goto LABEL_26;
  }

  if (qword_2814EAD68 != -1)
  {
    swift_once();
  }

  v14 = sub_2330F23C0();
  __swift_project_value_buffer(v14, qword_2814EBD50);
  v15 = sub_2330F23A0();
  v16 = sub_2330F2980();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v29);
    _os_log_impl(&dword_233084000, v15, v16, "%s user has not seen dialog.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x23839A490](v18, -1, -1);
    MEMORY[0x23839A490](v17, -1, -1);
  }

  v19 = sub_2330F25C0();
  [v1 setBool:1 forKey:v19];

  v13 = sub_2330D0AE0();
  v20 = sub_2330F23A0();
  v21 = sub_2330F2980();
  v22 = os_log_type_enabled(v20, v21);
  if (v13)
  {
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v29);
      v25 = "%s user has accepted dialog.";
LABEL_24:
      _os_log_impl(&dword_233084000, v20, v21, v25, v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x23839A490](v24, -1, -1);
      MEMORY[0x23839A490](v23, -1, -1);
    }
  }

  else if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_233098F44(0xD000000000000015, 0x80000002330F6040, &v29);
    v25 = "%s user has declined dialog.";
    goto LABEL_24;
  }

  v26 = sub_2330F25C0();
  [v1 setBool:v13 & 1 forKey:v26];

LABEL_26:
  v27 = *(v0 + 8);

  return v27(v13 & 1);
}