uint64_t sub_2274FC4EC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 192);

  if (v0)
  {
    v6 = sub_2274FC978;
  }

  else
  {
    v6 = sub_2274FC620;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

size_t sub_2274FC620()
{
  v1 = v0[2];
  v35 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_30:
    v2 = sub_22766CD20();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    do
    {
      v5 = v4;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x22AA991A0](v5, v1);
        }

        else
        {
          if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v6 = *(v1 + 8 * v5 + 32);
        }

        v7 = v6;
        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v5;
        if (v4 == v2)
        {
          goto LABEL_17;
        }
      }

      MEMORY[0x22AA985C0]();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
      }

      sub_22766C3A0();
      v3 = v35;
    }

    while (v4 != v2);
  }

LABEL_17:

  if (v3 >> 62)
  {
    v9 = sub_22766CD20();
    if (v9)
    {
      goto LABEL_19;
    }

LABEL_32:

    v13 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_32;
  }

LABEL_19:
  v36 = MEMORY[0x277D84F90];
  result = sub_226F1F828(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    return result;
  }

  v11 = 0;
  v12 = v0[7];
  v13 = v36;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x22AA991A0](v11, v3);
    }

    else
    {
      v14 = *(v3 + 8 * v11 + 32);
    }

    v15 = v0[8];
    sub_227664C30();
    v17 = *(v36 + 16);
    v16 = *(v36 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_226F1F828(v16 > 1, v17 + 1, 1);
    }

    v18 = v0[8];
    v19 = v0[6];
    ++v11;
    *(v36 + 16) = v17 + 1;
    (*(v12 + 32))(v36 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v17, v18, v19);
  }

  while (v9 != v11);

LABEL_33:
  v20 = v0[22];
  v21 = v0[23];
  v22 = v0[20];
  v23 = v0[21];
  v24 = v0[19];
  v25 = v0[16];
  v26 = v0[17];
  v29 = v0[18];
  v30 = v0[15];
  v27 = v0[13];
  v31 = v0[12];
  v32 = v0[11];
  v33 = v0[8];
  v34 = sub_226F43E94(v13);

  v26(v25, v27);

  v28 = v0[1];

  return v28(v34);
}

uint64_t sub_2274FC978()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 104);

  v7(v6, v8);
  v9 = *(v0 + 208);
  v11 = *(v0 + 120);
  v10 = *(v0 + 128);
  v13 = *(v0 + 88);
  v12 = *(v0 + 96);
  v14 = *(v0 + 64);

  v15 = *(v0 + 8);

  return v15();
}

void sub_2274FCA50(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v24 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BF0, &qword_22767CAF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  sub_226E99364(0, &qword_281398B48, 0x277CCD8D8);
  v12 = [swift_getObjCClassFromMetadata() workoutType];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_227670B30;
  *(v13 + 32) = a3;
  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v11, v7);
  v16 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
  sub_226E99364(0, &qword_281398AF8, 0x277CCAC98);
  v17 = a3;
  v18 = sub_22766C2B0();

  aBlock[4] = sub_2270131E0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2274FCD04;
  aBlock[3] = &block_descriptor_38;
  v19 = _Block_copy(aBlock);
  v20 = [v16 initWithSampleType:v12 predicate:v24 limit:0 sortDescriptors:v18 resultsHandler:v19];

  _Block_release(v19);

  v21 = a4[4];
  __swift_project_boxed_opaque_existential_0(a4, a4[3]);
  v22 = *(v21 + 8);
  sub_227669CD0();
}

uint64_t sub_2274FCD04(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_226E99364(0, &qword_281398A10, 0x277CCD8A8);
    v5 = sub_22766C2C0();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t sub_2274FCDC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2274FCE10(void *a1)
{
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    v4 = [a1 name];
    if (v4)
    {
      v5 = v4;
      sub_22766C000();

      sub_227669550();
      return;
    }
  }

  v6 = sub_227664DD0();
  sub_2274FD2D4(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
  swift_willThrow();
}

size_t static Equipment.representativeSamples()()
{
  v19 = sub_227669580();
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v19);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766C090();
  v25 = sub_22766C090();
  v26[0] = v4;
  v26[1] = v26;
  v26[2] = &v25;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v24 = v23;
  v21 = sub_2272BFE28();
  v22 = v21;
  v5 = sub_2276638E0();

  v6 = *(v5 + 16);
  if (v6)
  {
    v20 = MEMORY[0x277D84F90];
    result = sub_226F1F868(0, v6, 0);
    v8 = 0;
    v9 = v20;
    v17 = v0 + 32;
    v18 = v5;
    v10 = (v5 + 56);
    while (v8 < *(v5 + 16))
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;

      sub_227669550();
      v20 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_226F1F868(v15 > 1, v16 + 1, 1);
        v9 = v20;
      }

      ++v8;
      *(v9 + 16) = v16 + 1;
      result = (*(v0 + 32))(v9 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v16, v3, v19);
      v10 += 4;
      v5 = v18;
      if (v6 == v8)
      {

        return v9;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_2274FD1E0(void *a1)
{
  sub_227669560();
  v2 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227669570();
  v3 = sub_22766BFD0();

  [a1 setName_];
}

uint64_t sub_2274FD27C(uint64_t a1)
{
  result = sub_2274FD2D4(&qword_28139B1F8, MEMORY[0x277D53E88]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2274FD2D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2274FD31C(uint64_t a1)
{
  v41 = sub_2276694E0();
  v3 = *(v41 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v31 = v1;
    v43 = MEMORY[0x277D84F90];
    sub_22766CF30();
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v12 = *(a1 + 36);
    v38 = a1;
    v39 = v3;
    v36 = v3 + 8;
    v37 = v3 + 16;
    v32 = a1 + 64;
    v33 = v12;
    v34 = a1 + 56;
    v35 = v6;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_21;
      }

      if (v12 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v42 = v11;
      v15 = *(a1 + 48);
      v16 = v39;
      v17 = v40;
      v18 = v41;
      (*(v39 + 16))(v40, v15 + *(v39 + 72) * v10, v41);
      sub_2276694C0();
      v19 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
      v20 = sub_22766BFD0();

      [v19 initWithZoneName_];

      v21 = *(v16 + 8);
      a1 = v38;
      v21(v17, v18);
      sub_22766CF00();
      v22 = *(v43 + 16);
      sub_22766CF40();
      sub_22766CF50();
      result = sub_22766CF10();
      v13 = 1 << *(a1 + 32);
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

      v8 = v34;
      v23 = v35;
      v24 = *(v34 + 8 * v14);
      if ((v24 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      LODWORD(v12) = v33;
      if (v33 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v10 & 0x3F));
      if (v25)
      {
        v13 = __clz(__rbit64(v25)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v14 << 6;
        v27 = v14 + 1;
        v28 = (v32 + 8 * v14);
        while (v27 < (v13 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_22704FE58(v10, v33, 0);
            v13 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_22704FE58(v10, v33, 0);
      }

LABEL_4:
      v11 = v42 + 1;
      v10 = v13;
      if (v42 + 1 == v23)
      {
        return v43;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2274FD654(uint64_t a1)
{
  v40 = sub_2276694E0();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v40);
  v39 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29[1] = v1;
    v42 = MEMORY[0x277D84F90];
    sub_22766CF30();
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    v10 = sub_22766CC90();
    v11 = *(a1 + 36);
    result = sub_226E99364(0, &qword_281398B10, 0x277CBC5F8);
    v36 = result;
    v12 = 0;
    v34 = *MEMORY[0x277CBBF28];
    v35 = v3 + 16;
    v37 = a1;
    v38 = v3;
    v32 = v6;
    v33 = v3 + 8;
    v30 = a1 + 64;
    v31 = v11;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_21;
      }

      if (v11 != *(a1 + 36))
      {
        goto LABEL_22;
      }

      v41 = v12;
      v15 = *(a1 + 48);
      v17 = v38;
      v16 = v39;
      v18 = v40;
      (*(v38 + 16))(v39, v15 + *(v38 + 72) * v10, v40);
      sub_2276694C0();
      sub_22766C000();
      sub_22766C8F0();
      v19 = v16;
      a1 = v37;
      (*(v17 + 8))(v19, v18);
      sub_22766CF00();
      v20 = *(v42 + 16);
      sub_22766CF40();
      sub_22766CF50();
      result = sub_22766CF10();
      v13 = 1 << *(a1 + 32);
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

      v21 = *(v8 + 8 * v14);
      v22 = v32;
      if ((v21 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      LODWORD(v11) = v31;
      if (v31 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v21 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v13 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v14 << 6;
        v25 = v14 + 1;
        v26 = (v30 + 8 * v14);
        while (v25 < (v13 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_22704FE58(v10, v31, 0);
            v13 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_22704FE58(v10, v31, 0);
      }

LABEL_4:
      v12 = v41 + 1;
      v10 = v13;
      if (v41 + 1 == v22)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

id sub_2274FD99C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = sub_2274FDC88();
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void *sub_2274FD9F4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = type metadata accessor for ServerConnectionType();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227669A90();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v2[4] = 0;
  v13 = *(v8 + 104);
  v13(&v19 - v14, *MEMORY[0x277D4EE98], v7);
  sub_2276693D0();
  if (sub_2276693B0())
  {
    v15 = 4;
  }

  else
  {
    v15 = 6;
  }

  v22 = v15;
  sub_2274FE4B0();
  sub_22747F1B0();
  sub_227669760();
  v13(v12, *MEMORY[0x277D4EED8], v7);
  v16 = sub_2276624A0();
  (*(*(v16 - 8) + 56))(v6, 2, 2, v16);
  sub_2274FFD98(&qword_2813A0B00, type metadata accessor for ServerConnectionType);
  sub_2274FFD98(&qword_2813A0AF8, type metadata accessor for ServerConnectionType);
  sub_227669760();
  v17 = v21;
  v2[2] = v20;
  v2[3] = v17;
  return v2;
}

id sub_2274FDC88()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE280, &qword_227689C38);
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v48 - v5;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A700();

  v12 = sub_22766B380();
  v13 = sub_22766C8B0();

  v55 = v13;
  v14 = os_log_type_enabled(v12, v13);
  v15 = &unk_2813A3000;
  if (v14)
  {
    v51 = v12;
    v52 = v8;
    v53 = v7;
    v16 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v59 = v50;
    *v16 = 136315394;
    v17 = v3[2];
    v49 = OBJC_IVAR____TtC15SeymourServices15ServerContainer__environment;
    v56 = v17;
    v17(v6, v1 + OBJC_IVAR____TtC15SeymourServices15ServerContainer__environment, v2);
    sub_227669730();
    v54 = v3;
    v48 = v3[1];
    v48(v6, v2);
    v18 = 0xD000000000000011;
    v19 = "SeymourServer-dev-itms";
    v20 = "SeymourServer-prod-itms";
    v21 = 0xD000000000000012;
    if (v58 != 6)
    {
      v21 = 0xD000000000000017;
      v20 = "personalizeCatalogTiles(_:)";
    }

    v22 = "SeymourServer-living-on-itms";
    v23 = 0xD00000000000001CLL;
    if (v58 == 4)
    {
      v23 = 0xD000000000000017;
    }

    else
    {
      v22 = "SeymourServer-prod";
    }

    if (v58 <= 5u)
    {
      v21 = v23;
      v20 = v22;
    }

    v24 = "SeymourServer-qa-itms";
    v25 = 0xD000000000000010;
    if (v58 != 2)
    {
      v25 = 0xD000000000000015;
      v24 = "SeymourServer-living-on";
    }

    if (v58)
    {
      v18 = 0xD000000000000016;
      v19 = "SeymourServer-qa";
    }

    if (v58 > 1u)
    {
      v18 = v25;
      v19 = v24;
    }

    if (v58 <= 3u)
    {
      v26 = v18;
    }

    else
    {
      v26 = v21;
    }

    if (v58 <= 3u)
    {
      v27 = v19;
    }

    else
    {
      v27 = v20;
    }

    v28 = sub_226E97AE8(v26, v27 | 0x8000000000000000, &v59);

    *(v16 + 4) = v28;
    *(v16 + 12) = 2080;
    v56(v6, v1 + v49, v2);
    sub_227669730();
    v48(v6, v2);
    v29 = qword_227689C78[v57];
    v30 = CKContainerEnvironmentString();
    v31 = sub_22766C000();
    v33 = v32;

    v34 = sub_226E97AE8(v31, v33, &v59);

    *(v16 + 14) = v34;
    v35 = v51;
    _os_log_impl(&dword_226E8E000, v51, v55, "Using serviceName: %s in environment %s", v16, 0x16u);
    v36 = v50;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v36, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    (*(v52 + 8))(v11, v53);
    v37 = v56;
    v3 = v54;
    v15 = &unk_2813A3000;
  }

  else
  {

    (*(v8 + 8))(v11, v7);
    v37 = v3[2];
  }

  v38 = *(v1 + 16);
  v39 = *(v1 + 24);
  v37(v6, v1 + v15[269], v2);
  sub_227669730();
  (v3[1])(v6, v2);
  v40 = qword_227689C78[v60];
  v41 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v42 = sub_22766BFD0();
  v43 = [v41 initWithContainerIdentifier:v42 environment:v40];

  v44 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID_];
  v45 = [v44 options];
  sub_2276693D0();
  sub_2276693E0();
  v46 = sub_22766BFD0();

  [v45 setApplicationBundleIdentifierOverrideForNetworkAttribution_];

  return v44;
}

uint64_t sub_2274FE210()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC15SeymourServices15ServerContainer__environment;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE280, &qword_227689C38);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC15SeymourServices15ServerContainer__connectionType;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE288, &qword_227689C40);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ServerContainer()
{
  result = qword_2813A3850;
  if (!qword_2813A3850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2274FE368()
{
  sub_2274FE448();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2274FE504();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2274FE448()
{
  if (!qword_2813A54C0)
  {
    sub_2274FE4B0();
    sub_22747F1B0();
    v0 = sub_227669750();
    if (!v1)
    {
      atomic_store(v0, &qword_2813A54C0);
    }
  }
}

unint64_t sub_2274FE4B0()
{
  result = qword_2813A27B8[0];
  if (!qword_2813A27B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813A27B8);
  }

  return result;
}

void sub_2274FE504()
{
  if (!qword_2813A54B8)
  {
    type metadata accessor for ServerConnectionType();
    sub_2274FFD98(&qword_2813A0B00, type metadata accessor for ServerConnectionType);
    sub_2274FFD98(&qword_2813A0AF8, type metadata accessor for ServerConnectionType);
    v0 = sub_227669750();
    if (!v1)
    {
      atomic_store(v0, &qword_2813A54B8);
    }
  }
}

id sub_2274FE5D0(char a1)
{
  v2 = v1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE288, &qword_227689C40);
  v4 = *(v42 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v42);
  v7 = &v41 - v6;
  v8 = type metadata accessor for ServerConnectionType();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v44 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v45 = &v41 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE280, &qword_227689C38);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  v22 = sub_2274FD99C();
  v23 = v22;
  v24 = &selRef_privateCloudDatabase;
  if ((a1 & 1) == 0)
  {
    v24 = &selRef_publicCloudDatabase;
  }

  v25 = [v22 *v24];

  v26 = *(v2 + 32);
  (*(v18 + 16))(v21, v2 + OBJC_IVAR____TtC15SeymourServices15ServerContainer__environment, v17);
  v43 = v26;
  sub_227669730();
  (*(v18 + 8))(v21, v17);
  v27 = sub_22766BFD0();

  v28 = v25;
  v29 = [v25 databaseScope];
  v30 = v42;
  (*(v4 + 16))(v7, v2 + OBJC_IVAR____TtC15SeymourServices15ServerContainer__connectionType, v42);
  sub_227669730();
  (*(v4 + 8))(v7, v30);
  v31 = v44;
  sub_22706D8B0(v13, v44);
  v32 = sub_2276624A0();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v35 = v34(v31, 2, v32);
  if (v35)
  {
    v36 = v45;
    if (v35 == 1)
    {
      sub_227662470();
      sub_22706DC8C(v13);
    }

    else
    {
      sub_22706DC8C(v13);
      (*(v33 + 56))(v36, 1, 1, v32);
    }
  }

  else
  {
    sub_22706DC8C(v13);
    v36 = v45;
    (*(v33 + 32))(v45, v31, v32);
    (*(v33 + 56))(v36, 0, 1, v32);
  }

  v37 = v43;
  if (v34(v36, 1, v32) == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = sub_2276623E0();
    (*(v33 + 8))(v36, v32);
  }

  v39 = [v37 codeServiceWithName:v27 databaseScope:v29 serviceInstanceURL:v38];

  return v39;
}

uint64_t sub_2274FEB78()
{
  v1 = v0[19];
  v2 = sub_2274FD99C();
  v0[20] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2274FECA0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE290, &unk_227689C50);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2274FEE98;
  v0[13] = &block_descriptor_39;
  v0[14] = v3;
  [v2 accountInfoWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2274FECA0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_2274FEE28;
  }

  else
  {
    v3 = sub_2274FEDB0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2274FEDB0()
{
  v1 = *(v0 + 144);

  v2 = sub_2274FEF70();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2274FEE28()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_2274FEE98(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2274FEF70()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 deviceToDeviceEncryptionAvailability];
  if (([v1 deviceToDeviceEncryptionAvailability] & 1) == 0)
  {
    return 1;
  }

  v10 = [v1 accountStatus];
  if (v10 > 1)
  {
    if ((v10 - 2) < 2)
    {
      return 3;
    }

    if (v10 == 4)
    {
      return 2;
    }

    goto LABEL_11;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      return (v8 & 2) == 0;
    }

LABEL_11:
    sub_22766A700();
    v11 = v1;
    v12 = sub_22766B380();
    v13 = sub_22766C8A0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136446210;
      v19 = [v11 accountStatus];
      type metadata accessor for CKAccountStatus(0);
      v16 = sub_22766C060();
      v18 = sub_226E97AE8(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_226E8E000, v12, v13, "Unhandled Account State, %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AA9A450](v15, -1, -1);
      MEMORY[0x22AA9A450](v14, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
  }

  return 4;
}

uint64_t sub_2274FF1C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766B390();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274FF280, 0, 0);
}

uint64_t sub_2274FF280()
{
  v23 = v0;
  v1 = v0[6];
  v2 = v0[2];
  sub_22766A700();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  if (v5)
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136446210;
    sub_2276694E0();
    sub_2274FFD98(&qword_2813A54D0, MEMORY[0x277D53DA0]);
    v12 = sub_22766C610();
    v14 = sub_226E97AE8(v12, v13, &v22);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v3, v4, "Requesting Deletion of %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  v15 = v0[3];
  sub_2274FD654(v0[2]);
  sub_226E99364(0, &qword_27D7BE298, 0x277CBC490);
  v16 = sub_22766CA70();
  v0[7] = v16;
  v17 = swift_task_alloc();
  v0[8] = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v18 = *(MEMORY[0x277D85A40] + 4);
  v19 = swift_task_alloc();
  v0[9] = v19;
  *v19 = v0;
  v19[1] = sub_2274FF51C;
  v20 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v19, 0, 0, 0xD000000000000013, 0x80000002276A2E70, sub_2274FFE74, v17, v20);
}

uint64_t sub_2274FF51C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_2274FFE70;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_2274FFE6C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2274FF638(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22766B390();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274FF6F8, 0, 0);
}

uint64_t sub_2274FF6F8()
{
  v23 = v0;
  v1 = v0[6];
  v2 = v0[2];
  sub_22766A700();

  v3 = sub_22766B380();
  v4 = sub_22766C8B0();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  if (v5)
  {
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136446210;
    sub_2276694E0();
    sub_2274FFD98(&qword_2813A54D0, MEMORY[0x277D53DA0]);
    v12 = sub_22766C610();
    v14 = sub_226E97AE8(v12, v13, &v22);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v3, v4, "Requesting Creation of %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  v15 = v0[3];
  sub_2274FD31C(v0[2]);
  sub_226E99364(0, &qword_27D7BE298, 0x277CBC490);
  v16 = sub_22766CA70();
  v0[7] = v16;
  v17 = swift_task_alloc();
  v0[8] = v17;
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v18 = *(MEMORY[0x277D85A40] + 4);
  v19 = swift_task_alloc();
  v0[9] = v19;
  *v19 = v0;
  v19[1] = sub_2274FF994;
  v20 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v19, 0, 0, 0xD000000000000013, 0x80000002276A2E70, sub_2274FFD90, v17, v20);
}

uint64_t sub_2274FF994()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_2274FFB1C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_2274FFAB0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2274FFAB0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2274FFB1C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);
  v4 = *(v0 + 80);

  return v3();
}

void sub_2274FFB94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA190, &qword_227678478);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  (*(v5 + 16))(&v13 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  sub_22766CA60();
  v11 = sub_2274FD99C();
  v12 = [v11 privateCloudDatabase];

  [v12 addOperation_];
}

uint64_t sub_2274FFD1C(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA190, &qword_227678478);
    return sub_22766C440();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA190, &qword_227678478);
    return sub_22766C450();
  }
}

uint64_t sub_2274FFD98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2274FFDE0(void *a1, char a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA190, &qword_227678478) - 8) + 80);

  return sub_2274FFD1C(a1, a2 & 1);
}

uint64_t sub_2274FFE78()
{
  v1 = v0;
  v2 = sub_227664EC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D511C0])
  {
    return 6;
  }

  if (v7 == *MEMORY[0x277D511D0])
  {
    return 11;
  }

  if (v7 == *MEMORY[0x277D511F8])
  {
    return 0;
  }

  if (v7 == *MEMORY[0x277D51200])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x277D511B8])
  {
    return 11;
  }

  if (v7 == *MEMORY[0x277D511F0])
  {
    return 9;
  }

  if (v7 == *MEMORY[0x277D511D8])
  {
    return 12;
  }

  (*(v3 + 8))(v6, v2);
  return 13;
}

uint64_t sub_227500078()
{
  v0 = sub_226F4BE8C(&unk_283A93C00);
  result = swift_arrayDestroy();
  off_27D7BE2A0 = v0;
  return result;
}

uint64_t static DeviceRegistryConstants.unsupportedDeviceProductTypeList.getter()
{
  if (qword_27D7B7F30 != -1)
  {
    swift_once();
  }
}

uint64_t sub_227500130(uint64_t a1, char a2)
{
  *(v3 + 312) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_227665030();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A0, &unk_227683B80);
  *(v3 + 64) = v7;
  v8 = *(v7 - 8);
  *(v3 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A8, &qword_22767B360);
  *(v3 + 88) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  v12 = sub_22766B390();
  *(v3 + 144) = v12;
  v13 = *(v12 - 8);
  *(v3 + 152) = v13;
  v14 = *(v13 + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227500378, 0, 0);
}

uint64_t sub_227500378()
{
  v1 = v0[25];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[3];
  sub_22766A730();
  sub_22766B370();
  v5 = *(v3 + 8);
  v0[26] = v5;
  v0[27] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  sub_2275025C0();
  v6 = v0[25];
  v7 = v0[18];
  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[3];
  sub_227502B6C(v0[17]);
  sub_22766A730();
  sub_22766B370();
  v5(v6, v7);
  v11 = v10[20];
  v12 = v10[21];
  __swift_project_boxed_opaque_existential_0(v10 + 17, v11);

  sub_226ECF5D8(sub_2275078D0, v10, v11, v9, v12, v8);

  v13 = swift_task_alloc();
  v0[28] = v13;
  *(v13 + 16) = "SeymourServices/CatalogSyncEvaluator.swift";
  *(v13 + 24) = 42;
  *(v13 + 32) = 2;
  *(v13 + 40) = 48;
  *(v13 + 48) = v8;
  v14 = *(MEMORY[0x277D85A40] + 4);
  v15 = swift_task_alloc();
  v0[29] = v15;
  *v15 = v0;
  v15[1] = sub_2275006B0;
  v16 = v0[16];
  v17 = v0[11];

  return MEMORY[0x2822008A0](v16, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2275078E8, v13, v17);
}

uint64_t sub_2275006B0()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v5 = sub_227501354;
  }

  else
  {
    (*(v2[9] + 8))(v2[10], v2[8]);
    v5 = sub_227500800;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227500800()
{
  v147 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  sub_22766A730();
  sub_2274E57D8(v2, v3);
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  v9 = *(v0 + 208);
  v8 = *(v0 + 216);
  v10 = *(v0 + 192);
  v11 = *(v0 + 120);
  if (v6)
  {
    v138 = *(v0 + 208);
    v12 = *(v0 + 88);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v146[0] = v14;
    *v13 = 136315138;
    v15 = sub_22766CB80();
    v17 = v16;
    sub_226E97D1C(v11, &qword_27D7BA3A8, &qword_22767B360);
    v18 = sub_226E97AE8(v15, v17, v146);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_226E8E000, v4, v5, "[CatalogSyncCoordinator] Last successful catalog sync anchor: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AA9A450](v14, -1, -1);
    MEMORY[0x22AA9A450](v13, -1, -1);

    v138(v10, v7);
  }

  else
  {

    sub_226E97D1C(v11, &qword_27D7BA3A8, &qword_22767B360);
    v9(v10, v7);
  }

  v19 = *(v0 + 184);
  v20 = *(v0 + 128);
  v21 = *(v0 + 112);
  sub_22766A730();
  sub_2274E57D8(v20, v21);
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  v24 = os_log_type_enabled(v22, v23);
  v26 = *(v0 + 208);
  v25 = *(v0 + 216);
  v27 = *(v0 + 184);
  v28 = *(v0 + 144);
  v29 = *(v0 + 112);
  if (v24)
  {
    v139 = *(v0 + 208);
    v30 = *(v0 + 88);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v146[0] = v32;
    *v31 = 136315138;
    v33 = sub_22766CB80();
    v35 = v34;
    sub_226E97D1C(v29, &qword_27D7BA3A8, &qword_22767B360);
    v36 = sub_226E97AE8(v33, v35, v146);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_226E8E000, v22, v23, "[CatalogSyncCoordinator] Last incremental catalog sync anchor: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    MEMORY[0x22AA9A450](v31, -1, -1);

    v139(v27, v28);
  }

  else
  {

    sub_226E97D1C(v29, &qword_27D7BA3A8, &qword_22767B360);
    v26(v27, v28);
  }

  v38 = (v0 + 32);
  v37 = *(v0 + 32);
  v39 = *(v0 + 104);
  v40 = *(v0 + 40);
  sub_2274E57D8(*(v0 + 136), v39);
  v41 = *(v40 + 48);
  if (v41(v39, 1, v37) == 1)
  {
    v42 = *(v0 + 312);
    sub_226E97D1C(*(v0 + 104), &qword_27D7BA3A8, &qword_22767B360);
    v43 = sub_227666360();
    v45 = v44;
    if (v43 == sub_227666360() && v45 == v46)
    {

LABEL_14:
      v55 = swift_task_alloc();
      *(v0 + 296) = v55;
      *v55 = v0;
      v56 = sub_227501C78;
LABEL_28:
      v55[1] = v56;
      v82 = *(v0 + 24);

      return sub_227502E70();
    }

    v54 = sub_22766D190();

    if (v54)
    {
      goto LABEL_14;
    }

    v47 = (v0 + 160);
    v70 = *(v0 + 160);
    sub_22766A730();
    v71 = sub_22766B380();
    v72 = sub_22766C8B0();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_226E8E000, v71, v72, "[CatalogSyncCoordinator] No successful catalog sync, sync required", v73, 2u);
      MEMORY[0x22AA9A450](v73, -1, -1);
    }

    v74 = *(v0 + 208);
    v75 = *(v0 + 216);
    v38 = (v0 + 144);
    goto LABEL_41;
  }

  v47 = (v0 + 56);
  v48 = *(v0 + 128);
  v49 = *(v0 + 96);
  v50 = *(v0 + 32);
  v51 = *(*(v0 + 40) + 32);
  v51(*(v0 + 56), *(v0 + 104), v50);
  sub_2274E57D8(v48, v49);
  v52 = v41(v49, 1, v50);
  v53 = *(v0 + 96);
  if (v52 == 1)
  {
    sub_226E97D1C(*(v0 + 96), &qword_27D7BA3A8, &qword_22767B360);
    goto LABEL_23;
  }

  v57 = *(v0 + 48);
  v58 = *(v0 + 56);
  v51(v57, *(v0 + 96), *(v0 + 32));
  if ((MEMORY[0x22AA912B0](v58, v57) & 1) == 0)
  {
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
LABEL_23:
    v76 = *(v0 + 312);
    v77 = sub_227666360();
    v79 = v78;
    if (v77 == sub_227666360() && v79 == v80)
    {

LABEL_27:
      v55 = swift_task_alloc();
      *(v0 + 280) = v55;
      *v55 = v0;
      v56 = sub_227501960;
      goto LABEL_28;
    }

    v81 = sub_22766D190();

    if (v81)
    {
      goto LABEL_27;
    }

    v84 = *(v0 + 168);
    sub_22766A730();
    v85 = sub_22766B380();
    v86 = sub_22766C8B0();
    v87 = os_log_type_enabled(v85, v86);
    v89 = *(v0 + 208);
    v88 = *(v0 + 216);
    v90 = *(v0 + 168);
    v91 = *(v0 + 144);
    v92 = *(v0 + 40);
    if (v87)
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_226E8E000, v85, v86, "[CatalogSyncCoordinator] Last successful sync anchor does not match the incremental sync anchor, sync required", v93, 2u);
      MEMORY[0x22AA9A450](v93, -1, -1);
    }

    v89(v90, v91);
    v74 = *(v92 + 8);
LABEL_41:
    v115 = *v47;
    v116 = *v38;
    v118 = *(v0 + 192);
    v117 = *(v0 + 200);
    v119 = *(v0 + 176);
    v120 = *(v0 + 184);
    v121 = *(v0 + 168);
    v123 = *(v0 + 128);
    v122 = *(v0 + 136);
    v128 = *(v0 + 160);
    v129 = *(v0 + 120);
    v131 = *(v0 + 112);
    v133 = *(v0 + 104);
    v135 = *(v0 + 96);
    v137 = *(v0 + 80);
    v142 = *(v0 + 56);
    v145 = *(v0 + 48);
    v74(v115, v116);
    sub_226E97D1C(v123, &qword_27D7BA3A8, &qword_22767B360);
    sub_226E97D1C(v122, &qword_27D7BA3A8, &qword_22767B360);

    v114 = *(v0 + 8);
LABEL_42:

    return v114();
  }

  if ((*(v0 + 312) & 0xFE) == 2)
  {
    v59 = *(v0 + 176);
    sub_22766A730();
    v60 = sub_22766B380();
    v61 = sub_22766C8B0();
    v62 = os_log_type_enabled(v60, v61);
    v63 = *(v0 + 208);
    v64 = *(v0 + 216);
    v65 = *(v0 + 176);
    v66 = *(v0 + 144);
    v67 = *(v0 + 40);
    v68 = *(v0 + 32);
    v140 = v68;
    v143 = *(v0 + 48);
    if (v62)
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_226E8E000, v60, v61, "[CatalogSyncEvaluator] sync is required", v69, 2u);
      MEMORY[0x22AA9A450](v69, -1, -1);
    }

    v63(v65, v66);
    v74 = *(v67 + 8);
    v74(v143, v140);
    goto LABEL_41;
  }

  v94 = sub_227667AF0();
  v96 = v95;
  if (v94 == sub_227667AF0() && v96 == v97)
  {

LABEL_38:
    v99 = *(v0 + 240);
    v100 = *(v0 + 24);
    sub_227503224();
    if (!v99)
    {
      v55 = swift_task_alloc();
      *(v0 + 248) = v55;
      *v55 = v0;
      v56 = sub_2275014A8;
      goto LABEL_28;
    }

    v101 = *(v0 + 128);
    v102 = *(v0 + 56);
    v103 = *(v0 + 32);
    v104 = *(*(v0 + 40) + 8);
    v104(*(v0 + 48), v103);
    v104(v102, v103);
    sub_226E97D1C(v101, &qword_27D7BA3A8, &qword_22767B360);
    sub_226E97D1C(*(v0 + 136), &qword_27D7BA3A8, &qword_22767B360);
    v106 = *(v0 + 192);
    v105 = *(v0 + 200);
    v108 = *(v0 + 176);
    v107 = *(v0 + 184);
    v110 = *(v0 + 160);
    v109 = *(v0 + 168);
    v112 = *(v0 + 128);
    v111 = *(v0 + 136);
    v113 = *(v0 + 120);
    v130 = *(v0 + 112);
    v132 = *(v0 + 104);
    v134 = *(v0 + 96);
    v136 = *(v0 + 80);
    v141 = *(v0 + 56);
    v144 = *(v0 + 48);

    v114 = *(v0 + 8);
    goto LABEL_42;
  }

  v98 = sub_22766D190();

  if (v98)
  {
    goto LABEL_38;
  }

  v124 = *(v0 + 312);
  v125 = swift_task_alloc();
  *(v0 + 264) = v125;
  *v125 = v0;
  v125[1] = sub_22750162C;
  v126 = *(v0 + 16);
  v127 = *(v0 + 24);

  return sub_2275034F0(v126, v124 & 1);
}

uint64_t sub_227501354()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  v18 = v0[30];
  sub_226E97D1C(v0[17], &qword_27D7BA3A8, &qword_22767B360);
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[14];
  v10 = v0[15];
  v13 = v0[13];
  v14 = v0[12];
  v15 = v0[10];
  v16 = v0[7];
  v17 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2275014A8()
{
  v2 = *(*v1 + 248);
  v3 = *v1;
  *(v3 + 256) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22750222C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 312);
    v5 = swift_task_alloc();
    *(v3 + 264) = v5;
    *v5 = v3;
    v5[1] = sub_22750162C;
    v6 = *(v3 + 24);
    v7 = *(v3 + 16);

    return sub_2275034F0(v7, v4 & 1);
  }
}

uint64_t sub_22750162C()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_2275023B4;
  }

  else
  {
    v3 = sub_227501740;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227501740()
{
  v1 = v0[22];
  sub_22766A730();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[26];
  v6 = v0[22];
  v7 = v0[18];
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];
  if (v4)
  {
    v28 = v0[27];
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "[CatalogSyncEvaluator] sync is required", v11, 2u);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  v5(v6, v7);
  v12 = *(v9 + 8);
  v12(v8, v10);
  v14 = v0[24];
  v13 = v0[25];
  v16 = v0[22];
  v15 = v0[23];
  v22 = v0[21];
  v23 = v0[20];
  v18 = v0[16];
  v17 = v0[17];
  v24 = v0[15];
  v25 = v0[14];
  v26 = v0[13];
  v27 = v0[12];
  v19 = v0[10];
  v29 = v0[6];
  v12(v0[7], v0[4]);
  sub_226E97D1C(v18, &qword_27D7BA3A8, &qword_22767B360);
  sub_226E97D1C(v17, &qword_27D7BA3A8, &qword_22767B360);

  v20 = v0[1];

  return v20();
}

uint64_t sub_227501960()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_2275020BC;
  }

  else
  {
    v3 = sub_227501A74;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227501A74()
{
  v1 = v0[21];
  sub_22766A730();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[21];
  v8 = v0[18];
  v9 = v0[5];
  if (v4)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "[CatalogSyncCoordinator] Last successful sync anchor does not match the incremental sync anchor, sync required", v10, 2u);
    MEMORY[0x22AA9A450](v10, -1, -1);
  }

  v6(v7, v8);
  v12 = v0[24];
  v11 = v0[25];
  v13 = v0[23];
  v19 = v0[22];
  v20 = v0[21];
  v21 = v0[20];
  v15 = v0[16];
  v14 = v0[17];
  v22 = v0[15];
  v23 = v0[14];
  v24 = v0[13];
  v25 = v0[12];
  v16 = v0[10];
  v26 = v0[6];
  (*(v9 + 8))(v0[7], v0[4]);
  sub_226E97D1C(v15, &qword_27D7BA3A8, &qword_22767B360);
  sub_226E97D1C(v14, &qword_27D7BA3A8, &qword_22767B360);

  v17 = v0[1];

  return v17();
}

uint64_t sub_227501C78()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_227501F68;
  }

  else
  {
    v3 = sub_227501D8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227501D8C()
{
  v1 = *(v0 + 160);
  sub_22766A730();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "[CatalogSyncCoordinator] No successful catalog sync, sync required", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v5 = *(v0 + 136);
  v6 = *(v0 + 216);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = *(v0 + 176);
  v10 = *(v0 + 184);
  v11 = *(v0 + 128);
  v14 = *(v0 + 168);
  v15 = *(v0 + 120);
  v16 = *(v0 + 112);
  v17 = *(v0 + 104);
  v18 = *(v0 + 96);
  v19 = *(v0 + 80);
  v20 = *(v0 + 56);
  v21 = *(v0 + 48);
  (*(v0 + 208))(*(v0 + 160), *(v0 + 144));
  sub_226E97D1C(v11, &qword_27D7BA3A8, &qword_22767B360);
  sub_226E97D1C(v5, &qword_27D7BA3A8, &qword_22767B360);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_227501F68()
{
  sub_226E97D1C(v0[16], &qword_27D7BA3A8, &qword_22767B360);
  v18 = v0[38];
  sub_226E97D1C(v0[17], &qword_27D7BA3A8, &qword_22767B360);
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[14];
  v10 = v0[15];
  v13 = v0[13];
  v14 = v0[12];
  v15 = v0[10];
  v16 = v0[7];
  v17 = v0[6];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2275020BC()
{
  v1 = v0[16];
  (*(v0[5] + 8))(v0[7], v0[4]);
  sub_226E97D1C(v1, &qword_27D7BA3A8, &qword_22767B360);
  v19 = v0[36];
  sub_226E97D1C(v0[17], &qword_27D7BA3A8, &qword_22767B360);
  v3 = v0[24];
  v2 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[14];
  v11 = v0[15];
  v14 = v0[13];
  v15 = v0[12];
  v16 = v0[10];
  v17 = v0[7];
  v18 = v0[6];

  v12 = v0[1];

  return v12();
}

uint64_t sub_22750222C()
{
  v1 = v0[16];
  v2 = v0[7];
  v3 = v0[4];
  v4 = *(v0[5] + 8);
  v4(v0[6], v3);
  v4(v2, v3);
  sub_226E97D1C(v1, &qword_27D7BA3A8, &qword_22767B360);
  v22 = v0[32];
  sub_226E97D1C(v0[17], &qword_27D7BA3A8, &qword_22767B360);
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v10 = v0[20];
  v9 = v0[21];
  v12 = v0[16];
  v11 = v0[17];
  v13 = v0[14];
  v14 = v0[15];
  v17 = v0[13];
  v18 = v0[12];
  v19 = v0[10];
  v20 = v0[7];
  v21 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2275023B4()
{
  v1 = v0[16];
  v2 = v0[7];
  v3 = v0[4];
  v4 = *(v0[5] + 8);
  v4(v0[6], v3);
  v4(v2, v3);
  sub_226E97D1C(v1, &qword_27D7BA3A8, &qword_22767B360);
  v22 = v0[34];
  sub_226E97D1C(v0[17], &qword_27D7BA3A8, &qword_22767B360);
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v10 = v0[20];
  v9 = v0[21];
  v12 = v0[16];
  v11 = v0[17];
  v13 = v0[14];
  v14 = v0[15];
  v17 = v0[13];
  v18 = v0[12];
  v19 = v0[10];
  v20 = v0[7];
  v21 = v0[6];

  v15 = v0[1];

  return v15();
}

uint64_t sub_22750253C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 28);

  return swift_deallocClassInstance();
}

uint64_t sub_2275025C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v38 - v5;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v38 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = sub_2276658F0();
  v40 = *(v14 - 8);
  v15 = *(v40 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v45 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  v20 = *__swift_project_boxed_opaque_existential_0((v1 + 224), *(v1 + 248));
  sub_22766A730();
  sub_22766B370();
  v21 = *(v8 + 8);
  v39 = v7;
  v22 = v7;
  v23 = v21;
  v21(v13, v22);
  (*(v3 + 16))(v6, v20 + OBJC_IVAR____TtC15SeymourServices18StorefrontObserver__storefrontContentAvailableOverride, v2);
  sub_227669730();
  (*(v3 + 8))(v6, v2);
  if (v43 == 1)
  {
    v24 = *MEMORY[0x277D51A28];
    v25 = v40;
    v26 = *(v40 + 104);
    v26(v19, v24, v14);
  }

  else
  {
    sub_226EA89DC();
    v27 = v20[18];
    __swift_project_boxed_opaque_existential_0(v20 + 14, v20[17]);
    sub_227669B20();
    v24 = *MEMORY[0x277D51A28];
    v25 = v40;
    v26 = *(v40 + 104);
  }

  v26(v45, v24, v14);
  sub_22750799C(&qword_28139B798, MEMORY[0x277D51A40]);
  sub_22766C290();
  sub_22766C290();
  if (v43 == v41 && v44 == v42)
  {
    v28 = *(v25 + 8);
    v28(v45, v14);
    v28(v19, v14);
  }

  else
  {
    v30 = sub_22766D190();
    v31 = *(v25 + 8);
    v31(v45, v14);
    v31(v19, v14);

    if ((v30 & 1) == 0)
    {
      v32 = v38;
      sub_22766A730();
      v33 = sub_22766B380();
      v34 = sub_22766C8B0();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_226E8E000, v33, v34, "[CatalogSyncEvaluator] Storefront not available, skipping sync", v35, 2u);
        MEMORY[0x22AA9A450](v35, -1, -1);
      }

      v23(v32, v39);
      v36 = sub_227665D10();
      sub_22750799C(&qword_28139B720, MEMORY[0x277D51E08]);
      swift_allocError();
      (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51DF8], v36);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_227502B6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_227669A90();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() standardUserDefaults];
  (*(v3 + 104))(v6, *MEMORY[0x277D4F010], v2);
  sub_227669A80();
  (*(v3 + 8))(v6, v2);
  v8 = sub_22766BFD0();

  v9 = [v7 objectForKey_];

  if (v9)
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = v15[2];
      v11 = v15[3];
      v12 = sub_227665030();
      sub_226F5E0B4(v10, v11);
      sub_22750799C(&qword_28139B868, MEMORY[0x277D512F0]);
      sub_2276683D0();
      sub_226EDC420(v10, v11);
      return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
    }
  }

  else
  {
    sub_226E97D1C(v18, &unk_27D7BC990, &qword_227670A30);
  }

  v13 = sub_227665030();
  return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
}

uint64_t sub_227502E70()
{
  v1 = sub_22766B390();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_227502F58;

  return sub_227506D70();
}

uint64_t sub_227502F58(char a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_227503058, 0, 0);
}

uint64_t sub_227503058()
{
  v1 = *(v0 + 32);
  if (*(v0 + 48) == 1)
  {
    v2 = *(v0 + 32);

    v3 = *(v0 + 8);
  }

  else
  {
    v4 = *(v0 + 32);
    sub_22766A730();
    v5 = sub_22766B380();
    v6 = sub_22766C8B0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_226E8E000, v5, v6, "[CatalogSyncEvaluator] Unsubscribed user, skipping sync", v7, 2u);
      MEMORY[0x22AA9A450](v7, -1, -1);
    }

    v9 = *(v0 + 24);
    v8 = *(v0 + 32);
    v10 = *(v0 + 16);

    (*(v9 + 8))(v8, v10);
    v11 = sub_227665D10();
    sub_22750799C(&qword_28139B720, MEMORY[0x277D51E08]);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D51DE0], v11);
    swift_willThrow();

    v3 = *(v0 + 8);
  }

  return v3();
}

uint64_t sub_227503224()
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766A8A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 176);
  v12 = sub_2276693C0();
  (*(v7 + 104))(v10, *MEMORY[0x277D4F8B0], v6);
  v13 = sub_226EC9A38(v10, v12);

  result = (*(v7 + 8))(v10, v6);
  if ((v13 & 1) == 0)
  {
    sub_22766A730();
    v15 = sub_22766B380();
    v16 = sub_22766C8B0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_226E8E000, v15, v16, "[CatalogSyncEvaluator] Current platform does not support periodic background sync", v17, 2u);
      MEMORY[0x22AA9A450](v17, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    v18 = sub_227665D10();
    sub_22750799C(&qword_28139B720, MEMORY[0x277D51E08]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51DD8], v18);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2275034F0(uint64_t a1, char a2)
{
  *(v3 + 456) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  v4 = sub_227662940();
  *(v3 + 64) = v4;
  v5 = *(v4 - 8);
  *(v3 + 72) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  v8 = sub_227662750();
  *(v3 + 96) = v8;
  v9 = *(v8 - 8);
  *(v3 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();
  v11 = sub_227663FA0();
  *(v3 + 136) = v11;
  v12 = *(v11 - 8);
  *(v3 + 144) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  v14 = sub_227665010();
  *(v3 + 160) = v14;
  v15 = *(v14 - 8);
  *(v3 + 168) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v17 = sub_22766B390();
  *(v3 + 192) = v17;
  v18 = *(v17 - 8);
  *(v3 + 200) = v18;
  v19 = *(v18 + 64) + 15;
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A0, &unk_227683B80);
  *(v3 + 272) = v20;
  v21 = *(v20 - 8);
  *(v3 + 280) = v21;
  v22 = *(v21 + 64) + 15;
  *(v3 + 288) = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3A8, &qword_22767B360);
  *(v3 + 296) = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  *(v3 + 304) = swift_task_alloc();
  v25 = sub_227665030();
  *(v3 + 312) = v25;
  v26 = *(v25 - 8);
  *(v3 + 320) = v26;
  v27 = *(v26 + 64) + 15;
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275038E0, 0, 0);
}

uint64_t sub_2275038E0()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[33];
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[7];
  sub_22766A730();
  sub_22766B370();
  v7 = *(v5 + 8);
  v0[43] = v7;
  v0[44] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v4);
  v8 = v6[20];
  v9 = v6[21];
  __swift_project_boxed_opaque_existential_0(v6 + 17, v8);

  sub_226ECF5D8(sub_2275079E4, v6, v8, v2, v9, v1);

  v10 = swift_task_alloc();
  v0[45] = v10;
  *(v10 + 16) = "SeymourServices/CatalogSyncEvaluator.swift";
  *(v10 + 24) = 42;
  *(v10 + 32) = 2;
  *(v10 + 40) = 172;
  *(v10 + 48) = v1;
  v11 = *(MEMORY[0x277D85A40] + 4);
  v12 = swift_task_alloc();
  v0[46] = v12;
  *v12 = v0;
  v12[1] = sub_227503AB4;
  v14 = v0[37];
  v13 = v0[38];

  return MEMORY[0x2822008A0](v13, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_2275079FC, v10, v14);
}

uint64_t sub_227503AB4()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *(*v1 + 360);
  v7 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v5 = sub_227504268;
  }

  else
  {
    (*(v2[35] + 8))(v2[36], v2[34]);
    v5 = sub_227503C04;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227503C04()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 208);
    sub_226E97D1C(v3, &qword_27D7BA3A8, &qword_22767B360);
    sub_22766A730();
    v5 = sub_22766B380();
    v6 = sub_22766C8B0();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 344);
    v8 = *(v0 + 352);
    v10 = *(v0 + 208);
    v11 = *(v0 + 192);
    if (v7)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_226E8E000, v5, v6, "[CatalogSyncEvaluator] No sync anchor, sync required", v12, 2u);
      MEMORY[0x22AA9A450](v12, -1, -1);
    }

    v9(v10, v11);
    goto LABEL_17;
  }

  v14 = *(v0 + 176);
  v13 = *(v0 + 184);
  v15 = *(v0 + 160);
  v16 = *(v0 + 168);
  (*(v2 + 32))(*(v0 + 336), v3, v1);
  sub_227665020();
  v17 = *(v16 + 104);
  v17(v14, *MEMORY[0x277D512C0], v15);
  sub_22750799C(&qword_28139B890, MEMORY[0x277D512C8]);
  v18 = sub_22766BFB0();
  v19 = *(v16 + 8);
  v19(v14, v15);
  v19(v13, v15);
  if (v18)
  {
    v20 = *(v0 + 456);
    v21 = sub_227667AF0();
    v23 = v22;
    if (v21 == sub_227667AF0() && v23 == v24)
    {

      goto LABEL_13;
    }

    v43 = sub_22766D190();

    if (v43)
    {
LABEL_13:
      v44 = *(v0 + 216);
      sub_22766A730();
      v31 = sub_22766B380();
      v32 = sub_22766C8B0();
      v45 = os_log_type_enabled(v31, v32);
      v34 = *(v0 + 344);
      v46 = *(v0 + 352);
      v36 = *(v0 + 336);
      v37 = *(v0 + 312);
      v38 = *(v0 + 320);
      v39 = *(v0 + 216);
      v40 = *(v0 + 192);
      if (v45)
      {
        v75 = *(v0 + 336);
        v41 = swift_slowAlloc();
        *v41 = 0;
        v42 = "[CatalogSyncEvaluator] Previous sync failed and priority is foreground, sync required";
        goto LABEL_15;
      }

      goto LABEL_16;
    }

    v61 = *__swift_project_boxed_opaque_existential_0((*(v0 + 56) + 16), *(*(v0 + 56) + 40));
    v62 = sub_22766A880();
    v64 = v63;
    *(v0 + 424) = v63;
    v65 = swift_task_alloc();
    *(v0 + 432) = v65;
    *v65 = v0;
    v65[1] = sub_227504E80;

    return sub_22709DD14(v62, v64);
  }

  else
  {
    v25 = *(v0 + 336);
    v26 = v17;
    v28 = *(v0 + 176);
    v27 = *(v0 + 184);
    v29 = *(v0 + 160);
    sub_227665020();
    v26(v28, *MEMORY[0x277D512B8], v29);
    LOBYTE(v25) = sub_22766BFB0();
    v19(v28, v29);
    v19(v27, v29);
    if (v25)
    {
      v30 = *(v0 + 248);
      sub_22766A730();
      v31 = sub_22766B380();
      v32 = sub_22766C8B0();
      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v0 + 344);
      v35 = *(v0 + 352);
      v36 = *(v0 + 336);
      v37 = *(v0 + 312);
      v38 = *(v0 + 320);
      v39 = *(v0 + 248);
      v40 = *(v0 + 192);
      if (v33)
      {
        v75 = *(v0 + 336);
        v41 = swift_slowAlloc();
        *v41 = 0;
        v42 = "[CatalogSyncEvaluator] Anchor status indicates reset requested, sync required";
LABEL_15:
        _os_log_impl(&dword_226E8E000, v31, v32, v42, v41, 2u);
        MEMORY[0x22AA9A450](v41, -1, -1);

        v34(v39, v40);
        (*(v38 + 8))(v75, v37);
LABEL_17:
        v48 = *(v0 + 328);
        v47 = *(v0 + 336);
        v49 = *(v0 + 304);
        v50 = *(v0 + 288);
        v52 = *(v0 + 256);
        v51 = *(v0 + 264);
        v54 = *(v0 + 240);
        v53 = *(v0 + 248);
        v56 = *(v0 + 224);
        v55 = *(v0 + 232);
        v66 = *(v0 + 216);
        v67 = *(v0 + 208);
        v68 = *(v0 + 184);
        v69 = *(v0 + 176);
        v70 = *(v0 + 152);
        v71 = *(v0 + 128);
        v72 = *(v0 + 120);
        v73 = *(v0 + 112);
        v74 = *(v0 + 88);
        v76 = *(v0 + 80);

        v57 = *(v0 + 8);

        return v57();
      }

LABEL_16:

      v34(v39, v40);
      (*(v38 + 8))(v36, v37);
      goto LABEL_17;
    }

    v59 = swift_task_alloc();
    *(v0 + 384) = v59;
    *v59 = v0;
    v59[1] = sub_2275043E4;
    v60 = *(v0 + 56);

    return sub_227505EA4();
  }
}

uint64_t sub_227504268()
{
  v23 = v0[47];
  (*(v0[35] + 8))(v0[36], v0[34]);
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[38];
  v4 = v0[36];
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[30];
  v7 = v0[31];
  v10 = v0[28];
  v9 = v0[29];
  v13 = v0[27];
  v14 = v0[26];
  v15 = v0[23];
  v16 = v0[22];
  v17 = v0[19];
  v18 = v0[16];
  v19 = v0[15];
  v20 = v0[14];
  v21 = v0[11];
  v22 = v0[10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2275043E4(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v8 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v6 = sub_2275058C4;
  }

  else
  {
    *(v4 + 400) = a1;
    v6 = sub_227504508;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227504508()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 48);
  if (sub_22744FC08(*(v0 + 400)))
  {
    v3 = *(v0 + 256);
    sub_22766A730();
    v4 = sub_22766B380();
    v5 = sub_22766C8B0();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 344);
    v8 = *(v0 + 352);
    v9 = *(v0 + 336);
    v10 = *(v0 + 312);
    v11 = *(v0 + 320);
    v12 = *(v0 + 256);
    v13 = *(v0 + 192);
    if (v6)
    {
      v47 = *(v0 + 336);
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_226E8E000, v4, v5, "[CatalogSyncEvaluator] Periodic sync interval expired, sync required", v14, 2u);
      v15 = v14;
      v9 = v47;
      MEMORY[0x22AA9A450](v15, -1, -1);
    }

    v7(v12, v13);
    (*(v11 + 8))(v9, v10);
    v17 = *(v0 + 328);
    v16 = *(v0 + 336);
    v18 = *(v0 + 304);
    v19 = *(v0 + 288);
    v21 = *(v0 + 256);
    v20 = *(v0 + 264);
    v23 = *(v0 + 240);
    v22 = *(v0 + 248);
    v25 = *(v0 + 224);
    v24 = *(v0 + 232);
    v37 = *(v0 + 216);
    v38 = *(v0 + 208);
    v39 = *(v0 + 184);
    v40 = *(v0 + 176);
    v41 = *(v0 + 152);
    v42 = *(v0 + 128);
    v43 = *(v0 + 120);
    v44 = *(v0 + 112);
    v45 = *(v0 + 88);
    v48 = *(v0 + 80);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = *(v0 + 56);
    v29 = v28[20];
    v30 = v28[21];
    __swift_project_boxed_opaque_existential_0(v28 + 17, v29);
    v31 = *(v30 + 24);

    v46 = (v31 + *v31);
    v32 = v31[1];
    v33 = swift_task_alloc();
    *(v0 + 408) = v33;
    *v33 = v0;
    v33[1] = sub_22750486C;
    v34 = *(v0 + 152);
    v35 = *(v0 + 136);
    v36 = *(v0 + 56);

    return (v46)(v34, sub_226F5AC78, v36, v35, v29, v30);
  }
}

uint64_t sub_22750486C()
{
  v2 = *(*v1 + 408);
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v4 = sub_227505A40;
  }

  else
  {
    v4 = sub_22750499C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22750499C()
{
  v1 = v0[42];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[8];
  v9 = v0[9];
  sub_227663EF0();
  v11 = v10;
  sub_227663F10();
  v13 = v12;
  sub_227664FA0();
  sub_227662920();
  sub_227662600();
  (*(v9 + 8))(v7, v8);
  v14 = *(v5 + 8);
  v14(v3, v4);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v15 = v0[40];
    v17 = v0[18];
    v16 = v0[19];
    v18 = v0[17];
    sub_226E97D1C(v0[11], &qword_27D7B9690, qword_227670B50);
    v19 = sub_227669540();
    sub_22750799C(&qword_27D7BE2A8, MEMORY[0x277D53E40]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D53E38], v19);
    swift_willThrow();
    (*(v17 + 8))(v16, v18);
    (*(v15 + 8))(v0[42], v0[39]);
LABEL_4:
    v33 = v0[41];
    v32 = v0[42];
    v34 = v0[38];
    v35 = v0[36];
    v37 = v0[32];
    v36 = v0[33];
    v39 = v0[30];
    v38 = v0[31];
    v41 = v0[28];
    v40 = v0[29];
    v54 = v0[27];
    v55 = v0[26];
    v57 = v0[23];
    v59 = v0[22];
    v62 = v0[19];
    v65 = v0[16];
    v67 = v0[15];
    v70 = v0[14];
    v73 = v0[11];
    v76 = v0[10];

    v42 = v0[1];
    goto LABEL_5;
  }

  v21 = v0[42];
  v69 = v0[52];
  v22 = v0[40];
  v23 = v0[18];
  v75 = v0[19];
  v78 = v0[39];
  v24 = v0[16];
  v72 = v0[17];
  v25 = v0[14];
  v26 = v0[12];
  v61 = v0[6];
  v64 = v0[7];
  (*(v0[13] + 32))(v24, v0[11], v26);
  sub_2276625D0();
  v28 = v11 + v27;
  sub_227664FA0();
  sub_2276625D0();
  v30 = v29;
  v14(v25, v26);
  sub_2276625D0();
  sub_227505BBC(v30, v31, v13, v28);
  v14(v24, v26);
  (*(v23 + 8))(v75, v72);
  (*(v22 + 8))(v21, v78);
  if (v69)
  {
    goto LABEL_4;
  }

  v45 = v0[41];
  v44 = v0[42];
  v46 = v0[38];
  v47 = v0[36];
  v49 = v0[32];
  v48 = v0[33];
  v51 = v0[30];
  v50 = v0[31];
  v53 = v0[28];
  v52 = v0[29];
  v56 = v0[27];
  v58 = v0[26];
  v60 = v0[23];
  v63 = v0[22];
  v66 = v0[19];
  v68 = v0[16];
  v71 = v0[15];
  v74 = v0[14];
  v77 = v0[11];
  v79 = v0[10];

  v42 = v0[1];
LABEL_5:

  return v42();
}

uint64_t sub_227504E80(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 432);
  v9 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v6 = sub_2275055CC;
  }

  else
  {
    v7 = *(v4 + 424);

    *(v4 + 448) = a1;
    v6 = sub_227504FAC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227504FAC()
{
  v100 = v0;
  v1 = v0[56];
  v2 = v0[42];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  v6 = v0[6];
  sub_22766C540();
  v8 = v7;
  sub_227664FA0();
  sub_2276625D0();
  v10 = v9;
  v11 = *(v5 + 8);
  v11(v3, v4);
  sub_2276625D0();
  if (v8 + v10 <= v12)
  {
    v34 = v0[29];
    sub_22766A730();
    v35 = sub_22766B380();
    v36 = sub_22766C8B0();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[43];
    v39 = v0[44];
    v40 = v0[42];
    v41 = v0[39];
    v42 = v0[40];
    v43 = v0[29];
    v44 = v0[24];
    if (v37)
    {
      v97 = v0[42];
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_226E8E000, v35, v36, "[CatalogSyncEvaluator] Previous sync failed and back off interval met, sync required", v45, 2u);
      v46 = v45;
      v40 = v97;
      MEMORY[0x22AA9A450](v46, -1, -1);
    }

    v38(v43, v44);
    (*(v42 + 8))(v40, v41);
    v48 = v0[41];
    v47 = v0[42];
    v49 = v0[38];
    v50 = v0[36];
    v52 = v0[32];
    v51 = v0[33];
    v54 = v0[30];
    v53 = v0[31];
    v56 = v0[28];
    v55 = v0[29];
    v72 = v0[27];
    v74 = v0[26];
    loga = v0[23];
    v80 = v0[22];
    v83 = v0[19];
    v85 = v0[16];
    v88 = v0[15];
    v91 = v0[14];
    v94 = v0[11];
    v98 = v0[10];

    v57 = v0[1];
  }

  else
  {
    v13 = v0[41];
    v14 = v0[42];
    v15 = v0[39];
    v16 = v0[40];
    v17 = v0[28];
    sub_22766A730();
    (*(v16 + 16))(v13, v14, v15);
    v18 = sub_22766B380();
    v93 = sub_22766C8B0();
    v19 = os_log_type_enabled(v18, v93);
    v21 = v0[43];
    v20 = v0[44];
    v22 = v0[40];
    v23 = v0[41];
    v96 = v0[39];
    v24 = v0[28];
    v25 = v0[24];
    if (v19)
    {
      v90 = v0[43];
      v26 = v0[15];
      log = v18;
      v27 = v0[12];
      v87 = v0[24];
      v28 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v99 = v82;
      *v28 = 136315394;
      sub_227664FA0();
      sub_22750799C(&qword_28139BDB0, MEMORY[0x277CC9578]);
      v29 = sub_22766D140();
      v79 = v24;
      v31 = v30;
      v11(v26, v27);
      v32 = *(v22 + 8);
      v32(v23, v96);
      v33 = sub_226E97AE8(v29, v31, &v99);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2048;
      *(v28 + 14) = v8;
      _os_log_impl(&dword_226E8E000, log, v93, "[CatalogSyncEvaluator] Previous sync is too recent, skipping sync - anchor date: %s, back off interval: %f", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v82);
      MEMORY[0x22AA9A450](v82, -1, -1);
      MEMORY[0x22AA9A450](v28, -1, -1);

      v90(v79, v87);
    }

    else
    {

      v32 = *(v22 + 8);
      v32(v23, v96);
      v21(v24, v25);
    }

    v58 = sub_227665D10();
    sub_22750799C(&qword_28139B720, MEMORY[0x277D51E08]);
    swift_allocError();
    (*(*(v58 - 8) + 104))(v59, *MEMORY[0x277D51DE8], v58);
    swift_willThrow();
    v32(v0[42], v0[39]);
    v61 = v0[41];
    v60 = v0[42];
    v62 = v0[38];
    v63 = v0[36];
    v65 = v0[32];
    v64 = v0[33];
    v67 = v0[30];
    v66 = v0[31];
    v69 = v0[28];
    v68 = v0[29];
    v71 = v0[27];
    v73 = v0[26];
    v75 = v0[23];
    logb = v0[22];
    v81 = v0[19];
    v84 = v0[16];
    v86 = v0[15];
    v89 = v0[14];
    v92 = v0[11];
    v95 = v0[10];

    v57 = v0[1];
  }

  return v57();
}

uint64_t sub_2275055CC()
{
  v52 = v0;
  v1 = v0[55];
  v2 = v0[53];
  v3 = v0[30];

  sub_22766A730();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[55];
    v43 = v0[43];
    v45 = v0[44];
    v8 = v0[40];
    v47 = v0[39];
    v49 = v0[42];
    v41 = v0[30];
    v9 = v0[24];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v51 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = v0[2];
    v13 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v15 = sub_226E97AE8(v13, v14, &v51);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v5, v6, "[CatalogSyncEvaluator] Previous sync failed an no back off interval was defined, sync required: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AA9A450](v11, -1, -1);
    MEMORY[0x22AA9A450](v10, -1, -1);

    v43(v41, v9);
    (*(v8 + 8))(v49, v47);
  }

  else
  {
    v16 = v0[55];
    v18 = v0[43];
    v17 = v0[44];
    v19 = v0[42];
    v20 = v0[39];
    v21 = v0[40];
    v22 = v0[30];
    v23 = v0[24];

    v18(v22, v23);
    (*(v21 + 8))(v19, v20);
  }

  v25 = v0[41];
  v24 = v0[42];
  v26 = v0[38];
  v27 = v0[36];
  v29 = v0[32];
  v28 = v0[33];
  v31 = v0[30];
  v30 = v0[31];
  v33 = v0[28];
  v32 = v0[29];
  v36 = v0[27];
  v37 = v0[26];
  v38 = v0[23];
  v39 = v0[22];
  v40 = v0[19];
  v42 = v0[16];
  v44 = v0[15];
  v46 = v0[14];
  v48 = v0[11];
  v50 = v0[10];

  v34 = v0[1];

  return v34();
}

uint64_t sub_2275058C4()
{
  v23 = v0[49];
  (*(v0[40] + 8))(v0[42], v0[39]);
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[38];
  v4 = v0[36];
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[30];
  v7 = v0[31];
  v10 = v0[28];
  v9 = v0[29];
  v13 = v0[27];
  v14 = v0[26];
  v15 = v0[23];
  v16 = v0[22];
  v17 = v0[19];
  v18 = v0[16];
  v19 = v0[15];
  v20 = v0[14];
  v21 = v0[11];
  v22 = v0[10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_227505A40()
{
  v23 = v0[52];
  (*(v0[40] + 8))(v0[42], v0[39]);
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[38];
  v4 = v0[36];
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[30];
  v7 = v0[31];
  v10 = v0[28];
  v9 = v0[29];
  v13 = v0[27];
  v14 = v0[26];
  v15 = v0[23];
  v16 = v0[22];
  v17 = v0[19];
  v18 = v0[16];
  v19 = v0[15];
  v20 = v0[14];
  v21 = v0[11];
  v22 = v0[10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_227505BBC(double a1, double a2, double a3, double a4)
{
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - v15;
  if (a4 <= a2)
  {
    if (a4 <= a1)
    {
      return sub_227505BBC(v14, a1, a2, a3, a3 + a4);
    }

    else
    {
      sub_22766A730();
      v23 = sub_22766B380();
      v24 = sub_22766C8B0();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_226E8E000, v23, v24, "[CatalogSyncEvaluator] Boundary time crossed between last sync time and now, sync immediately", v25, 2u);
        MEMORY[0x22AA9A450](v25, -1, -1);
      }

      return (*(v9 + 8))(v16, v8);
    }
  }

  else
  {
    sub_22766A730();
    v17 = sub_22766B380();
    v18 = sub_22766C8B0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_226E8E000, v17, v18, "[CatalogSyncEvaluator] Current time has not crossed boundary time, no sync needed", v19, 2u);
      MEMORY[0x22AA9A450](v19, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    v20 = sub_227665D10();
    sub_22750799C(&qword_28139B720, MEMORY[0x277D51E08]);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51DF0], v20);
    return swift_willThrow();
  }
}

uint64_t sub_227505EA4()
{
  v1[6] = v0;
  v2 = sub_22766B390();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227505F70, 0, 0);
}

uint64_t sub_227505F70()
{
  v1 = *__swift_project_boxed_opaque_existential_0((v0[6] + 16), *(v0[6] + 40));
  v2 = sub_22766A870();
  v4 = v3;
  v0[11] = v3;
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_227506030;

  return sub_22709DD14(v2, v4);
}

uint64_t sub_227506030(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v9 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v6 = sub_2275062F8;
  }

  else
  {
    v7 = *(v4 + 88);

    *(v4 + 112) = a1;
    v6 = sub_22750615C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22750615C()
{
  v1 = v0[14];
  sub_22766C540();
  if (v2 <= 0.0)
  {
    v9 = v0[9];
    sub_22766A730();
    v10 = sub_22766B380();
    v11 = sub_22766C8B0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_226E8E000, v10, v11, "[CatalogSyncEvaluator] Sync interval is 0, using default periodic sync interval", v12, 2u);
      MEMORY[0x22AA9A450](v12, -1, -1);
    }

    v14 = v0[8];
    v13 = v0[9];
    v15 = v0[7];

    (*(v14 + 8))(v13, v15);
    v16 = swift_task_alloc();
    v0[15] = v16;
    *v16 = v0;
    v16[1] = sub_2275064F0;
    v17 = v0[6];

    return sub_22750684C();
  }

  else
  {
    v4 = v0[9];
    v3 = v0[10];
    v5 = v2;

    v6 = v0[1];
    v7.n128_f64[0] = v5;

    return v6(v7);
  }
}

uint64_t sub_2275062F8()
{
  v24 = v0;
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];

  sub_22766A730();
  v4 = v1;
  v5 = sub_22766B380();
  v6 = sub_22766C8B0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    v8 = v0[10];
    v9 = v0[7];
    v10 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = v0[2];
    v14 = MEMORY[0x22AA995D0](v0[3], v0[4]);
    v16 = sub_226E97AE8(v14, v15, &v23);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_226E8E000, v5, v6, "[CatalogSyncEvaluator] Failed fetching sync interval from bag, using default periodic sync interval: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);

    (*(v10 + 8))(v8, v9);
  }

  else
  {
    v17 = v0[10];
    v18 = v0[7];
    v19 = v0[8];

    (*(v19 + 8))(v17, v18);
  }

  v20 = swift_task_alloc();
  v0[16] = v20;
  *v20 = v0;
  v20[1] = sub_227506638;
  v21 = v0[6];

  return sub_22750684C();
}

uint64_t sub_2275064F0(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;

  v7 = *(v4 + 80);
  v8 = *(v4 + 72);

  v10 = *(v6 + 8);
  if (!v1)
  {
    v9.n128_f64[0] = a1;
  }

  return v10(v9);
}

uint64_t sub_227506638(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v8 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v6 = sub_2275067D8;
  }

  else
  {
    *(v4 + 144) = a1;
    v6 = sub_22750675C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22750675C()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);

  v4 = *(v0 + 8);
  v5.n128_u64[0] = v1;

  return v4(v5);
}

uint64_t sub_2275067D8()
{
  v1 = *(v0 + 136);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22750684C()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22750690C, 0, 0);
}

uint64_t sub_22750690C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_22766A730();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v5 = v4[20];
  v6 = v4[21];
  __swift_project_boxed_opaque_existential_0(v4 + 17, v5);
  v7 = *(v6 + 24);

  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_227506ACC;
  v10 = v0[3];
  v11 = MEMORY[0x277D839F8];

  return (v13)(v0 + 2, sub_227507950, v10, v11, v5, v6);
}

uint64_t sub_227506ACC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_226F9DA40;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_227506BE8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227506BE8()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = v0[1];
  v4.n128_u64[0] = v2;

  return v3(v4);
}

uint64_t sub_227506C54@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_227663FA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *__swift_project_boxed_opaque_existential_0((a2 + 96), *(a2 + 120));
  result = sub_226EAF48C(a1, v11);
  if (!v3)
  {
    sub_227663ED0();
    v15 = v14;
    result = (*(v8 + 8))(v11, v7);
    *a3 = v15;
  }

  return result;
}

uint64_t sub_227506D70()
{
  v1[6] = v0;
  v2 = sub_22766B390();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = sub_227662750();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v1[13] = v8;
  v9 = *(v8 - 8);
  v1[14] = v9;
  v10 = *(v9 + 64) + 15;
  v1[15] = swift_task_alloc();
  v11 = sub_227665AD0();
  v1[16] = v11;
  v12 = *(v11 - 8);
  v1[17] = v12;
  v13 = *(v12 + 64) + 15;
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227506F50, 0, 0);
}

uint64_t sub_227506F50()
{
  v1 = v0[15];
  v2 = v0[6];
  sub_2275074C8();
  v3 = swift_task_alloc();
  v0[19] = v3;
  *(v3 + 16) = "SeymourServices/CatalogSyncEvaluator.swift";
  *(v3 + 24) = 42;
  *(v3 + 32) = 2;
  *(v3 + 40) = 132;
  *(v3 + 48) = v1;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_22750706C;
  v6 = v0[18];
  v7 = v0[16];

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000013, 0x8000000227693B00, sub_22750796C, v3, v7);
}

uint64_t sub_22750706C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v5 = sub_2275072B0;
  }

  else
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    v5 = sub_2275071BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2275071BC()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  sub_227662740();
  v7 = sub_227665AA0();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v8 = v0[18];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[9];

  v12 = v0[1];

  return v12(v7 & 1);
}

uint64_t sub_2275072B0()
{
  v26 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 72);
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  sub_22766A730();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C890();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 168);
    v7 = *(v0 + 64);
    v24 = *(v0 + 72);
    v8 = *(v0 + 56);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 16);
    v12 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v14 = sub_226E97AE8(v12, v13, &v25);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v4, v5, "[CatalogSyncEvaluator] Failed fetching service subscription: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v7 + 8))(v24, v8);
  }

  else
  {
    v16 = *(v0 + 64);
    v15 = *(v0 + 72);
    v17 = *(v0 + 56);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 144);
  v19 = *(v0 + 120);
  v20 = *(v0 + 96);
  v21 = *(v0 + 72);

  v22 = *(v0 + 8);

  return v22(0);
}

uint64_t sub_2275074C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2B0, &unk_227670890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - v6;
  v8 = *__swift_project_boxed_opaque_existential_0((v0 + 184), *(v0 + 208));
  v9 = OBJC_IVAR____TtC15SeymourServices33ServiceSubscriptionProviderBroker_state;
  swift_beginAccess();
  sub_226E92A44(v8 + v9, &v19);
  if (v20)
  {
    sub_226E92AB8(&v19, v18);
    sub_226E91B50(v18, v17);
    v10 = swift_allocObject();
    sub_226E92AB8(v17, v10 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    sub_226F099DC();
    v11 = swift_allocError();
    *v12 = 0;
    *(swift_allocObject() + 16) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB970, &qword_227670A50);
    sub_227669280();
  }

  (*(v2 + 16))(v5, v7, v1);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  (*(v2 + 32))(v14 + v13, v5, v1);
  v15 = (v14 + ((v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = sub_2275077B4;
  v15[1] = 0;
  sub_227665AD0();
  sub_227669270();
  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_2275077B4(void *a1)
{
  v2 = sub_227667900();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276678E0();
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  (*(v8 + 8))(v6, v7, v8);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22750799C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227507A48()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_22766C000();
  }

  v3 = [v0 mainBundle];
  v4 = [v3 infoDictionary];

  if (v4)
  {
    v5 = sub_22766BEB0();

    if (*(v5 + 16) && (v6 = sub_226E92000(0xD00000000000001ALL, 0x80000002276A2F40), (v7 & 1) != 0))
    {
      sub_226E97CC0(*(v5 + 56) + 32 * v6, v9);

      swift_dynamicCast();
    }

    else
    {
    }
  }

  sub_2276693D0();
  sub_2276693B0();
  return sub_2276651E0();
}

uint64_t sub_227507C40(uint64_t a1)
{
  v2 = sub_22750896C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227507C7C(uint64_t a1)
{
  v2 = sub_22750896C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227507CB8(uint64_t a1)
{
  v2 = sub_227508A68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227507CF4(uint64_t a1)
{
  v2 = sub_227508A68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227507D30(uint64_t a1)
{
  v2 = sub_2275089C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227507D6C(uint64_t a1)
{
  v2 = sub_2275089C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227507DA8(uint64_t a1)
{
  v2 = sub_227508A14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227507DE4(uint64_t a1)
{
  v2 = sub_227508A14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227507E20(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v33 = a2;
  v32 = a4;
  v30 = a3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE2F0, &qword_227689EB0);
  v29 = *(v31 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v28 = &v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE2F8, &qword_227689EB8);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE300, &qword_227689EC0);
  v25 = *(v11 - 8);
  v12 = *(v25 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE308, &qword_227689EC8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22750896C();
  sub_22766D480();
  if (v32)
  {
    if (v32 == 1)
    {
      v37 = 1;
      sub_227508A14();
      sub_22766D0D0();
      v36 = v33;
      sub_227038D60();
      v21 = v27;
      sub_22766D120();
      (*(v26 + 8))(v10, v21);
    }

    else
    {
      v38 = 2;
      sub_2275089C0();
      v23 = v28;
      sub_22766D0D0();
      v24 = v31;
      sub_22766D0F0();
      (*(v29 + 8))(v23, v24);
    }

    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    v35 = 0;
    sub_227508A68();
    sub_22766D0D0();
    v34 = v33;
    sub_227038DB4();
    sub_22766D120();
    (*(v25 + 8))(v14, v11);
    return (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_22750824C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2275082F4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_2275082A0()
{
  result = qword_28139A068;
  if (!qword_28139A068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139A068);
  }

  return result;
}

uint64_t sub_2275082F4(uint64_t *a1)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE2B0, &qword_227689E88);
  v44 = *(v40 - 8);
  v2 = *(v44 + 64);
  MEMORY[0x28223BE20](v40);
  v45 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE2B8, &qword_227689E90);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE2C0, &qword_227689E98);
  v41 = *(v9 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE2C8, &unk_227689EA0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v47 = a1;
  v20 = __swift_project_boxed_opaque_existential_0(a1, v18);
  sub_22750896C();
  v21 = v46;
  sub_22766D460();
  if (!v21)
  {
    v39 = v9;
    v22 = v45;
    v46 = v14;
    v23 = v17;
    v24 = sub_22766D0C0();
    v25 = (2 * *(v24 + 16)) | 1;
    v48 = v24;
    v49 = v24 + 32;
    v50 = 0;
    v51 = v25;
    v26 = sub_2270381F0();
    if (v26 == 3 || v50 != v51 >> 1)
    {
      v29 = sub_22766CEB0();
      swift_allocError();
      v31 = v30;
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9D10, &qword_227675F78) + 48);
      *v31 = &type metadata for AssetCatalogFilterProperty;
      v20 = v23;
      sub_22766D060();
      sub_22766CEA0();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
      swift_willThrow();
      (*(v46 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      if (!v26)
      {
        v52 = 0;
        sub_227508A68();
        v34 = v17;
        sub_22766D050();
        sub_227038D0C();
        v37 = v39;
        sub_22766D0B0();
        (*(v41 + 8))(v12, v37);
        (*(v46 + 8))(v34, v13);
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

      if (v26 == 1)
      {
        v52 = 1;
        sub_227508A14();
        sub_22766D050();
        v27 = v46;
        sub_227038C64();
        v28 = v42;
        sub_22766D0B0();
        (*(v43 + 8))(v8, v28);
        (*(v27 + 8))(v17, v13);
        swift_unknownObjectRelease();
LABEL_11:
        v20 = v52;
        goto LABEL_8;
      }

      v52 = 2;
      sub_2275089C0();
      sub_22766D050();
      v35 = v46;
      v36 = v40;
      v20 = sub_22766D080();
      (*(v44 + 8))(v22, v36);
      (*(v35 + 8))(v17, v13);
      swift_unknownObjectRelease();
    }
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_0(v47);
  return v20;
}

unint64_t sub_22750896C()
{
  result = qword_27D7BE2D0;
  if (!qword_27D7BE2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE2D0);
  }

  return result;
}

unint64_t sub_2275089C0()
{
  result = qword_27D7BE2D8;
  if (!qword_27D7BE2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE2D8);
  }

  return result;
}

unint64_t sub_227508A14()
{
  result = qword_27D7BE2E0;
  if (!qword_27D7BE2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE2E0);
  }

  return result;
}

unint64_t sub_227508A68()
{
  result = qword_27D7BE2E8;
  if (!qword_27D7BE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE2E8);
  }

  return result;
}

unint64_t sub_227508B1C()
{
  result = qword_27D7BE310;
  if (!qword_27D7BE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE310);
  }

  return result;
}

unint64_t sub_227508B74()
{
  result = qword_27D7BE318;
  if (!qword_27D7BE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE318);
  }

  return result;
}

unint64_t sub_227508BCC()
{
  result = qword_27D7BE320;
  if (!qword_27D7BE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE320);
  }

  return result;
}

unint64_t sub_227508C24()
{
  result = qword_27D7BE328;
  if (!qword_27D7BE328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE328);
  }

  return result;
}

unint64_t sub_227508C7C()
{
  result = qword_27D7BE330;
  if (!qword_27D7BE330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE330);
  }

  return result;
}

unint64_t sub_227508CD4()
{
  result = qword_27D7BE338;
  if (!qword_27D7BE338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE338);
  }

  return result;
}

unint64_t sub_227508D2C()
{
  result = qword_27D7BE340;
  if (!qword_27D7BE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE340);
  }

  return result;
}

unint64_t sub_227508D84()
{
  result = qword_27D7BE348;
  if (!qword_27D7BE348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE348);
  }

  return result;
}

unint64_t sub_227508DDC()
{
  result = qword_27D7BE350;
  if (!qword_27D7BE350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE350);
  }

  return result;
}

unint64_t sub_227508E34()
{
  result = qword_27D7BE358;
  if (!qword_27D7BE358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE358);
  }

  return result;
}

unint64_t sub_227508E8C()
{
  result = qword_27D7BE360;
  if (!qword_27D7BE360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE360);
  }

  return result;
}

unint64_t sub_227508EE4()
{
  result = qword_27D7BE368;
  if (!qword_27D7BE368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE368);
  }

  return result;
}

uint64_t sub_227508F4C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE3A0, &qword_22768A4D8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2275096D8();
  sub_22766D480();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE388, &qword_22768A4D0);
  sub_227509780(&qword_27D7BE3A8, sub_2275097F8);
  sub_22766D120();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    sub_22766D120();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_227509140()
{
  if (*v0)
  {
    return 0x6F6973756C636E69;
  }

  else
  {
    return 0x6F6973756C637865;
  }
}

uint64_t sub_22750916C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6973756C637865 && a2 == 0xEA0000000000736ELL;
  if (v6 || (sub_22766D190() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F6973756C636E69 && a2 == 0xEA0000000000736ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22766D190();

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

uint64_t sub_227509250(uint64_t a1)
{
  v2 = sub_2275096D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22750928C(uint64_t a1)
{
  v2 = sub_2275096D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2275092C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2275094A8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_227509310()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22766D370();
  sub_2273929C8(v4, v1);
  sub_2273929C8(v4, v2);
  return sub_22766D3F0();
}

uint64_t sub_227509364(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_2273929C8(a1, v3);

  return sub_2273929C8(a1, v4);
}

uint64_t sub_2275093A4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22766D370();
  sub_2273929C8(v4, v1);
  sub_2273929C8(v4, v2);
  return sub_22766D3F0();
}

uint64_t sub_2275093F4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_227034E30(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_227034E30(v2, v3);
}

unint64_t sub_227509454()
{
  result = qword_27D7BE370;
  if (!qword_27D7BE370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE370);
  }

  return result;
}

uint64_t sub_2275094A8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE378, &qword_22768A4C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2275096D8();
  sub_22766D460();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE388, &qword_22768A4D0);
  v11 = 0;
  sub_227509780(&qword_27D7BE390, sub_22750972C);
  sub_22766D0B0();
  v9 = v12;
  v11 = 1;
  sub_22766D0B0();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

unint64_t sub_2275096D8()
{
  result = qword_27D7BE380;
  if (!qword_27D7BE380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE380);
  }

  return result;
}

unint64_t sub_22750972C()
{
  result = qword_27D7BE398;
  if (!qword_27D7BE398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE398);
  }

  return result;
}

uint64_t sub_227509780(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BE388, &qword_22768A4D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2275097F8()
{
  result = qword_27D7BE3B0;
  if (!qword_27D7BE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE3B0);
  }

  return result;
}

unint64_t sub_227509870()
{
  result = qword_27D7BE3B8;
  if (!qword_27D7BE3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE3B8);
  }

  return result;
}

unint64_t sub_2275098C8()
{
  result = qword_27D7BE3C0;
  if (!qword_27D7BE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE3C0);
  }

  return result;
}

unint64_t sub_227509920()
{
  result = qword_27D7BE3C8;
  if (!qword_27D7BE3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE3C8);
  }

  return result;
}

Swift::Bool __swiftcall MediaDuration.containsAssetDuration(_:)(Swift::Double a1)
{
  sub_227664000();
  v3 = v2;
  sub_227663FF0();
  v5 = v3 + v4;
  sub_227664000();
  v7 = v6;
  sub_227663FE0();
  return v5 >= a1 && v7 - v8 <= a1;
}

uint64_t Set<>.matchingAssetDuration(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v33[0] = a2;
  v5 = sub_227664010();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v33 - v11;
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  v33[1] = v6 + 16;
  v33[2] = v6 + 32;
  v34 = a1;

  v19 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_8:
      (*(v6 + 16))(v12, *(v34 + 48) + *(v6 + 72) * (__clz(__rbit64(v16)) | (v20 << 6)), v5);
      v21 = *(v6 + 32);
      v21(v10, v12, v5);
      sub_227664000();
      v23 = v22;
      sub_227663FF0();
      v25 = v23 + v24;
      sub_227664000();
      v27 = v26;
      sub_227663FE0();
      if (v27 - v28 <= a3 && v25 >= a3)
      {
        break;
      }

      v16 &= v16 - 1;
      result = (*(v6 + 8))(v10, v5);
      v19 = v20;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v30 = v33[0];
    v21(v33[0], v10, v5);
    v31 = v30;
    v32 = 0;
    return (*(v6 + 56))(v31, v32, 1, v5);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        v32 = 1;
        v31 = v33[0];
        return (*(v6 + 56))(v31, v32, 1, v5);
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_227509C4C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_227664210();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v64 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v58 - v16;
  v18 = sub_2276624A0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v63 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v58 - v23;
  v25 = [a1 identifier];
  if (!v25)
  {
    goto LABEL_6;
  }

  v69 = v24;
  v70 = v19;
  v66 = v13;
  v26 = v25;
  v62 = sub_22766C000();
  v68 = v27;

  v28 = [a1 sharingURL];
  if (v28)
  {
    v29 = v28;
    sub_22766C000();
  }

  sub_227662310();
  v30 = v70;
  if ((*(v70 + 48))(v17, 1, v18) == 1)
  {

    sub_226E97D1C(v17, &unk_27D7BB570, &unk_227670FC0);
LABEL_6:
    v31 = sub_227664DD0();
    sub_22750B014(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D51028], v31);
    swift_willThrow();

    return;
  }

  (*(v30 + 32))(v69, v17, v18);
  v33 = [a1 preview];
  if (v33)
  {
    v34 = v67;
    sub_226F96E94(v33, v7);
    v35 = v34;
    if (!v34)
    {
      v36 = v66;
      (*(v4 + 32))(v66, v7, v3);
      v37 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v38 = sub_227664DD0();
    sub_22750B014(&qword_28139B8D0, MEMORY[0x277D51040]);
    v35 = swift_allocError();
    (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277D51028], v38);
    swift_willThrow();
  }

  v37 = 1;
  v36 = v66;
LABEL_12:
  (*(v4 + 56))(v36, v37, 1, v3);
  v40 = [a1 socialMediaHandles];
  if (v40)
  {
    v41 = v40;
    v42 = MEMORY[0x22AA99A00]();
    v48 = sub_227154CD0(v41);
    objc_autoreleasePoolPop(v42);
    v67 = sub_226F3EB50(v48);

    v49 = [a1 bio];
    if (v49)
    {
      v50 = v49;
      v51 = sub_22766C000();
      v60 = v52;
      v61 = v51;
    }

    else
    {
      v60 = 0;
      v61 = 0;
    }

    v53 = [a1 informalName];
    if (v53)
    {
      v54 = v53;
      v59 = sub_22766C000();
    }

    else
    {
      v59 = 0;
    }

    v55 = v66;
    sub_226E93170(v66, v64, &qword_27D7B8F00, &unk_227672910);
    v56 = v70;
    v57 = v69;
    (*(v70 + 16))(v63, v69, v18);
    sub_2276649E0();

    sub_226E97D1C(v55, &qword_27D7B8F00, &unk_227672910);
    (*(v56 + 8))(v57, v18);
  }

  else
  {
    v43 = sub_227664DD0();
    sub_22750B014(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    v44 = *(*(v43 - 8) + 104);
    v45 = v43;
    v46 = v66;
    v44(v47, *MEMORY[0x277D51028], v45);
    swift_willThrow();

    sub_226E97D1C(v46, &qword_27D7B8F00, &unk_227672910);
    (*(v30 + 8))(v69, v18);
  }
}

void sub_22750A3AC(void *a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v5 = sub_2276624A0();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - v11;
  sub_2276649A0();
  v13 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_2276649F0();
  if (v14)
  {
    v15 = sub_22766BFD0();
  }

  else
  {
    v15 = 0;
  }

  [a1 setBio_];

  sub_2276649C0();
  if (v16)
  {
    v17 = sub_22766BFD0();
  }

  else
  {
    v17 = 0;
  }

  [a1 setInformalName_];

  sub_227664A00();
  v18 = sub_227664210();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v12, 1, v18) == 1)
  {
    sub_226E97D1C(v12, &qword_27D7B8F00, &unk_227672910);
    v20 = 0;
    goto LABEL_9;
  }

  v32 = v2;
  v24 = objc_opt_self();
  v25 = sub_22766BFD0();
  v26 = [v24 insertNewObjectForEntityForName:v25 inManagedObjectContext:v35];

  type metadata accessor for ManagedCatalogPreview();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {

    v29 = sub_227664DD0();
    sub_22750B014(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D51000], v29);
    swift_willThrow();
    goto LABEL_15;
  }

  v20 = v27;
  v28 = v32;
  sub_226F9789C(v27);
  if (v28)
  {

LABEL_15:
    (*(v19 + 8))(v12, v18);
    return;
  }

  (*(v19 + 8))(v12, v18);
  v3 = 0;
LABEL_9:
  [a1 setPreview_];

  sub_2276649B0();
  sub_227662390();
  (*(v33 + 8))(v8, v34);
  v21 = sub_22766BFD0();

  [a1 setSharingURL_];

  v22 = sub_2276649D0();
  v23 = sub_227646F00(v35, v22);

  if (!v3)
  {
    [a1 setSocialMediaHandles_];
  }
}

size_t static TrainerMetadata.representativeSamples()()
{
  v46 = sub_2276624A0();
  v47 = *(v46 - 8);
  v0 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = &v33 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE3D0, &qword_22768A640);
  v5 = *(v43 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = (&v33 - v7);
  v41 = sub_227664A10();
  v8 = *(v41 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22766CB70();
  v11 = sub_22766C090();
  v12 = sub_22766C090();
  sub_227664210();
  sub_22750B014(&qword_27D7B9110, MEMORY[0x277D50760]);
  v13 = sub_22766CB70();
  v14 = sub_2276622F0();
  v15 = static SocialMediaHandle.representativeSamples()();
  v16 = sub_226F3EB50(v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE3D8, &qword_22768A648);
  v17 = sub_22766C380();
  v17[2] = 3;
  v17[4] = v16;
  v17[5] = v16;
  v17[6] = v16;
  v66 = v11;
  v67[0] = v48;
  v67[1] = v67;
  v67[2] = &v66;
  v64 = v13;
  v65 = v12;
  v67[3] = &v65;
  v67[4] = &v64;
  v62 = v17;
  v63 = v14;
  v67[5] = &v63;
  v67[6] = &v62;
  swift_bridgeObjectRetain_n();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v58 = v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC7A0, &qword_22767EE68);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA458, &qword_227678C08);
  v50 = sub_226F5BF60(&qword_27D7BA460, &qword_27D7B8470, qword_227677CA0);
  v51 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v52 = v51;
  v53 = sub_226F5BF60(&qword_27D7BC7B0, &qword_27D7BC7A0, &qword_22767EE68);
  v54 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v55 = sub_226F5BF60(&qword_27D7BA470, &qword_27D7BA458, &qword_227678C08);
  v18 = sub_2276638E0();

  v19 = *(v18 + 16);
  if (v19)
  {
    v49 = MEMORY[0x277D84F90];
    result = sub_226F1F8C8(0, v19, 0);
    v21 = 0;
    v35 = v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v22 = v49;
    v34 = (v47 + 16);
    v33 = v8 + 32;
    v39 = v5;
    v38 = v8;
    v37 = v18;
    v36 = v19;
    while (v21 < *(v18 + 16))
    {
      v23 = v42;
      sub_226E93170(v35 + *(v5 + 72) * v21, v42, &qword_27D7BE3D0, &qword_22768A640);
      v24 = v23[1];
      v48 = *v23;
      v25 = v23[3];
      v47 = v23[2];
      v26 = v23[4];
      v27 = v23[5];
      v28 = v43[24];
      v29 = *(v23 + v43[28]);
      sub_226E93170(v23 + v43[20], v44, &qword_27D7B8F00, &unk_227672910);
      (*v34)(v45, v23 + v28, v46);

      v30 = v40;
      sub_2276649E0();
      sub_226E97D1C(v23, &qword_27D7BE3D0, &qword_22768A640);
      v49 = v22;
      v32 = *(v22 + 16);
      v31 = *(v22 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_226F1F8C8(v31 > 1, v32 + 1, 1);
        v22 = v49;
      }

      ++v21;
      *(v22 + 16) = v32 + 1;
      result = (*(v38 + 32))(v22 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v32, v30, v41);
      v5 = v39;
      v18 = v37;
      if (v36 == v21)
      {

        return v22;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_22750AFBC(uint64_t a1)
{
  result = sub_22750B014(&qword_27D7BE3E0, MEMORY[0x277D50C78]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22750B014(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22750B078()
{
  v1 = sub_227664470();
  sub_22750B1EC();
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, *MEMORY[0x277D50910], v1);
  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22750B148()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226E92F34;

  return sub_22750B05C();
}

unint64_t sub_22750B1EC()
{
  result = qword_27D7BA250;
  if (!qword_27D7BA250)
  {
    sub_227664470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA250);
  }

  return result;
}

void sub_22750B254(void *a1)
{
  v3 = [a1 identifier];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  sub_22766C000();

  v5 = [a1 name];
  if (!v5)
  {

LABEL_6:
    v11 = sub_227664DD0();
    sub_22750B8EC(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D51028], v11);
    swift_willThrow();
    goto LABEL_12;
  }

  v6 = v5;
  v7 = sub_22766C000();
  v15 = v8;
  v16 = v7;

  v9 = [a1 artwork];
  if (v9)
  {
    v10 = v9;
    sub_227662590();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2A0, &qword_22767A148);
  sub_227125C68();
  sub_2276683D0();
  if (v1)
  {
  }

  v13 = [a1 informalName];
  if (v13)
  {
    v14 = v13;
    sub_22766C000();
  }

  sub_227664E90();
LABEL_12:
}

size_t static TrainerReference.representativeSamples()()
{
  v29 = sub_227664EB0();
  v0 = *(v29 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v29);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227669180();
  sub_22750B8EC(&qword_27D7B8BE0, MEMORY[0x277D53A78]);
  v4 = sub_22766C5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2A0, &qword_22767A148);
  v5 = sub_22766C380();
  v5[2] = 3;
  v5[4] = v4;
  v5[5] = v4;
  v5[6] = v4;
  swift_bridgeObjectRetain_n();
  v6 = sub_22766C090();
  v7 = sub_22766C090();
  v8 = sub_22766C090();
  v42 = v6;
  v43[0] = v5;
  v43[1] = v43;
  v43[2] = &v42;
  v40 = v7;
  v41 = v8;
  v43[3] = &v41;
  v43[4] = &v40;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC798, &qword_22767EE60);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v38 = v37;
  v39 = v37;
  v32 = sub_226F5BF60(&qword_27D7BC7A8, &qword_27D7BC798, &qword_22767EE60);
  v33 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v34 = v33;
  v35 = v33;
  v9 = sub_2276638E0();

  v10 = *(v9 + 16);
  if (v10)
  {
    v31 = MEMORY[0x277D84F90];
    result = sub_226F1F6C8(0, v10, 0);
    v12 = 0;
    v13 = v31;
    v25 = v0 + 32;
    v14 = (v9 + 80);
    v27 = v9;
    v28 = v0;
    v26 = v10;
    v24 = v3;
    while (v12 < *(v9 + 16))
    {
      v15 = *(v14 - 6);
      v30 = *(v14 - 5);
      v16 = *(v14 - 4);
      v17 = *(v14 - 3);
      v18 = *(v14 - 2);
      v19 = *(v14 - 1);
      v20 = *v14;

      sub_227664E90();
      v31 = v13;
      v22 = *(v13 + 16);
      v21 = *(v13 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F1F6C8(v21 > 1, v22 + 1, 1);
        v13 = v31;
      }

      ++v12;
      *(v13 + 16) = v22 + 1;
      result = (*(v28 + 32))(v13 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v22, v24, v29);
      v14 += 7;
      v9 = v27;
      if (v26 == v12)
      {

        return v13;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_22750B894(uint64_t a1)
{
  result = sub_22750B8EC(&qword_28139B8A8, MEMORY[0x277D51130]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22750B8EC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22750B934(void *a1)
{
  sub_227664E60();
  v3 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227664E80();
  v4 = sub_22766BFD0();

  [a1 setName_];

  sub_227664EA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2A0, &qword_22767A148);
  sub_227125C68();
  v5 = sub_2276683C0();
  v7 = v6;

  if (!v1)
  {
    v8 = sub_227662560();
    sub_226EDC420(v5, v7);
    [a1 setArtwork_];

    sub_227664E70();
    if (v9)
    {
      v10 = sub_22766BFD0();
    }

    else
    {
      v10 = 0;
    }

    [a1 setInformalName_];
  }
}

void sub_22750BAA8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v21 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v21 - v13;
  v15 = [a1 participantIdentifier];
  if (v15)
  {
    v21[3] = a2;
    v16 = v15;
    v21[1] = sub_22766C000();

    v17 = [a1 timestamp];
    if (v17)
    {
      v18 = v17;
      sub_227662710();

      (*(v5 + 32))(v14, v12, v4);
      (*(v5 + 16))(v9, v14, v4);
      sub_2276686D0();

      (*(v5 + 8))(v14, v4);
      return;
    }
  }

  v19 = sub_227664DD0();
  sub_22750C2C4(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51028], v19);
  swift_willThrow();
}

size_t static RemoteBrowsingConnectionRecord.representativeSamples()()
{
  v32 = sub_227662750();
  v0 = *(v32 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93B0, &unk_22768C130);
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v24 - v5;
  v29 = sub_227668700();
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v29);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766C090();
  v38 = sub_227662630();
  v39[0] = v11;
  v39[1] = v39;
  v39[2] = &v38;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v34 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v35 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v12 = sub_2276638E0();

  v13 = *(v12 + 16);
  if (v13)
  {
    v28 = v10;
    v33 = MEMORY[0x277D84F90];
    result = sub_226F207A8(0, v13, 0);
    v15 = 0;
    v16 = v33;
    v26 = v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v27 = v7;
    v24 = v7 + 32;
    v25 = (v0 + 16);
    v17 = v31;
    v18 = v28;
    while (v15 < *(v12 + 16))
    {
      v19 = v3;
      sub_2273571A4(v26 + *(v3 + 72) * v15, v6);
      v20 = *v6;
      v21 = *(v6 + 1);
      (*v25)(v17, &v6[*(v30 + 48)], v32);

      sub_2276686D0();
      sub_227357214(v6);
      v33 = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F207A8(v22 > 1, v23 + 1, 1);
        v16 = v33;
      }

      ++v15;
      *(v16 + 16) = v23 + 1;
      result = (*(v27 + 32))(v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, v18, v29);
      v3 = v19;
      if (v13 == v15)
      {

        return v16;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_22750C138(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2276686E0();
  v7 = sub_22766BFD0();

  [a1 setParticipantIdentifier_];

  sub_2276686F0();
  v8 = sub_2276626A0();
  (*(v3 + 8))(v6, v2);
  [a1 setTimestamp_];
}

uint64_t sub_22750C26C(uint64_t a1)
{
  result = sub_22750C2C4(&qword_27D7BE3E8, MEMORY[0x277D53548]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22750C2C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22750C30C()
{
  v1 = v0;
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = *(v1 + 16);
  v13 = *(v1 + 32);
  v24 = v1;
  ObjectType = swift_getObjectType();
  v27 = v12;
  v15 = *MEMORY[0x277D4E390];
  v22 = v3[13];
  v26 = v3 + 13;
  v22(v6, v15, v2);
  swift_allocObject();
  swift_weakInit();
  sub_2276640A0();
  swift_unknownObjectRetain_n();
  v21[1] = ObjectType;
  v16 = v13;
  sub_227669EE0();

  v17 = v3[1];
  v25 = v3 + 1;
  v17(v6, v2);
  swift_unknownObjectRelease();
  v27 = v12;
  v18 = v22;
  v22(v6, *MEMORY[0x277D4E398], v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  v23 = v16;
  sub_227669EF0();

  v21[0] = v2;
  v17(v6, v2);

  swift_unknownObjectRelease();
  v27 = v12;
  v18(v6, *MEMORY[0x277D4E478], v2);
  swift_allocObject();
  swift_weakInit();

  sub_227669EF0();

  v19 = v21[0];
  v17(v6, v21[0]);

  swift_unknownObjectRelease();
  v27 = v12;
  v18(v6, *MEMORY[0x277D4E488], v19);
  swift_allocObject();
  swift_weakInit();
  sub_227665510();
  sub_227664660();
  sub_227669EC0();

  v17(v6, v19);
  return swift_unknownObjectRelease();
}

uint64_t sub_22750C808(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_2276640A0();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v2[14] = *(v4 + 64);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22750C8D0, 0, 0);
}

uint64_t sub_22750C8D0()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[14];
    v3 = v0[15];
    v5 = v0[12];
    v6 = v0[13];
    v7 = v0[10];
    sub_226E91B50(Strong + 40, (v0 + 2));

    v8 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v9 = *v8;
    v10 = *(*v8 + 48);
    __swift_project_boxed_opaque_existential_0((*v8 + 16), *(*v8 + 40));
    (*(v6 + 16))(v3, v7, v5);
    v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v12 = swift_allocObject();
    v0[16] = v12;
    *(v12 + 16) = v9;
    (*(v6 + 32))(v12 + v11, v3, v5);
    v13 = *(v10 + 24);

    v19 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    v0[17] = v15;
    *v15 = v0;
    v15[1] = sub_22750CB4C;

    return v19();
  }

  else
  {
    v17 = v0[15];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_22750CB4C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_22750CCD4;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_22750CC68;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22750CC68()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[15];

  v2 = v0[1];

  return v2();
}

uint64_t sub_22750CCD4()
{
  v2 = v0[15];
  v1 = v0[16];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

uint64_t sub_22750CD68()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_227127A18;

    return sub_226F73FCC();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22750CE94()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    v3 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = *v3;
    v0[11] = *v3;
    v5 = v4[6];
    __swift_project_boxed_opaque_existential_0(v4 + 2, v4[5]);
    v6 = *(v5 + 24);

    v11 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[12] = v8;
    *v8 = v0;
    v8[1] = sub_22750D080;

    return v11();
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_22750D080()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_22750D19C;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_226F69390;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22750D19C()
{
  v1 = v0[11];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_22750D208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_22750D22C, 0, 0);
}

uint64_t sub_22750D22C()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_22750D380;
    v5 = v0[10];
    v6 = v0[11];

    return sub_226F74D40(v5, v6);
  }

  else
  {
    v8 = v0[10];
    v9 = sub_227664660();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_22750D380()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226F60D40;
  }

  else
  {
    v3 = sub_22750D494;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22750D494()
{
  v1 = v0[10];
  v2 = sub_227664660();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_22750D560(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22750C808(a1, v1);
}

uint64_t sub_22750D5F8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_22750CD48(v0);
}

uint64_t sub_22750D688()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_22750CE74(v0);
}

uint64_t sub_22750D718(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E92F34;

  return sub_22750D208(a1, a2, v2);
}

void sub_22750D860(void *a1)
{
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    v4 = [a1 name];
    if (v4)
    {
      v5 = v4;
      sub_22766C000();

      sub_227663270();
      return;
    }
  }

  v6 = sub_227664DD0();
  sub_22750DD24(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
  swift_willThrow();
}

size_t static MusicGenre.representativeSamples()()
{
  v19 = sub_2276632A0();
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v19);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766C090();
  v25 = sub_22766C090();
  v26[0] = v4;
  v26[1] = v26;
  v26[2] = &v25;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v24 = v23;
  v21 = sub_2272BFE28();
  v22 = v21;
  v5 = sub_2276638E0();

  v6 = *(v5 + 16);
  if (v6)
  {
    v20 = MEMORY[0x277D84F90];
    result = sub_226F1F6A8(0, v6, 0);
    v8 = 0;
    v9 = v20;
    v17 = v0 + 32;
    v18 = v5;
    v10 = (v5 + 56);
    while (v8 < *(v5 + 16))
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;

      sub_227663270();
      v20 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_226F1F6A8(v15 > 1, v16 + 1, 1);
        v9 = v20;
      }

      ++v8;
      *(v9 + 16) = v16 + 1;
      result = (*(v0 + 32))(v9 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v16, v3, v19);
      v10 += 4;
      v5 = v18;
      if (v6 == v8)
      {

        return v9;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_22750DC30(void *a1)
{
  sub_227663280();
  v2 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227663290();
  v3 = sub_22766BFD0();

  [a1 setName_];
}

uint64_t sub_22750DCCC(uint64_t a1)
{
  result = sub_22750DD24(&qword_28139BD18, MEMORY[0x277D4FE80]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22750DD24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22750DD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v42 = sub_227663180();
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v42);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = sub_2276624A0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227663160();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_226FB1188(v13);
    sub_22766A6C0();
    (*(v3 + 16))(v6, a1, v42);
    v19 = sub_22766B380();
    v20 = sub_22766C890();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v38 = a1;
      v22 = v21;
      v37 = swift_slowAlloc();
      v43 = v37;
      *v22 = 141558274;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2080;
      sub_226EB0FF8(&qword_28139BD48, MEMORY[0x277D4FCA8]);
      v23 = v42;
      v24 = v20;
      v25 = sub_22766D140();
      v27 = v26;
      v28 = v23;
      v29 = *(v3 + 8);
      v29(v6, v28);
      v30 = sub_226E97AE8(v25, v27, &v43);

      *(v22 + 14) = v30;
      _os_log_impl(&dword_226E8E000, v19, v24, "Completed entry doesn't have local URL: %{mask.hash}s", v22, 0x16u);
      v31 = v37;
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x22AA9A450](v31, -1, -1);
      a1 = v38;
      MEMORY[0x22AA9A450](v22, -1, -1);
    }

    else
    {

      v29 = *(v3 + 8);
      v29(v6, v42);
    }

    (*(v39 + 8))(v41, v40);
    v35 = sub_227663190();
    sub_226EB0FF8(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
    swift_allocError();
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D4FD08], v35);
    swift_willThrow();
    return (v29)(a1, v42);
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    v32 = v38;
    (*(v15 + 16))(v38, v18, v14);
    v33 = sub_227663130();
    (*(v3 + 8))(a1, v42);
    (*(v15 + 8))(v18, v14);
    result = type metadata accessor for AssetLoaderResponse();
    *(v32 + *(result + 20)) = v33;
  }

  return result;
}

uint64_t sub_22750E2B0(uint64_t a1)
{
  v2 = sub_227664010();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2276660A0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22701A900(a1, v10);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
    case 5u:
    case 7u:
    case 8u:
    case 0xAu:
      v51 = *v10;
      v52 = *(v10 + 1);
      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_227670CD0;
      *(v53 + 56) = MEMORY[0x277D837D0];
      *(v53 + 64) = sub_22701311C();
      *(v53 + 32) = v51;
      *(v53 + 40) = v52;
      return sub_22766C7F0();
    case 4u:
      v30 = *v10;
      v29 = *(v10 + 1);
      swift_getKeyPath();
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v89 = v30;
      v90 = v29;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v16 = sub_22766C820();
      sub_226ED25F8(&v89, v87);
      v17 = v88;
      if (v88)
      {
        goto LABEL_3;
      }

      v23 = 0;
      break;
    case 6u:
      v81 = v3;
      (*(v3 + 32))(v6, v10, v2);
      sub_227664000();
      v34 = v33;
      sub_227663FE0();
      v36 = v34 - v35;
      sub_227664000();
      v38 = v37;
      sub_227663FF0();
      v40 = v38 + v39;
      swift_getKeyPath();
      v41 = MEMORY[0x277D839F8];
      v92 = MEMORY[0x277D839F8];
      v89 = v36;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v42 = sub_22766C820();
      sub_226ED25F8(&v89, v87);
      v43 = v88;
      if (v88)
      {
        v44 = __swift_project_boxed_opaque_existential_0(v87, v88);
        v45 = *(v43 - 8);
        v46 = *(v45 + 64);
        MEMORY[0x28223BE20](v44);
        v48 = &v79 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v45 + 16))(v48);
        v49 = sub_22766D170();
        v50 = v48;
        v41 = MEMORY[0x277D839F8];
        (*(v45 + 8))(v50, v43);
        __swift_destroy_boxed_opaque_existential_0(v87);
      }

      else
      {
        v49 = 0;
      }

      v56 = objc_opt_self();
      v57 = [v56 expressionForConstantValue_];
      swift_unknownObjectRelease();
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900, &unk_22767CDD0);
      v59 = [objc_allocWithZone(v58) initWithLeftExpression:v42 rightExpression:v57 modifier:0 type:3 options:0];

      sub_226E97D1C(&v89, &unk_27D7BC990, &qword_227670A30);
      swift_getKeyPath();
      v92 = v41;
      v89 = v40;

      v60 = sub_22766C820();
      sub_226ED25F8(&v89, v87);
      v61 = v88;
      if (v88)
      {
        v62 = __swift_project_boxed_opaque_existential_0(v87, v88);
        v79 = &v79;
        v80 = v59;
        v63 = *(v61 - 8);
        v64 = *(v63 + 64);
        MEMORY[0x28223BE20](v62);
        v66 = v58;
        v67 = v56;
        v68 = &v79 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v63 + 16))(v68);
        v69 = sub_22766D170();
        v70 = v68;
        v56 = v67;
        v58 = v66;
        (*(v63 + 8))(v70, v61);
        v59 = v80;
        __swift_destroy_boxed_opaque_existential_0(v87);
      }

      else
      {
        v69 = 0;
      }

      v71 = [v56 expressionForConstantValue_];
      swift_unknownObjectRelease();
      v72 = [objc_allocWithZone(v58) initWithLeftExpression:v60 rightExpression:v71 modifier:0 type:1 options:0];

      sub_226E97D1C(&v89, &unk_27D7BC990, &qword_227670A30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_2276756A0;
      *(v73 + 32) = v59;
      *(v73 + 40) = v72;
      v74 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C38, qword_22768C260));
      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v75 = v59;
      v76 = v72;
      v77 = sub_22766C2B0();

      v78 = [v74 initWithType:1 subpredicates:v77];

      (*(v81 + 8))(v6, v2);
      return v78;
    case 9u:
      sub_22701A964(v10);
      return 0;
    case 0xBu:
      v24 = *v10;
      v25 = *(v10 + 1);
      v26 = v10[16];
      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_227670CD0;
      v89 = *&v24;
      v90 = v25;
      v91 = v26;
      *(v27 + 56) = MEMORY[0x277D837D0];
      *(v27 + 64) = sub_22701311C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF50, &qword_227671540);
      sub_227663AD0();
      sub_226EB2DFC(v24, v25, v26);
      return sub_22766C7F0();
    case 0xCu:
      v32 = *v10;
      v31 = *(v10 + 1);
      swift_getKeyPath();
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v89 = v32;
      v90 = v31;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v16 = sub_22766C820();
      sub_226ED25F8(&v89, v87);
      v17 = v88;
      if (v88)
      {
        goto LABEL_3;
      }

      v23 = 0;
      break;
    default:
      v11 = *v10;
      v12 = *(v10 + 1);
      v13 = v10[16];
      swift_getKeyPath();
      v84 = v11;
      v85 = v12;
      v86 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E8, &qword_227671548);
      sub_227663AD0();
      sub_226EB2DFC(v11, v12, v13);
      v14 = v82;
      v15 = v83;
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v89 = v14;
      v90 = v15;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v16 = sub_22766C820();
      sub_226ED25F8(&v89, v87);
      v17 = v88;
      if (v88)
      {
LABEL_3:
        v18 = __swift_project_boxed_opaque_existential_0(v87, v88);
        v19 = *(v17 - 8);
        v20 = *(v19 + 64);
        MEMORY[0x28223BE20](v18);
        v22 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v19 + 16))(v22);
        v23 = sub_22766D170();
        (*(v19 + 8))(v22, v17);
        __swift_destroy_boxed_opaque_existential_0(v87);
      }

      else
      {
        v23 = 0;
      }

      break;
  }

  v54 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v55 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

  sub_226E97D1C(&v89, &unk_27D7BC990, &qword_227670A30);
  return v55;
}

id sub_22750F174(uint64_t a1)
{
  v2 = sub_2276660A0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22750E2B0(a1);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 notPredicateWithSubpredicate_];
  sub_22701A900(a1, v5);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
    case 5u:
    case 7u:
    case 8u:
    case 0xAu:
    case 0xBu:
      sub_22701A964(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_2276756A0;
      *(v11 + 32) = v9;
      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v12 = v9;
      *(v11 + 40) = sub_22766C7F0();
      v13 = sub_22766C2B0();

      v9 = [v8 orPredicateWithSubpredicates_];

      break;
    case 6u:

      v10 = sub_227664010();
      (*(*(v10 - 8) + 8))(v5, v10);
      break;
    case 9u:

      sub_22701A964(v5);
      v9 = 0;
      break;
    default:

      sub_22701A964(v5);
      break;
  }

  return v9;
}

uint64_t sub_22750F910(uint64_t a1, uint64_t a2)
{
  v308 = a2;
  v296 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B8, &unk_227682440);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v295 = &v293 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v310 = (&v293 - v6);
  v314 = sub_227664010();
  v312 = *(v314 - 8);
  v7 = *(v312 + 64);
  v8 = MEMORY[0x28223BE20](v314);
  v297 = &v293 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v309 = (&v293 - v10);
  v315 = sub_2276660A0();
  v11 = *(*(v315 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v315);
  *&v307 = &v293 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v306 = &v293 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v294 = &v293 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v293 = &v293 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v305 = &v293 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v304 = &v293 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v303 = &v293 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v302 = &v293 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v301 = &v293 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v300 = &v293 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = (&v293 - v33);
  v35 = MEMORY[0x28223BE20](v32);
  v299 = &v293 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = (&v293 - v38);
  v40 = MEMORY[0x28223BE20](v37);
  v298 = &v293 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  KeyPath = &v293 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v313 = (&v293 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v48 = (&v293 - v47);
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v293 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v54 = (&v293 - v53);
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v293 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v60 = &v293 - v59;
  v61 = MEMORY[0x28223BE20](v58);
  v63 = &v293 - v62;
  v64 = MEMORY[0x28223BE20](v61);
  v66 = (&v293 - v65);
  MEMORY[0x28223BE20](v64);
  v69 = &v293 - v68;
  result = 0;
  switch(v296)
  {
    case 1:
      v138 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
      KeyPath = swift_allocObject();
      *(KeyPath + 1) = xmmword_227670CD0;
      v139 = *(v308 + 16);
      if (v139)
      {
        v140 = v308 + ((*(v138 + 80) + 32) & ~*(v138 + 80));
        v141 = *(v138 + 72);
        v313 = (v312 + 8);
        v129 = MEMORY[0x277D84F90];
        while (1)
        {
          sub_22701A900(v140, v57);
          sub_22701A900(v57, v54);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 0xC)
          {
            goto LABEL_77;
          }

          if (((1 << EnumCaseMultiPayload) & 0x17BE) != 0)
          {
            v144 = *v54;
            v143 = v54[1];
            sub_22701A964(v57);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v129 = sub_226EB3F78(0, *(v129 + 2) + 1, 1, v129);
            }

            v146 = *(v129 + 2);
            v145 = *(v129 + 3);
            if (v146 >= v145 >> 1)
            {
              v129 = sub_226EB3F78((v145 > 1), v146 + 1, 1, v129);
            }

            *(v129 + 2) = v146 + 1;
            v147 = &v129[16 * v146];
            *(v147 + 4) = v144;
            *(v147 + 5) = v143;
            goto LABEL_68;
          }

          if (EnumCaseMultiPayload == 6)
          {
            (*v313)(v54, v314);
          }

          else
          {
LABEL_77:
            sub_22701A964(v54);
          }

          sub_22701A964(v57);
LABEL_68:
          v140 += v141;
          if (!--v139)
          {
            goto LABEL_204;
          }
        }
      }

      v129 = MEMORY[0x277D84F90];
      goto LABEL_204;
    case 2:
      v148 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
      KeyPath = swift_allocObject();
      *(KeyPath + 1) = xmmword_227670CD0;
      v149 = *(v308 + 16);
      if (v149)
      {
        v150 = v308 + ((*(v148 + 80) + 32) & ~*(v148 + 80));
        v151 = *(v148 + 72);
        v313 = (v312 + 8);
        v129 = MEMORY[0x277D84F90];
        while (1)
        {
          sub_22701A900(v150, v69);
          sub_22701A900(v69, v66);
          v152 = swift_getEnumCaseMultiPayload();
          if (v152 > 0xC)
          {
            goto LABEL_91;
          }

          if (((1 << v152) & 0x17BE) != 0)
          {
            v154 = *v66;
            v153 = v66[1];
            sub_22701A964(v69);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v129 = sub_226EB3F78(0, *(v129 + 2) + 1, 1, v129);
            }

            v156 = *(v129 + 2);
            v155 = *(v129 + 3);
            if (v156 >= v155 >> 1)
            {
              v129 = sub_226EB3F78((v155 > 1), v156 + 1, 1, v129);
            }

            *(v129 + 2) = v156 + 1;
            v157 = &v129[16 * v156];
            *(v157 + 4) = v154;
            *(v157 + 5) = v153;
            goto LABEL_82;
          }

          if (v152 == 6)
          {
            (*v313)(v66, v314);
          }

          else
          {
LABEL_91:
            sub_22701A964(v66);
          }

          sub_22701A964(v69);
LABEL_82:
          v150 += v151;
          if (!--v149)
          {
            goto LABEL_204;
          }
        }
      }

      v129 = MEMORY[0x277D84F90];
      goto LABEL_204;
    case 3:
      v99 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
      KeyPath = swift_allocObject();
      *(KeyPath + 1) = xmmword_227670CD0;
      v100 = *(v308 + 16);
      if (v100)
      {
        v101 = v308 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
        v102 = *(v99 + 72);
        v313 = (v312 + 8);
        v103 = MEMORY[0x277D84F90];
        while (1)
        {
          sub_22701A900(v101, v51);
          sub_22701A900(v51, v48);
          v104 = swift_getEnumCaseMultiPayload();
          if (v104 > 0xC)
          {
            goto LABEL_35;
          }

          if (((1 << v104) & 0x17BE) != 0)
          {
            v106 = *v48;
            v105 = v48[1];
            sub_22701A964(v51);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v103 = sub_226EB3F78(0, *(v103 + 2) + 1, 1, v103);
            }

            v108 = *(v103 + 2);
            v107 = *(v103 + 3);
            if (v108 >= v107 >> 1)
            {
              v103 = sub_226EB3F78((v107 > 1), v108 + 1, 1, v103);
            }

            *(v103 + 2) = v108 + 1;
            v109 = &v103[16 * v108];
            *(v109 + 4) = v106;
            *(v109 + 5) = v105;
            goto LABEL_26;
          }

          if (v104 == 6)
          {
            (*v313)(v48, v314);
          }

          else
          {
LABEL_35:
            sub_22701A964(v48);
          }

          sub_22701A964(v51);
LABEL_26:
          v101 += v102;
          if (!--v100)
          {
            goto LABEL_164;
          }
        }
      }

      v103 = MEMORY[0x277D84F90];
LABEL_164:
      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      v227 = KeyPath;
      *(KeyPath + 7) = v226;
      *(v227 + 8) = sub_2275125B4();
      *(v227 + 4) = v103;
      return sub_22766C7F0();
    case 4:
      v170 = *(v308 + 16);
      v171 = MEMORY[0x277D84F90];
      if (v170)
      {
        v172 = v308 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
        v308 = *(v67 + 72);
        v173 = KeyPath;
        v174 = (v312 + 56);
        v175 = (v312 + 32);
        v176 = (v312 + 48);
        v177 = v314;
        v178 = v295;
        do
        {
          v179 = v313;
          sub_22701A900(v172, v313);
          sub_22701A900(v179, v173);
          if (swift_getEnumCaseMultiPayload() == 6)
          {
            (*v175)(v178, v173, v177);
            v180 = 0;
          }

          else
          {
            sub_22701A964(v173);
            v180 = 1;
          }

          (*v174)(v178, v180, 1, v177);
          v181 = v310;
          sub_227512618(v178, v310);
          sub_22701A964(v313);
          if ((*v176)(v181, 1, v177) == 1)
          {
            sub_226E97D1C(v181, &qword_27D7BC9B8, &unk_227682440);
            v173 = KeyPath;
          }

          else
          {
            v182 = *v175;
            (*v175)(v309, v181, v177);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v171 = sub_2273A6F7C(0, *(v171 + 2) + 1, 1, v171);
            }

            v173 = KeyPath;
            v184 = *(v171 + 2);
            v183 = *(v171 + 3);
            v185 = v171;
            if (v184 >= v183 >> 1)
            {
              v185 = sub_2273A6F7C(v183 > 1, v184 + 1, 1, v171);
            }

            *(v185 + 16) = v184 + 1;
            v171 = v185;
            v186 = v185 + ((*(v312 + 80) + 32) & ~*(v312 + 80)) + *(v312 + 72) * v184;
            v177 = v314;
            v182(v186, v309, v314);
            v178 = v295;
          }

          v172 += v308;
          --v170;
        }

        while (v170);
      }

      else
      {
        v177 = v314;
      }

      v241 = *(v171 + 2);
      if (v241)
      {
        v316 = MEMORY[0x277D84F90];
        v242 = v177;
        sub_22766CF30();
        v315 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
        v313 = objc_opt_self();
        v310 = *(v312 + 16);
        v243 = (*(v312 + 80) + 32) & ~*(v312 + 80);
        v306 = v171;
        v244 = &v171[v243];
        v312 += 16;
        v308 = *(v312 + 56);
        v309 = (v312 - 8);
        v307 = xmmword_2276756A0;
        v245 = v297;
        do
        {
          KeyPath = v241;
          (v310)(v245, v244, v242);
          sub_227664000();
          v261 = v260;
          sub_227663FE0();
          v263 = v261 - v262;
          sub_227664000();
          v265 = v264;
          sub_227663FF0();
          v267 = v266;
          swift_getKeyPath();
          v323 = MEMORY[0x277D839F8];
          v320 = v263;

          v268 = sub_22766C820();
          sub_226ED25F8(&v320, &v317);
          v269 = v319;
          if (v319)
          {
            v270 = __swift_project_boxed_opaque_existential_0(&v317, v319);
            v271 = *(v269 - 8);
            v272 = *(v271 + 64);
            MEMORY[0x28223BE20](v270);
            v274 = &v293 - ((v273 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v271 + 16))(v274);
            v275 = sub_22766D170();
            (*(v271 + 8))(v274, v269);
            __swift_destroy_boxed_opaque_existential_0(&v317);
          }

          else
          {
            v275 = 0;
          }

          v276 = [v313 expressionForConstantValue_];
          swift_unknownObjectRelease();
          v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900, &unk_22767CDD0);
          v278 = [objc_allocWithZone(v277) initWithLeftExpression:v268 rightExpression:v276 modifier:0 type:3 options:0];

          sub_226E97D1C(&v320, &unk_27D7BC990, &qword_227670A30);
          swift_getKeyPath();
          v323 = MEMORY[0x277D839F8];
          v320 = v265 + v267;

          v279 = sub_22766C820();
          sub_226ED25F8(&v320, &v317);
          v280 = v319;
          if (v319)
          {
            v246 = __swift_project_boxed_opaque_existential_0(&v317, v319);
            v247 = *(v280 - 8);
            v248 = *(v247 + 64);
            MEMORY[0x28223BE20](v246);
            v250 = &v293 - ((v249 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v247 + 16))(v250);
            v251 = sub_22766D170();
            (*(v247 + 8))(v250, v280);
            v245 = v297;
            __swift_destroy_boxed_opaque_existential_0(&v317);
          }

          else
          {
            v251 = 0;
          }

          v252 = [v313 expressionForConstantValue_];
          swift_unknownObjectRelease();
          v253 = [objc_allocWithZone(v277) initWithLeftExpression:v279 rightExpression:v252 modifier:0 type:1 options:0];

          sub_226E97D1C(&v320, &unk_27D7BC990, &qword_227670A30);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
          v254 = swift_allocObject();
          *(v254 + 16) = v307;
          *(v254 + 32) = v278;
          *(v254 + 40) = v253;
          v255 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C38, qword_22768C260));
          sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
          v256 = v278;
          v257 = v253;
          v258 = sub_22766C2B0();

          [v255 initWithType:1 subpredicates:v258];

          v242 = v314;
          (*v309)(v245, v314);
          sub_22766CF00();
          v259 = *(v316 + 16);
          sub_22766CF40();
          sub_22766CF50();
          sub_22766CF10();
          v244 += v308;
          v241 = KeyPath - 1;
        }

        while (KeyPath != 1);

        v281 = v316;
      }

      else
      {

        v281 = MEMORY[0x277D84F90];
      }

      if (v281 >> 62)
      {
        sub_226E99364(0, &qword_281398B58, 0x277CCAC30);

        sub_22766CFC0();
      }

      else
      {

        sub_22766D1C0();
        sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      }

      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v282 = sub_22766C2B0();

      v283 = [objc_opt_self() andPredicateWithSubpredicates_];

      return v283;
    case 5:
      v187 = v67;
      KeyPath = swift_getKeyPath();
      v188 = *(v308 + 16);
      if (v188)
      {
        v189 = v308 + ((*(v187 + 80) + 32) & ~*(v187 + 80));
        v190 = *(v187 + 72);
        v313 = (v312 + 8);
        *&v191 = MEMORY[0x277D84F90];
        v192 = v298;
        while (1)
        {
          sub_22701A900(v189, v192);
          sub_22701A900(v192, v39);
          v193 = swift_getEnumCaseMultiPayload();
          if (v193 > 0xC)
          {
            goto LABEL_132;
          }

          if (((1 << v193) & 0x17BE) != 0)
          {
            v195 = *v39;
            v194 = v39[1];
            sub_22701A964(v192);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              *&v191 = COERCE_DOUBLE(sub_226EB3F78(0, *(v191 + 2) + 1, 1, v191));
            }

            v197 = *(v191 + 2);
            v196 = *(v191 + 3);
            if (v197 >= v196 >> 1)
            {
              *&v191 = COERCE_DOUBLE(sub_226EB3F78((v196 > 1), v197 + 1, 1, v191));
            }

            *(v191 + 2) = v197 + 1;
            v198 = &v191[16 * v197];
            *(v198 + 4) = v195;
            *(v198 + 5) = v194;
            v192 = v298;
            goto LABEL_123;
          }

          if (v193 == 6)
          {
            (*v313)(v39, v314);
          }

          else
          {
LABEL_132:
            sub_22701A964(v39);
          }

          sub_22701A964(v192);
LABEL_123:
          v189 += v190;
          if (!--v188)
          {
            goto LABEL_197;
          }
        }
      }

      *&v191 = MEMORY[0x277D84F90];
LABEL_197:
      v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      v320 = *&v191;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v228 = sub_22766C820();
      sub_226ED25F8(&v320, &v317);
      v229 = v319;
      if (v319)
      {
        goto LABEL_198;
      }

      v230 = 0;
      goto LABEL_200;
    case 6:
      v158 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
      v159 = swift_allocObject();
      *(v159 + 16) = xmmword_227670CD0;
      v160 = *(v308 + 16);
      KeyPath = v159;
      if (v160)
      {
        v161 = v308 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
        v162 = *(v158 + 72);
        v313 = (v312 + 8);
        v129 = MEMORY[0x277D84F90];
        v163 = v299;
        while (1)
        {
          sub_22701A900(v161, v163);
          sub_22701A900(v163, v34);
          v164 = swift_getEnumCaseMultiPayload();
          if (v164 > 0xC)
          {
            goto LABEL_105;
          }

          if (((1 << v164) & 0x17BE) != 0)
          {
            v165 = *v34;
            v166 = v34[1];
            sub_22701A964(v163);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v129 = sub_226EB3F78(0, *(v129 + 2) + 1, 1, v129);
            }

            v168 = *(v129 + 2);
            v167 = *(v129 + 3);
            if (v168 >= v167 >> 1)
            {
              v129 = sub_226EB3F78((v167 > 1), v168 + 1, 1, v129);
            }

            *(v129 + 2) = v168 + 1;
            v169 = &v129[16 * v168];
            *(v169 + 4) = v165;
            *(v169 + 5) = v166;
            v163 = v299;
            goto LABEL_96;
          }

          if (v164 == 6)
          {
            (*v313)(v34, v314);
          }

          else
          {
LABEL_105:
            sub_22701A964(v34);
          }

          sub_22701A964(v163);
LABEL_96:
          v161 += v162;
          if (!--v160)
          {
            goto LABEL_204;
          }
        }
      }

      v129 = MEMORY[0x277D84F90];
      goto LABEL_204;
    case 7:
      v212 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
      KeyPath = swift_allocObject();
      *(KeyPath + 1) = xmmword_227670CD0;
      v213 = *(v308 + 16);
      if (v213)
      {
        v214 = v308 + ((*(v212 + 80) + 32) & ~*(v212 + 80));
        v215 = *(v212 + 72);
        v313 = (v312 + 8);
        v129 = MEMORY[0x277D84F90];
        v216 = v301;
        v217 = v300;
        while (1)
        {
          sub_22701A900(v214, v217);
          sub_22701A900(v217, v216);
          v218 = swift_getEnumCaseMultiPayload();
          if (v218 > 0xC)
          {
            goto LABEL_160;
          }

          if (((1 << v218) & 0x17BE) != 0)
          {
            v219 = *v216;
            v220 = v216[1];
            sub_22701A964(v217);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v129 = sub_226EB3F78(0, *(v129 + 2) + 1, 1, v129);
            }

            v222 = *(v129 + 2);
            v221 = *(v129 + 3);
            if (v222 >= v221 >> 1)
            {
              v129 = sub_226EB3F78((v221 > 1), v222 + 1, 1, v129);
            }

            *(v129 + 2) = v222 + 1;
            v223 = &v129[16 * v222];
            *(v223 + 4) = v219;
            *(v223 + 5) = v220;
            v216 = v301;
            v217 = v300;
            goto LABEL_151;
          }

          if (v218 == 6)
          {
            (*v313)(v216, v314);
          }

          else
          {
LABEL_160:
            sub_22701A964(v216);
          }

          sub_22701A964(v217);
LABEL_151:
          v214 += v215;
          if (!--v213)
          {
            goto LABEL_204;
          }
        }
      }

      v129 = MEMORY[0x277D84F90];
      goto LABEL_204;
    case 8:
      v124 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
      v125 = swift_allocObject();
      *(v125 + 16) = xmmword_227670CD0;
      v126 = *(v308 + 16);
      KeyPath = v125;
      if (v126)
      {
        v127 = v308 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
        v128 = *(v124 + 72);
        v313 = (v312 + 8);
        v129 = MEMORY[0x277D84F90];
        v130 = v303;
        v131 = v302;
        while (1)
        {
          sub_22701A900(v127, v131);
          sub_22701A900(v131, v130);
          v132 = swift_getEnumCaseMultiPayload();
          if (v132 > 0xC)
          {
            goto LABEL_63;
          }

          if (((1 << v132) & 0x17BE) != 0)
          {
            v133 = *v130;
            v134 = v130[1];
            sub_22701A964(v131);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v129 = sub_226EB3F78(0, *(v129 + 2) + 1, 1, v129);
            }

            v136 = *(v129 + 2);
            v135 = *(v129 + 3);
            if (v136 >= v135 >> 1)
            {
              v129 = sub_226EB3F78((v135 > 1), v136 + 1, 1, v129);
            }

            *(v129 + 2) = v136 + 1;
            v137 = &v129[16 * v136];
            *(v137 + 4) = v133;
            *(v137 + 5) = v134;
            v130 = v303;
            v131 = v302;
            goto LABEL_54;
          }

          if (v132 == 6)
          {
            (*v313)(v130, v314);
          }

          else
          {
LABEL_63:
            sub_22701A964(v130);
          }

          sub_22701A964(v131);
LABEL_54:
          v127 += v128;
          if (!--v126)
          {
            goto LABEL_204;
          }
        }
      }

      v129 = MEMORY[0x277D84F90];
      goto LABEL_204;
    case 9:
      return result;
    case 10:
      v199 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
      v200 = swift_allocObject();
      *(v200 + 16) = xmmword_227670CD0;
      v201 = *(v308 + 16);
      KeyPath = v200;
      if (v201)
      {
        v202 = v308 + ((*(v199 + 80) + 32) & ~*(v199 + 80));
        v203 = *(v199 + 72);
        v313 = (v312 + 8);
        v129 = MEMORY[0x277D84F90];
        v204 = v305;
        v205 = v304;
        while (1)
        {
          sub_22701A900(v202, v205);
          sub_22701A900(v205, v204);
          v206 = swift_getEnumCaseMultiPayload();
          if (v206 > 0xC)
          {
            goto LABEL_146;
          }

          if (((1 << v206) & 0x17BE) != 0)
          {
            v207 = *v204;
            v208 = v204[1];
            sub_22701A964(v205);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v129 = sub_226EB3F78(0, *(v129 + 2) + 1, 1, v129);
            }

            v210 = *(v129 + 2);
            v209 = *(v129 + 3);
            if (v210 >= v209 >> 1)
            {
              v129 = sub_226EB3F78((v209 > 1), v210 + 1, 1, v129);
            }

            *(v129 + 2) = v210 + 1;
            v211 = &v129[16 * v210];
            *(v211 + 4) = v207;
            *(v211 + 5) = v208;
            v204 = v305;
            v205 = v304;
            goto LABEL_137;
          }

          if (v206 == 6)
          {
            (*v313)(v204, v314);
          }

          else
          {
LABEL_146:
            sub_22701A964(v204);
          }

          sub_22701A964(v205);
LABEL_137:
          v202 += v203;
          if (!--v201)
          {
            goto LABEL_204;
          }
        }
      }

      v129 = MEMORY[0x277D84F90];
LABEL_204:
      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      v292 = KeyPath;
      *(KeyPath + 7) = v291;
      *(v292 + 8) = sub_2275125B4();
      *(v292 + 4) = v129;
      return sub_22766C7F0();
    case 11:
      v84 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
      v314 = swift_allocObject();
      *(v314 + 16) = xmmword_227670CD0;
      v85 = *(v308 + 16);
      if (v85)
      {
        v86 = v308 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
        v87 = *(v84 + 72);
        v88 = MEMORY[0x277D84F90];
        v89 = v294;
        v90 = v293;
        do
        {
          sub_22701A900(v86, v90);
          sub_22701A900(v90, v89);
          if (swift_getEnumCaseMultiPayload() == 11)
          {
            v92 = *(v89 + 8);
            v93 = *(v89 + 16);
            v320 = *v89;
            v91 = *&v320;
            v321 = v92;
            v322 = v93;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF50, &qword_227671540);
            sub_227663AD0();
            sub_226EB2DFC(v91, v92, v93);
            v94 = v317;
            v95 = v318;
            sub_22701A964(v90);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v88 = sub_226EB3F78(0, *(v88 + 2) + 1, 1, v88);
            }

            v97 = *(v88 + 2);
            v96 = *(v88 + 3);
            if (v97 >= v96 >> 1)
            {
              v88 = sub_226EB3F78((v96 > 1), v97 + 1, 1, v88);
            }

            *(v88 + 2) = v97 + 1;
            v98 = &v88[16 * v97];
            *(v98 + 4) = v94;
            *(v98 + 5) = v95;
            v89 = v294;
            v90 = v293;
          }

          else
          {
            sub_22701A964(v89);
            sub_22701A964(v90);
          }

          v86 += v87;
          --v85;
        }

        while (v85);
      }

      else
      {
        v88 = MEMORY[0x277D84F90];
      }

      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      v225 = v314;
      *(v314 + 56) = v224;
      *(v225 + 64) = sub_2275125B4();
      *(v225 + 32) = v88;
      return sub_22766C7F0();
    case 12:
      v110 = v67;
      KeyPath = swift_getKeyPath();
      v111 = *(v308 + 16);
      if (v111)
      {
        v112 = v308 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
        v113 = *(v110 + 72);
        v313 = (v312 + 8);
        *&v114 = MEMORY[0x277D84F90];
        v115 = v307;
        v116 = v306;
        while (1)
        {
          sub_22701A900(v112, v116);
          sub_22701A900(v116, v115);
          v117 = swift_getEnumCaseMultiPayload();
          if (v117 > 0xC)
          {
            goto LABEL_49;
          }

          if (((1 << v117) & 0x17BE) != 0)
          {
            v120 = v115;
            v118 = *v115;
            v119 = v120[1];
            sub_22701A964(v116);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              *&v114 = COERCE_DOUBLE(sub_226EB3F78(0, *(v114 + 2) + 1, 1, v114));
            }

            v122 = *(v114 + 2);
            v121 = *(v114 + 3);
            if (v122 >= v121 >> 1)
            {
              *&v114 = COERCE_DOUBLE(sub_226EB3F78((v121 > 1), v122 + 1, 1, v114));
            }

            *(v114 + 2) = v122 + 1;
            v123 = &v114[16 * v122];
            *(v123 + 4) = v118;
            *(v123 + 5) = v119;
            v115 = v307;
            v116 = v306;
            goto LABEL_40;
          }

          if (v117 == 6)
          {
            (*v313)(v115, v314);
          }

          else
          {
LABEL_49:
            sub_22701A964(v115);
          }

          sub_22701A964(v116);
LABEL_40:
          v112 += v113;
          if (!--v111)
          {
            goto LABEL_166;
          }
        }
      }

      *&v114 = MEMORY[0x277D84F90];
LABEL_166:
      v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      v320 = *&v114;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v228 = sub_22766C820();
      sub_226ED25F8(&v320, &v317);
      v229 = v319;
      if (v319)
      {
LABEL_198:
        v284 = __swift_project_boxed_opaque_existential_0(&v317, v319);
        v285 = *(v229 - 8);
        v286 = *(v285 + 64);
        MEMORY[0x28223BE20](v284);
        v288 = &v293 - ((v287 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v285 + 16))(v288);
        v230 = sub_22766D170();
        (*(v285 + 8))(v288, v229);
        __swift_destroy_boxed_opaque_existential_0(&v317);
      }

      else
      {
        v230 = 0;
      }

LABEL_200:
      v289 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v290 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

      sub_226E97D1C(&v320, &unk_27D7BC990, &qword_227670A30);
      return v290;
    default:
      v71 = v67;
      v314 = swift_getKeyPath();
      v72 = *(v308 + 16);
      if (v72)
      {
        v73 = v308 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
        v74 = *(v71 + 72);
        *&v75 = MEMORY[0x277D84F90];
        do
        {
          sub_22701A900(v73, v63);
          sub_22701A900(v63, v60);
          if (swift_getEnumCaseMultiPayload())
          {
            sub_22701A964(v60);
            sub_22701A964(v63);
          }

          else
          {
            v77 = *(v60 + 1);
            v78 = v60[16];
            v320 = *v60;
            v76 = *&v320;
            v321 = v77;
            v322 = v78;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E8, &qword_227671548);
            sub_227663AD0();
            sub_226EB2DFC(v76, v77, v78);
            v79 = v317;
            v80 = v318;
            sub_22701A964(v63);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              *&v75 = COERCE_DOUBLE(sub_226EB3F78(0, *(v75 + 2) + 1, 1, v75));
            }

            v82 = *(v75 + 2);
            v81 = *(v75 + 3);
            if (v82 >= v81 >> 1)
            {
              *&v75 = COERCE_DOUBLE(sub_226EB3F78((v81 > 1), v82 + 1, 1, v75));
            }

            *(v75 + 2) = v82 + 1;
            v83 = &v75[16 * v82];
            *(v83 + 4) = v79;
            *(v83 + 5) = v80;
          }

          v73 += v74;
          --v72;
        }

        while (v72);
      }

      else
      {
        *&v75 = MEMORY[0x277D84F90];
      }

      v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
      v320 = *&v75;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

      v231 = sub_22766C820();
      sub_226ED25F8(&v320, &v317);
      v232 = v319;
      if (v319)
      {
        v233 = __swift_project_boxed_opaque_existential_0(&v317, v319);
        v234 = *(v232 - 8);
        v235 = *(v234 + 64);
        MEMORY[0x28223BE20](v233);
        v237 = &v293 - ((v236 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v234 + 16))(v237);
        v238 = sub_22766D170();
        (*(v234 + 8))(v237, v232);
        __swift_destroy_boxed_opaque_existential_0(&v317);
      }

      else
      {
        v238 = 0;
      }

      v239 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v240 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900 &unk_22767CDD0))];

      sub_226E97D1C(&v320, &unk_27D7BC990, &qword_227670A30);
      return v240;
  }
}

id sub_227511F10(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_22750F910(a1, a2);
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    v6 = [v5 notPredicateWithSubpredicate_];
    if (v2 > 6u)
    {
      if (v2 > 9u)
      {
        if (v2 != 10 && v2 != 11)
        {
          goto LABEL_18;
        }
      }

      else if (v2 != 7 && v2 != 8)
      {
        goto LABEL_18;
      }
    }

    else if (v2 > 2u)
    {
      if (v2 - 4 < 2)
      {
        goto LABEL_18;
      }
    }

    else if (!v2)
    {
LABEL_18:

      return v6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2276756A0;
    *(v7 + 32) = v6;
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v8 = v6;
    *(v7 + 40) = sub_22766C7F0();
    v9 = sub_22766C2B0();

    v6 = [v5 orPredicateWithSubpredicates_];

    v4 = v9;
    goto LABEL_18;
  }

  return 0;
}

unint64_t sub_2275125B4()
{
  result = qword_281398F60;
  if (!qword_281398F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B84E0, &qword_22767C6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F60);
  }

  return result;
}

uint64_t sub_227512618(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B8, &unk_227682440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227512688(uint64_t a1)
{
  v37 = sub_227666170();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_227666150();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1EF90(v19 > 1, v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2275129B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE3F0, qword_22768A9A8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = v5;
  v14 = v6;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  v15 = sub_2272334B8(100);
  if (v2)
  {
    swift_setDeallocating();

    v16 = *(v12 + 40);

    v17 = qword_2813B2078;
    v18 = sub_22766A100();
    (*(*(v18 - 8) + 8))(v12 + v17, v18);
    v19 = *(*v12 + 48);
    v20 = *(*v12 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v22 = v15;
    swift_setDeallocating();

    v23 = *(v12 + 40);

    v24 = qword_2813B2078;
    v25 = sub_22766A100();
    (*(*(v25 - 8) + 8))(v12 + v24, v25);
    v26 = *(*v12 + 48);
    v27 = *(*v12 + 52);
    swift_deallocClassInstance();
    sub_22722AE80(v22, a2);
  }
}

void sub_227512BD8(uint64_t a1, void *a2)
{
  v2 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C88, &qword_227671C80);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  v40 = v12;
  v41 = v11;
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  swift_getKeyPath();
  v13 = sub_227664690();
  v15 = v14;
  v45[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v45[0] = v13;
  v45[1] = v15;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v16 = sub_22766C820();
  sub_226E93170(v45, v43, &unk_27D7BC990, &qword_227670A30);
  v17 = v44;
  if (v44)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v43, v44);
    v42 = &v39;
    v19 = v6;
    v20 = v5;
    v21 = *(v17 - 8);
    v22 = *(v21 + 64);
    MEMORY[0x28223BE20](v18);
    v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24);
    v25 = sub_22766D170();
    (*(v21 + 8))(v24, v17);
    v5 = v20;
    v6 = v19;
    __swift_destroy_boxed_opaque_existential_0(v43);
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v27 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE3F8 &qword_22768AA58))];

  sub_226E97D1C(v45, &unk_27D7BC990, &qword_227670A30);
  v28 = qword_2813B2078;
  swift_beginAccess();
  v29 = v27;
  v30 = sub_22766A080();
  v32 = v31;
  MEMORY[0x22AA985C0]();
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v42 = *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v30(v45, 0);
  swift_endAccess();

  v33 = sub_227542618(v10 + v28, v5, v6);
  v34 = v45[5];
  if (v33)
  {
    if (v33 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v35 = sub_2272846DC(0);
  if (v34)
  {
LABEL_10:

    return;
  }

  v36 = v35;
  [v35 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v37 = sub_22766C9E0();
  v38 = sub_226EDAB24(v37);

  sub_226EDAB78(v38, v40);
}

void sub_22751304C(uint64_t a1, void *a2)
{
  v4 = sub_227512688(a1);
  v43 = v2;
  v5 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C78, &unk_227671C70);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = v6;
  v15 = v7;

  sub_22766A070();
  v37 = v15;
  v38 = v14;
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  v39 = v8;
  *(v13 + 32) = v8;
  *(v13 + 40) = v9;
  swift_getKeyPath();
  v16 = sub_227073F2C(v4);

  v42[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v42[0] = v16;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v17 = sub_22766C820();
  sub_226E93170(v42, v40, &unk_27D7BC990, &qword_227670A30);
  v18 = v41;
  if (v41)
  {
    v19 = __swift_project_boxed_opaque_existential_0(v40, v41);
    v20 = *(v18 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v19);
    v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23);
    v24 = sub_22766D170();
    (*(v20 + 8))(v23, v18);
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFB8 &qword_227683030))];

  sub_226E97D1C(v42, &unk_27D7BC990, &qword_227670A30);
  v26 = qword_2813B2078;
  swift_beginAccess();
  v27 = sub_22766A080();
  v29 = v28;
  MEMORY[0x22AA985C0]();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v27(v42, 0);
  swift_endAccess();

  v30 = sub_227542660(v13 + v26, v39, v9);
  if (v30)
  {
    if (v30 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_10;
  }

  v31 = v43;
  v32 = sub_2272846F4(0);
  if (v31)
  {
LABEL_10:

    return;
  }

  v33 = v32;
  [v32 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v34 = sub_22766C9E0();
  v35 = sub_226EDAB24(v34);

  sub_226EDAB78(v35, v37);
}

char *sub_2275134A4(void *a1)
{
  v2 = sub_227662930();
  v61 = *(v2 - 8);
  v62 = v2;
  v3 = *(v61 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v57[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_227662750();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v57[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v63 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v57[-v15];
  MEMORY[0x28223BE20](v14);
  v60 = &v57[-v17];
  v18 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v19 = *v18;
  v20 = v18[1];
  v58 = *(v18 + 16);
  v21 = v18[3];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C78, &unk_227671C70);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v26 = v19;
  v27 = v20;

  v28 = v59;
  sub_22766A070();
  *(v25 + 16) = v26;
  *(v25 + 24) = v27;
  *(v25 + 32) = v58;
  *(v25 + 40) = v21;
  swift_getKeyPath();
  sub_227662740();
  v30 = v61;
  v29 = v62;
  (*(v61 + 104))(v5, *MEMORY[0x277CC9998], v62);
  sub_227662610();
  (*(v30 + 8))(v5, v29);
  (*(v28 + 8))(v9, v6);
  v31 = *(v28 + 48);
  if (v31(v16, 1, v6) == 1)
  {
    v32 = v60;
    sub_227662660();
    if (v31(v16, 1, v6) != 1)
    {
      sub_226E97D1C(v16, &qword_27D7B9690, qword_227670B50);
    }
  }

  else
  {
    v32 = v60;
    (*(v28 + 32))(v60, v16, v6);
  }

  (*(v28 + 56))(v32, 0, 1, v6);
  v33 = v63;
  sub_226E93170(v32, v63, &qword_27D7B9690, qword_227670B50);
  if (v31(v33, 1, v6) == 1)
  {
    sub_226E97D1C(v33, &qword_27D7B9690, qword_227670B50);
    v66 = 0u;
    v67 = 0u;
  }

  else
  {
    *(&v67 + 1) = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v66);
    (*(v28 + 32))(boxed_opaque_existential_0, v33, v6);
  }

  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v35 = sub_22766C820();
  sub_226E93170(&v66, v64, &unk_27D7BC990, &qword_227670A30);
  v36 = v65;
  if (v65)
  {
    v37 = __swift_project_boxed_opaque_existential_0(v64, v65);
    v38 = *(v36 - 8);
    v39 = *(v38 + 64);
    MEMORY[0x28223BE20](v37);
    v41 = &v57[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v38 + 16))(v41);
    v42 = sub_22766D170();
    (*(v38 + 8))(v41, v36);
    __swift_destroy_boxed_opaque_existential_0(v64);
  }

  else
  {
    v42 = 0;
  }

  v43 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v44 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFB8 &qword_227683030))];

  sub_226E97D1C(v32, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v66, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v45 = v44;
  v46 = sub_22766A080();
  v48 = v47;
  MEMORY[0x22AA985C0]();
  if (*((*v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v56 = *((*v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v46(&v66, 0);
  swift_endAccess();

  v49 = sub_2272331B8(100);
  swift_setDeallocating();

  v50 = *(v25 + 40);

  v51 = qword_2813B2078;
  v52 = sub_22766A100();
  (*(*(v52 - 8) + 8))(v25 + v51, v52);
  v53 = *(*v25 + 48);
  v54 = *(*v25 + 52);
  swift_deallocClassInstance();
  return v49;
}

void sub_227513C04(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v7 = *(v3 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE3F0, qword_22768A9A8);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = v4;
  v13 = v5;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v7;
  *(v11 + 40) = v6;
  v14 = qword_2813B2078;
  swift_beginAccess();
  v15 = sub_2275426A8(v11 + v14, v7, v6);
  if (v15)
  {
    if (v15 == 1)
    {

LABEL_4:
      v16 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB250, &unk_22768AA60);
      v17 = sub_227669040();
      v18 = *(v17 - 8);
      v19 = *(v18 + 72);
      v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_227670CD0;
      (*(v18 + 16))(v21 + v20, a1, v17);
      sub_22755807C(v21, v16[1], *(v16 + 16), v16[3]);

      return;
    }

    swift_willThrow();
  }

  else
  {
    v22 = sub_22723E058(0);
    if (!v27)
    {
      v23 = v22;
      [v22 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v24 = sub_22766C9E0();
      v25 = sub_226EDAB24(v24);

      sub_226EDAB78(v25, v13);

      goto LABEL_4;
    }
  }
}

uint64_t sub_227513EC4(void *a1)
{
  v2 = sub_227662930();
  v66 = *(v2 - 8);
  v67 = v2;
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v62[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_227662750();
  v64 = *(v6 - 8);
  v7 = *(v64 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v68 = &v62[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v62[-v15];
  MEMORY[0x28223BE20](v14);
  v65 = &v62[-v17];
  v18 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v19 = *v18;
  v20 = v18[1];
  v63 = *(v18 + 16);
  v21 = v18[3];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C78, &unk_227671C70);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v26 = v19;
  v27 = v20;

  v28 = v64;
  sub_22766A070();
  *(v25 + 16) = v26;
  *(v25 + 24) = v27;
  *(v25 + 32) = v63;
  *(v25 + 40) = v21;
  swift_getKeyPath();
  sub_227662740();
  v30 = v66;
  v29 = v67;
  (*(v66 + 104))(v5, *MEMORY[0x277CC9998], v67);
  sub_227662610();
  (*(v30 + 8))(v5, v29);
  (*(v28 + 8))(v9, v6);
  v31 = *(v28 + 48);
  if (v31(v16, 1, v6) == 1)
  {
    v32 = v65;
    sub_227662660();
    if (v31(v16, 1, v6) != 1)
    {
      sub_226E97D1C(v16, &qword_27D7B9690, qword_227670B50);
    }
  }

  else
  {
    v32 = v65;
    (*(v28 + 32))(v65, v16, v6);
  }

  (*(v28 + 56))(v32, 0, 1, v6);
  v33 = v68;
  sub_226E93170(v32, v68, &qword_27D7B9690, qword_227670B50);
  if (v31(v33, 1, v6) == 1)
  {
    sub_226E97D1C(v33, &qword_27D7B9690, qword_227670B50);
    v71 = 0u;
    v72 = 0u;
  }

  else
  {
    *(&v72 + 1) = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v71);
    (*(v28 + 32))(boxed_opaque_existential_0, v33, v6);
  }

  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v35 = sub_22766C820();
  sub_226E93170(&v71, v69, &unk_27D7BC990, &qword_227670A30);
  v36 = v70;
  if (v70)
  {
    v37 = __swift_project_boxed_opaque_existential_0(v69, v70);
    v38 = *(v36 - 8);
    v39 = *(v38 + 64);
    MEMORY[0x28223BE20](v37);
    v41 = &v62[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v38 + 16))(v41);
    v42 = sub_22766D170();
    (*(v38 + 8))(v41, v36);
    __swift_destroy_boxed_opaque_existential_0(v69);
  }

  else
  {
    v42 = 0;
  }

  v43 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v44 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFB8 &qword_227683030))];

  sub_226E97D1C(v32, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v71, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v45 = v44;
  v46 = sub_22766A080();
  v48 = v47;
  MEMORY[0x22AA985C0]();
  if (*((*v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v61 = *((*v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v46(&v71, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v50 = v73;
  v51 = sub_2273FC778(KeyPath);
  if (v50)
  {

    swift_setDeallocating();

    v52 = *(v25 + 40);

    v53 = qword_2813B2078;
    v54 = sub_22766A100();
    (*(*(v54 - 8) + 8))(v25 + v53, v54);
  }

  else
  {
    v53 = sub_226F3E6A8(v51);

    swift_setDeallocating();

    v57 = *(v25 + 40);

    v58 = qword_2813B2078;
    v59 = sub_22766A100();
    (*(*(v59 - 8) + 8))(v25 + v58, v59);
  }

  v55 = *(*v25 + 48);
  v56 = *(*v25 + 52);
  swift_deallocClassInstance();
  return v53;
}

unint64_t sub_227514708()
{
  result = qword_27D7BE400;
  if (!qword_27D7BE400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE400);
  }

  return result;
}

uint64_t sub_22751475C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE438, &qword_22768ABF8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_227514C98();
  sub_22766D480();
  v16 = a2;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE420, &qword_22768ABF0);
  sub_227514D40(&qword_27D7BE440, sub_227514DB8);
  sub_22766D120();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    sub_22766D120();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_227514950(uint64_t a1)
{
  v2 = sub_227514C98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22751498C(uint64_t a1)
{
  v2 = sub_227514C98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2275149C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_227514A68(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_227514A14()
{
  result = qword_27D7BE408;
  if (!qword_27D7BE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE408);
  }

  return result;
}

uint64_t sub_227514A68(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE410, &qword_22768ABE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_227514C98();
  sub_22766D460();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE420, &qword_22768ABF0);
  v11 = 0;
  sub_227514D40(&qword_27D7BE428, sub_227514CEC);
  sub_22766D0B0();
  v9 = v12;
  v11 = 1;
  sub_22766D0B0();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

unint64_t sub_227514C98()
{
  result = qword_27D7BE418;
  if (!qword_27D7BE418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE418);
  }

  return result;
}

unint64_t sub_227514CEC()
{
  result = qword_27D7BE430;
  if (!qword_27D7BE430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE430);
  }

  return result;
}

uint64_t sub_227514D40(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BE420, &qword_22768ABF0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227514DB8()
{
  result = qword_27D7BE448;
  if (!qword_27D7BE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE448);
  }

  return result;
}

unint64_t sub_227514E30()
{
  result = qword_27D7BE450;
  if (!qword_27D7BE450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE450);
  }

  return result;
}

unint64_t sub_227514E88()
{
  result = qword_27D7BE458;
  if (!qword_27D7BE458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE458);
  }

  return result;
}

unint64_t sub_227514EE0()
{
  result = qword_27D7BE460;
  if (!qword_27D7BE460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE460);
  }

  return result;
}

uint64_t sub_227514F34(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_226F204A8(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_226F204A8((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 24 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    *(v15 + 48) = 3;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_226EB526C(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_227515168(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v40 = a3;
  v39 = a2(0);
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = v32 - v7;
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v32[1] = v3;
    v45 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v8, 0);
    v10 = -1 << *(a1 + 32);
    v43 = a1 + 56;
    v44 = v45;
    result = sub_22766CC90();
    v11 = result;
    v12 = 0;
    v36 = v5 + 8;
    v37 = v5 + 16;
    v33 = a1 + 64;
    v34 = v8;
    v35 = v5;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v43 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v41 = *(a1 + 36);
      v16 = v38;
      v17 = v39;
      v18 = (*(v5 + 16))(v38, *(a1 + 48) + *(v5 + 72) * v11, v39);
      v42 = v40(v18);
      v20 = v19;
      result = (*(v5 + 8))(v16, v17);
      v21 = v44;
      v45 = v44;
      v23 = *(v44 + 16);
      v22 = *(v44 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_226F1EF90(v22 > 1, v23 + 1, 1);
        v21 = v45;
      }

      *(v21 + 16) = v23 + 1;
      v24 = v21 + 16 * v23;
      *(v24 + 32) = v42;
      *(v24 + 40) = v20;
      v13 = 1 << *(a1 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v25 = *(v43 + 8 * v15);
      if ((v25 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v44 = v21;
      if (v41 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v26 = v25 & (-2 << (v11 & 0x3F));
      if (v26)
      {
        v13 = __clz(__rbit64(v26)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v34;
        v5 = v35;
      }

      else
      {
        v27 = v15 << 6;
        v28 = v15 + 1;
        v14 = v34;
        v29 = (v33 + 8 * v15);
        v5 = v35;
        while (v28 < (v13 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_226EB526C(v11, v41, 0);
            v13 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v11, v41, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v14)
      {
        return v44;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_227515478(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_226F207C8(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_226F207C8((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 24 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    *(v15 + 48) = 1;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_226EB526C(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2275156A8(uint64_t a1)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F98];
  v3 = a1 + 56;
  v46 = MEMORY[0x277D84F98];
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v39 = v7;
  v40 = a1 + 56;
  while (v6)
  {
LABEL_9:
    v9 = *(a1 + 48) + 24 * (__clz(__rbit64(v6)) | (v1 << 6));
    v11 = *v9;
    v10 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = sub_226F491D4(v12);
    v15 = v2[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_24;
    }

    v18 = v13;
    v19 = v14;
    v42 = v2;
    v44 = v11;
    v20 = v2[3];
    v45 = v10;
    sub_226F04958(v11, v10, v12);
    if (v20 >= v17)
    {
      v7 = v39;
      v2 = v42;
      v23 = v18;
    }

    else
    {
      sub_226FEBD48(v17, 1);
      v2 = v46;
      v21 = sub_226F491D4(v12);
      if ((v19 & 1) != (v22 & 1))
      {
        goto LABEL_26;
      }

      v23 = v21;
      v7 = v39;
    }

    v6 &= v6 - 1;
    v3 = v40;
    if (v19)
    {
      v24 = v2[7];
      v25 = *(v24 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v23) = v25;
      v43 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_2273A4F18(0, *(v25 + 2) + 1, 1, v25);
        *(v24 + 8 * v23) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      v29 = v28 + 1;
      v31 = v44;
      v30 = v45;
      if (v28 >= v27 >> 1)
      {
        v37 = sub_2273A4F18((v27 > 1), v28 + 1, 1, v25);
        v29 = v28 + 1;
        v31 = v44;
        v30 = v45;
        v25 = v37;
        *(v43 + 8 * v23) = v37;
      }

      *(v25 + 2) = v29;
      v32 = &v25[24 * v28];
      *(v32 + 4) = v31;
      *(v32 + 5) = v30;
      v32[48] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD158, &qword_227683AA0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_227670CD0;
      *(v33 + 32) = v44;
      *(v33 + 40) = v45;
      *(v33 + 48) = v12;
      v2[(v23 >> 6) + 8] |= 1 << v23;
      *(v2[6] + 8 * v23) = v12;
      *(v2[7] + 8 * v23) = v33;
      v34 = v2[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_25;
      }

      v2[2] = v36;
    }
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v8);
    ++v1;
    if (v6)
    {
      v1 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_227515968(uint64_t a1)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F98];
  v3 = a1 + 56;
  v46 = MEMORY[0x277D84F98];
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v39 = v7;
  v40 = a1 + 56;
  while (v6)
  {
LABEL_9:
    v9 = *(a1 + 48) + 24 * (__clz(__rbit64(v6)) | (v1 << 6));
    v11 = *v9;
    v10 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = sub_226F491D4(v12);
    v15 = v2[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_24;
    }

    v18 = v13;
    v19 = v14;
    v42 = v2;
    v44 = v11;
    v20 = v2[3];
    v45 = v10;
    sub_226F48C1C(v11, v10, v12);
    if (v20 >= v17)
    {
      v7 = v39;
      v2 = v42;
      v23 = v18;
    }

    else
    {
      sub_226FEC490(v17, 1);
      v2 = v46;
      v21 = sub_226F491D4(v12);
      if ((v19 & 1) != (v22 & 1))
      {
        goto LABEL_26;
      }

      v23 = v21;
      v7 = v39;
    }

    v6 &= v6 - 1;
    v3 = v40;
    if (v19)
    {
      v24 = v2[7];
      v25 = *(v24 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v23) = v25;
      v43 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_2273A6AB4(0, *(v25 + 2) + 1, 1, v25);
        *(v24 + 8 * v23) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      v29 = v28 + 1;
      v31 = v44;
      v30 = v45;
      if (v28 >= v27 >> 1)
      {
        v37 = sub_2273A6AB4((v27 > 1), v28 + 1, 1, v25);
        v29 = v28 + 1;
        v31 = v44;
        v30 = v45;
        v25 = v37;
        *(v43 + 8 * v23) = v37;
      }

      *(v25 + 2) = v29;
      v32 = &v25[24 * v28];
      *(v32 + 4) = v31;
      *(v32 + 5) = v30;
      v32[48] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1A0, &qword_227679CE0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_227670CD0;
      *(v33 + 32) = v44;
      *(v33 + 40) = v45;
      *(v33 + 48) = v12;
      v2[(v23 >> 6) + 8] |= 1 << v23;
      *(v2[6] + 8 * v23) = v12;
      *(v2[7] + 8 * v23) = v33;
      v34 = v2[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_25;
      }

      v2[2] = v36;
    }
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v8);
    ++v1;
    if (v6)
    {
      v1 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_227515C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55[0] = a3;
  v62 = a2;
  v56 = MEMORY[0x277D84F98];
  v72 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v63 = a1;

  v9 = 0;
  v10 = &unk_27D7BC990;
  v60 = v7;
  v61 = v3;
LABEL_5:
  for (i = v9; !v6; ++i)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_41;
    }

    if (v9 >= v7)
    {

      return v56;
    }

    v6 = *(v3 + 8 * v9);
  }

  v12 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v13 = (v9 << 9) | (8 * v12);
  v14 = *(v63 + 56);
  v57 = *(*(v63 + 48) + v13);
  v15 = *(v14 + v13);
  v16 = MEMORY[0x277D84F90];
  v71 = MEMORY[0x277D84F90];
  v17 = v15[2];

  v18 = 0;
  v19 = v15 + 6;
LABEL_10:
  v20 = &v19[3 * v18];
  while (1)
  {
    if (v17 == v18)
    {
      if (v16 >> 62)
      {
        if (!sub_22766CD20())
        {
LABEL_23:

          goto LABEL_5;
        }
      }

      else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v39 = v10;
      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v40 = sub_22766C2B0();

      v67 = [objc_opt_self() *v55[0]];

      v41 = v56[2];
      if (v56[3] <= v41)
      {
        sub_226FE466C(v41 + 1, 1);
      }

      v42 = v72;
      v43 = *(v72 + 40);
      v44 = v57;
      result = sub_22766D360();
      v45 = v42 + 64;
      v56 = v42;
      v46 = -1 << *(v42 + 32);
      v47 = result & ~v46;
      v48 = v47 >> 6;
      if (((-1 << v47) & ~*(v42 + 64 + 8 * (v47 >> 6))) == 0)
      {
        v50 = 0;
        v51 = (63 - v46) >> 6;
        v10 = v39;
        while (++v48 != v51 || (v50 & 1) == 0)
        {
          v52 = v48 == v51;
          if (v48 == v51)
          {
            v48 = 0;
          }

          v50 |= v52;
          v53 = *(v45 + 8 * v48);
          if (v53 != -1)
          {
            v49 = __clz(__rbit64(~v53)) + (v48 << 6);
            goto LABEL_37;
          }
        }

        goto LABEL_42;
      }

      v49 = __clz(__rbit64((-1 << v47) & ~*(v42 + 64 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
      v10 = v39;
LABEL_37:
      *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v54 = v56;
      *(v56[6] + 8 * v49) = v44;
      *(v54[7] + 8 * v49) = v67;
      ++v54[2];
      goto LABEL_5;
    }

    if (v18 >= v17)
    {
      break;
    }

    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_40;
    }

    v22 = *v20;
    v20 += 24;
    ++v18;
    if (v22 == 1)
    {
      v66 = v19;
      v67 = v15;
      v23 = *(v20 - 5);
      v24 = *(v20 - 4);
      KeyPath = swift_getKeyPath();
      v70[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v70[0] = v23;
      v70[1] = v24;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
      sub_226F48BA8(v23, v24, 1);
      v65 = v23;
      sub_226F48BA8(v23, v24, 1);

      v64 = KeyPath;
      v26 = sub_22766C820();
      sub_226E93170(v70, v68, v10, &qword_227670A30);
      v27 = v69;
      if (v69)
      {
        v28 = __swift_project_boxed_opaque_existential_0(v68, v69);
        v58 = v55;
        v59 = v26;
        v29 = *(v27 - 8);
        v30 = *(v29 + 64);
        v31 = MEMORY[0x28223BE20](v28);
        v33 = v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v29 + 16))(v33, v31);
        v34 = sub_22766D170();
        (*(v29 + 8))(v33, v27);
        v26 = v59;
        __swift_destroy_boxed_opaque_existential_0(v68);
      }

      else
      {
        v34 = 0;
      }

      v35 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v36 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCFD0, qword_2276831F0));
      [v36 initWithLeftExpression:v26 rightExpression:v35 modifier:0 type:v62 options:0];

      v10 = &unk_27D7BC990;
      sub_226E97D1C(v70, &unk_27D7BC990, &qword_227670A30);
      v37 = sub_226F48BB8(v65, v24, 1);
      MEMORY[0x22AA985C0](v37);
      if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v38 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22766C360();
        v10 = &unk_27D7BC990;
      }

      result = sub_22766C3A0();
      v16 = v71;
      v18 = v21;
      v7 = v60;
      v3 = v61;
      v19 = v66;
      v15 = v67;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_227516204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = MEMORY[0x277D84F98];
  v35 = MEMORY[0x277D84F98];
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (1)
  {
    if (!v9)
    {
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v10)
        {

          return v5;
        }

        v9 = *(v6 + 8 * v13);
        ++v12;
        if (v9)
        {
          v12 = v13;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_10:
    v14 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
    v15 = *(*(a1 + 48) + v14);
    v16 = *(*(a1 + 56) + v14);

    v18 = a4(v17, a2, a3);
    if (v4)
    {
      break;
    }

    v19 = v18;
    v9 &= v9 - 1;

    if (v19)
    {
      v20 = *(v5 + 16);
      if (*(v5 + 24) <= v20)
      {
        sub_226FE466C(v20 + 1, 1);
        v5 = v35;
      }

      v21 = *(v5 + 40);
      result = sub_22766D360();
      v22 = v5 + 64;
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v5 + 64 + 8 * (v24 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v23) >> 6;
        while (++v25 != v28 || (v27 & 1) == 0)
        {
          v29 = v25 == v28;
          if (v25 == v28)
          {
            v25 = 0;
          }

          v27 |= v29;
          v30 = *(v22 + 8 * v25);
          if (v30 != -1)
          {
            v26 = __clz(__rbit64(~v30)) + (v25 << 6);
            goto LABEL_24;
          }
        }

LABEL_29:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v5 + 64 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      *(*(v5 + 48) + 8 * v26) = v15;
      *(*(v5 + 56) + 8 * v26) = v19;
      ++*(v5 + 16);
    }
  }

  return v5;
}

uint64_t sub_227516448()
{
  v0 = sub_227664380();
  v1 = sub_226F51A40(v0);
  v2 = sub_227515C28(v1, 4, &selRef_orPredicateWithSubpredicates_);

  v3 = sub_227664370();
  v4 = sub_226F51A40(v3);
  v5 = sub_227515C28(v4, 5, &selRef_andPredicateWithSubpredicates_);

  v6 = *(v2 + 16);
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = sub_226ECC830(*(v2 + 16), 0);
  v8 = sub_2274CF834(&v14, v7 + 32, v6, v2);
  result = sub_226EBB21C();
  if (v8 == v6)
  {
    v10 = *(v5 + 16);
    if (v10)
    {
      while (1)
      {
        v11 = sub_226ECC830(v10, 0);
        v5 = sub_2274CF834(&v14, v11 + 32, v10, v5);
        sub_226EBB21C();
        if (v5 == v10)
        {
          break;
        }

        __break(1u);
LABEL_6:

        v7 = MEMORY[0x277D84F90];
        v10 = *(v5 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      v11 = MEMORY[0x277D84F90];
    }

    v14 = v7;
    sub_22745F2F8(v11);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v12 = sub_22766C2B0();

    v13 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}