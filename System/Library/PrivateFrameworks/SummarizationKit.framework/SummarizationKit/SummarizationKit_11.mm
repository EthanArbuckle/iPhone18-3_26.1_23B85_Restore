uint64_t sub_2280CAD30(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v42 = sub_22813713C();
  v7 = *(*(v42 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v42, v8);
  v39 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9, v11);
  v41 = &v31 - v14;
  v38 = *(a3 + 16);
  if (v38)
  {
    v15 = 0;
    v35 = (v13 + 8);
    v36 = (v13 + 32);
    v37 = v13 + 16;
    v40 = MEMORY[0x277D84F90];
    v33 = a2;
    v34 = a3;
    v32 = a1;
    while (v15 < *(a3 + 16))
    {
      v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v17 = *(v13 + 72);
      v18 = a3;
      v19 = a3 + v16 + v17 * v15;
      v20 = v13;
      v21 = a1;
      v22 = v41;
      (*(v13 + 16))(v41, v19, v42);
      v23 = v22;
      a1 = v21;
      v24 = v21(v23);
      if (v3)
      {
        (*v35)(v41, v42);
        v30 = v40;

        return v30;
      }

      if (v24)
      {
        v25 = *v36;
        (*v36)(v39, v41, v42);
        v26 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_228043B14(0, *(v26 + 16) + 1, 1);
          v26 = v43;
        }

        v29 = *(v26 + 16);
        v28 = *(v26 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_228043B14(v28 > 1, v29 + 1, 1);
          v26 = v43;
        }

        *(v26 + 16) = v29 + 1;
        v40 = v26;
        result = (v25)(v26 + v16 + v29 * v17, v39, v42);
        a3 = v34;
        a1 = v32;
      }

      else
      {
        result = (*v35)(v41, v42);
        a3 = v18;
      }

      ++v15;
      v13 = v20;
      if (v38 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
LABEL_14:

    return v40;
  }

  return result;
}

uint64_t sub_2280CB000@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a1;
  v6 = sub_22813713C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v7;
    v23 = a3;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v6);
      v18 = v25(v11);
      if (v3)
      {
        return (*v15)(v11, v6);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v6);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v7 = v22;
        a3 = v23;
        return (*(v7 + 56))(a3, v19, 1, v6);
      }
    }

    v7 = v22;
    a3 = v23;
    (*(v22 + 32))(v23, v11, v6);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v7 + 56))(a3, v19, 1, v6);
}

uint64_t sub_2280CB1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_228136F8C();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v9 = sub_228138AAC();
  v5[17] = v9;
  v10 = *(v9 - 8);
  v5[18] = v10;
  v11 = *(v10 + 64) + 15;
  v5[19] = swift_task_alloc();
  v12 = type metadata accessor for PriorityModelSession.Input();
  v5[20] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v5[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280CB328, 0, 0);
}

uint64_t sub_2280CB328()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v37 = v0[16];
  v6 = v0[15];
  v40 = v0[14];
  (*(v4 + 16))(v3, v0[10], v5);
  v7 = sub_228138A9C();
  v9 = v8;
  sub_228138A0C();
  v10 = sub_228138A6C();
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v38 = v13;
  v39 = v12;
  (*(v4 + 8))(v3, v5);
  *v1 = v7;
  *(v1 + 8) = v9;
  *(v1 + 16) = 2;
  (*(v6 + 32))(v1 + v2[6], v37, v40);
  v14 = (v1 + v2[7]);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v1 + v2[8]);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v1 + v2[9]);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v1 + v2[10]);
  *v17 = v39;
  v17[1] = v38;
  v18 = (v1 + v2[11]);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  *(v1 + v2[12]) = 1;
  type metadata accessor for SharedData();
  v19 = swift_allocObject();
  v0[22] = v19;
  type metadata accessor for SKAssetManager();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  swift_initStackObject();
  v20 = SKAssetManager.init()();
  v21 = type metadata accessor for FilterRules();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = FilterRules.init(assetManager:)(v20);
  v25 = v0[12];
  v26 = *(v19 + 16);
  *(v19 + 16) = v24;

  v27 = *(v19 + 24);
  *(v19 + 24) = v25;

  if (qword_2813C8178 != -1)
  {
    swift_once();
  }

  v28 = v0[21];
  v30 = v0[12];
  v29 = v0[13];
  v31 = v0[11];
  v0[8] = v19;
  v32 = swift_task_alloc();
  v0[23] = v32;
  v32[2] = v29;
  v32[3] = v28;
  v32[4] = v31;
  v32[5] = v30;
  v33 = *(MEMORY[0x277D85A70] + 4);
  v34 = swift_task_alloc();
  v0[24] = v34;
  sub_228138ACC();
  *v34 = v0;
  v34[1] = sub_2280CB6AC;
  v35 = v0[9];

  return MEMORY[0x282200908](v35, v0 + 8, &unk_2281402D0, v32, 0, 0, 0xD00000000000002BLL, 0x8000000228144280);
}

uint64_t sub_2280CB6AC()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  v4 = *(v2 + 184);

  if (v0)
  {
    v5 = sub_2280CB878;
  }

  else
  {
    v5 = sub_2280CB7D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280CB7D0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[16];

  sub_2280D3D04(v2, type metadata accessor for PriorityModelSession.Input);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2280CB878()
{
  v1 = v0[22];

  v2 = v0[25];
  v3 = v0[19];
  v4 = v0[16];
  sub_2280D3D04(v0[21], type metadata accessor for PriorityModelSession.Input);

  v5 = v0[1];

  return v5();
}

uint64_t PriorityModelSession.performInference(messageThread:requestInfo:signalCollector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5B0, &qword_22813B320);
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v9 = *(*(type metadata accessor for PriorityModelSession.Input() - 8) + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280CBA24, 0, 0);
}

uint64_t sub_2280CBA24()
{
  v1 = v0[16];
  v2 = v0[17];
  (*(v0[15] + 16))(v1, v0[10], v0[14]);
  sub_2280CCE9C(v1, v2);
  type metadata accessor for SharedData();
  v3 = swift_allocObject();
  v0[18] = v3;
  type metadata accessor for SKAssetManager();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  swift_initStackObject();
  v4 = SKAssetManager.init()();
  v5 = type metadata accessor for FilterRules();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = FilterRules.init(assetManager:)(v4);
  v9 = v0[12];
  v10 = *(v3 + 16);
  *(v3 + 16) = v8;

  v11 = *(v3 + 24);
  *(v3 + 24) = v9;

  if (qword_2813C8178 != -1)
  {
    swift_once();
  }

  v12 = v0[17];
  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[11];
  v0[8] = v3;
  v16 = swift_task_alloc();
  v0[19] = v16;
  v16[2] = v13;
  v16[3] = v12;
  v16[4] = v15;
  v16[5] = v14;
  v17 = *(MEMORY[0x277D85A70] + 4);
  v18 = swift_task_alloc();
  v0[20] = v18;
  sub_228138ACC();
  *v18 = v0;
  v18[1] = sub_2280CBCC4;
  v19 = v0[9];

  return MEMORY[0x282200908](v19, v0 + 8, &unk_22813B338, v16, 0, 0, 0xD00000000000002BLL, 0x8000000228144280);
}

uint64_t sub_2280CBCC4()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  v4 = *(v2 + 152);

  if (v0)
  {
    v5 = sub_2280CBE7C;
  }

  else
  {
    v5 = sub_2280CBDE8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280CBDE8()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  sub_2280D3D04(v2, type metadata accessor for PriorityModelSession.Input);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2280CBE7C()
{
  v1 = v0[18];

  v2 = v0[21];
  sub_2280D3D04(v0[17], type metadata accessor for PriorityModelSession.Input);
  v4 = v0[16];
  v3 = v0[17];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2280CBF28()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v2 = sub_227FF9AA4(0, 0xD000000000000079, 0x80000002281442B0, 70, sub_2280CD590);
  sub_227FE7384();
  swift_allocError();
  *v3 = 1;
  *(v3 + 8) = v2;
  swift_willThrow();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2280CC038()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  v2 = sub_227FF9AA4(0, 0xD000000000000079, 0x80000002281442B0, 78, sub_2280D4808);
  sub_227FE7384();
  swift_allocError();
  *v3 = 1;
  *(v3 + 8) = v2;
  swift_willThrow();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t PriorityModelSession.__allocating_init(sessionInfo:)(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2280CC1D4;

  return PriorityModelSession.init(sessionInfo:)(a1);
}

uint64_t sub_2280CC1D4(uint64_t a1)
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

uint64_t PriorityModelSession.init(sessionInfo:)(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v2[15] = *v1;
  return MEMORY[0x2822009F8](sub_2280CC31C, 0, 0);
}

uint64_t sub_2280CC31C()
{
  v1 = v0[13];
  sub_2280D399C(v1, v0[14] + 16);
  sub_2280D399C(v1, (v0 + 8));
  type metadata accessor for LLMUrgencyClassifier();
  swift_allocObject();
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_2280CC3F0;

  return LLMUrgencyClassifier.init(sessionInfo:configuration:contextSizeOverride:)((v0 + 8), v2, 0, 1);
}

uint64_t sub_2280CC3F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_2280CC668;
  }

  else
  {
    *(v4 + 144) = a1;
    v7 = sub_2280CC518;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2280CC518()
{
  v1 = v0[13];
  v2 = v0[14];
  *(v2 + 56) = v0[18];
  type metadata accessor for SKAssetManager();
  swift_initStackObject();
  v3 = SKAssetManager.init()();
  v4 = type metadata accessor for ClassificationConfiguration();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = (v7 + qword_2813C68F8);
  *v8 = 0xD00000000000001BLL;
  v8[1] = 0x8000000228147E60;
  v9 = (v7 + qword_2813C6900);
  *v9 = 0x7478746270;
  v9[1] = 0xE500000000000000;
  v10 = (v7 + qword_2813C68F0);
  *v10 = 0xD000000000000010;
  v10[1] = 0x8000000228143AB0;
  *(v7 + qword_2813C68E8) = 0;
  v11 = sub_227FDF5B4(v3, 0, 0xD00000000000001BLL, 0x8000000228147E60, 0x7478746270, 0xE500000000000000, 0xD000000000000010, 0x8000000228143AB0);
  __swift_destroy_boxed_opaque_existential_1Tm_11(v1);
  *(v2 + 64) = v11;
  v12 = v0[1];
  v13 = v0[14];

  return v12(v13);
}

uint64_t sub_2280CC668()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1Tm_11(*(v0 + 104));
  __swift_destroy_boxed_opaque_existential_1Tm_11((v1 + 16));
  swift_deallocPartialClassInstance();
  v3 = *(v0 + 8);
  v4 = *(v0 + 136);

  return v3();
}

uint64_t PriorityModelSession.performInference(input:requestInfo:signalCollector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return MEMORY[0x2822009F8](sub_2280CC714, 0, 0);
}

uint64_t sub_2280CC714()
{
  type metadata accessor for SharedData();
  v1 = swift_allocObject();
  *(v0 + 112) = v1;
  type metadata accessor for SKAssetManager();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  swift_initStackObject();
  v2 = SKAssetManager.init()();
  v3 = type metadata accessor for FilterRules();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = FilterRules.init(assetManager:)(v2);
  v7 = *(v0 + 96);
  v8 = *(v1 + 16);
  *(v1 + 16) = v6;

  v9 = *(v1 + 24);
  *(v1 + 24) = v7;

  if (qword_2813C8178 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  *(v0 + 64) = v1;
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  v13 = *(v0 + 80);
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  *(v12 + 40) = v11;
  v14 = *(MEMORY[0x277D85A70] + 4);
  v15 = swift_task_alloc();
  *(v0 + 128) = v15;
  sub_228138ACC();
  *v15 = v0;
  v15[1] = sub_2280CC94C;
  v16 = *(v0 + 72);

  return MEMORY[0x282200908](v16, v0 + 64, &unk_22813FF28, v12, 0, 0, 0xD00000000000002BLL, 0x8000000228144280);
}

uint64_t sub_2280CC94C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  v4 = *(v2 + 120);

  if (v0)
  {
    v5 = sub_2280CCAD4;
  }

  else
  {
    v5 = sub_2280CCA70;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280CCA70()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2280CCAD4()
{
  v1 = v0[14];

  v2 = v0[17];
  v3 = v0[1];

  return v3();
}

uint64_t type metadata accessor for PriorityModelSession.Input()
{
  result = qword_2813C71A8;
  if (!qword_2813C71A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2280CCB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_228138AEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v52 - v12;
  v63 = sub_228136F8C();
  v14 = *(v63 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v63, v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_228138B1C();
  v57 = v20;
  v58 = v19;
  sub_228138B0C();
  v21 = sub_228138B6C();
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  v61 = v24;
  v62 = v23;
  v25 = sub_228138B7C();
  if (v26)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  v59 = v28;
  v60 = v27;
  v29 = sub_228138B5C();
  if (v30)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0xE000000000000000;
  }

  v55 = v32;
  v56 = v31;
  v33 = sub_228138AFC();
  if (v34)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0;
  }

  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0xE000000000000000;
  }

  v53 = v36;
  v54 = v35;
  sub_228138B2C();
  sub_228138ADC();
  sub_2280D4590(&qword_2813C4748, MEMORY[0x277D4AFD8]);
  v37 = sub_2281397EC();
  v38 = sub_228138B8C();
  (*(*(v38 - 8) + 8))(a1, v38);
  v39 = *(v5 + 8);
  v39(v10, v4);
  v39(v13, v4);
  v40 = v57;
  *a2 = v58;
  *(a2 + 8) = v40;
  *(a2 + 16) = 1;
  v41 = type metadata accessor for PriorityModelSession.Input();
  result = (*(v14 + 32))(a2 + v41[6], v18, v63);
  v43 = (a2 + v41[7]);
  *v43 = 0;
  v43[1] = 0xE000000000000000;
  v44 = (a2 + v41[8]);
  v45 = v61;
  *v44 = v62;
  v44[1] = v45;
  v46 = (a2 + v41[9]);
  v47 = v59;
  *v46 = v60;
  v46[1] = v47;
  v48 = (a2 + v41[10]);
  v49 = v55;
  *v48 = v56;
  v48[1] = v49;
  v50 = (a2 + v41[11]);
  v51 = v53;
  *v50 = v54;
  v50[1] = v51;
  *(a2 + v41[12]) = v37 & 1;
  return result;
}

uint64_t sub_2280CCE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_228136F8C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v59 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_228138AAC();
  v10 = *(v64 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v64, v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v58 = &v49 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5B0, &qword_22813B320);
  v19 = *(sub_228138BAC() + 16);

  if (v19)
  {
    result = sub_228138BAC();
    if (*(result + 16))
    {
      v56 = v6;
      v57 = v5;
      v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v62 = *(v10 + 16);
      v63 = v10 + 16;
      v62(v58, result + v21, v64);

      v22 = sub_228138A9C();
      v53 = v23;
      v54 = v22;
      sub_228138A0C();
      v55 = v18;
      v24 = sub_228138BAC();
      v25 = *(v24 + 16);
      if (v25)
      {
        v50 = a2;
        v51 = a1;
        v52 = v2;
        v49 = v24;
        v26 = v24 + v21;
        v61 = *(v10 + 72);
        v27 = (v10 + 8);
        v28 = MEMORY[0x277D84F90];
        v60 = v10;
        do
        {
          v30 = v64;
          v62(v15, v26, v64);
          v31 = sub_228138A6C();
          v33 = v32;
          (*v27)(v15, v30);
          if (v33)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = sub_2281338C0(0, *(v28 + 2) + 1, 1, v28);
            }

            v35 = *(v28 + 2);
            v34 = *(v28 + 3);
            if (v35 >= v34 >> 1)
            {
              v28 = sub_2281338C0((v34 > 1), v35 + 1, 1, v28);
            }

            *(v28 + 2) = v35 + 1;
            v29 = &v28[16 * v35];
            *(v29 + 4) = v31;
            *(v29 + 5) = v33;
            v10 = v60;
          }

          v26 += v61;
          --v25;
        }

        while (v25);

        a1 = v51;
        a2 = v50;
      }

      else
      {

        v28 = MEMORY[0x277D84F90];
      }

      v65 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
      sub_2280D3E0C(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80);
      v39 = sub_22813925C();
      v41 = v40;

      (*(*(v55 - 8) + 8))(a1);
      (*(v10 + 8))(v58, v64);
      v42 = v53;
      *a2 = v54;
      *(a2 + 8) = v42;
      *(a2 + 16) = 5;
      v43 = type metadata accessor for PriorityModelSession.Input();
      result = (*(v56 + 32))(a2 + v43[6], v59, v57);
      v44 = (a2 + v43[7]);
      *v44 = 0;
      v44[1] = 0xE000000000000000;
      v45 = (a2 + v43[8]);
      *v45 = 0;
      v45[1] = 0xE000000000000000;
      v46 = (a2 + v43[9]);
      *v46 = 0;
      v46[1] = 0xE000000000000000;
      v47 = (a2 + v43[10]);
      *v47 = v39;
      v47[1] = v41;
      v48 = (a2 + v43[11]);
      *v48 = 0;
      v48[1] = 0xE000000000000000;
      *(a2 + v43[12]) = 1;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v36 = swift_allocObject();
    *(v36 + 16) = 12;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0;
    v37 = sub_227FF9AA4(0, 0xD000000000000079, 0x80000002281442B0, 418, sub_2280D4828);
    sub_227FE7384();
    swift_allocError();
    *v38 = 12;
    *(v38 + 8) = v37;
    swift_willThrow();
    return (*(*(v18 - 8) + 8))(a1, v18);
  }

  return result;
}

uint64_t sub_2280CD3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2280CD49C;

  return PriorityModelSession.performInferenceInternal(input:requestInfo:signalCollector:)(a1, a3, a4, a5);
}

uint64_t sub_2280CD49C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t PriorityModelSession.performInferenceInternal(input:requestInfo:signalCollector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECF0, &qword_22813E230) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v7 = sub_228138DDC();
  v5[21] = v7;
  v8 = *(v7 - 8);
  v5[22] = v8;
  v9 = *(v8 + 64) + 15;
  v5[23] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF88, &qword_22813FF40);
  v5[24] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v12 = *(*(type metadata accessor for GMSModelInfo(0) - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v13 = sub_228136F8C();
  v5[27] = v13;
  v14 = *(v13 - 8);
  v5[28] = v14;
  v15 = *(v14 + 64) + 15;
  v5[29] = swift_task_alloc();
  v16 = sub_2281371EC();
  v5[30] = v16;
  v17 = *(v16 - 8);
  v5[31] = v17;
  v18 = *(v17 + 64) + 15;
  v5[32] = swift_task_alloc();
  v19 = *(*(type metadata accessor for SignpostToken(0) - 8) + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0) - 8) + 64) + 15;
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v21 = type metadata accessor for PriorityModelSession.Input();
  v5[38] = v21;
  v22 = *(v21 - 8);
  v5[39] = v22;
  v5[40] = *(v22 + 64);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80) - 8) + 64) + 15;
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v24 = sub_22813882C();
  v5[56] = v24;
  v25 = *(v24 - 8);
  v5[57] = v25;
  v26 = *(v25 + 64) + 15;
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v5[61] = swift_task_alloc();
  v27 = sub_22813716C();
  v5[62] = v27;
  v28 = *(v27 - 8);
  v5[63] = v28;
  v29 = *(v28 + 64) + 15;
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280CDA70, 0, 0);
}

uint64_t sub_2280CDA70()
{
  v55 = v0;
  v1 = objc_opt_self();
  *(v0 + 536) = v1;

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v2 = byte_2813C4629;
  *(v0 + 704) = byte_2813C4629;
  if (v2 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v3 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v3 = &qword_2813C76F8;
  }

  v4 = *(*v3 + 232);
  v5 = *(*v3 + 240);
  v7 = *(*v3 + 248);
  v6 = *(*v3 + 256);
  v8 = *(*v3 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v9 = byte_2813C4638;
  *(v0 + 705) = byte_2813C4638;
  if (v9 == 1)
  {
    v7(&v53, v8);

    if ((v53 & 1) == 0)
    {
LABEL_14:
      if (qword_2813C49A8 != -1)
      {
        swift_once();
      }

      v10 = __swift_project_value_buffer(*(v0 + 448), qword_2813C89F0);
      if (qword_2813C49C8 != -1)
      {
        swift_once();
      }

      if ((byte_2813C49D0 & 1) == 0)
      {
        if (qword_2813C4988 != -1)
        {
          swift_once();
        }

        v10 = __swift_project_value_buffer(*(v0 + 448), qword_2813C4990);
      }

      v11 = (v0 + 488);
      (*(*(v0 + 456) + 16))(*(v0 + 488), v10, *(v0 + 448));
      v12 = sub_22813880C();
      v13 = sub_2281396BC();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_44;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "checkSupportedLanguage skipped; internal supportedLanguageCheckEnabled setting is false";
LABEL_43:
      _os_log_impl(&dword_227FC3000, v12, v13, v15, v14, 2u);
      MEMORY[0x22AAB28A0](v14, -1, -1);
LABEL_44:
      v30 = *(v0 + 528);
      v31 = *v11;
      v32 = *(v0 + 448);
      v33 = *(v0 + 456);

      (*(v33 + 8))(v31, v32);
      sub_2281370CC();
      if (qword_2813C49D8 != -1)
      {
        swift_once();
      }

      v34 = *(v0 + 528);
      v36 = *(v0 + 504);
      v35 = *(v0 + 512);
      v37 = *(v0 + 496);
      *(v0 + 568) = __swift_project_value_buffer(*(v0 + 448), qword_2813C8A08);
      (*(v36 + 16))(v35, v34, v37);
      v38 = sub_22813880C();
      v39 = sub_2281396CC();
      v40 = os_log_type_enabled(v38, v39);
      v42 = *(v0 + 504);
      v41 = *(v0 + 512);
      v43 = *(v0 + 496);
      if (v40)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v54 = v45;
        *v44 = 136446210;
        v52 = sub_228136FEC();
        v47 = v46;
        v48 = *(v42 + 8);
        v48(v41, v43);
        v49 = sub_227FCC340(v52, v47, &v54);

        *(v44 + 4) = v49;
        _os_log_impl(&dword_227FC3000, v38, v39, "Locale used for inference: %{public}s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_11(v45);
        MEMORY[0x22AAB28A0](v45, -1, -1);
        MEMORY[0x22AAB28A0](v44, -1, -1);
      }

      else
      {

        v48 = *(v42 + 8);
        v48(v41, v43);
      }

      *(v0 + 576) = v48;
      v50 = swift_task_alloc();
      *(v0 + 584) = v50;
      *v50 = v0;
      v50[1] = sub_2280CE870;
      v51 = *(v0 + 128);

      return sub_2280D375C(v51);
    }
  }

  else
  {

    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v16 = *(v0 + 128);
  if (!sub_2280D1304())
  {
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(*(v0 + 448), qword_2813C89F0);
    if (qword_2813C49C8 != -1)
    {
      swift_once();
    }

    if ((byte_2813C49D0 & 1) == 0)
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v29 = __swift_project_value_buffer(*(v0 + 448), qword_2813C4990);
    }

    v11 = (v0 + 480);
    (*(*(v0 + 456) + 16))(*(v0 + 480), v29, *(v0 + 448));
    v12 = sub_22813880C();
    v13 = sub_2281396BC();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_44;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "checkSupportedLanguage skipped; the input is not long enough for accurate language identification";
    goto LABEL_43;
  }

  v17 = *(v0 + 440);
  v18 = *(v0 + 128);
  v19 = PriorityModelSession.Input.flatten()();
  *(v0 + 544) = v19._object;
  v20 = sub_22813713C();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  if (qword_2813C7030 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for ModelBundleIdentifier();
  v22 = __swift_project_value_buffer(v21, qword_2813C8AF0);
  if (qword_2813C49D8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(*(v0 + 448), qword_2813C8A08);
  v24 = swift_task_alloc();
  *(v0 + 552) = v24;
  *v24 = v0;
  v24[1] = sub_2280CE2B4;
  v25 = *(v0 + 520);
  v26 = *(v0 + 440);
  v27 = *(v0 + 136);

  return sub_2280C76F8(v25, v19._countAndFlagsBits, v19._object, v26, v22, v27, v23);
}

uint64_t sub_2280CE2B4()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;
  *(*v1 + 560) = v0;

  v5 = *(v2 + 544);
  sub_2280D44A8(*(v2 + 440), &qword_27D81E778, &qword_22813BC80);

  if (v0)
  {
    v6 = sub_2280CE668;
  }

  else
  {
    v6 = sub_2280CE414;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2280CE414()
{
  v22 = v0;
  (*(v0[63] + 32))(v0[66], v0[65], v0[62]);
  if (qword_2813C49D8 != -1)
  {
    swift_once();
  }

  v1 = v0[66];
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[62];
  v0[71] = __swift_project_value_buffer(v0[56], qword_2813C8A08);
  (*(v3 + 16))(v2, v1, v4);
  v5 = sub_22813880C();
  v6 = sub_2281396CC();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[63];
  v8 = v0[64];
  v10 = v0[62];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446210;
    v20 = sub_228136FEC();
    v14 = v13;
    v15 = *(v9 + 8);
    v15(v8, v10);
    v16 = sub_227FCC340(v20, v14, &v21);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_227FC3000, v5, v6, "Locale used for inference: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v12);
    MEMORY[0x22AAB28A0](v12, -1, -1);
    MEMORY[0x22AAB28A0](v11, -1, -1);
  }

  else
  {

    v15 = *(v9 + 8);
    v15(v8, v10);
  }

  v0[72] = v15;
  v17 = swift_task_alloc();
  v0[73] = v17;
  *v17 = v0;
  v17[1] = sub_2280CE870;
  v18 = v0[16];

  return sub_2280D375C(v18);
}

uint64_t sub_2280CE668()
{
  v36 = v0[70];
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v5 = v0[60];
  v4 = v0[61];
  v7 = v0[58];
  v6 = v0[59];
  v9 = v0[54];
  v8 = v0[55];
  v10 = v0[53];
  v13 = v0[52];
  v14 = v0[51];
  v15 = v0[50];
  v16 = v0[49];
  v17 = v0[48];
  v18 = v0[47];
  v19 = v0[46];
  v20 = v0[45];
  v21 = v0[44];
  v22 = v0[43];
  v23 = v0[42];
  v24 = v0[41];
  v25 = v0[37];
  v26 = v0[36];
  v27 = v0[35];
  v28 = v0[34];
  v29 = v0[33];
  v30 = v0[32];
  v31 = v0[29];
  v32 = v0[26];
  v33 = v0[25];
  v34 = v0[23];
  v35 = v0[20];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2280CE870()
{
  v2 = *(*v1 + 584);
  v5 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = sub_2280CED64;
  }

  else
  {
    v3 = sub_2280CE984;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2280CE984()
{
  if (v0[9]._countAndFlagsBits)
  {
    countAndFlagsBits = v0[9]._countAndFlagsBits;
  }

  else
  {
    type metadata accessor for TelemetrySignalCollector();
    swift_allocObject();
    countAndFlagsBits = sub_2280D5C74();
  }

  v0[37]._object = countAndFlagsBits;
  v2 = v0[37]._countAndFlagsBits;
  object = v0[26]._object;
  v4 = v0[9]._object;
  v6 = v0[8]._countAndFlagsBits;
  v5 = v0[8]._object;

  sub_2280D1714(v6, v5, object);
  if (v2)
  {
    v7 = v0[36]._countAndFlagsBits;
    v8 = v0[33]._countAndFlagsBits;
    v9 = v0[31]._countAndFlagsBits;
    v10 = v0[31]._object;

    v7(v8, v9);
    v11 = v0[33]._countAndFlagsBits;
    v12 = v0[32]._object;
    v13 = v0[32]._countAndFlagsBits;
    v14 = v0[30]._countAndFlagsBits;
    v15 = v0[30]._object;
    v17 = v0[29]._countAndFlagsBits;
    v16 = v0[29]._object;
    v19 = v0[27]._countAndFlagsBits;
    v18 = v0[27]._object;
    v20 = v0[26]._object;
    v31 = v0[26]._countAndFlagsBits;
    v32 = v0[25]._object;
    v33 = v0[25]._countAndFlagsBits;
    v34 = v0[24]._object;
    v35 = v0[24]._countAndFlagsBits;
    v36 = v0[23]._object;
    v37 = v0[23]._countAndFlagsBits;
    v38 = v0[22]._object;
    v39 = v0[22]._countAndFlagsBits;
    v40 = v0[21]._object;
    v41 = v0[21]._countAndFlagsBits;
    v42 = v0[20]._object;
    v43 = v0[18]._object;
    v44 = v0[18]._countAndFlagsBits;
    v45 = v0[17]._object;
    v46 = v0[17]._countAndFlagsBits;
    v47 = v0[16]._object;
    v48 = v0[16]._countAndFlagsBits;
    v49 = v0[14]._object;
    v50 = v0[13]._countAndFlagsBits;
    v51 = v0[12]._object;
    v52 = v0[11]._object;
    v53 = v0[10]._countAndFlagsBits;

    v21 = v0->_object;

    return v21();
  }

  else
  {
    v23 = v0[26]._object;
    v24 = v0[9]._object;
    v25 = PriorityModelSession.Input.flatten()();
    v0[38] = v25;
    v26 = (*(v24[7] + 16) + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model);
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v27 = off_283B5ECA8;
    v28 = sub_22813755C();
    v54 = (v27 + *v27);
    v29 = v27[1];
    v30 = swift_task_alloc();
    v0[39]._countAndFlagsBits = v30;
    *v30 = v0;
    v30[1] = sub_2280CEF88;

    return (v54)(v25._countAndFlagsBits, v25._object, v28, &off_283B5EC90);
  }
}

uint64_t sub_2280CED64()
{
  v1 = *(v0 + 504) + 8;
  (*(v0 + 576))(*(v0 + 528), *(v0 + 496));
  v37 = *(v0 + 592);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  v4 = *(v0 + 512);
  v6 = *(v0 + 480);
  v5 = *(v0 + 488);
  v8 = *(v0 + 464);
  v7 = *(v0 + 472);
  v10 = *(v0 + 432);
  v9 = *(v0 + 440);
  v11 = *(v0 + 424);
  v14 = *(v0 + 416);
  v15 = *(v0 + 408);
  v16 = *(v0 + 400);
  v17 = *(v0 + 392);
  v18 = *(v0 + 384);
  v19 = *(v0 + 376);
  v20 = *(v0 + 368);
  v21 = *(v0 + 360);
  v22 = *(v0 + 352);
  v23 = *(v0 + 344);
  v24 = *(v0 + 336);
  v25 = *(v0 + 328);
  v26 = *(v0 + 296);
  v27 = *(v0 + 288);
  v28 = *(v0 + 280);
  v29 = *(v0 + 272);
  v30 = *(v0 + 264);
  v31 = *(v0 + 256);
  v32 = *(v0 + 232);
  v33 = *(v0 + 208);
  v34 = *(v0 + 200);
  v35 = *(v0 + 184);
  v36 = *(v0 + 160);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2280CEF88(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 624);
  v6 = *v2;
  *(*v2 + 632) = v1;

  if (v1)
  {
    v7 = *(v4 + 616);

    v8 = sub_2280D0434;
  }

  else
  {
    *(v4 + 640) = a1;
    v8 = sub_2280CF0B8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2280CF0B8()
{
  v213 = v0;
  v1 = *(v0 + 640);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 600);
  v5 = *(v0 + 424);
  v6 = *(v0 + 304);
  v7 = sub_22813936C();

  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v4 + 16));
  v9 = MEMORY[0x277D84A28];
  v212 = MEMORY[0x277D84A28];
  v211 = v7;

  sub_2280449E4(&v211, KeyPath, (v4 + 24));
  os_unfair_lock_unlock((v4 + 16));

  v10 = swift_getKeyPath();
  os_unfair_lock_lock((v4 + 16));
  v212 = v9;
  v211 = v1;

  sub_2280449E4(&v211, v10, (v4 + 24));
  os_unfair_lock_unlock((v4 + 16));

  v209 = v6;
  v11 = (v5 + *(v6 + 40));
  v12 = *v11;
  v13 = v11[1];
  v14 = sub_22813936C();
  v15 = swift_getKeyPath();
  os_unfair_lock_lock((v4 + 16));
  v212 = v9;
  v211 = v14;

  sub_2280449E4(&v211, v15, (v4 + 24));
  os_unfair_lock_unlock((v4 + 16));

  v16 = 1 << *(v5 + 16);
  if ((v16 & 9) != 0)
  {
    v28 = (*(v0 + 424) + *(*(v0 + 304) + 28));
    v29 = *v28;
    v30 = v28[1];
    v27 = sub_22813936C();
  }

  else
  {
    if ((v16 & 0x12) == 0)
    {
      goto LABEL_6;
    }

    v17 = *(v0 + 424);
    v18 = *(v0 + 304);
    v19 = (v17 + *(v18 + 32));
    v20 = *v19;
    v21 = v19[1];
    v22 = sub_22813936C();
    v23 = swift_getKeyPath();
    os_unfair_lock_lock((v4 + 16));
    v212 = v9;
    v211 = v22;

    sub_2280449E4(&v211, v23, (v4 + 24));
    os_unfair_lock_unlock((v4 + 16));

    v24 = (v17 + *(v18 + 36));
    v25 = *v24;
    v26 = v24[1];
    v27 = sub_22813936C();
  }

  v31 = swift_getKeyPath();
  os_unfair_lock_lock((v4 + 16));
  v212 = v9;
  v211 = v27;

  sub_2280449E4(&v211, v31, (v4 + 24));
  os_unfair_lock_unlock((v4 + 16));

LABEL_6:
  v32 = *(v0 + 568);
  sub_2280D4528(*(v0 + 424), *(v0 + 416), type metadata accessor for PriorityModelSession.Input);
  v33 = sub_22813880C();
  v34 = sub_2281396BC();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 416);
  if (v35)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v211 = v38;
    *v37 = 136446210;
    v39 = *v36;
    v40 = v36[1];

    sub_2280D3D04(v36, type metadata accessor for PriorityModelSession.Input);
    v41 = sub_227FCC340(v39, v40, &v211);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_227FC3000, v33, v34, "Start urgency classification task for ID %{public}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v38);
    MEMORY[0x22AAB28A0](v38, -1, -1);
    MEMORY[0x22AAB28A0](v37, -1, -1);
  }

  else
  {

    sub_2280D3D04(v36, type metadata accessor for PriorityModelSession.Input);
  }

  v42 = *(v0 + 704);

  if (v42 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v43 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v43 = &qword_2813C76F8;
  }

  v44 = *(v0 + 705);
  v45 = *(v0 + 536);
  v46 = *v43;
  v47 = *(*v43 + 24);
  v48 = *(*v43 + 32);
  v50 = *(*v43 + 40);
  v49 = *(*v43 + 48);
  v51 = *(*v43 + 2208);

  if (v44 == 1)
  {
    v50(&v211, v51);

    if ((v211 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (!v48)
    {
LABEL_22:

      goto LABEL_23;
    }
  }

  v52 = *(v0 + 705);
  v53 = *(v0 + 536);
  v54 = *(v46 + 64);
  v55 = *(v46 + 72);
  v57 = *(v46 + 80);
  v56 = *(v46 + 88);
  v58 = *(v46 + 2208);

  if (v52 == 1)
  {
    v57(&v211, v58);

    if ((v211 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if ((v55 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (qword_2813C49B8 != -1)
  {
    swift_once();
  }

  if (byte_2813C49C1 == 1)
  {
    v84 = *(v0 + 568);
  }

  else
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v84 = __swift_project_value_buffer(*(v0 + 448), qword_2813C4990);
  }

  v116 = *(*(v0 + 456) + 16);
  v116(*(v0 + 472), v84, *(v0 + 448));
  if (qword_2813C49B0 != -1)
  {
    swift_once();
  }

  if (byte_27D81EEF2 == 1)
  {
    (*(*(v0 + 456) + 32))(*(v0 + 464), *(v0 + 472), *(v0 + 448));
  }

  else
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v118 = *(v0 + 464);
    v117 = *(v0 + 472);
    v119 = *(v0 + 448);
    v120 = *(v0 + 456);
    v121 = __swift_project_value_buffer(v119, qword_2813C4990);
    v116(v118, v121, v119);
    (*(v120 + 8))(v117, v119);
  }

  v122 = *(v0 + 424);
  v123 = *(v0 + 400);
  v125 = *(v0 + 384);
  v124 = *(v0 + 392);
  v127 = *(v0 + 368);
  v126 = *(v0 + 376);
  v128 = *(v0 + 360);
  v202 = *(v0 + 352);
  logb = *(v0 + 464);
  sub_2280D4528(v122, *(v0 + 408), type metadata accessor for PriorityModelSession.Input);
  sub_2280D4528(v122, v123, type metadata accessor for PriorityModelSession.Input);
  sub_2280D4528(v122, v124, type metadata accessor for PriorityModelSession.Input);
  sub_2280D4528(v122, v125, type metadata accessor for PriorityModelSession.Input);
  sub_2280D4528(v122, v126, type metadata accessor for PriorityModelSession.Input);
  sub_2280D4528(v122, v127, type metadata accessor for PriorityModelSession.Input);
  sub_2280D4528(v122, v128, type metadata accessor for PriorityModelSession.Input);
  sub_2280D4528(v122, v202, type metadata accessor for PriorityModelSession.Input);
  v129 = sub_22813880C();
  v130 = sub_2281396CC();
  if (os_log_type_enabled(v129, v130))
  {
    v203 = v130;
    loga = v129;
    v132 = *(v0 + 400);
    v131 = *(v0 + 408);
    v133 = swift_slowAlloc();
    v200 = swift_slowAlloc();
    v211 = v200;
    *v133 = 136448003;
    v134 = *v131;
    v135 = v131[1];

    sub_2280D3D04(v131, type metadata accessor for PriorityModelSession.Input);
    v136 = sub_227FCC340(v134, v135, &v211);

    *(v133 + 4) = v136;
    *(v133 + 12) = 2082;
    v137 = *(v132 + 16);
    v138 = 0x7373654D6C69616DLL;
    v139 = 0x80000002281438C0;
    v140 = 0x80000002281438E0;
    if (v137 == 4)
    {
      v141 = 0xD000000000000012;
    }

    else
    {
      v141 = 0xD000000000000011;
    }

    if (v137 != 4)
    {
      v140 = 0x8000000228143900;
    }

    if (v137 == 3)
    {
      v142 = 0xD000000000000011;
    }

    else
    {
      v142 = v141;
    }

    if (v137 != 3)
    {
      v139 = v140;
    }

    v143 = 0xEC0000006E6F6974;
    v144 = 0x6163696669746F6ELL;
    if (v137 != 1)
    {
      v144 = 0x7373654D74786574;
      v143 = 0xEB00000000656761;
    }

    if (*(v132 + 16))
    {
      v138 = v144;
    }

    else
    {
      v143 = 0xEB00000000656761;
    }

    if (*(v132 + 16) <= 2u)
    {
      v145 = v138;
    }

    else
    {
      v145 = v142;
    }

    if (*(v132 + 16) <= 2u)
    {
      v146 = v143;
    }

    else
    {
      v146 = v139;
    }

    v196 = *(v0 + 448);
    v198 = *(v0 + 464);
    v147 = *(v0 + 392);
    v148 = *(v0 + 384);
    v186 = *(v0 + 376);
    v188 = *(v0 + 368);
    v190 = *(v0 + 360);
    v192 = *(v0 + 352);
    v194 = *(v0 + 456);
    v149 = *(v0 + 304);
    v150 = *(v0 + 216);
    sub_2280D3D04(*(v0 + 400), type metadata accessor for PriorityModelSession.Input);
    v151 = sub_227FCC340(v145, v146, &v211);

    *(v133 + 14) = v151;
    *(v133 + 22) = 2082;
    v152 = v149[6];
    sub_2280D4590(&qword_27D81EF90, MEMORY[0x277CC9578]);
    v153 = sub_22813998C();
    v155 = v154;
    sub_2280D3D04(v147, type metadata accessor for PriorityModelSession.Input);
    v156 = sub_227FCC340(v153, v155, &v211);

    *(v133 + 24) = v156;
    *(v133 + 32) = 2082;
    v157 = (v148 + v149[11]);
    v158 = *v157;
    v159 = v157[1];

    sub_2280D3D04(v148, type metadata accessor for PriorityModelSession.Input);
    v160 = sub_227FCC340(v158, v159, &v211);

    *(v133 + 34) = v160;
    *(v133 + 42) = 2081;
    v161 = (v186 + v149[7]);
    v162 = *v161;
    v163 = v161[1];

    sub_2280D3D04(v186, type metadata accessor for PriorityModelSession.Input);
    v164 = sub_227FCC340(v162, v163, &v211);

    *(v133 + 44) = v164;
    *(v133 + 52) = 2081;
    v165 = (v188 + v149[8]);
    v166 = *v165;
    v167 = v165[1];

    sub_2280D3D04(v188, type metadata accessor for PriorityModelSession.Input);
    v168 = sub_227FCC340(v166, v167, &v211);

    *(v133 + 54) = v168;
    *(v133 + 62) = 2081;
    v169 = (v190 + v149[9]);
    v170 = *v169;
    v171 = v169[1];

    sub_2280D3D04(v190, type metadata accessor for PriorityModelSession.Input);
    v172 = sub_227FCC340(v170, v171, &v211);

    *(v133 + 64) = v172;
    *(v133 + 72) = 2081;
    v173 = (v192 + *(v209 + 40));
    v174 = *v173;
    v175 = v173[1];

    sub_2280D3D04(v192, type metadata accessor for PriorityModelSession.Input);
    v176 = sub_227FCC340(v174, v175, &v211);

    *(v133 + 74) = v176;
    _os_log_impl(&dword_227FC3000, loga, v203, "\n--------------------------------------------------------------------------------\n# Input for request %{public}s\n--------------------------------------------------------------------------------\nType: %{public}s\nDateTime: %{public}s\nBundleID: %{public}s\nSubject: %{private}s\nTitle: %{private}s\nSubtitle: %{private}s\nBody: %{private}s\n--------------------------------------------------------------------------------", v133, 0x52u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v200, -1, -1);
    MEMORY[0x22AAB28A0](v133, -1, -1);

    (*(v194 + 8))(v198, v196);
  }

  else
  {
    v177 = *(v0 + 456);
    logc = *(v0 + 448);
    v210 = *(v0 + 464);
    v201 = *(v0 + 400);
    v204 = *(v0 + 408);
    v179 = *(v0 + 384);
    v178 = *(v0 + 392);
    v180 = *(v0 + 368);
    v181 = *(v0 + 376);
    v182 = *(v0 + 352);
    v183 = *(v0 + 360);

    sub_2280D3D04(v182, type metadata accessor for PriorityModelSession.Input);
    sub_2280D3D04(v183, type metadata accessor for PriorityModelSession.Input);
    sub_2280D3D04(v180, type metadata accessor for PriorityModelSession.Input);
    sub_2280D3D04(v181, type metadata accessor for PriorityModelSession.Input);
    sub_2280D3D04(v179, type metadata accessor for PriorityModelSession.Input);
    sub_2280D3D04(v178, type metadata accessor for PriorityModelSession.Input);
    sub_2280D3D04(v201, type metadata accessor for PriorityModelSession.Input);
    sub_2280D3D04(v204, type metadata accessor for PriorityModelSession.Input);
    (*(v177 + 8))(v210, logc);
  }

LABEL_23:
  if (qword_2813C4938 != -1)
  {
    swift_once();
  }

  v59 = *(v0 + 424);
  v60 = *(v0 + 344);
  v61 = *(v0 + 312);
  v62 = *(v0 + 320);
  v195 = *(v0 + 288);
  v197 = *(v0 + 568);
  v63 = *(v0 + 272);
  v64 = *(v0 + 256);
  v187 = *(v0 + 304);
  v189 = *(v0 + 248);
  v191 = *(v0 + 296);
  v193 = *(v0 + 240);
  v66 = *(v0 + 128);
  v65 = *(v0 + 136);
  v199 = type metadata accessor for Signpost(0);
  v185 = __swift_project_value_buffer(v199, qword_2813C8900);
  sub_2280D399C(v65, v0 + 16);
  sub_2280D4528(v66, v60, type metadata accessor for PriorityModelSession.Input);
  v67 = (*(v61 + 80) + 56) & ~*(v61 + 80);
  v68 = swift_allocObject();
  sub_227FFA05C((v0 + 16), v68 + 16);
  log = v67;
  sub_2280D3C84(v60, v68 + v67, type metadata accessor for PriorityModelSession.Input);
  v69 = swift_allocObject();
  *(v69 + 16) = sub_2280D3A00;
  *(v69 + 24) = v68;

  sub_2281324C8(v185, v69);
  PriorityModelSession.Input.flatten()();
  v70 = *(v187 + 24);
  sub_2281371DC();
  static DateUtils.parseDateFromMessage(message:referenceDate:referenceTimeZone:)(v59 + v70, v64, v191);

  (*(v189 + 8))(v64, v193);
  sub_2281324D8(v63, v185, v69);
  sub_2280D3D04(v63, type metadata accessor for SignpostToken);

  sub_2280D43C4(v191, v195, &qword_27D81EC50, &unk_228140BB0);
  v71 = sub_22813880C();
  v72 = sub_2281396BC();
  v73 = os_log_type_enabled(v71, v72);
  v74 = *(v0 + 288);
  if (v73)
  {
    v75 = *(v0 + 280);
    v76 = *(v0 + 216);
    v77 = *(v0 + 224);
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v211 = v79;
    *v78 = 136446210;
    sub_2280D43C4(v74, v75, &qword_27D81EC50, &unk_228140BB0);
    v80 = (*(v77 + 48))(v75, 1, v76);
    v81 = *(v0 + 280);
    if (v80 == 1)
    {
      sub_2280D44A8(*(v0 + 280), &qword_27D81EC50, &unk_228140BB0);
      v82 = 0xE300000000000000;
      v83 = 7104878;
    }

    else
    {
      v85 = *(v0 + 216);
      v86 = *(v0 + 224);
      v87 = *(v0 + 280);
      v83 = sub_228136F0C();
      v82 = v88;
      (*(v86 + 8))(v81, v85);
    }

    sub_2280D44A8(*(v0 + 288), &qword_27D81EC50, &unk_228140BB0);
    v89 = sub_227FCC340(v83, v82, &v211);

    *(v78 + 4) = v89;
    _os_log_impl(&dword_227FC3000, v71, v72, "eventDate: %{public}s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v79);
    MEMORY[0x22AAB28A0](v79, -1, -1);
    MEMORY[0x22AAB28A0](v78, -1, -1);
  }

  else
  {

    sub_2280D44A8(v74, &qword_27D81EC50, &unk_228140BB0);
  }

  v90 = *(v0 + 568);
  v91 = *(*(v0 + 152) + 64);
  sub_228103A8C(*(v0 + 424), *(v0 + 296), &v211);
  v92 = sub_2281040F0(&v211);
  v94 = v93;
  *(v0 + 648) = v93;
  v95 = sub_22813880C();
  v96 = sub_2281396BC();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v211 = v98;
    *v97 = 136446210;
    *(v97 + 4) = sub_227FCC340(v92, v94, &v211);
    _os_log_impl(&dword_227FC3000, v95, v96, "eventTimeBucket: %{public}s", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v98);
    MEMORY[0x22AAB28A0](v98, -1, -1);
    MEMORY[0x22AAB28A0](v97, -1, -1);
  }

  v99 = *(v0 + 232);
  sub_228136F6C();
  if (qword_2813C4930 != -1)
  {
    swift_once();
  }

  v100 = *(v0 + 336);
  v101 = *(v0 + 264);
  v103 = *(v0 + 128);
  v102 = *(v0 + 136);
  v104 = __swift_project_value_buffer(v199, qword_2813C88E8);
  *(v0 + 656) = v104;
  sub_2280D399C(v102, v0 + 56);
  sub_2280D4528(v103, v100, type metadata accessor for PriorityModelSession.Input);
  v105 = swift_allocObject();
  *(v0 + 664) = v105;
  sub_227FFA05C((v0 + 56), v105 + 16);
  sub_2280D3C84(v100, log + v105, type metadata accessor for PriorityModelSession.Input);
  v106 = swift_allocObject();
  *(v0 + 672) = v106;
  *(v106 + 16) = sub_2280D47E8;
  *(v106 + 24) = v105;

  sub_2281324C4(v104, v106);
  if (qword_2813C8758 != -1)
  {
    swift_once();
  }

  v107 = *(v0 + 424);
  v108 = *(v0 + 152);
  v109 = *(v0 + 136);
  v110 = swift_task_alloc();
  *(v0 + 680) = v110;
  v110[2] = v108;
  v110[3] = v107;
  v110[4] = v109;
  v110[5] = v92;
  v110[6] = v94;
  v111 = *(MEMORY[0x277D85A70] + 4);
  v112 = swift_task_alloc();
  *(v0 + 688) = v112;
  *v112 = v0;
  v112[1] = sub_2280D0688;
  v113 = *(v0 + 528);
  v115 = *(v0 + 192);
  v114 = *(v0 + 200);
  v215 = 192;
  v216 = v115;

  return MEMORY[0x282200908](v114, v113, &unk_22813FFD0, v110, 0, 0, 0xD00000000000002BLL, 0x8000000228144280);
}

uint64_t sub_2280D0434()
{
  v1 = v0[75];
  v2 = v0[72];
  v3 = v0[66];
  v4 = v0[62];
  v5 = v0[63];
  v6 = v0[53];

  sub_2280D3D04(v6, type metadata accessor for PriorityModelSession.Input);
  v2(v3, v4);
  v42 = v0[79];
  v7 = v0[66];
  v8 = v0[65];
  v9 = v0[64];
  v11 = v0[60];
  v10 = v0[61];
  v13 = v0[58];
  v12 = v0[59];
  v15 = v0[54];
  v14 = v0[55];
  v16 = v0[53];
  v19 = v0[52];
  v20 = v0[51];
  v21 = v0[50];
  v22 = v0[49];
  v23 = v0[48];
  v24 = v0[47];
  v25 = v0[46];
  v26 = v0[45];
  v27 = v0[44];
  v28 = v0[43];
  v29 = v0[42];
  v30 = v0[41];
  v31 = v0[37];
  v32 = v0[36];
  v33 = v0[35];
  v34 = v0[34];
  v35 = v0[33];
  v36 = v0[32];
  v37 = v0[29];
  v38 = v0[26];
  v39 = v0[25];
  v40 = v0[23];
  v41 = v0[20];

  v17 = v0[1];

  return v17();
}

uint64_t sub_2280D0688()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v7 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v4 = sub_2280D0F84;
  }

  else
  {
    v5 = *(v2 + 680);

    v4 = sub_2280D07A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2280D07A4()
{
  v86 = v0;
  v1 = v0[83];
  v2 = v0[81];
  v3 = v0[75];
  v80 = v0[53];
  v82 = v0[71];
  v78 = v0[41];
  v4 = v0[33];
  v5 = v0[29];
  v6 = v0[25];
  v7 = v0[26];
  v8 = v0[24];
  sub_2281324D4(v4, v0[82], v0[84]);
  sub_2280D3D04(v4, type metadata accessor for SignpostToken);

  v9 = *v6;
  sub_2280D3C84(&v6[*(v8 + 48)], v7, type metadata accessor for GMSModelInfo);
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v3 + 16));
  v85 = MEMORY[0x277D839B0];
  LOBYTE(v84[0]) = 1;

  sub_2280449FC(v84, KeyPath, (v3 + 24));
  os_unfair_lock_unlock((v3 + 16));

  v11 = swift_getKeyPath();
  os_unfair_lock_lock((v3 + 16));
  v12 = MEMORY[0x277D84A28];
  v85 = MEMORY[0x277D84A28];
  v84[0] = v9;

  sub_2280449E4(v84, v11, (v3 + 24));
  os_unfair_lock_unlock((v3 + 16));

  sub_228136F4C();
  v14 = v13 * -1000.0;
  v15 = swift_getKeyPath();
  os_unfair_lock_lock((v3 + 16));
  v85 = MEMORY[0x277D839F8];
  *v84 = v14;

  sub_228044BA4(v84, v15, (v3 + 24));
  os_unfair_lock_unlock((v3 + 16));

  if (v9)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.0;
  }

  sub_2280D4528(v80, v78, type metadata accessor for PriorityModelSession.Input);
  v17 = sub_22813880C();
  v18 = sub_2281396BC();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[41];
  if (v19)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v84[0] = v22;
    *v21 = 134218242;
    *(v21 + 4) = v16;
    *(v21 + 12) = 2082;
    v23 = *v20;
    v24 = v20[1];

    sub_2280D3D04(v20, type metadata accessor for PriorityModelSession.Input);
    v25 = sub_227FCC340(v23, v24, v84);

    *(v21 + 14) = v25;
    _os_log_impl(&dword_227FC3000, v17, v18, "End urgency classification task (urgency: %f, privacy: .public) for ID %{public}s", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm_11(v22);
    MEMORY[0x22AAB28A0](v22, -1, -1);
    MEMORY[0x22AAB28A0](v21, -1, -1);
  }

  else
  {

    sub_2280D3D04(v20, type metadata accessor for PriorityModelSession.Input);
  }

  v26 = v0[87];
  v27 = v0[75];
  v28 = v0[66];
  v29 = v0[54];
  v30 = swift_getKeyPath();
  os_unfair_lock_lock((v27 + 16));
  v85 = v12;
  v84[0] = v16;

  sub_2280449E4(v84, v30, (v27 + 24));
  os_unfair_lock_unlock((v27 + 16));

  sub_22813715C();
  v31 = sub_22813713C();
  (*(*(v31 - 8) + 56))(v29, 0, 1, v31);
  v32 = swift_getKeyPath();
  os_unfair_lock_lock((v27 + 16));
  v33 = sub_2280D2D48((v27 + 24), v32);
  v35 = v0[75];
  if (v26)
  {

    os_unfair_lock_unlock(v35 + 4);
  }

  else
  {
    v36 = v33;
    v37 = v34;
    v55 = v0[66];
    v56 = v0[65];
    v53 = v0[63];
    v54 = v0[62];
    v57 = v0[64];
    v58 = v0[61];
    v59 = v0[60];
    v60 = v0[59];
    v61 = v0[58];
    v62 = v0[55];
    v45 = v0[54];
    v52 = v0[53];
    v63 = v0[52];
    v64 = v0[51];
    v65 = v0[50];
    v66 = v0[49];
    v67 = v0[48];
    v68 = v0[47];
    v69 = v0[46];
    v70 = v0[45];
    v71 = v0[44];
    v72 = v0[43];
    v73 = v0[42];
    v74 = v0[41];
    v51 = v0[37];
    v75 = v0[36];
    v76 = v0[35];
    v77 = v0[34];
    v79 = v0[33];
    v81 = v0[32];
    v48 = v0[28];
    v38 = v0[26];
    v49 = v0[27];
    v50 = v0[29];
    v83 = v0[25];
    v40 = v0[22];
    v39 = v0[23];
    v41 = v0[21];
    v46 = v0[20];
    v47 = v0[15];
    os_unfair_lock_unlock(v35 + 4);

    if (v37)
    {
      v42 = 0;
    }

    else
    {
      v42 = v36;
    }

    v43 = swift_task_alloc();
    *(v43 + 16) = v38;
    *(v43 + 24) = v45;
    *(v43 + 32) = v42;
    *(v43 + 40) = v37 & 1;
    *(v43 + 48) = 0;
    *(v43 + 56) = 1;
    sub_228138DCC();

    sub_2280D44A8(v45, &qword_27D81E778, &qword_22813BC80);
    (*(v40 + 16))(v46, v39, v41);
    (*(v40 + 56))(v46, 0, 1, v41);
    sub_228138ABC();

    (*(v40 + 8))(v39, v41);
    (*(v48 + 8))(v50, v49);
    sub_2280D44A8(v51, &qword_27D81EC50, &unk_228140BB0);
    sub_2280D3D04(v38, type metadata accessor for GMSModelInfo);
    sub_2280D3D04(v52, type metadata accessor for PriorityModelSession.Input);
    (*(v53 + 8))(v55, v54);

    v44 = v0[1];

    v44();
  }
}

uint64_t sub_2280D0F84()
{
  v1 = v0[87];
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[83];
  v5 = v0[82];
  v40 = v0[81];
  v6 = v0[63];
  v52 = v0[62];
  v54 = v0[66];
  v50 = v0[53];
  v46 = v0[75];
  v48 = v0[37];
  v7 = v0[33];
  v8 = v0[28];
  v44 = v0[29];
  v42 = v0[27];

  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = sub_2280D47E8;
  v9[4] = v4;
  swift_beginAccess();
  v10 = *(v3 + 24);
  *(v3 + 16) = sub_2280D3C78;
  *(v3 + 24) = v9;

  v11 = v1;

  swift_willThrow();
  sub_2281324D4(v7, v5, v3);
  sub_2280D3D04(v7, type metadata accessor for SignpostToken);

  (*(v8 + 8))(v44, v42);
  sub_2280D44A8(v48, &qword_27D81EC50, &unk_228140BB0);
  sub_2280D3D04(v50, type metadata accessor for PriorityModelSession.Input);
  (*(v6 + 8))(v54, v52);
  v55 = v0[87];
  v12 = v0[66];
  v13 = v0[65];
  v14 = v0[64];
  v16 = v0[60];
  v15 = v0[61];
  v18 = v0[58];
  v17 = v0[59];
  v20 = v0[54];
  v19 = v0[55];
  v21 = v0[53];
  v24 = v0[52];
  v25 = v0[51];
  v26 = v0[50];
  v27 = v0[49];
  v28 = v0[48];
  v29 = v0[47];
  v30 = v0[46];
  v31 = v0[45];
  v32 = v0[44];
  v33 = v0[43];
  v34 = v0[42];
  v35 = v0[41];
  v36 = v0[37];
  v37 = v0[36];
  v38 = v0[35];
  v39 = v0[34];
  v41 = v0[33];
  v43 = v0[32];
  v45 = v0[29];
  v47 = v0[26];
  v49 = v0[25];
  v51 = v0[23];
  v53 = v0[20];

  v22 = v0[1];

  return v22();
}

BOOL sub_2280D1304()
{
  v0 = PriorityModelSession.Input.flatten()();
  v1 = 0xE000000000000000;
  v23 = 0;
  v24 = 0xE000000000000000;
  v2 = (v0._object >> 56) & 0xF;
  if ((v0._object & 0x2000000000000000) == 0)
  {
    v2 = v0._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v20 = v0;
  v21 = 0;
  v22 = v2;
  v3 = sub_2281393DC();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    do
    {
      if ((sub_2281036C8(v5, v6) & 1) == 0)
      {
        MEMORY[0x22AAB1960](v5, v6);
      }

      v5 = sub_2281393DC();
      v6 = v7;
    }

    while (v7);
    v8 = v23;
    v1 = v24;
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v10 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v10 = &qword_2813C76F8;
  }

  v12 = *(*v10 + 352);
  countAndFlagsBits = *(*v10 + 360);
  v14 = *(*v10 + 368);
  v13 = *(*v10 + 376);
  v15 = *(*v10 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v14(&v20, v15);

    countAndFlagsBits = v20._countAndFlagsBits;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22813A4B0;
  *(inited + 32) = v8;
  v17 = inited + 32;
  *(inited + 40) = v1;
  v18 = sub_2280AB048(countAndFlagsBits, inited, 0);
  swift_setDeallocating();
  sub_227FE5D7C(v17);
  return v18;
}

uint64_t sub_2280D15DC(void *a1, uint64_t a2)
{
  BYTE8(v8) = 0;
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000014, 0x80000002281441C0);
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  MEMORY[0x22AAB1970](v6);

  MEMORY[0x22AAB1970](0x6E65746E6F63202CLL, 0xEF203A6570795474);
  *&v8 = *(a2 + 16);
  sub_2281398EC();
  MEMORY[0x22AAB1970](0xD000000000000015, 0x8000000228146590);
  return *(&v8 + 1);
}

uint64_t sub_2280D1714@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v6 = sub_228136CDC();
  v71 = *(v6 - 8);
  v7 = *(v71 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PriorityModelSession.Input();
  result = sub_2280A7954(*(a1 + v11[10]), *(a1 + v11[10] + 8), a2, 0);
  if (!v3)
  {
    v14 = v11[7];
    v15 = (a1 + v11[8]);
    v16 = *v15;
    v17 = v15[1];
    v18 = (a1 + v11[9]);
    v19 = v18[1];
    v64 = *v18;
    v65 = v16;
    v21 = *(a1 + v14);
    v20 = *(a1 + v14 + 8);
    v22 = *(a1 + 16);
    v62 = result;
    v66 = v13;
    if (((1 << v22) & 9) != 0)
    {
      v63 = v17;
      v24 = v20;

      v25 = sub_2280A7954(v21, v24, a2, 0);
      v60 = 0;
      v61 = v25;
      v59 = v22;
      v67 = v6;
      v57 = v19;
      v29 = v26;
    }

    else
    {
      v61 = v21;
      if (((1 << v22) & 0x12) != 0)
      {
        v23 = v20;

        v65 = sub_2280A7954(v65, v17, a2, 0);
        v63 = v27;
        v64 = sub_2280A7954(v64, v19, a2, 0);
        v59 = v22;
        v67 = v6;
        v60 = 0;
        v57 = v28;
        v29 = v23;
      }

      else
      {
        v59 = v22;
        v67 = v6;
        v60 = 0;
        v29 = v20;

        v57 = v19;

        v63 = v17;
      }
    }

    v30 = a1[1];
    v58 = *a1;
    v56 = v30;
    v31 = v11[6];
    v32 = sub_228136F8C();
    v33 = v68;
    (*(*(v32 - 8) + 16))(v68 + v31, a1 + v31, v32);
    v69 = v61;
    v70 = v29;

    sub_228136C8C();
    v34 = sub_227FDB420();
    v61 = sub_2281397AC();
    v55 = v35;
    v36 = *(v71 + 8);
    v36(v10, v67);
    v54[0] = v36;

    v69 = v65;
    v70 = v63;
    sub_228136C8C();
    v54[1] = v34;
    v71 = sub_2281397AC();
    v65 = v37;
    v36(v10, v67);

    v69 = v64;
    v70 = v57;
    sub_228136C8C();
    v38 = sub_2281397AC();
    v63 = v39;
    v64 = v38;
    v40 = v67;
    v41 = v54[0];
    (v54[0])(v10, v67);

    v69 = v62;
    v70 = v66;
    sub_228136C8C();
    v42 = sub_2281397AC();
    v62 = v43;
    v41(v10, v40);

    v44 = (a1 + v11[11]);
    v46 = *v44;
    v45 = v44[1];
    LOBYTE(v44) = *(a1 + v11[12]);
    v47 = v56;
    *v33 = v58;
    *(v33 + 8) = v47;
    *(v33 + 16) = v59;
    v48 = (v33 + v11[7]);
    *v48 = v61;
    v48[1] = v55;
    v49 = (v33 + v11[8]);
    *v49 = v71;
    v49[1] = v65;
    v50 = (v33 + v11[9]);
    *v50 = v64;
    v50[1] = v63;
    v51 = (v33 + v11[10]);
    v52 = v62;
    *v51 = v42;
    v51[1] = v52;
    v53 = (v33 + v11[11]);
    *v53 = v46;
    v53[1] = v45;
    *(v33 + v11[12]) = v44;
  }

  return result;
}

Swift::String __swiftcall PriorityModelSession.Input.flatten()()
{
  v1 = type metadata accessor for PriorityModelSession.Input();
  v2 = (v0 + v1[8]);
  v4 = *v2;
  v3 = v2[1];
  v28 = v4;
  v29[0] = v3;
  v5 = (v0 + v1[9]);
  v6 = v5[1];
  v29[1] = *v5;
  v29[2] = v6;
  v7 = (v0 + v1[7]);
  v8 = v7[1];
  v29[3] = *v7;
  v29[4] = v8;
  v9 = (v0 + v1[10]);
  v10 = v9[1];
  v29[5] = *v9;
  v29[6] = v10;

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
LABEL_2:
  if (v13 <= 4)
  {
    v15 = 4;
  }

  else
  {
    v15 = v13;
  }

  v16 = v15 + 1;
  v17 = &v29[2 * v13];
  while (1)
  {
    if (v13 == 4)
    {
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
      sub_2280D3E0C(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80);
      v24 = sub_22813925C();
      v26 = v25;

      isUniquelyReferenced_nonNull_native = v24;
      v12 = v26;
      goto LABEL_18;
    }

    if (v16 == ++v13)
    {
      break;
    }

    v19 = *(v17 - 1);
    v18 = *v17;
    v17 += 2;
    v20 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v20 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_228043AD4(0, *(v14 + 16) + 1, 1);
      }

      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_228043AD4((v21 > 1), v22 + 1, 1);
      }

      *(v14 + 16) = v22 + 1;
      v23 = v14 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v18;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_18:
  result._object = v12;
  result._countAndFlagsBits = isUniquelyReferenced_nonNull_native;
  return result;
}

uint64_t sub_2280D1DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  return MEMORY[0x2822009F8](sub_2280D1DEC, 0, 0);
}

uint64_t sub_2280D1DEC()
{
  v1 = v0[13];
  v2 = v0[10];
  v0[14] = *(v0[9] + 56);
  v3 = 1 << *(v2 + 16);
  if ((v3 & 9) != 0)
  {
    v4 = sub_2281359AC(v2, v0[12], v1);
    goto LABEL_5;
  }

  if ((v3 & 0x12) != 0)
  {
    v4 = sub_228135B1C(v2, v0[12], v1);
LABEL_5:
    v6 = v4;
    v7 = v5;
    goto LABEL_7;
  }

  MEMORY[0x22AAB1970](v0[12], v1);
  MEMORY[0x22AAB1970](10, 0xE100000000000000);
  MEMORY[0x22AAB1970](0x6D6954746E657645, 0xEB00000000203A65);

  v8 = type metadata accessor for PriorityModelSession.Input();
  MEMORY[0x22AAB1970](*(v2 + *(v8 + 40)), *(v2 + *(v8 + 40) + 8));
  MEMORY[0x22AAB1970](0x203A79646F42, 0xE600000000000000);

  v6 = 0xD000000000000023;
  v7 = 0x8000000228147F70;
LABEL_7:
  v0[15] = v7;
  v9 = swift_task_alloc();
  v0[16] = v9;
  *v9 = v0;
  v9[1] = sub_2280D1FBC;
  v10 = v0[11];

  return sub_22812DFF4(v6, v7, v10);
}

uint64_t sub_2280D1FBC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 128);
  v8 = *(*v3 + 120);
  v9 = *v3;

  if (v2)
  {
    v10 = *(v9 + 8);

    return v10();
  }

  else
  {
    *(v6 + 136) = a2;
    *(v6 + 144) = a1;

    return MEMORY[0x2822009F8](sub_2280D2134, 0, 0);
  }
}

uint64_t sub_2280D2134()
{
  v0[2] = v0[18];
  v1 = v0[14];
  v2 = v0[10];
  v0[3] = v0[17];
  v0[4] = 10;
  v0[5] = 0xE100000000000000;
  v0[6] = 4091452;
  v0[7] = 0xE300000000000000;
  sub_227FDB420();
  v3 = sub_2281397BC();
  v5 = v4;

  v0[19] = v5;
  v6 = *(v1 + 16);
  v7 = *v2;
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v11 = 0xD000000000000011;
      v13 = "mailMessageThread";
    }

    else
    {
      if (v9 == 4)
      {
        v10 = 0x80000002281438E0;
        v11 = 0xD000000000000012;
        goto LABEL_14;
      }

      v11 = 0xD000000000000011;
      v13 = "textMessageThread";
    }

    v10 = (v13 - 32) | 0x8000000000000000;
  }

  else
  {
    v10 = 0xEB00000000656761;
    if (v9)
    {
      if (v9 == 1)
      {
        v10 = 0xEC0000006E6F6974;
        v11 = 0x6163696669746F6ELL;
        goto LABEL_14;
      }

      v12 = 1954047348;
    }

    else
    {
      v12 = 1818845549;
    }

    v11 = v12 | 0x7373654D00000000;
  }

LABEL_14:
  v0[20] = v10;
  v14 = v0[8];
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF88, &qword_22813FF40) + 48);
  v16 = swift_task_alloc();
  v0[21] = v16;
  *v16 = v0;
  v16[1] = sub_2280D237C;
  v17 = v0[11];

  return sub_2280A39A4(v14 + v15, v3, v5, v7, v8, v17, v11, v10);
}

uint64_t sub_2280D237C(char a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 168);
  v7 = *v2;

  v8 = *(v4 + 160);
  v9 = *(v4 + 152);
  if (v1)
  {

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {

    *(v5 + 176) = a1 & 1;

    return MEMORY[0x2822009F8](sub_2280D251C, 0, 0);
  }
}

uint64_t PriorityModelSession.Input.init(id:type:dateTime:subject:title:subtitle:body:bundleID:isCommunication:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v20 = *a3;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v20;
  v21 = type metadata accessor for PriorityModelSession.Input();
  v22 = v21[6];
  v23 = sub_228136F8C();
  result = (*(*(v23 - 8) + 32))(a9 + v22, a4, v23);
  v25 = (a9 + v21[7]);
  *v25 = a5;
  v25[1] = a6;
  v26 = (a9 + v21[8]);
  *v26 = a7;
  v26[1] = a8;
  v27 = (a9 + v21[9]);
  *v27 = a10;
  v27[1] = a11;
  v28 = (a9 + v21[10]);
  *v28 = a12;
  v28[1] = a13;
  v29 = (a9 + v21[11]);
  *v29 = a14;
  v29[1] = a15;
  *(a9 + v21[12]) = a16;
  return result;
}

uint64_t *PriorityModelSession.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm_11(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return v0;
}

SummarizationKit::PriorityModelSession::InputType_optional __swiftcall PriorityModelSession.InputType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22813995C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PriorityModelSession.InputType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7373654D6C69616DLL;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000011;
  if (v1 == 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6163696669746F6ELL;
  if (v1 != 1)
  {
    v5 = 0x7373654D74786574;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2280D27E4()
{
  *v0;
  *v0;
  *v0;
  sub_22813923C();
}

void sub_2280D28F8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x7373654D6C69616DLL;
  v4 = 0xD000000000000011;
  v5 = 0x80000002281438C0;
  v6 = 0x80000002281438E0;
  v7 = 0xD000000000000011;
  if (v2 == 4)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v6 = 0x8000000228143900;
  }

  if (v2 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xEC0000006E6F6974;
  v9 = 0x6163696669746F6ELL;
  if (v2 != 1)
  {
    v9 = 0x7373654D74786574;
    v8 = 0xEB00000000656761;
  }

  if (*v1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0xEB00000000656761;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  *a1 = v10;
  a1[1] = v11;
}

uint64_t sub_2280D29D8@<X0>(uint64_t a1@<X8>)
{
  if (qword_2813C7030 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ModelBundleIdentifier();
  v3 = __swift_project_value_buffer(v2, qword_2813C8AF0);
  return sub_2280D4528(v3, a1, type metadata accessor for ModelBundleIdentifier);
}

uint64_t sub_2280D2AC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D2D48((v3 + 24), KeyPath);
  v7 = v6;
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  *(a2 + 8) = v7 & 1;
  return result;
}

uint64_t sub_2280D2B94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D2E20((v3 + 24), KeyPath);
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  return result;
}

uint64_t sub_2280D2D48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(*a1 + 16) && (v3 = *a2, v4 = sub_2280D3358(a2, v2), (v5 & 1) != 0))
  {
    sub_227FEB0D4(*(v2 + 56) + 32 * v4, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
  v6 = swift_dynamicCast();
  v7 = v10;
  if (!v6)
  {
    return 0;
  }

  return v7;
}

uint64_t sub_2280D2E20(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(*a1 + 16) && (v3 = *a2, v4 = sub_2280D3358(a2, v2), (v5 & 1) != 0))
  {
    sub_227FEB0D4(*(v2 + 56) + 32 * v4, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_2280D2EEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = *a2, v6 = sub_2280D3358(a2, v4), (v7 & 1) != 0))
  {
    sub_227FEB0D4(*(v4 + 56) + 32 * v6, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
  v8 = sub_228136F8C();
  v9 = swift_dynamicCast();
  return (*(*(v8 - 8) + 56))(a3, v9 ^ 1u, 1, v8);
}

uint64_t sub_2280D2FF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(*a1 + 16) && (v3 = *a2, v4 = sub_2280D3358(a2, v2), (v5 & 1) != 0))
  {
    sub_227FEB0D4(*(v2 + 56) + 32 * v4, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4E0, &qword_22813AC40);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2280D30D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(*a1 + 16) && (v3 = *a2, v4 = sub_2280D3358(a2, v2), (v5 & 1) != 0))
  {
    sub_227FEB0D4(*(v2 + 56) + 32 * v4, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
  type metadata accessor for NLLanguage(0);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2280D31A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(*a1 + 16) && (v3 = *a2, v4 = sub_2280D3358(a2, v2), (v5 & 1) != 0))
  {
    sub_227FEB0D4(*(v2 + 56) + 32 * v4, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
  v6 = swift_dynamicCast();
  v7 = v10;
  if (!v6)
  {
    v7 = 0;
  }

  return v7 | ((v6 ^ 1u) << 32);
}

uint64_t sub_2280D327C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = *a2, v6 = sub_2280D3358(a2, v4), (v7 & 1) != 0))
  {
    sub_227FEB0D4(*(v4 + 56) + 32 * v6, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  *(a3 + 9) = result ^ 1;
  return result;
}

unint64_t sub_2280D3358(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
  v5 = sub_2281391DC();
  return sub_2280D33E4(a1, v5, a2);
}

unint64_t sub_2280D33E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 + 64;
  v4 = -1 << *(a3 + 32);
  v5 = a2 & ~v4;
  if ((*(a3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E548, &qword_22813C000);
      v9 = *(*(a3 + 48) + 8 * v5);
      if (sub_22813926C())
      {
        break;
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2280D34CC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v23 = a2;
  v21 = 0;
  v22 = 0xE000000000000000;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v9 = 0;
    v18 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = a4 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v12 = sub_22813987C();
        v14 = v13;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v20[0] = a3;
          v20[1] = v19;
          v11 = v20 + v9;
        }

        else
        {
          v10 = v18;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = sub_2281398AC();
          }

          v11 = (v10 + v9);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v16 = (__clz(v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
            v14 = 3;
          }

          else
          {
            v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
            v14 = 4;
          }

          goto LABEL_16;
        }

        if (v16 == 1)
        {
LABEL_15:
          v14 = 1;
        }

        else
        {
          v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
          v14 = 2;
        }
      }

LABEL_16:
      LODWORD(v20[0]) = v12;
      v15 = a1(v20);
      if (v4)
      {
      }

      if (v15)
      {
        sub_22813934C();
      }

      v9 += v14;
      if (v9 >= v5)
      {
        return v21;
      }
    }
  }

  return 0;
}

uint64_t sub_2280D369C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2280D4830;

  return sub_2280CD3D4(a1, v4, v5, v7, v6);
}

uint64_t sub_2280D377C()
{
  v1 = *(v0 + 16);
  PriorityModelSession.Input.flatten()();

  do
  {
    sub_2281393DC();
    if (!v2)
    {

      v11 = sub_2280D4820;
      v12 = 13;
      v13 = 233;
      goto LABEL_13;
    }

    v3 = sub_22813922C();
  }

  while ((v3 & 1) != 0);

  v4 = sub_2281393DC();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      if (sub_22813922C())
      {
      }

      else
      {
        v9 = sub_2281036C8(v6, v7);

        if ((v9 & 1) == 0)
        {

          v10 = *(v0 + 8);
          goto LABEL_14;
        }
      }

      v6 = sub_2281393DC();
      v7 = v8;
    }

    while (v8);
  }

  v11 = sub_2280D4824;
  v12 = 14;
  v13 = 236;
LABEL_13:
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  v15 = sub_227FF9AA4(0, 0xD000000000000079, 0x80000002281442B0, v13, v11);
  sub_227FE7384();
  swift_allocError();
  *v16 = v12;
  *(v16 + 8) = v15;
  swift_willThrow();
  v10 = *(v0 + 8);
LABEL_14:

  return v10();
}

uint64_t sub_2280D399C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_27Tm()
{
  v1 = (type metadata accessor for PriorityModelSession.Input() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm_11((v0 + 16));
  v5 = *(v0 + v3 + 8);

  v6 = v1[8];
  v7 = sub_228136F8C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[9] + 8);

  v9 = *(v0 + v3 + v1[10] + 8);

  v10 = *(v0 + v3 + v1[11] + 8);

  v11 = *(v0 + v3 + v1[12] + 8);

  v12 = *(v0 + v3 + v1[13] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2280D3B4C()
{
  v1 = *(type metadata accessor for PriorityModelSession.Input() - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_2280D15DC((v0 + 16), v2);
}

uint64_t sub_2280D3BB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2280D482C;

  return sub_2280D1DC4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2280D3C84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2280D3D04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2280D3D74()
{
  result = qword_27D81EF98;
  if (!qword_27D81EF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81EF98);
  }

  return result;
}

uint64_t sub_2280D3E0C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t dispatch thunk of PriorityModelSession.__allocating_init(sessionInfo:)(uint64_t a1)
{
  v4 = *(v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2280D3FA0;

  return v8(a1);
}

uint64_t sub_2280D3FA0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t getEnumTagSinglePayload for PriorityModelSession.InputType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PriorityModelSession.InputType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2280D4228()
{
  result = sub_228136F8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PriorityModelSession.Configuration(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PriorityModelSession.Configuration(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_2280D43C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2280D4438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E778, &qword_22813BC80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2280D44A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2280D4528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2280D4590(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2280D45D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2280D4698;

  return sub_2280CD3D4(a1, v4, v5, v7, v6);
}

uint64_t sub_2280D4698()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroyTm_13()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t NSProcessInfo.isDebuggerAttached.getter()
{
  v6 = *MEMORY[0x277D85DE8];
  bzero(v4, 0x288uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EFB8, &qword_2281402E0);
  v0 = swift_allocObject();
  *(v0 + 4) = 0xE00000001;
  v0[10] = 1;
  v0[11] = getpid();
  v3 = 648;
  sysctl(v0 + 8, 4u, v4, &v3, 0, 0);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v1 = *MEMORY[0x277D85DE8];
  return (v5 >> 11) & 1;
}

uint64_t sub_2280D4920()
{
  result = os_variant_has_internal_ui();
  byte_2813C4638 = result;
  return result;
}

uint64_t sub_2280D4948()
{
  sub_2280D4980();
  result = sub_2280D49CC();
  byte_2813C4629 = result & 1;
  return result;
}

unint64_t sub_2280D4980()
{
  result = qword_2813C4618;
  if (!qword_2813C4618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813C4618);
  }

  return result;
}

uint64_t sub_2280D49CC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_2281392AC();
  }

  v2 = sub_22813942C();

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = [swift_getObjCClassFromMetadata() processInfo];
    v5 = [v4 environment];

    v6 = sub_2281391BC();
    if (*(v6 + 16))
    {
      sub_22808C964(0xD00000000000001BLL, 0x8000000228147FA0);
      v3 = v7;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 & 1;
}

uint64_t sub_2280D4DD0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);

  return sub_2280D8404(v7, a2, a3, v5, v6);
}

uint64_t sub_2280D4EA8(unsigned __int8 a1)
{
  v3 = a1;
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v1 + 16));
  if (v3 == 2)
  {
    v5 = 0;
    memset(v7, 0, 24);
  }

  else
  {
    LOBYTE(v7[0]) = a1 & 1;
    v5 = MEMORY[0x277D839B0];
  }

  v7[3] = v5;

  sub_2280449FC(v7, KeyPath, (v1 + 24));
  os_unfair_lock_unlock((v1 + 16));
}

uint64_t sub_2280D4F74(uint64_t a1, char a2)
{
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v2 + 16));
  if (a2)
  {
    a1 = 0;
    v6 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  else
  {
    v6 = MEMORY[0x277D84A28];
  }

  v8[0] = a1;
  v8[3] = v6;

  sub_2280449E4(v8, KeyPath, (v2 + 24));
  os_unfair_lock_unlock((v2 + 16));
}

uint64_t sub_2280D5014@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v1 + 16));
  sub_2280D2EEC((v1 + 24), KeyPath, a1);
  os_unfair_lock_unlock((v1 + 16));
}

uint64_t sub_2280D52E8()
{
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v0 + 16));
  v2 = sub_2280D2E20((v0 + 24), KeyPath);
  os_unfair_lock_unlock((v0 + 16));

  return v2;
}

uint64_t sub_2280D536C(uint64_t a1, uint64_t (*a2)(os_unfair_lock_s *, uint64_t))
{
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock(v2 + 4);
  v5 = a2(v2 + 6, KeyPath);
  os_unfair_lock_unlock(v2 + 4);

  return v5;
}

uint64_t sub_2280D53F8()
{
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v0 + 16));
  v2 = sub_2280D31A4((v0 + 24), KeyPath);
  os_unfair_lock_unlock((v0 + 16));

  return v2 | ((HIDWORD(v2) & 1) << 32);
}

uint64_t sub_2280D547C(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v1 + 16));
  if ((a1 & 0x100000000) != 0)
  {
    v4 = 0;
    memset(v6, 0, 24);
  }

  else
  {
    LODWORD(v6[0]) = a1;
    v4 = MEMORY[0x277D83A90];
  }

  v6[3] = v4;

  sub_228044C9C(v6, KeyPath, (v1 + 24));
  os_unfair_lock_unlock((v1 + 16));
}

uint64_t sub_2280D553C@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v1 + 16));
  sub_2280D327C((v1 + 24), KeyPath, a1);
  os_unfair_lock_unlock((v1 + 16));
}

uint64_t sub_2280D55AC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v1 + 16));
  if (v4)
  {
    v2 = 0;
    v6 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    LOBYTE(v9) = v3 & 1;
    v6 = &type metadata for Com_Apple_Summarizationkit_Proto_ConfidenceBucket;
  }

  v8 = v2;
  v11 = v6;

  sub_228044CC8(&v8, KeyPath, (v1 + 24));
  os_unfair_lock_unlock((v1 + 16));
}

uint64_t sub_2280D56A4(uint64_t a1, char a2)
{
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v2 + 16));
  if (a2)
  {
    a1 = 0;
    v6 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  else
  {
    v6 = MEMORY[0x277D839F8];
  }

  v8[0] = a1;
  v8[3] = v6;

  sub_228044BA4(v8, KeyPath, (v2 + 24));
  os_unfair_lock_unlock((v2 + 16));
}

uint64_t sub_2280D5764(uint64_t a1, uint64_t (*a2)(os_unfair_lock_s *, uint64_t))
{
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock(v2 + 4);
  v5 = a2(v2 + 6, KeyPath);
  os_unfair_lock_unlock(v2 + 4);

  return v5;
}

uint64_t sub_2280D5AB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D2E20((v3 + 24), KeyPath);
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  return result;
}

uint64_t sub_2280D5B78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EFC0, &qword_2281402F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TelemetrySignalCollector.__deallocating_deinit()
{
  sub_2280D5B78(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2280D5C74()
{
  v1 = sub_227FE4D64(MEMORY[0x277D84F90]);
  *(v0 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

void sub_2280D5CA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F050, &qword_228140508);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v41 = (&v40 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F058, &qword_228140510);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = (&v40 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F060, &unk_228140518);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v40 - v19;
  v21 = sub_22813821C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v42 = a2;
  sub_22813858C();
  sub_22813822C();
  sub_22813827C();
  v24 = *MEMORY[0x277D20AE8];
  v25 = sub_22813824C();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v20, v24, v25);
  (*(v26 + 56))(v20, 0, 1, v25);
  sub_22813825C();
  if (a3)
  {
    sub_22813845C();
    v27 = swift_allocBox();

    sub_22813858C();
    *v15 = v27;
    v28 = *MEMORY[0x277D20C28];
    v29 = sub_22813857C();
    v30 = *(v29 - 8);
    (*(v30 + 104))(v15, v28, v29);
    (*(v30 + 56))(v15, 0, 1, v29);
    sub_22813826C();
  }

  if (a4)
  {
    v44 = a4;
    v31 = a4;
    v32 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    if (swift_dynamicCast())
    {
      v33 = v43;
      sub_22813816C();
      v34 = swift_allocBox();
      sub_2280D6124(v33, v35);

      v36 = v41;
      *v41 = v34;
      v37 = *MEMORY[0x277D20A58];
      v38 = sub_2281381DC();
      v39 = *(v38 - 8);
      (*(v39 + 104))(v36, v37, v38);
      (*(v39 + 56))(v36, 0, 1, v38);
      sub_22813823C();
    }
  }
}

uint64_t sub_2280D6124@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1 > 0x1Bu)
  {
    if (a1 == 28)
    {
      sub_2281380EC();
      v13 = swift_allocBox();
      sub_22813858C();
      *a2 = v13;
      v4 = MEMORY[0x277D209F8];
      goto LABEL_16;
    }

    if (a1 == 29)
    {
      sub_22813814C();
      v16 = swift_allocBox();
      sub_22813858C();
      *a2 = v16;
      v4 = MEMORY[0x277D20A38];
      goto LABEL_16;
    }

    if (a1 != 30)
    {
LABEL_13:
      sub_2281380DC();
      v14 = swift_allocBox();
      sub_22813858C();
      *a2 = v14;
      v4 = MEMORY[0x277D209F0];
      goto LABEL_16;
    }

    sub_22813815C();
    v5 = swift_allocBox();
    MEMORY[0x28223BE20](v5, v6);
    sub_22813858C();
    *a2 = v5;
    v7 = MEMORY[0x277D20A50];
LABEL_11:
    v10 = *v7;
    v11 = sub_22813816C();
    return (*(*(v11 - 8) + 104))(a2, v10, v11);
  }

  if (a1 == 3)
  {
    sub_22813811C();
    v8 = swift_allocBox();
    MEMORY[0x28223BE20](v8, v9);
    sub_22813858C();
    *a2 = v8;
    v7 = MEMORY[0x277D20A08];
    goto LABEL_11;
  }

  if (a1 == 15)
  {
    sub_22813812C();
    v15 = swift_allocBox();
    sub_22813858C();
    *a2 = v15;
    v4 = MEMORY[0x277D20A18];
    goto LABEL_16;
  }

  if (a1 != 27)
  {
    goto LABEL_13;
  }

  sub_22813813C();
  v3 = swift_allocBox();
  sub_22813858C();
  *a2 = v3;
  v4 = MEMORY[0x277D20A28];
LABEL_16:
  v17 = *v4;
  v18 = sub_22813816C();
  v19 = *(*(v18 - 8) + 104);

  return v19(a2, v17, v18);
}

void sub_2280D64F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F050, &qword_228140508);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v41 = (&v40 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F058, &qword_228140510);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = (&v40 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F060, &unk_228140518);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v40 - v19;
  v21 = sub_22813821C();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21, v23);
  v42 = a2;
  sub_22813858C();
  sub_22813822C();
  sub_22813827C();
  v24 = *MEMORY[0x277D20AE8];
  v25 = sub_22813824C();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v20, v24, v25);
  (*(v26 + 56))(v20, 0, 1, v25);
  sub_22813825C();
  if (a3)
  {
    sub_22813856C();
    v27 = swift_allocBox();

    sub_22813858C();
    *v15 = v27;
    v28 = *MEMORY[0x277D20C60];
    v29 = sub_22813857C();
    v30 = *(v29 - 8);
    (*(v30 + 104))(v15, v28, v29);
    (*(v30 + 56))(v15, 0, 1, v29);
    sub_22813826C();
  }

  if (a4)
  {
    v44 = a4;
    v31 = a4;
    v32 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    if (swift_dynamicCast())
    {
      v33 = v43;
      sub_2281381CC();
      v34 = swift_allocBox();
      sub_2280D6974(v33, v35);

      v36 = v41;
      *v41 = v34;
      v37 = *MEMORY[0x277D20A98];
      v38 = sub_2281381DC();
      v39 = *(v38 - 8);
      (*(v39 + 104))(v36, v37, v38);
      (*(v39 + 56))(v36, 0, 1, v38);
      sub_22813823C();
    }
  }
}

uint64_t sub_2280D6974@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1 == 11)
  {
    sub_2281381AC();
    v7 = swift_allocBox();
    MEMORY[0x28223BE20](v7, v8);
    sub_22813858C();
    *a2 = v7;
    v6 = MEMORY[0x277D20A78];
    goto LABEL_6;
  }

  if (a1 == 8)
  {
    sub_2281381BC();
    v4 = swift_allocBox();
    MEMORY[0x28223BE20](v4, v5);
    sub_22813858C();
    *a2 = v4;
    v6 = MEMORY[0x277D20A90];
LABEL_6:
    v9 = *v6;
    v10 = sub_2281381CC();
    return (*(*(v10 - 8) + 104))(a2, v9, v10);
  }

  sub_22813817C();
  v3 = swift_allocBox();
  sub_22813858C();
  *a2 = v3;
  v12 = *MEMORY[0x277D20A68];
  v13 = sub_2281381CC();
  v14 = *(*(v13 - 8) + 104);

  return v14(a2, v12, v13);
}

uint64_t sub_2280D6C04(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(*(v3 + 8) + 8))(v4);
  sub_2281381EC();
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  (*(v6 + 16))(v5, v6);
  sub_2281381FC();
  v8 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  (*(*(v7 + 8) + 16))(v8);
  return sub_22813820C();
}

void sub_2280D6CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22813829C();
  v105 = *(v4 - 8);
  v5 = *(v105 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v107 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((a2 + 16));
  v9 = sub_2280D2FF8((a2 + 24), KeyPath);
  if (v2)
  {
    goto LABEL_25;
  }

  v10 = v9;
  v11 = 0;
  os_unfair_lock_unlock((a2 + 16));

  v12 = v10 ? v10 : MEMORY[0x277D84F90];
  v13 = *(v12 + 16);
  if (v13)
  {
    v94 = 0;
    v95 = a2;
    v103 = *MEMORY[0x277D20BF0];
    v101 = *(v105 + 104);
    v100 = *MEMORY[0x277D20BE8];
    v99 = *MEMORY[0x277D20C08];
    v98 = *MEMORY[0x277D20C00];
    v97 = *MEMORY[0x277D20BF8];
    v102 = v105 + 104;
    v96 = v105 + 32;
    v14 = 32;
    v104 = v12;
    do
    {
      v15 = *(v12 + v14);
      v16 = v103;
      if (v15 == 3)
      {
        v16 = v100;
      }

      if (v15 == 2)
      {
        v16 = v99;
      }

      v17 = v98;
      if (!*(v12 + v14))
      {
        v17 = v97;
      }

      if (*(v12 + v14) <= 1u)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      v19 = v4;
      v101(v107, v18, v4);
      v20 = sub_22813842C();
      v22 = v21;
      v23 = *v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v22 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_228134418(0, v23[2] + 1, 1, v23);
        *v22 = v23;
      }

      v26 = v23[2];
      v25 = v23[3];
      if (v26 >= v25 >> 1)
      {
        v23 = sub_228134418(v25 > 1, v26 + 1, 1, v23);
        *v22 = v23;
      }

      v23[2] = v26 + 1;
      v27 = v23 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v26;
      v4 = v19;
      (*(v105 + 32))(v27, v107, v19);
      v20(v106, 0);
      ++v14;
      --v13;
      v12 = v104;
    }

    while (v13);

    v11 = v94;
    a2 = v95;
  }

  else
  {
  }

  v28 = swift_getKeyPath();
  os_unfair_lock_lock((a2 + 16));
  v29 = sub_2280D2D08((a2 + 24), v28);
  if (v11)
  {
LABEL_25:
    os_unfair_lock_unlock((a2 + 16));
    __break(1u);
  }

  else
  {
    v31 = v29;
    v32 = v30;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0880](v31, v32 & 1);
    v33 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v34 = sub_2280D2D08((a2 + 24), v33);
    v36 = v35;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB08F0](v34, v36 & 1);
    v37 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v38 = sub_2280D2D08((a2 + 24), v37);
    v40 = v39;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB08C0](v38, v40 & 1);
    v41 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v42 = sub_2280D2D08((a2 + 24), v41);
    v44 = v43;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB09B0](v42, v44 & 1);
    v45 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2E20((a2 + 24), v45);
    os_unfair_lock_unlock((a2 + 16));

    sub_22813837C();
    v46 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2E20((a2 + 24), v46);
    os_unfair_lock_unlock((a2 + 16));

    sub_2281383FC();
    v47 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v48 = sub_2280D2D28((a2 + 24), v47);
    v50 = v49;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0960](v48, v50 & 1);
    v51 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v52 = sub_2280D2D28((a2 + 24), v51);
    v54 = v53;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0930](v52, v54 & 1);
    v55 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v56 = sub_2280D2D28((a2 + 24), v55);
    v58 = v57;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0970](v56, v58 & 1);
    v59 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v60 = sub_2280D2D28((a2 + 24), v59);
    v62 = v61;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB09C0](v60, v62 & 1);
    v63 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2D08((a2 + 24), v63);
    os_unfair_lock_unlock((a2 + 16));

    sub_22813844C();
    v64 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2D08((a2 + 24), v64);
    os_unfair_lock_unlock((a2 + 16));

    sub_2281382BC();
    v65 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2D08((a2 + 24), v65);
    os_unfair_lock_unlock((a2 + 16));

    sub_2281382EC();
    v66 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2E20((a2 + 24), v66);
    os_unfair_lock_unlock((a2 + 16));

    sub_2281383DC();
    v67 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2E20((a2 + 24), v67);
    os_unfair_lock_unlock((a2 + 16));

    sub_2281382CC();
    v68 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2E20((a2 + 24), v68);
    os_unfair_lock_unlock((a2 + 16));

    sub_22813836C();
    v69 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v70 = sub_2280D2D08((a2 + 24), v69);
    v72 = v71;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB08A0](v70, v72 & 1);
    v73 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v74 = sub_2280D2D08((a2 + 24), v73);
    v76 = v75;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0900](v74, v76 & 1);
    v77 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v78 = sub_2280D2D08((a2 + 24), v77);
    v80 = v79;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB08E0](v78, v80 & 1);
    v81 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v82 = sub_2280D2D08((a2 + 24), v81);
    v84 = v83;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0850](v82, v84 & 1);
    v85 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v86 = sub_2280D2D08((a2 + 24), v85);
    v88 = v87;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB08D0](v86, v88 & 1);
    v89 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2D08((a2 + 24), v89);
    os_unfair_lock_unlock((a2 + 16));

    sub_22813839C();
    v90 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2D08((a2 + 24), v90);
    os_unfair_lock_unlock((a2 + 16));

    sub_2281383AC();
    v91 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2E20((a2 + 24), v91);
    os_unfair_lock_unlock((a2 + 16));

    sub_22813830C();
    v92 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2E20((a2 + 24), v92);
    os_unfair_lock_unlock((a2 + 16));

    sub_2281383EC();
    v93 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2D08((a2 + 24), v93);
    os_unfair_lock_unlock((a2 + 16));

    sub_22813843C();
  }
}

uint64_t sub_2280D7828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_228017770(0xD00000000000001ELL, 0x8000000228146530, 3, a3);
  if ((v5 & 1) == 0)
  {
    MEMORY[0x22AAB06B0](v4, 0);
  }

  result = sub_228017770(0xD00000000000001CLL, 0x8000000228146550, 3, a3);
  if ((v7 & 1) == 0)
  {
    return MEMORY[0x22AAB06A0](result, 0);
  }

  return result;
}

void sub_2280D78D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F068, &qword_228140A28);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = v63 - v7;
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((a2 + 16));
  sub_2280D2D08((a2 + 24), KeyPath);
  if (v2)
  {
    os_unfair_lock_unlock((a2 + 16));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((a2 + 16));

    sub_22813847C();
    v10 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v11 = sub_2280D2D08((a2 + 24), v10);
    v13 = v12;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0A10](v11, v13 & 1);
    v14 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v15 = sub_2280D2D08((a2 + 24), v14);
    v17 = v16;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0A30](v15, v17 & 1);
    v18 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v19 = sub_2280D2D08((a2 + 24), v18);
    v21 = v20;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0A50](v19, v21 & 1);
    v22 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v23 = sub_2280D2D08((a2 + 24), v22);
    v25 = v24;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0A40](v23, v25 & 1);
    v26 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v27 = sub_2280D2D08((a2 + 24), v26);
    v29 = v28;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0AF0](v27, v29 & 1);
    v30 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    sub_2280D2E20((a2 + 24), v30);
    os_unfair_lock_unlock((a2 + 16));

    sub_22813851C();
    v31 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v32 = sub_2280D30D4((a2 + 24), v31);
    os_unfair_lock_unlock((a2 + 16));

    if (v32)
    {
      sub_2281392AC();
    }

    sub_2281384EC();
    v33 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v34 = sub_2280D2D08((a2 + 24), v33);
    v36 = v35;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0A60](v34, v36 & 1);
    v37 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    sub_2280D31A4((a2 + 24), v37);
    os_unfair_lock_unlock((a2 + 16));

    sub_22813855C();
    v38 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v39 = sub_2280D2D08((a2 + 24), v38);
    v41 = v40;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0AE0](v39, v41 & 1);
    v42 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v43 = *(a2 + 24);
    if (*(v43 + 16) && (v44 = sub_227FEB418(v42, *(a2 + 24)), (v45 & 1) != 0))
    {
      sub_227FEB0D4(*(v43 + 56) + 32 * v44, v63);
    }

    else
    {
      memset(v63, 0, sizeof(v63));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E940, &qword_22813C658);
    v46 = swift_dynamicCast();
    if ((v46 & 1) == 0)
    {
      v64 = 0;
      v65 = 0;
    }

    v66 = v46 ^ 1;
    os_unfair_lock_unlock((a2 + 16));

    if ((v66 & 1) == 0)
    {
      if (v65)
      {
        v47 = qword_2785F1BE8[v64];
      }

      else
      {
        v47 = MEMORY[0x277D20C30];
      }

      v48 = *v47;
      v49 = sub_2281384CC();
      v50 = *(v49 - 8);
      (*(v50 + 104))(v8, v48, v49);
      (*(v50 + 56))(v8, 0, 1, v49);
      sub_2281384DC();
    }

    v51 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v52 = sub_2280D2D28((a2 + 24), v51);
    v54 = v53;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0AD0](v52, v54 & 1);
    v55 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v56 = sub_2280D2D28((a2 + 24), v55);
    v58 = v57;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0AB0](v56, v58 & 1);
    v59 = swift_getKeyPath();
    os_unfair_lock_lock((a2 + 16));
    v60 = sub_2280D2D28((a2 + 24), v59);
    v62 = v61;
    os_unfair_lock_unlock((a2 + 16));

    MEMORY[0x22AAB0AA0](v60, v62 & 1);
  }
}

uint64_t sub_2280D7F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, unint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(0xD00000000000001CLL, 0x8000000228148420, 3, a3);
  if (v7)
  {
    return a5(result);
  }

  return result;
}

uint64_t sub_2280D8000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2280171BC(0xD00000000000001ALL, 0x8000000228148480, 3, a3);
  if ((v5 & 1) == 0)
  {
    MEMORY[0x22AAB0740](v4, 0);
  }

  result = sub_2280171BC(0xD000000000000018, 0x80000002281484A0, 3, a3);
  if ((v7 & 1) == 0)
  {
    return MEMORY[0x22AAB0730](result, 0);
  }

  return result;
}

uint64_t sub_2280D809C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D30D4((v3 + 24), KeyPath);
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  return result;
}

uint64_t sub_2280D8110(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v5 = v2;

  sub_2280D87C4(v2, v3, KeyPath);
}

uint64_t sub_2280D81A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v3 + 16));
  v5 = sub_2280D31A4((v3 + 24), KeyPath);
  os_unfair_lock_unlock((v3 + 16));

  *a2 = v5;
  *(a2 + 4) = BYTE4(v5) & 1;
  return result;
}

uint64_t sub_2280D823C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock((v3 + 16));
  sub_2280D327C((v3 + 24), KeyPath, &v8);
  os_unfair_lock_unlock((v3 + 16));

  v6 = v9;
  v7 = v10;
  *a2 = v8;
  *(a2 + 8) = v6;
  *(a2 + 9) = v7;
  return result;
}

uint64_t sub_2280D82C8@<X0>(os_unfair_lock_s **a1@<X0>, uint64_t (*a2)(os_unfair_lock_s *, uint64_t)@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  os_unfair_lock_lock(v5 + 4);
  v7 = a2(v5 + 6, KeyPath);
  v9 = v8;
  os_unfair_lock_unlock(v5 + 4);

  *a3 = v7;
  *(a3 + 8) = v9 & 1;
  return result;
}

uint64_t sub_2280D8404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22813828C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v28[3] = a4;
  v28[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v17 = sub_22813882C();
  __swift_project_value_buffer(v17, qword_2813C8A20);
  v18 = sub_22813880C();
  v19 = sub_2281396CC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_227FC3000, v18, v19, "Sending Biome event for Summarization request", v20, 2u);
    MEMORY[0x22AAB28A0](v20, -1, -1);
  }

  v21 = sub_22813886C();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_22813885C();
  MEMORY[0x28223BE20](v24, v25);
  *(&v27 - 4) = v28;
  *(&v27 - 3) = a2;
  *(&v27 - 2) = a3;
  sub_22813884C();
  (*(v11 + 8))(v15, v10);

  return __swift_destroy_boxed_opaque_existential_1Tm_12(v28);
}

void sub_2280D87C4(void *a1, uint64_t a2, uint64_t *a3)
{

  os_unfair_lock_lock((a2 + 16));
  if (a1)
  {
    type metadata accessor for NLLanguage(0);
    v7 = a1;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  v9[0] = v7;
  v9[3] = v6;

  v8 = a1;
  sub_228044CF4(v9, a3, (a2 + 24));

  os_unfair_lock_unlock((a2 + 16));
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_2280D8910(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_2280D8958(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2280D89D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x2822009F8](sub_2280D89F8, 0, 0);
}

uint64_t sub_2280D89F8()
{
  if (*(v0[12] + 64) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v1 = v0[8];
    v2 = v0[9];
    v11 = v0[1];

    return v11(v1, v2);
  }

  else
  {
    v5 = v0[8];
    v4 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
    inited = swift_initStackObject();
    v0[13] = inited;
    *(inited + 16) = xmmword_22813A4B0;
    *(inited + 32) = v5;
    *(inited + 40) = v4;

    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_2280D8B44;
    v8 = v0[11];
    v9 = v0[12];
    v10 = v0[10];

    return sub_2280D8D74(inited, v10, v8);
  }
}

uint64_t sub_2280D8B44(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v8 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v5 = sub_2280D8CF8;
  }

  else
  {
    v6 = v3[13];

    v5 = sub_2280D8C60;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2280D8C60()
{
  v1 = *(v0 + 120);
  if (v1[2])
  {
    v2 = v1[4];
    v3 = v1[5];
  }

  else
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_2280D8CF8()
{
  v1 = v0[13];
  swift_setDeallocating();
  v2 = *(v1 + 16);
  swift_arrayDestroy();
  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_2280D8D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_2280D8D98, 0, 0);
}

uint64_t sub_2280D8D98()
{
  v1 = *(v0 + 80);
  if (*(v1 + 64) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = *(v0 + 56);
    v13 = *(v0 + 8);

    return v13(v3);
  }

  else
  {
    if (qword_2813C4900 != -1)
    {
      swift_once();
      v1 = *(v0 + 80);
    }

    v5 = *(v0 + 64);
    v6 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = type metadata accessor for Signpost(0);
    v9 = __swift_project_value_buffer(v8, qword_2813C8858);
    sub_228004954(v5, v0 + 16);
    v10 = swift_allocObject();
    *(v0 + 88) = v10;
    sub_227FFA05C((v0 + 16), v10 + 16);
    v11 = swift_task_alloc();
    *(v0 + 96) = v11;
    v11[2] = v1;
    v11[3] = v5;
    v11[4] = v6;
    v11[5] = v7;
    v12 = swift_task_alloc();
    *(v0 + 104) = v12;
    *v12 = v0;
    v12[1] = sub_2280D8F88;

    return sub_22810A6D8(v9, sub_2280DB2C8, v10, &unk_228140B88, v11);
  }
}

uint64_t sub_2280D8F88(uint64_t a1)
{
  v4 = *(*v2 + 104);
  v5 = *v2;
  v5[14] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2280D90E4, 0, 0);
  }

  else
  {
    v6 = v5[11];
    v7 = v5[12];

    v8 = v5[1];

    return v8(a1);
  }
}

uint64_t sub_2280D90E4()
{
  v1 = v0[11];
  v2 = v0[12];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_2280D9150(void *a1)
{
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000014, 0x80000002281441C0);
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  MEMORY[0x22AAB1970](v4);

  MEMORY[0x22AAB1970](0xD000000000000015, 0x80000002281443F0);
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v7 = (*(*(v5 + 8) + 8))(v6);
  MEMORY[0x22AAB1970](v7);

  MEMORY[0x22AAB1970](0xD00000000000001FLL, 0x8000000228144410);
  v9 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v10 = (*(*(v8 + 8) + 16))(v9);
  MEMORY[0x22AAB1970](v10);

  MEMORY[0x22AAB1970](0xD00000000000001BLL, 0x8000000228144430);
  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v15 = (*(*(v11 + 8) + 24))(v12);
  v13 = sub_22813998C();
  MEMORY[0x22AAB1970](v13);

  MEMORY[0x22AAB1970](0xD000000000000017, 0x8000000228144450);
  return HIDWORD(v15);
}

uint64_t sub_2280D9370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a2;
  v5[10] = a5;
  v5[8] = a1;
  v8 = sub_228136CDC();
  v5[11] = v8;
  v9 = *(v8 - 8);
  v5[12] = v9;
  v10 = *(v9 + 64) + 15;
  v5[13] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[14] = v11;
  *v11 = v5;
  v11[1] = sub_2280D9480;

  return sub_2280D9D70(a3, a4);
}

uint64_t sub_2280D9480(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v5 = *v2;
  *(*v2 + 120) = a1;

  if (v1)
  {
    v6 = *(v3 + 104);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2280D95D0, 0, 0);
  }
}

uint64_t sub_2280D95D0()
{
  if (*(v0 + 120) < 1)
  {
    **(v0 + 64) = MEMORY[0x277D84F90];
    v10 = *(v0 + 104);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v1 = *(v0 + 80);
    v2 = 0xE000000000000000;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = (v1 + 16 * v3 + 24);
      v5 = MEMORY[0x277D84F90];
      do
      {
        v16 = *(v4 - 1);
        v17 = *v4;
        swift_bridgeObjectRetain_n();
        MEMORY[0x22AAB1970](32, 0xE100000000000000);

        MEMORY[0x22AAB1970](v16, v17);

        v6 = *(v0 + 16);
        v2 = *(v0 + 24);
        v7 = sub_22813936C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_228133CCC(0, *(v5 + 2) + 1, 1, v5);
        }

        v9 = *(v5 + 2);
        v8 = *(v5 + 3);
        if (v9 >= v8 >> 1)
        {
          v5 = sub_228133CCC((v8 > 1), v9 + 1, 1, v5);
        }

        *(v5 + 2) = v9 + 1;
        *&v5[8 * v9 + 32] = v7;
        v4 -= 2;
        --v3;
      }

      while (v3);
    }

    else
    {
      v6 = 0;
      v5 = MEMORY[0x277D84F90];
    }

    *(v0 + 128) = v5;
    *(v0 + 136) = v2;
    v13 = *(v0 + 72);
    v14 = swift_task_alloc();
    *(v0 + 144) = v14;
    *v14 = v0;
    v14[1] = sub_2280D97FC;
    v15 = *(v0 + 120);

    return sub_227FE83EC(v6, v2, v15);
  }
}

uint64_t sub_2280D97FC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 144);
  v6 = *(*v3 + 136);
  v10 = *v3;
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = v2;

  if (v2)
  {
    v7 = v4[16];

    v8 = sub_2280D9D0C;
  }

  else
  {
    v8 = sub_2280D9944;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2280D9944()
{
  v2 = v1[16];
  v51 = *(v2 + 16);
  if (!v51)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_18:
    v45 = v1[20];

    goto LABEL_19;
  }

  v3 = 0;
  v50 = (v1[12] + 8);
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v6 = v1[19];
    v5 = v1[20];
    v7 = *(v2 + 32 + 8 * v3);
    v0 = sub_2281393AC();
    v8 = sub_22813936C();
    v9 = v1[19];
    v10 = v1[20];
    if (v8 < v7)
    {
      break;
    }

    if (sub_2281393AC() >> 14 < v0 >> 14)
    {
      goto LABEL_23;
    }

    v11 = v1[19];
    v12 = v1[20];
    v13 = v1[13];
    v14 = v1[11];
    v15 = sub_22813948C();
    v16 = MEMORY[0x22AAB18D0](v15);
    v18 = v17;

    v1[4] = v16;
    v1[5] = v18;
    sub_228136C5C();
    sub_227FDB420();
    v0 = sub_2281397AC();
    v20 = v19;
    (*v50)(v13, v14);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_2281338C0(0, *(v4 + 2) + 1, 1, v4);
    }

    v22 = *(v4 + 2);
    v21 = *(v4 + 3);
    if (v22 >= v21 >> 1)
    {
      v4 = sub_2281338C0((v21 > 1), v22 + 1, 1, v4);
    }

    ++v3;
    *(v4 + 2) = v22 + 1;
    v23 = &v4[16 * v22];
    *(v23 + 4) = v0;
    *(v23 + 5) = v20;
    if (v51 == v3)
    {
      v44 = v1[16];
      goto LABEL_18;
    }
  }

  v24 = v1[16];
  v3 = v1[20];
  v25 = v1[19];

  if (sub_2281393AC() >> 14 < v0 >> 14)
  {
    goto LABEL_24;
  }

  v26 = v1[19];
  v27 = v1[20];
  v28 = v1[13];
  v29 = v1[11];
  v30 = sub_22813948C();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v37 = MEMORY[0x22AAB18D0](v30, v32, v34, v36);
  v39 = v38;

  v1[6] = v37;
  v1[7] = v39;
  sub_228136C5C();
  sub_227FDB420();
  v0 = sub_2281397AC();
  v3 = v40;
  (*v50)(v28, v29);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_15;
  }

LABEL_25:
  v4 = sub_2281338C0(0, *(v4 + 2) + 1, 1, v4);
LABEL_15:
  v42 = *(v4 + 2);
  v41 = *(v4 + 3);
  if (v42 >= v41 >> 1)
  {
    v4 = sub_2281338C0((v41 > 1), v42 + 1, 1, v4);
  }

  *(v4 + 2) = v42 + 1;
  v43 = &v4[16 * v42];
  *(v43 + 4) = v0;
  *(v43 + 5) = v3;
LABEL_19:
  v46 = v1[8];
  *v46 = sub_2280DAF08(v4);
  v47 = v1[13];

  v48 = v1[1];

  return v48();
}

uint64_t sub_2280D9D0C()
{
  v1 = v0[21];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2280D9D70(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = type metadata accessor for ModelBundleIdentifier();
  v3[16] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v6 = *(*(sub_228137AEC() - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8D8, &unk_22813E420) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v8 = sub_228137A3C();
  v3[21] = v8;
  v9 = *(v8 - 8);
  v3[22] = v9;
  v10 = *(v9 + 64) + 15;
  v3[23] = swift_task_alloc();
  v11 = sub_228137A9C();
  v3[24] = v11;
  v12 = *(v11 - 8);
  v3[25] = v12;
  v13 = *(v12 + 64) + 15;
  v3[26] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ED08, &qword_228140BA0) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v15 = type metadata accessor for SummarizationParameters();
  v3[29] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280D9FB0, 0, 0);
}

uint64_t sub_2280D9FB0()
{
  v70 = v0;
  v1 = *(v0 + 120);
  v2 = v1[7];
  *(v0 + 256) = v2;
  v3 = *(v2 + 16);
  *(v0 + 264) = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    *(v0 + 272) = v4;
    *(v0 + 280) = v1[5];
    v5 = v1[6];
    *(v0 + 344) = *MEMORY[0x277D0E578];
    *(v0 + 288) = v5;
    *(v0 + 296) = 0;
    *(v0 + 304) = 0;
    v6 = *(v0 + 256);
    if (*(v6 + 16))
    {
      v66 = *(v6 + 32);

      if (qword_2813C4620 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_4:
    if (byte_2813C4629 == 1)
    {
      if (qword_27D81E2A0 != -1)
      {
        swift_once();
      }

      v7 = &off_27D81EDB0;
    }

    else
    {
      if (qword_2813C76F0 != -1)
      {
        swift_once();
      }

      v7 = &qword_2813C76F8;
    }

    v20 = *(v0 + 240);
    v64 = *(v0 + 216);
    v21 = *(v0 + 200);
    v60 = *(v0 + 224);
    v61 = *(v0 + 192);
    v22 = *(v0 + 104);
    v23 = *v7;
    v24 = v22[3];
    v25 = v22[4];
    v62 = *(v0 + 280);
    __swift_project_boxed_opaque_existential_1(v22, v24);
    v26 = *(v25 + 8);
    v27 = *(v26 + 8);

    v28 = v27(v24, v26);
    v69 = v66;
    *(v0 + 312) = sub_22808E6E4(v28, v29, &v69);

    sub_228004954(v22, v0 + 16);
    (*(v21 + 56))(v60, 1, 1, v61);
    *(v0 + 56) = 0;
    *(v0 + 64) = 0xE000000000000000;
    *(v0 + 72) = 10;
    *(v0 + 80) = 0xE100000000000000;
    *(v0 + 88) = 4091452;
    *(v0 + 96) = 0xE300000000000000;
    sub_227FDB420();
    *v20 = sub_2281397BC();
    *(v20 + 8) = v30;
    *(v20 + 16) = v62;
    *(v20 + 32) = v66;
    sub_228004954(v0 + 16, v20 + 40);
    sub_2280DB484(v60, v64);
    v31 = *(v21 + 48);
    v32 = v31(v64, 1, v61);
    v33 = *(v0 + 192);
    if (v32 == 1)
    {
      v34 = *(v0 + 344);
      v65 = *(v0 + 224);
      v68 = *(v0 + 216);
      v63 = *(v0 + 208);
      v35 = *(v0 + 176);
      v36 = *(v0 + 184);
      v37 = *(v0 + 160);
      v38 = *(v0 + 168);
      v39 = *(v0 + 152);
      v40 = sub_228137A7C();
      (*(*(v40 - 8) + 56))(v36, 1, 1, v40);
      (*(v35 + 104))(v36, v34, v38);
      sub_228137AAC();
      sub_228137A0C();
      v41 = sub_228137A1C();
      (*(*(v41 - 8) + 56))(v37, 0, 1, v41);
      sub_228137A8C();
      sub_2280DB4F4(v65);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      if (v31(v68, 1, v33) != 1)
      {
        sub_2280DB4F4(*(v0 + 216));
      }
    }

    else
    {
      v42 = *(v0 + 216);
      v44 = *(v0 + 200);
      v43 = *(v0 + 208);
      sub_2280DB4F4(*(v0 + 224));
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      (*(v44 + 32))(v43, v42, v33);
    }

    v46 = (v0 + 144);
    v45 = *(v0 + 144);
    v47 = *(v0 + 240);
    v48 = *(v0 + 248);
    v50 = *(v0 + 120);
    v49 = *(v0 + 128);
    (*(*(v0 + 200) + 32))(v47 + *(*(v0 + 232) + 36), *(v0 + 208), *(v0 + 192));
    sub_2280DB55C(v47, v48);
    v51 = __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    v52 = type metadata accessor for TokenCounter();
    v53 = __swift_project_boxed_opaque_existential_1((v51 + *(v52 + 20)), *(v51 + *(v52 + 20) + 24));
    sub_227FC8614(v51, v45);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v55 = 1;
LABEL_23:
        sub_227FCABF8(*v46, type metadata accessor for ModelBundleIdentifier);
        __swift_project_boxed_opaque_existential_1((*v53 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_promptRunner), *(*v53 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_promptRunner + 24));
        v58 = swift_task_alloc();
        *(v0 + 320) = v58;
        *v58 = v0;
        v58[1] = sub_2280DA630;
        v59 = *(v0 + 248);

        return sub_228001E18(v59, v55 & 1);
      }
    }

    else
    {
      sub_227FCABF8(*v46, type metadata accessor for ModelBundleIdentifier);
    }

    v46 = (v0 + 136);
    v56 = *(v0 + 136);
    v57 = *(v0 + 128);
    swift_storeEnumTagMultiPayload();
    v55 = _s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v51, v56);
    goto LABEL_23;
  }

  v67 = v1[8];
  v9 = *(v0 + 240);
  v8 = *(v0 + 248);
  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  v12 = *(v0 + 208);
  v13 = *(v0 + 184);
  v15 = *(v0 + 152);
  v14 = *(v0 + 160);
  v16 = *(v0 + 136);
  v17 = *(v0 + 144);

  v18 = *(v0 + 8);

  return v18(v67);
}

uint64_t sub_2280DA630(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v7 = sub_2280DAE04;
  }

  else
  {
    *(v4 + 336) = a1;
    v7 = sub_2280DA758;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2280DA758()
{
  v74 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  sub_227FCABF8(*(v0 + 248), type metadata accessor for SummarizationParameters);
  v3 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
    goto LABEL_32;
  }

  v4 = *(v0 + 112);
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v7 = *(v0 + 304) + 1;
  if (v6 <= *(v0 + 296))
  {
    v6 = *(v0 + 296);
  }

  if (v7 == *(v0 + 264))
  {
    v8 = *(*(v0 + 120) + 64);
    v5 = __OFSUB__(v8, v6);
    v9 = v8 - v6;
    if (!v5)
    {
      v71 = v9;
      v11 = *(v0 + 240);
      v10 = *(v0 + 248);
      v13 = *(v0 + 216);
      v12 = *(v0 + 224);
      v14 = *(v0 + 208);
      v15 = *(v0 + 184);
      v17 = *(v0 + 152);
      v16 = *(v0 + 160);
      v18 = *(v0 + 136);
      v19 = *(v0 + 144);

      v20 = *(v0 + 8);

      return v20(v71);
    }

    goto LABEL_33;
  }

  *(v0 + 296) = v6;
  *(v0 + 304) = v7;
  v22 = *(v0 + 256);
  if (v7 < *(v22 + 16))
  {
    v70 = *(v22 + v7 + 32);

    if (qword_2813C4620 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  swift_once();
LABEL_12:
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v23 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v23 = &qword_2813C76F8;
  }

  v24 = *(v0 + 240);
  v68 = *(v0 + 216);
  v25 = *(v0 + 200);
  v64 = *(v0 + 224);
  v65 = *(v0 + 192);
  v26 = *(v0 + 104);
  v27 = *v23;
  v28 = v26[3];
  v29 = v26[4];
  v66 = *(v0 + 280);
  __swift_project_boxed_opaque_existential_1(v26, v28);
  v30 = *(v29 + 8);
  v31 = *(v30 + 8);

  v32 = v31(v28, v30);
  v73 = v70;
  *(v0 + 312) = sub_22808E6E4(v32, v33, &v73);

  sub_228004954(v26, v0 + 16);
  (*(v25 + 56))(v64, 1, 1, v65);
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 10;
  *(v0 + 80) = 0xE100000000000000;
  *(v0 + 88) = 4091452;
  *(v0 + 96) = 0xE300000000000000;
  sub_227FDB420();
  *v24 = sub_2281397BC();
  *(v24 + 8) = v34;
  *(v24 + 16) = v66;
  *(v24 + 32) = v70;
  sub_228004954(v0 + 16, v24 + 40);
  sub_2280DB484(v64, v68);
  v35 = *(v25 + 48);
  if (v35(v68, 1, v65) == 1)
  {
    v36 = *(v0 + 344);
    v67 = *(v0 + 224);
    v37 = *(v0 + 208);
    v38 = *(v0 + 184);
    v69 = *(v0 + 192);
    v72 = *(v0 + 216);
    v40 = *(v0 + 168);
    v39 = *(v0 + 176);
    v42 = *(v0 + 152);
    v41 = *(v0 + 160);
    v43 = sub_228137A7C();
    (*(*(v43 - 8) + 56))(v38, 1, 1, v43);
    (*(v39 + 104))(v38, v36, v40);
    sub_228137AAC();
    sub_228137A0C();
    v44 = sub_228137A1C();
    (*(*(v44 - 8) + 56))(v41, 0, 1, v44);
    sub_228137A8C();
    sub_2280DB4F4(v67);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (v35(v72, 1, v69) != 1)
    {
      sub_2280DB4F4(*(v0 + 216));
    }
  }

  else
  {
    v45 = *(v0 + 216);
    v47 = *(v0 + 200);
    v46 = *(v0 + 208);
    v48 = *(v0 + 192);
    sub_2280DB4F4(*(v0 + 224));
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    (*(v47 + 32))(v46, v45, v48);
  }

  v50 = (v0 + 144);
  v49 = *(v0 + 144);
  v51 = *(v0 + 240);
  v52 = *(v0 + 248);
  v54 = *(v0 + 120);
  v53 = *(v0 + 128);
  (*(*(v0 + 200) + 32))(v51 + *(*(v0 + 232) + 36), *(v0 + 208), *(v0 + 192));
  sub_2280DB55C(v51, v52);
  v55 = __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v56 = type metadata accessor for TokenCounter();
  v57 = __swift_project_boxed_opaque_existential_1((v55 + *(v56 + 20)), *(v55 + *(v56 + 20) + 24));
  sub_227FC8614(v55, v49);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_227FCABF8(*v50, type metadata accessor for ModelBundleIdentifier);
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_27:
    v50 = (v0 + 136);
    v60 = *(v0 + 136);
    v61 = *(v0 + 128);
    swift_storeEnumTagMultiPayload();
    v59 = _s16SummarizationKit21ModelBundleIdentifierO2eeoiySbAC_ACtFZ_0(v55, v60);
    goto LABEL_28;
  }

  v59 = 1;
LABEL_28:
  sub_227FCABF8(*v50, type metadata accessor for ModelBundleIdentifier);
  __swift_project_boxed_opaque_existential_1((*v57 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_promptRunner), *(*v57 + OBJC_IVAR____TtC16SummarizationKit27GMSSummarizationModelEngine_promptRunner + 24));
  v62 = swift_task_alloc();
  *(v0 + 320) = v62;
  *v62 = v0;
  v62[1] = sub_2280DA630;
  v63 = *(v0 + 248);

  return sub_228001E18(v63, v59 & 1);
}

uint64_t sub_2280DAE04()
{
  v1 = v0[30];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v5 = v0[23];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  v12 = v0[17];
  sub_227FCABF8(v0[31], type metadata accessor for SummarizationParameters);

  v9 = v0[1];
  v10 = v0[41];

  return v9();
}

uint64_t sub_2280DAF08(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v10 = *(v1 + 2);
    if (v4 >= v10)
    {
      break;
    }

    if (v6 >= v10)
    {
      goto LABEL_14;
    }

    v12 = *&v1[v3 + 32];
    v11 = *&v1[v3 + 40];
    v14 = *&v1[i - 8];
    v13 = *&v1[i];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_2280DB13C(v1);
    }

    v15 = &v1[v3];
    v16 = *&v1[v3 + 40];
    *(v15 + 4) = v14;
    *(v15 + 5) = v13;

    if (v6 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[i];
    v9 = *&v1[i];
    *(v8 - 1) = v12;
    *v8 = v11;

LABEL_5:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_2280DB020(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char **a6)
{
  if (a1)
  {
    v16 = a1;
    [v16 range];
    v7 = sub_22813967C();
    if (v8)
    {
    }

    else
    {
      v9 = v7;
      v10 = *a6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a6 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_2281339CC(0, *(v10 + 2) + 1, 1, v10);
        *a6 = v10;
      }

      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      v14 = v16;
      if (v13 >= v12 >> 1)
      {
        *a6 = sub_2281339CC((v12 > 1), v13 + 1, 1, v10);
        v14 = v16;
      }

      v15 = *a6;
      *(v15 + 2) = v13 + 1;
      *&v15[8 * v13 + 32] = v9;
    }
  }
}

uint64_t sub_2280DB150()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  v1 = sub_22813927C();
  [v0 setString_];

  v2 = sub_2281396AC();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v9 = *v4;
      v4 += 2;
      v8 = v9;
      if (v9 >= 0x4000)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_228043AF4(0, *(v5 + 16) + 1, 1);
        }

        v7 = *(v5 + 16);
        v6 = *(v5 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_228043AF4((v6 > 1), v7 + 1, 1);
        }

        *(v5 + 16) = v7 + 1;
        *(v5 + 8 * v7 + 32) = v8;
      }

      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t sub_2280DB2D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2280DB390;

  return sub_2280D9370(a1, v4, v5, v7, v6);
}

uint64_t sub_2280DB390()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2280DB484(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ED08, &qword_228140BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2280DB4F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ED08, &qword_228140BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2280DB55C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarizationParameters();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static DateUtils.parseDateFromMessage(message:referenceDate:referenceTimeZone:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v148 = a2;
  v145 = a1;
  v155 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v121[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v7, v10);
  v131 = &v121[-v12];
  v14 = MEMORY[0x28223BE20](v11, v13);
  v144 = &v121[-v15];
  v17 = MEMORY[0x28223BE20](v14, v16);
  v130 = &v121[-v18];
  v20 = MEMORY[0x28223BE20](v17, v19);
  v129 = &v121[-v21];
  MEMORY[0x28223BE20](v20, v22);
  v136 = &v121[-v23];
  v24 = sub_228136F8C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v126 = &v121[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v28, v30);
  v128 = &v121[-v32];
  v34 = MEMORY[0x28223BE20](v31, v33);
  v133 = &v121[-v35];
  v37 = MEMORY[0x28223BE20](v34, v36);
  v125 = &v121[-v38];
  v40 = MEMORY[0x28223BE20](v37, v39);
  v127 = &v121[-v41];
  v43 = MEMORY[0x28223BE20](v40, v42);
  v132 = &v121[-v44];
  v46 = MEMORY[0x28223BE20](v43, v45);
  v124 = &v121[-v47];
  v49 = MEMORY[0x28223BE20](v46, v48);
  v135 = &v121[-v50];
  MEMORY[0x28223BE20](v49, v51);
  v143 = &v121[-v52];
  v53 = objc_opt_self();
  v54 = sub_22813927C();
  v55 = [v53 scanString_];

  sub_2280DC17C();
  v56 = sub_22813951C();

  v57 = *(v25 + 56);
  v146 = a3;
  v137 = v57;
  v138 = v25 + 56;
  v57(a3, 1, 1, v24);
  v58 = v56;
  if (v56 >> 62)
  {
    v59 = sub_22813990C();
    v58 = v56;
    if (v59)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v59 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v59)
    {
LABEL_3:
      if (v59 < 1)
      {
        __break(1u);
      }

      v60 = 0;
      v149 = (v25 + 32);
      v139 = (v25 + 8);
      v140 = v58 & 0xC000000000000001;
      v134 = (v25 + 48);
      v142 = v58;
      v123 = v9;
      v141 = v59;
      while (1)
      {
        if (v140)
        {
          v66 = MEMORY[0x22AAB1E40](v60);
        }

        else
        {
          v66 = *(v58 + 8 * v60 + 32);
        }

        v67 = v66;
        v68 = v144;
        v154 = 0;
        v69 = sub_228136F2C();
        v70 = sub_2281371CC();
        v153 = 0;
        v71 = [v67 dateFromReferenceDate:v69 referenceTimezone:v70 timezoneRef:&v153 allDayRef:&v154];

        v72 = v153;
        v147 = v153;
        if (!v71)
        {
          v81 = v153;
          goto LABEL_22;
        }

        v73 = v135;
        sub_228136F5C();
        v74 = v72;

        v75 = *v149;
        v76 = v143;
        (*v149)(v143, v73, v24);
        if (sub_228136F3C())
        {
          v77 = v146;
          v78 = v129;
          sub_2280DC238(v146, v129);
          v79 = (*v134)(v78, 1, v24);
          v80 = v136;
          if (v79 == 1)
          {
            sub_2280DC2A8(v77);
            sub_2280DC2A8(v78);
LABEL_20:
            (v75)(v80, v143, v24);
            v137(v80, 0, 1, v24);
            goto LABEL_21;
          }

          v82 = v124;
          v75();
          v83 = v143;
          v84 = sub_228136F3C();
          v85 = v77;
          v86 = v84;
          sub_2280DC2A8(v85);
          v87 = *v139;
          if ((v86 & 1) == 0)
          {
            v87(v82, v24);
            v77 = v146;
            v68 = v144;
            goto LABEL_20;
          }

          v87(v83, v24);
          (v75)(v80, v82, v24);
          v137(v80, 0, 1, v24);
          v77 = v146;
          v68 = v144;
        }

        else
        {
          (*v139)(v76, v24);
          v77 = v146;
          v80 = v136;
          sub_2280DC1C8(v146, v136);
        }

LABEL_21:
        sub_2280DC1C8(v80, v77);
LABEL_22:
        v88 = sub_228136F2C();
        v89 = sub_2281371CC();
        v152 = 0;
        v153 = 0;
        v150 = 0;
        v151 = 0;
        v90 = [v67 extractStartDate:&v153 startTimezone:&v152 endDate:&v151 endTimezone:&v150 allDayRef:&v154 referenceDate:v88 referenceTimezone:v89];

        v65 = v150;
        v63 = v151;
        v64 = v152;
        if (v90)
        {
          v62 = v153;
          if (v153)
          {
            sub_228136F5C();
            v91 = *v149;
            v92 = v132;
            (*v149)();
            v93 = v65;
            v94 = v63;
            v95 = v64;
            v96 = v62;
            if (sub_228136F3C())
            {
              v97 = v146;
              sub_2280DC238(v146, v68);
              if ((*v134)(v68, 1, v24) == 1)
              {
                sub_2280DC2A8(v97);
                sub_2280DC2A8(v68);
                goto LABEL_33;
              }

              v91();
              v104 = v132;
              v122 = sub_228136F3C();
              sub_2280DC2A8(v97);
              v105 = *v139;
              if (v122)
              {
                v105(v104, v24);
                v103 = v130;
                v106 = v130;
                v107 = &v156;
              }

              else
              {
                v105(v125, v24);
LABEL_33:
                v103 = v130;
                v106 = v130;
                v107 = &v158;
              }

              (v91)(v106, *(v107 - 32), v24);
              v137(v103, 0, 1, v24);
              v102 = v146;
            }

            else
            {
              (*v139)(v92, v24);
              v102 = v146;
              v103 = v130;
              sub_2280DC1C8(v146, v130);
            }

            sub_2280DC1C8(v103, v102);
            v101 = v149;
            if (v63)
            {
LABEL_36:
              sub_228136F5C();
              v108 = *v101;
              v109 = v133;
              (*v101)();
              if (sub_228136F3C())
              {
                v110 = v146;
                v111 = v123;
                sub_2280DC238(v146, v123);
                if ((*v134)(v111, 1, v24) == 1)
                {

                  sub_2280DC2A8(v110);
                  sub_2280DC2A8(v111);
                  goto LABEL_43;
                }

                v108();
                v114 = v133;
                v122 = sub_228136F3C();

                sub_2280DC2A8(v110);
                v115 = *v139;
                if (v122)
                {
                  v115(v114, v24);
                  v113 = v131;
                  v116 = v131;
                  v117 = &v157;
                }

                else
                {
                  v115(v126, v24);
LABEL_43:
                  v113 = v131;
                  v116 = v131;
                  v117 = &v159;
                }

                (v108)(v116, *(v117 - 32), v24);
                v137(v113, 0, 1, v24);
                v112 = v146;
              }

              else
              {

                (*v139)(v109, v24);
                v112 = v146;
                v113 = v131;
                sub_2280DC1C8(v146, v131);
              }

              sub_2280DC1C8(v113, v112);
              goto LABEL_7;
            }
          }

          else
          {
            v98 = v150;
            v99 = v63;
            v100 = v64;
            v101 = v149;
            if (v63)
            {
              goto LABEL_36;
            }
          }

          v63 = v64;
          v64 = v65;
          goto LABEL_6;
        }

        v61 = v150;
        v62 = v63;
        v63 = v64;
        v64 = v61;
LABEL_6:
        v65 = v67;
LABEL_7:
        ++v60;

        v58 = v142;
        if (v141 == v60)
        {

          v119 = *MEMORY[0x277D85DE8];
          return result;
        }
      }
    }
  }

  v120 = *MEMORY[0x277D85DE8];
}

unint64_t sub_2280DC17C()
{
  result = qword_2813C4610;
  if (!qword_2813C4610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813C4610);
  }

  return result;
}

uint64_t sub_2280DC1C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2280DC238(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2280DC2A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for DateUtils(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DateUtils(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2280DC3FC(char *a1)
{
  v2 = sub_228136D8C();
  v91 = *(v2 - 8);
  v92 = v2;
  v3 = *(v91 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v89 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2281371AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EC50, &unk_228140BB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v87 - v15;
  v17 = sub_228136F8C();
  v97 = *(v17 - 8);
  v18 = *(v97 + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v88 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v87 = &v87 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v96 = &v87 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v87 - v29;
  v31 = sub_2281371BC();
  v94 = *(v31 - 8);
  v95 = v31;
  v32 = *(v94 + 64);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22813714C();
  v90 = a1;
  sub_22813717C();
  v36 = *(v7 + 104);
  v36(v11, *MEMORY[0x277CC9968], v6);
  v93 = v30;
  sub_22813719C();
  v37 = v11;
  v38 = v97;
  (*(v7 + 8))(v37, v6);
  if ((*(v38 + 48))(v16, 1, v17) == 1)
  {
    v39 = v17;
    v90 = v35;
    sub_2280DC2A8(v16);
    if (qword_2813C49D8 != -1)
    {
      swift_once();
    }

    v40 = sub_22813882C();
    __swift_project_value_buffer(v40, qword_2813C8A08);
    v41 = v88;
    v42 = v93;
    (*(v38 + 16))(v88, v93, v17);
    v43 = sub_22813880C();
    v44 = sub_2281396DC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = v38;
      v47 = swift_slowAlloc();
      v98 = v47;
      *v45 = 136446210;
      sub_2280DCD38();
      v48 = sub_22813998C();
      v50 = v49;
      v51 = *(v46 + 8);
      v51(v41, v39);
      v52 = sub_227FCC340(v48, v50, &v98);

      *(v45 + 4) = v52;
      _os_log_impl(&dword_227FC3000, v43, v44, "Failed to find the next day of %{public}s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x22AAB28A0](v47, -1, -1);
      MEMORY[0x22AAB28A0](v45, -1, -1);

      v51(v42, v39);
    }

    else
    {

      v80 = *(v38 + 8);
      v80(v41, v17);
      v80(v42, v17);
    }
  }

  else
  {
    (*(v38 + 32))(v96, v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D81F070, &qword_228140BD0);
    v53 = *(v7 + 72);
    v54 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_22813B030;
    v56 = v55 + v54;
    v36(v56, *MEMORY[0x277CC9980], v6);
    v36((v56 + v53), *MEMORY[0x277CC99A0], v6);
    sub_228028EF8(v55);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v57 = v89;
    v58 = v96;
    sub_22813718C();

    v59 = sub_228136D6C();
    v60 = v35;
    v61 = v58;
    if ((v62 & 1) == 0)
    {
      v63 = v59;
      v64 = sub_228136D7C();
      if ((v65 & 1) == 0)
      {
        v85 = v64;
        (*(v91 + 8))(v57, v92);
        v86 = *(v97 + 8);
        v86(v58, v17);
        v86(v93, v17);
        (*(v94 + 8))(v60, v95);
        v83 = 0;
        v82 = COERCE_UNSIGNED_INT((v85 / 60.0) + v63);
        goto LABEL_16;
      }
    }

    if (qword_2813C49D8 != -1)
    {
      swift_once();
    }

    v66 = sub_22813882C();
    __swift_project_value_buffer(v66, qword_2813C8A08);
    v67 = v97;
    v68 = v87;
    (*(v97 + 16))(v87, v61, v17);
    v69 = sub_22813880C();
    v70 = sub_2281396DC();
    if (!os_log_type_enabled(v69, v70))
    {

      v81 = *(v67 + 8);
      v81(v68, v17);
      (*(v91 + 8))(v57, v92);
      v81(v61, v17);
      v81(v93, v17);
      (*(v94 + 8))(v60, v95);
      goto LABEL_15;
    }

    v71 = swift_slowAlloc();
    v90 = v60;
    v72 = v71;
    v73 = swift_slowAlloc();
    v98 = v73;
    *v72 = 136446210;
    sub_2280DCD38();
    v74 = sub_22813998C();
    v75 = v68;
    v77 = v76;
    v78 = *(v67 + 8);
    v78(v75, v17);
    v79 = sub_227FCC340(v74, v77, &v98);

    *(v72 + 4) = v79;
    _os_log_impl(&dword_227FC3000, v69, v70, "Failed to get the hours and minutes from %{public}s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x22AAB28A0](v73, -1, -1);
    MEMORY[0x22AAB28A0](v72, -1, -1);

    (*(v91 + 8))(v57, v92);
    v78(v96, v17);
    v78(v93, v17);
  }

  (*(v94 + 8))(v90, v95);
LABEL_15:
  v82 = 0;
  v83 = 1;
LABEL_16:
  LOBYTE(v98) = v83;
  return v82 | (v83 << 32);
}

unint64_t sub_2280DCD38()
{
  result = qword_27D81EF90;
  if (!qword_27D81EF90)
  {
    sub_228136F8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81EF90);
  }

  return result;
}

uint64_t sub_2280DCD90(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = (a3 + 32);
    do
    {
      v6 = *v4;
      v4 += 2;
      v5 = v6;
      if (a2)
      {
        if (a1)
        {
          if (a1 == 1)
          {
            if (v5 == 1)
            {
              return 1;
            }
          }

          else if (v5 == 2)
          {
            return 1;
          }
        }

        else if (!v5)
        {
          return 1;
        }
      }

      else if (v5 == a1)
      {
        return 1;
      }

      --v3;
    }

    while (v3);
  }

  return 0;
}

void *sub_2280DCDF0()
{
  result = sub_227FE5460(&unk_283B5B330);
  off_2813C6530 = result;
  return result;
}

uint64_t sub_2280DCE18(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
LABEL_6:
  if (v7)
  {
    v12 = v11;
LABEL_11:
    if (*(a1 + 16))
    {
      v13 = *(a2 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v7))));
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(a1 + 40);
      sub_228139AAC();
      sub_227FED188();
      sub_2281391EC();
      result = sub_228139AEC();
      v17 = -1 << *(a1 + 32);
      v18 = result & ~v17;
      if ((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v7 &= v7 - 1;
        v19 = ~v17;
        do
        {
          v20 = *(*(a1 + 48) + 16 * v18);
          if (v15)
          {
            if (v14)
            {
              if (v14 == 1)
              {
                if (v20 == 1)
                {
                  v11 = v12;
                  goto LABEL_6;
                }
              }

              else if (v20 == 2)
              {
                v11 = v12;
                goto LABEL_6;
              }
            }

            else if (!v20)
            {
              v11 = v12;
              goto LABEL_6;
            }
          }

          else if (v20 == v14)
          {
            v11 = v12;
            goto LABEL_6;
          }

          v18 = (v18 + 1) & v19;
        }

        while (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
      }
    }

    return 0;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2280DD00C(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = sub_22813805C();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v6 = sub_228137D2C();
  v2[23] = v6;
  v7 = *(v6 - 8);
  v2[24] = v7;
  v8 = *(v7 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2280DD170, 0, 0);
}

uint64_t sub_2280DD170()
{
  v1 = *(v0[17] + 24);
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_2280DD20C;
  v3 = v0[16];

  return sub_227FD5DB8(v3);
}

uint64_t sub_2280DD20C(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *(*v3 + 240);
  v7 = *v3;
  *(v5 + 248) = a1;
  *(v5 + 256) = v2;

  if (v2)
  {
    v8 = sub_2280DD4F0;
  }

  else
  {
    *(v5 + 264) = a2;
    v8 = sub_2280DD334;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2280DD334()
{
  v1 = *(v0 + 264);
  if (v1 == 2)
  {
    v2 = *(v0 + 248);
    if (qword_2813C49E0[0] != -1)
    {
      swift_once();
    }

    v3 = sub_22813882C();
    __swift_project_value_buffer(v3, qword_2813C8A20);
    v4 = sub_22813880C();
    v5 = sub_2281396CC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67240448;
      *(v6 + 4) = v2 & 1;
      *(v6 + 8) = 1026;
      *(v6 + 10) = (v2 >> 8) & 1;
      _os_log_impl(&dword_227FC3000, v4, v5, "Factual Consistency Classification: %{BOOL,public}d,\ndidFallbackToDefaultThresholds: %{BOOL,public}d", v6, 0xEu);
      MEMORY[0x22AAB28A0](v6, -1, -1);
    }
  }

  v7 = *(v0 + 248);
  v9 = *(v0 + 224);
  v8 = *(v0 + 232);
  v11 = *(v0 + 208);
  v10 = *(v0 + 216);
  v12 = *(v0 + 200);
  v14 = *(v0 + 168);
  v13 = *(v0 + 176);
  v15 = *(v0 + 160);

  v16 = *(v0 + 8);

  return v16(v7, v1);
}

uint64_t sub_2280DD4F0()
{
  v132 = v0;
  v1 = *(v0 + 256);
  *(v0 + 112) = v1;
  v2 = (v0 + 112);
  v3 = *(v0 + 232);
  v4 = *(v0 + 184);
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
  v6 = swift_dynamicCast();
  v7 = *(v0 + 256);
  if (v6)
  {
    v9 = *(v0 + 224);
    v8 = *(v0 + 232);
    v10 = *(v0 + 216);
    v11 = *(v0 + 184);
    v12 = *(v0 + 192);

    v13 = *(v12 + 32);
    v13(v9, v8, v11);
    v130 = *(v12 + 16);
    v130(v10, v9, v11);
    v14 = (*(v12 + 88))(v10, v11);
    v128 = v13;
    if (v14 == *MEMORY[0x277D29D38] || v14 == *MEMORY[0x277D29D30] || v14 == *MEMORY[0x277D29D10] || v14 == *MEMORY[0x277D29D18] || v14 == *MEMORY[0x277D29D48] || v14 == *MEMORY[0x277D29D08] || v14 == *MEMORY[0x277D29D20])
    {
      v127 = *(*(v0 + 192) + 8);
      v127(*(v0 + 216), *(v0 + 184));
      if (qword_2813C49E0[0] != -1)
      {
        swift_once();
      }

      v62 = *(v0 + 224);
      v63 = *(v0 + 208);
      v64 = *(v0 + 184);
      v65 = sub_22813882C();
      __swift_project_value_buffer(v65, qword_2813C8A20);
      v130(v63, v62, v64);
      v66 = sub_22813880C();
      v67 = sub_2281396DC();
      v68 = os_log_type_enabled(v66, v67);
      v69 = *(v0 + 208);
      v70 = *(v0 + 184);
      if (v68)
      {
        v125 = v66;
        v71 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        *v71 = 138412290;
        sub_2280DE238(&qword_2813C4820, MEMORY[0x277D29D58]);
        swift_allocError();
        v130(v72, v69, v70);
        v73 = _swift_stdlib_bridgeErrorToNSError();
        v127(v69, v70);
        *(v71 + 4) = v73;
        *v122 = v73;
        _os_log_impl(&dword_227FC3000, v125, v67, "FCC request failed due to asset error: %@", v71, 0xCu);
        sub_2280DF494(v122, &qword_27D81E3B0, &qword_22813AA20);
        MEMORY[0x22AAB28A0](v122, -1, -1);
        MEMORY[0x22AAB28A0](v71, -1, -1);
      }

      else
      {

        v127(v69, v70);
      }

      v97 = *(v0 + 224);
      v98 = *(v0 + 184);
      sub_2280DE238(&qword_2813C4820, MEMORY[0x277D29D58]);
      v99 = swift_allocError();
      v128(v100, v97, v98);
      v101 = 0;
    }

    else
    {
      if (qword_2813C49E0[0] != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 224);
      v16 = *(v0 + 200);
      v17 = *(v0 + 184);
      v18 = sub_22813882C();
      __swift_project_value_buffer(v18, qword_2813C8A20);
      v130(v16, v15, v17);
      v19 = sub_22813880C();
      v20 = sub_2281396DC();
      v21 = os_log_type_enabled(v19, v20);
      v23 = *(v0 + 192);
      v22 = *(v0 + 200);
      v24 = *(v0 + 184);
      if (v21)
      {
        v25 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        *v25 = 138412290;
        sub_2280DE238(&qword_2813C4820, MEMORY[0x277D29D58]);
        swift_allocError();
        v130(v26, v22, v24);
        v27 = _swift_stdlib_bridgeErrorToNSError();
        v28 = v24;
        v29 = *(v23 + 8);
        v29(v22, v28);
        *(v25 + 4) = v27;
        *v123 = v27;
        _os_log_impl(&dword_227FC3000, v19, v20, "FCC request failed due to model manager error: %@", v25, 0xCu);
        sub_2280DF494(v123, &qword_27D81E3B0, &qword_22813AA20);
        MEMORY[0x22AAB28A0](v123, -1, -1);
        MEMORY[0x22AAB28A0](v25, -1, -1);
      }

      else
      {

        v105 = v24;
        v29 = *(v23 + 8);
        v29(v22, v105);
      }

      v107 = *(v0 + 216);
      v106 = *(v0 + 224);
      v108 = *(v0 + 184);
      sub_2280DE238(&qword_2813C4820, MEMORY[0x277D29D58]);
      v99 = swift_allocError();
      v128(v109, v106, v108);
      v29(v107, v108);
      v101 = 1;
    }

LABEL_35:

    v111 = *(v0 + 224);
    v110 = *(v0 + 232);
    v113 = *(v0 + 208);
    v112 = *(v0 + 216);
    v114 = *(v0 + 200);
    v116 = *(v0 + 168);
    v115 = *(v0 + 176);
    v117 = *(v0 + 160);

    v118 = *(v0 + 8);

    return v118(v99, v101);
  }

  v30 = (v0 + 120);
  v31 = *(v0 + 176);
  v32 = *(v0 + 144);

  *(v0 + 120) = v7;
  v33 = v7;
  if (swift_dynamicCast())
  {
    v34 = v0 + 16;
    v35 = *(v0 + 168);
    v36 = *(v0 + 176);
    v38 = *(v0 + 144);
    v37 = *(v0 + 152);

    v129 = *(v37 + 32);
    v129(v35, v36, v38);
    if (qword_2813C49E0[0] != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 160);
    v40 = *(v0 + 168);
    v42 = *(v0 + 144);
    v41 = *(v0 + 152);
    v43 = *(v0 + 128);
    v44 = sub_22813882C();
    __swift_project_value_buffer(v44, qword_2813C8A20);
    sub_2280DE1DC(v43, v34);
    v45 = *(v41 + 16);
    v45(v39, v40, v42);
    v46 = sub_22813880C();
    v47 = sub_2281396DC();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 152);
    v50 = *(v0 + 160);
    v51 = *(v0 + 144);
    if (v48)
    {
      v124 = v47;
      v52 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v131 = v126;
      *v52 = 136446466;
      v119 = v45;
      v54 = *(v0 + 96);
      v53 = *(v0 + 104);
      __swift_project_boxed_opaque_existential_1((v0 + 72), v54);
      v120 = v46;
      v55 = v54;
      v30 = (v0 + 120);
      v56 = (*(v53 + 16))(v55, v53);
      v58 = v57;
      sub_22805D8E4(v34);
      v59 = sub_227FCC340(v56, v58, &v131);

      *(v52 + 4) = v59;
      *(v52 + 12) = 2114;
      sub_2280DE238(&qword_27D81E6E0, MEMORY[0x277D71F10]);
      swift_allocError();
      v119(v60, v50, v51);
      v61 = _swift_stdlib_bridgeErrorToNSError();
      (*(v49 + 8))(v50, v51);
      *(v52 + 14) = v61;
      *v121 = v61;
      _os_log_impl(&dword_227FC3000, v120, v124, "PromptTemplateRenderError encountered for FCC request: %{public}s, error: %{public}@", v52, 0x16u);
      sub_2280DF494(v121, &qword_27D81E3B0, &qword_22813AA20);
      MEMORY[0x22AAB28A0](v121, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm_2(v126);
      MEMORY[0x22AAB28A0](v126, -1, -1);
      MEMORY[0x22AAB28A0](v52, -1, -1);
    }

    else
    {

      (*(v49 + 8))(v50, v51);
      sub_22805D8E4(v34);
    }

    v102 = *(v0 + 168);
    v103 = *(v0 + 144);
    sub_2280DE238(&qword_27D81E6E0, MEMORY[0x277D71F10]);
    v99 = swift_allocError();
    v129(v104, v102, v103);
    v101 = 0;
    v2 = v30;
    goto LABEL_35;
  }

  if (qword_2813C49E0[0] != -1)
  {
    swift_once();
  }

  v74 = *(v0 + 256);
  v75 = sub_22813882C();
  __swift_project_value_buffer(v75, qword_2813C8A20);
  v76 = v74;
  v77 = sub_22813880C();
  v78 = sub_2281396DC();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = *(v0 + 256);
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v80 = 138412290;
    v82 = v79;
    v83 = _swift_stdlib_bridgeErrorToNSError();
    *(v80 + 4) = v83;
    *v81 = v83;
    _os_log_impl(&dword_227FC3000, v77, v78, "FCC request failed due to unknown error: %@", v80, 0xCu);
    sub_2280DF494(v81, &qword_27D81E3B0, &qword_22813AA20);
    MEMORY[0x22AAB28A0](v81, -1, -1);
    MEMORY[0x22AAB28A0](v80, -1, -1);
  }

  v84 = *(v0 + 256);
  v86 = *(v0 + 224);
  v85 = *(v0 + 232);
  v88 = *(v0 + 208);
  v87 = *(v0 + 216);
  v89 = *(v0 + 200);
  v91 = *(v0 + 168);
  v90 = *(v0 + 176);
  v92 = v77;
  v93 = *(v0 + 160);

  swift_willThrow();

  v94 = *(v0 + 8);
  v95 = *(v0 + 256);

  return v94();
}

uint64_t sub_2280DE180()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2280DE238(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2280DE280(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v98 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A0, &unk_22813C6D0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v104 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v101 = &v98 - v11;
  v106 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig(0);
  v102 = *(v106 - 8);
  v12 = *(v102 + 64);
  v14 = MEMORY[0x28223BE20](v106, v13);
  v103 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v100 = &v98 - v17;
  v18 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v107 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A8, &unk_22813C6E0);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23 - 8, v25);
  v28 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v98 - v30;
  v105 = *a3;
  v32 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKUseCaseSafetyConfig(0) + 28);
  v99 = a2;
  sub_2280DF42C(a2 + v32, v31, &qword_27D81E9A8, &unk_22813C6E0);
  v33 = *(v19 + 48);
  LODWORD(a3) = v33(v31, 1, v18);
  sub_2280DF494(v31, &qword_27D81E9A8, &unk_22813C6E0);
  if (a3 == 1)
  {
    LODWORD(v106) = 0;
    v34 = 0;
LABEL_37:
    v85 = objc_opt_self();

    if (qword_2813C4620 != -1)
    {
      swift_once();
    }

    if (byte_2813C4629 == 1)
    {
      if (qword_27D81E2A0 != -1)
      {
        swift_once();
      }

      v86 = &off_27D81EDB0;
    }

    else
    {
      if (qword_2813C76F0 != -1)
      {
        swift_once();
      }

      v86 = &qword_2813C76F8;
    }

    v87 = *(*v86 + 872);
    v88 = *(*v86 + 880);
    v89 = *(*v86 + 888);
    v90 = *(*v86 + 896);
    v91 = *(*v86 + 2208);

    if (qword_2813C4630 != -1)
    {
      swift_once();
    }

    if (byte_2813C4638 == 1)
    {
      v89(v108, v91);

      v88 = LOBYTE(v108[0]);
    }

    else
    {
    }

    if (v88 != 2)
    {
      if (v88)
      {
        v92 = v98[3];
        v93 = v98[4];
        __swift_project_boxed_opaque_existential_1(v98, v92);
        v34 = sub_2280A0FF0(v92, v93) ^ 1;
      }

      else
      {
        v34 = 0;
      }
    }

    return v106 | v34 & 1;
  }

  sub_2280DF42C(v99 + v32, v28, &qword_27D81E9A8, &unk_22813C6E0);
  if (v33(v28, 1, v18) == 1)
  {
    v35 = v107;
    sub_228137D6C();
    v36 = v102;
    (*(v102 + 56))(v35 + *(v18 + 20), 1, 1, v106);
    v37 = v33(v28, 1, v18);
    v38 = v103;
    v39 = v101;
    if (v37 != 1)
    {
      sub_2280DF494(v28, &qword_27D81E9A8, &unk_22813C6E0);
    }
  }

  else
  {
    v35 = v107;
    sub_2280DF5B8(v28, v107, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
    v36 = v102;
    v38 = v103;
    v39 = v101;
  }

  v40 = *(v18 + 20);
  sub_2280DF42C(v35 + v40, v39, &qword_27D81E9A0, &unk_22813C6D0);
  v41 = *(v36 + 48);
  v42 = v106;
  v43 = v41(v39, 1, v106);
  v44 = MEMORY[0x277D84F90];
  if (v43 == 1)
  {
    v45 = v100;
    *v100 = 0;
    *(v45 + 1) = 0;
    v45[16] = 1;
    *(v45 + 3) = v44;
    *(v45 + 4) = v44;
    v46 = &v45[*(v42 + 32)];
    sub_228137D6C();
    if (v41(v39, 1, v42) != 1)
    {
      sub_2280DF494(v39, &qword_27D81E9A0, &unk_22813C6D0);
    }
  }

  else
  {
    v45 = v100;
    sub_2280DF5B8(v39, v100, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  }

  v47 = v45;
  v48 = *(v45 + 4);

  sub_2280DF558(v47, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
  v49 = v104;
  sub_2280DF42C(v107 + v40, v104, &qword_27D81E9A0, &unk_22813C6D0);
  if (v41(v49, 1, v42) == 1)
  {
    *v38 = 0;
    *(v38 + 8) = 0;
    *(v38 + 16) = 1;
    *(v38 + 24) = v44;
    *(v38 + 32) = v44;
    v50 = v38 + *(v42 + 32);
    sub_228137D6C();
    v51 = v41(v49, 1, v42);
    v52 = v105;
    if (v51 != 1)
    {
      sub_2280DF494(v49, &qword_27D81E9A0, &unk_22813C6D0);
    }
  }

  else
  {
    sub_2280DF5B8(v49, v38, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);
    v52 = v105;
  }

  v53 = *(v38 + 24);

  sub_2280DF558(v38, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig.FactualConsistencyConfig);

  v55 = sub_227FED110(v54);

  v57 = sub_227FED110(v56);

  v58 = sub_2280DCE18(v57, v55);

  if (v58)
  {
    if (qword_2813C6528 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v59 = off_2813C6530;
    if (*(off_2813C6530 + 2) && (v60 = sub_22808CFAC(v52), (v61 & 1) != 0))
    {
      v62 = v59[7] + 16 * v60;
      v63 = *v62;
      v64 = *(v62 + 8);
      swift_endAccess();
      v34 = sub_2280DCD90(v63, v64, v53);
    }

    else
    {
      swift_endAccess();
      v34 = 0;
    }

    swift_beginAccess();
    v78 = off_2813C6530;
    if (*(off_2813C6530 + 2) && (v79 = sub_22808CFAC(v52), (v80 & 1) != 0))
    {
      v81 = v78[7] + 16 * v79;
      v82 = *v81;
      v83 = *(v81 + 8);
      swift_endAccess();
      LOBYTE(v82) = sub_2280DCD90(v82, v83, v48);

      if (v82)
      {
        v84 = 256;
      }

      else
      {
        v84 = 0;
      }

      LODWORD(v106) = v84;
    }

    else
    {
      swift_endAccess();

      LODWORD(v106) = 0;
    }

    sub_2280DF558(v107, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
    goto LABEL_37;
  }

  if (qword_2813C49E0[0] != -1)
  {
    swift_once();
  }

  v65 = sub_22813882C();
  __swift_project_value_buffer(v65, qword_2813C8A20);
  sub_2280DF4F4(v98, v108);
  v66 = sub_22813880C();
  v67 = sub_2281396DC();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v111 = v69;
    *v68 = 136446466;
    v71 = v109;
    v70 = v110;
    __swift_project_boxed_opaque_existential_1(v108, v109);
    v72 = (*(*(v70 + 8) + 8))(v71);
    v74 = v73;
    __swift_destroy_boxed_opaque_existential_0Tm_2(v108);
    v75 = sub_227FCC340(v72, v74, &v111);

    *(v68 + 4) = v75;
    *(v68 + 12) = 2082;
    if (v52 <= 1)
    {
      if (v52)
      {
        v76 = 0xE700000000000000;
        v77 = 0x656E694C706F74;
      }

      else
      {
        v76 = 0xE500000000000000;
        v77 = 0x6369706F74;
      }
    }

    else if (v52 == 2)
    {
      v76 = 0xE800000000000000;
      v77 = 0x736973706F6E7973;
    }

    else if (v52 == 3)
    {
      v76 = 0xEE0073747065636ELL;
      v77 = 0x6F436C6175736976;
    }

    else
    {
      v76 = 0xED0000656E694C70;
      v77 = 0x6F546C6175736976;
    }

    v95 = v107;
    v96 = sub_227FCC340(v77, v76, &v111);

    *(v68 + 14) = v96;
    _os_log_impl(&dword_227FC3000, v66, v67, "Invalid configuration for Factual Consistency Classifier for usecase: %{public}s, style: %{public}s.", v68, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v69, -1, -1);
    MEMORY[0x22AAB28A0](v68, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm_2(v108);
    v95 = v107;
  }

  sub_227FE4988();
  swift_allocError();
  *v97 = 5;
  swift_willThrow();
  return sub_2280DF558(v95, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyInternalConfig);
}

uint64_t sub_2280DEE74(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v7 = sub_22813882C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a3;
  v14 = sub_22801ED18();
  if (v14 == 2)
  {
    v44[3] = &type metadata for FeatureFlag;
    v44[4] = sub_2280DF38C();
    v15 = sub_2281371FC();
    __swift_destroy_boxed_opaque_existential_0Tm_2(v44);
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v14 & 1) == 0)
  {
    return 0;
  }

  LOBYTE(v44[0]) = v13;
  result = sub_2280DE280(a1, a2, v44);
  if (!v3)
  {
    if (result)
    {
      v17 = BYTE1(result);

      if (qword_2813C4620 != -1)
      {
        swift_once();
      }

      v18 = a1[3];
      v19 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v18);
      RequestInfo.sessionInfo.getter(v18, v19, v44);
      type metadata accessor for FactualConsistencyClassifier();
      memset(v42, 0, sizeof(v42));
      v43 = 0;
      v20 = swift_allocObject();
      sub_2280DF4F4(v44, v41);
      sub_2280DF42C(v42, v40, &qword_27D81E348, &qword_22813A7F0);
      v21 = type metadata accessor for GMSFactualConsistencyClassifierModelEngine();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      sub_227FD52A8(v41, v40);
      v39 = v38;
      sub_2280DF494(v42, &qword_27D81E348, &qword_22813A7F0);
      __swift_destroy_boxed_opaque_existential_0Tm_2(v44);
      result = v20;
      *(v20 + 24) = v39;
      *(v20 + 16) = v17 & 1;
    }

    else
    {
      if (qword_2813C49E0[0] != -1)
      {
        swift_once();
      }

      v24 = __swift_project_value_buffer(v7, qword_2813C8A20);
      if (qword_2813C49C8 != -1)
      {
        swift_once();
      }

      if ((byte_2813C49D0 & 1) == 0)
      {
        if (qword_2813C4988 != -1)
        {
          swift_once();
        }

        v24 = __swift_project_value_buffer(v7, qword_2813C4990);
      }

      (*(v8 + 16))(v12, v24, v7);
      v25 = sub_22813880C();
      v26 = sub_2281396BC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v44[0] = v45;
        v28 = 0xE500000000000000;
        v29 = 0x6369706F74;
        *v27 = 136446210;
        v30 = 0xE800000000000000;
        v31 = 0x736973706F6E7973;
        v32 = 0xEE0073747065636ELL;
        v33 = 0x6F436C6175736976;
        if (v13 != 3)
        {
          v33 = 0x6F546C6175736976;
          v32 = 0xED0000656E694C70;
        }

        if (v13 != 2)
        {
          v31 = v33;
          v30 = v32;
        }

        if (v13)
        {
          v29 = 0x656E694C706F74;
          v28 = 0xE700000000000000;
        }

        if (v13 <= 1)
        {
          v34 = v29;
        }

        else
        {
          v34 = v31;
        }

        if (v13 <= 1)
        {
          v35 = v28;
        }

        else
        {
          v35 = v30;
        }

        v36 = sub_227FCC340(v34, v35, v44);

        *(v27 + 4) = v36;
        _os_log_impl(&dword_227FC3000, v25, v26, "Factual consistency classifier didn't run because it is not enabled for style %{public}s.", v27, 0xCu);
        v37 = v45;
        __swift_destroy_boxed_opaque_existential_0Tm_2(v45);
        MEMORY[0x22AAB28A0](v37, -1, -1);
        MEMORY[0x22AAB28A0](v27, -1, -1);
      }

      (*(v8 + 8))(v12, v7);
      return 0;
    }
  }

  return result;
}

unint64_t sub_2280DF38C()
{
  result = qword_2813C8090;
  if (!qword_2813C8090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C8090);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_2(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2280DF42C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2280DF494(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2280DF4F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2280DF558(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2280DF5B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2280DF620()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2280DF668(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2280DF6B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2280DF708()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2280DF764(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2280DF7AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2280DF810()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2280DF870()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2280DF8E4()
{
  v1 = *v0;
  sub_228139AAC();
  MEMORY[0x22AAB2060](v1);
  return sub_228139AEC();
}

uint64_t sub_2280DF958()
{
  v1 = *v0;
  sub_228139AAC();
  MEMORY[0x22AAB2060](v1);
  return sub_228139AEC();
}

uint64_t sub_2280DF99C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2280DF9D4(void *a1, void *a2)
{
  sub_227FE77E0(a1, v18);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_227FE77E0(a2, v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v5 = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v17);
  if (DynamicType == v5)
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v7);
    v9 = (*(v8 + 24))(v7, v8);
    v11 = v10;
    v12 = a2[3];
    v13 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v12);
    if (v9 == (*(v13 + 24))(v12, v13) && v11 == v14)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_2281399BC();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_2280DFB60()
{
  sub_228139AAC();
  MEMORY[0x22AAB2060](*(v0 + 40));
  return sub_228139AEC();
}

uint64_t sub_2280DFBAC()
{
  sub_228139AAC();
  sub_2280DFB34();
  return sub_228139AEC();
}

uint64_t getEnumTagSinglePayload for ErrorContextPropertyCodingFormat(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ErrorContextPropertyCodingFormat(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2280DFD70()
{
  result = qword_27D81F178;
  if (!qword_27D81F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D81F178);
  }

  return result;
}

uint64_t sub_2280DFDC4(void *a1)
{
  sub_22813988C();
  MEMORY[0x22AAB1970](0xD000000000000014, 0x80000002281441C0);
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 16))(v2, v3);
  MEMORY[0x22AAB1970](v4);

  MEMORY[0x22AAB1970](0xD000000000000015, 0x80000002281443F0);
  v6 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v7 = (*(*(v5 + 8) + 8))(v6);
  MEMORY[0x22AAB1970](v7);

  MEMORY[0x22AAB1970](0xD00000000000001FLL, 0x8000000228144410);
  v9 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v10 = (*(*(v8 + 8) + 16))(v9);
  MEMORY[0x22AAB1970](v10);

  MEMORY[0x22AAB1970](0xD00000000000001BLL, 0x8000000228144430);
  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v15 = (*(*(v11 + 8) + 24))(v12);
  v13 = sub_22813998C();
  MEMORY[0x22AAB1970](v13);

  MEMORY[0x22AAB1970](0xD000000000000015, 0x8000000228146590);
  return HIDWORD(v15);
}

uint64_t sub_2280DFFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31[3] = a3;
  v31[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  sub_228004954(v31, v30);
  sub_228004954(v31, v29);
  sub_228004954(v31, v28);
  sub_228004954(v31, v27);
  sub_22810A6C8();
  sub_22810A6D0();
  v8 = sub_22813880C();
  v9 = sub_2281396BC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136447234;
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    v12 = (*(a4 + 16))(a3, a4);
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1(v30);
    v15 = sub_227FCC340(v12, v14, &v26);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    v16 = *(a4 + 8);
    v17 = v16[1](a3, v16);
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1(v29);
    v20 = sub_227FCC340(v17, v19, &v26);

    *(v10 + 14) = v20;
    *(v10 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    v21 = v16[2](a3, v16);
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1(v28);
    v24 = sub_227FCC340(v21, v23, &v26);

    *(v10 + 24) = v24;
    *(v10 + 32) = 1026;
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    LODWORD(v24) = v16[3](a3, v16);
    __swift_destroy_boxed_opaque_existential_1(v27);
    *(v10 + 34) = v24;
    *(v10 + 38) = 1026;
    *(v10 + 40) = qos_class_self();
    _os_log_impl(&dword_227FC3000, v8, v9, "Received request [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d, QoS: 0x%{public}x]", v10, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v11, -1, -1);
    MEMORY[0x22AAB28A0](v10, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v27);

    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_2280E0308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31[3] = a3;
  v31[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  sub_228004954(v31, v30);
  sub_228004954(v31, v29);
  sub_228004954(v31, v28);
  sub_228004954(v31, v27);
  v8 = sub_22813880C();
  v9 = sub_2281396BC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136446978;
    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    v12 = (*(a4 + 16))(a3, a4);
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1(v30);
    v15 = sub_227FCC340(v12, v14, &v26);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2082;
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    v16 = *(a4 + 8);
    v17 = v16[1](a3, v16);
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1(v29);
    v20 = sub_227FCC340(v17, v19, &v26);

    *(v10 + 14) = v20;
    *(v10 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    v21 = v16[2](a3, v16);
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1(v28);
    v24 = sub_227FCC340(v21, v23, &v26);

    *(v10 + 24) = v24;
    *(v10 + 32) = 1026;
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    LODWORD(v24) = v16[3](a3, v16);
    __swift_destroy_boxed_opaque_existential_1(v27);
    *(v10 + 34) = v24;
    _os_log_impl(&dword_227FC3000, v8, v9, "Successfully handled [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d]", v10, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v11, -1, -1);
    MEMORY[0x22AAB28A0](v10, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v27);

    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_2280E0610(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v39[3] = a4;
  v39[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a2, a4);
  sub_228004954(v39, v38);
  sub_228004954(v39, v37);
  sub_228004954(v39, v36);
  sub_228004954(v39, v35);
  v10 = a3;
  v11 = sub_22813880C();
  v12 = sub_2281396DC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34 = v14;
    *v13 = 136447234;
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    v15 = (*(a5 + 16))(a4, a5);
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_1(v38);
    v18 = sub_227FCC340(v15, v17, &v34);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    __swift_project_boxed_opaque_existential_1(v37, v37[3]);
    v19 = *(a5 + 8);
    v20 = v19[1](a4, v19);
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1(v37);
    v23 = sub_227FCC340(v20, v22, &v34);

    *(v13 + 14) = v23;
    *(v13 + 22) = 2082;
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    v24 = v19[2](a4, v19);
    v26 = v25;
    __swift_destroy_boxed_opaque_existential_1(v36);
    v27 = sub_227FCC340(v24, v26, &v34);

    *(v13 + 24) = v27;
    *(v13 + 32) = 1026;
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    LODWORD(v27) = v19[3](a4, v19);
    __swift_destroy_boxed_opaque_existential_1(v35);
    *(v13 + 34) = v27;
    *(v13 + 38) = 2082;
    swift_getErrorValue();
    v28 = Error.loggingDescription.getter(v32, v33);
    v30 = sub_227FCC340(v28, v29, &v34);

    *(v13 + 40) = v30;
    _os_log_impl(&dword_227FC3000, v11, v12, "Request failed [requestIdentifier: %{public}s, useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d] with error: %{public}s", v13, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v14, -1, -1);
    MEMORY[0x22AAB28A0](v13, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v35);

    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.disallowedWordCandidates.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig(0) + 24);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig(0) + 24);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray.variants.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(0) + 20);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(0) + 20);
  v4 = sub_228137D7C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(0) + 20);
  return sub_228137D6C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig(0) + 24);
  return sub_228137D6C();
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_228137F4C(), !v1))
  {
    if (!*(*(v0 + 8) + 16) || (type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(0), sub_227FC755C(&qword_2813C5030, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray), result = sub_228137F7C(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig(0) + 24);
      return sub_228137D5C();
    }
  }

  return result;
}

uint64_t static Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (sub_228037C98(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig(0) + 24);
  sub_228137D7C();
  sub_227FC755C(&qword_27D81E638, MEMORY[0x277D216C8]);
  return sub_22813926C() & 1;
}

uint64_t sub_2280E0FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2280E1050(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2280E10C4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_87;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_2280E1104(uint64_t a1, uint64_t a2)
{
  v4 = sub_227FC755C(&qword_27D81F1B8, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280E1180(uint64_t a1)
{
  v2 = sub_227FC755C(qword_2813C4F90, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280E11EC()
{
  sub_227FC755C(qword_2813C4F90, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig);

  return sub_228137EDC();
}

uint64_t sub_2280E1268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_228037C98(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 24);
  sub_228137D7C();
  sub_227FC755C(&qword_27D81E638, MEMORY[0x277D216C8]);
  return sub_22813926C() & 1;
}

uint64_t sub_2280E1320()
{
  result = MEMORY[0x22AAB1970](0x72724164726F572ELL, 0xEA00000000007961);
  qword_27D81F180 = 0xD000000000000039;
  *algn_27D81F188 = 0x8000000228148530;
  return result;
}

uint64_t static Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray.protoMessageName.getter()
{
  if (qword_27D81E2A8 != -1)
  {
    swift_once();
  }

  v0 = qword_27D81F180;

  return v0;
}

uint64_t sub_2280E13F8()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5040);
  __swift_project_value_buffer(v0, qword_2813C5040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813A4B0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "variants";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_228137F9C();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_228137FAC();
}

uint64_t sub_2280E1588@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_228137FBC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_228137DCC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_228137E5C();
    }
  }

  return result;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_228137F5C(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(0) + 20);
    return sub_228137D5C();
  }

  return result;
}

uint64_t static Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_228037F4C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(0) + 20);
  sub_228137D7C();
  sub_227FC755C(&qword_27D81E638, MEMORY[0x277D216C8]);
  return sub_22813926C() & 1;
}

uint64_t sub_2280E180C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_228139AAC();
  a1(0);
  sub_227FC755C(a2, a3);
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_2280E1894@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 20);
  return sub_228137D6C();
}

uint64_t sub_2280E18C0()
{
  if (qword_27D81E2A8 != -1)
  {
    swift_once();
  }

  v0 = qword_27D81F180;

  return v0;
}

uint64_t sub_2280E1928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2280E199C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_228137D7C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2280E1A10(uint64_t a1, uint64_t a2))()
{
  result = nullsub_88;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_2280E1A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_227FC755C(&qword_27D81F1B0, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_2280E1B08(uint64_t a1)
{
  v2 = sub_227FC755C(&qword_2813C5030, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2280E1B74()
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_2280E1BCC()
{
  sub_227FC755C(&qword_2813C5030, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);

  return sub_228137EDC();
}

uint64_t sub_2280E1C48()
{
  sub_228139AAC();
  sub_2281391EC();
  return sub_228139AEC();
}

uint64_t sub_2280E1E94(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_228037F4C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_228137D7C();
  sub_227FC755C(&qword_27D81E638, MEMORY[0x277D216C8]);
  return sub_22813926C() & 1;
}

void sub_2280E1F64()
{
  sub_2280E1FF8();
  if (v0 <= 0x3F)
  {
    sub_228137D7C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2280E1FF8()
{
  if (!qword_2813C46A0)
  {
    type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(255);
    v0 = sub_22813956C();
    if (!v1)
    {
      atomic_store(v0, &qword_2813C46A0);
    }
  }
}

void sub_2280E2078()
{
  sub_227FFD494();
  if (v0 <= 0x3F)
  {
    sub_228137D7C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t SKTextMessageThread.preprocess(sharedSessionData:)(uint64_t a1)
{
  v2[17] = a1;
  v3 = sub_22813716C();
  v2[18] = v3;
  v4 = *(v3 - 8);
  v2[19] = v4;
  v5 = *(v4 + 64) + 15;
  v2[20] = swift_task_alloc();
  v6 = sub_228136CDC();
  v2[21] = v6;
  v7 = *(v6 - 8);
  v2[22] = v7;
  v8 = *(v7 + 64) + 15;
  v2[23] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB50, &qword_22813DAA0) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v10 = sub_228138E6C();
  v2[26] = v10;
  v11 = *(v10 - 8);
  v2[27] = v11;
  v12 = *(v11 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v13 = sub_228138AAC();
  v2[31] = v13;
  v14 = *(v13 - 8);
  v2[32] = v14;
  v15 = *(v14 + 64) + 15;
  v16 = swift_task_alloc();
  v17 = *v1;
  v2[33] = v16;
  v2[34] = v17;

  return MEMORY[0x2822009F8](sub_2280E2360, 0, 0);
}

uint64_t sub_2280E2360()
{
  v241 = v1;
  v3 = v1;
  v4 = v1[34];
  v213 = *(v4 + 16);
  if (!v213)
  {
    v128 = swift_allocObject();
    *(v128 + 16) = 10;
    *(v128 + 24) = 0;
    *(v128 + 32) = 0;
    v129 = sub_227FF96D4(0, 0xD000000000000085, 0x80000002281485A0, 18, sub_2280E4FBC);
    sub_227FDB3CC();
    swift_allocError();
    *v130 = 10;
    *(v130 + 8) = v129;
    swift_willThrow();
    goto LABEL_114;
  }

  v209 = 0;
  v210 = 0;
  v211 = 0;
  v5 = 0;
  v6 = v1[32];
  v7 = MEMORY[0x277D84F90];
  v1[12] = MEMORY[0x277D84F90];
  v216 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v233 = (v1[27] + 8);
  v226 = (v1[22] + 8);
  v231 = v1[27];
  v217 = v6;
  v215 = (v6 + 8);
  v224 = v1[24];
  v208 = v1[17];
  v225 = *MEMORY[0x277D4B3A8];
  v220 = *MEMORY[0x277D4B3A0];
  v214 = *MEMORY[0x277D4B3B0];
  v8 = v7;
  v9 = v7;
  v228 = v1;
  v212 = v4;
  do
  {
    if (v5 >= *(v4 + 16))
    {
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    v218 = v5;
    v219 = v7;
    v10 = v3[30];
    v11 = v3[26];
    (*(v217 + 16))(v3[33], v216 + *(v217 + 72) * v5, v3[31]);
    sub_228138A7C();
    v12 = sub_228045C1C(v10);
    v14 = v13;
    v230 = *v233;
    (*v233)(v10, v11);
    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_2280A88EC(v15);
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    v221 = v18;
    v222 = v16;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (!v19)
    {
      v20 = objc_opt_self();

      if (qword_2813C4620 != -1)
      {
        swift_once();
      }

      v21 = v8;
      if (byte_2813C4629 == 1)
      {
        v22 = &off_27D81EDB0;
        if (qword_27D81E2A0 != -1)
        {
          swift_once();
          v22 = &off_27D81EDB0;
        }
      }

      else
      {
        v22 = &qword_2813C76F8;
        if (qword_2813C76F0 != -1)
        {
          swift_once();
          v22 = &qword_2813C76F8;
        }
      }

      v23 = *(*v22 + 1640);
      v24 = *(*v22 + 1648);
      v25 = *(*v22 + 1656);
      v26 = *(*v22 + 1664);
      v27 = *(*v22 + 2208);

      if (qword_2813C4630 != -1)
      {
        swift_once();
      }

      if (byte_2813C4638 == 1)
      {
        v25(v239, v27);

        v8 = v21;
        v18 = v221;
        if ((v239[0] & 1) == 0)
        {
          goto LABEL_117;
        }
      }

      else
      {

        v8 = v21;
        v18 = v221;
        if (!v24)
        {
LABEL_117:
          v141 = v3[33];
          v142 = v3[31];

          v143 = v3[12];

          v144 = swift_allocObject();
          v145 = 12;
          *(v144 + 16) = 12;
          *(v144 + 24) = 0;
          *(v144 + 32) = 0;
          v146 = sub_2280E4FB8;
          v147 = 38;
          goto LABEL_119;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2281338C0(0, *(v8 + 2) + 1, 1, v8);
    }

    v29 = *(v8 + 2);
    v28 = *(v8 + 3);
    v7 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v8 = sub_2281338C0((v28 > 1), v29 + 1, 1, v8);
    }

    v223 = v8;
    v30 = v3[33];
    *(v8 + 2) = v7;
    v31 = &v8[16 * v29];
    *(v31 + 4) = v222;
    *(v31 + 5) = v18;
    v32 = *(sub_2281389EC() + 16);

    if (v32)
    {
      goto LABEL_41;
    }

    v33 = objc_opt_self();

    if (qword_2813C4620 != -1)
    {
      swift_once();
    }

    if (byte_2813C4629 == 1)
    {
      v34 = &off_27D81EDB0;
      if (qword_27D81E2A0 != -1)
      {
        swift_once();
        v34 = &off_27D81EDB0;
      }
    }

    else
    {
      v34 = &qword_2813C76F8;
      if (qword_2813C76F0 != -1)
      {
        swift_once();
        v34 = &qword_2813C76F8;
      }
    }

    v7 = *v34;
    v35 = *(*v34 + 1640);
    v36 = *(*v34 + 1648);
    v37 = *(*v34 + 1656);
    v38 = *(*v34 + 1664);
    v39 = *(*v34 + 2208);

    if (qword_2813C4630 != -1)
    {
      swift_once();
    }

    if (byte_2813C4638 != 1)
    {

      if (v36)
      {
        goto LABEL_41;
      }

LABEL_118:
      v141 = v3[33];
      v142 = v3[31];

      v148 = v3[12];

      v149 = swift_allocObject();
      v145 = 11;
      *(v149 + 16) = 11;
      *(v149 + 24) = 0;
      *(v149 + 32) = 0;
      v146 = sub_2280E4FB4;
      v147 = 44;
LABEL_119:
      v150 = sub_227FF96D4(0, 0xD000000000000085, 0x80000002281485A0, v147, v146);
      sub_227FDB3CC();
      swift_allocError();
      *v151 = v145;
      *(v151 + 8) = v150;
      swift_willThrow();
      (*v215)(v141, v142);
LABEL_114:
      v131 = v3[33];
      v132 = v3[29];
      v133 = v3[30];
      v134 = v3[28];
      v136 = v3[24];
      v135 = v3[25];
      v137 = v3[23];
      v138 = v3[20];

      v139 = v3[1];

      return v139();
    }

    v37(v239, v39);

    if ((v239[0] & 1) == 0)
    {
      goto LABEL_118;
    }

LABEL_41:
    v0 = v3[33];
    v40 = sub_2281389EC();
    v2 = v40;
    v229 = *(v40 + 16);
    if (v229)
    {
      v41 = 0;
      v42 = MEMORY[0x277D84F90];
      v227 = v40;
      do
      {
        if (v41 >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_136;
        }

        v235 = v42;
        (*(v231 + 16))(v3[29], v2 + ((*(v231 + 80) + 32) & ~*(v231 + 80)) + *(v231 + 72) * v41, v3[26]);
        v43 = sub_228138E5C();
        if (v44)
        {
          v45 = v43;
          v46 = v44;
          v47 = HIBYTE(v44) & 0xF;
          if ((v44 & 0x2000000000000000) == 0)
          {
            v47 = v43 & 0xFFFFFFFFFFFFLL;
          }

          if (v47)
          {
            goto LABEL_58;
          }
        }

        v48 = v3[29];
        v49 = v3[25];
        sub_228138E2C();
        v50 = sub_228138E3C();
        v51 = *(v50 - 8);
        if ((*(v51 + 48))(v49, 1, v50) == 1)
        {
          goto LABEL_50;
        }

        v52 = v3[24];
        sub_228045760(v3[25], v52);
        v53 = (*(v51 + 88))(v52, v50);
        if (v53 == v225 || v53 == v220)
        {
          v54 = v3[24];
        }

        else
        {
          v54 = v3[24];
          if (v53 != v214)
          {
            (*(v51 + 8))(v3[24], v50);
LABEL_50:
            v45 = 0;
            v46 = 0xE000000000000000;
            goto LABEL_55;
          }
        }

        (*(v51 + 96))(v54, v50);
        v45 = *v54;
        v46 = *(v224 + 8);
LABEL_55:
        sub_2280BB0A0(v3[25]);
        v55 = HIBYTE(v46) & 0xF;
        if ((v46 & 0x2000000000000000) == 0)
        {
          v55 = v45 & 0xFFFFFFFFFFFFLL;
        }

        if (!v55)
        {
          v120 = v3[33];
          v121 = v3[31];
          v122 = v3[29];
          v123 = v3[26];

          v230(v122, v123);

          v124 = v3[12];

          v125 = swift_allocObject();
          *(v125 + 16) = 11;
          *(v125 + 24) = 0;
          *(v125 + 32) = 0;
          v126 = sub_227FF96D4(0, 0xD000000000000085, 0x80000002281485A0, 49, sub_2280E4E6C);
          sub_227FDB3CC();
          swift_allocError();
          *v127 = 11;
          *(v127 + 8) = v126;
          swift_willThrow();
          (*v215)(v120, v121);
          goto LABEL_114;
        }

LABEL_58:
        v230(v3[29], v3[26]);
        v56 = sub_22813936C();
        v234 = v9;
        if (v56)
        {
          v57 = v56;
          v239[0] = MEMORY[0x277D84F90];
          sub_228043D00(0, v56 & ~(v56 >> 63), 0);
          if (v57 < 0)
          {
            __break(1u);
            goto LABEL_155;
          }

          v58 = v239[0];
          do
          {
            v59 = sub_22813945C();
            v61 = v60;
            if (sub_2281036C8(v59, v60))
            {

              v61 = 0xE100000000000000;
              v59 = 32;
            }

            v239[0] = v58;
            v63 = *(v58 + 16);
            v62 = *(v58 + 24);
            if (v63 >= v62 >> 1)
            {
              sub_228043D00((v62 > 1), v63 + 1, 1);
              v58 = v239[0];
            }

            *(v58 + 16) = v63 + 1;
            v64 = v58 + 16 * v63;
            *(v64 + 32) = v59;
            *(v64 + 40) = v61;
            sub_22813937C();
            --v57;
          }

          while (v57);
        }

        else
        {
          v58 = MEMORY[0x277D84F90];
        }

        v3 = v228;
        v65 = v228[23];
        v66 = v228[21];
        v228[13] = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EF18, &qword_228141340);
        sub_2280E4E78(&qword_2813C4688, &qword_27D81EF18, &qword_228141340);
        v228[10] = sub_22813946C();
        v228[11] = v67;
        sub_228136C8C();
        sub_227FDB420();
        v68 = sub_2281397AC();
        v70 = v69;
        (*v226)(v65, v66);

        v71 = HIBYTE(v70) & 0xF;
        if ((v70 & 0x2000000000000000) == 0)
        {
          v71 = v68 & 0xFFFFFFFFFFFFLL;
        }

        if (v71)
        {
          v72 = v68;
        }

        else
        {
          v72 = v45;
        }

        if (v71)
        {
          v0 = v70;
        }

        else
        {
          v0 = v46;
        }

        v42 = v235;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_2281338C0(0, *(v235 + 2) + 1, 1, v235);
        }

        v9 = v234;
        v74 = *(v42 + 2);
        v73 = *(v42 + 3);
        v2 = v227;
        if (v74 >= v73 >> 1)
        {
          v42 = sub_2281338C0((v73 > 1), v74 + 1, 1, v42);
        }

        *(v42 + 2) = v74 + 1;
        v75 = &v42[16 * v74];
        *(v75 + 4) = v72;
        *(v75 + 5) = v0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2281338C0(0, *(v234 + 2) + 1, 1, v234);
        }

        v77 = *(v9 + 2);
        v76 = *(v9 + 3);
        v7 = v77 + 1;
        if (v77 >= v76 >> 1)
        {
          v9 = sub_2281338C0((v76 > 1), v77 + 1, 1, v9);
        }

        ++v41;
        *(v9 + 2) = v7;
        v78 = &v9[16 * v77];
        *(v78 + 4) = v72;
        *(v78 + 5) = v0;
      }

      while (v41 != v229);
    }

    v79 = v3[33];
    v80 = v3[28];

    v81 = sub_2281389EC();
    sub_228138A7C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_228133B70(0, v81[2] + 1, 1, v81);
    }

    v8 = v223;
    v83 = v81[2];
    v82 = v81[3];
    if (v83 >= v82 >> 1)
    {
      v81 = sub_228133B70(v82 > 1, v83 + 1, 1, v81);
    }

    v84 = v3[33];
    v85 = v3[28];
    v86 = v3[26];
    v81[2] = v83 + 1;
    (*(v231 + 32))(v81 + ((*(v231 + 80) + 32) & ~*(v231 + 80)) + *(v231 + 72) * v83, v85, v86);

    v87 = sub_228138A6C();
    if (v88)
    {
      v0 = v88;
    }

    else
    {
      v87 = 0;
      v0 = 0xE000000000000000;
    }

    v89 = sub_2280A8A4C(v87, v0);

    if (v89)
    {
      (*v215)(v3[33], v3[31]);

      v7 = v219;
    }

    else
    {
      v90 = v3[33];
      v91 = sub_228138A6C();
      if (v92)
      {
        v93 = v92;
      }

      else
      {
        v91 = 0;
        v93 = 0xE000000000000000;
      }

      v236 = *(v208 + 208);
      v94 = sub_2280A7954(v91, v93, v208 + 160, v236);
      v96 = v95;

      v97 = sub_2280A8BD4(v94, v96);
      v98 = v3[33];
      v100 = v99;
      v101 = v97;

      v102 = sub_2281389FC();
      v103 = v3;
      v104 = sub_228042774(v102, v222, v221);
      v106 = v105;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB08, &unk_22813D960);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22813B030;
      *(inited + 32) = v101;
      *(inited + 40) = v100;
      *(inited + 48) = v104;
      *(inited + 56) = v106;

      sub_227FED308(inited);
      v2 = v101;
      v108 = sub_2280C0A78(v222, v221, v101, v100, v104, v106);
      v109 = v108;
      v7 = v110;
      if (v236)
      {
        v111 = v103[33];
        v112 = v108;
        v113 = *(sub_228138A8C() + 16);

        v114 = v113 != 0;
        KeyPath = swift_getKeyPath();
        os_unfair_lock_lock((v236 + 16));
        v240 = MEMORY[0x277D839B0];
        LOBYTE(v239[0]) = v114;

        sub_2280449FC(v239, KeyPath, (v236 + 24));
        v109 = v112;
        os_unfair_lock_unlock((v236 + 16));
      }

      v0 = sub_22813936C();

      if (__OFADD__(v211, v0))
      {
        goto LABEL_180;
      }

      v211 += v0;
      v0 = sub_22813936C();

      if (__OFADD__(v210, v0))
      {
        goto LABEL_181;
      }

      v210 += v0;
      v0 = sub_22813936C();

      if (__OFADD__(v209, v0))
      {
        goto LABEL_182;
      }

      v2 = v109;
      v116 = v7;
      v209 += v0;
      v7 = v219;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2281338C0(0, *(v219 + 2) + 1, 1, v219);
      }

      v3 = v228;
      v8 = v223;
      v118 = *(v7 + 16);
      v117 = *(v7 + 24);
      v0 = v118 + 1;
      if (v118 >= v117 >> 1)
      {
        v7 = sub_2281338C0((v117 > 1), v118 + 1, 1, v7);
      }

      (*v215)(v228[33], v228[31]);
      *(v7 + 16) = v0;
      v119 = (v7 + 16 * v118);
      *(v119 + 4) = v2;
      *(v119 + 5) = v116;
    }

    v5 = v218 + 1;
    v3[35] = v7;
    v4 = v212;
  }

  while (v218 + 1 != v213);
  v0 = v3[12];
  sub_2280A8554(v0, (v208 + 160));
  v152 = *(v9 + 2);
  v153 = *(v8 + 2);
  v154 = __OFADD__(v152, v153);
  v155 = v152 + v153;
  if (v154)
  {
LABEL_186:
    __break(1u);
LABEL_187:
    swift_once();
    goto LABEL_157;
  }

  v156 = v155 & ~(v155 >> 63);

  v42 = MEMORY[0x277D84F90];
  v239[0] = sub_2281338C0(0, v156, 0, MEMORY[0x277D84F90]);
  v0 = v239;
  sub_227FED428(v8);
  sub_227FED308(v9);
  v157 = *(v239[0] + 16);
  if (v157)
  {
    v7 = 0;
    v158 = v239[0] + 40;
    v232 = v239[0] + 40;
LABEL_123:
    v159 = (v158 + 16 * v7);
    v160 = v7;
    while (v160 < v157)
    {
      v7 = v160 + 1;
      if (__OFADD__(v160, 1))
      {
        goto LABEL_185;
      }

      v162 = *(v159 - 1);
      v161 = *v159;
      v163 = sub_2281392FC();
      v2 = v164;

      v0 = sub_2280BD990(v239, v163, v2);

      if (v0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v238 = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v0 = &v238;
          sub_228043AD4(0, *(v42 + 2) + 1, 1);
          v42 = v238;
        }

        v158 = v232;
        v2 = *(v42 + 2);
        v166 = *(v42 + 3);
        if (v2 >= v166 >> 1)
        {
          v0 = &v238;
          sub_228043AD4((v166 > 1), v2 + 1, 1);
          v42 = v238;
        }

        *(v42 + 2) = v2 + 1;
        v167 = &v42[16 * v2];
        *(v167 + 4) = v162;
        *(v167 + 5) = v161;
        if (v7 != v157)
        {
          goto LABEL_123;
        }

        goto LABEL_136;
      }

      ++v160;
      v159 += 2;
      if (v7 == v157)
      {
        goto LABEL_136;
      }
    }

    goto LABEL_184;
  }

LABEL_136:

  v168 = 0;
  v2 = *(v42 + 2);
  v169 = MEMORY[0x277D84F90];
LABEL_137:
  v170 = &v42[16 * v168 + 40];
  while (v2 != v168)
  {
    if (v168 >= *(v42 + 2))
    {
      goto LABEL_183;
    }

    v172 = *(v170 - 1);
    v171 = *v170;
    v170 += 16;
    ++v168;
    v173 = HIBYTE(v171) & 0xF;
    if ((v171 & 0x2000000000000000) == 0)
    {
      v173 = v172 & 0xFFFFFFFFFFFFLL;
    }

    if (v173)
    {

      v174 = swift_isUniquelyReferenced_nonNull_native();
      v239[0] = v169;
      if ((v174 & 1) == 0)
      {
        v0 = v239;
        sub_228043AD4(0, *(v169 + 16) + 1, 1);
        v169 = v239[0];
      }

      v7 = *(v169 + 16);
      v175 = *(v169 + 24);
      if (v7 >= v175 >> 1)
      {
        v0 = v239;
        sub_228043AD4((v175 > 1), v7 + 1, 1);
        v169 = v239[0];
      }

      *(v169 + 16) = v7 + 1;
      v176 = v169 + 16 * v7;
      *(v176 + 32) = v172;
      *(v176 + 40) = v171;
      goto LABEL_137;
    }
  }

  if (*(v169 + 16) >= 6uLL)
  {
    sub_2280C0964(v169, v169 + 32, 0, 0xBuLL);
    v178 = v177;

    v169 = v178;
  }

  v228[14] = v169;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EB10, &unk_22813DB80);
  sub_2280E4E78(&qword_2813C4678, &qword_27D81EB10, &unk_22813DB80);
  v179 = sub_22813925C();
  v181 = v180;

  v182 = HIBYTE(v181) & 0xF;
  if ((v181 & 0x2000000000000000) == 0)
  {
    v182 = v179 & 0xFFFFFFFFFFFFLL;
  }

  if (v182)
  {
    v239[0] = 0;
    v239[1] = 0xE000000000000000;
    sub_22813988C();

    strcpy(v239, "Participants: ");
    HIBYTE(v239[1]) = -18;
    MEMORY[0x22AAB1970](v179, v181);

    MEMORY[0x22AAB1970](10, 0xE100000000000000);
    v7 = v239[0];
    v2 = v239[1];
  }

  else
  {
LABEL_155:

    v7 = 0;
    v2 = 0xE000000000000000;
  }

  v0 = objc_opt_self();

  if (qword_2813C4620 != -1)
  {
    goto LABEL_187;
  }

LABEL_157:
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v183 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v183 = &qword_2813C76F8;
  }

  v184 = *(*v183 + 672);
  v185 = *(*v183 + 680);
  v186 = *(*v183 + 688);
  v187 = *(*v183 + 696);
  v188 = *(*v183 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v186(v239, v188);

    v185 = v239[0];
  }

  else
  {
  }

  if (v185)
  {
    if (qword_2813C8758 != -1)
    {
      swift_once();
    }

    v189 = v228[19];
    v190 = v228[20];
    v191 = v228[18];
    sub_228139B6C();
    v192 = swift_task_alloc();
    *(v192 + 16) = v190;
    v193 = sub_2280B866C(sub_2280E4EC0, v192, v185);

    (*(v189 + 8))(v190, v191);
    if (v193)
    {

      v7 = 0;
      v2 = 0xE000000000000000;
    }
  }

  v228[36] = v7;
  v228[37] = v2;
  v194 = *(v208 + 208);
  if (v194)
  {
    v195 = swift_getKeyPath();
    os_unfair_lock_lock((v194 + 16));
    v196 = MEMORY[0x277D84A28];
    v240 = MEMORY[0x277D84A28];
    v239[0] = v211;

    sub_2280449E4(v239, v195, (v194 + 24));
    os_unfair_lock_unlock((v194 + 16));

    v197 = swift_getKeyPath();
    os_unfair_lock_lock((v194 + 16));
    v240 = v196;
    v239[0] = v210;

    sub_2280449E4(v239, v197, (v194 + 24));
    os_unfair_lock_unlock((v194 + 16));

    v198 = swift_getKeyPath();
    os_unfair_lock_lock((v194 + 16));
    v240 = v196;
    v239[0] = v209;

    sub_2280449E4(v239, v198, (v194 + 24));
    os_unfair_lock_unlock((v194 + 16));

    v199 = sub_22813936C();
    v200 = swift_getKeyPath();
    os_unfair_lock_lock((v194 + 16));
    v240 = v196;
    v239[0] = v199;

    sub_2280449E4(v239, v200, (v194 + 24));
    os_unfair_lock_unlock((v194 + 16));
  }

  v201 = v228[17];
  v202 = v201[3];
  v203 = v201[4];
  __swift_project_boxed_opaque_existential_1(v201, v202);
  v204 = *(v203 + 8);
  v205 = *(v204 + 16);
  v237 = (v205 + *v205);
  v206 = v205[1];
  v207 = swift_task_alloc();
  v228[38] = v207;
  *v207 = v228;
  v207[1] = sub_2280E3F6C;

  return v237(v7, v2, v202, v204);
}