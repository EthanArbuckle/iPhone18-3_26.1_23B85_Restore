uint64_t sub_222A866C0(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v1 = 0xE400000000000000;
      v2 = 1701736270;
      goto LABEL_13;
    }

    if (a1 == 1)
    {
      v1 = 0x8000000222B135D0;
      v2 = 0xD00000000000002ALL;
      goto LABEL_13;
    }

LABEL_12:
    v2 = 0xD00000000000001BLL;
    v1 = 0x8000000222B13600;
    goto LABEL_13;
  }

  if (a1 == 2)
  {
    v1 = 0x8000000222B135A0;
    v2 = 0xD00000000000002BLL;
    goto LABEL_13;
  }

  if (a1 == 3)
  {
    v1 = 0x8000000222B13570;
    v2 = 0xD00000000000002FLL;
    goto LABEL_13;
  }

  if (a1 != 4)
  {
    goto LABEL_12;
  }

  v1 = 0x8000000222B13540;
  v2 = 0xD00000000000002DLL;
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D938, &qword_222B0A138);
  v4 = sub_222B023D8();

  MEMORY[0x223DC66E0](46, 0xE100000000000000);

  MEMORY[0x223DC66E0](v2, v1);

  return v4;
}

uint64_t sub_222A86848(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (!v2)
    {
      return !v3;
    }

    if (v2 == 1)
    {
      return v3 == 1;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        return v3 == 2;
      case 3:
        return v3 == 3;
      case 4:
        return v3 == 4;
    }
  }

  if (v3 < 5)
  {
    return 0;
  }

  sub_222A250BC(0, &qword_280CB4AE8, 0x277D82BB8);
  return sub_222B02AE8() & 1;
}

uint64_t sub_222A8691C()
{
  v1 = *v0;
  sub_222B03128();
  MEMORY[0x223DC7380](v1 + 1);
  return sub_222B03168();
}

uint64_t sub_222A86994()
{
  v1 = *v0;
  sub_222B03128();
  MEMORY[0x223DC7380](v1 + 1);
  return sub_222B03168();
}

void *sub_222A869D8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4uLL)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_222A86A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 48) = 0;
  v5 = sub_222A3A470(MEMORY[0x277D84F90]);
  v46 = *(a3 + 16);
  v6 = 0;
  if (!v46)
  {
LABEL_30:
    v43[2] = a1;
    v43[3] = a3;
    v43[4] = v5;
    v43[5] = a2;
    sub_222A1F4CC(v6);
    return v43;
  }

  v7 = 0;
  v45 = a3 + 32;
  v44 = a3;
  while (1)
  {
    if (v7 >= *(a3 + 16))
    {
      goto LABEL_34;
    }

    v47 = v7;
    sub_222A42E40(v45 + 40 * v7, v51);
    v8 = v52;
    v9 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v10 = (*(v9 + 24))(v8, v9);
    v11 = *(v10 + 16);
    if (v11)
    {
      break;
    }

LABEL_26:

    if (qword_280CB4C08 != -1)
    {
      swift_once();
    }

    v31 = sub_222B02148();
    __swift_project_value_buffer(v31, qword_280CB4C10);
    sub_222A42E40(v51, &v49);
    v32 = sub_222B02128();
    v33 = sub_222B028D8();
    a3 = v44;
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48 = v35;
      *v34 = 136315138;
      __swift_project_boxed_opaque_existential_1(&v49, v50);
      swift_getDynamicType();
      v36 = sub_222B03228();
      v38 = v37;
      __swift_destroy_boxed_opaque_existential_0(&v49);
      v39 = sub_222A230FC(v36, v38, &v48);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_222A1C000, v32, v33, "BiomeSiriEventScenarioProcessor Adding a filter: %s ", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x223DC7E30](v35, -1, -1);
      MEMORY[0x223DC7E30](v34, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(&v49);
    }

    v7 = v47 + 1;
    __swift_destroy_boxed_opaque_existential_0(v51);
    if (v47 + 1 == v46)
    {
      goto LABEL_30;
    }
  }

  v12 = 0;
  while (v12 < *(v10 + 16))
  {
    v13 = *(v10 + 32 + v12);
    sub_222A42E40(v51, &v49);
    sub_222A1F4CC(v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v5;
    v16 = sub_222A27244(v13);
    v17 = v5[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_32;
    }

    v20 = v15;
    if (v5[3] >= v19)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v5 = v48;
        if (v15)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_222A2CE0C();
        v5 = v48;
        if (v20)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_222A29E6C(v19, isUniquelyReferenced_nonNull_native);
      v21 = sub_222A27244(v13);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_35;
      }

      v16 = v21;
      v5 = v48;
      if (v20)
      {
        goto LABEL_18;
      }
    }

    v5[(v16 >> 6) + 8] |= 1 << v16;
    *(v5[6] + v16) = v13;
    *(v5[7] + 8 * v16) = MEMORY[0x277D84F90];
    v23 = v5[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_33;
    }

    v5[2] = v25;
LABEL_18:
    v26 = v5[7];
    v27 = *(v26 + 8 * v16);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *(v26 + 8 * v16) = v27;
    if ((v28 & 1) == 0)
    {
      v27 = sub_222AA998C(0, v27[2] + 1, 1, v27);
      *(v26 + 8 * v16) = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      v27 = sub_222AA998C((v29 > 1), v30 + 1, 1, v27);
      *(v26 + 8 * v16) = v27;
    }

    ++v12;
    v27[2] = v30 + 1;
    sub_222A1E5A8(&v49, &v27[5 * v30 + 4]);
    v6 = sub_222A7D5A0;
    if (v11 == v12)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_222B030B8();
  __break(1u);
  return result;
}

uint64_t sub_222A86E7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_222B021D8();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_222B02238();
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v21, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  swift_weakInit();
  v20 = *(v3 + 16);
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = sub_222A8B820;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_103;
  v18 = _Block_copy(aBlock);

  sub_222B02208();
  v23 = MEMORY[0x277D84F90];
  sub_222A8B840(qword_280CBA240, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A77D7C(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
  sub_222B02BB8();
  MEMORY[0x223DC6BE0](0, v15, v10, v18);
  _Block_release(v18);
  (*(v22 + 8))(v10, v6);
  (*(v11 + 8))(v15, v21);
}

void sub_222A87180(unint64_t a1, int64_t a2, int64_t a3)
{
  if (qword_280CB4C08 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v6 = sub_222B02148();
    __swift_project_value_buffer(v6, qword_280CB4C10);
    v7 = sub_222B02128();
    v8 = sub_222B028D8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_222A1C000, v7, v8, "BiomeSiriEventScenarioProcessor received a subscribe request", v9, 2u);
      MEMORY[0x223DC7E30](v9, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      v13 = sub_222B02128();
      v17 = sub_222B028D8();
      if (os_log_type_enabled(v13, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_222A1C000, v13, v17, "Skipping BiomeSiriEventScenarioProcessor subscription, the scenario processor was deallocated", v18, 2u);
        MEMORY[0x223DC7E30](v18, -1, -1);
      }

      goto LABEL_11;
    }

    v11 = Strong;
    v12 = *(Strong + 48);
    v13 = sub_222B02128();
    v14 = sub_222B028D8();
    v15 = os_log_type_enabled(v13, v14);
    if (v12)
    {
      if (v15)
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_222A1C000, v13, v14, "Skipping BiomeSiriEventScenarioProcessor subscription, the scenario processor is already subscribed", v16, 2u);
        MEMORY[0x223DC7E30](v16, -1, -1);
      }

LABEL_11:

      return;
    }

    v49 = a1;
    v50 = a2;
    v51 = a3;
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_222A1C000, v13, v14, "BiomeSiriEventScenarioProcessor is starting to subscribe to Biome streams", v19, 2u);
      MEMORY[0x223DC7E30](v19, -1, -1);
    }

    v20 = v11[5];
    v23 = *(v20 + 64);
    v22 = v20 + 64;
    v21 = v23;
    v24 = 1 << *(v11[5] + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    a1 = v25 & v21;
    a2 = (v24 + 63) >> 6;
    v54 = v11[5];

    a3 = 0;
    v52 = MEMORY[0x277D84F90];
    v53 = v11;
    if (a1)
    {
      break;
    }

LABEL_20:
    if (a2 <= a3 + 1)
    {
      v27 = a3 + 1;
    }

    else
    {
      v27 = a2;
    }

    v28 = v27 - 1;
    while (1)
    {
      v26 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        break;
      }

      if (v26 >= a2)
      {
        a1 = 0;
        v57 = 0u;
        v58 = 0u;
        a3 = v28;
        v56 = 0u;
        goto LABEL_29;
      }

      a1 = *(v22 + 8 * v26);
      ++a3;
      if (a1)
      {
        a3 = v26;
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v26 = a3;
LABEL_28:
    v29 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    v30 = v29 | (v26 << 6);
    v31 = *(*(v54 + 48) + v30);
    sub_222A42E40(*(v54 + 56) + 40 * v30, v55);
    LOBYTE(v56) = v31;
    sub_222A1E5A8(v55, &v56 + 8);
LABEL_29:
    v59[1] = v57;
    v59[2] = v58;
    v59[0] = v56;
    if (!v58)
    {
      break;
    }

    v32 = v59[0];
    sub_222A1E5A8((v59 + 8), &v56);
    if (*(v11[4] + 16) && (sub_222A27244(v32), (v33 & 1) != 0))
    {
      sub_222A42E40(&v56, v55);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_222AA99B0(0, v52[2] + 1, 1, v52);
      }

      v43 = v52[2];
      v42 = v52[3];
      if (v43 >= v42 >> 1)
      {
        v52 = sub_222AA99B0((v42 > 1), v43 + 1, 1, v52);
      }

      v52[2] = v43 + 1;
      sub_222A1E5A8(v55, &v52[5 * v43 + 4]);
      v44 = *(&v57 + 1);
      v45 = v58;
      __swift_project_boxed_opaque_existential_1(&v56, *(&v57 + 1));
      v46 = swift_allocObject();
      *(v46 + 16) = v49;
      *(v46 + 24) = v32;
      *(v46 + 32) = v50;
      *(v46 + 40) = v51;
      v47 = *(v45 + 16);

      v47(sub_222A8B82C, v46, v44, v45);

      __swift_destroy_boxed_opaque_existential_0(&v56);
      v11 = v53;
      if (!a1)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v34 = sub_222B02128();
      v35 = sub_222B028D8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *&v55[0] = v37;
        *v36 = 136315138;
        v38 = sub_222B023F8();
        v40 = sub_222A230FC(v38, v39, v55);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_222A1C000, v34, v35, "Skipping starting a Biome subscription for stream %s, no filters to process", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        v41 = v37;
        v11 = v53;
        MEMORY[0x223DC7E30](v41, -1, -1);
        MEMORY[0x223DC7E30](v36, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_0(&v56);
      if (!a1)
      {
        goto LABEL_20;
      }
    }
  }

  v48 = v11[6];
  v11[6] = v52;
}

uint64_t sub_222A87774(void *a1, int a2, uint64_t a3, int a4, void (*a5)(uint64_t), uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v29 = a4;
  v27 = a3;
  v28 = a1;
  v26 = a2;
  v6 = sub_222B02098();
  v32 = *(v6 - 8);
  v33 = v6;
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_222B020C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280CB79E0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_280CBC3E0);
  (*(v12 + 16))(v16, v17, v11);
  sub_222B02088();
  v18 = swift_slowAlloc();
  *v18 = 0;
  v19 = sub_222B020B8();
  v20 = sub_222B02A08();
  v21 = sub_222B02078();
  _os_signpost_emit_with_name_impl(&dword_222A1C000, v19, v20, v21, "processBiomeEventFilters", "", v18, 2u);
  sub_222A87A18(v27, v29, v28, v26 & 1, v30);
  v22 = sub_222B029F8();
  v23 = sub_222B02078();
  _os_signpost_emit_with_name_impl(&dword_222A1C000, v19, v22, v23, "processBiomeEventFilters", "", v18, 2u);

  MEMORY[0x223DC7E30](v18, -1, -1);
  (*(v32 + 8))(v10, v33);
  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_222A87A18(uint64_t a1, unsigned __int8 a2, void *a3, char a4, void (*a5)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_280CB4C08 != -1)
    {
      swift_once();
    }

    v11 = sub_222B02148();
    __swift_project_value_buffer(v11, qword_280CB4C10);
    v12 = sub_222B02128();
    v13 = sub_222B028E8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136315138;
      v16 = sub_222B023F8();
      v18 = sub_222A230FC(v16, v17, &v27);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_222A1C000, v12, v13, "Subscriber for %s is dropping a Biome event: the scenario processor does not exist", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x223DC7E30](v15, -1, -1);
      MEMORY[0x223DC7E30](v14, -1, -1);
    }

    goto LABEL_13;
  }

  if (!*(Strong + 48))
  {
    if (qword_280CB4C08 != -1)
    {
      swift_once();
    }

    v19 = sub_222B02148();
    __swift_project_value_buffer(v19, qword_280CB4C10);
    v12 = sub_222B02128();
    v20 = sub_222B028E8();
    if (os_log_type_enabled(v12, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315138;
      v23 = sub_222B023F8();
      v25 = sub_222A230FC(v23, v24, &v27);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_222A1C000, v12, v20, "Subscriber for %s is dropping a Biome event: the scenario processor is not subscribed", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223DC7E30](v22, -1, -1);
      MEMORY[0x223DC7E30](v21, -1, -1);
    }

LABEL_13:

    v10 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v10 = sub_222A88214(a3, a4 & 1, a2);

LABEL_14:
  a5(v10);
}

uint64_t sub_222A87D2C()
{
  v1 = sub_222B021D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_222B02238();
  v7 = *(v15 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v15, v9);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v0 + 16);
  aBlock[4] = sub_222A8B818;
  v18 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222AD9FB4;
  aBlock[3] = &block_descriptor_94;
  v12 = _Block_copy(aBlock);

  sub_222B02208();
  v16 = MEMORY[0x277D84F90];
  sub_222A8B840(qword_280CBA240, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D718, &unk_222B0A160);
  sub_222A77D7C(&qword_280CBA230, &qword_27D01D718, &unk_222B0A160);
  sub_222B02BB8();
  MEMORY[0x223DC6BE0](0, v11, v6, v12);
  _Block_release(v12);
  (*(v2 + 8))(v6, v1);
  (*(v7 + 8))(v11, v15);
}

uint64_t sub_222A87FCC(uint64_t a1)
{
  if (qword_280CB4C08 != -1)
  {
    swift_once();
  }

  v2 = sub_222B02148();
  __swift_project_value_buffer(v2, qword_280CB4C10);
  v3 = sub_222B02128();
  v4 = sub_222B028D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_222A1C000, v3, v4, "BiomeSiriEventScenarioProcessor received an unsubscribe request", v5, 2u);
    MEMORY[0x223DC7E30](v5, -1, -1);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 48);

    v8 = sub_222B02128();
    v9 = sub_222B028D8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_222A1C000, v8, v9, "BiomeSiriEventScenarioProcessor is starting to unsubscribe from Biome streams", v10, 2u);
      MEMORY[0x223DC7E30](v10, -1, -1);
    }

    v11 = *(v6 + 16);
    if (v11)
    {
      v12 = v6 + 32;
      do
      {
        sub_222A42E40(v12, v22);
        v13 = v23;
        v14 = v24;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        (*(v14 + 24))(v13, v14);
        __swift_destroy_boxed_opaque_existential_0(v22);
        v12 += 40;
        --v11;
      }

      while (v11);
    }

    v15 = *(a1 + 24);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;
      do
      {
        sub_222A42E40(v17, v22);
        v18 = v23;
        v19 = v24;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        (*(v19 + 8))(v18, v19);
        __swift_destroy_boxed_opaque_existential_0(v22);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    v20 = *(a1 + 48);
  }

  *(a1 + 48) = 0;
}

uint64_t sub_222A88214(void *a1, char a2, unsigned __int8 a3)
{
  LOBYTE(v4) = a3;
  if ((a2 & 1) == 0)
  {
    if (qword_280CB4C08 == -1)
    {
LABEL_7:
      v12 = sub_222B02148();
      __swift_project_value_buffer(v12, qword_280CB4C10);
      v13 = a1;
      v14 = sub_222B02128();
      v15 = sub_222B028D8();
      sub_222A8B80C(a1, 0);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v53[0] = v17;
        *v16 = 136315394;
        LOBYTE(v52[0]) = v4;
        v18 = sub_222B023F8();
        v20 = sub_222A230FC(v18, v19, v53);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        v52[0] = a1;
        v21 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D460, qword_222B07A50);
        v22 = sub_222B023D8();
        v24 = sub_222A230FC(v22, v23, v53);

        *(v16 + 14) = v24;
        _os_log_impl(&dword_222A1C000, v14, v15, "Subscriber for %s reached completion, error=%s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DC7E30](v17, -1, -1);
        MEMORY[0x223DC7E30](v16, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_28:
    swift_once();
    goto LABEL_7;
  }

  v6 = *(v3 + 32);
  v7 = MEMORY[0x277D84F90];
  if (!*(v6 + 16))
  {
    v10 = MEMORY[0x277D84F90];
    v11 = *(MEMORY[0x277D84F90] + 16);
    if (!v11)
    {
      goto LABEL_24;
    }

LABEL_11:
    v56 = v7;
    sub_222A23DB4(0, v11, 0);
    v25 = 0;
    v4 = v7;
    v26 = v10 + 32;
    v47 = v10;
    v48 = a1;
    v49 = v11;
    while (v25 < *(v10 + 16))
    {
      sub_222A42E40(v26, v53);
      v27 = v54;
      v28 = v55;
      __swift_project_boxed_opaque_existential_1(v53, v54);
      v29 = (*(v28 + 16))(a1, v27, v28);
      if (v29)
      {
        if (qword_280CB4C08 != -1)
        {
          swift_once();
        }

        v30 = sub_222B02148();
        __swift_project_value_buffer(v30, qword_280CB4C10);
        sub_222A42E40(v53, v52);
        sub_222A8B7EC(v29);
        v31 = sub_222B02128();
        v32 = sub_222B028D8();
        sub_222A8B7FC(v29);
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v51 = v34;
          *v33 = 136315394;
          sub_222A42E40(v52, v50);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D950, &unk_222B0A150);
          v35 = sub_222B023D8();
          v37 = v36;
          __swift_destroy_boxed_opaque_existential_0(v52);
          v38 = sub_222A230FC(v35, v37, &v51);

          *(v33 + 4) = v38;
          *(v33 + 12) = 2080;
          sub_222A8B7EC(v29);
          v39 = sub_222A866C0(v29);
          v41 = v40;
          sub_222A8B7FC(v29);
          v42 = sub_222A230FC(v39, v41, &v51);
          v10 = v47;

          *(v33 + 14) = v42;
          _os_log_impl(&dword_222A1C000, v31, v32, "%s detected the Biome scenario %s", v33, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DC7E30](v34, -1, -1);
          v43 = v33;
          a1 = v48;
          MEMORY[0x223DC7E30](v43, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(v52);
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v53);
      v56 = v4;
      v45 = *(v4 + 16);
      v44 = *(v4 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_222A23DB4((v44 > 1), v45 + 1, 1);
        v4 = v56;
      }

      ++v25;
      *(v4 + 16) = v45 + 1;
      *(v4 + 8 * v45 + 32) = v29;
      v26 += 40;
      if (v49 == v25)
      {

        return v4;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v8 = sub_222A27244(a3);
  if (v9)
  {
    v10 = *(*(v6 + 56) + 8 * v8);

    v11 = *(v10 + 16);
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  v10 = MEMORY[0x277D84F90];
  v11 = *(MEMORY[0x277D84F90] + 16);
  if (v11)
  {
    goto LABEL_11;
  }

LABEL_24:

  return MEMORY[0x277D84F90];
}

uint64_t sub_222A88728()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return swift_deallocClassInstance();
}

unint64_t sub_222A887A4()
{
  result = sub_222A887CC();
  qword_27D01D8D0 = result;
  *algn_27D01D8D8 = v1;
  qword_27D01D8E0 = v2;
  return result;
}

unint64_t sub_222A887CC()
{
  sub_222A250BC(0, &qword_27D01D8C8, 0x277CD41A8);
  v0 = [swift_getObjCClassFromMetadata() typeName];
  if (v0)
  {
    v1 = v0;
    sub_222A250BC(0, &qword_27D01D8C0, 0x277CD4078);
    v2 = [swift_getObjCClassFromMetadata() typeName];
    if (v2)
    {
      v3 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01C968, &qword_222B04928);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_222B05260;
      v5 = sub_222A250BC(0, &unk_280CB83F0, 0x277CCACA8);
      *(v4 + 32) = v1;
      *(v4 + 88) = v5;
      *(v4 + 56) = v5;
      *(v4 + 64) = v3;
      v6 = objc_allocWithZone(MEMORY[0x277CBEB98]);
      v7 = sub_222B025D8();

      [v6 initWithArray_];
      goto LABEL_9;
    }
  }

  [objc_allocWithZone(MEMORY[0x277CBEB98]) init];
  if (qword_280CB4C08 != -1)
  {
    swift_once();
  }

  v8 = sub_222B02148();
  __swift_project_value_buffer(v8, qword_280CB4C10);
  v7 = sub_222B02128();
  v9 = sub_222B028E8();
  if (os_log_type_enabled(v7, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_222A1C000, v7, v9, "Cannot retrieve intent type names for INStartCallIntent / INSendMessageIntent", v10, 2u);
    MEMORY[0x223DC7E30](v10, -1, -1);
  }

LABEL_9:

  return 0xD000000000000014;
}

unint64_t sub_222A889EC()
{
  result = sub_222A88A14();
  qword_27D01D8E8 = result;
  unk_27D01D8F0 = v1;
  qword_27D01D8F8 = v2;
  return result;
}

unint64_t sub_222A88A14()
{
  v6 = MEMORY[0x277D84F90];
  sub_222B02D38();
  _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  sub_222B02D18();
  v0 = *(v6 + 16);
  sub_222B02D48();
  sub_222B02D58();
  sub_222B02D28();
  _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  sub_222B02D18();
  v1 = *(v6 + 16);
  sub_222B02D48();
  sub_222B02D58();
  sub_222B02D28();
  _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  sub_222B02D18();
  v2 = *(v6 + 16);
  sub_222B02D48();
  sub_222B02D58();
  sub_222B02D28();
  sub_222A22648(v6);

  v3 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v4 = sub_222B025D8();

  [v3 initWithArray_];

  return 0xD000000000000013;
}

void sub_222A88CB0()
{
  sub_222A2265C(&unk_2835F1990);
  v0 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v1 = sub_222B025D8();

  v2 = [v0 initWithArray_];

  qword_27D01D900 = 0xD000000000000012;
  *algn_27D01D908 = 0x8000000222B136E0;
  qword_27D01D910 = v2;
}

void sub_222A88D58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_280CB4C08 != -1)
  {
    swift_once();
  }

  v6 = sub_222B02148();
  __swift_project_value_buffer(v6, qword_280CB4C10);
  v7 = sub_222B02128();
  v8 = sub_222B028D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_222A1C000, v7, v8, "BiomeSiriExecutionStreamSubscriber subscribing", v9, 2u);
    MEMORY[0x223DC7E30](v9, -1, -1);
  }

  v10 = [objc_opt_self() siriExecutionStream];
  v11 = [v10 publisher];

  if (qword_27D01C4E8 != -1)
  {
    swift_once();
  }

  v12 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v13 = [v11 filterWithKeyPath:v12 comparison:3 value:qword_27D01D8E0];

  if (qword_27D01C4F0 != -1)
  {
    swift_once();
  }

  v14 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v15 = [v13 filterWithKeyPath:v14 comparison:3 value:qword_27D01D8F8];

  if (qword_27D01C4F8 != -1)
  {
    swift_once();
  }

  v16 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v17 = [v15 filterWithKeyPath:v16 comparison:3 value:qword_27D01D910];

  v18 = [v17 subscribeOn_];
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v28 = sub_222A8B9C8;
  v29 = v19;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_222A30CA0;
  v27 = &block_descriptor_83;
  v20 = _Block_copy(&v24);

  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v28 = sub_222A8B7C4;
  v29 = v21;
  v24 = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_222A89160;
  v27 = &block_descriptor_89;
  v22 = _Block_copy(&v24);

  v23 = [v18 sinkWithCompletion:v20 receiveInput:v22];
  _Block_release(v22);
  _Block_release(v20);
}

uint64_t sub_222A89160(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_222A891C0()
{
  v1 = v0;
  if (qword_280CB4C08 != -1)
  {
    swift_once();
  }

  v2 = sub_222B02148();
  __swift_project_value_buffer(v2, qword_280CB4C10);
  v3 = sub_222B02128();
  v4 = sub_222B028D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_222A1C000, v3, v4, "BiomeSiriExecutionStreamSubscriber unsubscribing", v5, 2u);
    MEMORY[0x223DC7E30](v5, -1, -1);
  }

  v6 = [objc_opt_self() siriExecutionStream];
  v7 = [v6 publisher];

  v8 = [v7 subscribeOn_];
  v16 = nullsub_1;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_222A30CA0;
  v15 = &block_descriptor_74;
  v9 = _Block_copy(&v12);
  v16 = nullsub_1;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_222A89160;
  v15 = &block_descriptor_77;
  v10 = _Block_copy(&v12);
  v11 = [v8 sinkWithCompletion:v9 receiveInput:v10];
  _Block_release(v10);
  _Block_release(v9);

  [v11 cancel];
}

void sub_222A89480(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_280CB4C08 != -1)
  {
    swift_once();
  }

  v6 = sub_222B02148();
  __swift_project_value_buffer(v6, qword_280CB4C10);
  v7 = sub_222B02128();
  v8 = sub_222B028D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_222A1C000, v7, v8, "BiomeSiriUIStreamSubscriber subscribing", v9, 2u);
    MEMORY[0x223DC7E30](v9, -1, -1);
  }

  v10 = [objc_opt_self() siriUIStream];
  v11 = [v10 publisher];

  v12 = [v11 subscribeOn_];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v22 = sub_222A8B738;
  v23 = v13;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_222A30CA0;
  v21 = &block_descriptor_65;
  v14 = _Block_copy(&v18);

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v22 = sub_222A8B73C;
  v23 = v15;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_222A89160;
  v21 = &block_descriptor_71;
  v16 = _Block_copy(&v18);

  v17 = [v12 sinkWithCompletion:v14 receiveInput:v16];
  _Block_release(v16);
  _Block_release(v14);
}

void sub_222A89734()
{
  v1 = v0;
  if (qword_280CB4C08 != -1)
  {
    swift_once();
  }

  v2 = sub_222B02148();
  __swift_project_value_buffer(v2, qword_280CB4C10);
  v3 = sub_222B02128();
  v4 = sub_222B028D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_222A1C000, v3, v4, "BiomeSiriUIStreamSubscriber unsubscribing", v5, 2u);
    MEMORY[0x223DC7E30](v5, -1, -1);
  }

  v6 = [objc_opt_self() siriUIStream];
  v7 = [v6 publisher];

  v8 = [v7 subscribeOn_];
  v16 = nullsub_1;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_222A30CA0;
  v15 = &block_descriptor_56;
  v9 = _Block_copy(&v12);
  v16 = nullsub_1;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_222A89160;
  v15 = &block_descriptor_59;
  v10 = _Block_copy(&v12);
  v11 = [v8 sinkWithCompletion:v9 receiveInput:v10];
  _Block_release(v10);
  _Block_release(v9);

  [v11 cancel];
}

uint64_t sub_222A899F4()
{
  sub_222A250BC(0, &unk_280CB83F0, 0x277CCACA8);
  result = sub_222B02AF8();
  qword_27D01D918 = result;
  return result;
}

void sub_222A89A48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_280CB4C08 != -1)
  {
    swift_once();
  }

  v6 = sub_222B02148();
  __swift_project_value_buffer(v6, qword_280CB4C10);
  v7 = sub_222B02128();
  v8 = sub_222B028D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_222A1C000, v7, v8, "BiomeIntentStreamSubscriber subscribing", v9, 2u);
    MEMORY[0x223DC7E30](v9, -1, -1);
  }

  v10 = [objc_opt_self() intent];
  v11 = [v10 publisher];

  v12 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  if (qword_27D01C500 != -1)
  {
    swift_once();
  }

  v13 = [v11 filterWithKeyPath:v12 comparison:0 value:qword_27D01D918];

  v14 = [v13 subscribeOn_];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v24 = sub_222A8B9C8;
  v25 = v15;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_222A30CA0;
  v23 = &block_descriptor_47;
  v16 = _Block_copy(&v20);

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v24 = sub_222A8B710;
  v25 = v17;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = sub_222A89160;
  v23 = &block_descriptor_53;
  v18 = _Block_copy(&v20);

  v19 = [v14 sinkWithCompletion:v16 receiveInput:v18];
  _Block_release(v18);
  _Block_release(v16);
}

void sub_222A89D80(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, char a4, const char *a5)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    type metadata accessor for AnyBiomeEvent();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = a4;
    swift_unknownObjectRetain();
    a2(v10, 1);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_280CB4C08 != -1)
    {
      swift_once();
    }

    v11 = sub_222B02148();
    __swift_project_value_buffer(v11, qword_280CB4C10);
    oslog = sub_222B02128();
    v12 = sub_222B028D8();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_222A1C000, oslog, v12, a5, v13, 2u);
      MEMORY[0x223DC7E30](v13, -1, -1);
    }
  }
}

void sub_222A89F20()
{
  v1 = v0;
  if (qword_280CB4C08 != -1)
  {
    swift_once();
  }

  v2 = sub_222B02148();
  __swift_project_value_buffer(v2, qword_280CB4C10);
  v3 = sub_222B02128();
  v4 = sub_222B028D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_222A1C000, v3, v4, "BiomeIntentStreamSubscriber unsubscribing", v5, 2u);
    MEMORY[0x223DC7E30](v5, -1, -1);
  }

  v6 = [objc_opt_self() intent];
  v7 = [v6 publisher];

  v8 = [v7 subscribeOn_];
  v16 = nullsub_1;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_222A30CA0;
  v15 = &block_descriptor_8;
  v9 = _Block_copy(&v12);
  v16 = nullsub_1;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_222A89160;
  v15 = &block_descriptor_44;
  v10 = _Block_copy(&v12);
  v11 = [v8 sinkWithCompletion:v9 receiveInput:v10];
  _Block_release(v10);
  _Block_release(v9);

  [v11 cancel];
}

id sub_222A8A1E0(uint64_t a1)
{
  v3 = sub_222B02098();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D940, &unk_222B0A140);
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v83 - v16;
  if (*(a1 + 24))
  {
    if (qword_27D01C510 != -1)
    {
      swift_once();
    }

    v18 = sub_222B02148();
    __swift_project_value_buffer(v18, qword_27D01D920);
    v19 = sub_222B02128();
    v20 = sub_222B028D8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_222A1C000, v19, v20, "BiomeFilter: received non-intent Biome event", v21, 2u);
      MEMORY[0x223DC7E30](v21, -1, -1);
    }

    return 0;
  }

  v22 = *(a1 + 16);
  sub_222A8B0A8(v22, 0);
  v23 = [v22 eventBody];
  if (!v23)
  {
    if (qword_27D01C510 != -1)
    {
      swift_once();
    }

    v29 = sub_222B02148();
    __swift_project_value_buffer(v29, qword_27D01D920);
    v30 = sub_222B02128();
    v31 = sub_222B028E8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_222A1C000, v30, v31, "BiomeFilter: could not unwrap event body", v32, 2u);
      MEMORY[0x223DC7E30](v32, -1, -1);
    }

    goto LABEL_31;
  }

  v87 = v23;
  v24 = [v23 intentClass];
  if (!v24)
  {
    goto LABEL_25;
  }

  v86 = v22;
  v25 = v24;
  v26 = sub_222B02388();
  v28 = v27;

  if (v26 == 0xD000000000000011 && 0x8000000222B13620 == v28)
  {

    v22 = v86;
    goto LABEL_17;
  }

  v33 = sub_222B02F78();

  v22 = v86;
  if ((v33 & 1) == 0)
  {
LABEL_25:
    if (qword_27D01C510 != -1)
    {
      swift_once();
    }

    v46 = sub_222B02148();
    __swift_project_value_buffer(v46, qword_27D01D920);
    v30 = sub_222B02128();
    v47 = sub_222B028D8();
    if (!os_log_type_enabled(v30, v47))
    {
      goto LABEL_30;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = "BiomeFilter received Biome intent event that's not INStartCallIntent, skipping";
    goto LABEL_29;
  }

LABEL_17:
  v85 = v1;
  if (qword_27D01C510 != -1)
  {
    swift_once();
  }

  v34 = sub_222B02148();
  __swift_project_value_buffer(v34, qword_27D01D920);
  v35 = sub_222B02128();
  v36 = sub_222B028D8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_222A1C000, v35, v36, "BiomeFilter received Biome intent event INStartCallIntent", v37, 2u);
    MEMORY[0x223DC7E30](v37, -1, -1);
  }

  if ([v87 donatedBySiri])
  {
    v38 = sub_222B02128();
    v39 = sub_222B028D8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_222A1C000, v38, v39, "BiomeFilter: event donated by Siri", v40, 2u);
      MEMORY[0x223DC7E30](v40, -1, -1);
    }

    v41 = v87;
    [v87 absoluteTimestamp];
    v43 = v42;

    sub_222A86648(v22, 0);
    result = 0;
    v45 = v85;
    *(v85 + 32) = v43;
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
    *(v45 + 56) = 1;
    return result;
  }

  if ([v87 interactionDirection] != 2)
  {
    v30 = sub_222B02128();
    v47 = sub_222B028D8();
    if (!os_log_type_enabled(v30, v47))
    {
      goto LABEL_30;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = "BiomeFilter: direction incoming, skipping";
    goto LABEL_29;
  }

  if (*(v85 + 40))
  {
    v30 = sub_222B02128();
    v47 = sub_222B028D8();
    if (!os_log_type_enabled(v30, v47))
    {
      goto LABEL_30;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = "BiomeFilter: no lastSiriCallTimestamp, skipping";
LABEL_29:
    _os_log_impl(&dword_222A1C000, v30, v47, v49, v48, 2u);
    MEMORY[0x223DC7E30](v48, -1, -1);
LABEL_30:

LABEL_31:
    sub_222A86648(v22, 0);

    return 0;
  }

  v50 = *(v85 + 32);
  v51 = [v87 interaction];
  v52 = sub_222B01798();
  v54 = v53;

  v55 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  sub_222A55AB8(v52, v54);
  v84 = v54;
  v75 = sub_222A8B560();
  sub_222A26530(v52, v84);
  sub_222A250BC(0, &qword_27D01D948, 0x277CD3D58);
  v83 = v75;
  v76 = *MEMORY[0x277CCA308];
  sub_222B02388();
  v77 = sub_222B02AB8();

  if (v77)
  {
    v78 = v83;
    [v83 finishDecoding];

    sub_222A26530(v52, v84);
    v79 = [v77 dateInterval];

    v80 = v85;
    if (v79)
    {
      sub_222B01568();

      v81 = sub_222B015A8();
      (*(*(v81 - 8) + 56))(v14, 0, 1, v81);
    }

    else
    {
      v81 = sub_222B015A8();
      (*(*(v81 - 8) + 56))(v14, 1, 1, v81);
    }

    sub_222A8B620(v14, v17);
    sub_222B015A8();
    if ((*(*(v81 - 8) + 48))(v17, 1, v81))
    {
      sub_222A8B690(v17);
      v56 = 0.0;
    }

    else
    {
      sub_222B01598();
      v80 = v85;
      v56 = v82;
      sub_222A8B690(v17);
    }
  }

  else
  {

    sub_222A26530(v52, v84);
    v56 = 0.0;
    v80 = v85;
  }

  [v87 absoluteTimestamp];
  if (v57 - v50 <= 5.0 && v56 == 0.0)
  {
    if (*(v80 + 56) == 1)
    {
      v58 = sub_222B02128();
      v59 = sub_222B028D8();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_222A1C000, v58, v59, "BiomeFilter: event user hangup", v60, 2u);
        MEMORY[0x223DC7E30](v60, -1, -1);
      }

      v61 = v87;
      [v87 absoluteTimestamp];
      v63 = v62;

      sub_222A86648(v22, 0);
      result = 0;
      v64 = v85;
      *(v85 + 48) = v63;
      *(v64 + 56) = 0;
      return result;
    }
  }

  else if (*(v80 + 56))
  {
    v30 = sub_222B02128();
    v47 = sub_222B028D8();
    if (!os_log_type_enabled(v30, v47))
    {
      goto LABEL_30;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = "BiomeFilter: no lastUserHangupTimeStamp, skipping";
    goto LABEL_29;
  }

  v65 = *(v80 + 48);
  [v87 absoluteTimestamp];
  v67 = v56 > 0.0 && v66 - v65 <= 60.0;
  v68 = sub_222B02128();
  v69 = sub_222B028D8();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 67109120;
    *(v70 + 4) = v67;
    _os_log_impl(&dword_222A1C000, v68, v69, "BiomeFilter decided isUserCallAfterHangupSiriCall:%{BOOL}d", v70, 8u);
    MEMORY[0x223DC7E30](v70, -1, -1);
  }

  v71 = v85;
  *(v85 + 32) = 0;
  *(v71 + 40) = 1;
  *(v71 + 48) = 0;
  *(v71 + 56) = 1;
  if (!v67)
  {

    sub_222A86648(v22, 0);
    return 0;
  }

  v72 = qword_280CB79E8;
  v73 = v87;
  if (v72 != -1)
  {
    swift_once();
  }

  v74 = sub_222B020C8();
  __swift_project_value_buffer(v74, qword_280CBC3F8);
  sub_222B02088();
  sub_222A6F5D4("events.filters.UserCallAfterHangupSiriCall", 42, 2);
  sub_222A86648(v86, 0);

  (*(v4 + 8))(v8, v3);
  return v87;
}

uint64_t sub_222A8ADA4(uint64_t *a1, unsigned int a2)
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

uint64_t sub_222A8ADF4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_222A8AE48(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_222A8AE84()
{
  result = qword_280CB7E88[0];
  if (!qword_280CB7E88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CB7E88);
  }

  return result;
}

void sub_222A8AED8()
{
  v1 = *v0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
}

uint64_t sub_222A8AF24()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_280CB4C10);
  v1 = __swift_project_value_buffer(v0, qword_280CB4C10);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CBC458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_222A8AFEC()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_27D01D920);
  __swift_project_value_buffer(v0, qword_27D01D920);
  return sub_222B02138();
}

uint64_t sub_222A8B06C(void (*a1)(void))
{
  a1();

  return sub_222B03228();
}

id sub_222A8B0A8(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

uint64_t sub_222A8B0BC(uint64_t a1)
{
  v37 = a1;
  v36 = sub_222B02988();
  v1 = *(v36 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v36, v3);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_222B02968();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v9 = sub_222B02238();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v35[1] = sub_222A250BC(0, &qword_280CBA208, 0x277D85C78);
  sub_222B02228();
  v38 = MEMORY[0x277D84F90];
  sub_222A8B840(&unk_280CBA210, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D728, &unk_222B08D20);
  sub_222A77D7C(&unk_280CBA220, &qword_27D01D728, &unk_222B08D20);
  sub_222B02BB8();
  (*(v1 + 104))(v5, *MEMORY[0x277D85260], v36);
  v12 = sub_222B029A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D958, &unk_222B0A170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222B09E50;
  *(inited + 32) = 0;
  v14 = type metadata accessor for BiomeIntentStreamSubscriber();
  v15 = swift_allocObject();
  v16 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v17 = v12;
  v18 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v19 = [v16 initWithIdentifier:v18 targetQueue:v17];

  *(v15 + 16) = v19;
  *(inited + 64) = v14;
  *(inited + 72) = &off_2835F5CD0;
  *(inited + 40) = v15;
  *(inited + 80) = 1;
  v20 = type metadata accessor for BiomeSiriUIStreamSubscriber();
  v21 = swift_allocObject();
  v22 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v23 = v17;
  v24 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v25 = [v22 initWithIdentifier:v24 targetQueue:v23];

  *(v21 + 16) = v25;
  *(inited + 112) = v20;
  *(inited + 120) = &off_2835F5CF0;
  *(inited + 88) = v21;
  *(inited + 128) = 2;
  v26 = type metadata accessor for BiomeSiriExecutionStreamSubscriber();
  v27 = swift_allocObject();
  v28 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v29 = v23;
  v30 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v31 = [v28 initWithIdentifier:v30 targetQueue:v29];

  *(v27 + 16) = v31;
  *(inited + 160) = v26;
  *(inited + 168) = &off_2835F5D10;
  *(inited + 136) = v27;
  v32 = sub_222A3A580(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF78, &qword_222B05B90);
  swift_arrayDestroy();
  type metadata accessor for BiomeSiriEventScenarioProcessor();
  v33 = swift_allocObject();
  sub_222A86A10(v29, v32, v37);
  return v33;
}

id sub_222A8B560()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_222B01788();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_222B01628();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_222A8B620(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D940, &unk_222B0A140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A8B690(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D940, &unk_222B0A140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_222A8B764(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = [a1 error];
  v2();
}

id sub_222A8B7EC(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

void sub_222A8B7FC(id a1)
{
  if (a1 >= 5)
  {
  }
}

void sub_222A8B80C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_222A8B840(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningAnalytics05BiomeA13EventScenarioO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_222A8B8A0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222A8B8F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void makePLUSEventLogTarget()(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v4 = [v2 BOOLForKey_];

  v5 = &type metadata for SiriAnalyticsSharedPLUSEventLogTarget;
  if (v4)
  {
    v5 = &type metadata for DisabledPLUSEventLogTarget;
  }

  v6 = &protocol witness table for DisabledPLUSEventLogTarget;
  if (!v4)
  {
    v6 = &protocol witness table for SiriAnalyticsSharedPLUSEventLogTarget;
  }

  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
}

uint64_t PLUSEventLogTarget.emitMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v13 - v9;
  v11 = sub_222B018D8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v13 = 0;
  v14 = 1;
  (*(a3 + 8))(a1, v10, &v13, a2, a3);
  return sub_222A264C8(v10);
}

uint64_t PLUSEventLogTarget.emitMessage(_:isolatedStreamId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v16 - v11;
  v13 = sub_222B018D8();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a2, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  v16 = 0;
  v17 = 1;
  (*(a4 + 8))(a1, v12, &v16, a3, a4);
  return sub_222A264C8(v12);
}

uint64_t PLUSEventLogTarget.emitMessage(_:timeStamp:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v16 - v11;
  v13 = *a2;
  v14 = sub_222B018D8();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v16 = v13;
  v17 = 0;
  (*(a4 + 8))(a1, v12, &v16, a3, a4);
  return sub_222A264C8(v12);
}

uint64_t PLUSEventLogTimestamp.init()@<X0>(uint64_t *a1@<X8>)
{
  result = mach_absolute_time();
  *a1 = result;
  return result;
}

uint64_t sub_222A8BE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000222B13840 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_222B02F78();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_222A8BED8(uint64_t a1)
{
  v2 = sub_222A8C088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222A8BF14(uint64_t a1)
{
  v2 = sub_222A8C088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PLUSEventLogTimestamp.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D960, &qword_222B0A248);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222A8C088();
  sub_222B031B8();
  sub_222B02F08();
  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_222A8C088()
{
  result = qword_27D01D968;
  if (!qword_27D01D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D968);
  }

  return result;
}

uint64_t PLUSEventLogTimestamp.hashValue.getter()
{
  v1 = *v0;
  sub_222B03128();
  MEMORY[0x223DC73A0](v1);
  return sub_222B03168();
}

uint64_t PLUSEventLogTimestamp.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D970, &qword_222B0A250);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222A8C088();
  sub_222B03198();
  if (!v2)
  {
    v12 = sub_222B02EA8();
    (*(v6 + 8))(v10, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_222A8C2A4()
{
  v1 = *v0;
  sub_222B03128();
  MEMORY[0x223DC73A0](v1);
  return sub_222B03168();
}

uint64_t sub_222A8C318()
{
  v1 = *v0;
  sub_222B03128();
  MEMORY[0x223DC73A0](v1);
  return sub_222B03168();
}

uint64_t sub_222A8C374(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D960, &qword_222B0A248);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222A8C088();
  sub_222B031B8();
  sub_222B02F08();
  return (*(v4 + 8))(v8, v3);
}

void SiriAnalyticsSharedPLUSEventLogTarget.emitMessage(_:isolatedStreamId:timeStamp:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v24 - v13;
  v15 = *a3;
  v16 = *(a3 + 8);
  v17 = [objc_opt_self() sharedAnalytics];
  v18 = [v17 defaultMessageStream];

  if (v16)
  {
    sub_222A6E45C(a2, v11);
    v19 = sub_222B018D8();
    v20 = *(v19 - 8);
    v21 = 0;
    if ((*(v20 + 48))(v11, 1, v19) != 1)
    {
      v21 = sub_222B01878();
      (*(v20 + 8))(v11, v19);
    }

    [v18 emitMessage:a1 isolatedStreamUUID:v21];
  }

  else
  {
    sub_222A6E45C(a2, v14);
    v22 = sub_222B018D8();
    v23 = *(v22 - 8);
    v21 = 0;
    if ((*(v23 + 48))(v14, 1, v22) != 1)
    {
      v21 = sub_222B01878();
      (*(v23 + 8))(v14, v22);
    }

    [v18 emitMessage:a1 timestamp:v15 isolatedStreamUUID:v21];
  }
}

void sub_222A8C73C()
{
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v0 = sub_222B02148();
  __swift_project_value_buffer(v0, qword_280CBC458);
  oslog = sub_222B02128();
  v1 = sub_222B028D8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_222A1C000, oslog, v1, "Omitting SELF logging call as logging disabled", v2, 2u);
    MEMORY[0x223DC7E30](v2, -1, -1);
  }
}

unint64_t sub_222A8C828()
{
  result = qword_27D01D978;
  if (!qword_27D01D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D978);
  }

  return result;
}

unint64_t sub_222A8C8D4()
{
  result = qword_27D01D980;
  if (!qword_27D01D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D980);
  }

  return result;
}

unint64_t sub_222A8C92C()
{
  result = qword_27D01D988;
  if (!qword_27D01D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D988);
  }

  return result;
}

unint64_t sub_222A8C984()
{
  result = qword_27D01D990;
  if (!qword_27D01D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D990);
  }

  return result;
}

id static GroundTruthRecord.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 initWithEntityName_];

  return v2;
}

id sub_222A8CA50@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 timestamp];
  *a2 = v4;
  return result;
}

void sub_222A8CA98(id *a1)
{
  v1 = [*a1 id];
  sub_222B01898();
}

void sub_222A8CB04(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 payload];
  v4 = sub_222B01798();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_222A8CB68(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 type];
  v4 = sub_222B02388();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void keypath_set_2Tm(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), SEL *a6)
{
  v7 = *a2;
  v8 = a5(*a1, a1[1]);
  [v7 *a6];
}

uint64_t SiriUserFeedbackLearningTask.init(context:usageLogger:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_222B023C8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v10 = *a1;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v11 = sub_222B02148();
  __swift_project_value_buffer(v11, qword_280CBC458);
  v12 = sub_222B02128();
  v13 = sub_222B028D8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v47 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_222A230FC(0xD00000000000001ALL, 0x8000000222B138E0, &v47);
    _os_log_impl(&dword_222A1C000, v12, v13, "SiriUserFeedbackLearningTask.%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223DC7E30](v15, -1, -1);
    MEMORY[0x223DC7E30](v14, -1, -1);
  }

  v44[0] = v10;
  sub_222A42E40(a2, v46);
  v16 = sub_222B01528();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_222B01518();
  LOBYTE(v47) = v10;
  sub_222A8D0A8();
  v19 = sub_222B01508();
  if (v3)
  {
    goto LABEL_6;
  }

  v22 = v19;
  v23 = v20;
  v43 = a3;
  sub_222B023B8();
  v24 = sub_222B023A8();
  if (!v25)
  {
    sub_222A8D0FC();
    swift_allocError();
    *v39 = xmmword_222B0A510;
    *(v39 + 16) = 1;
    swift_willThrow();
    sub_222A26530(v22, v23);
LABEL_6:

    __swift_destroy_boxed_opaque_existential_0(a2);
    return __swift_destroy_boxed_opaque_existential_0(v46);
  }

  v26 = v25;
  v40 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF38, &unk_222B0A520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222B05260;
  v42 = v22;
  v29 = a2[3];
  v28 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v29);
  v41 = v23;
  *(inited + 32) = (*(v28 + 8))(v29, v28);
  *(inited + 40) = v30;
  v32 = a2[3];
  v31 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v32);
  v33 = (*(v31 + 24))(v32, v31);
  v34 = MEMORY[0x277D839B0];
  *(inited + 48) = v33 & 1;
  *(inited + 72) = v34;
  *(inited + 80) = 0x747865746E6F63;
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v40;
  *(inited + 104) = v26;
  v35 = sub_222A396CC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CF40, &unk_222B055D0);
  swift_arrayDestroy();
  sub_222A8D2E0(v35);

  v36 = objc_allocWithZone(MEMORY[0x277D253F0]);
  v37 = sub_222B022A8();

  v38 = [v36 initWithParametersDict_];

  sub_222A26530(v42, v41);

  v45 = v38;
  sub_222A4DE5C(v44, v43);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return sub_222A4DEB8(v44);
}

unint64_t sub_222A8D0A8()
{
  result = qword_280CB7B80;
  if (!qword_280CB7B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB7B80);
  }

  return result;
}

unint64_t sub_222A8D0FC()
{
  result = qword_27D01D998;
  if (!qword_27D01D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D998);
  }

  return result;
}

uint64_t SiriUserFeedbackLearningTask.description.getter()
{
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_222B02C88();
  MEMORY[0x223DC66E0](0x3A747865746E6F63, 0xE900000000000020);
  v1 = *v0;
  strcpy(v9, "triggerType: ");
  HIWORD(v9[1]) = -4864;
  if (v1)
  {
    v2 = 0x6D69742D6C616572;
  }

  else
  {
    v2 = 0x616E65746E69616DLL;
  }

  if (v1)
  {
    v3 = 0xE900000000000065;
  }

  else
  {
    v3 = 0xEB0000000065636ELL;
  }

  MEMORY[0x223DC66E0](v2, v3);

  MEMORY[0x223DC66E0](v9[0], v9[1]);

  MEMORY[0x223DC66E0](0x736154726C6D202CLL, 0xEB00000000203A6BLL);
  v4 = [v0[1] description];
  v5 = sub_222B02388();
  v7 = v6;

  MEMORY[0x223DC66E0](v5, v7);

  return v10;
}

uint64_t sub_222A8D2E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D9A0, qword_222B0A6F0);
    v2 = sub_222B02DF8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_222A25344(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_222A250AC(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_222A250AC(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_222A250AC(v32, v33);
    v17 = *(v2 + 40);
    result = sub_222B02BF8();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_222A250AC(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t SiriUserFeedbackLearningTask.init(mlrTask:usageLogger:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v57[0] = a3;
  v5 = sub_222B023C8();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v61 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_222B01558();
  v59 = *(v60 - 8);
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](v60, v10);
  v58 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v12 = sub_222B02148();
  __swift_project_value_buffer(v12, qword_280CBC458);
  v13 = a1;
  v14 = sub_222B02128();
  v15 = sub_222B028D8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v67[0] = v18;
    *v16 = 136315394;
    *(v16 + 4) = sub_222A230FC(0xD00000000000001ALL, 0x8000000222B13900, v67);
    *(v16 + 12) = 2112;
    *(v16 + 14) = v13;
    *v17 = v13;
    v19 = v13;
    _os_log_impl(&dword_222A1C000, v14, v15, "SiriUserFeedbackLearningTask.%s mlrTask:%@", v16, 0x16u);
    sub_222A8DF88(v17);
    MEMORY[0x223DC7E30](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223DC7E30](v18, -1, -1);
    MEMORY[0x223DC7E30](v16, -1, -1);
  }

  v71 = v13;
  sub_222A42E40(a2, v72);
  v20 = v13;
  v21 = [v20 parameters];
  v22 = a2[3];
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  (*(v23 + 8))(v22, v23);
  v24 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  v25 = [v21 BOOLValueForKey:v24 defaultValue:0];

  v26 = a2[3];
  v27 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v26);
  (*(v27 + 16))(v25, v26, v27);
  sub_222A42E40(a2, v67);
  sub_222A42E40(a2, v64);
  v28 = sub_222B02128();
  v29 = sub_222B028D8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v73 = v31;
    *v30 = 136315394;
    v32 = v68;
    v33 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v34 = (*(v33 + 8))(v32, v33);
    v36 = v35;
    __swift_destroy_boxed_opaque_existential_0(v67);
    v37 = sub_222A230FC(v34, v36, &v73);

    *(v30 + 4) = v37;
    *(v30 + 12) = 1024;
    v38 = v65;
    v39 = v66;
    __swift_project_boxed_opaque_existential_1(v64, v65);
    LODWORD(v37) = (*(v39 + 24))(v38, v39) & 1;
    __swift_destroy_boxed_opaque_existential_0(v64);
    *(v30 + 14) = v37;
    _os_log_impl(&dword_222A1C000, v28, v29, "%s = %{BOOL}d", v30, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x223DC7E30](v31, -1, -1);
    MEMORY[0x223DC7E30](v30, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v64);

    __swift_destroy_boxed_opaque_existential_0(v67);
  }

  v40 = [v20 parameters];

  v41 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v42 = [v40 stringValueForKey:v41 defaultValue:0];

  if (!v42)
  {
    goto LABEL_10;
  }

  v43 = sub_222B02388();
  v45 = v44;

  v67[0] = v43;
  v67[1] = v45;
  v46 = v58;
  sub_222B01538();
  sub_222A397FC();
  sub_222B02B88();
  (*(v59 + 8))(v46, v60);

  v47 = v61;
  sub_222B023B8();
  v48 = sub_222B02398();
  v50 = v49;

  (*(v62 + 8))(v47, v63);
  if (v50 >> 60 == 15)
  {
LABEL_10:
    sub_222A8D0FC();
    swift_allocError();
    *v51 = xmmword_222B0A510;
    *(v51 + 16) = 0;
    swift_willThrow();
LABEL_12:
    __swift_destroy_boxed_opaque_existential_0(a2);

    return __swift_destroy_boxed_opaque_existential_0(v72);
  }

  v52 = sub_222B014C8();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  sub_222B014B8();
  sub_222A8DF34();
  v55 = v57[1];
  sub_222B014A8();

  sub_222A398A4(v48, v50);
  if (v55)
  {
    goto LABEL_12;
  }

  v70[0] = v67[0];
  sub_222A4DE5C(v70, v57[0]);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return sub_222A4DEB8(v70);
}

uint64_t sub_222A8DD28@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t _s28SiriPrivateLearningAnalytics0a12UserFeedbackC9TaskErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    v9 = *a2;
    v10 = a2[1];
    sub_222A8E164();
    sub_222A8E164();
    sub_222A8E16C();
    sub_222A8E16C();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *a1;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v14 = sub_222B02F78();
    sub_222A8E164();
    sub_222A8E164();
    sub_222A8E16C();
    sub_222A8E16C();
    return v14 & 1;
  }

LABEL_15:
  sub_222A8E164();
  sub_222A8E164();
  sub_222A8E16C();
  sub_222A8E16C();
  return 1;
}

unint64_t sub_222A8DF34()
{
  result = qword_280CBA578;
  if (!qword_280CBA578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA578);
  }

  return result;
}

uint64_t sub_222A8DF88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01E4B0, &qword_222B0A530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222A8DFFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_222A8E044(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_222A8E0C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_222A8E108(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_222A8E18C(id *a1)
{
  v1 = *a1;
  v2 = [*a1 intent];
  v3 = [v2 typeName];
  v4 = sub_222B02388();
  v6 = v5;

  if (v4 == 0x49636972656E6547 && v6 == 0xED0000746E65746ELL)
  {
  }

  else
  {
    v8 = sub_222B02F78();

    if ((v8 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v9 = [v2 verb];
  v10 = sub_222B02388();
  v12 = v11;

  if (v10 == 0x6F4E6574656C6544 && v12 == 0xEA00000000006574)
  {
  }

  else
  {
    v14 = sub_222B02F78();

    if ((v14 & 1) == 0)
    {
LABEL_20:

      return MEMORY[0x277D84F90];
    }
  }

  v15 = [v2 parametersByName];
  if (!v15)
  {
    goto LABEL_20;
  }

  v16 = v15;
  v17 = sub_222B022B8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_222B05260;
  v19 = type metadata accessor for DeleteNoteEventFeature.EventType(0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0xD000000000000010;
  *(v20 + 24) = 0x8000000222B13920;
  *(v18 + 56) = v19;
  *(v18 + 64) = sub_222A8E63C(&qword_27D01D9A8, type metadata accessor for DeleteNoteEventFeature.EventType);
  *(v18 + 32) = v20;
  v21 = [v1 _donatedBySiri];
  v22 = type metadata accessor for DeleteNoteEventFeature.DonatedBySiri(0);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v18 + 96) = v22;
  *(v18 + 104) = sub_222A8E63C(&qword_27D01D9B0, type metadata accessor for DeleteNoteEventFeature.DonatedBySiri);
  *(v18 + 72) = v23;
  if (!*(v17 + 16) || (v24 = sub_222A26EC8(0x656C746974, 0xE500000000000000), (v25 & 1) == 0))
  {

    goto LABEL_22;
  }

  sub_222A25344(*(v17 + 56) + 32 * v24, &v31);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:

    return v18;
  }

  v26 = v34;
  v27 = v35;
  v28 = type metadata accessor for DeleteNoteEventFeature.NoteTextContent(0);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = v27;
  v18 = sub_222AA8FDC(1, 3, 1, v18);

  v32 = v28;
  v33 = sub_222A8E63C(&qword_27D01D9B8, type metadata accessor for DeleteNoteEventFeature.NoteTextContent);
  *&v31 = v29;
  *(v18 + 16) = 3;
  sub_222A2577C(&v31, v18 + 112);
  return v18;
}

uint64_t DeleteNoteEventFeature.DonatedBySiri.__allocating_init(value:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t DeleteNoteEventFeature.NoteTextContent.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DeleteNoteEventFeature.DonatedBySiri.init(value:)(char a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + 16) = a1 & 1;
  }

  return v1;
}

uint64_t sub_222A8E63C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DeleteNoteEventFeature.DonatedBySiri.__allocating_init(value:)(unsigned __int8 a1)
{
  v2 = a1;
  result = swift_allocObject();
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1 & 1;
  }

  return result;
}

uint64_t sub_222A8E790(char *a1)
{
  v1 = *a1;
  type metadata accessor for DeleteNoteEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222A8E7C8(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for DeleteNoteEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v1 & 1;
  }

  return result;
}

uint64_t DeleteNoteEventFeature.NoteTextContent.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t DeleteNoteEventFeature.NoteTextContent.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t DeleteNoteEventFeature.NoteTextContent.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_222A8E8C8(uint64_t *a1, void (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_222A8E91C(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v2 = a1[1];
  a2(0);
  result = swift_allocObject();
  if (v2)
  {
    *(result + 16) = v3;
    *(result + 24) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0B8, &unk_222B07340);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t PredicateEvictor.__allocating_init(predicateConverter:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t PredicateEvictor.init(predicateConverter:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

id sub_222A8EA9C(uint64_t a1, void *a2)
{
  v4 = v3;
  v7 = *(*v2 + 80);
  v8 = [swift_getObjCClassFromMetadata() fetchRequest];
  v9 = v2[2];
  v10 = v2[3];
  v11 = v9(a1);
  [v8 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D9F0, &qword_222B0A7E8);
  sub_222B02A68();
  if (v3)
  {
    goto LABEL_13;
  }

  v4 = sub_222B02E38();

  if (!v4)
  {
    v4 = sub_222B02658();
    goto LABEL_13;
  }

  if (!sub_222B02698())
  {
LABEL_11:

LABEL_13:

    return v4;
  }

  v12 = 4;
  while (1)
  {
    v13 = sub_222B02678();
    sub_222B02628();
    result = (v13 & 1) != 0 ? *(v4 + 8 * v12) : sub_222B02CA8();
    v15 = result;
    v16 = v12 - 3;
    if (__OFADD__(v12 - 4, 1))
    {
      break;
    }

    [a2 deleteObject_];

    ++v12;
    if (v16 == sub_222B02698())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t PredicateEvictor.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t PredicateEvictor.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t NLXSpanLabels.__allocating_init(value:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

{
  result = swift_allocObject();
  if (a1)
  {
    *(result + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CFA8, &qword_222B05DE0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t NLXSpanLabels.init(value:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CFA8, &qword_222B05DE0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t NLXSpanLabels.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t NLXSpanLabels.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_222A8EF48(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for NLXSpanLabels();
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222A8EF80(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for NLXSpanLabels();
  result = swift_allocObject();
  if (v1)
  {
    *(result + 16) = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CFA8, &qword_222B05DE0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

void *sub_222A8EFF4(unint64_t a1)
{
  v1 = a1;
  *&v70 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_93;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_222B02DC8())
  {
    v3 = MEMORY[0x277D84F90];
    v66 = i;
    if (i)
    {
      v4 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x223DC6F00](v4, v1);
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_88;
          }

          v5 = *(v1 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        if ([v5 anyEventType] == 18)
        {
          sub_222B02D18();
          v8 = *(v70 + 16);
          sub_222B02D48();
          sub_222B02D58();
          sub_222B02D28();
          i = v66;
        }

        else
        {
        }

        ++v4;
      }

      while (v7 != i);
      v9 = v70;
      *&v70 = v3;
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_94:
      v67 = sub_222B02DC8();
      goto LABEL_19;
    }

    v9 = MEMORY[0x277D84F90];
    *&v70 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_94;
    }

LABEL_17:
    if ((v9 & 0x4000000000000000) != 0)
    {
      goto LABEL_94;
    }

    v67 = *(v9 + 16);
LABEL_19:
    v10 = 0;
    v65 = MEMORY[0x277D84F90];
    while (v67 != v10)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x223DC6F00](v10, v9);
      }

      else
      {
        if (v10 >= *(v9 + 16))
        {
          goto LABEL_84;
        }

        v19 = *(v9 + 8 * v10 + 32);
      }

      v20 = v19;
      v21 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v22 = [v19 payload];
      if (v22)
      {
        v11 = v22;
        v12 = v1;
        v13 = sub_222B01798();
        v15 = v14;

        v16 = sub_222B01788();
        v17 = v13;
        v1 = v12;
        sub_222A26530(v17, v15);
      }

      else
      {
        v16 = 0;
      }

      v18 = [objc_allocWithZone(MEMORY[0x277D590F0]) initWithData_];

      ++v10;
      if (v18)
      {
        MEMORY[0x223DC6810]();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v23 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222B02648();
        }

        sub_222B02688();
        v65 = v70;
        v10 = v21;
      }
    }

    v24 = MEMORY[0x277D84F90];
    *&v70 = MEMORY[0x277D84F90];
    v25 = v66;
    if (!v66)
    {
      break;
    }

    v26 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x223DC6F00](v26, v1);
      }

      else
      {
        if (v26 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_90;
        }

        v27 = *(v1 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if ([v27 anyEventType] == 19)
      {
        sub_222B02D18();
        v30 = *(v70 + 16);
        sub_222B02D48();
        sub_222B02D58();
        sub_222B02D28();
        v25 = v66;
      }

      else
      {
      }

      ++v26;
      if (v29 == v25)
      {
        v31 = v70;
        *&v70 = v24;
        if ((v31 & 0x8000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_95;
      }
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    ;
  }

  v31 = MEMORY[0x277D84F90];
  *&v70 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
  {
LABEL_47:
    if ((v31 & 0x4000000000000000) == 0)
    {
      v32 = *(v31 + 16);
      goto LABEL_49;
    }
  }

LABEL_95:
  v32 = sub_222B02DC8();
LABEL_49:
  v33 = 0;
  v1 = v31 & 0xC000000000000001;
  v68 = MEMORY[0x277D84F90];
  if (v32)
  {
    while (1)
    {
      if (v1)
      {
        v50 = MEMORY[0x223DC6F00](v33, v31);
      }

      else
      {
        if (v33 >= *(v31 + 16))
        {
          goto LABEL_86;
        }

        v50 = *(v31 + 8 * v33 + 32);
      }

      v51 = v50;
      v52 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_85;
      }

      v53 = [v50 payload];
      if (v53)
      {
        v54 = v53;
        v55 = sub_222B01798();
        v57 = v56;

        v48 = sub_222B01788();
        sub_222A26530(v55, v57);
      }

      else
      {
        v48 = 0;
      }

      v49 = [objc_allocWithZone(MEMORY[0x277D59610]) initWithData_];

      ++v33;
      if (v49)
      {
        MEMORY[0x223DC6810]();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v58 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_222B02648();
        }

        sub_222B02688();
        v68 = v70;
        v33 = v52;
        if (v32 == v52)
        {
          break;
        }
      }

      else if (v32 == v33)
      {
        break;
      }
    }
  }

  v34 = sub_222A6D6B4(v65, v68);

  if (!v34)
  {
    return MEMORY[0x277D84F90];
  }

  if (v34 >> 62)
  {
    v35 = sub_222B02DC8();
    if (v35)
    {
LABEL_53:
      v36 = 0;
      v37 = MEMORY[0x277D84F90];
      v1 = &off_2784BA000;
LABEL_54:
      v38 = v36;
      while (1)
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x223DC6F00](v38, v34);
        }

        else
        {
          if (v38 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_92;
          }

          v39 = *(v34 + 8 * v38 + 32);
        }

        v40 = v39;
        v36 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_91;
        }

        v41 = [v39 label];
        if (v41)
        {
          v42 = v41;
          v43 = sub_222B02388();
          v69 = v44;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = sub_222AA8C78(0, *(v37 + 2) + 1, 1, v37);
          }

          v46 = *(v37 + 2);
          v45 = *(v37 + 3);
          if (v46 >= v45 >> 1)
          {
            v37 = sub_222AA8C78((v45 > 1), v46 + 1, 1, v37);
          }

          *(v37 + 2) = v46 + 1;
          v47 = &v37[16 * v46];
          *(v47 + 4) = v43;
          *(v47 + 5) = v69;
          if (v36 != v35)
          {
            goto LABEL_54;
          }

          goto LABEL_98;
        }

        ++v38;
        if (v36 == v35)
        {
          goto LABEL_98;
        }
      }
    }
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_53;
    }
  }

  v37 = MEMORY[0x277D84F90];
LABEL_98:

  if (!*(v37 + 2))
  {

    return MEMORY[0x277D84F90];
  }

  v59 = type metadata accessor for NLXSpanLabels();
  v60 = swift_allocObject();
  *(v60 + 16) = v37;
  v61 = sub_222AA8FDC(0, 1, 1, MEMORY[0x277D84F90]);
  v63 = v61[2];
  v62 = v61[3];
  if (v63 >= v62 >> 1)
  {
    v61 = sub_222AA8FDC((v62 > 1), v63 + 1, 1, v61);
  }

  v71 = v59;
  v72 = sub_222A8F804();
  *&v70 = v60;
  v61[2] = v63 + 1;
  sub_222A2577C(&v70, &v61[5 * v63 + 4]);
  return v61;
}

uint64_t type metadata accessor for NLXSpanLabels()
{
  result = qword_27D01D9F8;
  if (!qword_27D01D9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_222A8F804()
{
  result = qword_27D01DA08;
  if (!qword_27D01DA08)
  {
    type metadata accessor for NLXSpanLabels();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DA08);
  }

  return result;
}

id sub_222A8F85C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UniversalCandidate(0);
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v7 = sub_222B014E8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v10 = sub_222B01848();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UniversalCandidateCoreDataRecord();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v17 = sub_222B01878();
  [v16 setId_];

  [v16 setScore_];
  [v16 setLastSurfaced_];
  sub_222B01828();
  sub_222B01818();
  v19 = v18;
  (*(v11 + 8))(v15, v10);
  [v16 setLastUpdated_];
  v20 = sub_222B01528();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_222B01518();
  sub_222B014D8();
  sub_222B014F8();
  v28 = *(v2 + v4[5]);
  sub_222A917B8();

  v23 = sub_222B01508();
  v25 = v24;

  v26 = sub_222B01788();
  [v16 setCandidateEntity_];

  sub_222A26530(v23, v25);

  return v16;
}

uint64_t sub_222A8FCD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_222B018D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v51 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v51 - v13;
  v15 = [v1 id];
  if (v15)
  {
    v16 = v15;
    sub_222B01898();

    [v1 score];
    v18 = v17;
    [v1 lastSurfaced];
    v20 = v19;
    v21 = [v1 candidateEntity];
    if (v21)
    {
      v22 = v21;
      v23 = sub_222B01798();
      v25 = v24;

      v26 = sub_222B014C8();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      sub_222B014B8();
      sub_222A91764();
      sub_222B014A8();
      sub_222A26530(v23, v25);

      v46 = v54;
      (*(v4 + 32))(a1, v14, v3);
      v47 = type metadata accessor for UniversalCandidate(0);
      *(a1 + v47[5]) = v46;
      *(a1 + v47[6]) = v18;
      *(a1 + v47[7]) = v20;
      return (*(*(v47 - 1) + 56))(a1, 0, 1, v47);
    }

    else
    {
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v35 = sub_222B02148();
      __swift_project_value_buffer(v35, qword_280CBC458);
      (*(v4 + 16))(v11, v14, v3);
      v36 = v3;
      v37 = sub_222B02128();
      v38 = sub_222B028E8();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = a1;
        v54 = v52;
        *v39 = 136315138;
        sub_222A918C0(&qword_280CB82F8, MEMORY[0x277CC95F0]);
        v40 = sub_222B02F38();
        v42 = v41;
        v43 = *(v4 + 8);
        v43(v11, v36);
        v44 = sub_222A230FC(v40, v42, &v54);

        *(v39 + 4) = v44;
        _os_log_impl(&dword_222A1C000, v37, v38, "UniversalSuggestionsCoreData: Failed to retrieve entity when reading UniversalCandidate with ID: %s.", v39, 0xCu);
        v45 = v52;
        __swift_destroy_boxed_opaque_existential_0(v52);
        a1 = v53;
        MEMORY[0x223DC7E30](v45, -1, -1);
        MEMORY[0x223DC7E30](v39, -1, -1);

        v43(v14, v36);
      }

      else
      {

        v49 = *(v4 + 8);
        v49(v11, v36);
        v49(v14, v36);
      }

      v50 = type metadata accessor for UniversalCandidate(0);
      return (*(*(v50 - 8) + 56))(a1, 1, 1, v50);
    }
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v29 = sub_222B02148();
    __swift_project_value_buffer(v29, qword_280CBC458);
    v30 = sub_222B02128();
    v31 = sub_222B028E8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_222A1C000, v30, v31, "UniversalSuggestionsCoreData: Failed to retrieve ID when reading UniversalCandidate.", v32, 2u);
      MEMORY[0x223DC7E30](v32, -1, -1);
    }

    v33 = type metadata accessor for UniversalCandidate(0);
    v34 = *(*(v33 - 8) + 56);

    return v34(a1, 1, 1, v33);
  }
}

uint64_t sub_222A90488@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v79 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D150, &qword_222B06930);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v75 - v6;
  v8 = type metadata accessor for UniversalCandidate(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_222B018D8();
  v77 = *(v14 - 8);
  v78 = v14;
  v15 = *(v77 + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v75 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v75 - v25;
  v27 = [v1 id];
  if (v27)
  {
    v28 = v27;
    sub_222B01898();

    v29 = [v1 queryEntityName];
    if (v29)
    {
      v30 = v29;
      v31 = sub_222B02388();
      v33 = v32;

      v34 = [v2 topCandidate];
      if (v34)
      {
        v35 = v34;
        sub_222A8FCD4(v7);
        if ((*(v9 + 48))(v7, 1, v8) != 1)
        {
          sub_222A43E50(v7, v13);
          v68 = [v2 needsDisambiguation];

          v69 = v79;
          (*(v77 + 32))(v79, v26, v78);
          v70 = type metadata accessor for UniversalRuntimeSuggestion(0);
          v71 = v70[6];
          sub_222A43E50(v13, v69 + v71);
          (*(v9 + 56))(v69 + v71, 0, 1, v8);
          v72 = (v69 + v70[5]);
          *v72 = v31;
          v72[1] = v33;
          *(v69 + v70[7]) = v68;
          return (*(*(v70 - 1) + 56))(v69, 0, 1, v70);
        }

        (*(v77 + 8))(v26, v78);

        sub_222A9180C(v7);
        goto LABEL_25;
      }

      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v57 = sub_222B02148();
      __swift_project_value_buffer(v57, qword_280CBC458);
      v58 = v77;
      v47 = v78;
      (*(v77 + 16))(v23, v26, v78);
      v59 = sub_222B02128();
      v60 = sub_222B028E8();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v80 = v76;
        *v61 = 136315138;
        sub_222A918C0(&qword_280CB82F8, MEMORY[0x277CC95F0]);
        v62 = sub_222B02F38();
        v64 = v63;
        v65 = *(v58 + 8);
        v65(v23, v47);
        v66 = sub_222A230FC(v62, v64, &v80);

        *(v61 + 4) = v66;
        _os_log_impl(&dword_222A1C000, v59, v60, "UniversalSuggestionsCoreData: Failed to retrieve top candidate when reading UniversalRuntimeSuggestion with ID: %s.", v61, 0xCu);
        v67 = v76;
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x223DC7E30](v67, -1, -1);
        MEMORY[0x223DC7E30](v61, -1, -1);

        v65(v26, v47);
        goto LABEL_25;
      }

      v73 = *(v58 + 8);
      v73(v23, v47);
    }

    else
    {
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v45 = sub_222B02148();
      __swift_project_value_buffer(v45, qword_280CBC458);
      v46 = v77;
      v47 = v78;
      (*(v77 + 16))(v19, v26, v78);
      v48 = sub_222B02128();
      v49 = sub_222B028E8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v80 = v76;
        *v50 = 136315138;
        sub_222A918C0(&qword_280CB82F8, MEMORY[0x277CC95F0]);
        v51 = sub_222B02F38();
        v53 = v52;
        v54 = *(v46 + 8);
        v54(v19, v47);
        v55 = sub_222A230FC(v51, v53, &v80);

        *(v50 + 4) = v55;
        _os_log_impl(&dword_222A1C000, v48, v49, "UniversalSuggestionsCoreData: Failed to retrieve name of key entity when reading UniversalRuntimeSuggestion with ID: %s.", v50, 0xCu);
        v56 = v76;
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x223DC7E30](v56, -1, -1);
        MEMORY[0x223DC7E30](v50, -1, -1);

        v54(v26, v47);
LABEL_25:
        v74 = type metadata accessor for UniversalRuntimeSuggestion(0);
        return (*(*(v74 - 8) + 56))(v79, 1, 1, v74);
      }

      v73 = *(v46 + 8);
      v73(v19, v47);
    }

    v73(v26, v47);
    goto LABEL_25;
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v36 = sub_222B02148();
  __swift_project_value_buffer(v36, qword_280CBC458);
  v37 = sub_222B02128();
  v38 = sub_222B028E8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_222A1C000, v37, v38, "UniversalSuggestionsCoreData: Failed to retrieve ID when reading UniversalRuntimeSuggestion.", v39, 2u);
    MEMORY[0x223DC7E30](v39, -1, -1);
  }

  v40 = type metadata accessor for UniversalRuntimeSuggestion(0);
  v41 = *(*(v40 - 8) + 56);
  v42 = v40;
  v43 = v79;

  return v41(v43, 1, 1, v42);
}

id sub_222A90CEC(uint64_t a1, unint64_t a2)
{
  type metadata accessor for UniversalSuggestionCoreDataRecord();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v6 = sub_222B01878();
  [v5 setId_];

  v7 = (v2 + *(type metadata accessor for UniversalSuggestion(0) + 20));
  v8 = *v7;
  v9 = v7[1];
  v10 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  [v5 setQueryEntityName_];

  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x223DC6F00](j, a2);
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v13 = *(a2 + 8 * j + 32);
      }

      v14 = v13;
      v15 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v5 addCandidatesObject_];

      if (v15 == i)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return v5;
}

uint64_t sub_222A90E4C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D150, &qword_222B06930);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v72 - v6;
  v82 = type metadata accessor for UniversalCandidate(0);
  v80 = *(v82 - 8);
  v8 = *(v80 + 64);
  MEMORY[0x28223BE20](v82, v9);
  v81 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222B01638();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_222B018D8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v72 - v25;
  v27 = [v1 id];
  if (v27)
  {
    v78 = v26;
    v28 = v27;
    sub_222B01898();

    v29 = [v1 queryEntityName];
    if (v29)
    {
      v30 = v29;
      v31 = sub_222B02388();
      v73 = v32;
      v74 = v31;

      v33 = [v1 candidates];
      if (!v33)
      {
        sub_222A91874();
        v33 = MEMORY[0x223DC6AF0](MEMORY[0x277D84F90]);
      }

      v75 = v18;
      v77 = a1;
      v34 = MEMORY[0x277D84F90];
      v87 = MEMORY[0x277D84F90];
      v72 = v33;
      sub_222B028B8();
      sub_222A918C0(&unk_280CB8318, MEMORY[0x277CC9178]);
      sub_222B02B48();
      v76 = v17;
      while (v86)
      {
        sub_222A250AC(&v85, &v83);
        type metadata accessor for UniversalCandidateCoreDataRecord();
        if ((swift_dynamicCast() & 1) != 0 && v84)
        {
          MEMORY[0x223DC6810]();
          if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v54 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_222B02648();
          }

          sub_222B02688();
          v34 = v87;
        }

        sub_222B02B48();
      }

      (*(v12 + 8))(v16, v11);
      if (v34 >> 62)
      {
        goto LABEL_44;
      }

      for (i = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
      {
        v56 = 0;
        v57 = v34 & 0xC000000000000001;
        v58 = v34 & 0xFFFFFFFFFFFFFF8;
        v59 = (v80 + 48);
        v60 = MEMORY[0x277D84F90];
        v79 = v34;
        while (1)
        {
          if (v57)
          {
            v61 = MEMORY[0x223DC6F00](v56, v34);
          }

          else
          {
            if (v56 >= *(v58 + 16))
            {
              goto LABEL_43;
            }

            v61 = *(v34 + 8 * v56 + 32);
          }

          v62 = v61;
          v63 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            break;
          }

          sub_222A8FCD4(v7);

          if ((*v59)(v7, 1, v82) == 1)
          {
            sub_222A9180C(v7);
          }

          else
          {
            sub_222A43E50(v7, v81);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v60 = sub_222AA9B1C(0, v60[2] + 1, 1, v60);
            }

            v65 = v60[2];
            v64 = v60[3];
            if (v65 >= v64 >> 1)
            {
              v60 = sub_222AA9B1C(v64 > 1, v65 + 1, 1, v60);
            }

            v60[2] = v65 + 1;
            sub_222A43E50(v81, v60 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v65);
            v34 = v79;
          }

          ++v56;
          if (v63 == i)
          {
            goto LABEL_46;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        ;
      }

      v60 = MEMORY[0x277D84F90];
LABEL_46:

      v68 = v77;
      (*(v75 + 32))(v77, v78, v76);
      v69 = type metadata accessor for UniversalSuggestion(0);
      v70 = (v68 + *(v69 + 20));
      v71 = v73;
      *v70 = v74;
      v70[1] = v71;
      *(v68 + *(v69 + 24)) = v60;
      return (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
    }

    else
    {
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v42 = sub_222B02148();
      __swift_project_value_buffer(v42, qword_280CBC458);
      v43 = v78;
      (*(v18 + 16))(v23, v78, v17);
      v44 = sub_222B02128();
      v45 = sub_222B028E8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v77 = a1;
        v48 = v47;
        *&v85 = v47;
        *v46 = 136315138;
        sub_222A918C0(&qword_280CB82F8, MEMORY[0x277CC95F0]);
        v49 = sub_222B02F38();
        v51 = v50;
        v52 = *(v18 + 8);
        v52(v23, v17);
        v53 = sub_222A230FC(v49, v51, &v85);

        *(v46 + 4) = v53;
        _os_log_impl(&dword_222A1C000, v44, v45, "UniversalSuggestionsCoreData: Failed to retrieve name of key entity when reading UniversalSuggestion with ID: %s.", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        a1 = v77;
        MEMORY[0x223DC7E30](v48, -1, -1);
        MEMORY[0x223DC7E30](v46, -1, -1);

        v52(v78, v17);
      }

      else
      {

        v66 = *(v18 + 8);
        v66(v23, v17);
        v66(v43, v17);
      }

      v67 = type metadata accessor for UniversalSuggestion(0);
      return (*(*(v67 - 8) + 56))(a1, 1, 1, v67);
    }
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v35 = sub_222B02148();
    __swift_project_value_buffer(v35, qword_280CBC458);
    v36 = sub_222B02128();
    v37 = sub_222B028E8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_222A1C000, v36, v37, "UniversalSuggestionsCoreData: Failed to retrieve ID when reading UniversalSuggestion.", v38, 2u);
      MEMORY[0x223DC7E30](v38, -1, -1);
    }

    v39 = type metadata accessor for UniversalSuggestion(0);
    v40 = *(*(v39 - 8) + 56);

    return v40(a1, 1, 1, v39);
  }
}

unint64_t sub_222A91764()
{
  result = qword_27D01DA10;
  if (!qword_27D01DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DA10);
  }

  return result;
}

unint64_t sub_222A917B8()
{
  result = qword_27D01DA18;
  if (!qword_27D01DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DA18);
  }

  return result;
}

uint64_t sub_222A9180C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D150, &qword_222B06930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_222A91874()
{
  result = qword_27D01DA20;
  if (!qword_27D01DA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D01DA20);
  }

  return result;
}

uint64_t sub_222A918C0(unint64_t *a1, void (*a2)(uint64_t))
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

char *TypedNamedFeature.init(value:)(char *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1, a2);
  v10 = &v17 - v9;
  if ((*(v6 + 48))(v8, 1, v5) == 1)
  {
    v11 = sub_222B02B28();
    (*(*(v11 - 8) + 8))(a1, v11);
    v12 = *(v4 + 88);
    type metadata accessor for TypedNamedFeature();
    v13 = *(*v2 + 48);
    v14 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v15 = *(v6 + 32);
    v15(v10, a1, v5);
    v15(&v2[*(*v2 + 96)], v10, v5);
  }

  return v2;
}

unint64_t sub_222A91C24()
{
  v1 = *v0;
  v6 = static TypedNamedFeature.name.getter();
  v2 = MEMORY[0x223DC66E0](0x203A65756C617620, 0xE800000000000000);
  v4 = sub_222A91CB8(v2, v3);
  MEMORY[0x223DC66E0](v4);

  return v6;
}

uint64_t sub_222A91CB8(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = *(v10 + 96);
  v12 = *(v4 + 16);
  v12(v17 - v13, v2 + v11, v3);
  sub_222B01C38();
  if (swift_dynamicCast())
  {
    sub_222B01C28();
    v14 = sub_222B01CC8();

    v17[1] = v14;
    sub_222B01E38();
    sub_222A92564();

    v15 = sub_222B02F38();

    return v15;
  }

  else
  {
    v12(v8, v2 + v11, v3);
    return sub_222B023D8();
  }
}

uint64_t sub_222A91E88(uint64_t a1)
{
  v2 = *v1;
  sub_222A42E40(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9F0, &qword_222B04940);
  if (!swift_dynamicCast())
  {
    return 2;
  }

  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  type metadata accessor for TypedNamedFeature();
  v5 = static TypedNamedFeature.== infix(_:_:)(v1, v7);

  return v5 & 1;
}

uint64_t TypedNamedFeature.__allocating_init(value:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 96), a1);
  return v5;
}

char *TypedNamedFeature.__allocating_init(value:)(char *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return TypedNamedFeature.init(value:)(a1, v5);
}

unint64_t static TypedNamedFeature.name.getter()
{
  v63 = sub_222B031E8();
  v1 = *(v63 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v63, v3);
  v62 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v0;
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  type metadata accessor for TypedNamedFeature();
  swift_getMetatypeMetadata();
  v7 = sub_222B023F8();
  v70 = 46;
  v71 = 0xE100000000000000;
  v69 = &v70;
  v9 = sub_222AA87B4(0x7FFFFFFFFFFFFFFFLL, 1, sub_222A82928, v68, v7, v8, 0x2EuLL);
  v10 = *(v9 + 16);
  v67 = v10 != 0;
  if (v10 <= 1)
  {

    v11 = MEMORY[0x277D84F90];
LABEL_45:
    v70 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D290, &qword_222B06EE0);
    sub_222A69918();
    v59 = sub_222B02328();

    return v59;
  }

  v12 = v9;
  v13 = v10 - v67;
  v76 = MEMORY[0x277D84F90];
  result = sub_222A23AE4(0, v13 & ~(v13 >> 63), 0);
  v65 = v13;
  if (v13 < 0)
  {
    goto LABEL_48;
  }

  v15 = 0;
  v60 = v12;
  v61 = (v1 + 8);
  v11 = v76;
  v16 = (v12 + 32 * v67 + 56);
  v64 = v10;
  while (v67 < v10 && v15 < v65)
  {
    v17 = *(v16 - 3);
    v18 = *(v16 - 2);
    v20 = *(v16 - 1);
    v19 = *v16;

    v21 = MEMORY[0x223DC6660](v17, v18, v20, v19);
    v22 = v21;
    v24 = v23;
    v25 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v25 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      v66 = v19;
      result = sub_222B02528();
      if ((v26 & 0x2000000000000000) != 0)
      {
        v27 = HIBYTE(v26) & 0xF;
      }

      else
      {
        v27 = result & 0xFFFFFFFFFFFFLL;
      }

      if (!v27)
      {
        goto LABEL_47;
      }

      v28 = result;
      v29 = v26;
      if ((v26 & 0x1000000000000000) != 0)
      {
        v34 = sub_222B02428();
      }

      else
      {
        if ((v26 & 0x2000000000000000) != 0)
        {
          v31 = result;
        }

        else
        {
          if ((result & 0x1000000000000000) != 0)
          {
            v30 = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v30 = sub_222B02D08();
          }

          v31 = *v30;
        }

        v32 = v31;
        v33 = (__clz(~v31) - 24) << 16;
        if (v32 < 0)
        {
          v34 = v33;
        }

        else
        {
          v34 = 65541;
        }
      }

      v35 = 4 * v27;
      if (4 * v27 != v34 >> 14)
      {
        goto LABEL_53;
      }

      v36 = v22;
      v37 = v24;
      v38 = v15;
      v39 = v11;
      result = sub_222A9286C(v28, v29);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_49;
      }

      v40 = v62;
      sub_222B031F8();
      v41 = sub_222B031C8();
      (*v61)(v40, v63);
      v11 = v39;
      v15 = v38;
      v24 = v37;
      v22 = v36;
      if ((v41 & 1) == 0)
      {
LABEL_53:
        if ((sub_222B02318() & 1) == 0)
        {
          goto LABEL_36;
        }

        if ((v29 & 0x1000000000000000) != 0)
        {
          if (v35 == sub_222B02428() >> 14)
          {
            goto LABEL_32;
          }

          goto LABEL_34;
        }

        if (v35 != ((4 * sub_222B02C68()) & 0x3FFFFFFFFFFFFLL))
        {
          goto LABEL_34;
        }

LABEL_32:
        result = sub_222A9286C(v28, v29);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_50;
        }

        v42 = v62;
        sub_222B031F8();
        v43 = sub_222B031D8();
        (*v61)(v42, v63);
        if ((v43 & 1) == 0)
        {
LABEL_34:
          if (sub_222B02318() & 1) != 0 && (sub_222B02308())
          {
LABEL_36:

LABEL_38:
            v10 = v64;
            goto LABEL_39;
          }
        }
      }

      v44 = sub_222B023E8();
      v46 = v45;

      v47 = v15;
      v48 = sub_222AAA4AC(1uLL, v22, v24);
      v50 = v49;
      v51 = v11;
      v53 = v52;
      v55 = v54;

      v74 = v44;
      v75 = v46;
      v70 = v48;
      v71 = v50;
      v15 = v47;
      v72 = v53;
      v73 = v55;
      v11 = v51;
      sub_222A49F38();
      sub_222B02488();

      v22 = v74;
      v24 = v75;
      goto LABEL_38;
    }

LABEL_39:
    v76 = v11;
    v57 = *(v11 + 16);
    v56 = *(v11 + 24);
    if (v57 >= v56 >> 1)
    {
      result = sub_222A23AE4((v56 > 1), v57 + 1, 1);
      v11 = v76;
    }

    *(v11 + 16) = v57 + 1;
    v58 = v11 + 16 * v57;
    *(v58 + 32) = v22;
    *(v58 + 40) = v24;
    v16 += 4;
    ++v15;
    if (v10 == ++v67)
    {

      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

unint64_t sub_222A92564()
{
  result = qword_27D01DA28;
  if (!qword_27D01DA28)
  {
    sub_222B01E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DA28);
  }

  return result;
}

uint64_t static TypedNamedFeature.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v6 = static TypedNamedFeature.name.getter();
  v8 = v7;
  v9 = *a2;
  if (v6 == static TypedNamedFeature.name.getter() && v8 == v10)
  {
  }

  else
  {
    v12 = sub_222B02F78();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *(v2 + 88);
  v15 = *(*a1 + 96);
  v16 = *(*a2 + 96);
  v17 = *(v2 + 80);
  return sub_222B02338() & 1;
}

uint64_t TypedNamedFeature.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_222A9286C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_222A929BC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_222B02C78();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_222B02D08() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_222A929BC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_222A92A54(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_222A92AC8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_222A92A54(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_222A92BEC(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_222A92AC8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_222B02D08();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_222A92BEC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_222B02508();
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
    v5 = MEMORY[0x223DC6730](15, a1 >> 16);
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

uint64_t sub_222A92C68(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_222A92CCC(uint64_t a1)
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

uint64_t dispatch thunk of TypedNamedFeature.__allocating_init(value:)()
{
  return (*(v0 + 104))();
}

{
  return (*(v0 + 112))();
}

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningAnalytics16BiomeSubscribersO18SubscriptionStatusO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_222A92E48(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222A92E9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t KeyPathEvictor.init(keyPathGenerator:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t KeyPathEvictor.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_222A92F60(void *a1, void *a2)
{
  v5 = *v2;
  v6 = v2[2];
  v7 = v2[3];
  v8 = v5;
  v6();
  v9 = a1;
  swift_getAtKeyPath();

  if (v17)
  {
    [a2 deleteObject_];
    v10 = sub_222A93124(*(v8 + 88), *(v8 + 88));
    v11 = *(v10 + 52);
    v12 = (*(v10 + 48) + 7) & 0x1FFFFFFF8;
    swift_allocObject();
    v13 = sub_222B02618();
    *v14 = v17;

    sub_222B026C8();
  }

  else
  {
    v15 = *(v8 + 88);
    v13 = sub_222B02658();
  }

  return v13;
}

uint64_t KeyPathEvictor.__allocating_init(keyPathGenerator:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t KeyPathEvictor.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_222A93124(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

void sub_222A9325C()
{
  v1 = v0;
  v2 = sub_222B01848();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v1 + OBJC_IVAR____TtCO28SiriPrivateLearningAnalytics15BiomePublishers9ScanTurns_turnsStartDateTime);
  objc_allocWithZone(type metadata accessor for ScanTurnsSubscriber(0));
  v8 = swift_unknownObjectRetain();
  v9 = sub_222A96600(v8, v6);
  swift_unknownObjectRelease();
  v10 = *(v1 + OBJC_IVAR____TtCO28SiriPrivateLearningAnalytics15BiomePublishers9ScanTurns_inner);
  *(v1 + OBJC_IVAR____TtCO28SiriPrivateLearningAnalytics15BiomePublishers9ScanTurns_inner) = v9;
  v11 = v9;

  [*(v1 + OBJC_IVAR____TtCO28SiriPrivateLearningAnalytics15BiomePublishers9ScanTurns_upstream) subscribe_];
}

uint64_t sub_222A934F4()
{
  result = sub_222B01848();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_222A93600(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = v92 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = v92 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v101 = v92 - v19;
  v20 = sub_222B018D8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = (v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = v92 - v29;
  MEMORY[0x28223BE20](v28, v31);
  v33 = v92 - v32;
  sub_222A25344(a1, v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA70, &unk_222B0AB20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v97 = v26;
  v98 = a1;
  v96 = v9;
  v99 = v33;
  v100 = v21;
  v34 = v103;
  v35 = [v103 eventBody];
  if (v35)
  {
    v36 = v35;
    v37 = v17;
    v38 = v34;
    v39 = v20;
    v40 = v2;
    v41 = [v35 eventData];

    v42 = sub_222B01798();
    v44 = v43;

    v2 = v40;
    v20 = v39;
    v34 = v38;
    v17 = v37;
    v45 = sub_222B01788();
    sub_222A26530(v42, v44);
  }

  else
  {
    v45 = 0;
  }

  v46 = [objc_allocWithZone(MEMORY[0x277D5A790]) initWithData_];

  if (!v46)
  {

    a1 = v98;
LABEL_9:
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v55 = sub_222B02148();
    __swift_project_value_buffer(v55, qword_280CBC458);
    sub_222A25344(a1, v104);
    v56 = sub_222B02128();
    v57 = sub_222B028D8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v103 = v59;
      *v58 = 136315138;
      __swift_project_boxed_opaque_existential_1(v104, v104[3]);
      DynamicType = swift_getDynamicType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D138, &unk_222B06790);
      v60 = sub_222B023D8();
      v62 = v61;
      __swift_destroy_boxed_opaque_existential_0(v104);
      v63 = sub_222A230FC(v60, v62, &v103);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_222A1C000, v56, v57, "ScanTurnsSubscriber ignored unexpected input type %s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x223DC7E30](v59, -1, -1);
      MEMORY[0x223DC7E30](v58, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v104);
    }

    return BPSDemandMax();
  }

  [v34 timestamp];
  v48 = v47;
  sub_222B017C8();
  v50 = v48 < v49;
  v94 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_eventTables;
  v95 = v2;
  v51 = *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_eventTables);

  sub_222A7C7BC(v50, v17);
  sub_222A34E48(v17, v13, &unk_27D01DA50, &unk_222B04E20);
  v52 = v100;
  v98 = *(v100 + 48);
  if (v98(v13, 1, v20) == 1)
  {

    v53 = 1;
    v54 = v101;
  }

  else
  {
    (*(v52 + 32))(v30, v13, v20);

    v54 = v101;
    sub_222A7C1AC(v30, v101);
    (*(v52 + 8))(v30, v20);
    v53 = 0;
  }

  sub_222A34F20(v17, &unk_27D01DA50, &unk_222B04E20);
  v65 = *(v52 + 56);
  v65(v54, v53, 1, v20);

  if (v98(v54, 1, v20) == 1)
  {
    sub_222A34F20(v54, &unk_27D01DA50, &unk_222B04E20);
    v66 = BPSDemandMax();

    return v66;
  }

  v101 = v46;
  v67 = *(v52 + 32);
  v68 = v54;
  v69 = v99;
  v92[1] = v52 + 32;
  v93 = v65;
  v92[0] = v67;
  v67(v99, v68, v20);
  v70 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_endpointer;
  v71 = v95;
  v72 = *(v95 + OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_endpointer);

  [v34 timestamp];
  sub_222AE3BD8(v69, v73);

  v74 = *(v71 + v70);

  [v34 timestamp];
  v76 = v34;
  v77 = v52;
  v78 = sub_222AE3D88(v75);

  if (!v78)
  {
    goto LABEL_24;
  }

  v79 = *(*(v71 + v70) + 32);
  v80 = v79[2];
  if (v80)
  {
    v81 = v96;
    (*(v100 + 16))(v96, v80 + *(*v80 + 88), v20);
    v82 = 0;
  }

  else
  {
    v82 = 1;
    v81 = v96;
  }

  v83 = v97;
  v93(v81, v82, 1, v20);

  sub_222A95844(v79);

  if (v98(v81, 1, v20) == 1)
  {
    sub_222A34F20(v81, &unk_27D01DA50, &unk_222B04E20);
    v69 = v99;
    v77 = v100;
LABEL_24:
    v84 = BPSDemandMax();

    (*(v77 + 8))(v69, v20);
    return v84;
  }

  (v92[0])(v83, v81, v20);
  type metadata accessor for SignalExtracting();
  v85 = v95;
  v86 = *(v95 + v94);

  v88 = sub_222AAB204(v87, v83);

  sub_222A95164(v88);
  if (v88)
  {
    v89 = *(v85 + OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_downstream);
    v90 = sub_222AA60FC(v88);
  }

  else
  {
    v90 = BPSDemandMax();
  }

  v91 = *(v100 + 8);
  v91(v83, v20);
  v91(v99, v20);
  return v90;
}

size_t sub_222A93EE4(void *a1)
{
  sub_222A94220(a1);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = sub_222B02148();
  __swift_project_value_buffer(v2, qword_280CBC458);
  v3 = a1;
  v4 = sub_222B02128();
  v5 = sub_222B028D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    [v3 state];
    type metadata accessor for BPSCompletionState(0);
    v8 = sub_222B023D8();
    v10 = sub_222A230FC(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_222A1C000, v4, v5, "ScanTurns received a completion, state=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223DC7E30](v7, -1, -1);
    MEMORY[0x223DC7E30](v6, -1, -1);
  }

  return sub_222A94694(2);
}

size_t sub_222A940D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_downstream);
  sub_222AA633C();
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = sub_222B02148();
  __swift_project_value_buffer(v2, qword_280CBC458);
  v3 = sub_222B02128();
  v4 = sub_222B028D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_222A1C000, v3, v4, "ScanTurns received a cancellation", v5, 2u);
    MEMORY[0x223DC7E30](v5, -1, -1);
  }

  return sub_222A94694(2);
}

uint64_t sub_222A94220(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v40 - v7;
  v9 = sub_222B018D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([a1 state] == 1)
  {
    v15 = *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_downstream);
    v16 = a1;
    return sub_222AA6204(v16);
  }

  else
  {
    v40 = a1;
    v46 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_eventTables;
    v47 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_endpointer;
    v42 = (v10 + 16);
    v43 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_downstream;
    v17 = (v10 + 56);
    v18 = (v10 + 48);
    v45 = (v10 + 32);
    v44 = *MEMORY[0x277CF1780];
    v41 = *MEMORY[0x277CF1788];
    v19 = (v10 + 8);
    while (1)
    {
      v20 = *(*(v2 + v47) + 32);
      v21 = v20[2];
      if (v21)
      {
        (*v42)(v8, v21 + *(*v21 + 88), v9);
        (*v17)(v8, 0, 1, v9);
        v22 = *(v21 + *(*v21 + 96));
      }

      else
      {
        (*v17)(v8, 1, 1, v9);
        v23 = 0;
      }

      v20[2] = v23;

      v25 = v20[4];
      v26 = __OFSUB__(v25, 1);
      v27 = v25 - 1;
      if (v26)
      {
        break;
      }

      v20[4] = v27 & ~(v27 >> 63);
      if (!v20[2])
      {
        v28 = v20[3];
        v20[3] = 0;
      }

      if ((*v18)(v8, 1, v9) == 1)
      {
        sub_222A34F20(v8, &unk_27D01DA50, &unk_222B04E20);
        v39 = *(v2 + v43);
        v16 = v40;
        return sub_222AA6204(v16);
      }

      (*v45)(v14, v8, v9);
      type metadata accessor for SignalExtracting();
      v29 = *(v2 + v46);

      v31 = sub_222AAB204(v30, v14);

      sub_222A95164(v31);
      if (v31)
      {
        v32 = *(v2 + v43);
        v33 = *(v32 + 16);
        if (*(v33 + 32) == v44)
        {
          v34 = *(v33 + 48);

          sub_222AE3AD4(v31);

          (*v19)(v14, v9);
        }

        else
        {
          v35 = [*(v33 + 16) receiveInput_];
          v36 = *(v32 + 16);
          v37 = v41;
          if (v35 == v41 || (v38 = *(v36 + 32), v38 == v41))
          {
          }

          else
          {

            v37 = BPSDemandMax();
          }

          (*v19)(v14, v9);
          *(v36 + 32) = v37;
        }
      }

      else
      {
        (*v19)(v14, v9);
      }
    }

    __break(1u);
  }

  return result;
}

size_t sub_222A94694(uint64_t a1)
{
  v112 = sub_222B018D8();
  *&v111 = *(v112 - 8);
  v3 = *(v111 + 64);
  MEMORY[0x28223BE20](v112, v4);
  v6 = v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C950, &qword_222B04910);
  v7 = *(v114 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v114, v9);
  v12 = v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v107 - v14;
  v16 = *(*(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_eventTables) + 24);
  swift_beginAccess();
  v17 = *(v16 + 16);
  if (*(v17 + 16) && (v18 = sub_222A2E3A4(a1), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
  }

  else
  {
    v21 = sub_222A3A264(MEMORY[0x277D84F90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D7B8, &unk_222B09100);
    *(swift_allocObject() + 16) = v21;
  }

  v22 = sub_222A958E0();

  v23 = *(v22 + 16);
  v109 = a1;
  if (v23)
  {
    v24 = *(v7 + 80);
    v110 = v22;
    v25 = v22 + ((v24 + 32) & ~v24);
    v113 = *(v7 + 72);
    v26 = (v111 + 32);
    v27 = MEMORY[0x277D84F90];
    v28 = v112;
    do
    {
      sub_222A34E48(v25, v15, &qword_27D01C950, &qword_222B04910);
      sub_222A9657C(v15, v12);
      v29 = *&v12[*(v114 + 48)];

      v30 = *v26;
      (*v26)(v6, v12, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_222AA8E90(0, v27[2] + 1, 1, v27);
      }

      v32 = v27[2];
      v31 = v27[3];
      if (v32 >= v31 >> 1)
      {
        v27 = sub_222AA8E90(v31 > 1, v32 + 1, 1, v27);
      }

      v27[2] = v32 + 1;
      v33 = v27 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v32;
      v28 = v112;
      v30(v33, v6, v112);
      v25 += v113;
      --v23;
    }

    while (v23);

    LODWORD(a1) = v109;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v34 = sub_222A2E0A4(v27);

  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = sub_222A95DD8(*(v34 + 16), 0);
    v37 = sub_222A960B4(&v115, (v36 + ((*(v111 + 80) + 32) & ~*(v111 + 80))), v35, v34);
    sub_222A965EC();
    if (v37 == v35)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  v36 = MEMORY[0x277D84F90];
LABEL_18:
  if (qword_280CBA628 != -1)
  {
    goto LABEL_108;
  }

  while (1)
  {
    v38 = sub_222B02148();
    v39 = __swift_project_value_buffer(v38, qword_280CBC458);

    v110 = v39;
    v40 = sub_222B02128();
    v41 = sub_222B028D8();
    v42 = os_log_type_enabled(v40, v41);
    v113 = v36;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v115 = v44;
      *v43 = 134218242;
      *(v43 + 4) = *(v36 + 16);

      *(v43 + 12) = 2080;
      if (a1 > 0x42)
      {
        v45 = @"COMPONENTNAME_UNKNOWN";
        v46 = @"COMPONENTNAME_UNKNOWN";
      }

      else
      {
        v45 = off_2784B9468[a1];
        v46 = off_2784B9680[a1];
      }

      v47 = v45;
      v48 = v46;
      v49 = sub_222B02388();
      v51 = v50;

      a1 = sub_222A230FC(v49, v51, &v115);

      *(v43 + 14) = a1;
      _os_log_impl(&dword_222A1C000, v40, v41, "ScanTurns found %ld unmatched %s id(s) remaining in the event table", v43, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x223DC7E30](v44, -1, -1);
      MEMORY[0x223DC7E30](v43, -1, -1);

      v36 = v113;
    }

    else
    {
    }

    v114 = *(v36 + 16);
    if (v114)
    {
      v52 = 0;
      v53 = 0;
      while (1)
      {
        v54 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        v55 = __OFADD__(v53, 8);
        v53 += 8;
        if (v55)
        {
          v53 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v52;
        if (v53 >= v114)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_100;
    }

    v54 = 0;
LABEL_33:
    v115 = MEMORY[0x277D84F90];
    result = sub_222A23DD4(0, v54 & ~(v54 >> 63), 0);
    if (v54 < 0)
    {
      break;
    }

    v57 = v115;
    if (v54)
    {
      v58 = 0;
      v59 = 0;
      v60 = *(v36 + 16);
      v61 = *(v111 + 80);
      v108 = (v61 + 32) & ~v61;
      v107[1] = v61;
      v107[2] = v36 + v108;
      a1 = 8;
      while (1)
      {
        v62 = v60 >= a1 ? a1 : v60;
        if (v59 >= v114)
        {
          break;
        }

        if (v59 == 0x7FFFFFFFFFFFFFF8)
        {
          goto LABEL_101;
        }

        v63 = v59 + 8;
        if (v60 >= (v59 + 8))
        {
          v64 = v59 + 8;
        }

        else
        {
          v64 = v60;
        }

        if (v64 < v59)
        {
          goto LABEL_102;
        }

        v65 = *(v36 + 16);
        if (v65 < v59 || v65 < v64)
        {
          goto LABEL_103;
        }

        v66 = v62 + v58;
        if (v62 + v58 == v65)
        {

          v67 = v36;
        }

        else
        {
          v67 = MEMORY[0x277D84F90];
          if (v59 != v64)
          {
            if (v66 >= 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DA60, &qword_222B04950);
              v70 = *(v111 + 72);
              v67 = swift_allocObject();
              result = _swift_stdlib_malloc_size(v67);
              if (!v70)
              {
                goto LABEL_110;
              }

              v71 = v108;
              if (result - v108 == 0x8000000000000000 && v70 == -1)
              {
                goto LABEL_112;
              }

              v67[2] = v66;
              v67[3] = 2 * ((result - v71) / v70);
            }

            v73 = *(v111 + 72);
            swift_arrayInitWithCopy();
          }
        }

        v115 = v57;
        v69 = *(v57 + 16);
        v68 = *(v57 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_222A23DD4((v68 > 1), v69 + 1, 1);
          v57 = v115;
        }

        *(v57 + 16) = v69 + 1;
        *(v57 + 8 * v69 + 32) = v67;
        a1 += 8;
        v58 -= 8;
        v59 = v63;
        --v54;
        v36 = v113;
        if (!v54)
        {
          goto LABEL_63;
        }
      }

LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v63 = 0;
LABEL_63:
    if (v63 < v114)
    {
      a1 = -v63;
      v74 = v63 + 8;
      v75 = v63;
      do
      {
        v76 = v75 + 8;
        if (__OFADD__(v75, 8))
        {
          goto LABEL_105;
        }

        v77 = *(v36 + 16);
        if (v77 >= v76)
        {
          v78 = v75 + 8;
        }

        else
        {
          v78 = *(v36 + 16);
        }

        if (v78 < v75)
        {
          goto LABEL_106;
        }

        if (v63 < 0)
        {
          goto LABEL_107;
        }

        if (v77 >= v74)
        {
          v79 = v74;
        }

        else
        {
          v79 = *(v36 + 16);
        }

        v80 = v79 + a1;
        if (v79 + a1 == v77)
        {

          v81 = v36;
        }

        else
        {
          v81 = MEMORY[0x277D84F90];
          if (v75 != v78)
          {
            if (v80 >= 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DA60, &qword_222B04950);
              v84 = *(v111 + 72);
              v85 = (*(v111 + 80) + 32) & ~*(v111 + 80);
              v81 = swift_allocObject();
              result = _swift_stdlib_malloc_size(v81);
              if (!v84)
              {
                goto LABEL_111;
              }

              if (result - v85 == 0x8000000000000000 && v84 == -1)
              {
                goto LABEL_113;
              }

              v81[2] = v80;
              v81[3] = 2 * ((result - v85) / v84);
              v36 = v113;
            }

            v87 = v36 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v75;
            swift_arrayInitWithCopy();
          }
        }

        v115 = v57;
        v83 = *(v57 + 16);
        v82 = *(v57 + 24);
        if (v83 >= v82 >> 1)
        {
          sub_222A23DD4((v82 > 1), v83 + 1, 1);
          v57 = v115;
        }

        *(v57 + 16) = v83 + 1;
        *(v57 + 8 * v83 + 32) = v81;
        v75 += 8;
        a1 -= 8;
        v74 += 8;
        v36 = v113;
      }

      while (v76 < v114);
    }

    a1 = *(v57 + 16);
    v89 = v109;
    if (!a1)
    {
    }

    v90 = 0;
    v91 = v57 + 32;
    *&v88 = 136315394;
    v111 = v88;
    v113 = v57 + 32;
    v114 = a1;
    while (v90 < *(v57 + 16))
    {
      v92 = *(v91 + 8 * v90);

      v93 = sub_222B02128();
      v94 = sub_222B028D8();

      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v115 = v36;
        *v95 = v111;
        v96 = @"COMPONENTNAME_UNKNOWN";
        v97 = @"COMPONENTNAME_UNKNOWN";
        if (v89 <= 0x42)
        {
          v97 = off_2784B9898[v89];
          v96 = off_2784B9AB0[v89];
        }

        v98 = v97;
        v99 = v96;
        v100 = sub_222B02388();
        v102 = v101;

        v103 = sub_222A230FC(v100, v102, &v115);
        v89 = v109;

        *(v95 + 4) = v103;
        *(v95 + 12) = 2080;
        v104 = MEMORY[0x223DC6850](v92, v112);
        v106 = sub_222A230FC(v104, v105, &v115);

        *(v95 + 14) = v106;
        _os_log_impl(&dword_222A1C000, v93, v94, "  Could not find a matching request (%s): %s", v95, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DC7E30](v36, -1, -1);
        MEMORY[0x223DC7E30](v95, -1, -1);

        v91 = v113;
        a1 = v114;
      }

      else
      {
      }

      if (a1 == ++v90)
      {
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    swift_once();
  }

  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
  return result;
}

uint64_t sub_222A95164(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v42 = &v41 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v41 - v14;
  v16 = sub_222B018D8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v41 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v41 - v28;
  v30 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_previousTurnId;
  swift_beginAccess();
  sub_222A34E48(v2 + v30, v15, &unk_27D01DA50, &unk_222B04E20);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_222A34F20(v15, &unk_27D01DA50, &unk_222B04E20);
    if (a1)
    {
      (*(v17 + 16))(v9, a1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID, v16);
      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    (*(v17 + 56))(v9, v31, 1, v16);
    swift_beginAccess();
    v38 = v2 + v30;
    v39 = v9;
  }

  else
  {
    v32 = v15;
    v33 = *(v17 + 32);
    v33(v29, v32, v16);
    if (!a1)
    {
      return (*(v17 + 8))(v29, v16);
    }

    (*(v17 + 16))(v22, a1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID, v16);
    v33(v26, v22, v16);
    sub_222A6E4CC();
    if ((sub_222B02338() & 1) == 0)
    {
      v34 = *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_eventTables);
      v41 = v33;
      v35 = *(v34 + 72);
      swift_beginAccess();

      v36 = sub_222ADED50(v29);
      swift_endAccess();

      v33 = v41;
    }

    (*(v17 + 8))(v29, v16);
    v37 = v42;
    v33(v42, v26, v16);
    (*(v17 + 56))(v37, 0, 1, v16);
    swift_beginAccess();
    v38 = v2 + v30;
    v39 = v37;
  }

  sub_222A957D4(v39, v38);
  return swift_endAccess();
}

id sub_222A955C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_222A956EC()
{
  v0 = sub_222B01848();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_222A658D8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_222A957D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A95844(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = *(v2 + *(*v2 + 96));
  }

  else
  {
    v4 = 0;
  }

  a1[2] = v4;

  v6 = a1[4];
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a1[4] = v8 & ~(v8 >> 63);
    if (!a1[2])
    {
      v9 = a1[3];
      a1[3] = 0;
    }
  }

  return result;
}

uint64_t sub_222A958E0()
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DA68, &unk_222B0C0F0);
  v1 = *(*(v52 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v52, v2);
  v51 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v50 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C950, &qword_222B04910);
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v42 - v10;
  swift_beginAccess();
  v12 = *(v0 + 16);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    return v14;
  }

  v56 = MEMORY[0x277D84F90];

  sub_222A23DF4(0, v13, 0);
  v14 = v56;
  v15 = v12 + 64;
  v16 = -1 << *(v12 + 32);
  result = sub_222B02BC8();
  v18 = result;
  v19 = 0;
  v20 = *(v12 + 36);
  v43 = v12 + 72;
  v44 = v13;
  v46 = v12;
  v47 = v12 + 64;
  v45 = v20;
  while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(v12 + 32))
  {
    if ((*(v15 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
    {
      goto LABEL_23;
    }

    if (v20 != *(v12 + 36))
    {
      goto LABEL_24;
    }

    v54 = 1 << v18;
    v55 = v18 >> 6;
    v53 = v19;
    v22 = *(v12 + 48);
    v23 = sub_222B018D8();
    v24 = *(v23 - 8);
    v25 = v24;
    v26 = *(v24 + 16);
    v27 = v11;
    v28 = v50;
    v26(v50, v22 + *(v24 + 72) * v18, v23);
    v29 = *(*(v12 + 56) + 8 * v18);
    v30 = v51;
    v31 = v28;
    v11 = v27;
    (*(v25 + 32))(v51, v31, v23);
    *(v30 + *(v52 + 48)) = v29;
    v32 = *(v49 + 48);
    v26(v27, v30, v23);
    *(v27 + v32) = v29;
    swift_bridgeObjectRetain_n();
    sub_222A34F20(v30, &qword_27D01DA68, &unk_222B0C0F0);
    v56 = v14;
    v34 = *(v14 + 16);
    v33 = *(v14 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_222A23DF4(v33 > 1, v34 + 1, 1);
      v14 = v56;
    }

    *(v14 + 16) = v34 + 1;
    result = sub_222A9657C(v27, v14 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v34);
    v12 = v46;
    v15 = v47;
    v21 = 1 << *(v46 + 32);
    if (v18 >= v21)
    {
      goto LABEL_25;
    }

    v35 = *(v47 + 8 * v55);
    if ((v35 & v54) == 0)
    {
      goto LABEL_26;
    }

    LODWORD(v20) = v45;
    if (v45 != *(v46 + 36))
    {
      goto LABEL_27;
    }

    v36 = v35 & (-2 << (v18 & 0x3F));
    if (v36)
    {
      v21 = __clz(__rbit64(v36)) | v18 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v37 = v55 << 6;
      v38 = v55 + 1;
      v39 = (v43 + 8 * v55);
      while (v38 < (v21 + 63) >> 6)
      {
        v41 = *v39++;
        v40 = v41;
        v37 += 64;
        ++v38;
        if (v41)
        {
          result = sub_222A965F4(v18, v45, 0);
          v21 = __clz(__rbit64(v40)) + v37;
          goto LABEL_4;
        }
      }

      result = sub_222A965F4(v18, v45, 0);
    }

LABEL_4:
    v19 = v53 + 1;
    v18 = v21;
    if (v53 + 1 == v44)
    {

      return v14;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_222A95D54(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DAA0, &qword_222B049A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

size_t sub_222A95DD8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DA60, &qword_222B04950);
  v4 = *(sub_222B018D8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_222A95ED4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_222A95F5C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_222A960B4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v43 = sub_222B018D8();
  v45 = *(v43 - 8);
  v8 = *(v45 + 64);
  v10 = MEMORY[0x28223BE20](v43, v9);
  v44 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10, v12);
  v42 = &v36 - v14;
  v15 = a4 + 56;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v34 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v15;
    *(a1 + 16) = ~v16;
    *(a1 + 24) = v34;
    *(a1 + 32) = v18;
    return a3;
  }

  if (!a3)
  {
    v34 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(a4 + 32);
    v37 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v38 = v45 + 32;
    v39 = v45 + 16;
    a1 = 1;
    v40 = a4 + 56;
    v41 = a3;
    v21 = v42;
    while (v18)
    {
      v47 = a2;
LABEL_15:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v46 = v19;
      v25 = a4;
      v26 = *(a4 + 48);
      v27 = v44;
      v28 = v45;
      v29 = *(v45 + 72);
      v30 = v43;
      (*(v45 + 16))(v44, v26 + v29 * (v24 | (v19 << 6)), v43);
      v31 = *(v28 + 32);
      v31(v21, v27, v30);
      v32 = v47;
      v31(v47, v21, v30);
      a3 = v41;
      if (a1 == v41)
      {
        v16 = v36;
        a1 = v37;
        a4 = v25;
        v34 = v46;
        v15 = v40;
        goto LABEL_25;
      }

      a2 = &v32[v29];
      result = a1;
      v33 = __OFADD__(a1++, 1);
      a4 = v25;
      v19 = v46;
      v15 = v40;
      if (v33)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v15 + 8 * v23);
      ++v22;
      if (v18)
      {
        v47 = a2;
        v19 = v23;
        goto LABEL_15;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v35 = v19 + 1;
    }

    else
    {
      v35 = v20;
    }

    v34 = v35 - 1;
    a3 = result;
    v16 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_222A96358(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_222A964AC(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(a5 + 48);
  v9 = sub_222B018D8();
  (*(*(v9 - 8) + 16))(v7, v8 + *(*(v9 - 8) + 72) * a2, v9);
  v10 = *(*(a5 + 56) + 8 * a2);
}

uint64_t sub_222A9657C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C950, &qword_222B04910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A965F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_222A96600(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_innerSubscription] = 0;
  v5 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_eventTables;
  type metadata accessor for EventTables();
  swift_allocObject();
  *&v2[v5] = sub_222A7FFC0();
  v6 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_endpointer;
  type metadata accessor for RequestStreamEndpointer();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84FA0];
  v7[2] = 0x404E000000000000;
  v7[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DA80, &qword_222B0AB30);
  v9 = swift_allocObject();
  v9[3] = 0;
  v9[4] = 0;
  v9[2] = 0;
  v10 = MEMORY[0x277D84F98];
  v7[4] = v9;
  v7[5] = v10;
  *&v3[v6] = v7;
  v11 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_previousTurnId;
  v12 = sub_222B018D8();
  (*(*(v12 - 8) + 56))(&v3[v11], 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DA88, &qword_222B0AB38);
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA90, &qword_222B0AB40);
  swift_allocObject();
  v14 = swift_unknownObjectRetain();
  *(v13 + 16) = sub_222AA63C8(v14);
  *&v3[OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_downstream] = v13;
  v15 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_95987ADD223C83697EEA450CF0CC3A3519ScanTurnsSubscriber_turnsStartDateTime;
  v16 = sub_222B01848();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v3[v15], a2, v16);
  v20.receiver = v3;
  v20.super_class = type metadata accessor for ScanTurnsSubscriber(0);
  v18 = objc_msgSendSuper2(&v20, sel_init);
  (*(v17 + 8))(a2, v16);
  return v18;
}

uint64_t sub_222A96824(uint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v6 = a1;
  v40 = MEMORY[0x277D84F90];
  sub_222A23B84(0, v4, 0);
  v5 = v40;
  v7 = v6 + 56;
  v8 = -1 << *(v6 + 32);
  result = sub_222B02BC8();
  v10 = result;
  v11 = 0;
  v28 = v6 + 64;
  v29 = v4;
  v30 = v6 + 56;
  v31 = v6;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v6 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v7 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_21;
    }

    v35 = v11;
    v36 = *(v6 + 36);
    v14 = (*(v6 + 48) + 16 * v10);
    v15 = *v14;
    v16 = v14[1];
    v17 = a2(0);
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    *(v18 + 24) = v16;
    v40 = v5;
    v20 = *(v5 + 16);
    v19 = *(v5 + 24);

    if (v20 >= v19 >> 1)
    {
      sub_222A23B84((v19 > 1), v20 + 1, 1);
      v5 = v40;
    }

    v38 = v17;
    v39 = sub_222A9AC64(a3, a4);
    *&v37 = v18;
    *(v5 + 16) = v20 + 1;
    result = sub_222A2577C(&v37, v5 + 40 * v20 + 32);
    v6 = v31;
    v12 = 1 << *(v31 + 32);
    if (v10 >= v12)
    {
      goto LABEL_22;
    }

    v7 = v30;
    v21 = *(v30 + 8 * v13);
    if ((v21 & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v36 != *(v31 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v10 & 0x3F));
    if (v22)
    {
      v12 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v13 << 6;
      v24 = v13 + 1;
      v25 = (v28 + 8 * v13);
      while (v24 < (v12 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_222A965F4(v10, v36, 0);
          v12 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_222A965F4(v10, v36, 0);
    }

LABEL_4:
    v11 = v35 + 1;
    v10 = v12;
    if (v35 + 1 == v29)
    {
      return v5;
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

uint64_t sub_222A96AE0(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v9 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v9 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + 8 * v9 + 32), (v7 + 32), 8 * v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v10 = *(v4 + 16);
  v11 = __OFADD__(v10, v3);
  v12 = v10 + v3;
  if (!v11)
  {
    *(v4 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_222A96BDC(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_222AA8FDC(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9F0, &qword_222B04940);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_222A96CE4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_222AA95FC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_222A96DD8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_222AA9724(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_222A96EDC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_222AA8E90(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_222B018D8();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_222A97020(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_222B02DC8();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = *v2;
  if (!(*v2 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v5);
    result = v7 + v5;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < 0)
  {
    v16 = *v2;
  }

  v17 = sub_222B02DC8();
  v8 = __OFADD__(v17, v5);
  result = v17 + v5;
  if (v8)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_222A99D88(result);
  v10 = *v2;
  v11 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v2 = v10;
    return result;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_222A97118(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_222A23AE4(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_222A25344(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_222A23AE4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_222A9722C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_222A23BE4(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_222A25344(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_222A23BE4((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + v6 + 32) = v8 & 1;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

unint64_t PromptEventType.Ending.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

unint64_t PromptEventType.Beginning.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

unint64_t FlowTaskStateType.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000019;
  }

  else
  {
    result = 0xD00000000000001FLL;
  }

  *v0;
  return result;
}

void sub_222A97408(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 8 * v3 + 24);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_16:
    v10 = 2;
    goto LABEL_17;
  }

  v5 = sub_222B02DC8();
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_4:
  v6 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_19:

    v7 = MEMORY[0x223DC6F00](v6, v4);

LABEL_9:
    v8 = [v7 gaveOptions];
    if (v8)
    {
      v9 = v8;

      v10 = 1;
    }

    else
    {
      v9 = [v7 offered];

      if (!v9)
      {
        v10 = 3;
        goto LABEL_17;
      }

      v10 = 0;
    }

LABEL_17:
    *a2 = v10;
    return;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v4 + 8 * v6 + 32);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_222A97538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_222B03128();
  sub_222B02448();
  v7 = sub_222B03168();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_222B02F78() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t PromptEndSlotName.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t PromptResult.rawValue.getter()
{
  if (*v0)
  {
    result = 0x454C4C45434E4143;
  }

  else
  {
    result = 0x414D5249464E4F43;
  }

  *v0;
  return result;
}

uint64_t FlowTaskResolvedSlotType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x746E65746E6F63;
  }

  else
  {
    result = 0x6E65697069636572;
  }

  *v0;
  return result;
}

uint64_t ResolvedSlots.__allocating_init(value:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id sub_222A9773C(unint64_t a1)
{
  HasFlowEvents = a1;
  v113 = *v1;
  *&v125 = MEMORY[0x277D84F90];
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_130:
    v4 = sub_222B02DC8();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v121 = HasFlowEvents;
  v123 = HasFlowEvents & 0xC000000000000001;
  v116 = v3;
  if (!v4)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = &unk_280CB4B30;
  v8 = 0x277D590F0;
  do
  {
    v119 = v6;
    v9 = v5;
    while (1)
    {
      if (v123)
      {
        v10 = MEMORY[0x223DC6F00](v9, HasFlowEvents);
      }

      else
      {
        if (v9 >= *(v3 + 16))
        {
          goto LABEL_121;
        }

        v10 = *(HasFlowEvents + 8 * v9 + 32);
      }

      v11 = v10;
      v5 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      v12 = sub_222A250BC(0, v7, v8);
      [v11 anyEventType];
      v13 = sub_222B02A28();
      if (v13 && v12 == v13)
      {
        v15 = [v11 payload];
        if (v15)
        {
          v16 = v15;
          v17 = v8;
          v18 = v7;
          v19 = sub_222B01798();
          v21 = v20;

          v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v23 = sub_222B01788();
          v24 = v19;
          v7 = v18;
          v8 = v17;
          HasFlowEvents = v121;
          v25 = v21;
          v3 = v116;
          sub_222A26530(v24, v25);
          v26 = v22;
        }

        else
        {
          v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v23 = 0;
        }

        v27 = [v26 initWithData_];

        if (!v27)
        {
          goto LABEL_15;
        }

        objc_opt_self();
        v11 = v27;
        if (swift_dynamicCastObjCClass())
        {
          break;
        }
      }

LABEL_15:
      ++v9;
      if (v5 == v4)
      {
        v6 = v119;
        goto LABEL_29;
      }
    }

    MEMORY[0x223DC6810]();
    if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v28 = v8;
      v29 = v7;
      v30 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_222B02648();
      v7 = v29;
      v8 = v28;
      HasFlowEvents = v121;
    }

    sub_222B02688();
    v6 = v125;
    v3 = v116;
  }

  while (v5 != v4);
LABEL_29:
  v3 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
    v90 = v6;
    v31 = sub_222B02DC8();
    v6 = v90;
  }

  else
  {
    v31 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = MEMORY[0x277D84F90];
  v118 = v31;
  v120 = v6;
  if (v31)
  {
    v33 = 0;
    v34 = v6 & 0xC000000000000001;
LABEL_33:
    v110 = v32;
    v35 = v33;
    while (1)
    {
      if (v34)
      {
        v36 = MEMORY[0x223DC6F00](v35);
      }

      else
      {
        if (v35 >= *(v3 + 16))
        {
          goto LABEL_123;
        }

        v36 = *(v6 + 8 * v35 + 32);
      }

      v37 = v36;
      v33 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      v38 = [v36 cdmRequestContext];
      if (v38)
      {
        v39 = v38;
        v40 = [v38 startedOrChanged];

        if (v40)
        {
          v41 = [v40 currentTurnInput];

          if (v41)
          {
            v42 = [v41 turnContext];

            if (v42)
            {
              v43 = [v42 nlContext];

              if (v43)
              {
                v44 = [v43 systemDialogActs];

                if (v44)
                {
                  sub_222A250BC(0, &qword_27D01DAB0, 0x277D58F48);
                  v45 = sub_222B025F8();

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v110 = sub_222AA9318(0, v110[2] + 1, 1, v110);
                  }

                  v48 = v110[2];
                  v47 = v110[3];
                  if (v48 >= v47 >> 1)
                  {
                    v110 = sub_222AA9318((v47 > 1), v48 + 1, 1, v110);
                  }

                  v110[2] = v48 + 1;
                  v110[v48 + 4] = v45;
                  v32 = v110;
                  v6 = v120;
                  if (v33 != v118)
                  {
                    goto LABEL_33;
                  }

                  goto LABEL_54;
                }
              }
            }
          }
        }
      }

      ++v35;
      v6 = v120;
      if (v33 == v118)
      {
        v32 = v110;
        goto LABEL_54;
      }
    }

LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

LABEL_54:
  sub_222A97408(v32, &v125);

  v111 = v125;
  v49 = MEMORY[0x277D84F90];
  *&v125 = MEMORY[0x277D84F90];
  if (v4)
  {
    v50 = 0;
    v51 = MEMORY[0x277D84F90];
    v52 = &unk_280CB4B18;
    v53 = 0x277D57500;
    v3 = v116;
    v112 = v4;
    while (2)
    {
      v54 = v50;
      v114 = v51;
LABEL_57:
      if (v123)
      {
        v55 = MEMORY[0x223DC6F00](v54, HasFlowEvents);
      }

      else
      {
        if (v54 >= *(v3 + 16))
        {
          goto LABEL_125;
        }

        v55 = *(HasFlowEvents + 8 * v54 + 32);
      }

      v56 = v55;
      v50 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        goto LABEL_124;
      }

      v32 = sub_222A250BC(0, v52, v53);
      [v56 anyEventType];
      v57 = sub_222B02A28();
      if (v57)
      {
        v58 = v32 == v57;
      }

      else
      {
        v58 = 0;
      }

      if (v58)
      {
        v59 = [v56 payload];
        if (v59)
        {
          v60 = v59;
          v61 = v52;
          v62 = sub_222B01798();
          v63 = v53;
          v65 = v64;

          v3 = v116;
          v66 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v67 = sub_222B01788();
          v68 = v62;
          v52 = v61;
          v69 = v65;
          v53 = v63;
          sub_222A26530(v68, v69);
          v70 = v66;
        }

        else
        {
          v70 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v67 = 0;
        }

        v32 = [v70 initWithData_];

        v4 = v112;
        v51 = v114;
        HasFlowEvents = v121;
        if (v32)
        {
          objc_opt_self();
          v71 = swift_dynamicCastObjCClass();
          v56 = v32;
          if (v71)
          {
            v32 = v71;
            MEMORY[0x223DC6810]();
            if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v72 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_222B02648();
              v3 = v116;
            }

            sub_222B02688();
            v51 = v125;
            v49 = MEMORY[0x277D84F90];
            if (v50 != v112)
            {
              continue;
            }

            goto LABEL_80;
          }

          goto LABEL_65;
        }
      }

      else
      {
LABEL_65:
      }

      break;
    }

    ++v54;
    if (v50 == v4)
    {
      v49 = MEMORY[0x277D84F90];
      goto LABEL_80;
    }

    goto LABEL_57;
  }

  v51 = MEMORY[0x277D84F90];
LABEL_80:
  *&v125 = v49;
  v122 = v51 & 0xFFFFFFFFFFFFFF8;
  if (v51 >> 62)
  {
    v73 = sub_222B02DC8();
  }

  else
  {
    v73 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = 0;
  v124 = v51 & 0xC000000000000001;
  v3 = MEMORY[0x277D84F90];
  v117 = MEMORY[0x277D84F90];
  while (v73 != v74)
  {
    if (v124)
    {
      v75 = MEMORY[0x223DC6F00](v74, v51);
    }

    else
    {
      if (v74 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_119;
      }

      v75 = *(v51 + 8 * v74 + 32);
    }

    v32 = v75;
    v76 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v77 = [v75 flowEntityContextTier1];

    ++v74;
    if (v77)
    {
      MEMORY[0x223DC6810]();
      if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v32 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222B02648();
      }

      sub_222B02688();
      v117 = v125;
      v74 = v76;
    }
  }

  *&v125 = v3;
  v3 = v117;
  if (v117 >> 62)
  {
    v78 = sub_222B02DC8();
  }

  else
  {
    v78 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v79 = MEMORY[0x277D84F90];
  if (v78)
  {
    v115 = v51;
    v80 = 0;
    HasFlowEvents = v117 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v117 & 0xC000000000000001) != 0)
      {
        v81 = MEMORY[0x223DC6F00](v80, v3);
      }

      else
      {
        if (v80 >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_127;
        }

        v81 = *(v3 + 8 * v80 + 32);
      }

      v32 = v81;
      v82 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        goto LABEL_126;
      }

      if ([v81 hasLinkId])
      {
        sub_222B02D18();
        v83 = *(v125 + 16);
        sub_222B02D48();
        v3 = v117;
        sub_222B02D58();
        sub_222B02D28();
      }

      else
      {
      }

      ++v80;
      if (v82 == v78)
      {
        v79 = v125;
        v51 = v115;
        break;
      }
    }
  }

  *&v125 = MEMORY[0x277D84F98];
  HasFlowEvents = 0;
  if (v79 < 0 || (v79 & 0x4000000000000000) != 0)
  {
    v84 = sub_222B02DC8();
    if (v84)
    {
      goto LABEL_110;
    }
  }

  else
  {
    v84 = *(v79 + 16);
    if (v84)
    {
LABEL_110:
      v85 = 0;
      v3 = v79 & 0xC000000000000001;
      while (1)
      {
        if (v3)
        {
          v86 = MEMORY[0x223DC6F00](v85, v79);
        }

        else
        {
          if (v85 >= *(v79 + 16))
          {
            goto LABEL_129;
          }

          v86 = *(v79 + 8 * v85 + 32);
        }

        v32 = v86;
        v87 = v85 + 1;
        if (__OFADD__(v85, 1))
        {
          goto LABEL_128;
        }

        v128 = v86;
        sub_222A9A8C8(&v125, &v128);

        ++v85;
        if (v87 == v84)
        {
          v88 = v51;
          v89 = v125;
          goto LABEL_136;
        }
      }
    }
  }

  v88 = v51;
  v89 = MEMORY[0x277D84F98];
LABEL_136:

  v91 = 0;
  v92 = MEMORY[0x277D84F90];
  *&v125 = MEMORY[0x277D84F90];
  while (v73 != v91)
  {
    if (v124)
    {
      v94 = MEMORY[0x223DC6F00](v91, v88);
    }

    else
    {
      v93 = *(v122 + 16);
      if (v91 >= v93)
      {
        goto LABEL_158;
      }

      v94 = v88[v91 + 4];
    }

    v32 = v94;
    v95 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      v88 = sub_222AA8FDC((v93 > 1), v32, 1, v88);
      goto LABEL_149;
    }

    v96 = [v94 flowStep];

    ++v91;
    if (v96)
    {
      MEMORY[0x223DC6810]();
      if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v32 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222B02648();
      }

      sub_222B02688();
      v92 = v125;
      v91 = v95;
    }
  }

  v88 = MEMORY[0x277D84F90];
  v128 = MEMORY[0x277D84F90];
  if (!v73)
  {
    goto LABEL_150;
  }

  HasFlowEvents = type metadata accessor for HasFlowEvents(0);
  v91 = swift_allocObject();
  *(v91 + 16) = 1;
  v88 = sub_222AA8FDC(0, 1, 1, MEMORY[0x277D84F90]);
  v73 = v88[2];
  v93 = v88[3];
  v32 = (v73 + 1);
  if (v73 >= v93 >> 1)
  {
    goto LABEL_159;
  }

LABEL_149:
  v126 = HasFlowEvents;
  v127 = sub_222A9AC64(qword_280CB7758, type metadata accessor for HasFlowEvents);
  *&v125 = v91;
  v88[2] = v32;
  sub_222A2577C(&v125, &v88[5 * v73 + 4]);
  v128 = v88;
LABEL_150:
  if (v118)
  {
    HasNLXEvents = type metadata accessor for HasNLXEvents(0);
    v98 = swift_allocObject();
    *(v98 + 16) = 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v88 = sub_222AA8FDC(0, v88[2] + 1, 1, v88);
    }

    v100 = v88[2];
    v99 = v88[3];
    if (v100 >= v99 >> 1)
    {
      v88 = sub_222AA8FDC((v99 > 1), v100 + 1, 1, v88);
    }

    v126 = HasNLXEvents;
    v127 = sub_222A9AC64(&unk_280CB79D0, type metadata accessor for HasNLXEvents);
    *&v125 = v98;
    v88[2] = v100 + 1;
    sub_222A2577C(&v125, &v88[5 * v100 + 4]);
    v128 = v88;
  }

  v101 = sub_222A9AE28(v92);
  sub_222A96BDC(v101);
  v102 = sub_222A9B3B8(v92, v89);

  sub_222A96BDC(v102);
  LOBYTE(v125) = v111;
  v103 = sub_222A9BB0C(v92, &v125);
  sub_222A96BDC(v103);
  v104 = sub_222A9C210(v92);
  sub_222A96BDC(v104);
  v105 = sub_222A9C96C(v92);
  sub_222A96BDC(v105);
  sub_222A9CD28(v92);
  sub_222A96BDC(v106);
  sub_222A9D1E8(v92);
  v108 = v107;

  sub_222A96BDC(v108);
  return v128;
}

uint64_t HasNLXEvents.__allocating_init(value:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_222A98584(uint64_t *a1, void (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_222A985D8(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v2 = a1[1];
  a2(0);
  result = swift_allocObject();
  if (v2)
  {
    *(result + 16) = v3;
    *(result + 24) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0B8, &unk_222B07340);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t sub_222A98698(uint64_t *a1, void (*a2)(void))
{
  v2 = *a1;
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t sub_222A986EC(uint64_t *a1, void (*a2)(void))
{
  v2 = *a1;
  a2(0);
  result = swift_allocObject();
  if (v2)
  {
    *(result + 16) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CFA8, &qword_222B05DE0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t PromptEndSlotName.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t PromptEndSlotName.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t PromptEndSlotName.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t ResolvedSlots.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ResolvedSlots.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_222A98A34(unsigned __int8 a1)
{
  v2 = a1;
  result = swift_allocObject();
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1 & 1;
  }

  return result;
}

uint64_t sub_222A98ABC(char a1)
{
  if (a1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + 16) = a1 & 1;
  }

  return v1;
}

uint64_t sub_222A98B50(char *a1, void (*a2)(void))
{
  v2 = *a1;
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  return result;
}

uint64_t sub_222A98BA4(unsigned __int8 *a1, void (*a2)(void))
{
  v2 = *a1;
  a2(0);
  result = swift_allocObject();
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v2 & 1;
  }

  return result;
}

SiriPrivateLearningAnalytics::PromptEventType::PreviousTurn_optional __swiftcall PromptEventType.PreviousTurn.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222B02E48();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PromptEventType.PreviousTurn.rawValue.getter()
{
  v1 = 0x4B4E552D56455250;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000013;
  }

  v2 = 0xD000000000000011;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_222A98D48()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A98E1C()
{
  *v0;
  *v0;
  *v0;
  sub_222B02448();
}

uint64_t sub_222A98EDC()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

void sub_222A98FB8(unint64_t *a1@<X8>)
{
  v2 = 0xEC0000004E574F4ELL;
  v3 = 0x4B4E552D56455250;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000013;
    v2 = 0x8000000222B101A0;
  }

  v4 = 0x8000000222B10160;
  v5 = 0xD000000000000011;
  if (*v1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x8000000222B10180;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_222A99054(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (v3)
  {
    v5 = "BLE";
  }

  else
  {
    v5 = "BEGIN-CONFIRMATION";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (*a2)
  {
    v8 = "BEGIN-CONFIRMATION";
  }

  else
  {
    v8 = "BLE";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_222B02F78();
  }

  return v10 & 1;
}

uint64_t sub_222A99100()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A99180()
{
  *v0;
  sub_222B02448();
}

uint64_t sub_222A991EC()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

void sub_222A99274(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (*v1)
  {
    v3 = "BEGIN-CONFIRMATION";
  }

  else
  {
    v3 = "BLE";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_222A992C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v3)
  {
    v5 = "BEGIN-DISAMBIGUATION";
  }

  else
  {
    v5 = "END-CONFIRMATION";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (*a2)
  {
    v8 = "END-CONFIRMATION";
  }

  else
  {
    v8 = "BEGIN-DISAMBIGUATION";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_222B02F78();
  }

  return v10 & 1;
}

uint64_t sub_222A9936C()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A993EC()
{
  *v0;
  sub_222B02448();
}

uint64_t sub_222A99458()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

void sub_222A994E0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "END-CONFIRMATION";
  }

  else
  {
    v3 = "BEGIN-DISAMBIGUATION";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_222A9952C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000019;
  }

  else
  {
    v4 = 0xD00000000000001FLL;
  }

  if (v3)
  {
    v5 = "END-DISAMBIGUATION";
  }

  else
  {
    v5 = "FLOWSTATETYPE_VALUE_UNSUPPORTED";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000019;
  }

  else
  {
    v7 = 0xD00000000000001FLL;
  }

  if (*a2)
  {
    v8 = "FLOWSTATETYPE_VALUE_UNSUPPORTED";
  }

  else
  {
    v8 = "END-DISAMBIGUATION";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_222B02F78();
  }

  return v10 & 1;
}

uint64_t sub_222A995D8()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A99658()
{
  *v0;
  sub_222B02448();
}

uint64_t sub_222A996C4()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

void sub_222A9974C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*v1)
  {
    v3 = "FLOWSTATETYPE_VALUE_UNSUPPORTED";
  }

  else
  {
    v3 = "END-DISAMBIGUATION";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_222A9978C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746E65746E6F63;
  }

  else
  {
    v4 = 0x6E65697069636572;
  }

  if (v3)
  {
    v5 = 0xE900000000000074;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x746E65746E6F63;
  }

  else
  {
    v6 = 0x6E65697069636572;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE900000000000074;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_222B02F78();
  }

  return v9 & 1;
}

uint64_t sub_222A99838()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A998C0()
{
  *v0;
  sub_222B02448();
}

uint64_t sub_222A99934()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

void sub_222A999C4(uint64_t *a1@<X8>)
{
  v2 = 0x6E65697069636572;
  if (*v1)
  {
    v2 = 0x746E65746E6F63;
  }

  v3 = 0xE900000000000074;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}