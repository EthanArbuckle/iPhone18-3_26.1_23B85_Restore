unint64_t sub_260E48F4C()
{
  result = qword_27FE54A08;
  if (!qword_27FE54A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54A08);
  }

  return result;
}

unint64_t sub_260E48FD4()
{
  result = qword_27FE54A20;
  if (!qword_27FE54A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54A20);
  }

  return result;
}

unint64_t sub_260E4905C()
{
  result = qword_27FE54A38;
  if (!qword_27FE54A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54A38);
  }

  return result;
}

unint64_t sub_260E490E4()
{
  result = qword_27FE54A50;
  if (!qword_27FE54A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54A50);
  }

  return result;
}

unint64_t sub_260E4916C()
{
  result = qword_27FE54A68;
  if (!qword_27FE54A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54A68);
  }

  return result;
}

uint64_t sub_260E491F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  v5 = *(a1 + 48);
  *(a2 + 24) = v5;
  return sub_260E16198(v3, v2, v4, v5);
}

uint64_t getEnumTagSinglePayload for HeadphonePairing2.Assets.VideoIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphonePairing2.Assets.VideoIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void GenericAsset.fileURL.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 40);
  v9 = [objc_opt_self() mainScreen];
  [v9 scale];
  v11 = v10;
  v12 = v10;

  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (v8)
  {
    MEMORY[0x2666F0C00](64, 0xE100000000000000);
    v13 = sub_260E69804();
    MEMORY[0x2666F0C00](v13);

    MEMORY[0x2666F0C00](120, 0xE100000000000000);
  }

  v14 = sub_260E68FF4();

  v15 = sub_260E68FF4();
  v16 = [v5 URLForResource:v14 withExtension:v15];

  if (v16)
  {
    sub_260E688C4();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_260E68904();
  (*(*(v18 - 8) + 56))(a1, v17, 1, v18);
}

uint64_t GenericAsset.fileName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t GenericAsset.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_260E69644();

  MEMORY[0x2666F0C00](v1, v2);
  MEMORY[0x2666F0C00](0x656C646E7562202CLL, 0xEA0000000000203ALL);
  v4 = [v3 description];
  v5 = sub_260E69024();
  v7 = v6;

  MEMORY[0x2666F0C00](v5, v7);

  MEMORY[0x2666F0C00](41, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t AdjustedAsset.asset.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  v7 = v4;
}

uint64_t AdjustedAsset.adjustmentURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AdjustedAsset() + 20);
  v4 = sub_260E68904();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AdjustedAsset()
{
  result = qword_27FE54A80;
  if (!qword_27FE54A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t AdjustedAsset.description.getter()
{
  sub_260E69644();

  v3 = *v0;
  v4 = *(v0 + 1);
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + 40);
  v1 = GenericAsset.description.getter();
  MEMORY[0x2666F0C00](v1);

  MEMORY[0x2666F0C00](41, 0xE100000000000000);
  return 0xD000000000000015;
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

uint64_t sub_260E499EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_260E49A34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_260E49AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_260E68904();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_260E49B64(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_260E68904();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_260E49C08()
{
  result = sub_260E68904();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_260E49CE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_260E68904();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_260E49DA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_260E68904();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s19ParentDirectoryCRUDVMa()
{
  result = qword_27FE54AA8;
  if (!qword_27FE54AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_260E49E98()
{
  result = sub_260E49F1C();
  if (v1 <= 0x3F)
  {
    result = sub_260E68904();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_260E49F1C()
{
  result = qword_27FE54AB8;
  if (!qword_27FE54AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE54AB8);
  }

  return result;
}

uint64_t sub_260E49F68()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE54A90);
  v1 = __swift_project_value_buffer(v0, qword_27FE54A90);
  if (qword_27FE53E60 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CBA0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_260E4A030()
{
  v45[1] = *MEMORY[0x277D85DE8];
  v2 = _s19ParentDirectoryCRUDVMa();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v42 - v7;
  v44 = 0;
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v11 = *(v2 + 20);
  v43 = v0;
  sub_260E688E4();
  v12 = sub_260E68FF4();

  v13 = [v10 fileExistsAtPath:v12 isDirectory:&v44];

  if (v13)
  {
    if ((v44 & 1) == 0)
    {
      if (qword_27FE53DD0 != -1)
      {
        swift_once();
      }

      v14 = sub_260E68E94();
      __swift_project_value_buffer(v14, qword_27FE54A90);
      sub_260E33D88(v43, v8);
      v15 = sub_260E68E74();
      v16 = sub_260E69464();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v45[0] = v18;
        *v17 = 136315138;
        v19 = &v8[*(v2 + 20)];
        v20 = sub_260E688E4();
        v22 = v21;
        sub_260E4A8D0(v8);
        v23 = sub_260E43774(v20, v22, v45);

        *(v17 + 4) = v23;
        _os_log_impl(&dword_260E02000, v15, v16, "PersonalizationAssetManager.parentDirectory is a file {path: %s}", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x2666F1EF0](v18, -1, -1);
        MEMORY[0x2666F1EF0](v17, -1, -1);
      }

      else
      {

        sub_260E4A8D0(v8);
      }

      sub_260E15590();
      swift_allocError();
      *v40 = 0;
      *(v40 + 8) = 0;
      *(v40 + 16) = 2;
      goto LABEL_17;
    }
  }

  else
  {
    if (qword_27FE53DD0 != -1)
    {
      swift_once();
    }

    v24 = sub_260E68E94();
    __swift_project_value_buffer(v24, qword_27FE54A90);
    sub_260E33D88(v43, v6);
    v25 = sub_260E68E74();
    v26 = sub_260E69474();
    v27 = os_log_type_enabled(v25, v26);
    v42[1] = v1;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v45[0] = v29;
      *v28 = 136315138;
      v30 = &v6[*(v2 + 20)];
      v31 = sub_260E688E4();
      v33 = v32;
      sub_260E4A8D0(v6);
      v34 = sub_260E43774(v31, v33, v45);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_260E02000, v25, v26, "Creating directory: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x2666F1EF0](v29, -1, -1);
      MEMORY[0x2666F1EF0](v28, -1, -1);
    }

    else
    {

      sub_260E4A8D0(v6);
    }

    v35 = [v9 defaultManager];
    v36 = sub_260E68894();
    v45[0] = 0;
    v37 = [v35 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:v45];

    if (!v37)
    {
      v39 = v45[0];
      sub_260E68854();

LABEL_17:
      swift_willThrow();
      goto LABEL_18;
    }

    v38 = v45[0];
  }

LABEL_18:
  v41 = *MEMORY[0x277D85DE8];
}

uint64_t sub_260E4A4DC(uint64_t a1, uint64_t a2)
{
  v5 = sub_260E68904();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - v11;
  v13 = *(_s19ParentDirectoryCRUDVMa() + 20);
  v23[0] = a1;
  v23[1] = a2;
  sub_260E688A4();
  v14 = *v2;
  sub_260E688E4();
  v15 = sub_260E68FF4();

  v16 = [v14 fileExistsAtPath_];

  if (v16)
  {
    sub_260E688A4();
    v17 = v23[3];
    v18 = sub_260E68914();
    if (v17)
    {
      v19 = *(v6 + 8);
      v19(v10, v5);
      return (v19)(v12, v5);
    }

    else
    {
      v21 = *(v6 + 8);
      v22 = v18;
      v21(v10, v5);
      v21(v12, v5);
      return v22;
    }
  }

  else
  {
    (*(v6 + 8))(v12, v5);
    return 0;
  }
}

uint64_t sub_260E4A6EC()
{
  v1 = v0;
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = sub_260E68904();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0 + *(_s19ParentDirectoryCRUDVMa() + 20);
  sub_260E688A4();
  v8 = *v1;
  sub_260E688E4();
  v9 = sub_260E68FF4();

  LODWORD(v7) = [v8 fileExistsAtPath_];

  if (!v7)
  {
    goto LABEL_5;
  }

  v10 = sub_260E68894();
  v17[0] = 0;
  v11 = [v8 removeItemAtURL:v10 error:v17];

  if (!v11)
  {
    v15 = v17[0];
    sub_260E68854();

    swift_willThrow();
LABEL_5:
    result = (*(v3 + 8))(v6, v2);
    goto LABEL_6;
  }

  v12 = *(v3 + 8);
  v13 = v17[0];
  result = v12(v6, v2);
LABEL_6:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_260E4A8D0(uint64_t a1)
{
  v2 = _s19ParentDirectoryCRUDVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260E4A92C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_260E4A950, 0, 0);
}

uint64_t sub_260E4A950()
{
  v25 = v0;
  if (qword_27FE53DD8 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = sub_260E68E94();
  v0[8] = __swift_project_value_buffer(v3, qword_27FE54AC0);

  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69474();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[6];
    v8 = v0[7];
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_260E43774(v9, v7, &v24);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v8;
    *v11 = v8;
    v13 = v8;
    _os_log_impl(&dword_260E02000, v5, v6, "Fetch all records START {type: %s, database: %@}", v10, 0x16u);
    sub_260E4BA94(v11);
    MEMORY[0x2666F1EF0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x2666F1EF0](v12, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
  }

  v14 = v0[5];
  v15 = v0[6];
  sub_260E157C4(0, &qword_27FE54AD8, 0x277CBC578);
  v16 = objc_opt_self();

  v17 = [v16 predicateWithValue_];
  v18 = sub_260E69514();
  v0[9] = v18;
  v19 = *MEMORY[0x277CBBFC0];
  v20 = *(MEMORY[0x277CBBEA0] + 4);
  v21 = swift_task_alloc();
  v0[10] = v21;
  *v21 = v0;
  v21[1] = sub_260E4ABF4;
  v22 = v0[7];

  return MEMORY[0x28210DF20](v18, 0, 0, v19);
}

uint64_t sub_260E4ABF4(uint64_t a1, void *a2)
{
  v5 = *v3;
  v6 = *(*v3 + 80);
  v9 = *v3;
  *(v5 + 88) = a1;
  *(v5 + 96) = v2;

  if (v2)
  {
    v7 = sub_260E4B214;
  }

  else
  {

    v7 = sub_260E4AD10;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_260E4AD10()
{
  v52 = v0;
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    v4 = (v1 + 48);
    do
    {
      v15 = *(v4 - 2);
      v16 = *(v4 - 1);
      if (*v4)
      {
        v17 = *(v0 + 64);
        *(v0 + 16) = v16;
        sub_260E4BAFC(v16);
        v18 = v15;
        sub_260E4BAFC(v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
        swift_willThrowTypedImpl();
        v19 = v18;
        sub_260E4BAFC(v16);
        v20 = sub_260E68E74();
        v21 = sub_260E69454();
        sub_260E4BB08(v16);

        if (os_log_type_enabled(v20, v21))
        {
          v48 = v3;
          v5 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v51 = v47;
          *v5 = 136315394;
          *(v0 + 24) = v16;
          v6 = v16;
          v7 = sub_260E69084();
          v9 = sub_260E43774(v7, v8, &v51);

          *(v5 + 4) = v9;
          *(v5 + 12) = 2080;
          *(v0 + 32) = v19;
          sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
          v10 = v19;
          v11 = sub_260E69084();
          v13 = sub_260E43774(v11, v12, &v51);

          *(v5 + 14) = v13;
          _os_log_impl(&dword_260E02000, v20, v21, "Error fetching record {error: %s, reccordID: %s}", v5, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2666F1EF0](v47, -1, -1);
          v14 = v5;
          v3 = v48;
          MEMORY[0x2666F1EF0](v14, -1, -1);
          sub_260E4BB08(v16);

          sub_260E4BB08(v16);
        }

        else
        {
          sub_260E4BB08(v16);

          sub_260E4BB08(v16);
        }
      }

      else
      {
        v22 = v15;
        sub_260E4BAFC(v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_260E41D7C(0, v3[2] + 1, 1, v3);
        }

        v24 = v3[2];
        v23 = v3[3];
        if (v24 >= v23 >> 1)
        {
          v3 = sub_260E41D7C((v23 > 1), v24 + 1, 1, v3);
        }

        v3[2] = v24 + 1;
        v25 = &v3[2 * v24];
        v25[4] = v22;
        v25[5] = v16;
      }

      v4 += 24;
      --v2;
    }

    while (v2);
    v26 = *(v0 + 88);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v27 = *(v0 + 64);

  v28 = sub_260E68E74();
  v29 = sub_260E69474();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = v0;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v50 = v32;
    *v31 = 136315138;
    v33 = v3[2];
    v34 = MEMORY[0x277D84F90];
    if (v33)
    {
      v51 = MEMORY[0x277D84F90];
      sub_260E696D4();
      v49 = v3;
      v35 = (v3 + 4);
      do
      {
        v36 = *v35;
        v35 += 2;
        v37 = v36;
        sub_260E696B4();
        v38 = *(v51 + 16);
        sub_260E696E4();
        sub_260E696F4();
        sub_260E696C4();
        --v33;
      }

      while (v33);
      v34 = v51;
      v3 = v49;
    }

    v0 = v30;
    v39 = *(v30 + 72);
    v40 = sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
    v41 = MEMORY[0x2666F0CD0](v34, v40);
    v43 = v42;

    v44 = sub_260E43774(v41, v43, &v50);

    *(v31 + 4) = v44;

    _os_log_impl(&dword_260E02000, v28, v29, "Fetch all records END -- loaded from CloudKit {records: %s}", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x2666F1EF0](v32, -1, -1);
    MEMORY[0x2666F1EF0](v31, -1, -1);
  }

  else
  {
  }

  v45 = *(v0 + 8);

  return v45(v3);
}

uint64_t sub_260E4B214()
{
  v20 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];

  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[6];
    v8 = v0[7];
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_260E43774(v9, v7, &v19);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v8;
    *v11 = v8;
    v13 = v8;
    _os_log_impl(&dword_260E02000, v5, v6, "Fetch all records FAIL {type: %s, database: %@}", v10, 0x16u);
    sub_260E4BA94(v11);
    MEMORY[0x2666F1EF0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x2666F1EF0](v12, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
  }

  v14 = v0[12];
  v15 = v0[9];
  swift_willThrow();

  v16 = v0[1];
  v17 = v0[12];

  return v16();
}

uint64_t sub_260E4B3BC()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE54AC0);
  v1 = __swift_project_value_buffer(v0, qword_27FE54AC0);
  if (qword_27FE53E60 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CBA0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_260E4B484(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_260E4B4A4, 0, 0);
}

uint64_t sub_260E4B4A4()
{
  v1 = v0[3];
  v2 = [objc_allocWithZone(MEMORY[0x277CBC4F0]) init];
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277CBBE68] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = sub_260E157C4(0, &qword_27FE545D0, 0x277CBC5A0);
  *v5 = v0;
  v5[1] = sub_260E4B5BC;
  v7 = v0[4];

  return MEMORY[0x28210DEC0](v0 + 2, v2, 0, &unk_260E6F170, v3, v6);
}

uint64_t sub_260E4B5BC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_260E4B740;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_260E4B6D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_260E4B6D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_260E4B740()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_260E4B7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_260E4B7D0, 0, 0);
}

uint64_t sub_260E4B7D0()
{
  v2 = v0[20];
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_260E4B8F8;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54738, &qword_260E6D7A8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_260E343C0;
  v0[13] = &block_descriptor_1;
  v0[14] = v3;
  [v2 fetchRecordWithID:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_260E4B8F8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_260E4BA28;
  }

  else
  {
    v3 = sub_260E4BA08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260E4BA28()
{
  v1 = *(v0 + 176);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 176);

  return v2();
}

uint64_t sub_260E4BA94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542F0, &unk_260E6BFF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260E4BB14(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260E30A3C;

  return sub_260E4B7AC(a1, a2, v6);
}

uint64_t AbstractAssetRequest.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 104)));
  return v0;
}

uint64_t sub_260E4BC68()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE54AE0);
  v1 = __swift_project_value_buffer(v0, qword_27FE54AE0);
  if (qword_27FE53E50 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AbstractAssetRequest.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = *(v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v3, v6);
  v9 = type metadata accessor for MobileAssetManager();
  v10 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v10 + 112) = 0;
  *(v10 + 120) = &unk_260E704C8;
  *(v10 + 128) = 0;
  *(v10 + 136) = &unk_260E704B8;
  *(v10 + 144) = 0;
  v14[3] = v9;
  v14[4] = &off_2873619E8;
  v14[0] = v10;
  v11 = (*(v1 + 112))(v8, v14);
  (*(v4 + 8))(a1, v3);
  return v11;
}

uint64_t sub_260E4BEF4(uint64_t a1, __int128 *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_260E4BF44(a1, a2);
  return v7;
}

uint64_t sub_260E4BF44(uint64_t a1, __int128 *a2)
{
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 96), a1);
  sub_260E41B2C(a2, v2 + *(*v2 + 104));
  return v2;
}

uint64_t sub_260E4BFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for MobileAssetRequest();
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E4C088, 0, 0);
}

uint64_t sub_260E4C088()
{
  v20 = v0;
  if (qword_27FE53DE0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = sub_260E68E94();
  *(v0 + 72) = __swift_project_value_buffer(v3, qword_27FE54AE0);
  sub_260E4C858(v2, v1);
  v4 = sub_260E68E74();
  v5 = sub_260E69474();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = sub_260E643C0();
    v12 = v11;
    sub_260E4C8BC(v7);
    v13 = sub_260E43774(v10, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_260E02000, v4, v5, "Beginning %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  else
  {

    sub_260E4C8BC(v7);
  }

  v14 = *__swift_project_boxed_opaque_existential_0(*(v0 + 40), *(*(v0 + 40) + 24));
  v15 = swift_task_alloc();
  *(v0 + 80) = v15;
  *v15 = v0;
  v15[1] = sub_260E4C294;
  v16 = *(v0 + 24);
  v17 = *(v0 + 32);

  return sub_260E60118(v16, v17, 0);
}

uint64_t sub_260E4C294()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_260E4C458;
  }

  else
  {
    v3 = sub_260E4C3A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_260E4C3A8()
{
  v1 = v0[3];
  v2 = type metadata accessor for MobileAssetResult();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_260E4C458()
{
  v30 = v0;
  v1 = v0[4];
  v2 = v0[7];
  v3 = v0[11];
  if (*(v1 + *(v0[6] + 20)))
  {
    v4 = v0[9];
    sub_260E4C858(v1, v0[7]);
    v5 = v3;
    v6 = sub_260E68E74();
    v7 = sub_260E69474();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[11];
    v10 = v0[7];
    if (v8)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29[0] = v12;
      *v11 = 136315394;
      sub_260E68A04();
      sub_260E4C918();
      v13 = sub_260E69804();
      v15 = v14;
      sub_260E4C8BC(v10);
      v16 = sub_260E43774(v13, v15, v29);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      v0[2] = v9;
      v17 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      v18 = sub_260E69074();
      v20 = sub_260E43774(v18, v19, v29);

      *(v11 + 14) = v20;
      _os_log_impl(&dword_260E02000, v6, v7, "Request %s failed: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F1EF0](v12, -1, -1);
      MEMORY[0x2666F1EF0](v11, -1, -1);
    }

    else
    {

      sub_260E4C8BC(v10);
    }

    v24 = v0[3];
    v25 = type metadata accessor for MobileAssetResult();
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    v27 = v0[7];
    v26 = v0[8];

    v22 = v0[1];
  }

  else
  {
    v21 = v0[8];
    swift_willThrow();

    v22 = v0[1];
    v23 = v0[11];
  }

  return v22();
}

uint64_t AbstractAssetRequest.__deallocating_deinit()
{
  AbstractAssetRequest.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_260E4C78C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_260E4C858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileAssetRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E4C8BC(uint64_t a1)
{
  v2 = type metadata accessor for MobileAssetRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_260E4C918()
{
  result = qword_27FE54B78;
  if (!qword_27FE54B78)
  {
    sub_260E68A04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54B78);
  }

  return result;
}

uint64_t sub_260E4C970()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_260E4C9C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_260E4CA08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_260E4CAD4()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  v6 = objc_allocWithZone(MEMORY[0x277D289D8]);
  if ((v5 & 1) == 0)
  {
    v9 = sub_260E68FF4();
    v8 = [v6 initWithType_];

    if (v3)
    {
      if (!v8)
      {
        return v8;
      }

      v10 = v8;
      v11 = sub_260E68FF4();
      v12 = sub_260E68FF4();
      [v10 addKeyValuePair:v11 with:v12];

      v13 = v10;
      v14 = sub_260E68FF4();
      v15 = sub_260E68FF4();
      [v13 addKeyValuePair:v14 with:v15];
    }

    else
    {
      if (!v8)
      {
        return v8;
      }

      v16 = v8;
      v14 = sub_260E68FF4();
      v15 = sub_260E68FF4();
      [v16 addKeyValuePair:v14 with:v15];
    }

    [v8 returnTypes_];
    return v8;
  }

  v7 = sub_260E68FF4();
  v8 = [v6 initWithType_];

  return v8;
}

uint64_t sub_260E4CCC4(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_260E696A4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_260E4DC24(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_260E4CFC4()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE54C00);
  v1 = __swift_project_value_buffer(v0, qword_27FE54C00);
  if (qword_27FE53E60 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CBA0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

ProductKit::SemanticVersion __swiftcall SemanticVersion.init(_:_:_:)(Swift::Int a1, Swift::Int a2, Swift::Int a3)
{
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
  result.patch = a3;
  result.minor = a2;
  result.major = a1;
  return result;
}

uint64_t SemanticVersion.init(asserting:)@<X0>(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = sub_260E69654();
  result = SemanticVersion.init(_:)(v2);
  if (v7)
  {
    sub_260E69644();

    v4 = sub_260E69654();
    MEMORY[0x2666F0C00](v4);

    result = sub_260E69704();
    __break(1u);
  }

  else
  {
    *a1 = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

ProductKit::SemanticVersion_optional __swiftcall SemanticVersion.init(_:)(Swift::String a1)
{
  v2 = v1;
  v41 = a1;
  sub_260E4D598();
  v3 = sub_260E695B4();

  if (v3[2] != 3)
  {

    goto LABEL_22;
  }

  v7 = v3[4];
  v8 = v3[5];
  v9 = HIBYTE(v8) & 0xF;
  v10 = v7 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v11 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    v32 = 0;
    v31 = 1;
    goto LABEL_70;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    goto LABEL_76;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    v41._countAndFlagsBits = v3[4];
    v41._object = (v8 & 0xFFFFFFFFFFFFFFLL);
    if (v7 == 43)
    {
      if (v9)
      {
        v13 = v9 - 1;
        if (v9 != 1)
        {
          v7 = 0;
          v23 = &v41._countAndFlagsBits + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              break;
            }

            v25 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v25 + v24;
            if (__OFADD__(v25, v24))
            {
              break;
            }

            ++v23;
            if (!--v13)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      if (v7 != 45)
      {
        if (!v9)
        {
          goto LABEL_64;
        }

        v7 = 0;
        v28 = &v41;
        do
        {
          v29 = LOBYTE(v28->_countAndFlagsBits) - 48;
          if (v29 > 9)
          {
            goto LABEL_64;
          }

          v30 = 10 * v7;
          if ((v7 * 10) >> 64 != (10 * v7) >> 63)
          {
            goto LABEL_64;
          }

          v7 = v30 + v29;
          if (__OFADD__(v30, v29))
          {
            goto LABEL_64;
          }

          v28 = (v28 + 1);
          --v9;
        }

        while (v9);
        goto LABEL_63;
      }

      if (v9)
      {
        v13 = v9 - 1;
        if (v9 != 1)
        {
          v7 = 0;
          v17 = &v41._countAndFlagsBits + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            v19 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              break;
            }

            v7 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              break;
            }

            ++v17;
            if (!--v13)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
    }

    __break(1u);
    goto LABEL_83;
  }

  if ((v7 & 0x1000000000000000) == 0)
  {
    goto LABEL_78;
  }

  for (i = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_260E696A4())
  {
    v12 = *i;
    if (v12 == 43)
    {
      if (v10 < 1)
      {
        goto LABEL_81;
      }

      v13 = v10 - 1;
      if (v10 != 1)
      {
        v7 = 0;
        if (!i)
        {
          goto LABEL_63;
        }

        v20 = i + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v7;
          if ((v7 * 10) >> 64 != (10 * v7) >> 63)
          {
            break;
          }

          v7 = v22 + v21;
          if (__OFADD__(v22, v21))
          {
            break;
          }

          ++v20;
          if (!--v13)
          {
            goto LABEL_65;
          }
        }
      }
    }

    else if (v12 == 45)
    {
      if (v10 < 1)
      {
        __break(1u);
        goto LABEL_80;
      }

      v13 = v10 - 1;
      if (v10 != 1)
      {
        v7 = 0;
        if (!i)
        {
          goto LABEL_63;
        }

        v14 = i + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v7;
          if ((v7 * 10) >> 64 != (10 * v7) >> 63)
          {
            break;
          }

          v7 = v16 - v15;
          if (__OFSUB__(v16, v15))
          {
            break;
          }

          ++v14;
          if (!--v13)
          {
            goto LABEL_65;
          }
        }
      }
    }

    else if (v10)
    {
      v7 = 0;
      if (!i)
      {
LABEL_63:
        LOBYTE(v13) = 0;
        goto LABEL_65;
      }

      while (1)
      {
        v26 = *i - 48;
        if (v26 > 9)
        {
          break;
        }

        v27 = 10 * v7;
        if ((v7 * 10) >> 64 != (10 * v7) >> 63)
        {
          break;
        }

        v7 = v27 + v26;
        if (__OFADD__(v27, v26))
        {
          break;
        }

        ++i;
        if (!--v10)
        {
          goto LABEL_63;
        }
      }
    }

LABEL_64:
    v7 = 0;
    LOBYTE(v13) = 1;
LABEL_65:
    v31 = v13;
    while (1)
    {
      v32 = (v31 & 1) != 0 ? 0 : v7;
      if (v3[2] >= 2uLL)
      {
        break;
      }

      __break(1u);
LABEL_76:

      v7 = sub_260E4DC24(v7, v8, 10);
      v31 = v40;
    }

LABEL_70:
    v33 = v3[6];
    v8 = v3[7];

    v34 = sub_260E4CCC4(v33, v8);
    if (v3[2] >= 3uLL)
    {
      break;
    }

    __break(1u);
LABEL_78:
    ;
  }

  v36 = v34;
  v37 = v35;
  v38 = v3[8];
  v39 = v3[9];

  i = sub_260E4CCC4(v38, v39);
  if (((v31 | v37) & 1) == 0 && (v10 & 1) == 0)
  {
    *v2 = v32;
    *(v2 + 8) = v36;
    *(v2 + 16) = i;
    *(v2 + 24) = 0;
    goto LABEL_83;
  }

LABEL_22:
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
LABEL_83:
  result.value.patch = v5;
  result.value.minor = v10;
  result.value.major = i;
  result.is_nil = v6;
  return result;
}

unint64_t sub_260E4D598()
{
  result = qword_27FE54C18;
  if (!qword_27FE54C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54C18);
  }

  return result;
}

BOOL static SemanticVersion.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (*a1 >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  return v4 != v5 || a1[2] < a2[2];
}

Swift::Void __swiftcall SemanticVersion.assertContains(version:)(Swift::String version)
{
  object = version._object;
  countAndFlagsBits = version._countAndFlagsBits;
  v5 = *v1;
  v6 = *(v1 + 2);
  if (!SemanticVersion.contains(version:)(version))
  {
    sub_260E69644();
    MEMORY[0x2666F0C00](0xD000000000000018, 0x8000000260E72D10);
    if (qword_27FE53E08 != -1)
    {
      swift_once();
    }

    v4 = SemanticVersion.description.getter();
    MEMORY[0x2666F0C00](v4);

    MEMORY[0x2666F0C00](0xD000000000000021, 0x8000000260E72D30);
    MEMORY[0x2666F0C00](countAndFlagsBits, object);
    MEMORY[0x2666F0C00](0xD000000000000035, 0x8000000260E72D60);
    sub_260E69704();
    __break(1u);
  }
}

Swift::Bool __swiftcall SemanticVersion.contains(version:)(Swift::String version)
{
  object = version._object;
  countAndFlagsBits = version._countAndFlagsBits;
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];

  v7._countAndFlagsBits = countAndFlagsBits;
  v7._object = object;
  SemanticVersion.init(_:)(v7);
  if ((v22 & 1) == 0)
  {
    return v4 >= v20 && v5 >= *(&v20 + 1) && v6 >= v21;
  }

  if (qword_27FE53DE8 != -1)
  {
    swift_once();
  }

  v8 = sub_260E68E94();
  __swift_project_value_buffer(v8, qword_27FE54C00);

  v9 = sub_260E68E74();
  v10 = sub_260E69454();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315394;
    if (qword_27FE53E08 != -1)
    {
      swift_once();
    }

    v20 = xmmword_27FE54FE0;
    v21 = qword_27FE54FF0;
    v13 = SemanticVersion.description.getter();
    v15 = sub_260E43774(v13, v14, &v19);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_260E43774(countAndFlagsBits, object, &v19);
    _os_log_impl(&dword_260E02000, v9, v10, "### Failed ProductKit Runtime Version check {SDKVersion: %s, RuntimeVersion: %s}", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v12, -1, -1);
    MEMORY[0x2666F1EF0](v11, -1, -1);
  }

  return 0;
}

uint64_t SemanticVersion.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v6 = *v0;
  v7 = sub_260E69804();
  MEMORY[0x2666F0C00](46, 0xE100000000000000);
  v3 = sub_260E69804();
  MEMORY[0x2666F0C00](v3);

  MEMORY[0x2666F0C00](46, 0xE100000000000000);
  v4 = sub_260E69804();
  MEMORY[0x2666F0C00](v4);

  return v7;
}

BOOL sub_260E4DABC(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (*a1 >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  return v4 != v5 || a1[2] < a2[2];
}

BOOL sub_260E4DAEC(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (*a2 >= *a1)
  {
    v5 = __OFSUB__(v3, v2);
    v4 = v3 - v2 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  return v4 == v5 && a2[2] >= a1[2];
}

BOOL sub_260E4DB1C(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (*a1 >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  return v4 == v5 && a1[2] >= a2[2];
}

BOOL sub_260E4DB4C(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (*a2 >= *a1)
  {
    v5 = __OFSUB__(v3, v2);
    v4 = v3 - v2 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  return v4 != v5 || a2[2] < a1[2];
}

void *sub_260E4DBB0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE549A8, &qword_260E6E5B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_260E4DC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_260E69174();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_260E4E22C();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_260E696A4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_260E4E1B4()
{
  result = qword_27FE54C20;
  if (!qword_27FE54C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54C20);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_260E4E22C()
{
  v0 = sub_260E69184();
  v4 = sub_260E4E2AC(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_260E4E2AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_260E690B4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_260E695A4();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_260E4DBB0(v9, 0);
  v12 = sub_260E4E404(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_260E690B4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_260E696A4();
LABEL_4:

  return sub_260E690B4();
}

unint64_t sub_260E4E404(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_260E4E624(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_260E69144();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_260E696A4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_260E4E624(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_260E69124();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_260E4E624(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_260E69154();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2666F0C40](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t iosmacHardware.init(_:)@<X0>(_WORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54C28, "Pn");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_260E68C04();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(a1) = *a1;
  *(a2 + *(type metadata accessor for iosmacHardware() + 20)) = a1;
  v15[7] = a1;
  iosmacHardware.Model.rawValue.getter();
  sub_260E68BF4();
  v13 = *(v9 + 48);
  if (v13(v7, 1, v8) == 1)
  {
    (*(v9 + 104))(v12, *MEMORY[0x277D426E0], v8);
    if (v13(v7, 1, v8) != 1)
    {
      sub_260E4F714(v7);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
  }

  return (*(v9 + 32))(a2, v12, v8);
}

uint64_t iosmacHardware.model.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for iosmacHardware();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t iosmacHardware.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54C28, "Pn");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = sub_260E68C04();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for iosmacHardware();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  iosmacHardware.Model.init(rawValue:)(&v27);
  v19 = v27;
  if (v27 != 286)
  {

    sub_260E68BF4();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {

      v21 = *(v10 + 32);
      v21(v13, v8, v9);
      *&v18[*(v14 + 20)] = v19;
      v21(v18, v13, v9);
      goto LABEL_10;
    }

    sub_260E4F714(v8);
  }

  if (a1 == 0x656E6F685069 && a2 == 0xE600000000000000 || (sub_260E69834() & 1) != 0)
  {

    *&v18[*(v14 + 20)] = 166;
    v20 = MEMORY[0x277D426E0];
  }

  else if (a1 == 1684099177 && a2 == 0xE400000000000000 || (sub_260E69834() & 1) != 0)
  {

    *&v18[*(v14 + 20)] = 107;
    v20 = MEMORY[0x277D42728];
  }

  else if (a1 == 0x6E696D2064615069 && a2 == 0xE900000000000069 || (sub_260E69834() & 1) != 0)
  {

    *&v18[*(v14 + 20)] = 77;
    v20 = MEMORY[0x277D42720];
  }

  else if (a1 == 1685016681 && a2 == 0xE400000000000000 || (sub_260E69834() & 1) != 0)
  {

    *&v18[*(v14 + 20)] = 184;
    v20 = MEMORY[0x277D42700];
  }

  else if (a1 == 0x206B6F6F4263614DLL && a2 == 0xEB000000006F7250 || (sub_260E69834() & 1) != 0)
  {

    *&v18[*(v14 + 20)] = 229;
    v20 = MEMORY[0x277D426F0];
  }

  else if (a1 == 0x206B6F6F4263614DLL && a2 == 0xEB00000000726941 || (sub_260E69834() & 1) != 0)
  {

    *&v18[*(v14 + 20)] = 189;
    v20 = MEMORY[0x277D42710];
  }

  else if (a1 == 0x6F72502063614D69 && a2 == 0xE800000000000000 || (sub_260E69834() & 1) != 0)
  {

    *&v18[*(v14 + 20)] = 22;
    v20 = MEMORY[0x277D426D8];
  }

  else if (a1 == 1667321193 && a2 == 0xE400000000000000 || (sub_260E69834() & 1) != 0)
  {

    *&v18[*(v14 + 20)] = 17;
    v20 = MEMORY[0x277D42718];
  }

  else if (a1 == 0x696E696D2063614DLL && a2 == 0xE800000000000000 || (sub_260E69834() & 1) != 0)
  {

    *&v18[*(v14 + 20)] = 238;
    v20 = MEMORY[0x277D426E8];
  }

  else if (a1 == 0x647574532063614DLL && a2 == 0xEA00000000006F69 || (sub_260E69834() & 1) != 0)
  {

    *&v18[*(v14 + 20)] = 186;
    v20 = MEMORY[0x277D42708];
  }

  else
  {
    if (a1 == 0x695620656C707041 && a2 == 0xEC0000006E6F6973)
    {
    }

    else
    {
      v25 = sub_260E69834();

      if ((v25 & 1) == 0)
      {
        v23 = 1;
        v22 = v26;
        return (*(v15 + 56))(v22, v23, 1, v14);
      }
    }

    *&v18[*(v14 + 20)] = 273;
    v20 = MEMORY[0x277D426F8];
  }

  (*(v10 + 104))(v18, *v20, v9);
LABEL_10:
  v22 = v26;
  sub_260E4F77C(v18, v26);
  v23 = 0;
  return (*(v15 + 56))(v22, v23, 1, v14);
}

uint64_t iosmacHardware.image.getter()
{
  v1 = v0;
  v2 = sub_260E68C04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_260E68C24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v10);
  sub_260E68C34();
  sub_260E68C14();
  if (v13)
  {
    sub_260E68E64();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    v16 = sub_260E68EB4();
  }

  else
  {
    v16 = sub_260E68EA4();
  }

  v17 = v16;
  (*(v8 + 8))(v12, v7);
  return v17;
}

uint64_t iosmacHardware.imageName.getter()
{
  v1 = sub_260E68C04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_260E68C24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v9);
  sub_260E68C34();
  v12 = sub_260E68C14();
  (*(v7 + 8))(v11, v6);
  return v12;
}

uint64_t sub_260E4F300@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + *(a1 + 20));
  result = iosmacHardware.Model.rawValue.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_260E4F340@<X0>(uint64_t *a1@<X8>)
{
  result = _s10ProductKit14iosmacHardwareV8allCasesSayACGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t _s10ProductKit14iosmacHardwareV8allCasesSayACGvgZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54C28, "Pn");
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v27 - v2;
  v4 = sub_260E68C04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for iosmacHardware();
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v32 = &v27 - v14;
  v34 = MEMORY[0x277D84F90];
  sub_260E65A00(0, 286, 0);
  v15 = v34;
  v16 = (v5 + 48);
  v17 = (v5 + 32);
  v28 = *MEMORY[0x277D426E0];
  v27 = (v5 + 104);
  v18 = 0x20u;
  v29 = (v5 + 48);
  do
  {
    v19 = *(&unk_28735D038 + v18);
    *&v12[*(v31 + 20)] = v19;
    v33 = v19;
    iosmacHardware.Model.rawValue.getter();
    sub_260E68BF4();
    v20 = *v16;
    if ((*v16)(v3, 1, v4) == 1)
    {
      (*v27)(v8, v28, v4);
      if (v20(v3, 1, v4) != 1)
      {
        sub_260E4F714(v3);
      }
    }

    else
    {
      (*v17)(v8, v3, v4);
    }

    v21 = v3;
    v22 = v8;
    (*v17)(v12, v8, v4);
    v23 = v32;
    sub_260E4F77C(v12, v32);
    v34 = v15;
    v25 = *(v15 + 16);
    v24 = *(v15 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_260E65A00(v24 > 1, v25 + 1, 1);
      v23 = v32;
      v15 = v34;
    }

    *(v15 + 16) = v25 + 1;
    sub_260E4F77C(v23, v15 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25);
    v18 += 2;
    v8 = v22;
    v3 = v21;
    v16 = v29;
  }

  while (v18 != 604);
  return v15;
}

uint64_t type metadata accessor for iosmacHardware()
{
  result = qword_27FE54C40;
  if (!qword_27FE54C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260E4F714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54C28, "Pn");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260E4F77C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for iosmacHardware();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_260E4F7E4()
{
  result = qword_27FE54C30;
  if (!qword_27FE54C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE54C38, &qword_260E6F460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54C30);
  }

  return result;
}

uint64_t sub_260E4F85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260E68C04();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0x11E)
    {
      return v10 - 285;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_260E4F928(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_260E68C04();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 285;
  }

  return result;
}

uint64_t sub_260E4F9E0()
{
  result = sub_260E68C04();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_260E4FA54()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE54C50);
  v1 = __swift_project_value_buffer(v0, qword_27FE54C50);
  if (qword_27FE53E50 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_260E4FB3C(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = *(MEMORY[0x277D857E8] + 4);
  v6 = swift_task_alloc();
  *(v1 + 24) = v6;
  *v6 = v1;
  v6[1] = sub_260E4FC24;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_260E4FC24()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_260E4FD20(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_260E69584();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata2;
}

uint64_t sub_260E4FD98(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v6 - 1;
  v8 = *(*(*(a3 + 32) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (v5 >= 2)
  {
    v9 = 8;
  }

  else
  {
    v7 = 0;
    v9 = 9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v11 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + v9;
  v12 = 8 * v11;
  if (v11 > 3)
  {
LABEL_14:
    v14 = *(a1 + v11);
    if (!*(a1 + v11))
    {
      goto LABEL_25;
    }

LABEL_17:
    v15 = (v14 - 1) << v12;
    if (v11 >= 4)
    {
      v15 = 0;
    }

    if (v11)
    {
      if (v11 == 1)
      {
        LODWORD(v11) = *a1;
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    return v7 + (v11 | v15) + 1;
  }

  v13 = ((v10 + ~(-1 << v12)) >> v12) + 1;
  if (HIWORD(v13))
  {
    v14 = *(a1 + v11);
    if (v14)
    {
      goto LABEL_17;
    }
  }

  else if (v13 > 0xFF)
  {
    v14 = *(a1 + v11);
    if (*(a1 + v11))
    {
      goto LABEL_17;
    }
  }

  else if (v13 >= 2)
  {
    goto LABEL_14;
  }

LABEL_25:
  if (!v7)
  {
    return 0;
  }

  if (v5 < 2)
  {
    return 0;
  }

  v17 = (*(v4 + 48))(a1, v5);
  v18 = v17 >= 2;
  result = v17 - 2;
  if (result == 0 || !v18)
  {
    return 0;
  }

  return result;
}

void sub_260E4FEF4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 32) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (!v8)
  {
    v10 = 0;
    ++v9;
  }

  v11 = 8;
  if (v8 < 2)
  {
    v11 = 9;
  }

  v12 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + v11;
  v13 = v10 - 1;
  if (v8 < 2)
  {
    v13 = 0;
  }

  v14 = a3 >= v13;
  v15 = a3 - v13;
  if (v15 == 0 || !v14)
  {
LABEL_19:
    if (v13 < a2)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  if (v12 > 3)
  {
    v6 = 1;
    if (v13 < a2)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  v16 = ((v15 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_19;
  }

  v6 = 4;
  if (v13 < a2)
  {
LABEL_20:
    v18 = ~v13 + a2;
    if (v12 >= 4)
    {
      bzero(a1, v12);
      v19 = 1;
      goto LABEL_47;
    }

    v19 = (v18 >> (8 * v12)) + 1;
    if (v12)
    {
      bzero(a1, v12);
      if (v12 != 1)
      {
        v18 = v18;
LABEL_47:
        *a1 = v18;
        if (v6 > 1)
        {
LABEL_48:
          if (v6 == 2)
          {
            *&a1[v12] = v19;
          }

          else
          {
            *&a1[v12] = v19;
          }

          return;
        }

        goto LABEL_26;
      }

      *a1 = v18;
    }

    if (v6 > 1)
    {
      goto LABEL_48;
    }

LABEL_26:
    if (v6)
    {
      a1[v12] = v19;
    }

    return;
  }

LABEL_29:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v12] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *&a1[v12] = 0;
  }

  else if (v6)
  {
    a1[v12] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (a2 + 1 <= v10)
  {
    if (a2 != -1 && v8 >= 2)
    {
      v21 = *(v7 + 56);

      v21();
    }
  }

  else if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v20 = a2 - v10;
    bzero(a1, ((v9 + 7) & 0xFFFFFFF8) + 8);
    *a1 = v20;
  }
}

uint64_t sub_260E5015C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_260E50198(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_260E501E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_260E50238@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = sub_260E68904();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v47 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v44);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v42 = &v41 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54D68, &qword_260E6F550);
  v18 = *(v6 + 72);
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v46 = v18;
  v43 = swift_allocObject();
  v48 = v43 + v19;
  v20 = sub_260E68FF4();
  v21 = sub_260E68FF4();
  v22 = v1;
  v23 = [v1 URLForResource:v20 withExtension:v21];

  if (v23)
  {
    sub_260E688C4();

    v24 = *(v3 + 56);
    v24(v17, 0, 1, v2);
  }

  else
  {
    v24 = *(v3 + 56);
    v24(v17, 1, 1, v2);
  }

  v25 = v2;
  sub_260E48D40(v17, v48);
  v26 = sub_260E68FF4();
  v27 = sub_260E68FF4();
  v28 = [v22 URLForResource:v26 withExtension:v27];

  v29 = v42;
  if (v28)
  {
    sub_260E688C4();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v24(v15, v30, 1, v25);
  v31 = v48;
  sub_260E48D40(v15, v48 + v46);
  sub_260E48DB0(v31, v29);
  sub_260E48D40(v29, v10);
  v32 = *(v3 + 48);
  v33 = (v3 + 32);
  if (v32(v10, 1, v25) == 1)
  {
    sub_260E5086C(v10);
    v34 = MEMORY[0x277D84F90];
  }

  else
  {
    v41 = *v33;
    v41(v47, v10, v25);
    v34 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_260E41BA4(0, *(v34 + 2) + 1, 1, v34);
    }

    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    if (v36 >= v35 >> 1)
    {
      v34 = sub_260E41BA4(v35 > 1, v36 + 1, 1, v34);
    }

    *(v34 + 2) = v36 + 1;
    v41(&v34[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36], v47, v25);
  }

  sub_260E48DB0(v48 + v46, v29);
  sub_260E48D40(v29, v10);
  if (v32(v10, 1, v25) == 1)
  {
    sub_260E5086C(v10);
  }

  else
  {
    v37 = *v33;
    (*v33)(v47, v10, v25);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_260E41BA4(0, *(v34 + 2) + 1, 1, v34);
    }

    v39 = *(v34 + 2);
    v38 = *(v34 + 3);
    if (v39 >= v38 >> 1)
    {
      v34 = sub_260E41BA4(v38 > 1, v39 + 1, 1, v34);
    }

    *(v34 + 2) = v39 + 1;
    v37(&v34[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v39], v47, v25);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v34 + 2))
  {
    (*(v3 + 16))(v45, &v34[(*(v3 + 80) + 32) & ~*(v3 + 80)], v25);
  }

  else
  {

    result = sub_260E69704();
    __break(1u);
  }

  return result;
}

uint64_t sub_260E5086C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260E508D4()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE54D70);
  v1 = __swift_project_value_buffer(v0, qword_27FE54D70);
  if (qword_27FE53E58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB88);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_260E5099C()
{
  v0 = sub_260E687A4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_260E68794();
  qword_27FE54D88 = result;
  return result;
}

uint64_t sub_260E509EC()
{
  if (*v0)
  {
    result = 0x746867696568;
  }

  else
  {
    result = 0x6874646977;
  }

  *v0;
  return result;
}

uint64_t sub_260E50A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (sub_260E69834() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_260E69834();

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

uint64_t sub_260E50AF4(uint64_t a1)
{
  v2 = sub_260E50CF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260E50B30(uint64_t a1)
{
  v2 = sub_260E50CF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FrameInlet.FrameSize.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54D90, &qword_260E6F558);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v10 = *v1;
  v9 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E50CF4();
  sub_260E69944();
  v13[15] = 0;
  sub_260E697D4();
  if (!v2)
  {
    v13[14] = 1;
    sub_260E697D4();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_260E50CF4()
{
  result = qword_27FE54D98;
  if (!qword_27FE54D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54D98);
  }

  return result;
}

uint64_t FrameInlet.FrameSize.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54DA0, &qword_260E6F560);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E50CF4();
  sub_260E69934();
  if (!v2)
  {
    v18 = 0;
    sub_260E69794();
    v12 = v11;
    v17 = 1;
    sub_260E69794();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

__n128 FrameInlet.size.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

ProductKit::FrameInlet __swiftcall FrameInlet.init(size:verticalOffset:cornerRadius:)(ProductKit::FrameInlet::FrameSize size, Swift::Double verticalOffset, Swift::Double cornerRadius)
{
  v5 = *v3;
  *v4 = *v3;
  *(v4 + 16) = size.width;
  *(v4 + 24) = size.height;
  result.verticalOffset = *&v5;
  result.size.height = size.height;
  result.size.width = size.width;
  result.cornerRadius = cornerRadius;
  return result;
}

uint64_t sub_260E50F4C()
{
  v1 = 0x6C61636974726576;
  if (*v0 != 1)
  {
    v1 = 0x615272656E726F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702521203;
  }
}

uint64_t sub_260E50FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_260E51AB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_260E50FDC(uint64_t a1)
{
  v2 = sub_260E5121C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260E51018(uint64_t a1)
{
  v2 = sub_260E5121C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FrameInlet.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54DA8, &qword_260E6F568);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-v7];
  v9 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v11 = v1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E5121C();
  sub_260E69944();
  v16 = v9;
  v17 = v10;
  v15[15] = 0;
  sub_260E51270();
  sub_260E697F4();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_260E697D4();
    LOBYTE(v16) = 2;
    sub_260E697D4();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_260E5121C()
{
  result = qword_27FE54DB0;
  if (!qword_27FE54DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54DB0);
  }

  return result;
}

unint64_t sub_260E51270()
{
  result = qword_27FE54DB8;
  if (!qword_27FE54DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54DB8);
  }

  return result;
}

uint64_t FrameInlet.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54DC0, &qword_260E6F570);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E5121C();
  sub_260E69934();
  if (!v2)
  {
    v19 = 0;
    sub_260E514BC();
    sub_260E697B4();
    v11 = v18[0];
    v12 = v18[1];
    LOBYTE(v18[0]) = 1;
    sub_260E69794();
    v15 = v14;
    LOBYTE(v18[0]) = 2;
    sub_260E69794();
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v15;
    a2[3] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_260E514BC()
{
  result = qword_27FE54DC8;
  if (!qword_27FE54DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54DC8);
  }

  return result;
}

double FrameInlet.init(fileURL:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_260E68914();
  v6 = v5;
  if (qword_27FE53E00 != -1)
  {
    swift_once();
  }

  sub_260E51814();
  sub_260E68784();
  v7 = sub_260E68904();
  (*(*(v7 - 8) + 8))(a1, v7);
  sub_260E15FB4(v4, v6);
  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = 0;
  return result;
}

double FrameInlet.cgRect.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return 0.0;
}

unint64_t sub_260E51814()
{
  result = qword_27FE54DD0;
  if (!qword_27FE54DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54DD0);
  }

  return result;
}

unint64_t sub_260E518AC()
{
  result = qword_27FE54DD8;
  if (!qword_27FE54DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54DD8);
  }

  return result;
}

unint64_t sub_260E51904()
{
  result = qword_27FE54DE0;
  if (!qword_27FE54DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54DE0);
  }

  return result;
}

unint64_t sub_260E5195C()
{
  result = qword_27FE54DE8;
  if (!qword_27FE54DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54DE8);
  }

  return result;
}

unint64_t sub_260E519B4()
{
  result = qword_27FE54DF0;
  if (!qword_27FE54DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54DF0);
  }

  return result;
}

unint64_t sub_260E51A0C()
{
  result = qword_27FE54DF8;
  if (!qword_27FE54DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54DF8);
  }

  return result;
}

unint64_t sub_260E51A64()
{
  result = qword_27FE54E00;
  if (!qword_27FE54E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54E00);
  }

  return result;
}

uint64_t sub_260E51AB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (sub_260E69834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61636974726576 && a2 == 0xEE0074657366664FLL || (sub_260E69834() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964)
  {

    return 2;
  }

  else
  {
    v6 = sub_260E69834();

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

uint64_t dispatch thunk of VideoPlaybackControllable.fastForward(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 96);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_260E0F964;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of VideoPlaybackControllable.fastForward(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 104);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_260E52BF8;

  return v15(a1, a2, a3, a4, a5);
}

void sub_260E51FE0()
{
  sub_260E68904();
  if (v0 <= 0x3F)
  {
    sub_260E52068();
    if (v1 <= 0x3F)
    {
      sub_260E520CC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_260E52068()
{
  if (!qword_27FE54E18)
  {
    sub_260E68904();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FE54E18);
    }
  }
}

void sub_260E520CC()
{
  if (!qword_27FE54E20)
  {
    sub_260E68904();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27FE54E20);
    }
  }
}

uint64_t sub_260E52148(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_260E68904();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542E0, &qword_260E6BFE8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[11]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_260E5231C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_260E68904();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542E0, &qword_260E6BFE8);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[11]) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_260E524EC()
{
  type metadata accessor for VideoViewConfiguration.VideoSequence(319);
  if (v0 <= 0x3F)
  {
    sub_260E68904();
    if (v1 <= 0x3F)
    {
      sub_260E52644(319, &qword_27FE54E38, MEMORY[0x277CC9260]);
      if (v2 <= 0x3F)
      {
        sub_260E52644(319, &qword_27FE54E40, MEMORY[0x277D42738]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CGSize(319);
          if (v4 <= 0x3F)
          {
            sub_260E52644(319, &qword_27FE54E48, type metadata accessor for CATransform3D);
            if (v5 <= 0x3F)
            {
              sub_260E52698();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_260E52644(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_260E69584();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_260E52698()
{
  if (!qword_27FE54E50)
  {
    v0 = sub_260E69584();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE54E50);
    }
  }
}

char *sub_260E526E8(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54320, &qword_260E6E720);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D8, &unk_260E6C160);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v30[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30[-1] - v12;
  v14 = type metadata accessor for VideoViewConfiguration(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v30[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v30[-1] - v20;
  sub_260E15684(a1, v13, &qword_27FE544D8, &unk_260E6C160);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_260E155E4(v13, &qword_27FE544D8, &unk_260E6C160);
  }

  else
  {
    sub_260E52A7C(v13, v21);
    sub_260E15684(&v21[*(v14 + 24)], v6, &qword_27FE54320, &qword_260E6E720);
    v22 = sub_260E68904();
    if ((*(*(v22 - 8) + 48))(v6, 1, v22) == 1)
    {
      sub_260E52AE0(v21);
      sub_260E155E4(v6, &qword_27FE54320, &qword_260E6E720);
    }

    else
    {
      sub_260E155E4(v6, &qword_27FE54320, &qword_260E6E720);
      if (v29)
      {

        if (sub_260E68E44())
        {
          sub_260E52B3C(v21, v19);
          v23 = type metadata accessor for PersonalizedVideoView(0);
          v24 = objc_allocWithZone(v23);
          v25 = sub_260E0CE14(v19);
          v30[3] = v23;
          v30[4] = sub_260E52BA0();
          v30[0] = v25;
          v26 = v25;
          sub_260E68E34();

          sub_260E52AE0(v21);
          __swift_destroy_boxed_opaque_existential_0(v30);
          return v26;
        }

        sub_260E52AE0(v21);
      }

      else
      {
        sub_260E52AE0(v21);
      }
    }
  }

  sub_260E15684(a1, v11, &qword_27FE544D8, &unk_260E6C160);
  v28 = objc_allocWithZone(type metadata accessor for AdjustedVideoView());
  return sub_260E559EC(v11);
}

uint64_t sub_260E52A7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoViewConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E52AE0(uint64_t a1)
{
  v2 = type metadata accessor for VideoViewConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260E52B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoViewConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_260E52BA0()
{
  result = qword_27FE54E58;
  if (!qword_27FE54E58)
  {
    type metadata accessor for PersonalizedVideoView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54E58);
  }

  return result;
}

id FrameInletImageView.inletView.getter()
{
  v1 = OBJC_IVAR____TtC10ProductKit19FrameInletImageView_inletView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void FrameInletImageView.inletView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ProductKit19FrameInletImageView_inletView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id FrameInletImageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Product.WatchBandFeature.URLs.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_260E69764();

  *a1 = v2 != 0;
  return result;
}

uint64_t Product.WatchBandFeature.Images.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_260E69764();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_260E52F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *))
{
  v14 = __swift_project_boxed_opaque_existential_0((v8 + *(a6 + 36)), *(v8 + *(a6 + 36) + 24));
  v15 = sub_260E53550();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v19 = *v14;

  sub_260E61A78(v15, v17, a2, a3, a8, v18);
}

uint64_t Product.WatchBandFeature.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Product.WatchBandFeature.Strings.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_260E69764();

  *a1 = v2 != 0;
  return result;
}

uint64_t Product.WatchBandFeature.Videos.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_260E69764();

  *a1 = v2 != 0;
  return result;
}

uint64_t Product.WatchBandFeature.Datas.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_260E69764();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_260E53344()
{
  sub_260E698F4();
  sub_260E690C4();
  return sub_260E69914();
}

uint64_t sub_260E533CC()
{
  sub_260E698F4();
  sub_260E690C4();
  return sub_260E69914();
}

uint64_t sub_260E53424@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_260E69764();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_260E534A4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_260E534D4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_260E54860(a1, a3, type metadata accessor for Product.Identifier);
  v5 = a3 + *(type metadata accessor for Product.WatchBand() + 36);

  return sub_260E41B2C(a2, v5);
}

uint64_t sub_260E53550()
{
  v1 = v0;
  v2 = type metadata accessor for Product.Identifier();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MarketingPartNumberURL();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E547FC(v1, v5);
  sub_260E54860(v5, v9, type metadata accessor for MarketingPartNumberURL);
  v10 = sub_260E688E4();
  sub_260E548C8(1uLL, v10, v11);

  v12 = sub_260E69594();
  v14 = v13;

  v17[0] = v12;
  v17[1] = v14;
  sub_260E69174();
  v15 = sub_260E69094();

  sub_260E361B4(v9);
  return v15;
}

uint64_t sub_260E536EC(uint64_t a1, void (*a2)(__int128 *), uint64_t a3)
{
  v6 = sub_260E68904();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v32 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54FD0, &qword_260E6FE68);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - v19;
  sub_260E54730(a1, &v32 - v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v20[16];
    v40 = *v20;
    LOBYTE(v41) = v21;
    HIBYTE(v41) = 1;
    a2(&v40);
    return sub_260E54978(v40, *(&v40 + 1), v41, SHIBYTE(v41));
  }

  v23 = *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54FD8, &qword_260E6FE70) + 48)];
  v37 = *(v7 + 32);
  v38 = v16;
  v37();
  if (!*(v23 + 16) || (v24 = sub_260E35BFC(0x6361666863746157, 0xEE00746E756F4365), (v25 & 1) == 0))
  {

    goto LABEL_17;
  }

  sub_260E1426C(*(v23 + 56) + 32 * v24, &v40);

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_17:
    v26 = MEMORY[0x277D84F90];
LABEL_18:
    v40 = v26;
    v41 = 0;
    a2(&v40);
    sub_260E54978(v40, *(&v40 + 1), v41, SHIBYTE(v41));
    return (*(v7 + 8))(v38, v6);
  }

  v34 = a3;
  v36 = v39;
  if (v39 >= 1)
  {
    v33 = a2;
    v35 = v7 + 8;
    v26 = MEMORY[0x277D84F90];
    v27 = 1;
    while (1)
    {
      v39 = v27;
      *&v40 = sub_260E69804();
      *(&v40 + 1) = v28;
      MEMORY[0x2666F0C00](0x616668637461772ELL, 0xEA00000000006563);
      sub_260E688A4();

      (*(v7 + 16))(v11, v14, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_260E41BA4(0, v26[2] + 1, 1, v26);
      }

      v30 = v26[2];
      v29 = v26[3];
      if (v30 >= v29 >> 1)
      {
        v26 = sub_260E41BA4(v29 > 1, v30 + 1, 1, v26);
      }

      (*(v7 + 8))(v14, v6);
      v26[2] = v30 + 1;
      result = (v37)(v26 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v30, v11, v6);
      if (v36 == v27)
      {
        break;
      }

      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        goto LABEL_20;
      }
    }

    a2 = v33;
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_260E53B28(uint64_t a1, void (*a2)(_BYTE *))
{
  v4 = sub_260E68904();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54FD0, &qword_260E6FE68);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v20[-v11];
  sub_260E54730(a1, &v20[-v11]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = v12[16];
    *v20 = *v12;
    *&v20[16] = v13;
    v21 = 1;
    a2(v20);
    return sub_260E547A0(*v20, *&v20[8], v20[16], v21);
  }

  else
  {
    v15 = *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54FD8, &qword_260E6FE70) + 48)];

    (*(v5 + 32))(v8, v12, v4);
    v16 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v17 = sub_260E68894();
    v18 = [v16 initWithURL_];

    if (v18)
    {
      *v20 = v18;
      *&v20[8] = xmmword_260E6F930;
      v21 = 0;
      v19 = v18;
      a2(v20);

      sub_260E547A0(*v20, *&v20[8], v20[16], v21);
    }

    else
    {
      *v20 = xmmword_260E6F940;
      *&v20[16] = 2;
      v21 = 1;
      a2(v20);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_260E53D9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_260E53DD8()
{
  result = qword_27FE54E80;
  if (!qword_27FE54E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54E80);
  }

  return result;
}

unint64_t sub_260E53E60()
{
  result = qword_27FE54E98;
  if (!qword_27FE54E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54E98);
  }

  return result;
}

unint64_t sub_260E53EE8()
{
  result = qword_27FE54EB0;
  if (!qword_27FE54EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54EB0);
  }

  return result;
}

unint64_t sub_260E53F70()
{
  result = qword_27FE54EC8;
  if (!qword_27FE54EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54EC8);
  }

  return result;
}

unint64_t sub_260E53FF8()
{
  result = qword_27FE54EE0;
  if (!qword_27FE54EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54EE0);
  }

  return result;
}

unint64_t sub_260E54080()
{
  result = qword_27FE54EF8;
  if (!qword_27FE54EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54EF8);
  }

  return result;
}

unint64_t sub_260E540D8()
{
  result = qword_27FE54F00;
  if (!qword_27FE54F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54F00);
  }

  return result;
}

unint64_t sub_260E54130()
{
  result = qword_27FE54F08;
  if (!qword_27FE54F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54F08);
  }

  return result;
}

unint64_t sub_260E54188()
{
  result = qword_27FE54F10;
  if (!qword_27FE54F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54F10);
  }

  return result;
}

unint64_t sub_260E541E0()
{
  result = qword_27FE54F18;
  if (!qword_27FE54F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54F18);
  }

  return result;
}

unint64_t sub_260E54238()
{
  result = qword_27FE54F20;
  if (!qword_27FE54F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54F20);
  }

  return result;
}

unint64_t sub_260E54290()
{
  result = qword_27FE54F28;
  if (!qword_27FE54F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54F28);
  }

  return result;
}

unint64_t sub_260E542E8()
{
  result = qword_27FE54F30;
  if (!qword_27FE54F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54F30);
  }

  return result;
}

unint64_t sub_260E54340()
{
  result = qword_27FE54F38;
  if (!qword_27FE54F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54F38);
  }

  return result;
}

unint64_t sub_260E54398()
{
  result = qword_27FE54F40[0];
  if (!qword_27FE54F40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE54F40);
  }

  return result;
}

unint64_t sub_260E54454()
{
  result = type metadata accessor for Product.Identifier();
  if (v1 <= 0x3F)
  {
    result = sub_260E546CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_260E544EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(type metadata accessor for Product.Identifier() - 8) + 84) == a2)
  {
    v6 = type metadata accessor for MarketingPartNumberURL();
    v7 = *(*(v6 - 8) + 48);

    return v7(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 36) + 24);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_260E545DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Product.Identifier();
  v10 = *(v8 - 8);
  result = v8 - 8;
  if (*(v10 + 84) == a3)
  {
    v11 = type metadata accessor for MarketingPartNumberURL();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 36) + 24) = (a2 - 1);
  }

  return result;
}

unint64_t sub_260E546CC()
{
  result = qword_27FE54FC8;
  if (!qword_27FE54FC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FE54FC8);
  }

  return result;
}

uint64_t sub_260E54730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54FD0, &qword_260E6FE68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E547A0(void *a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {

    return sub_260E1A330(a1, a2, a3);
  }

  else
  {
  }
}

uint64_t sub_260E547FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Product.Identifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E54860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_260E548C8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_260E690E4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_260E69184();
}

uint64_t sub_260E54978(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_260E1A330(a1, a2, a3);
  }

  else
  {
  }
}

double ProductKitVersion.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27FE53E08 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_27FE54FF0;
  result = *&xmmword_27FE54FE0;
  *a1 = xmmword_27FE54FE0;
  *(a1 + 16) = v1;
  return result;
}

void *Product.Catalog.__allocating_init()()
{
  v0 = type metadata accessor for MobileAssetManager();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = &unk_260E704C8;
  *(v1 + 128) = 0;
  *(v1 + 136) = &unk_260E704B8;
  *(v1 + 144) = 0;
  v12[3] = v0;
  v12[4] = &off_2873619E8;
  v12[0] = v1;
  type metadata accessor for Product.Catalog();
  v2 = swift_allocObject();
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v12, v0);
  v4 = *(*(v0 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7, v5);
  v9 = *v7;
  v2[5] = v0;
  v2[6] = &off_2873619E8;
  v2[2] = v9;
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v2;
}

uint64_t sub_260E54B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Product.Identifier();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E547FC(a1, v8);
  sub_260E36150(v2 + 16, v11);
  return sub_260E534D4(v8, v11, a2);
}

uint64_t Product.Catalog.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Product.Identifier()
{
  result = qword_27FE54FF8;
  if (!qword_27FE54FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260E54D40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingPartNumberURL();

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_260E54D98);
}

uint64_t sub_260E54D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_260E68904();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_260E54E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MarketingPartNumberURL();

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_260E54E6C);
}

uint64_t sub_260E54E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_260E68904();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_260E54EDC(uint64_t a1)
{
  v2 = type metadata accessor for MarketingPartNumberURL();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v4 = sub_260E68904();
    v2 = v4;
    if (v5 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
      return 0;
    }
  }

  return v2;
}

uint64_t AppleHardware.image.getter()
{
  sub_260E68C14();
  if (v0)
  {
    sub_260E68E64();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];

    return sub_260E68EB4();
  }

  else
  {

    return sub_260E68EA4();
  }
}

id sub_260E55088(uint64_t a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AdjustedAsset();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC10ProductKit21PersonalizedImageView_metrics];
  *v14 = a2;
  v14[1] = a3;
  v14[2] = a4;
  v36.receiver = v4;
  v36.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v36, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_260E55864(a1, v13);
  v16 = objc_allocWithZone(type metadata accessor for AdjustedImageView());
  v17 = v15;
  v18 = sub_260E5B188(v13);
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = v17;
  [v19 addSubview_];
  v20 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54358, &unk_260E6FF30);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_260E6BDA0;
  v22 = [v18 topAnchor];
  v23 = [v19 topAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v21 + 32) = v24;
  v25 = [v18 bottomAnchor];
  v26 = [v19 bottomAnchor];

  v27 = [v25 constraintEqualToAnchor_];
  *(v21 + 40) = v27;
  v28 = [v18 leftAnchor];
  v29 = [v19 leftAnchor];

  v30 = [v28 constraintEqualToAnchor_];
  *(v21 + 48) = v30;
  v31 = [v18 rightAnchor];

  v32 = [v19 rightAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v21 + 56) = v33;
  sub_260E55818();
  v34 = sub_260E691A4();

  [v20 activateConstraints_];

  sub_260E558C8(a1);
  return v19;
}

void sub_260E553F4()
{
  v1 = v0;
  v2 = sub_260E66494();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
    v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

    v6 = v5;
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    [v6 setContentMode_];
    [v1 addSubview_];
    v7 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54358, &unk_260E6FF30);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_260E6BDA0;
    v9 = [v6 heightAnchor];
    v10 = &v1[OBJC_IVAR____TtC10ProductKit21PersonalizedImageView_metrics];
    v11 = [v9 constraintEqualToConstant_];

    *(v8 + 32) = v11;
    v12 = [v6 widthAnchor];
    v13 = [v12 constraintEqualToConstant_];

    *(v8 + 40) = v13;
    v14 = [v6 centerXAnchor];
    v15 = [v1 centerXAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    *(v8 + 48) = v16;
    v17 = [v6 centerYAnchor];

    v18 = [v1 topAnchor];
    v19 = [v17 constraintEqualToAnchor:v18 constant:v10[2]];

    *(v8 + 56) = v19;
    sub_260E55818();
    v20 = sub_260E691A4();

    [v7 activateConstraints_];
  }
}

id sub_260E55788()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_260E55818()
{
  result = qword_27FE54378;
  if (!qword_27FE54378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE54378);
  }

  return result;
}

uint64_t sub_260E55864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdjustedAsset();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E558C8(uint64_t a1)
{
  v2 = type metadata accessor for AdjustedAsset();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260E55924()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE55010);
  v1 = __swift_project_value_buffer(v0, qword_27FE55010);
  if (qword_27FE53E58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB88);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_260E559EC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_260E68904();
  v101 = *(v5 - 8);
  v102 = v5;
  v6 = *(v101 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v99 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v100 = &v98 - v9;
  v10 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for VideoViewConfiguration(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v103 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D8, &unk_260E6C160);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v98 - v23;
  v25 = &v2[OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_featureHandler];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v2[OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_startedHandler];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v2[OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_completedHandler];
  *v27 = 0;
  *(v27 + 1) = 0;
  sub_260E57B64(a1, &v2[OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_configuration]);
  v28 = [objc_allocWithZone(PKMediaPlayerView) init];
  *&v2[OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_mediaPlayerView] = v28;
  v104 = a1;
  sub_260E57B64(a1, v24);
  v29 = *(v15 + 48);
  if (v29(v24, 1, v14) == 1)
  {
    sub_260E57BD4(v24);
  }

  else
  {
    v30 = *&v24[*(v14 + 44)];

    sub_260E57C3C(v24, type metadata accessor for VideoViewConfiguration);
    if (v30)
    {
      v105 = v30;
      v31 = sub_260E64640();

      goto LABEL_6;
    }
  }

  v31 = MEMORY[0x277D84F90];
LABEL_6:
  *&v2[OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_playbackTimeRanges] = v31;
  v106.receiver = v2;
  v106.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v106, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_260E57B64(v104, v22);
  if (v29(v22, 1, v14) == 1)
  {
    v33 = v32;
    sub_260E57BD4(v22);
    if (qword_27FE53E10 != -1)
    {
      swift_once();
    }

    v34 = sub_260E68E94();
    __swift_project_value_buffer(v34, qword_27FE55010);
    v35 = sub_260E68E74();
    v36 = sub_260E69454();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_260E02000, v35, v36, "No configuration provided for video view", v37, 2u);
      MEMORY[0x2666F1EF0](v37, -1, -1);
    }

    v38 = &unk_27FE55000;
  }

  else
  {
    v39 = v103;
    sub_260E52A7C(v22, v103);
    sub_260E19464(v39, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542A0, &qword_260E6BFC0);
        v64 = *(v63 + 48);
        v98 = *(v63 + 64);
        v65 = v100;
        v66 = v101;
        v67 = *(v101 + 32);
        v68 = v102;
        v67(v100, v13, v102);
        v69 = v99;
        v67(v99, &v13[v64], v68);
        v70 = objc_allocWithZone(PKMediaPlayerItem);
        v71 = v32;
        v72 = sub_260E68894();
        v73 = [v70 initWithURL_];

        [v73 setShouldLoop_];
        v74 = OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_mediaPlayerView;
        [*&v71[OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_mediaPlayerView] addMovieItem_];

        v75 = objc_allocWithZone(PKMediaPlayerItem);
        v76 = sub_260E68894();
        v77 = [v75 initWithURL_];

        v38 = &unk_27FE55000;
        [v77 setShouldLoop_];
        [*&v71[v74] addMovieItem_];

        v78 = *(v66 + 8);
        v78(v69, v68);
        v78(v65, v68);
        sub_260E57C3C(v103, type metadata accessor for VideoViewConfiguration);
        v78(&v13[v98], v68);
        goto LABEL_18;
      }

      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542F8, &qword_260E6C170) + 48);
      v43 = v100;
      v42 = v101;
      v44 = *(v101 + 32);
      v45 = v102;
      v44(v100, v13, v102);
      v46 = v99;
      v44(v99, &v13[v41], v45);
      v47 = objc_allocWithZone(PKMediaPlayerItem);
      v48 = v32;
      v49 = sub_260E68894();
      v50 = [v47 initWithURL_];

      [v50 setShouldLoop_];
      v51 = OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_mediaPlayerView;
      [*&v48[OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_mediaPlayerView] addMovieItem_];

      v52 = objc_allocWithZone(PKMediaPlayerItem);
      v53 = sub_260E68894();
      v54 = [v52 initWithURL_];

      v38 = &unk_27FE55000;
      [v54 setShouldLoop_];
      [*&v48[v51] addMovieItem_];

      v55 = *(v42 + 8);
      v55(v46, v45);
      v55(v43, v45);
    }

    else
    {
      v57 = v100;
      v56 = v101;
      v58 = v102;
      (*(v101 + 32))(v100, v13, v102);
      v59 = objc_allocWithZone(PKMediaPlayerItem);
      v60 = v32;
      v61 = sub_260E68894();
      v62 = [v59 initWithURL_];

      [v62 setShouldLoop_];
      v38 = &unk_27FE55000;
      [*&v60[OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_mediaPlayerView] addMovieItem_];

      (*(v56 + 8))(v57, v58);
    }

    sub_260E57C3C(v103, type metadata accessor for VideoViewConfiguration);
  }

LABEL_18:
  v79 = v38[6];
  [*&v32[v79] setTranslatesAutoresizingMaskIntoConstraints_];
  v80 = *&v32[v79];
  v81 = v32;
  [v81 addSubview_];
  v82 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54358, &unk_260E6FF30);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_260E6BDA0;
  v84 = [*&v32[v79] leadingAnchor];
  v85 = [v81 leadingAnchor];
  v86 = [v84 constraintEqualToAnchor_];

  *(v83 + 32) = v86;
  v87 = [*&v32[v79] trailingAnchor];
  v88 = [v81 trailingAnchor];

  v89 = [v87 constraintEqualToAnchor_];
  *(v83 + 40) = v89;
  v90 = [*&v32[v79] topAnchor];
  v91 = [v81 topAnchor];

  v92 = [v90 constraintEqualToAnchor_];
  *(v83 + 48) = v92;
  v93 = [*&v32[v79] bottomAnchor];
  v94 = [v81 bottomAnchor];

  v95 = [v93 constraintEqualToAnchor_];
  *(v83 + 56) = v95;
  sub_260E157C4(0, &qword_27FE54378, 0x277CCAAD0);
  v96 = sub_260E691A4();

  [v82 activateConstraints_];

  sub_260E564A4();
  sub_260E57BD4(v104);
  return v81;
}

uint64_t sub_260E564A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D8, &unk_260E6C160);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v20 - v3;
  v5 = sub_260E68904();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  sub_260E57B64(v0 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_configuration, v4);
  v13 = type metadata accessor for VideoViewConfiguration(0);
  if ((*(*(v13 - 8) + 48))(v4, 1, v13) == 1)
  {
    return sub_260E57BD4(v4);
  }

  (*(v6 + 16))(v10, &v4[*(v13 + 20)], v5);
  sub_260E57C3C(v4, type metadata accessor for VideoViewConfiguration);
  (*(v6 + 32))(v12, v10, v5);
  v15 = [objc_opt_self() currentTraitCollection];
  v16 = [v15 userInterfaceStyle];

  if (v16 > 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = dword_260E6FF9C[v16];
  }

  v18 = *(v0 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_mediaPlayerView);
  v19 = sub_260E68894();
  [v18 updateViewForAssetType:v17 adjustmentsURL:v19];

  return (*(v6 + 8))(v12, v5);
}

uint64_t sub_260E567B4()
{
  v1 = type metadata accessor for VideoViewConfiguration.VideoSequence(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_260E68904();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D8, &unk_260E6C160);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v50 - v12;
  v14 = type metadata accessor for VideoViewConfiguration(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E57B64(v0 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_configuration, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_260E57BD4(v13);
  }

  sub_260E52A7C(v13, v18);
  sub_260E19464(v18, v4);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE542A0, &qword_260E6BFC0);
    v21 = *(v20 + 48);
    (*(v6 + 32))(v9, &v4[*(v20 + 64)], v5);
    v24 = *(v6 + 8);
    v23 = v6 + 8;
    v22 = v24;
    v24(&v4[v21], v5);
    v56 = v5;
    v24(v4, v5);
    v25 = objc_allocWithZone(PKMediaPlayerItem);
    v57 = v0;
    v26 = sub_260E68894();
    v27 = v57;
    v28 = v26;
    v29 = [v25 initWithURL_];

    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v62 = sub_260E57CD4;
    *(&v62 + 1) = v30;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v61 = sub_260E12B54;
    *(&v61 + 1) = &block_descriptor_2;
    v31 = _Block_copy(&aBlock);

    [v29 setCompletedHandler_];
    _Block_release(v31);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&v62 = sub_260E57D10;
    *(&v62 + 1) = v32;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v61 = sub_260E12B54;
    *(&v61 + 1) = &block_descriptor_6;
    v33 = _Block_copy(&aBlock);

    [v29 setStartedHandler_];
    _Block_release(v33);
    v34 = (v27 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_featureHandler);
    swift_beginAccess();
    v35 = *v34;
    if (*v34)
    {
      v53 = v22;
      v54 = v9;
      v55 = v23;
      v36 = v34[1];
      v37 = *(v27 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_playbackTimeRanges);
      v38 = *(v37 + 16);
      if (v38)
      {
        v52 = v29;
        v59 = MEMORY[0x277D84F90];
        v51 = v36;
        sub_260E145EC(v35);

        sub_260E696D4();
        v39 = objc_opt_self();
        v40 = v38 - 1;
        for (i = 32; ; i += 48)
        {
          aBlock = *(v37 + i);
          v61 = *(v37 + i + 16);
          v62 = *(v37 + i + 32);
          v58[0] = aBlock;
          v58[1] = v61;
          v58[2] = v62;
          v42 = [v39 valueWithCMTimeRange_];
          sub_260E696B4();
          v43 = *(v59 + 16);
          sub_260E696E4();
          sub_260E696F4();
          sub_260E696C4();
          if (!v40)
          {
            break;
          }

          --v40;
        }

        v27 = v57;
        v29 = v52;
        v36 = v51;
      }

      else
      {
        v46 = v34[1];
        sub_260E145EC(v35);
      }

      sub_260E157C4(0, &qword_27FE542D0, 0x277CCAE60);
      v47 = sub_260E691A4();

      *&v62 = v35;
      *(&v62 + 1) = v36;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v61 = sub_260E56ED0;
      *(&v61 + 1) = &block_descriptor_9;
      v48 = _Block_copy(&aBlock);
      sub_260E145EC(v35);

      [v29 setPlaybackNotificationTimeRanges:v47 withTimeRangeHandler:v48];
      _Block_release(v48);

      sub_260E145DC(v35);
      v9 = v54;
      v22 = v53;
    }

    v49 = *(v27 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_mediaPlayerView);
    [v49 breakFirstEnqueuedLoop];
    [v49 speedUpRemainderOfCurrentItem];
    [v49 addMovieItem_];

    v22(v9, v56);
    v44 = type metadata accessor for VideoViewConfiguration;
    v45 = v18;
  }

  else
  {
    sub_260E57C3C(v18, type metadata accessor for VideoViewConfiguration);
    v44 = type metadata accessor for VideoViewConfiguration.VideoSequence;
    v45 = v4;
  }

  return sub_260E57C3C(v45, v44);
}

uint64_t sub_260E56ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_260E56F30(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_260E692E4();
  v2[5] = sub_260E692D4();
  v4 = sub_260E69284();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_260E56FCC, v4, v3);
}

uint64_t sub_260E56FCC()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_playbackTimeRanges);
  v2 = *(v1 + 16);
  *(v0 + 64) = v2;
  if (v2)
  {
    v3 = *(v0 + 16);
    if (v2 > v3)
    {
      v4 = *(v0 + 32);
      v5 = v1 + 48 * v3;
      *(v0 + 72) = *(v5 + 32);
      *(v0 + 120) = *(v5 + 40);
      *(v0 + 124) = *(v5 + 44);
      *(v0 + 80) = *(v5 + 48);
      *(v0 + 88) = sub_260E692D4();
      v7 = sub_260E69284();

      return MEMORY[0x2822009F8](sub_260E571B0, v7, v6);
    }

    __break(1u);
    goto LABEL_13;
  }

  v8 = *(v0 + 40);

  if (qword_27FE53E10 != -1)
  {
LABEL_13:
    swift_once();
  }

  v9 = sub_260E68E94();
  __swift_project_value_buffer(v9, qword_27FE55010);
  v10 = sub_260E68E74();
  v11 = sub_260E69474();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_260E02000, v10, v11, "fastForward: playbackTimeRanges is empty, returning", v12, 2u);
    MEMORY[0x2666F1EF0](v12, -1, -1);
  }

  v13 = *(v0 + 8);
  v14 = *(v0 + 64) != 0;

  return v13(v14);
}

uint64_t sub_260E571B0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[3];
  v5 = v0[15];

  v6 = *(v4 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_mediaPlayerView);
  v0[12] = v3;
  v0[13] = v5;
  v0[14] = v2;
  [v6 seekToTime_];
  v7 = v0[6];
  v8 = v0[7];

  return MEMORY[0x2822009F8](sub_260E57250, v7, v8);
}

uint64_t sub_260E57250()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[8] != 0;

  return v2(v3);
}

void sub_260E572BC(id a1)
{
  if (a1)
  {
    v2 = [a1 userInterfaceStyle];
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 userInterfaceStyle];

  if (!a1 || v2 != v4)
  {

    sub_260E564A4();
  }
}

uint64_t type metadata accessor for AdjustedVideoView()
{
  result = qword_27FE55040;
  if (!qword_27FE55040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_260E574F8()
{
  sub_260E575B0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_260E575B0()
{
  if (!qword_27FE55050)
  {
    type metadata accessor for VideoViewConfiguration(255);
    v0 = sub_260E69584();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE55050);
    }
  }
}

uint64_t (*sub_260E57648())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t (*sub_260E576EC())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_260E57790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v10 = (*v6 + *a5);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = a1;
  v10[1] = a2;
  return a6(v11, v12);
}

uint64_t (*sub_260E577F8())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_260E5785C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_playbackTimeRanges);
  *(v6 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_playbackTimeRanges) = a1;

  v8 = (v6 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_featureHandler);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a2;
  v8[1] = a3;
  sub_260E145DC(v9);
}

uint64_t sub_260E57908(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260E0F964;

  return sub_260E56F30(a1);
}

uint64_t sub_260E579A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  sub_260E692E4();
  v4[6] = sub_260E692D4();
  v7 = sub_260E69284();

  return MEMORY[0x2822009F8](sub_260E57A40, v7, v6);
}

uint64_t sub_260E57A40()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v6 = *(v2 + OBJC_IVAR____TtC10ProductKit17AdjustedVideoView_mediaPlayerView);
  v0[7] = v5;
  v0[8] = v4;
  v0[9] = v3;
  [v6 seekToTime_];
  v7 = v0[1];

  return v7(1);
}

uint64_t sub_260E57B64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D8, &unk_260E6C160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E57BD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE544D8, &unk_260E6C160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260E57C3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_260E57C9C()
{
  MEMORY[0x2666F1F80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t MarketingPartNumberURL.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_260E68A24();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_260E68A44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_260E688F4();
  if (!v12)
  {
    goto LABEL_13;
  }

  if (v11 == 0x7370747468 && v12 == 0xE500000000000000)
  {
  }

  else
  {
    v13 = sub_260E69834();

    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v14 = sub_260E688D4();
  if (!v15)
  {
    goto LABEL_13;
  }

  if (v14 != 0x6C7070612E6E706DLL || v15 != 0xED00006D6F632E65)
  {
    v16 = sub_260E69834();

    if (v16)
    {
      goto LABEL_11;
    }

LABEL_13:
    sub_260E68A14();
    sub_260E35F84(MEMORY[0x277D84F90]);
    sub_260E36094();
    sub_260E68834();
    sub_260E68A34();
    (*(v7 + 8))(v10, v6);
    swift_willThrow();
    v19 = sub_260E68904();
    return (*(*(v19 - 8) + 8))(a1, v19);
  }

LABEL_11:
  sub_260E688E4();
  v17 = sub_260E35A2C();

  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_260E688E4();
  v18 = sub_260E690D4();

  if (v18 < 6)
  {
    goto LABEL_13;
  }

  v21 = sub_260E68904();
  return (*(*(v21 - 8) + 32))(a2, a1, v21);
}

BOOL _s10ProductKit22MarketingPartNumberURLV7isValid3urlSb10Foundation0F0V_tFZ_0()
{
  v0 = sub_260E688F4();
  if (!v1)
  {
    return 0;
  }

  if (v0 == 0x7370747468 && v1 == 0xE500000000000000)
  {
  }

  else
  {
    v2 = sub_260E69834();

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  v3 = sub_260E688D4();
  if (v4)
  {
    if (v3 == 0x6C7070612E6E706DLL && v4 == 0xED00006D6F632E65)
    {
    }

    else
    {
      v5 = sub_260E69834();

      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    sub_260E688E4();
    v6 = sub_260E35A2C();

    if (v6)
    {
      sub_260E688E4();
      v7 = sub_260E690D4();

      return v7 > 5;
    }
  }

  return 0;
}

uint64_t sub_260E58184(uint64_t a1, uint64_t a2)
{
  v4 = sub_260E68904();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_260E58204(uint64_t a1, uint64_t a2)
{
  v4 = sub_260E68904();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for MarketingPartNumberURL()
{
  result = qword_27FE55058;
  if (!qword_27FE55058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260E582C0()
{
  result = sub_260E68904();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_260E5832C()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE55068);
  v1 = __swift_project_value_buffer(v0, qword_27FE55068);
  if (qword_27FE53E48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB58);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_260E583F4(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_260E58468, 0, 0);
}

uint64_t sub_260E58468()
{
  v1 = *(v0 + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55080, &qword_260E70018);
  v3 = *(v2 + 52);
  v4 = (*(v2 + 48) + 3) & 0x1FFFFFFFCLL;
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + ((*(*v5 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v6 = *(*v5 + *MEMORY[0x277D841D0] + 16);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 2, v7);
  v8 = [v1 assetId];
  if (v8)
  {
    v9 = v8;
    v11 = *(v0 + 24);
    v10 = *(v0 + 32);
    v12 = *(v0 + 88);
    v13 = *(v0 + 16);
    v14 = sub_260E69024();
    v16 = v15;

    *(v0 + 48) = v16;
    v17 = swift_task_alloc();
    *(v0 + 56) = v17;
    *(v17 + 16) = v5;
    *(v17 + 24) = v12;
    *(v17 + 32) = v14;
    *(v17 + 40) = v16;
    *(v17 + 48) = v11;
    *(v17 + 56) = v10;
    v18 = swift_task_alloc();
    *(v0 + 64) = v18;
    v18[2] = v11;
    v18[3] = v13;
    v18[4] = v5;
    v18[5] = v10;
    v19 = *(MEMORY[0x277D85A10] + 4);
    v20 = swift_task_alloc();
    *(v0 + 72) = v20;
    *v20 = v0;
    v20[1] = sub_260E586C4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200830]();
}

uint64_t sub_260E586C4()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v6 = sub_260E58898;
  }

  else
  {
    v6 = sub_260E58834;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_260E58834()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_260E58898()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void sub_260E588FC(uint64_t a1, char a2, uint64_t a3, unint64_t a4, void *a5)
{
  sub_260E599F0(a1 + *(*a1 + *MEMORY[0x277D841D0] + 16), (a1 + ((*(*a1 + 48) + 3) & 0x1FFFFFFFCLL)));
  if (a2)
  {
    if (qword_27FE53E18 != -1)
    {
      swift_once();
    }

    v9 = sub_260E68E94();
    __swift_project_value_buffer(v9, qword_27FE55068);

    v10 = sub_260E68E74();
    v11 = sub_260E69474();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_260E43774(a3, a4, aBlock);
      _os_log_impl(&dword_260E02000, v10, v11, "Cancelling download for %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x2666F1EF0](v13, -1, -1);
      MEMORY[0x2666F1EF0](v12, -1, -1);
    }

    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    aBlock[4] = sub_260E5AB88;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_260E58CC4;
    aBlock[3] = &block_descriptor_17;
    v15 = _Block_copy(aBlock);

    [a5 cancelDownload_];
    _Block_release(v15);
  }
}

void sub_260E58B5C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_27FE53E18 != -1)
  {
    swift_once();
  }

  v6 = sub_260E68E94();
  __swift_project_value_buffer(v6, qword_27FE55068);

  oslog = sub_260E68E74();
  v7 = sub_260E69474();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_260E43774(a2, a3, &v11);
    *(v8 + 12) = 2048;
    *(v8 + 14) = a1;
    _os_log_impl(&dword_260E02000, oslog, v7, "Download cancelled for %s with result %ld", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }
}

uint64_t sub_260E58CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_260E58CF4, 0, 0);
}

uint64_t sub_260E58CF4()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_260E58DEC;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000025, 0x8000000260E730A0, sub_260E599B0, v1, v6);
}

uint64_t sub_260E58DEC()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_260E58F28, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_260E58F28()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

void sub_260E58F8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  if (qword_27FE53E18 != -1)
  {
    swift_once();
  }

  v12 = sub_260E68E94();
  __swift_project_value_buffer(v12, qword_27FE55068);
  v13 = sub_260E68E74();
  v14 = sub_260E69474();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_260E02000, v13, v14, "Starting download", v15, 2u);
    MEMORY[0x2666F1EF0](v15, -1, -1);
  }

  v30 = sub_260E592B4;
  v31 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_260E5940C;
  v29 = &block_descriptor_3;
  v16 = _Block_copy(&aBlock);
  [a2 attachProgressCallBack_];
  _Block_release(v16);
  (*(v8 + 16))(v11, a1, v7);
  v17 = *(v8 + 80);
  v22 = a1;
  v18 = (v17 + 24) & ~v17;
  v19 = swift_allocObject();
  v20 = v24;
  *(v19 + 16) = v24;
  (*(v8 + 32))(v19 + v18, v11, v7);
  *(v19 + ((v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v30 = sub_260E599D8;
  v31 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_260E596E8;
  v29 = &block_descriptor_11;
  v21 = _Block_copy(&aBlock);

  [a2 startDownload:v25 then:v21];
  _Block_release(v21);
  sub_260E5A7D4(v20, v22);
}

void sub_260E592B4(void *a1)
{
  if (a1)
  {
    v1 = qword_27FE53E18;
    v2 = a1;
    if (v1 != -1)
    {
      swift_once();
    }

    v3 = sub_260E68E94();
    __swift_project_value_buffer(v3, qword_27FE55068);
    v8 = v2;
    v4 = sub_260E68E74();
    v5 = sub_260E69444();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134218240;
      [v8 expectedTimeRemaining];
      *(v6 + 4) = v7;
      *(v6 + 12) = 1024;
      *(v6 + 14) = [v8 isStalled];

      _os_log_impl(&dword_260E02000, v4, v5, "Download progress: %f %{BOOL}d", v6, 0x12u);
      MEMORY[0x2666F1EF0](v6, -1, -1);
    }

    else
    {

      v4 = v8;
    }
  }
}

void sub_260E5940C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_260E59478(uint64_t a1, uint64_t a2)
{
  v4 = _s11CancelStateOMa();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FE53E18 != -1)
  {
    swift_once();
  }

  v8 = sub_260E68E94();
  __swift_project_value_buffer(v8, qword_27FE55068);
  v9 = sub_260E68E74();
  v10 = sub_260E69474();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_260E02000, v9, v10, "Finished download", v11, 2u);
    MEMORY[0x2666F1EF0](v11, -1, -1);
  }

  v12 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v13 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v13));
  sub_260E5AA90(a2 + v12, v7);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  v15 = (*(*(v14 - 8) + 48))(v7, 2, v14);
  if (v15)
  {
    if (v15 != 1)
    {
      os_unfair_lock_unlock((a2 + v13));
      return;
    }
  }

  else
  {
    sub_260E5AAF4(v7);
  }

  os_unfair_lock_unlock((a2 + v13));
  if (a1)
  {
    sub_260E15590();
    v16 = swift_allocError();
    if (a1 == 51)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    if (a1 == 12)
    {
      v18 = 10;
    }

    *v17 = v18;
    *(v17 + 8) = 0;
    *(v17 + 16) = 2;
    v19[1] = v16;
    sub_260E69294();
  }

  else
  {
    sub_260E692A4();
  }
}

uint64_t sub_260E596F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_260E5976C()
{
  v1 = [*v0 getLocalFileUrl];
  if (v1)
  {
    v2 = v1;
    sub_260E688C4();
  }

  else
  {
    __break(1u);
  }
}

id sub_260E597D4()
{
  result = [*v0 assetId];
  if (result)
  {
    v2 = result;
    v3 = sub_260E69024();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_260E59834(uint64_t a1, char a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260E30A3C;

  return sub_260E583F4(a1, a2);
}

uint64_t sub_260E598F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260E343A8;

  return sub_260E58CCC(a1, v4, v5, v7, v6);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_260E599F0(uint64_t a1, os_unfair_lock_s *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - v7;
  v9 = _s11CancelStateOMa();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_lock(a2);
  sub_260E5AA90(a1, v12);
  v13 = (*(v5 + 48))(v12, 2, v4);
  if (v13)
  {
    if (v13 == 1)
    {
      sub_260E5AAF4(a1);
      (*(v5 + 56))(a1, 2, 2, v4);
    }

    os_unfair_lock_unlock(a2);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_260E5AAF4(a1);
    (*(v5 + 56))(a1, 2, 2, v4);
    os_unfair_lock_unlock(a2);
    sub_260E15590();
    v14 = swift_allocError();
    *v15 = xmmword_260E6D940;
    *(v15 + 16) = 2;
    v16[1] = v14;
    sub_260E69294();
    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_260E59C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_260E59C48, 0, 0);
}

uint64_t sub_260E59C48()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55080, &qword_260E70018);
  v4 = *(v3 + 52);
  v5 = (*(v3 + 48) + 3) & 0x1FFFFFFFCLL;
  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  *(v6 + ((*(*v6 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v7 = *(*v6 + *MEMORY[0x277D841D0] + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  v15 = *(v0 + 24);
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 2, v8);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *(v9 + 16) = v1;
  *(v9 + 24) = v6;
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *(v10 + 16) = v2;
  *(v10 + 24) = v15;
  *(v10 + 40) = v6;
  *(v10 + 48) = v1;
  *(v10 + 56) = v1;
  v11 = *(MEMORY[0x277D85A10] + 4);
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_260E59E64;
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v12, &unk_260E70048, v10, sub_260E5AB90, v9, 0, 0, v13);
}

uint64_t sub_260E59E64()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v5 = sub_260E5A01C;
  }

  else
  {
    v5 = sub_260E59FB8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_260E59FB8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_260E5A01C()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_260E5A080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_260E5A0AC, 0, 0);
}

uint64_t sub_260E5A0AC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v5;
  *(v3 + 56) = v1;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_260E5A1BC;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000023, 0x8000000260E73150, sub_260E5ACE0, v3, v9);
}

uint64_t sub_260E5A1BC()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_260E5A2F8, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_260E5A2F8()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

void sub_260E5A35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v25 = a4;
  v26 = a5;
  v27 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  if (qword_27FE53E18 != -1)
  {
    swift_once();
  }

  v12 = sub_260E68E94();
  __swift_project_value_buffer(v12, qword_27FE55068);
  v13 = sub_260E68E74();
  v14 = sub_260E69474();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_260E02000, v13, v14, "Starting catalog download", v15, 2u);
    MEMORY[0x2666F1EF0](v15, -1, -1);
  }

  v16 = objc_opt_self();
  v17 = sub_260E68FF4();
  v18 = v27;
  (*(v8 + 16))(v11, v27, v7);
  v19 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v26;
  *(v21 + 16) = v26;
  (*(v8 + 32))(v21 + v19, v11, v7);
  *(v21 + v20) = v24;
  aBlock[4] = sub_260E5ADCC;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_260E596E8;
  aBlock[3] = &block_descriptor_28;
  v23 = _Block_copy(aBlock);

  [v16 startCatalogDownload:v17 options:v25 then:v23];
  _Block_release(v23);

  sub_260E5A7D4(v22, v18);
}

void sub_260E5A634(uint64_t a1, uint64_t a2)
{
  v4 = _s11CancelStateOMa();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*a2 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v9));
  sub_260E5AA90(a2 + v8, v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  v11 = (*(*(v10 - 8) + 48))(v7, 2, v10);
  if (v11)
  {
    if (v11 != 1)
    {
      os_unfair_lock_unlock((a2 + v9));
      return;
    }
  }

  else
  {
    sub_260E5AAF4(v7);
  }

  os_unfair_lock_unlock((a2 + v9));
  if (a1)
  {
    sub_260E15590();
    v12 = swift_allocError();
    *v13 = xmmword_260E6D950;
    *(v13 + 16) = 2;
    v14[1] = v12;
    sub_260E69294();
  }

  else
  {
    sub_260E692A4();
  }
}

void sub_260E5A7D4(uint64_t a1, uint64_t a2)
{
  v4 = _s11CancelStateOMa();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*a1 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*a1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a1 + v9));
  sub_260E5AA90(a1 + v8, v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 2, v10);
  if (v12 == 1)
  {
    sub_260E5AAF4(a1 + v8);
    (*(v11 + 16))(a1 + v8, a2, v10);
    (*(v11 + 56))(a1 + v8, 0, 2, v10);
    os_unfair_lock_unlock((a1 + v9));
  }

  else if (v12 == 2)
  {
    sub_260E5AAF4(a1 + v8);
    (*(v11 + 56))(a1 + v8, 2, 2, v10);
    os_unfair_lock_unlock((a1 + v9));
    sub_260E15590();
    v13 = swift_allocError();
    *v14 = xmmword_260E6D940;
    *(v14 + 16) = 2;
    v15[1] = v13;
    sub_260E69294();
  }

  else
  {
    os_unfair_lock_unlock((a1 + v9));
    sub_260E69704();
    __break(1u);
  }
}

uint64_t _s11CancelStateOMa()
{
  result = qword_27FE55090;
  if (!qword_27FE55090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260E5AA90(uint64_t a1, uint64_t a2)
{
  v4 = _s11CancelStateOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E5AAF4(uint64_t a1)
{
  v2 = _s11CancelStateOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260E5AB50()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260E5AC0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_260E343A8;

  return sub_260E5A080(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_260E5ADE4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v6, v2 + v5, v7);
}

uint64_t sub_260E5AEB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_260E5AF44(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE55088, &qword_260E70020);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_260E5AFD4()
{
  sub_260E5B02C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_260E5B02C()
{
  if (!qword_27FE550A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE545B0, &unk_260E6C010);
    v0 = sub_260E692B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE550A0);
    }
  }
}

uint64_t sub_260E5B0C0()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE550A8);
  v1 = __swift_project_value_buffer(v0, qword_27FE550A8);
  if (qword_27FE53E58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB88);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_260E5B188(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for AdjustedAsset();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  v13 = sub_260E68904();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a1 + *(v6 + 28));
  Adjustments.init(fileURL:)(v16, v42);
  v18 = v43;
  v19 = &v2[OBJC_IVAR____TtC10ProductKit17AdjustedImageView_adjustments];
  v20 = *&v42[16];
  *v19 = *v42;
  *(v19 + 1) = v20;
  v19[32] = v18;
  v21 = *a1;
  v22 = *(a1 + 8);
  v23 = *(a1 + 16);
  v24 = sub_260E68FF4();
  v25 = [objc_opt_self() imageNamed:v24 inBundle:v23 compatibleWithTraitCollection:0];

  if (!v25)
  {
    if (qword_27FE53E20 != -1)
    {
      swift_once();
    }

    v26 = sub_260E68E94();
    __swift_project_value_buffer(v26, qword_27FE550A8);
    sub_260E55864(a1, v12);
    v27 = sub_260E68E74();
    v28 = sub_260E69454();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47 = v40;
      *v29 = 136315138;
      sub_260E55864(v12, v10);
      *v42 = 0;
      *&v42[8] = 0xE000000000000000;
      sub_260E69644();

      v45 = 0xD000000000000015;
      v46 = 0x8000000260E72C40;
      v30 = *(v10 + 3);
      v31 = *(v10 + 4);
      v32 = v10[40];
      *v42 = *v10;
      *&v42[8] = *(v10 + 8);
      *&v42[24] = v30;
      v43 = v31;
      v44 = v32;
      v33 = GenericAsset.description.getter();
      v41 = ObjectType;
      MEMORY[0x2666F0C00](v33);

      MEMORY[0x2666F0C00](41, 0xE100000000000000);
      v34 = v45;
      v35 = v46;
      sub_260E558C8(v12);
      sub_260E558C8(v10);
      v36 = sub_260E43774(v34, v35, &v47);
      ObjectType = v41;

      *(v29 + 4) = v36;
      _os_log_impl(&dword_260E02000, v27, v28, "Could not load image for %s", v29, 0xCu);
      v37 = v40;
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x2666F1EF0](v37, -1, -1);
      MEMORY[0x2666F1EF0](v29, -1, -1);
    }

    else
    {

      sub_260E558C8(v12);
    }
  }

  v48.receiver = v2;
  v48.super_class = ObjectType;
  v38 = objc_msgSendSuper2(&v48, sel_initWithImage_, v25);
  sub_260E5B568();

  sub_260E558C8(a1);
  return v38;
}

void sub_260E5B568()
{
  v1 = &v0[OBJC_IVAR____TtC10ProductKit17AdjustedImageView_adjustments];
  if ((v0[OBJC_IVAR____TtC10ProductKit17AdjustedImageView_adjustments + 32] & 1) == 0)
  {
    v2 = *(v1 + 2);
    v3 = *(v1 + 3);
    v5 = *v1;
    v4 = *(v1 + 1);
    v6 = [objc_opt_self() currentTraitCollection];
    v7 = [v6 userInterfaceStyle];

    if (v7 == 2)
    {
      v8 = v4;
    }

    else
    {
      v8 = v3;
    }

    if (v7)
    {
      v3 = v8;
    }

    v9 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    v10 = v3;
    v11 = objc_opt_self();
    v23 = v10;
    v24 = *(MEMORY[0x277CD9DA0] + 4);
    v25 = *(MEMORY[0x277CD9DA0] + 20);
    v26 = v10;
    v27 = *(MEMORY[0x277CD9DA0] + 28);
    v28 = *(MEMORY[0x277CD9DA0] + 44);
    v29 = v10;
    *v30 = *(MEMORY[0x277CD9DA0] + 52);
    *&v30[12] = *(MEMORY[0x277CD9DA0] + 64);
    v12 = [v11 valueWithCAColorMatrix_];
    v13 = sub_260E68FF4();
    [v9 setValue:v12 forKey:v13];

    v14 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    v15 = sub_260E69364();
    v16 = sub_260E68FF4();
    [v14 setValue:v15 forKey:v16];

    v17 = [v0 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE550C8, &qword_260E704A0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_260E6BDD0;
    v19 = sub_260E5BBC4();
    *(v18 + 32) = v9;
    *(v18 + 88) = v19;
    *(v18 + 56) = v19;
    *(v18 + 64) = v14;
    v20 = v9;
    v21 = v14;
    v22 = sub_260E691A4();

    [v17 setFilters_];
  }
}

Swift::Void __swiftcall AdjustedImageView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  if (a1.value.super.isa)
  {
    v2 = [(objc_class *)a1.value.super.isa userInterfaceStyle];
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 userInterfaceStyle];

  if (!isa || v2 != v4)
  {

    sub_260E5B568();
  }
}

id AdjustedImageView.__allocating_init(image:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithImage_];

  return v3;
}

id AdjustedImageView.__allocating_init(image:highlightedImage:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithImage:a1 highlightedImage:a2];

  return v5;
}

id AdjustedImageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_260E5BBC4()
{
  result = qword_27FE550D0[0];
  if (!qword_27FE550D0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27FE550D0);
  }

  return result;
}

uint64_t sub_260E5BC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_260E30A3C;

  return (sub_260E5E83C)(a1, a4, a5, a2, a3, 0, 0, a6);
}

uint64_t AsyncChannel.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *(a2 + 16);
  v4 = sub_260E69584();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E5BDD4, 0, 0);
}

uint64_t sub_260E5BDD4()
{
  v1 = v0[3];
  if (*(v1 + 8) == 1)
  {
    v2 = v0[4];
    v3 = *v1;
    v0[9] = *v1;
    v4 = sub_260E5C254();
    v5 = swift_task_alloc();
    v0[10] = v5;
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = swift_task_alloc();
    v0[11] = v6;
    v6[2] = v2;
    v6[3] = v1;
    v6[4] = v4;

    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_260E5BFA4;
    v8 = v0[8];
    v9 = v0[5];

    return sub_260E5BC10(v8, sub_260E5C2DC, v5, &unk_260E70098, v6, v9);
  }

  else
  {
    (*(*(v0[4] - 8) + 56))(v0[2], 1, 1);
    v12 = v0[7];
    v11 = v0[8];

    v13 = v0[1];

    return v13();
  }
}

void sub_260E5BFA4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[10];
    v5 = v2[11];
    v7 = v2[9];

    MEMORY[0x2822009F8](sub_260E5C0F4, 0, 0);
  }
}

uint64_t sub_260E5C0F4()
{
  v1 = v0[7];
  v2 = v0[4];
  (*(v0[6] + 32))(v1, v0[8], v0[5]);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[7];
  if (v4 == 1)
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = v0[2];
    (*(v0[6] + 8))(v0[7], v0[5]);
    *(v7 + 8) = 0;
    (*(v3 + 56))(v8, 1, 1, v6);
  }

  else
  {
    v9 = v0[4];
    v10 = v0[2];
    (*(v3 + 32))(v10, v0[7], v9);
    (*(v3 + 56))(v10, 0, 1, v9);
  }

  v12 = v0[7];
  v11 = v0[8];

  v13 = v0[1];

  return v13();
}

uint64_t sub_260E5C254()
{
  v1 = v0[2];
  v3[2] = *(*v0 + 80);
  type metadata accessor for AsyncChannel.State();
  sub_260E15978(sub_260E5F130, v3, v1);
  return v3[5];
}

void sub_260E5C2DC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_260E5C304(v1);
}

void sub_260E5C304(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_260E69584();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  v9 = v1[2];
  v12 = v3;
  v13 = a1;
  type metadata accessor for AsyncChannel.State();
  sub_260E69334();
  sub_260E69584();
  sub_260E15978(sub_260E5F0C4, v11, v9);
  v10 = v14;
  if (v14)
  {
    (*(*(v3 - 8) + 56))(v8, 1, 1, v3);
    (*(v5 + 32))(*(*(v10 + 64) + 40), v8, v4);
    swift_continuation_resume();
  }
}

uint64_t sub_260E5C4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_260E5C4D4, 0, 0);
}

uint64_t sub_260E5C4D4()
{
  *(v0 + 40) = **(v0 + 24);

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_260E5C584;
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);

  return sub_260E5C74C(v3, v2);
}

uint64_t sub_260E5C584()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_260E5C698(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_260E343A8;

  return sub_260E5C4B0(a1, v5, v6);
}

uint64_t sub_260E5C74C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_260E5C798, 0, 0);
}

uint64_t sub_260E5C798()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = *(v2 + 80);
  v7 = sub_260E69584();
  *v5 = v0;
  v5[1] = sub_260E5C898;
  v8 = v0[2];

  return (sub_260E5D4FC)(v8, 0, 0, sub_260E5F098, v4, v7);
}

uint64_t sub_260E5C898()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_260E5C9A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260E30690;

  return AsyncChannel.Iterator.next()(a1, a2);
}

uint64_t sub_260E5CA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_260E5CB1C;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_260E5CB1C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_260E5CC4C(uint64_t a1)
{
  sub_260E698F4();
  MEMORY[0x2666F1410](a1);
  return sub_260E69914();
}

uint64_t sub_260E5CCAC()
{
  sub_260E698F4();
  sub_260E5CC18(v2, *v0);
  return sub_260E69914();
}

uint64_t sub_260E5CD04(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 8);
  if (*(v2 + 8))
  {
    if (result == 1)
    {
      v5 = v2;
      v19 = *v2;
      v6 = *(a2 + 16);
      type metadata accessor for AsyncChannel.Awaiting();

      swift_getWitnessTable();
      sub_260E693C4();
      sub_260E69394();
      if (v18 == 1)
      {
        v7 = 0;
      }

      else
      {
        v7 = v18;
      }

      v8 = v19;
      v9 = sub_260E693B4();

      if (v9)
      {

        v8 = 0;
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      *v5 = v8;
      *(v5 + 8) = v10;
      return v7;
    }

    else
    {
      v11 = *(a2 + 16);
      v12 = a1;
      v13 = type metadata accessor for AsyncChannel.Awaiting();
      sub_260E69814();
      swift_initStackObject();
      v14 = sub_260E691D4();
      *v15 = v12;
      *(v15 + 8) = 0;
      *(v15 + 16) = 1;
      sub_260E69274();
      if (sub_260E69234())
      {
        WitnessTable = swift_getWitnessTable();
        v17 = sub_260E5EC0C(v14, v13, WitnessTable);
      }

      else
      {
        v17 = MEMORY[0x277D84FA0];
      }

      result = 0;
      *v2 = v17;
      *(v2 + 8) = 1;
    }
  }

  return result;
}

uint64_t AsyncChannel.__allocating_init(element:)()
{
  v0 = swift_allocObject();
  AsyncChannel.init(element:)();
  return v0;
}

void *AsyncChannel.init(element:)()
{
  v1 = *(*v0 + 80);
  type metadata accessor for AsyncChannel.State();
  v2 = sub_260E15A30();

  v0[2] = v2;
  return v0;
}

void sub_260E5CF6C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(*a2 + 80);
  v7 = sub_260E69584();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14[-v10];
  v26 = 0;
  v12 = a2[2];
  v15 = v6;
  v16 = &v26;
  v17 = a3;
  v18 = a1;
  v19 = &v26 + 1;
  type metadata accessor for AsyncChannel.State();
  sub_260E69334();
  sub_260E69584();
  v13 = type metadata accessor for UnsafeResumption();
  sub_260E69584();
  sub_260E15978(sub_260E5F0A0, v14, v12);
  if (v23)
  {
    v20 = v23;
    v21 = v24;
    v22 = v25 & 1;
    sub_260E66EF8(v13);
  }

  if ((v26 & 0x100) != 0 || v26 == 1)
  {
    (*(*(v6 - 8) + 56))(v11, 1, 1, v6);
    (*(v8 + 32))(*(*(a1 + 64) + 40), v11, v7);
    swift_continuation_resume();
  }
}

uint64_t sub_260E5D1A4@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X8>)
{
  if (*(result + 24) == 1)
  {
    *a2 = 1;
LABEL_15:
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
    return result;
  }

  v7 = result;
  if (*(result + 8))
  {
    if (*(result + 8) == 1)
    {
      v31 = *result;
      type metadata accessor for AsyncChannel.Awaiting();

      swift_getWitnessTable();
      sub_260E693C4();
      sub_260E693A4();
      if (v29 != 1)
      {
        sub_260E69394();
        *a5 = 1;
      }

      v8 = v31;
      v9 = sub_260E693B4();

      if (v9)
      {

        v8 = 0;
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      *v7 = v8;
      *(v7 + 8) = v10;
      goto LABEL_15;
    }

    v19 = type metadata accessor for AsyncChannel.Awaiting();
    sub_260E69814();
    swift_initStackObject();
    v20 = sub_260E691D4();
    *v21 = a3;
    *(v21 + 8) = a4;
    *(v21 + 16) = 0;
    sub_260E69274();
    if (sub_260E69234())
    {
      WitnessTable = swift_getWitnessTable();
      v23 = sub_260E5EC0C(v20, v19, WitnessTable);
    }

    else
    {
      v23 = MEMORY[0x277D84FA0];
    }

    *v7 = v23;
    *(v7 + 8) = 1;
    *a6 = 0;
    *(a6 + 8) = 0;
    *(a6 + 16) = 0;
  }

  else
  {
    v27 = *result;
    sub_260E69584();
    sub_260E69334();
    v12 = sub_260E69584();
    sub_260E69334();
    sub_260E69274();

    swift_getWitnessTable();
    sub_260E693D4();
    v13 = v28;
    v14 = v27;
    v15 = sub_260E69234();

    if (v15)
    {
      v16 = 0;
    }

    else
    {

      v14 = 0;
      v16 = 2;
    }

    *v7 = v14;
    *(v7 + 8) = v16;
    v31 = a4;
    result = sub_260E66DF4(v13, &v31, v12, &v28);
    v24 = v29;
    v25 = v30;
    *a6 = v28;
    *(a6 + 8) = v24;
    *(a6 + 16) = v25;
  }

  return result;
}

uint64_t sub_260E5D4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_260E69284();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x2822009F8](sub_260E5D590, v6, v8);
}

uint64_t sub_260E5D590()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_260E5D638;
  v4 = swift_continuation_init();
  v2(v4);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_260E5D638()
{
  v3 = *v0;
  v1 = *(*v0 + 8);

  return v1();
}

uint64_t _s10ProductKit12AsyncChannelC6finishyyF_0()
{
  v1 = *(*v0 + 80);
  v2 = sub_260E69584();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v27 = &v25 - v4;
  v5 = v0[2];
  v30 = v1;
  type metadata accessor for AsyncChannel.State();
  v28 = v2;
  sub_260E69334();
  v6 = sub_260E69584();
  sub_260E69334();
  sub_260E69274();
  type metadata accessor for AsyncChannel.Awaiting();
  swift_getWitnessTable();
  sub_260E693C4();
  swift_getTupleTypeMetadata2();
  sub_260E15978(sub_260E5EBD8, v29, v5);
  v8 = v31[0];
  v7 = v31[1];
  if (sub_260E69234())
  {
    v9 = 4;
    do
    {
      v10 = v9 - 4;
      v11 = sub_260E69214();
      sub_260E691E4();
      if (v11)
      {
        v12 = *(v8 + 8 * v9);
        v13 = v9 - 3;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v12 = sub_260E69664();
        swift_unknownObjectRelease();
        v13 = v9 - 3;
        if (__OFADD__(v10, 1))
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      v31[0] = 0;
      (*(*(v6 - 8) + 32))(*(*(v12 + 64) + 40), v31, v6);
      swift_continuation_resume();
      ++v9;
    }

    while (v13 != sub_260E69234());
  }

  v15 = 0;
  v16 = 1 << *(v7 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v7 + 56);
  v19 = (v16 + 63) >> 6;
  v20 = (v26 + 32);
  while (v18)
  {
LABEL_18:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = *(*(v7 + 48) + 24 * (v22 | (v15 << 6)) + 8);
    if (v23)
    {
      v24 = v27;
      (*(*(v1 - 8) + 56))(v27, 1, 1, v1);
      (*v20)(*(*(v23 + 64) + 40), v24, v28);
      result = swift_continuation_resume();
    }
  }

  while (1)
  {
    v21 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v21 >= v19)
    {
    }

    v18 = *(v7 + 56 + 8 * v21);
    ++v15;
    if (v18)
    {
      v15 = v21;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_260E5DAD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 24) != 1)
  {
    *(a1 + 24) = 1;
    v3 = *a1;
    if (!*(a1 + 8))
    {
      *a1 = 0;
      *(a1 + 8) = 2;
      *a2 = v3;
      goto LABEL_6;
    }

    if (*(a1 + 8) == 1)
    {
      *a1 = 0;
      *(a1 + 8) = 2;
      sub_260E69584();
      sub_260E69334();
      sub_260E69584();
      sub_260E69334();
      result = sub_260E69204();
      *a2 = result;
      a2[1] = v3;
      return result;
    }
  }

  sub_260E69584();
  sub_260E69334();
  sub_260E69584();
  sub_260E69334();
  *a2 = sub_260E69204();
LABEL_6:
  v5 = type metadata accessor for AsyncChannel.Awaiting();
  v6 = sub_260E69204();
  if (sub_260E69234())
  {
    WitnessTable = swift_getWitnessTable();
    v8 = sub_260E5EC0C(v6, v5, WitnessTable);
  }

  else
  {
    v8 = MEMORY[0x277D84FA0];
  }

  a2[1] = v8;
  return result;
}

uint64_t sub_260E5DC90(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_260E5DCB0, 0, 0);
}

uint64_t sub_260E5DCB0()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x277D85A10] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_260E5DDA0;
  v4 = v0[1].i64[1];

  return MEMORY[0x282200830]();
}

void sub_260E5DDA0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 32);

    MEMORY[0x2822009F8](sub_260E5DEDC, 0, 0);
  }
}

uint64_t sub_260E5DEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = *(*a2 + 80);
  v4 = sub_260E69584();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E5DFA0, 0, 0);
}

uint64_t sub_260E5DFA0()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[9] = v2;
  sub_260E69334();
  v3 = sub_260E69584();
  *v2 = v0;
  v2[1] = sub_260E5E09C;
  v4 = v0[3];

  return (sub_260E5D4FC)(v0 + 2, 0, 0, sub_260E5F074, v4, v3);
}

uint64_t sub_260E5E09C()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_260E5E198, 0, 0);
}

uint64_t sub_260E5E198()
{
  v1 = v0[2];
  if (v1)
  {
    v3 = v0[7];
    v2 = v0[8];
    v5 = v0[5];
    v4 = v0[6];
    v6 = *(v5 - 8);
    (*(v6 + 16))(v2, v0[4], v5);
    (*(v6 + 56))(v2, 0, 1, v5);
    (*(v3 + 32))(*(*(v1 + 64) + 40), v2, v4);
    swift_continuation_resume();
  }

  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

void sub_260E5E2F4(uint64_t a1, void *a2)
{
  v2 = a2[2];
  v4[2] = *(*a2 + 80);
  v4[3] = a1;
  type metadata accessor for AsyncChannel.State();
  sub_260E69584();
  sub_260E69334();
  sub_260E69584();
  v3 = type metadata accessor for UnsafeResumption();
  sub_260E69584();
  sub_260E15978(sub_260E5F07C, v4, v2);
  if (v6)
  {
    v4[5] = v6;
    v4[6] = v7;
    v5 = v8 & 1;
    sub_260E66EF8(v3);
  }
}

uint64_t sub_260E5E404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 24) != 1)
  {
    v8 = *a1;
    if (*(a1 + 8))
    {
      if (*(a1 + 8) == 1)
      {
        v22 = *a1;
        type metadata accessor for AsyncChannel.Awaiting();

        swift_getWitnessTable();
        sub_260E693C4();
        sub_260E69374();
        v17 = v20;
        v9 = v22;
        v10 = sub_260E69384();

        if (v10)
        {
          v11 = 1;
        }

        else
        {

          v9 = 0;
          v11 = 2;
        }

        *a1 = v9;
        *(a1 + 8) = v11;
        v18 = v17;
        sub_260E69584();
        sub_260E69334();
        v5 = sub_260E69584();
        v6 = &v18;
        goto LABEL_12;
      }

      sub_260E69584();
      sub_260E69334();
      sub_260E69584();
      sub_260E69334();
      sub_260E69814();
      swift_allocObject();
      v13 = sub_260E691D4();
      *v14 = a2;
      result = sub_260E69274();
      *a1 = v13;
    }

    else
    {
      v19 = *a1;
      v22 = a2;
      sub_260E69584();
      sub_260E69334();
      sub_260E69584();
      sub_260E69334();
      sub_260E69274();
      result = sub_260E69244();
      *a1 = v19;
    }

    *(a1 + 8) = 0;
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    return result;
  }

  v22 = 0;
  sub_260E69584();
  sub_260E69334();
  v5 = sub_260E69584();
  v6 = &v22;
LABEL_12:
  result = sub_260E66DF4(a2, v6, v5, &v19);
  v15 = v20;
  v16 = v21;
  *a3 = v19;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16;
  return result;
}

uint64_t AsyncChannel.send(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260E30A3C;

  return sub_260E5DC90(a1);
}

uint64_t AsyncChannel.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 1;
  *a1 = v1;
}

uint64_t AsyncChannel.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AsyncChannel.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_260E5E804@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  AsyncChannel.makeAsyncIterator()(a1);
}

uint64_t sub_260E5E83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(MEMORY[0x277D85A10] + 4);
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_260E343A8;

  return MEMORY[0x282200830](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_260E5E9F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_260E5EA44(uint64_t *a1, int a2)
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

uint64_t sub_260E5EA8C(uint64_t result, int a2, int a3)
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

uint64_t sub_260E5EAE4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10ProductKit12AsyncChannelC8EmissionOyx_G(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_260E5EB3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_260E5EB90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_260E5EC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v41 - v11;
  v42 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  if (sub_260E69234())
  {
    sub_260E69624();
    v16 = sub_260E69614();
  }

  else
  {
    v16 = MEMORY[0x277D84FA0];
  }

  v46 = sub_260E69234();
  if (!v46)
  {
    return v16;
  }

  v17 = 0;
  v51 = (v6 + 16);
  v52 = v16 + 56;
  v48 = v6 + 32;
  v50 = (v6 + 8);
  v43 = v6;
  v44 = v5;
  v45 = v15;
  while (1)
  {
    v18 = sub_260E69214();
    sub_260E691E4();
    if (v18)
    {
      v19 = *(v6 + 16);
      v19(v15, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17), a2);
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_260E69664();
      if (v42 != 8)
      {
        goto LABEL_23;
      }

      v54 = result;
      v19 = *v51;
      (*v51)(v15, &v54, a2);
      swift_unknownObjectRelease();
      v20 = __OFADD__(v17, 1);
      v21 = v17 + 1;
      if (v20)
      {
LABEL_20:
        __break(1u);
        return v16;
      }
    }

    v49 = v21;
    v47 = *(v6 + 32);
    v47(v53, v15, a2);
    v22 = *(v16 + 40);
    v23 = sub_260E68FA4();
    v24 = v16;
    v25 = -1 << *(v16 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v52 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v6 + 72);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      do
      {
        v19(v9, (*(v24 + 48) + v30 * v26), a2);
        v32 = a3;
        v33 = *(a3 + 8);
        v34 = sub_260E68FD4();
        v35 = *v50;
        (*v50)(v9, a2);
        if (v34)
        {
          v35(v53, a2);
          a3 = v32;
          v6 = v43;
          v5 = v44;
          v16 = v24;
          goto LABEL_7;
        }

        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v52 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        a3 = v32;
      }

      while (((1 << v26) & v28) != 0);
      v6 = v43;
      v5 = v44;
    }

    v36 = v53;
    *(v52 + 8 * v27) = v29 | v28;
    v37 = *(v24 + 48) + v30 * v26;
    v16 = v24;
    result = (v47)(v37, v36, a2);
    v39 = *(v24 + 16);
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      break;
    }

    *(v24 + 16) = v40;
LABEL_7:
    v15 = v45;
    v17 = v49;
    if (v49 == v46)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_260E5EFC8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_260E30A3C;

  return sub_260E5DEF0(a1, v5, v4);
}

uint64_t sub_260E5F0C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for AsyncChannel.Emission();
  result = sub_260E5CD04(v4, v5);
  *a1 = result;
  return result;
}

uint64_t sub_260E5F130@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = v2;
  *(result + 16) = v2 + 1;
  return result;
}

uint64_t sub_260E5F144()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_260E5F180(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_260E5F1DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_260E5F230()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_260E5F26C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_260E5F2B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_260E5F2F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_260E5F330()
{
  v0 = sub_260E68E94();
  __swift_allocate_value_buffer(v0, qword_27FE55358);
  v1 = __swift_project_value_buffer(v0, qword_27FE55358);
  if (qword_27FE53E48 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27FE5CB58);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_260E5F3F8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
  [v0 setDiscretionary_];
  [v0 setCanUseLocalCacheServer_];
  [v0 setAllowsCellularAccess_];
  result = [v0 setTimeoutIntervalForResource_];
  qword_27FE55370 = v0;
  return result;
}