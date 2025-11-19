uint64_t OUTLINED_FUNCTION_0_43()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_22(uint64_t a1)
{

  return sub_266C1825C(a1, v1, v2);
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

uint64_t sub_266CC059C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266CC05DC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_266CC063C()
{
  v1 = v0;
  sub_266DA7E4C();
  v2 = *v0;
  v3 = v1[1];

  sub_266DA7DCC();
  v4 = v1[2];
  v5 = v1[3];

  sub_266DA7E1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F88, &unk_266DB6EF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_266DB05D0;
  v18 = *(v1 + 2);
  sub_266CC0FE4(&v18, &v17);
  v17 = v18;
  sub_266CC0FE4(&v18, v16);
  sub_266CC0FE4(&v18, v16);

  OUTLINED_FUNCTION_0_44();
  v7 = sub_266DAA74C();
  MEMORY[0x26D5F1170](v7);

  v8 = *(&v17 + 1);
  *(v6 + 32) = v17;
  *(v6 + 40) = v8;
  v17 = v18;
  OUTLINED_FUNCTION_0_44();
  v9 = sub_266DAA74C();
  MEMORY[0x26D5F1170](v9);

  v10 = *(&v17 + 1);
  *(v6 + 48) = v17;
  *(v6 + 56) = v10;
  v17 = v18;
  OUTLINED_FUNCTION_0_44();
  v11 = sub_266DAA74C();
  MEMORY[0x26D5F1170](v11);

  v12 = *(&v17 + 1);
  *(v6 + 64) = v17;
  *(v6 + 72) = v12;
  sub_266DA7E2C();
  v13 = swift_allocObject();
  v14 = v18;
  *(v13 + 16) = xmmword_266DAE4A0;
  *(v13 + 32) = v14;
  sub_266DA7E3C();
  sub_266DA7DFC();
  sub_266CC0834();
  return sub_266DA7DDC();
}

uint64_t sub_266CC0834()
{
  v0 = sub_266DA835C();
  v56 = *(v0 - 8);
  v57 = v0;
  v1 = *(v56 + 64);
  MEMORY[0x28223BE20](v0);
  v55 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_266DA829C();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v51 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v45 - v7;
  v58 = sub_266DA82EC();
  v49 = *(v58 - 8);
  v8 = *(v49 + 64);
  v9 = MEMORY[0x28223BE20](v58);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7B0, &qword_266DB4950);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v45 - v14;
  v16 = sub_266DA824C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v45 - v22;
  v24 = sub_266DA83BC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v45 - v30;
  sub_266DA83AC();
  sub_266D65484(v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_266CC1040(v15);
    v32 = v31;
  }

  else
  {
    (*(v17 + 32))(v23, v15, v16);
    (*(v17 + 16))(v21, v23, v16);
    v32 = v31;
    sub_266DA839C();
    (*(v17 + 8))(v23, v16);
  }

  v46 = v32;
  v33 = v48;
  sub_266DA82DC();
  v34 = *(v25 + 16);
  v47 = v24;
  v34(v29, v32, v24);
  sub_266DA82CC();
  v35 = v52;
  sub_266DA828C();
  v36 = v49;
  (*(v49 + 16))(v50, v33, v58);
  sub_266DA827C();
  v37 = v55;
  sub_266DA834C();
  v39 = v53;
  v38 = v54;
  (*(v53 + 16))(v51, v35, v54);
  sub_266DA833C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7B8, &unk_266DB79E0);
  v40 = v56;
  v41 = *(v56 + 72);
  v42 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_266DAE4A0;
  (*(v40 + 32))(v43 + v42, v37, v57);
  (*(v39 + 8))(v35, v38);
  (*(v36 + 8))(v33, v58);
  (*(v25 + 8))(v46, v47);
  return v43;
}

uint64_t sub_266CC0DAC()
{
  v1 = v0;
  sub_266DA7E4C();
  v2 = *v0;
  v3 = v1[1];

  sub_266DA7DCC();
  v4 = v1[2];
  v5 = v1[3];

  sub_266DA7E1C();
  sub_266DA7DFC();
  sub_266DA7DEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F88, &unk_266DB6EF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_266DAE4A0;
  v18 = *(v1 + 2);
  v17 = *(v1 + 2);
  sub_266CC0FE4(&v18, v16);
  sub_266CC0FE4(&v18, v16);

  MEMORY[0x26D5F1170](0x2E65756C61562ELL, 0xE700000000000000);
  v7 = sub_266DAA74C();
  MEMORY[0x26D5F1170](v7);

  v8 = *(&v17 + 1);
  *(v6 + 32) = v17;
  *(v6 + 40) = v8;
  sub_266DA7E0C();
  v9 = swift_allocObject();
  v10 = v18;
  *(v9 + 16) = xmmword_266DB05C0;
  *(v9 + 32) = v10;
  v11 = v1[7];
  *(v9 + 48) = v1[6];
  *(v9 + 56) = v11;

  sub_266DA7E3C();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_266DAE4A0;
  v17 = v18;
  MEMORY[0x26D5F1170](0x2E65756C61562ELL, 0xE700000000000000);
  v13 = sub_266DAA74C();
  MEMORY[0x26D5F1170](v13);

  v14 = *(&v17 + 1);
  *(v12 + 32) = v17;
  *(v12 + 40) = v14;
  sub_266DA7E2C();

  sub_266DA7DBC();

  sub_266DA7DDC();

  return sub_266DA7DAC();
}

uint64_t sub_266CC1040(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7B0, &qword_266DB4950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_0_44()
{

  JUMPOUT(0x26D5F1170);
}

uint64_t SFMPerson.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[7];
  v12 = v5;
  v13 = v0[6];
  if (v0[3])
  {
    MEMORY[0x26D5F1170](v0[2]);
    MEMORY[0x26D5F1170](8233, 0xE200000000000000);
    v7 = 0x6D614E6B63696E28;
    v6 = 0xEB00000000203A65;
  }

  else
  {
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  sub_266DAADFC();

  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v3 = 7104878;
    v8 = 0xE300000000000000;
  }

  MEMORY[0x26D5F1170](v3, v8);

  MEMORY[0x26D5F1170](8236, 0xE200000000000000);
  if (v1)
  {
    v9 = v2;
  }

  else
  {
    v9 = 7104878;
  }

  if (v1)
  {
    v10 = v1;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  MEMORY[0x26D5F1170](v9, v10);

  MEMORY[0x26D5F1170](32, 0xE100000000000000);
  MEMORY[0x26D5F1170](v7, v6);

  MEMORY[0x26D5F1170](540697705, 0xE400000000000000);
  MEMORY[0x26D5F1170](v13, v12);
  MEMORY[0x26D5F1170](62, 0xE100000000000000);
  return 0x737265504D46533CLL;
}

uint64_t SFMPerson.nameComponents.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];

  sub_266DA72CC();
  sub_266DA722C();
  sub_266DA724C();
  return sub_266DA72BC();
}

void __swiftcall SFMPerson.init(from:)(SiriFindMy::SFMPerson *__return_ptr retstr, CNContact from)
{
  v4 = [(objc_class *)from.super.isa givenName];
  v5 = sub_266DAA70C();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [(objc_class *)from.super.isa givenName];
    v34 = sub_266DAA70C();
    v11 = v10;
  }

  else
  {
    v34 = 0;
    v11 = 0;
  }

  v12 = [(objc_class *)from.super.isa nickname];
  v13 = sub_266DAA70C();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = [(objc_class *)from.super.isa nickname];
    v18 = sub_266DAA70C();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [(objc_class *)from.super.isa familyName];
  v22 = sub_266DAA70C();
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v26 = [(objc_class *)from.super.isa familyName];
    v27 = sub_266DAA70C();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = [(objc_class *)from.super.isa identifier];
  v31 = sub_266DAA70C();
  v33 = v32;

  retstr->givenName.value._countAndFlagsBits = v34;
  retstr->givenName.value._object = v11;
  retstr->nickName.value._countAndFlagsBits = v18;
  retstr->nickName.value._object = v20;
  retstr->familyName.value._countAndFlagsBits = v27;
  retstr->familyName.value._object = v29;
  retstr->identifier._countAndFlagsBits = v31;
  retstr->identifier._object = v33;
  OUTLINED_FUNCTION_4_21();
}

uint64_t SFMPerson.givenName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_4_4();
}

uint64_t SFMPerson.nickName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_4_4();
}

uint64_t SFMPerson.familyName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_4_4();
}

uint64_t SFMPerson.identifier.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_4_4();
}

void static SFMPerson.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v15 = a2[5];
  v14 = a2[6];
  v16 = a2[7];
  if (v3)
  {
    if (!v10)
    {
      goto LABEL_34;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v34 = a1[5];
      v35 = a2[5];
      v18 = a1[4];
      v19 = a2[7];
      v20 = a2[6];
      v21 = a1[7];
      v22 = a1[6];
      v23 = a2[4];
      v24 = sub_266DAB17C();
      v12 = v23;
      v7 = v22;
      v9 = v21;
      v14 = v20;
      v16 = v19;
      v5 = v18;
      v8 = v34;
      v15 = v35;
      if ((v24 & 1) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else if (v10)
  {
    goto LABEL_34;
  }

  if (v6)
  {
    if (!v13)
    {
      goto LABEL_34;
    }

    if (v4 != v11 || v6 != v13)
    {
      v26 = v7;
      v27 = v12;
      v28 = sub_266DAB17C();
      v12 = v27;
      v7 = v26;
      if ((v28 & 1) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else if (v13)
  {
    goto LABEL_34;
  }

  if (!v8)
  {
    if (!v15)
    {
      goto LABEL_26;
    }

LABEL_34:
    OUTLINED_FUNCTION_4_21();
    return;
  }

  if (!v15)
  {
    goto LABEL_34;
  }

  if (v5 != v12 || v8 != v15)
  {
    v30 = v7;
    v31 = sub_266DAB17C();
    v7 = v30;
    if ((v31 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_26:
  if (v7 == v14 && v9 == v16)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_4_21();

  sub_266DAB17C();
}

uint64_t sub_266CC1748(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266CC1788(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_266CC17E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  v4 = sub_266DA812C();
  v3[19] = v4;
  OUTLINED_FUNCTION_11_3(v4);
  v3[20] = v5;
  v7 = *(v6 + 64) + 15;
  v3[21] = swift_task_alloc();
  v8 = sub_266DA7C9C();
  v3[22] = v8;
  OUTLINED_FUNCTION_11_3(v8);
  v3[23] = v9;
  v11 = *(v10 + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CC18F8, 0, 0);
}

void sub_266CC18F8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  sub_266DA7E4C();
  OUTLINED_FUNCTION_4_23();
  sub_266DA7DCC();
  sub_266C2CDB0(0);
  sub_266DA7E1C();
  sub_266DA7DFC();
  sub_266DA7DEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F88, &unk_266DB6EF0);
  v3 = swift_allocObject();
  v71 = OUTLINED_FUNCTION_27_7(v3, xmmword_266DAE4A0);
  v75 = v4;
  MEMORY[0x26D5F1170](0x2E65756C61562ELL, 0xE700000000000000);
  v5 = sub_266DAA74C();
  MEMORY[0x26D5F1170](v5);

  v3[2].n128_u64[0] = v71;
  v3[2].n128_u64[1] = v75;
  sub_266DA7E0C();
  v6 = swift_allocObject();
  v6[2].n128_u64[0] = OUTLINED_FUNCTION_27_7(v6, xmmword_266DB05C0);
  v6[2].n128_u64[1] = v7;
  v6[3].n128_u64[0] = sub_266C2CDB0(7);
  v6[3].n128_u64[1] = v8;
  sub_266DA7E3C();
  v9 = swift_allocObject();
  v72 = OUTLINED_FUNCTION_27_7(v9, xmmword_266DAE4A0);
  v76 = v10;
  MEMORY[0x26D5F1170](0x2E65756C61562ELL, 0xE700000000000000);
  v11 = sub_266DAA74C();
  MEMORY[0x26D5F1170](v11);

  v9[2].n128_u64[0] = v72;
  v9[2].n128_u64[1] = v76;
  sub_266DA7E2C();
  v12 = 0;
  v13 = *(v2 + 16);
  *(v0 + 200) = v13;
  v14 = v2 + 24;
  v15 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
LABEL_2:
  v17 = (v14 + 48 * v12);
  while (v13 != v12)
  {
    if (v12 >= v13)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_33;
    }

    v19 = *(v17 + 41);
    v17 += 6;
    ++v12;
    if (v19)
    {
      v20 = *(v17 - 4);
      v68 = *(v17 - 5);
      v21 = *(v17 - 3);
      v22 = *(v17 - 2);
      v23 = *(v17 - 8);
      v24 = *v17;

      sub_266C292B4(v21, v22, v23);

      v69 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = *(v16 + 16);
        sub_266C38868();
      }

      v26 = *(v16 + 16);
      if (v26 >= *(v16 + 24) >> 1)
      {
        sub_266C38868();
      }

      *(v16 + 16) = v26 + 1;
      v27 = v16 + 48 * v26;
      *(v27 + 32) = v68;
      *(v27 + 40) = v69;
      OUTLINED_FUNCTION_19_10(v27);
      *(v28 + 72) = v24;
      v12 = v18;
      v15 = MEMORY[0x277D84F90];
      goto LABEL_2;
    }
  }

  v70 = v15;
  swift_getKeyPath();
  v29 = 0;
  v73 = v15;
  v30 = *(v16 + 16);
LABEL_13:
  v31 = 48 * v29;
  while (v30 != v29)
  {
    if (v29 >= *(v16 + 16))
    {
      goto LABEL_34;
    }

    v32 = v16 + v31;
    v33 = *(v16 + v31 + 72);
    v34 = v31 + 48;
    ++v29;
    v35 = *(v16 + v31 + 65);
    v37 = *(v32 + 48);
    v36 = *(v32 + 56);
    v38 = *(v32 + 40);
    v39 = *(v32 + 64);
    *(v0 + 64) = *(v32 + 32);
    *(v0 + 72) = v38;
    *(v0 + 80) = v37;
    *(v0 + 88) = v36;
    *(v0 + 96) = v39;
    *(v0 + 97) = v35;
    *(v0 + 104) = v33;

    sub_266C292B4(v37, v36, v39);
    swift_getAtKeyPath();

    sub_266C479B0(v37, v36, v39);

    v31 = v34;
    if (*(v0 + 112))
    {
      MEMORY[0x26D5F1270](v40);
      v41 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v41 >> 1)
      {
        OUTLINED_FUNCTION_3_21(v41);
        sub_266DAA95C();
      }

      sub_266DAA96C();
      v70 = v73;
      goto LABEL_13;
    }
  }

  v42 = *(v0 + 128);

  sub_266CC2D58(v70);

  sub_266DA7DDC();
  v43 = sub_266CC43FC(v16);

  sub_266CC4FB8();
  v45 = v44;

  sub_266DA7DAC();
  v46 = MEMORY[0x277D84F90];
  *(v0 + 120) = MEMORY[0x277D84F90];
  *(v0 + 208) = 0;
  if (*(v0 + 200))
  {
    OUTLINED_FUNCTION_3_26(*(v0 + 136));
    sub_266C292B4(v42, v45, v43);

    v47 = swift_task_alloc();
    *(v0 + 248) = v47;
    *v47 = v0;
    v48 = OUTLINED_FUNCTION_2_31(v47);

    sub_266CC2F80(v48);
  }

  else
  {
    v49 = v46[2];
    if (v49)
    {
      v50 = *(v0 + 184);
      sub_266C38978();
      v51 = v46 + 5;
      do
      {
        v52 = *(v0 + 192);
        v53 = *(v51 - 1);
        v54 = *v51;

        sub_266DA7C8C();
        v56 = v46[2];
        v55 = v46[3];
        if (v56 >= v55 >> 1)
        {
          OUTLINED_FUNCTION_3_21(v55);
          sub_266C38978();
        }

        v57 = *(v0 + 192);
        v58 = *(v0 + 176);
        v46[2] = v56 + 1;
        v59 = *(v50 + 80);
        OUTLINED_FUNCTION_8_9();
        (*(v50 + 32))(v46 + v60 + *(v50 + 72) * v56);
        v51 += 6;
        --v49;
      }

      while (v49);
    }

    v61 = *(v0 + 192);
    v63 = *(v0 + 160);
    v62 = *(v0 + 168);
    v64 = *(v0 + 152);
    v65 = *(v0 + 128);
    OUTLINED_FUNCTION_16_13();
    v66 = sub_266DA811C();

    (*(v63 + 8))(v62, v64);
    v74 = *(v0 + 120);
    sub_266C3815C(v66);
    sub_266DA7DBC();

    OUTLINED_FUNCTION_28();

    v67();
  }
}

uint64_t sub_266CC1F8C(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_21_1();
  *v5 = v4;
  v7 = *(v6 + 248);
  v8 = *v2;
  OUTLINED_FUNCTION_21_1();
  *v9 = v8;
  v4[32] = v1;

  if (v1)
  {
    v10 = v4[15];

    v11 = sub_266CC2468;
  }

  else
  {
    v4[33] = a1;
    v11 = sub_266CC20B4;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

void sub_266CC20B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_18_10();
  v16 = *(v14 + 232);
  v15 = *(v14 + 240);
  v18 = *(v14 + 216);
  v17 = *(v14 + 224);
  v19 = *(v14 + 272);
  sub_266C3815C(*(v14 + 264));

  sub_266C479B0(v17, v16, v19);

  v20 = *(v14 + 200);
  v21 = *(v14 + 208) + 1;
  *(v14 + 208) = v21;
  if (v21 == v20)
  {
    v22 = 0;
    v23 = MEMORY[0x277D84F90];
    v24 = 48;
    v25 = 24;
LABEL_3:
    v26 = v25 + v22 * v24;
    while (v21 != v22)
    {
      if (v22 >= v21)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      v27 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_25;
      }

      v28 = *(v14 + 136);
      v29 = *(v28 + v26 + 41);
      v26 += 48;
      ++v22;
      if (v29)
      {
        v31 = *(v28 + v26 - 40);
        v30 = *(v28 + v26 - 32);
        v32 = *(v28 + v26 - 24);
        v33 = *(v28 + v26 - 16);
        v34 = *(v28 + v26 - 8);
        v35 = *(v28 + v26);

        sub_266C292B4(v32, v33, v34);

        a10 = v25;
        a9 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = v23[2];
          sub_266C38868();
        }

        v37 = v23[2];
        if (v37 >= v23[3] >> 1)
        {
          sub_266C38868();
        }

        v23[2] = v37 + 1;
        v38 = &v23[6 * v37];
        v25 = a10;
        *(v38 + 32) = v31;
        *(v38 + 40) = v30;
        OUTLINED_FUNCTION_19_10(v38);
        *(v39 + 72) = v35;
        v21 = *(v14 + 200);
        v22 = v27;
        goto LABEL_3;
      }
    }

    v43 = v23[2];
    if (v43)
    {
      v44 = *(v14 + 184);
      v68 = MEMORY[0x277D84F90];
      sub_266C38978();
      a10 = v23;
      v45 = v23 + 5;
      do
      {
        v46 = *(v14 + 192);
        v47 = *(v45 - 1);
        v48 = *v45;

        sub_266DA7C8C();
        v49 = *(v68 + 16);
        if (v49 >= *(v68 + 24) >> 1)
        {
          sub_266C38978();
        }

        v50 = *(v14 + 192);
        v51 = *(v14 + 176);
        *(v68 + 16) = v49 + 1;
        v52 = *(v44 + 80);
        OUTLINED_FUNCTION_8_9();
        (*(v44 + 32))(v68 + v53 + *(v44 + 72) * v49);
        v45 += 6;
        --v43;
      }

      while (v43);
    }

    v54 = *(v14 + 192);
    v56 = *(v14 + 160);
    v55 = *(v14 + 168);
    v57 = *(v14 + 152);
    v58 = *(v14 + 128);
    OUTLINED_FUNCTION_16_13();
    v59 = sub_266DA811C();

    (*(v56 + 8))(v55, v57);
    v69 = *(v14 + 120);
    sub_266C3815C(v59);
    sub_266DA7DBC();

    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_68();

    v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, v69, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_3_26(*(v14 + 136) + 48 * v21);
    sub_266C292B4((v14 + 120), v15, v16);

    v40 = swift_task_alloc();
    *(v14 + 248) = v40;
    *v40 = v14;
    OUTLINED_FUNCTION_2_31();
    OUTLINED_FUNCTION_68();

    sub_266CC2F80(v41);
  }
}

uint64_t sub_266CC2468()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  v7 = *(v0 + 128);
  v8 = *(v0 + 272);

  sub_266C479B0(v4, v1, v8);

  v9 = sub_266DA7E5C();
  OUTLINED_FUNCTION_0(v9);
  (*(v10 + 8))(v7);

  OUTLINED_FUNCTION_28();
  v12 = *(v0 + 256);

  return v11();
}

uint64_t sub_266CC254C()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CB7C0);
  v1 = __swift_project_value_buffer(v0, qword_2800CB7C0);
  if (qword_2800C9110 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800E61A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266CC2614()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v4 = v3;
  v5 = sub_266DA957C();
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v76 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  v12 = OUTLINED_FUNCTION_0_2(v83);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_5();
  v77 = v17 - v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17_16();
  v78 = v20;
  v21 = sub_266DA7E5C();
  v22 = OUTLINED_FUNCTION_0_2(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_12();
  sub_266DA7E4C();
  OUTLINED_FUNCTION_4_23();
  sub_266DA7DCC();
  if (v2)
  {
    v71 = v0;
    v72 = v24;
    v74 = v4;
    v75 = v11;
    v73 = v21;
    v79 = v5;
    v84 = sub_266C3A14C(v2, v27, v28);
    v29 = 0;
    v82 = v2 & 0xC000000000000001;
    v30 = MEMORY[0x277D84F90];
    v81 = v2 & 0xFFFFFFFFFFFFFF8;
    v80 = xmmword_266DB05C0;
    while (v84 != v29)
    {
      if (v82)
      {
        v31 = MEMORY[0x26D5F1780](v29, v2);
      }

      else
      {
        if (v29 >= *(v81 + 16))
        {
          goto LABEL_34;
        }

        v31 = *(v2 + 8 * v29 + 32);
      }

      v32 = v31;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7F0, &unk_266DB6F20);
      v33 = *(v14 + 72);
      v34 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v35 = swift_allocObject();
      *(v35 + 16) = v80;
      v36 = v35 + v34;
      sub_266CC8050(v35 + v34);
      v37 = [v32 location];
      if (v37)
      {
        v38 = v37;
        sub_266D6D904(v36 + v33);

        v32 = v38;
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v36 + v33, 1, 1, v79);
      }

      v39 = *(v30 + 16);
      if (__OFADD__(v39, 2))
      {
        goto LABEL_35;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v40 = *(v30 + 24) >> 1, v40 < v39 + 2))
      {
        sub_266CFA440();
        v30 = v41;
        v40 = *(v41 + 24) >> 1;
      }

      if (v40 - *(v30 + 16) < 2)
      {
        goto LABEL_36;
      }

      swift_arrayInitWithCopy();

      v42 = *(v30 + 16);
      v43 = __OFADD__(v42, 2);
      v44 = v42 + 2;
      if (v43)
      {
        goto LABEL_37;
      }

      *(v30 + 16) = v44;
      ++v29;
    }

    v45 = *(v30 + 16);
    if (v45)
    {
      v46 = *(v14 + 80);
      OUTLINED_FUNCTION_8_9();
      v48 = v30 + v47;
      v84 = *(v14 + 72);
      v49 = v75;
      v50 = (v76 + 32);
      v51 = MEMORY[0x277D84F90];
      v52 = v79;
      do
      {
        v53 = v78;
        sub_266CC5920(v48, v78);
        v54 = v53;
        v55 = v77;
        sub_266CC5990(v54, v77, &qword_2800CA8B8, &qword_266DB30F0);
        if (__swift_getEnumTagSinglePayload(v55, 1, v52) == 1)
        {
          sub_266C1825C(v55, &qword_2800CA8B8, &qword_266DB30F0);
        }

        else
        {
          v56 = v55;
          v57 = *v50;
          (*v50)(v49, v56, v52);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = *(v51 + 16);
            OUTLINED_FUNCTION_5_23();
            sub_266CF9D4C();
            v51 = v65;
          }

          v59 = *(v51 + 16);
          v58 = *(v51 + 24);
          if (v59 >= v58 >> 1)
          {
            OUTLINED_FUNCTION_3_21(v58);
            sub_266CF9D4C();
            v51 = v66;
          }

          *(v51 + 16) = v59 + 1;
          v49 = v75;
          v60 = *(v76 + 80);
          OUTLINED_FUNCTION_8_9();
          v63 = v51 + v61 + *(v62 + 72) * v59;
          v52 = v79;
          v57(v63, v49, v79);
        }

        v48 += v84;
        --v45;
      }

      while (v45);
    }

    v21 = v73;
    v4 = v74;
    v0 = v71;
    v24 = v72;
  }

  sub_266DA7DAC();
  (*(v24 + 32))(v4, v0, v21);
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v21);
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CC2B34()
{
  sub_266CC2BC4();
  OUTLINED_FUNCTION_4_23();
  sub_266DA7DCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F88, &unk_266DB6EF0);
  v0 = swift_allocObject();
  v0[2].n128_u64[0] = OUTLINED_FUNCTION_27_7(v0, xmmword_266DAE4A0);
  v0[2].n128_u64[1] = v1;
  sub_266DA7E3C();
  sub_266DA7E5C();
  OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_266CC2BC4()
{
  sub_266DA7E4C();
  sub_266DA7DCC();
  sub_266C2CDB0(0);
  sub_266DA7E1C();
  sub_266DA7DFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F88, &unk_266DB6EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266DB05D0;
  v8 = sub_266C2CDB0(3);
  v11 = v1;
  MEMORY[0x26D5F1170](0x2E65756C61562ELL, 0xE700000000000000);
  v2 = sub_266DAA74C();
  MEMORY[0x26D5F1170](v2);

  *(v0 + 32) = v8;
  *(v0 + 40) = v11;
  v9 = sub_266C2CDB0(3);
  v12 = v3;
  MEMORY[0x26D5F1170](0x2E65756C61562ELL, 0xE700000000000000);
  v4 = sub_266DAA74C();
  MEMORY[0x26D5F1170](v4);

  *(v0 + 48) = v9;
  *(v0 + 56) = v12;
  v10 = sub_266C2CDB0(3);
  v13 = v5;
  MEMORY[0x26D5F1170](0x2E65756C61562ELL, 0xE700000000000000);
  v6 = sub_266DAA74C();
  MEMORY[0x26D5F1170](v6);

  *(v0 + 64) = v10;
  *(v0 + 72) = v13;
  sub_266DA7E2C();
  sub_266CC38FC();
  return sub_266DA7DDC();
}

uint64_t sub_266CC2D58(unint64_t a1)
{
  v2 = sub_266DA835C();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_266DA838C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  sub_266DA837C();
  sub_266CC3F58(a1);
  sub_266DA836C();
  sub_266DA834C();
  (*(v9 + 16))(v13, v15, v8);
  sub_266DA832C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7B8, &unk_266DB79E0);
  v16 = *(v3 + 72);
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_266DAE4A0;
  (*(v4 + 32))(v18 + v17, v7, v2);
  (*(v9 + 8))(v15, v8);
  return v18;
}

uint64_t sub_266CC2F80(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(sub_266DA750C() - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = *(*(sub_266DA926C() - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FB8, &qword_266DBB450) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_266DA7C9C();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CC30F4, 0, 0);
}

uint64_t sub_266CC30F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_18_10();
  v15 = v14[17];
  v16 = v14[8];
  v14[18] = *v16;
  v14[19] = *(v16 + 8);

  sub_266DA7C8C();
  v19 = *(v16 + 16);
  v14[20] = v19;
  v14[21] = *(v16 + 24);
  if (!*(v16 + 32))
  {
    v33 = *(v14[8] + 40);
    if (!sub_266C3A14C(v33, v17, v18) || ((sub_266CB9F54(0, (v33 & 0xC000000000000001) == 0, v33), (v33 & 0xC000000000000001) != 0) ? (v34 = MEMORY[0x26D5F1780](0, v33)) : (v34 = *(v33 + 32)), sub_266CC58B0(v34), !v35))
    {
    }

    v36 = v14[17];
    v67 = v14[16];
    v37 = v14[15];
    v38 = v14[12];
    v39 = v14[13];
    v40 = v14[11];
    sub_266DA7C8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FB0, &unk_266DB6C80);
    v41 = sub_266DA7C2C();
    OUTLINED_FUNCTION_11_3(v41);
    v43 = *(v42 + 72);
    *(OUTLINED_FUNCTION_11_13() + 16) = xmmword_266DAE4A0;
    v44 = *(v39 + 16);
    v44(v40, v36, v38);
    OUTLINED_FUNCTION_59();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v38);
    v44(v37, v67, v38);
    sub_266DA7C1C();
    v48 = *(v39 + 8);
    v48(v67, v38);
    v48(v36, v38);
    goto LABEL_10;
  }

  if (*(v16 + 32) == 1)
  {
    v20 = v14[17];
    v21 = v14[14];
    v67 = v14[15];
    v22 = v14[12];
    v23 = v14[13];
    v24 = v14[11];

    sub_266DA7C8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9FB0, &unk_266DB6C80);
    v25 = sub_266DA7C2C();
    OUTLINED_FUNCTION_11_3(v25);
    v27 = *(v26 + 72);
    *(OUTLINED_FUNCTION_11_13() + 16) = xmmword_266DAE4A0;
    v28 = *(v23 + 16);
    v28(v24, v20, v22);
    OUTLINED_FUNCTION_59();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v22);
    v28(v21, v67, v22);
    sub_266DA7C1C();
    v32 = *(v23 + 8);
    v32(v67, v22);
    v32(v20, v22);
LABEL_10:
    OUTLINED_FUNCTION_26_7();

    OUTLINED_FUNCTION_21_10();
    OUTLINED_FUNCTION_68();

    return v51(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, v67, a12, a13, a14);
  }

  v58 = v14[9];
  v59 = v14[10];
  v60 = v14[7];
  type metadata accessor for SiriFindMyCommonCATsSimple();
  sub_266DA90EC();
  sub_266C233D0(v60, (v14 + 2));
  v61 = v19;
  sub_266DA90DC();
  sub_266DA925C();
  v14[22] = sub_266DA91CC();
  sub_266DA900C();
  v62 = v60[4];
  __swift_project_boxed_opaque_existential_1(v60, v60[3]);
  v63 = v61;
  sub_266DA7AFC();
  v14[23] = sub_266DA8FBC();
  v64 = swift_task_alloc();
  v14[24] = v64;
  *v64 = v14;
  v64[1] = sub_266CC35CC;
  OUTLINED_FUNCTION_68();

  return sub_266D8E198(v65);
}

uint64_t sub_266CC35CC(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_21_1();
  *v5 = v4;
  v7 = *(v6 + 192);
  v8 = *v2;
  OUTLINED_FUNCTION_21_1();
  *v9 = v8;
  *(v4 + 200) = v1;

  if (v1)
  {
    v10 = sub_266CC3810;
  }

  else
  {
    *(v4 + 208) = a1;
    v10 = sub_266CC36EC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_266CC36EC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_18_10();
  v23 = v22[26];
  v25 = v22[22];
  v24 = v22[23];
  v26 = v22[20];
  v28 = v22[18];
  v27 = v22[19];
  v41 = v22[17];
  v29 = v22[13];
  v39 = v22[21];
  v40 = v22[12];
  sub_266DA91EC();

  OUTLINED_FUNCTION_4_23();
  sub_266C36B5C();

  sub_266C479B0(v26, v39, 2u);
  (*(v29 + 8))(v41, v40);
  OUTLINED_FUNCTION_26_7();

  OUTLINED_FUNCTION_21_10();
  OUTLINED_FUNCTION_68();

  return v32(v30, v31, v32, v33, v34, v35, v36, v37, v39, v40, v41, a12, a13, a14);
}

uint64_t sub_266CC3810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_18_10();
  v15 = v14[22];
  v16 = v14[23];
  v18 = v14[20];
  v17 = v14[21];
  v20 = v14[16];
  v19 = v14[17];
  v22 = v14[14];
  v21 = v14[15];
  v23 = v14[12];
  v24 = v14[13];
  v35 = v14[11];
  v36 = v14[10];
  v37 = v14[9];

  sub_266C479B0(v18, v17, 2u);
  (*(v24 + 8))(v19, v23);

  OUTLINED_FUNCTION_28();
  v25 = v14[25];
  OUTLINED_FUNCTION_68();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, a12, a13, a14);
}

uint64_t sub_266CC38FC()
{
  v0 = sub_266DA835C();
  v54 = *(v0 - 8);
  v55 = v0;
  v1 = *(v54 + 64);
  MEMORY[0x28223BE20](v0);
  v53 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_266DA829C();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v45 - v7;
  v56 = sub_266DA82EC();
  v47 = *(v56 - 8);
  v8 = *(v47 + 64);
  v9 = MEMORY[0x28223BE20](v56);
  v49 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7B0, &qword_266DB4950);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v45 - v15;
  v17 = sub_266DA824C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v45 - v23;
  v25 = sub_266DA83BC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v45 - v31;
  sub_266DA83AC();
  sub_266CC3E7C(v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_266C1825C(v16, &qword_2800CB7B0, &qword_266DB4950);
  }

  else
  {
    (*(v18 + 32))(v24, v16, v17);
    (*(v18 + 16))(v22, v24, v17);
    sub_266DA839C();
    (*(v18 + 8))(v24, v17);
  }

  v45 = v32;
  v33 = v12;
  sub_266DA82DC();
  v34 = *(v26 + 16);
  v46 = v25;
  v34(v30, v32, v25);
  sub_266DA82CC();
  v35 = v48;
  sub_266DA828C();
  v36 = v47;
  (*(v47 + 16))(v49, v33, v56);
  sub_266DA827C();
  v37 = v53;
  sub_266DA834C();
  v38 = v51;
  v39 = v52;
  (*(v51 + 16))(v50, v35, v52);
  sub_266DA833C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7B8, &unk_266DB79E0);
  v40 = v54;
  v41 = *(v54 + 72);
  v42 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_266DAE4A0;
  (*(v40 + 32))(v43 + v42, v37, v55);
  (*(v38 + 8))(v35, v39);
  (*(v36 + 8))(v33, v56);
  (*(v26 + 8))(v45, v46);
  return v43;
}

uint64_t sub_266CC3E7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_266DA8B5C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_266DA8B4C();
  v6 = sub_266DA845C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_266DA844C();
  sub_266DA89FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_266DAE3B0;
  *(v9 + 32) = v5;

  sub_266CC5640(v9, a1);
}

void sub_266CC3F58(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7B0, &qword_266DB4950);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - v4;
  v48 = sub_266DA824C();
  v6 = *(v48 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v48);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = &v32 - v10;
  v46 = sub_266DA831C();
  v11 = *(v46 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v46);
  v45 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v47 = sub_266DA82EC();
  v17 = *(v47 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v47);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v21 = sub_266DAAD5C();
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21)
  {
    v44 = v5;
    v49 = MEMORY[0x277D84F90];
    sub_266C389D0();
    if (v21 < 0)
    {
      __break(1u);
    }

    else
    {
      v22 = 0;
      v23 = v49;
      v34 = (v6 + 16);
      v35 = (v6 + 32);
      v33 = (v6 + 8);
      v41 = (v11 + 16);
      v42 = a1 & 0xC000000000000001;
      v39 = v17 + 32;
      v40 = (v11 + 8);
      v43 = a1;
      v36 = v17;
      do
      {
        if (v42)
        {
          v24 = MEMORY[0x26D5F1780](v22, a1);
        }

        else
        {
          v24 = *(a1 + 8 * v22 + 32);
        }

        v25 = v24;
        v26 = v44;
        sub_266DA830C();
        sub_266CC5450(v25, v26);
        v27 = v48;
        if (__swift_getEnumTagSinglePayload(v26, 1, v48) == 1)
        {
          sub_266C1825C(v26, &qword_2800CB7B0, &qword_266DB4950);
        }

        else
        {
          v28 = v37;
          (*v35)(v37, v26, v27);
          (*v34)(v38, v28, v27);
          sub_266DA82FC();
          v29 = v28;
          v17 = v36;
          (*v33)(v29, v27);
        }

        sub_266DA82DC();
        v30 = v46;
        (*v41)(v45, v16, v46);
        sub_266DA82BC();

        (*v40)(v16, v30);
        v49 = v23;
        v31 = *(v23 + 16);
        if (v31 >= *(v23 + 24) >> 1)
        {
          sub_266C389D0();
          v23 = v49;
        }

        ++v22;
        *(v23 + 16) = v31 + 1;
        (*(v17 + 32))(v23 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v31, v20, v47);
        a1 = v43;
      }

      while (v21 != v22);
    }
  }
}

uint64_t sub_266CC43FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAE10, &qword_266DB30E8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v43 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  v12 = sub_266DA957C();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v51 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v42 - v17;
  v18 = *(a1 + 16);
  if (v18)
  {
    v42 = " location wait queue";
    v46 = v16;
    v47 = (v16 + 32);
    v44 = v16 + 8;
    v45 = (v16 + 16);
    v52 = v9;
    v53 = MEMORY[0x277D84F90];
    v19 = (a1 + 72);
    v48 = v12;
    v49 = v11;
    while (1)
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v22 = *(v19 - 2);
      v23 = *(v19 - 8);
      v24 = *(v19 - 7);
      v25 = *v19;
      v54 = *(v19 - 5);
      v55 = v20;
      v56 = v21;
      v57 = v22;
      v58 = v23;
      v59 = v24;
      v60 = v25;

      sub_266C292B4(v21, v22, v23);
      v26 = sub_266C28524();
      if (v26)
      {
        if (v26 == 1)
        {

          sub_266C479B0(v21, v22, v23);
LABEL_10:
          v28 = 1;
          goto LABEL_11;
        }

        if (!v27)
        {

          sub_266C479B0(v21, v22, v23);

          goto LABEL_10;
        }

        v29 = sub_266DA94FC();
        __swift_storeEnumTagSinglePayload(v43, 1, 1, v29);

        sub_266DA953C();

        sub_266C479B0(v21, v22, v23);

        v28 = 0;
      }

      else
      {

        sub_266C479B0(v21, v22, v23);

        v28 = 1;
      }

LABEL_11:

      v30 = v52;
      v31 = v48;
      __swift_storeEnumTagSinglePayload(v52, v28, 1, v48);
      v32 = v49;
      sub_266CC5920(v30, v49);
      if (__swift_getEnumTagSinglePayload(v32, 1, v31) == 1)
      {
        sub_266C1825C(v30, &qword_2800CA8B8, &qword_266DB30F0);
        sub_266C1825C(v32, &qword_2800CA8B8, &qword_266DB30F0);
      }

      else
      {
        v33 = *v47;
        v34 = v50;
        (*v47)(v50, v32, v31);
        (*v45)(v51, v34, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = *(v53 + 16);
          sub_266CF9D4C();
          v53 = v39;
        }

        v35 = *(v53 + 16);
        if (v35 >= *(v53 + 24) >> 1)
        {
          sub_266CF9D4C();
          v53 = v40;
        }

        sub_266C1825C(v30, &qword_2800CA8B8, &qword_266DB30F0);
        v36 = v46;
        (*(v46 + 8))(v50, v31);
        v37 = v53;
        *(v53 + 16) = v35 + 1;
        v33((v37 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35), v51, v31);
      }

      v19 += 6;
      if (!--v18)
      {
        return v53;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_266CC4918()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v2 = sub_266DA957C();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v44 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_5();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_16();
  v46 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  v13 = OUTLINED_FUNCTION_4_3(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_5();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v40 - v20;
  if (!(v1 >> 62))
  {
    v22 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_3;
    }

LABEL_18:
    OUTLINED_FUNCTION_5();
    return;
  }

  v22 = sub_266DAAD5C();
  if (!v22)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v22 >= 1)
  {
    v23 = 0;
    v24 = v1 & 0xC000000000000001;
    OUTLINED_FUNCTION_13_10();
    v25 = MEMORY[0x277D84F90];
    v42 = v9;
    v43 = v1;
    v41 = v1 & 0xC000000000000001;
    do
    {
      if (v24)
      {
        v26 = MEMORY[0x26D5F1780](v23, v1);
      }

      else
      {
        v26 = *(v1 + 8 * v23 + 32);
      }

      v27 = v26;
      sub_266D6D904(v21);

      sub_266CC5920(v21, v18);
      if (__swift_getEnumTagSinglePayload(v18, 1, v2) == 1)
      {
        sub_266C1825C(v21, &qword_2800CA8B8, &qword_266DB30F0);
        sub_266C1825C(v18, &qword_2800CA8B8, &qword_266DB30F0);
      }

      else
      {
        v28 = v22;
        v29 = v46;
        v30 = *v45;
        (*v45)(v46, v18, v2);
        (*v40[1])(v9, v29, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = *(v25 + 16);
          OUTLINED_FUNCTION_5_23();
          sub_266CF9D4C();
          v25 = v38;
        }

        v32 = *(v25 + 16);
        v31 = *(v25 + 24);
        if (v32 >= v31 >> 1)
        {
          OUTLINED_FUNCTION_3_21(v31);
          sub_266CF9D4C();
          v25 = v39;
        }

        v33 = v44;
        (*(v44 + 8))(v46, v2);
        sub_266C1825C(v21, &qword_2800CA8B8, &qword_266DB30F0);
        *(v25 + 16) = v32 + 1;
        v34 = *(v33 + 80);
        OUTLINED_FUNCTION_8_9();
        v36 = v25 + v35 + *(v33 + 72) * v32;
        v9 = v42;
        v30(v36, v42, v2);
        v1 = v43;
        v22 = v28;
        v24 = v41;
      }

      ++v23;
    }

    while (v22 != v23);
    goto LABEL_18;
  }

  __break(1u);
}

void sub_266CC4C74()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v2 = sub_266DA957C();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v42 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_5();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_17_16();
  v44 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  v13 = OUTLINED_FUNCTION_4_3(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_5();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v38 - v20;
  if (!(v1 >> 62))
  {
    v22 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_3;
    }

LABEL_18:
    OUTLINED_FUNCTION_5();
    return;
  }

  v22 = sub_266DAAD5C();
  if (!v22)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v22 >= 1)
  {
    v23 = 0;
    v24 = v1 & 0xC000000000000001;
    OUTLINED_FUNCTION_13_10();
    v25 = MEMORY[0x277D84F90];
    v40 = v9;
    v41 = v1;
    v39 = v22;
    do
    {
      if (v24)
      {
        v26 = MEMORY[0x26D5F1780](v23, v1);
      }

      else
      {
        v26 = *(v1 + 8 * v23 + 32);
      }

      sub_266D4E120(v26, v21);
      sub_266CC5920(v21, v18);
      if (__swift_getEnumTagSinglePayload(v18, 1, v2) == 1)
      {
        sub_266C1825C(v21, &qword_2800CA8B8, &qword_266DB30F0);
        sub_266C1825C(v18, &qword_2800CA8B8, &qword_266DB30F0);
      }

      else
      {
        v27 = v44;
        v28 = *v43;
        (*v43)(v44, v18, v2);
        (*v38[1])(v9, v27, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = *(v25 + 16);
          OUTLINED_FUNCTION_5_23();
          sub_266CF9D4C();
          v25 = v36;
        }

        v30 = *(v25 + 16);
        v29 = *(v25 + 24);
        if (v30 >= v29 >> 1)
        {
          OUTLINED_FUNCTION_3_21(v29);
          sub_266CF9D4C();
          v25 = v37;
        }

        v31 = v42;
        (*(v42 + 8))(v44, v2);
        sub_266C1825C(v21, &qword_2800CA8B8, &qword_266DB30F0);
        *(v25 + 16) = v30 + 1;
        v32 = *(v31 + 80);
        OUTLINED_FUNCTION_8_9();
        v34 = v25 + v33 + *(v31 + 72) * v30;
        v9 = v40;
        v28(v34, v40, v2);
        v1 = v41;
        v22 = v39;
      }

      ++v23;
    }

    while (v22 != v23);
    goto LABEL_18;
  }

  __break(1u);
}

void sub_266CC4FB8()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAE10, &qword_266DB30E8);
  v4 = OUTLINED_FUNCTION_4_3(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v73 = &v67 - v7;
  v80 = sub_266DA957C();
  v8 = OUTLINED_FUNCTION_0_2(v80);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_5();
  v79 = (v13 - v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_16();
  v78 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7D8, &qword_266DB4A58);
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v67 = (&v67 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7E0, &qword_266DB4A60);
  v23 = OUTLINED_FUNCTION_4_3(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_0_5();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v67 - v30;
  v32 = sub_266DA74AC();
  v33 = OUTLINED_FUNCTION_0_2(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_12();
  sub_266DA749C();
  v71 = sub_266DA747C();
  v74 = v38;
  (*(v35 + 8))(v0, v32);
  v39 = 0;
  v40 = *(v2 + 16);
  v75 = (v10 + 16);
  v76 = v10;
  v77 = (v10 + 32);
  v68 = v2;
  v69 = v10 + 8;
  v41 = MEMORY[0x277D84F90];
  v72 = v28;
  for (i = v40; ; v40 = i)
  {
    if (v39 == v40)
    {
      v42 = 1;
      v39 = v40;
      goto LABEL_7;
    }

    if (v39 >= v40)
    {
      break;
    }

    if (__OFADD__(v39, 1))
    {
      goto LABEL_15;
    }

    v43 = *(v76 + 80);
    OUTLINED_FUNCTION_8_9();
    v44 = v67;
    v47 = v68 + v45 + *(v46 + 72) * v39;
    v48 = *(v17 + 48);
    *v67 = v39;
    (*(v46 + 16))(v44 + v48, v47, v80);
    sub_266CC5990(v44, v28, &qword_2800CB7D8, &qword_266DB4A58);
    v42 = 0;
    ++v39;
LABEL_7:
    __swift_storeEnumTagSinglePayload(v28, v42, 1, v17);
    sub_266CC5990(v28, v31, &qword_2800CB7E0, &qword_266DB4A60);
    if (__swift_getEnumTagSinglePayload(v31, 1, v17) == 1)
    {

      OUTLINED_FUNCTION_5();
      return;
    }

    v49 = *v31;
    v50 = v17;
    v51 = v78;
    v52 = *v77;
    v53 = v80;
    (*v77)(v78, &v31[*(v17 + 48)], v80);

    sub_266DA94EC();
    sub_266DA94FC();
    OUTLINED_FUNCTION_59();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
    sub_266DA955C();
    (*v75)(v79, v51, v53);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = *(v41 + 16);
      OUTLINED_FUNCTION_5_23();
      sub_266CF9D4C();
      v41 = v65;
    }

    v59 = *(v41 + 16);
    v58 = *(v41 + 24);
    if (v59 >= v58 >> 1)
    {
      OUTLINED_FUNCTION_3_21(v58);
      sub_266CF9D4C();
      v41 = v66;
    }

    v60 = v76;
    v61 = v80;
    (*(v76 + 8))(v78, v80);
    *(v41 + 16) = v59 + 1;
    v62 = *(v60 + 80);
    OUTLINED_FUNCTION_8_9();
    v52(v41 + v63 + *(v60 + 72) * v59, v79, v61);
    v17 = v50;
    v28 = v72;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_266CC5450@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_266DA8B5C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_266DA8B4C();
  v8 = sub_266DA845C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_266DA844C();
  v11 = sub_266DA895C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_266DA894C();
  v14 = [a1 deviceOwner];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 displayName];

    sub_266DAA70C();
  }

  sub_266DA893C();

  sub_266DA842C();

  sub_266D9BD24(a1);
  if (v17)
  {
    sub_266DA843C();
  }

  sub_266CAB3DC(a1);
  if (v18)
  {
    sub_266DA843C();
  }

  sub_266DA89FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_266DAE3B0;
  *(v19 + 32) = v7;

  sub_266CC5640(v19, a2);
}

uint64_t sub_266CC5640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_266DA824C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB7E8, &unk_266DB79F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v15[-v11];
  v13 = sub_266DA86BC();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  MEMORY[0x26D5EEFB0](a1, v12);
  sub_266C1825C(v12, &qword_2800CB7E8, &unk_266DB79F0);
  sub_266DA83DC();

  (*(v5 + 32))(a2, v8, v4);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t sub_266CC58B0(void *a1)
{
  v2 = [a1 productNameSemantic];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266DAA70C();

  return v3;
}

uint64_t sub_266CC5920(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8B8, &qword_266DB30F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266CC5990(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_26@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(v1 + 216) = v3;
  v5 = *(a1 + 48);
  *(v1 + 224) = v5;
  v6 = *(a1 + 56);
  *(v1 + 232) = v6;
  v7 = *(a1 + 64);
  *(v1 + 272) = v7;
  v8 = *(a1 + 65);
  v9 = *(a1 + 72);
  *(v1 + 240) = v9;
  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  *(v1 + 32) = v5;
  *(v1 + 40) = v6;
  *(v1 + 48) = v7;
  *(v1 + 49) = v8;
  *(v1 + 56) = v9;
}

uint64_t OUTLINED_FUNCTION_11_13()
{
  v3 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

void OUTLINED_FUNCTION_13_10()
{
  v1 = *(v0 - 104);
  *(v0 - 96) = v1 + 32;
  *(v0 - 144) = v1 + 8;
  *(v0 - 136) = v1 + 16;
}

uint64_t OUTLINED_FUNCTION_16_13()
{

  return sub_266DA810C();
}

void OUTLINED_FUNCTION_19_10(uint64_t a1@<X8>)
{
  *(a1 + 48) = v1;
  *(a1 + 56) = v2;
  *(a1 + 64) = v3;
  *(a1 + 65) = 1;
}

uint64_t OUTLINED_FUNCTION_26_7()
{
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
}

unint64_t OUTLINED_FUNCTION_27_7(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_266C2CDB0(3);
}

uint64_t sub_266CC5B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_2800C9280;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = sub_266DA94AC();
  __swift_project_value_buffer(v7, qword_2800CB7F8);

  v8 = sub_266DA948C();
  v9 = sub_266DAAB0C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v10 = 136315650;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB810, &qword_266DB4A70);
    v12 = MEMORY[0x26D5F12B0](a2, v11);
    v14 = v13;

    v15 = sub_266C22A3C(v12, v14, &v27);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = sub_266DA782C();
    v17 = MEMORY[0x26D5F12B0](a3, v16);
    v19 = v18;

    v20 = sub_266C22A3C(v17, v19, &v27);

    *(v10 + 14) = v20;
    *(v10 + 22) = 2080;
    sub_266CC628C(&qword_2800CB818, MEMORY[0x277D5B778]);
    v21 = sub_266DAB13C();
    v23 = v22;

    v24 = sub_266C22A3C(v21, v23, &v27);

    *(v10 + 24) = v24;
    _os_log_impl(&dword_266C08000, v8, v9, "<RootFlow \n preconditionFlows: %s \n prerequisiteFlows: %s \n mainFlow: %s\n>", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D5F2480](v26, -1, -1);
    MEMORY[0x26D5F2480](v10, -1, -1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_266CC5E74()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CB7F8);
  v1 = __swift_project_value_buffer(v0, qword_2800CB7F8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266CC5FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  return MEMORY[0x2822009F8](sub_266CC5FE4, 0, 0);
}

uint64_t sub_266CC5FE4()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = sub_266DA784C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v8 = sub_266DA783C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266DAE3B0;
  *(inited + 32) = v4;

  sub_266C38390(inited);
  type metadata accessor for EachFlow();
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  v0[7] = v10;
  v0[8] = v8;
  sub_266CC628C(&qword_2800CB820, type metadata accessor for EachFlow);
  v0[9] = sub_266DA79DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB828, &qword_266DB4B28);
  sub_266CC62D4();
  sub_266DA7D5C();

  v11 = v0[1];

  return v11();
}

uint64_t sub_266CC61BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_266CC5F64();
}

uint64_t sub_266CC61C8(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_266C29DCC;

  return sub_266CC5FC0(a1, v4, v5, v6);
}

uint64_t sub_266CC628C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266CC62D4()
{
  result = qword_2800CB830;
  if (!qword_2800CB830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CB828, &qword_266DB4B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB830);
  }

  return result;
}

uint64_t sub_266CC6338()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CB838);
  v1 = __swift_project_value_buffer(v0, qword_2800CB838);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AceDevicePinger.init(aceService:useNewPlugin:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = sub_266C0B0D8(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t AceDevicePinger.ping(deviceId:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB850, &qword_266DB4B30);
  v6 = OUTLINED_FUNCTION_0_2(v36);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v35 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x277D47230]) init];
  sub_266CC7538(a1, a2, v13);
  v14 = [objc_allocWithZone(MEMORY[0x277D47238]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_266DAE3B0;
  *(v15 + 32) = v13;
  v16 = v13;
  sub_266CC7590(v15, v14);
  v17 = *MEMORY[0x277D47D00];
  v18 = sub_266DAA70C();
  sub_266CC7614(v18, v19, v14);
  v20 = *(v3 + 40);
  sub_266D4E6B4();
  if (qword_2800C9288 != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v21 = sub_266DA94AC();
  __swift_project_value_buffer(v21, qword_2800CB838);
  sub_266CC7678(v3, &v37);
  v22 = sub_266DA948C();
  v23 = sub_266DAAB0C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    v25 = v38[24];
    sub_266CC76B0(&v37);
    *(v24 + 4) = v25;
    _os_log_impl(&dword_266C08000, v22, v23, "AceDevicePinger processing playSound request. { useNewPlugin: %{BOOL}d }", v24, 8u);
    OUTLINED_FUNCTION_6_1();
  }

  else
  {
    sub_266CC76B0(&v37);
  }

  sub_266CC7678(v3, &v37);
  v26 = swift_allocObject();
  v27 = *v38;
  *(v26 + 16) = v37;
  *(v26 + 32) = v27;
  *(v26 + 41) = *&v38[9];
  *(v26 + 64) = v14;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB858, &qword_266DB4B38);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = v14;
  *&v37 = sub_266DA97AC();
  sub_266C230E8(&qword_2800CB860, &qword_2800CB858, &qword_266DB4B38);
  sub_266DA984C();

  sub_266C230E8(&qword_2800CB868, &qword_2800CB850, &qword_266DB4B30);
  v32 = v36;
  v33 = sub_266DA97EC();

  (*(v8 + 8))(v12, v32);
  return v33;
}

uint64_t sub_266CC67DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18[-1] - v10;
  v12 = sub_266DAA9EC();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  sub_266CC7678(a3, &v17);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v14 = v18[0];
  *(v13 + 32) = v17;
  *(v13 + 48) = v14;
  *(v13 + 57) = *(v18 + 9);
  *(v13 + 80) = a4;
  *(v13 + 88) = a1;
  *(v13 + 96) = a2;
  v15 = a4;

  sub_266CD8C08();
}

uint64_t sub_266CC6900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_266DA7EEC();
  v7[7] = v8;
  v9 = *(v8 - 8);
  v7[8] = v9;
  v10 = *(v9 + 64) + 15;
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB870, &qword_266DB4B98);
  v7[12] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CC6A18, 0, 0);
}

uint64_t sub_266CC6A18()
{
  v1 = v0[3];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = *(MEMORY[0x277D5BFB8] + 4);
  v5 = swift_task_alloc();
  v0[14] = v5;
  v6 = sub_266C29814(0, &qword_2800CB878, 0x277D471B0);
  *v5 = v0;
  v5[1] = sub_266CC6AF4;
  v7 = v0[4];

  return MEMORY[0x2821BB6A0](v7, v3, v6, v2);
}

uint64_t sub_266CC6AF4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_266CC6D1C;
  }

  else
  {
    *(v4 + 128) = a1;
    v7 = sub_266CC6C1C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_266CC6C1C()
{
  v16 = v0;
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v5 = v0[5];
  v4 = v0[6];
  *v3 = v1;
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  sub_266CC6F14(v3);
  sub_266C3A088(v3, &qword_2800CB870, &qword_266DB4B98);
  v14 = v6;
  v15 = 0;
  v7 = v6;
  v5(&v14);

  sub_266C9D0D4(v14, v15);
  v8 = v0[13];
  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_266CC6D1C()
{
  v27 = v0;
  v1 = *(v0 + 120);
  *(v0 + 16) = v1;
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 120);
  if (v5)
  {
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v10 = *(v0 + 80);
    v9 = *(v0 + 88);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 48);
    v14 = *(v0 + 56);
    v25 = *(v0 + 40);

    (*(v12 + 32))(v9, v11, v14);
    v15 = *(v12 + 16);
    v15(v7, v9, v14);
    swift_storeEnumTagMultiPayload();
    sub_266CC6F14(v7);
    sub_266C3A088(v7, &qword_2800CB870, &qword_266DB4B98);
    v15(v10, v9, v14);
    sub_266C2D2AC(v10, v26);
    OUTLINED_FUNCTION_3_27();
    v25();
    (*(v12 + 8))(v9, v14);
    v16 = *(v0 + 16);
  }

  else
  {
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);

    OUTLINED_FUNCTION_3_27();
    v17();
    v16 = v6;
  }

  v19 = *(v0 + 104);
  v20 = *(v0 + 80);
  v21 = *(v0 + 88);
  v22 = *(v0 + 72);

  v23 = *(v0 + 8);

  return v23();
}

void sub_266CC6F14(uint64_t a1)
{
  v2 = sub_266DA7EEC();
  v3 = OUTLINED_FUNCTION_0_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB870, &qword_266DB4B98);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v45 - v15);
  sub_266CC7870(a1, v45 - v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_266C3A088(v16, &qword_2800CB870, &qword_266DB4B98);
    if (qword_2800C9288 != -1)
    {
      OUTLINED_FUNCTION_0_45();
    }

    v24 = sub_266DA94AC();
    __swift_project_value_buffer(v24, qword_2800CB838);
    v25 = sub_266DA948C();
    v26 = sub_266DAAB0C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_266C08000, v25, v26, "AceDevicePinger playSound succeeded.", v27, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    goto LABEL_11;
  }

  v17 = (*(v5 + 88))(v16, v2);
  if (v17 == *MEMORY[0x277D5BE70])
  {
    (*(v5 + 96))(v16, v2);
    v18 = *v16;
    if (qword_2800C9288 != -1)
    {
      OUTLINED_FUNCTION_0_45();
    }

    v19 = sub_266DA94AC();
    __swift_project_value_buffer(v19, qword_2800CB838);
    v20 = v18;
    v21 = sub_266DA948C();
    v22 = sub_266DAAAEC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      swift_getErrorValue();
      *(v23 + 4) = sub_266D9D360(v45[2]);

      _os_log_impl(&dword_266C08000, v21, v22, "AceDevicePinger playSound failed with internal error: code %ld", v23, 0xCu);
      OUTLINED_FUNCTION_6_1();
    }

    else
    {
    }

    return;
  }

  if (v17 == *MEMORY[0x277D5BE80])
  {
    (*(v5 + 96))(v16, v2);
    v28 = *v16;
    if (qword_2800C9288 != -1)
    {
      OUTLINED_FUNCTION_0_45();
    }

    v29 = sub_266DA94AC();
    __swift_project_value_buffer(v29, qword_2800CB838);
    v25 = v28;
    v30 = sub_266DA948C();
    v31 = sub_266DAAAEC();

    if (!os_log_type_enabled(v30, v31))
    {

      return;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = [v25 dictionary];
    *(v32 + 4) = v34;
    *v33 = v34;
    _os_log_impl(&dword_266C08000, v30, v31, "AceDevicePinger playSound got failure response: %@", v32, 0xCu);
    sub_266C3A088(v33, &qword_2800C9F78, &unk_266DB1430);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();

LABEL_11:
    return;
  }

  (*(v5 + 32))(v12, v16, v2);
  if (qword_2800C9288 != -1)
  {
    OUTLINED_FUNCTION_0_45();
  }

  v35 = sub_266DA94AC();
  __swift_project_value_buffer(v35, qword_2800CB838);
  (*(v5 + 16))(v10, v12, v2);
  v36 = sub_266DA948C();
  v37 = sub_266DAAAEC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    v46 = v45[0];
    *v38 = 136315138;
    sub_266CC78E0();
    v39 = sub_266DAB13C();
    v41 = v40;
    v42 = *(v5 + 8);
    v42(v10, v2);
    v43 = sub_266C22A3C(v39, v41, &v46);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_266C08000, v36, v37, "AceDevicePinger playSound failed to submit command: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45[0]);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();

    v42(v12, v2);
  }

  else
  {

    v44 = *(v5 + 8);
    v44(v10, v2);
    v44(v12, v2);
  }
}

void sub_266CC7538(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266DAA6FC();
  [a3 setDeviceId_];
}

void sub_266CC7590(uint64_t a1, void *a2)
{
  sub_266C29814(0, &qword_2800CAEE0, 0x277D47230);
  v3 = sub_266DAA91C();

  [a2 setDevices_];
}

void sub_266CC7614(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266DAA6FC();

  [a3 setAction_];
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

uint64_t sub_266CC7700(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266CC7740(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_266CC779C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_266C29DCC;

  return sub_266CC6900(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

uint64_t sub_266CC7870(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB870, &qword_266DB4B98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_266CC78E0()
{
  result = qword_2800CB880;
  if (!qword_2800CB880)
  {
    sub_266DA7EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB880);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_45()
{

  return swift_once();
}

id sub_266CC796C(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v30 = *(a1 + 16);
  v3 = *(&v30 + 1);
  v4 = v2;
  if (*(&v30 + 1))
  {
    sub_266CAA834(&v30, v31);
    v3 = sub_266DAA6FC();
    v4 = sub_266CAA8A4(&v30);
  }

  OUTLINED_FUNCTION_0_46(v4, sel_setDeviceClass_);

  if (*(a1 + 8))
  {
    v6 = *a1;
    v7 = *(a1 + 8);

    v8 = sub_266DAA6FC();
  }

  else
  {
    v8 = 0;
  }

  OUTLINED_FUNCTION_0_46(v5, sel_setDeviceId_);

  if (*(a1 + 56))
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);

    v12 = sub_266DAA6FC();
  }

  else
  {
    v12 = 0;
  }

  OUTLINED_FUNCTION_0_46(v9, sel_setDeviceName_);

  if (*(a1 + 40))
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);

    v16 = sub_266DAA6FC();
  }

  else
  {
    v16 = 0;
  }

  OUTLINED_FUNCTION_0_46(v13, sel_setProductName_);

  v17 = *(a1 + 96);
  if (v17 == 1)
  {
    v18 = sub_266C9D1E0(a1);
    v19 = 0;
  }

  else
  {
    v20 = *(a1 + 88);
    v21 = *(a1 + 120);
    v32 = *(a1 + 104);
    v33 = v21;
    v34 = *(a1 + 136);
    v35 = *(a1 + 152);
    v31[0] = v20;
    v31[1] = v17;
    sub_266CC7B8C();
    v25[0] = v20;
    v25[1] = v17;
    v22 = *(a1 + 120);
    v26 = *(a1 + 104);
    v27 = v22;
    v28 = *(a1 + 136);
    v29 = *(a1 + 152);
    sub_266CC7BD0(v25, &v24);
    v19 = sub_266CAA660(v31);
    v18 = sub_266C9D1E0(a1);
  }

  OUTLINED_FUNCTION_0_46(v18, sel_setOwner_);

  return v2;
}

unint64_t sub_266CC7B8C()
{
  result = qword_2800CB888;
  if (!qword_2800CB888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800CB888);
  }

  return result;
}

id OUTLINED_FUNCTION_0_46(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_266CC7C44()
{
  v1 = sub_266D9BD18(v0);
  if (v2)
  {
    if (v1 == 1296389193 && v2 == 0xE400000000000000)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_266DAB17C();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_266CC7CC0(void *a1)
{
  v3 = sub_266DA750C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FindmyDevice(0);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = v1;
  sub_266DA7AFC();
  return sub_266D9AF54(v8, v6, 0, 0xF000000000000000, 0, 0, 0, 0);
}

uint64_t sub_266CC7DA4()
{
  sub_266C39CC0(v0, &selRef_productType);
  if (v1)
  {
    sub_266C680F8();
    v2 = sub_266DAACBC();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id sub_266CC7E38(void *a1)
{
  v21 = sub_266C39CC0(a1, &selRef_deviceId);
  v3 = v2;
  v4 = sub_266C39CC0(a1, &selRef_deviceName);
  v6 = v5;
  v7 = sub_266C39CC0(a1, &selRef_deviceClass);
  v9 = v8;
  v10 = [a1 owner];
  if (v10)
  {
    sub_266C9A2C4();
    sub_266C37440();
    v10 = v11;
  }

  v12 = sub_266C39CC0(a1, &selRef_productName);
  v14 = v13;
  v15 = [a1 thisDevice];
  v16 = sub_266C39CC0(a1, &selRef_deviceLocality);
  v18 = sub_266C29BAC(v16, v17);
  v19 = DeviceDetail.__allocating_init(identifier:unifiedIdentifier:deviceName:deviceClass:deviceOwner:productName:productType:productNameSemantic:deviceClassSemantic:category:emoji:isThisDevice:locality:isEarbuds:isHeadphones:canPlaySound:specificityLevel:location:)(v21, v3, 0, 0, v4, v6, v7, v9, v10, v12, v14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v15, v18, 0, 0, 1u, 2, 0);

  return v19;
}

uint64_t sub_266CC7FB0()
{
  v1 = [v0 isEarbuds];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 BOOLValue];

    if (v3)
    {
      return 1;
    }
  }

  v5 = [v0 isHeadphones];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v4 = [v5 BOOLValue];

  return v4;
}

uint64_t sub_266CC8050@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAE10, &qword_266DB30E8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = sub_266CC8EEC();
  if (v6)
  {
    if (v6 != 1)
    {
      if (v7)
      {
        v8 = sub_266DA94FC();
        __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
        sub_266DA953C();
        v9 = sub_266DA957C();
        return __swift_storeEnumTagSinglePayload(a1, 0, 1, v9);
      }
    }
  }

  else
  {
  }

  v11 = sub_266DA957C();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
}

id sub_266CC81C0(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(a4 + 32);
  v10 = *(a4 + 40);
  v11 = *(a4 + 48);
  sub_266C233D0(a1, v20);
  v12 = *(a4 + 8);
  if (v12)
  {
    v13 = *a4;
    v14 = (v11 >> 8) & 1;

    sub_266C3A088(a4, &qword_2800CB890, &unk_266DB4BA0);
  }

  else
  {
    LOBYTE(v14) = 0;
    LOBYTE(v11) = 0;
    v9 = 0;
    v10 = 0;
    v7 = 0;
    v8 = 0;
    v13 = 0;
  }

  v15 = sub_266CC82D0(v20, a2, a3, v13, v12, v7, v8, v9, v10, v11 & 1, v14, a5);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v15;
}

id sub_266CC82D0(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, unsigned __int8 a11, uint64_t a12)
{
  v107 = a4;
  v103 = a8;
  v104 = a7;
  v105 = a6;
  v106 = a5;
  v98 = a12;
  v99 = a11;
  v100 = a10;
  v101 = a9;
  v102 = a3;
  v95 = type metadata accessor for Location();
  v14 = *(*(v95 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v95);
  v83 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v82 = &v82 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v82 - v23;
  v25 = a2[1];
  v108 = *a2;
  v109 = v25;
  v26 = a2[3];
  v110 = a2[2];
  v111 = v26;
  OUTLINED_FUNCTION_0_47();
  v28 = *(v27 + 16);
  v29 = OUTLINED_FUNCTION_1_33();
  v31 = v30(v29);
  v96 = v32;
  v97 = v31;
  OUTLINED_FUNCTION_0_47();
  v34 = *(v33 + 24);
  v35 = OUTLINED_FUNCTION_1_33();
  v94 = v36(v35);
  v93 = v37;
  OUTLINED_FUNCTION_0_47();
  v39 = *(v38 + 8);
  v40 = OUTLINED_FUNCTION_1_33();
  v92 = v41(v40);
  v91 = v42;
  OUTLINED_FUNCTION_0_47();
  v44 = *(v43 + 40);
  v45 = OUTLINED_FUNCTION_1_33();
  v90 = v46(v45);
  v89 = v47;
  sub_266C9A2C4();
  v48 = a1[3];
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v48);
  (*(v49 + 88))(v48, v49);
  sub_266C367A4();
  v88 = v50;
  OUTLINED_FUNCTION_0_47();
  v52 = *(v51 + 64);
  v53 = OUTLINED_FUNCTION_1_33();
  v87 = v54(v53);
  v86 = v55;
  OUTLINED_FUNCTION_0_47();
  v57 = *(v56 + 72);
  v58 = OUTLINED_FUNCTION_1_33();
  v85 = v59(v58);
  v84 = v60;
  OUTLINED_FUNCTION_0_47();
  v62 = *(v61 + 48);
  v63 = OUTLINED_FUNCTION_1_33();
  v65 = v64(v63);
  v67 = v66;
  v68 = a1[3];
  v69 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v68);
  v70 = (*(v69 + 96))(v68, v69);
  v71 = a1[3];
  v72 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v71);
  v73 = (*(v72 + 136))(v71, v72);
  v75 = a1[3];
  v74 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v75);
  (*(v74 + 104))(v75, v74);
  sub_266C36200(v24, v22);
  if (__swift_getEnumTagSinglePayload(v22, 1, v95) == 1)
  {
    sub_266C3A088(v24, &qword_2800C9B20, &unk_266DB1EC0);
    v76 = 0;
  }

  else
  {
    v77 = v22;
    v78 = v82;
    sub_266C234EC(v77, v82);
    type metadata accessor for SpeakableLocation();
    v79 = v83;
    sub_266C24F5C(v78, v83);
    v76 = sub_266D6CE4C(v79);
    sub_266C24C6C(v78);
    sub_266C3A088(v24, &qword_2800C9B20, &unk_266DB1EC0);
  }

  v80 = DeviceDetail.__allocating_init(identifier:unifiedIdentifier:deviceName:deviceClass:deviceOwner:productName:productType:productNameSemantic:deviceClassSemantic:category:emoji:isThisDevice:locality:isEarbuds:isHeadphones:canPlaySound:specificityLevel:location:)(v97, v96, v94, v93, v92, v91, v90, v89, v88, v87, v86, v85, v84, v107, v106, v105, v104, v103, v101, v65, v67, v70 & 1, v102, v100 & 1, v99 & 1, v73 & 1, v98, v76);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v80;
}

id DeviceDetail.__allocating_init(identifier:unifiedIdentifier:deviceName:deviceClass:deviceOwner:productName:productType:productNameSemantic:deviceClassSemantic:category:emoji:isThisDevice:locality:isEarbuds:isHeadphones:canPlaySound:specificityLevel:location:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, unsigned __int8 a25, unsigned __int8 a26, uint64_t a27, void *a28)
{
  v29 = v28;
  if (a2)
  {
    v33 = sub_266DAA6FC();
  }

  else
  {
    v33 = 0;
  }

  v34 = objc_allocWithZone(v29);

  v35 = sub_266DAA6FC();

  v36 = [v34 initWithIdentifier:v33 displayString:v35];

  v37 = v36;
  if (a4)
  {
    v38 = sub_266DAA6FC();
  }

  else
  {
    v38 = 0;
  }

  OUTLINED_FUNCTION_2_32(v37, sel_setUnifiedIdentifier_);

  if (a8)
  {
    v39 = sub_266DAA6FC();
  }

  else
  {
    v39 = 0;
  }

  [v36 setDeviceClass_];

  if (a6)
  {
    v40 = sub_266DAA6FC();
  }

  else
  {
    v40 = 0;
  }

  [v36 setDeviceName_];

  [v36 setDeviceOwner_];
  if (a11)
  {
    v41 = sub_266DAA6FC();
  }

  else
  {
    v41 = 0;
  }

  [v36 setProductName_];

  if (a13)
  {
    v42 = sub_266DAA6FC();
  }

  else
  {
    v42 = 0;
  }

  [v36 setProductType_];

  if (a19)
  {
    v43 = sub_266DAA6FC();
  }

  else
  {
    v43 = 0;
  }

  HIDWORD(v54) = a26;
  LODWORD(v54) = a25;
  [v36 setCategory_];

  if (a21)
  {
    v44 = sub_266DAA6FC();
  }

  else
  {
    v44 = 0;
  }

  [v36 setEmoji_];

  v45 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v36 setIsThisDevice_];

  OUTLINED_FUNCTION_2_32(v46, sel_setDeviceLocality_);
  v47 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  OUTLINED_FUNCTION_2_32(v47, sel_setIsEarbuds_);

  v48 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  OUTLINED_FUNCTION_2_32(v48, sel_setIsHeadphones_);

  v49 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  OUTLINED_FUNCTION_2_32(v49, sel_setCanPlaySound_);

  if (a15)
  {
    v51 = sub_266DAA6FC();
  }

  else
  {
    v51 = 0;
  }

  OUTLINED_FUNCTION_2_32(v50, sel_setProductNameSemantic_);

  if (a17)
  {
    v52 = sub_266DAA6FC();
  }

  else
  {
    v52 = 0;
  }

  [v36 setDeviceClassSemantic_];

  [v36 setDeviceSpecificityLevel_];
  [v36 setLocation_];

  return v36;
}

uint64_t sub_266CC8C30()
{
  sub_266DAADFC();

  sub_266D9BD18(v0);
  OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_4_24();

  MEMORY[0x26D5F1170](10016, 0xE200000000000000);
  sub_266CAB3DC(v0);
  OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_4_24();

  MEMORY[0x26D5F1170](0x6375646F72702027, 0xEB00000000203A74);
  sub_266D9BD24(v0);
  OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_4_24();

  MEMORY[0x26D5F1170](0x203A65707974202CLL, 0xE800000000000000);
  sub_266C39CC0(v0, &selRef_productType);
  OUTLINED_FUNCTION_3_28();
  OUTLINED_FUNCTION_4_24();

  MEMORY[0x26D5F1170](0x3A72656E776F202CLL, 0xE900000000000020);
  v1 = [v0 deviceOwner];
  if (v1 && (v2 = sub_266C22F54(v1), v3))
  {
    v4 = v3;
  }

  else
  {

    v4 = 0xEB00000000644972;
    v2 = 0x656E776F2D6C696ELL;
  }

  MEMORY[0x26D5F1170](v2, v4);

  MEMORY[0x26D5F1170](62, 0xE100000000000000);
  return 60;
}

uint64_t sub_266CC8E48()
{
  if ((sub_266CC7C44() & 1) == 0)
  {
    return 1;
  }

  v1 = sub_266C39CC0(v0, &selRef_productType);
  if (!v2)
  {
    return 2;
  }

  if (v1 != 0x2C30676154726941 || v2 != 0xE900000000000030)
  {
    v4 = sub_266DAB17C();

    result = 0;
    if (v4)
    {
      return result;
    }

    return 2;
  }

  return 0;
}

uint64_t sub_266CC8EEC()
{
  v1 = v0;
  v2 = sub_266DA85BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_266DA845C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_266DA844C();
  sub_266CAB3DC(v1);
  if (v11)
  {
    sub_266DA843C();
  }

  sub_266C1CEB4(v1);
  if (!v12)
  {

    return 1;
  }

  sub_266DA858C();
  sub_266DA852C();
  (*(v3 + 8))(v6, v2);
  v13 = MEMORY[0x26D5EF140](v10);

  if (!v13)
  {

    return 1;
  }

  return v13;
}

id OUTLINED_FUNCTION_2_32(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_4_24()
{

  JUMPOUT(0x26D5F1170);
}

uint64_t static Snippets.setSharedLocationVisibility(_:alreadySet:meDeviceInfo:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
  v8 = a2 + *(v7 + 24);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  *(v8 + 24) = 0;
  sub_266C4DBA4(v3, v4, v5);
  sub_266DA751C();
  v9 = *(v7 + 20);
  sub_266DA751C();
  v10 = *(v8 + 24);
  sub_266C4DBB8(*v8, *(v8 + 8), *(v8 + 16));
  *v8 = v3;
  *(v8 + 8) = v4;
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  type metadata accessor for Snippets();
  return swift_storeEnumTagMultiPayload();
}

__n128 Snippets.SetSharedLocationVisibilityResult.init(visibility:alreadySet:meDeviceInfo:)@<Q0>(__n128 *a1@<X2>, uint64_t a2@<X8>)
{
  v12 = *a1;
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
  v6 = (a2 + *(v5 + 24));
  OUTLINED_FUNCTION_8_10();
  sub_266DA751C();
  v7 = *(v5 + 20);
  sub_266DA751C();
  v8 = OUTLINED_FUNCTION_7_18();
  sub_266C4DBB8(v8, v9, v10);
  result = v12;
  *v6 = v12;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u8[8] = v4;
  return result;
}

uint64_t type metadata accessor for Snippets.SetSharedLocationVisibilityResult()
{
  result = qword_2800CB8F0;
  if (!qword_2800CB8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Snippets.SetSharedLocationVisibilityResult.alreadySet.getter()
{
  v0 = *(type metadata accessor for Snippets.SetSharedLocationVisibilityResult() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
  sub_266DA753C();
  return v2;
}

uint64_t Snippets.SetSharedLocationVisibilityResult.alreadySet.setter()
{
  v0 = *(type metadata accessor for Snippets.SetSharedLocationVisibilityResult() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
  return sub_266DA754C();
}

void (*Snippets.SetSharedLocationVisibilityResult.alreadySet.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v3 = *(type metadata accessor for Snippets.SetSharedLocationVisibilityResult() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
  v2[4] = sub_266DA752C();
  return sub_266CC9450;
}

void sub_266CC9450(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t Snippets.SetSharedLocationVisibilityResult.meDeviceInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Snippets.SetSharedLocationVisibilityResult() + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(v3 + 24);

  return sub_266C4DBA4(v4, v5, v6);
}

__n128 Snippets.SetSharedLocationVisibilityResult.meDeviceInfo.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = v1 + *(type metadata accessor for Snippets.SetSharedLocationVisibilityResult() + 24);
  v5 = *(v4 + 24);
  sub_266C4DBB8(*v4, *(v4 + 8), *(v4 + 16));
  result = v7;
  *v4 = v7;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t Snippets.SetSharedLocationVisibilityResult.visibility.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
  sub_266DA753C();
  result = SharedLocationVisibility.init(rawValue:)(v2);
  if (v1)
  {
    return 0;
  }

  return result;
}

uint64_t (*Snippets.SetSharedLocationVisibilityResult.visibility.modify(unint64_t *a1))(void *a1)
{
  a1[2] = v1;
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
  sub_266DA753C();
  v3 = SharedLocationVisibility.init(rawValue:)(a1[1]);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  *a1 = v5;
  return sub_266CC96D8;
}

uint64_t sub_266CC96D8(void *a1)
{
  a1[1] = *a1;
  v1 = a1 + 1;
  v3 = v1[1];
  v2 = v1[2];
  return sub_266DA754C();
}

uint64_t Snippets.SetSharedLocationVisibilityResult.isVisible.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
  sub_266DA753C();
  v0 = SharedLocationVisibility.init(rawValue:)(v3) == 1;
  return v0 & ~v1;
}

uint64_t (*Snippets.SetSharedLocationVisibilityResult.isVisible.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = Snippets.SetSharedLocationVisibilityResult.isVisible.getter() & 1;
  return sub_266CC97E8;
}

uint64_t sub_266CC97E8(uint64_t a1)
{
  v1 = 1;
  if (!*(a1 + 16))
  {
    v1 = 2;
  }

  v2 = *(a1 + 8);
  *a1 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
  return sub_266DA754C();
}

BOOL static Snippets.SetSharedLocationVisibilityResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_266DA755C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
  v5 = *(v4 + 20);
  if ((sub_266DA755C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v8 = *(a1 + v6);
  v7 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  v10 = *(a1 + v6 + 24);
  v11 = a2 + v6;
  v12 = *v11;
  v13 = *(v11 + 16);
  v14 = *(v11 + 24);
  if (v9 != 1)
  {
    if (v13 == 1)
    {
      v22 = OUTLINED_FUNCTION_0_48();
      sub_266C4DBA4(v22, v23, v24);
      v25 = OUTLINED_FUNCTION_83();
      sub_266C4DBA4(v25, v26, 1);
      v27 = OUTLINED_FUNCTION_0_48();
      sub_266C4DBA4(v27, v28, v29);

LABEL_9:
      v33 = OUTLINED_FUNCTION_0_48();
      sub_266C4DBB8(v33, v34, v35);
      v36 = OUTLINED_FUNCTION_1_34();
LABEL_14:
      sub_266C4DBB8(v36, v37, v38);
      return 0;
    }

    if ((v8 ^ v12))
    {
      goto LABEL_11;
    }

    if (v9)
    {
      if (!v13)
      {
LABEL_11:
        v39 = OUTLINED_FUNCTION_0_48();
        sub_266C4DBA4(v39, v40, v41);
        v42 = v9;
LABEL_12:
        v43 = OUTLINED_FUNCTION_1_34();
        sub_266C4DBA4(v43, v44, v45);
        v46 = OUTLINED_FUNCTION_14_2();
        sub_266C4DBA4(v46, v47, v42);
        v48 = OUTLINED_FUNCTION_1_34();
        sub_266C4DBB8(v48, v49, v50);
LABEL_13:

        v36 = OUTLINED_FUNCTION_0_48();
        goto LABEL_14;
      }

      if (v7 != *(v11 + 8) || v9 != v13)
      {
        v53 = sub_266DAB17C();
        v54 = OUTLINED_FUNCTION_0_48();
        sub_266C4DBA4(v54, v55, v56);
        v57 = OUTLINED_FUNCTION_1_34();
        sub_266C4DBA4(v57, v58, v59);
        v60 = OUTLINED_FUNCTION_0_48();
        sub_266C4DBA4(v60, v61, v62);
        v63 = OUTLINED_FUNCTION_1_34();
        sub_266C4DBB8(v63, v64, v65);
        if ((v53 & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_29:

        v81 = OUTLINED_FUNCTION_0_48();
        sub_266C4DBB8(v81, v82, v83);
        return ((v10 ^ v14) & 1) == 0;
      }

      v75 = OUTLINED_FUNCTION_0_48();
      sub_266C4DBA4(v75, v76, v77);
      sub_266C4DBA4(v12, v7, v9);
      v78 = OUTLINED_FUNCTION_0_48();
      sub_266C4DBA4(v78, v79, v80);
      v72 = v12;
      v73 = v7;
      v74 = v9;
    }

    else
    {
      v66 = OUTLINED_FUNCTION_14_2();
      sub_266C4DBA4(v66, v67, 0);
      v42 = 0;
      if (v13)
      {
        goto LABEL_12;
      }

      v68 = OUTLINED_FUNCTION_83();
      sub_266C4DBA4(v68, v69, 0);
      v70 = OUTLINED_FUNCTION_14_2();
      sub_266C4DBA4(v70, v71, 0);
      v72 = OUTLINED_FUNCTION_83();
      v74 = 0;
    }

    sub_266C4DBB8(v72, v73, v74);
    goto LABEL_29;
  }

  v15 = OUTLINED_FUNCTION_14_2();
  sub_266C4DBA4(v15, v16, 1);
  if (v13 != 1)
  {
    v30 = OUTLINED_FUNCTION_1_34();
    sub_266C4DBA4(v30, v31, v32);
    goto LABEL_9;
  }

  v17 = 1;
  v18 = OUTLINED_FUNCTION_83();
  sub_266C4DBA4(v18, v19, 1);
  v20 = OUTLINED_FUNCTION_14_2();
  sub_266C4DBB8(v20, v21, 1);
  return v17;
}

uint64_t sub_266CC9AC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6962697369765FLL && a2 == 0xEB00000000797469;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5379646165726C61 && a2 == 0xEA00000000007465;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656369766544656DLL && a2 == 0xEC0000006F666E49)
    {

      return 2;
    }

    else
    {
      v8 = sub_266DAB17C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_266CC9BE4(char a1)
{
  if (!a1)
  {
    return 0x6C6962697369765FLL;
  }

  if (a1 == 1)
  {
    return 0x5379646165726C61;
  }

  return 0x656369766544656DLL;
}

uint64_t sub_266CC9C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266CC9AC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266CC9C80(uint64_t a1)
{
  v2 = sub_266CCA3B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266CC9CBC(uint64_t a1)
{
  v2 = sub_266CCA3B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippets.SetSharedLocationVisibilityResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB898, &qword_266DB4BB0);
  OUTLINED_FUNCTION_0_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v23[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266CCA3B0();
  sub_266DAB36C();
  LOBYTE(v24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
  OUTLINED_FUNCTION_4_25();
  sub_266CCA4C8(v14);
  OUTLINED_FUNCTION_12_14();
  if (!v2)
  {
    v15 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
    v16 = *(v15 + 20);
    LOBYTE(v24) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
    OUTLINED_FUNCTION_4_25();
    sub_266CCA404(v17);
    OUTLINED_FUNCTION_12_14();
    v18 = v3 + *(v15 + 24);
    v19 = *(v18 + 8);
    v20 = *(v18 + 16);
    v21 = *(v18 + 24);
    v24 = *v18;
    v25 = v19;
    v26 = v20;
    v27 = v21;
    v23[15] = 2;
    sub_266C4DBA4(v24, v19, v20);
    sub_266CCA474();
    sub_266DAB0DC();
    sub_266C4DBB8(v24, v25, v26);
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t Snippets.SetSharedLocationVisibilityResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA068, &qword_266DAFC30);
  OUTLINED_FUNCTION_0_2(v52);
  v49 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v51 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA060, &unk_266DB1040);
  OUTLINED_FUNCTION_0_2(v9);
  v50 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v53 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB8C0, &qword_266DB4BB8);
  v16 = OUTLINED_FUNCTION_0_2(v15);
  v54 = v17;
  *&v55 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v20);
  v21 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = &v25[*(v23 + 24)];
  OUTLINED_FUNCTION_8_10();
  v27 = a1[3];
  v28 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_266CCA3B0();
  sub_266DAB34C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v56);
    v34 = OUTLINED_FUNCTION_7_18();
    return sub_266C4DBB8(v34, v35, v36);
  }

  else
  {
    v47 = v21;
    v29 = v25;
    v30 = v51;
    v31 = v52;
    LOBYTE(v57) = 0;
    OUTLINED_FUNCTION_5_24();
    sub_266CCA4C8(v32);
    v33 = v53;
    sub_266DAB05C();
    v37 = *(v50 + 32);
    v53 = v9;
    v37(v29, v33);
    LOBYTE(v57) = 1;
    OUTLINED_FUNCTION_5_24();
    sub_266CCA404(v38);
    sub_266DAB05C();
    (*(v49 + 32))(v29 + *(v47 + 20), v30, v31);
    v60 = 2;
    sub_266CCA538();
    sub_266DAB00C();
    v39 = OUTLINED_FUNCTION_9_12();
    v40(v39, v55);
    v55 = v57;
    v41 = v58;
    v42 = v59;
    v43 = OUTLINED_FUNCTION_7_18();
    sub_266C4DBB8(v43, v44, v45);
    *v26 = v55;
    *(v26 + 2) = v41;
    v26[24] = v42;
    sub_266CCA58C(v29, v48);
    __swift_destroy_boxed_opaque_existential_0(v56);
    return sub_266CCA5F0(v29);
  }
}

unint64_t sub_266CCA3B0()
{
  result = qword_2800CB8A0;
  if (!qword_2800CB8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB8A0);
  }

  return result;
}

uint64_t sub_266CCA404(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CA068, &qword_266DAFC30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266CCA474()
{
  result = qword_2800CB8B8;
  if (!qword_2800CB8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB8B8);
  }

  return result;
}

uint64_t sub_266CCA4C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CA060, &unk_266DB1040);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266CCA538()
{
  result = qword_2800CB8D8;
  if (!qword_2800CB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB8D8);
  }

  return result;
}

uint64_t sub_266CCA58C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266CCA5F0(uint64_t a1)
{
  v2 = type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266CCA6B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Snippets.SetSharedLocationVisibilityResult();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_266CCA720()
{
  sub_266CCA828(319, &qword_2800CB900, MEMORY[0x277D83B88], MEMORY[0x277D637C8]);
  if (v0 <= 0x3F)
  {
    sub_266CCA828(319, &qword_2800CB908, MEMORY[0x277D839B0], MEMORY[0x277D637C8]);
    if (v1 <= 0x3F)
    {
      sub_266CCA828(319, &qword_2800CB910, &type metadata for MeDeviceInfo, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_266CCA828(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *_s33SetSharedLocationVisibilityResultV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266CCA958()
{
  result = qword_2800CB918;
  if (!qword_2800CB918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB918);
  }

  return result;
}

unint64_t sub_266CCA9B0()
{
  result = qword_2800CB920;
  if (!qword_2800CB920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB920);
  }

  return result;
}

unint64_t sub_266CCAA08()
{
  result = qword_2800CB928;
  if (!qword_2800CB928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CB928);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_18()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  return result;
}

void OUTLINED_FUNCTION_8_10()
{
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
}

uint64_t OUTLINED_FUNCTION_12_14()
{

  return sub_266DAB11C();
}

uint64_t sub_266CCAB04(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = swift_checkMetadataState();
  v4 = v3;
  if (v5 <= 0x3F)
  {
    v11 = *(v3 - 8) + 64;
    v6 = *(a1 + 88);
    v7 = type metadata accessor for ConfirmIntentWithUnlockFlow.State();
    v4 = v7;
    if (v8 <= 0x3F)
    {
      v12 = *(v7 - 8) + 64;
      inited = swift_initClassMetadata2();
      if (inited)
      {
        return inited;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_266CCABFC()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CB930);
  v1 = __swift_project_value_buffer(v0, qword_2800CB930);
  if (qword_2800C9110 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800E61A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266CCACC4()
{
  OUTLINED_FUNCTION_6();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_24_7();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_24_7();
  v7 = *(v6 + 88);
  v8 = type metadata accessor for ConfirmIntentWithUnlockFlow.State();
  OUTLINED_FUNCTION_0_2(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  OUTLINED_FUNCTION_24_7();
  v17 = *(v16 + 128);
  OUTLINED_FUNCTION_9_13();
  v37 = v10;
  v18 = *(v10 + 16);
  v18(v15, &v0[v17], v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4)
  {
    v23 = v15[8];
    *v2 = *v15;
    *(v2 + 8) = v23;
    v24 = *MEMORY[0x277D5BC30];
    v25 = *(v7 + 8);
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_35_4();
    OUTLINED_FUNCTION_15_15();
    v26 = sub_266DA7C6C();
    OUTLINED_FUNCTION_3_29(v26);
    (*(v27 + 104))(v2, v24);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v20 = *(v7 + 8);
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_35_4();
    OUTLINED_FUNCTION_15_15();
    v21 = sub_266DA7C6C();
    OUTLINED_FUNCTION_3_29(v21);
    (*(v22 + 32))(v2, v15);
  }

  else
  {
    type metadata accessor for ConfirmIntentWithUnlockFlow.FlowError();
    OUTLINED_FUNCTION_0_49();
    swift_getWitnessTable();
    v36 = swift_allocError();
    v28 = v2;
    v30 = v29;
    v18(v29, &v0[v17], v8);
    __swift_storeEnumTagSinglePayload(v30, 0, 2, v8);
    *v28 = v36;
    *(v28 + 8) = 0;
    v31 = *MEMORY[0x277D5BC30];
    v32 = *(v7 + 8);
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_35_4();
    OUTLINED_FUNCTION_15_15();
    v33 = sub_266DA7C6C();
    OUTLINED_FUNCTION_3_29(v33);
    (*(v34 + 104))(v28, v31);
    (*(v37 + 8))(v15, v8);
  }

  OUTLINED_FUNCTION_5();
}

void sub_266CCAFA0()
{
  OUTLINED_FUNCTION_6();
  v67 = v2;
  v68 = v1;
  v3 = *v0;
  v4 = sub_266DA7D9C();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v65 = v6;
  v66 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_6();
  v64 = v10 - v9;
  v11 = v3[10];
  v12 = v3[11];
  v13 = type metadata accessor for ConfirmIntentWithUnlockFlow.State();
  v14 = OUTLINED_FUNCTION_0_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_0_5();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v62 - v23;
  v25 = v3[16];
  OUTLINED_FUNCTION_9_13();
  v63 = v16;
  v26 = *(v16 + 16);
  v26(v24, &v0[v25], v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v27 = *v24;
      v28 = *(v24 + 1);
      sub_266CCB484();
      goto LABEL_9;
    case 2u:
      v27 = *v24;
      v28 = *(v24 + 1);
      sub_266CCBD0C();
LABEL_9:

      break;
    case 3u:
      if (qword_2800C9290 != -1)
      {
        OUTLINED_FUNCTION_1_35();
      }

      v29 = sub_266DA94AC();
      OUTLINED_FUNCTION_94(v29, qword_2800CB930);
      v30 = sub_266DA948C();
      v31 = sub_266DAAB0C();
      if (OUTLINED_FUNCTION_95(v31))
      {
        v32 = OUTLINED_FUNCTION_11();
        *v32 = 0;
        _os_log_impl(&dword_266C08000, v30, v3, "ConfirmIntentWithUnlockFlow is complete. Exiting.", v32, 2u);
        OUTLINED_FUNCTION_7_19();
      }

      v33 = v64;
      sub_266DA7D7C();
      v68(v33);
      v34 = OUTLINED_FUNCTION_19_11();
      v35(v34);
      (*(v63 + 8))(v24, v13);
      break;
    case 4u:
      v36 = *v24;
      if (qword_2800C9290 != -1)
      {
        OUTLINED_FUNCTION_1_35();
      }

      v37 = sub_266DA94AC();
      OUTLINED_FUNCTION_94(v37, qword_2800CB930);
      v38 = v36;
      v39 = sub_266DA948C();
      v40 = sub_266DAAAEC();

      if (os_log_type_enabled(v39, v40))
      {
        OUTLINED_FUNCTION_14_0();
        v41 = OUTLINED_FUNCTION_27_8();
        v69 = v36;
        v70 = v41;
        *v21 = 136315138;
        v42 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
        v43 = sub_266DAA72C();
        v45 = sub_266C22A3C(v43, v44, &v70);

        *(v21 + 4) = v45;
        OUTLINED_FUNCTION_22_8();
        _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_7_19();
      }

      v51 = v64;
      sub_266DA7D7C();
      v68(v51);

      v52 = OUTLINED_FUNCTION_19_11();
      v54(v52, v53);
      break;
    default:
      type metadata accessor for ConfirmIntentWithUnlockFlow.FlowError();
      OUTLINED_FUNCTION_0_49();
      swift_getWitnessTable();
      v55 = swift_allocError();
      v57 = v56;
      v26(v56, &v0[v25], v13);
      __swift_storeEnumTagSinglePayload(v57, 0, 2, v13);
      *v21 = v55;
      *(v21 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_5_25();
      OUTLINED_FUNCTION_30_6();
      (*(v58 + 40))(&v0[v25], v21, v13);
      swift_endAccess();
      v59 = v64;
      sub_266DA7D7C();
      v68(v59);
      v60 = OUTLINED_FUNCTION_19_11();
      v61(v60);
      (*(v55 + 8))(v24, v13);
      break;
  }

  OUTLINED_FUNCTION_5();
}

void sub_266CCB484()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v98 = v4;
  v6 = v5;
  v96 = v7;
  v8 = *v0;
  v9 = *(v8 + 80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v92 - v13;
  v15 = sub_266DA7D9C();
  v16 = OUTLINED_FUNCTION_0_2(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_6();
  v101 = v22 - v21;
  v23 = *(v8 + 88);
  v24 = type metadata accessor for ConfirmIntentWithUnlockFlow.State();
  v25 = OUTLINED_FUNCTION_0_2(v24);
  v99 = v26;
  v100 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v29);
  v31 = (&v92 - v30);
  v97 = v6;
  v32 = [v6 _requiresAuthentication];
  v102 = v3;
  if (v32)
  {
    v92 = v23;
    v93 = v10;
    v94 = v18;
    v95 = v15;
    OUTLINED_FUNCTION_8_11();
    v34 = &v1[*(v33 + 104)];
    v35 = *(v34 + 4);
    __swift_project_boxed_opaque_existential_1(v34, *(v34 + 3));
    if (sub_266C6A310() & 1) != 0 || (v36 = *(v34 + 4), __swift_project_boxed_opaque_existential_1(v34, *(v34 + 3)), (sub_266DA7B7C()))
    {
      if (qword_2800C9290 != -1)
      {
        OUTLINED_FUNCTION_1_35();
      }

      v37 = sub_266DA94AC();
      OUTLINED_FUNCTION_94(v37, qword_2800CB930);
      v38 = sub_266DA948C();
      v39 = sub_266DAAB0C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_11();
        *v40 = 0;
        _os_log_impl(&dword_266C08000, v38, v39, "ConfirmIntentWithUnlockFlow cannot request device unlock. Initiating Handoff", v40, 2u);
        OUTLINED_FUNCTION_6_1();
      }

      sub_266DA77CC();
      OUTLINED_FUNCTION_8_11();
      (*(v93 + 16))(v14, &v1[*(v41 + 96)], v9);
      sub_266C233D0(v34, v104);
      OUTLINED_FUNCTION_8_11();
      sub_266C233D0(&v1[*(v42 + 112)], &v103);
      v43 = *(v92 + 16);
      v44 = sub_266DA77BC();
      v45 = v100;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_11();
      v47 = *(v46 + 128);
      OUTLINED_FUNCTION_5_25();
      (*(v99 + 40))(&v1[v47], v31, v45);
      swift_endAccess();
      v104[0] = v44;
      v48 = sub_266CCBC3C();
      v50 = v49;
      v51 = swift_allocObject();
      *(v51 + 16) = v48;
      *(v51 + 24) = v50;
      OUTLINED_FUNCTION_30_6();
      sub_266DA7D2C();

      v52 = OUTLINED_FUNCTION_21_11();
      v53(v52);

      v18 = v94;
      v15 = v95;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB730, &qword_266DB46F8);
      v67 = *(sub_266DA788C() - 8);
      v68 = *(v67 + 72);
      v69 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      *(swift_allocObject() + 16) = xmmword_266DAE4A0;
      OUTLINED_FUNCTION_8_11();
      v71 = *(v70 + 96);
      v104[3] = v9;
      v104[4] = *(v92 + 24);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v104);
      (*(v93 + 16))(boxed_opaque_existential_1, &v1[v71], v9);
      sub_266DA787C();
      __swift_destroy_boxed_opaque_existential_0(v104);
      v73 = sub_266DA756C();

      v75 = v96;
      v74 = v97;
      *v31 = v96;
      v31[1] = v74;
      v76 = v100;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_11();
      v78 = *(v77 + 128);
      OUTLINED_FUNCTION_5_25();
      v79 = *(v99 + 40);
      v80 = v75;
      v81 = v74;
      v79(&v1[v78], v31, v76);
      swift_endAccess();
      if (qword_2800C9290 != -1)
      {
        OUTLINED_FUNCTION_1_35();
      }

      v82 = sub_266DA94AC();
      OUTLINED_FUNCTION_94(v82, qword_2800CB930);
      v83 = sub_266DA948C();
      v84 = sub_266DAAB0C();
      v85 = OUTLINED_FUNCTION_95(v84);
      v18 = v94;
      v15 = v95;
      if (v85)
      {
        v86 = OUTLINED_FUNCTION_11();
        *v86 = 0;
        _os_log_impl(&dword_266C08000, v83, v79, "ConfirmIntentWithUnlockFlow: pushing UnlockDeviceFlow.", v86, 2u);
        OUTLINED_FUNCTION_6_1();
      }

      v104[0] = v73;
      sub_266DA784C();
      sub_266DA799C();
      v48 = sub_266CCBCA4();
      v88 = v87;
      v89 = swift_allocObject();
      *(v89 + 16) = v48;
      *(v89 + 24) = v88;
      OUTLINED_FUNCTION_30_6();
      sub_266DA7D3C();

      v90 = OUTLINED_FUNCTION_21_11();
      v91(v90);
    }
  }

  else
  {
    if (qword_2800C9290 != -1)
    {
      OUTLINED_FUNCTION_1_35();
    }

    v54 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v54, qword_2800CB930);
    v55 = sub_266DA948C();
    v56 = sub_266DAAB0C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = OUTLINED_FUNCTION_11();
      *v57 = 0;
      _os_log_impl(&dword_266C08000, v55, v56, "ConfirmIntentWithUnlockFlow: The intent response does not require authentication, ready to confirm.", v57, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v58 = v96;
    v59 = v97;
    *v31 = v96;
    v31[1] = v59;
    v48 = v100;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_8_11();
    v61 = *(v60 + 128);
    OUTLINED_FUNCTION_5_25();
    v62 = *(v99 + 40);
    v63 = v58;
    v64 = v59;
    v62(&v1[v61], v31, v48);
    swift_endAccess();
    OUTLINED_FUNCTION_30_6();
    sub_266DA7D1C();
    v65 = OUTLINED_FUNCTION_21_11();
    v66(v65);
  }

  (*(v18 + 8))(v48, v15);
  OUTLINED_FUNCTION_5();
}

void sub_266CCBD0C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v53 = v3;
  v54 = v2;
  v5 = v4;
  v6 = *v0;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB458, &unk_266DB4F10) - 8) + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = v6[11];
  v51 = v6[10];
  v12 = type metadata accessor for ConfirmIntentWithUnlockFlow.State();
  OUTLINED_FUNCTION_0_2(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - v18;
  v52 = sub_266DA7D9C();
  v20 = OUTLINED_FUNCTION_0_2(v52);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_0_6();
  v27 = v26 - v25;
  v28 = *&v1[v6[15]];
  if (v28)
  {
    v29 = qword_2800C9290;

    if (v29 != -1)
    {
      OUTLINED_FUNCTION_1_35();
    }

    v30 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v30, qword_2800CB930);
    v31 = sub_266DA948C();
    v32 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_95(v32))
    {
      v33 = OUTLINED_FUNCTION_11();
      *v33 = 0;
      _os_log_impl(&dword_266C08000, v31, v10, "ConfirmIntentWithUnlockFlow: pushing inner confirm intent flow.", v33, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v55 = v28;
    sub_266CCC1E0();
    v34 = *(v11 + 8);
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_15_15();
    sub_266DA76BC();
    swift_getWitnessTable();
    sub_266DA7D2C();

    v54(v27);
  }

  else
  {
    v49 = v5;
    v50 = v14;
    if (qword_2800C9290 != -1)
    {
      OUTLINED_FUNCTION_1_35();
    }

    v35 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v35, qword_2800CB930);
    v36 = sub_266DA948C();
    v37 = sub_266DAAB0C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_11();
      *v38 = 0;
      _os_log_impl(&dword_266C08000, v36, v37, "ConfirmIntentWithUnlockFlow: Inner confirmation flow is nil. Sending successfully confirmed intent response.", v38, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v39 = *MEMORY[0x277D5BED8];
    v40 = sub_266DA7F5C();
    (*(*(v40 - 8) + 104))(v10, v39, v40);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v40);
    v41 = *(v11 + 8);
    swift_getAssociatedTypeWitness();
    v42 = v49;
    sub_266DA7F1C();
    v43 = *MEMORY[0x277D5BC38];
    sub_266DA7F2C();
    OUTLINED_FUNCTION_15_15();
    v44 = sub_266DA7C6C();
    OUTLINED_FUNCTION_3_29(v44);
    (*(v45 + 104))(v19, v43);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_8_11();
    v47 = *(v46 + 128);
    swift_beginAccess();
    (*(v50 + 40))(&v1[v47], v19, v12);
    swift_endAccess();
    sub_266DA7D1C();
    v54(v27);
  }

  (*(v22 + 8))(v27, v52);
  OUTLINED_FUNCTION_5();
}

void sub_266CCC220()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 88);
  OUTLINED_FUNCTION_10_13();
  v44 = v7;
  v8 = type metadata accessor for ConfirmIntentWithUnlockFlow.State();
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_5();
  v16 = (v14 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v20 = *(v4 + 128);
  OUTLINED_FUNCTION_9_13();
  v21 = *(v11 + 16);
  (v21)(v19, v1 + v20, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v19;
    v23 = *(v19 + 1);
    if ((v3 & 1) == 0)
    {
      *v16 = v22;
      v16[1] = v23;
      OUTLINED_FUNCTION_13_11();
      goto LABEL_11;
    }

    type metadata accessor for ConfirmIntentWithUnlockFlow.FlowError();
    OUTLINED_FUNCTION_0_49();
    swift_getWitnessTable();
    v24 = OUTLINED_FUNCTION_4_26();
    __swift_storeEnumTagSinglePayload(v25, 1, 2, v8);
  }

  else
  {
    (*(v11 + 8))(v19, v8);
    if (qword_2800C9290 != -1)
    {
      OUTLINED_FUNCTION_1_35();
    }

    v26 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v26, qword_2800CB930);

    v27 = sub_266DA948C();
    v28 = sub_266DAAAEC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_14_0();
      v43 = v21;
      v40 = v29;
      v41 = swift_slowAlloc();
      v45 = v41;
      v30 = OUTLINED_FUNCTION_33_5(4.8149e-34);
      v43(v30);
      OUTLINED_FUNCTION_13_11();
      v31 = sub_266DAA72C();
      v42 = v11;
      sub_266C22A3C(v31, v32, &v45);
      OUTLINED_FUNCTION_34_3();
      v33 = v40;
      *(v40 + 4) = v5;
      _os_log_impl(&dword_266C08000, v27, v28, "ConfirmIntentWithUnlockFlow: processRequestDeviceUnlockResult called in an unexpected state: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      OUTLINED_FUNCTION_7_19();
      v21 = v43;
      OUTLINED_FUNCTION_6_1();
    }

    OUTLINED_FUNCTION_10_13();
    v24 = type metadata accessor for ConfirmIntentWithUnlockFlow.FlowError();
    OUTLINED_FUNCTION_0_49();
    swift_getWitnessTable();
    v34 = OUTLINED_FUNCTION_4_26();
    v36 = OUTLINED_FUNCTION_25_6(v34, v35);
    v21(v36);
    OUTLINED_FUNCTION_12_15();
  }

  *v16 = v24;
  *(v16 + 8) = 0;
  OUTLINED_FUNCTION_13_11();
LABEL_11:
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_5_25();
  v37 = OUTLINED_FUNCTION_32_4();
  v38(v37);
  swift_endAccess();
  OUTLINED_FUNCTION_5();
}

void sub_266CCC558()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *(*v1 + 80);
  v8 = *(*v1 + 88);
  OUTLINED_FUNCTION_10_13();
  v65 = v9;
  v10 = type metadata accessor for ConfirmIntentWithUnlockFlow.State();
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_5();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v63 - v20;
  v22 = *(v6 + 128);
  OUTLINED_FUNCTION_9_13();
  v66 = v22;
  v67 = v13;
  v23 = *(v13 + 16);
  v23(v21, &v1[v22], v10);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    v24 = OUTLINED_FUNCTION_18_11(v67);
    v25(v24);
    if (v3)
    {
      v26 = v5;
      if (qword_2800C9290 != -1)
      {
        OUTLINED_FUNCTION_1_35();
      }

      v27 = sub_266DA94AC();
      OUTLINED_FUNCTION_94(v27, qword_2800CB930);
      v28 = v5;
      v29 = sub_266DA948C();
      v30 = sub_266DAAAEC();
      sub_266CCD210(v5, 1);
      if (os_log_type_enabled(v29, v30))
      {
        v31 = OUTLINED_FUNCTION_14_0();
        v65 = swift_slowAlloc();
        v68 = v5;
        v69[0] = v65;
        *v31 = 136315138;
        v32 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
        v33 = sub_266DAA72C();
        v35 = sub_266C22A3C(v33, v34, v69);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_266C08000, v29, v30, "ConfirmIntentWithUnlockFlow received an unexpected error while trying to unlock the device: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();
      }

      *v18 = v5;
      v18[8] = 0;
    }

    else
    {
      if (qword_2800C9290 != -1)
      {
        OUTLINED_FUNCTION_1_35();
      }

      v52 = sub_266DA94AC();
      OUTLINED_FUNCTION_94(v52, qword_2800CB930);
      v53 = sub_266DA948C();
      v54 = sub_266DAAB0C();
      if (os_log_type_enabled(v53, v54))
      {
        *OUTLINED_FUNCTION_11() = 0;
        OUTLINED_FUNCTION_22_8();
        _os_log_impl(v55, v56, v57, v58, v59, 2u);
        OUTLINED_FUNCTION_7_19();
      }

      OUTLINED_FUNCTION_10_13();
      type metadata accessor for ConfirmIntentWithUnlockFlow.FlowError();
      OUTLINED_FUNCTION_0_49();
      swift_getWitnessTable();
      v60 = OUTLINED_FUNCTION_4_26();
      __swift_storeEnumTagSinglePayload(v61, 2, 2, v10);
      *v18 = v60;
      v18[8] = 1;
    }

    swift_storeEnumTagMultiPayload();
    v62 = v66;
    OUTLINED_FUNCTION_5_25();
    (*(v67 + 40))(&v1[v62], v18, v10);
  }

  else
  {
    v36 = OUTLINED_FUNCTION_18_11(v67);
    v37(v36);
    if (qword_2800C9290 != -1)
    {
      OUTLINED_FUNCTION_1_35();
    }

    v38 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v38, qword_2800CB930);

    v39 = sub_266DA948C();
    v40 = sub_266DAAAEC();

    if (os_log_type_enabled(v39, v40))
    {
      OUTLINED_FUNCTION_14_0();
      v63 = OUTLINED_FUNCTION_27_8();
      v69[0] = v63;
      *v21 = 136315138;
      v23(v18, &v1[v66], v10);
      v41 = sub_266DAA72C();
      v64 = v18;
      v43 = sub_266C22A3C(v41, v42, v69);
      v18 = v64;

      *(v21 + 4) = v43;
      OUTLINED_FUNCTION_22_8();
      _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_7_19();
    }

    OUTLINED_FUNCTION_10_13();
    type metadata accessor for ConfirmIntentWithUnlockFlow.FlowError();
    OUTLINED_FUNCTION_0_49();
    swift_getWitnessTable();
    v49 = OUTLINED_FUNCTION_4_26();
    v50 = v66;
    v23(v51, &v1[v66], v10);
    OUTLINED_FUNCTION_12_15();
    *v18 = v49;
    v18[8] = 0;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_5_25();
    (*(v67 + 40))(&v1[v50], v18, v10);
  }

  swift_endAccess();
  OUTLINED_FUNCTION_5();
}

void sub_266CCCA8C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v44 = v2;
  v3 = *v0;
  OUTLINED_FUNCTION_24_7();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_24_7();
  v7 = *(v6 + 88);
  OUTLINED_FUNCTION_10_13();
  v8 = type metadata accessor for ConfirmIntentWithUnlockFlow.State();
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_5();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  v20 = *(v3 + 128);
  OUTLINED_FUNCTION_9_13();
  v45 = *(v11 + 16);
  v45(v19, &v1[v20], v8);
  LODWORD(v3) = swift_getEnumCaseMultiPayload();
  v21 = OUTLINED_FUNCTION_18_11(v11);
  v22(v21);
  if (v3 == 2)
  {
    v23 = *(v7 + 8);
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_35_4();
    OUTLINED_FUNCTION_15_15();
    v24 = sub_266DA7C6C();
    OUTLINED_FUNCTION_3_29(v24);
    (*(v25 + 16))(v16, v44);
    OUTLINED_FUNCTION_13_11();
  }

  else
  {
    v44 = v7;
    if (qword_2800C9290 != -1)
    {
      OUTLINED_FUNCTION_1_35();
    }

    v26 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v26, qword_2800CB930);

    v27 = sub_266DA948C();
    v28 = sub_266DAAAEC();

    v29 = os_log_type_enabled(v27, v28);
    v30 = v45;
    if (v29)
    {
      OUTLINED_FUNCTION_14_0();
      v42 = v28;
      v41 = OUTLINED_FUNCTION_27_8();
      v46 = v41;
      v31 = OUTLINED_FUNCTION_33_5(4.8149e-34);
      v30(v31);
      OUTLINED_FUNCTION_13_11();
      v32 = sub_266DAA72C();
      v43 = v11;
      sub_266C22A3C(v32, v33, &v46);
      OUTLINED_FUNCTION_34_3();
      *(v28 + 4) = v5;
      _os_log_impl(&dword_266C08000, v27, v42, "ConfirmIntentWithUnlockFlow: processConfirmationFlowResult called in an unexpected state: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      v30 = v45;
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_7_19();
    }

    OUTLINED_FUNCTION_10_13();
    v34 = type metadata accessor for ConfirmIntentWithUnlockFlow.FlowError();
    OUTLINED_FUNCTION_0_49();
    swift_getWitnessTable();
    v35 = OUTLINED_FUNCTION_4_26();
    v37 = OUTLINED_FUNCTION_25_6(v35, v36);
    v30(v37);
    OUTLINED_FUNCTION_12_15();
    *v16 = v34;
    *(v16 + 8) = 0;
    OUTLINED_FUNCTION_13_11();
  }

  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_5_25();
  v38 = OUTLINED_FUNCTION_32_4();
  v39(v38);
  swift_endAccess();
  OUTLINED_FUNCTION_5();
}

uint64_t *sub_266CCCDAC()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  OUTLINED_FUNCTION_31_4();
  __swift_destroy_boxed_opaque_existential_0((v0 + *(v2 + 104)));
  OUTLINED_FUNCTION_31_4();
  __swift_destroy_boxed_opaque_existential_0((v0 + *(v3 + 112)));
  OUTLINED_FUNCTION_31_4();
  v5 = *(v0 + *(v4 + 120));

  OUTLINED_FUNCTION_31_4();
  v7 = *(v6 + 128);
  v8 = *(v1 + 88);
  v9 = type metadata accessor for ConfirmIntentWithUnlockFlow.State();
  (*(*(v9 - 8) + 8))(v0 + v7, v9);
  return v0;
}

uint64_t sub_266CCCED8()
{
  sub_266CCCDAC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_266CCCF60(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  if (v3 <= 0x3F)
  {
    sub_266DA7F2C();
    sub_266DA7C6C();
    if (v4 <= 0x3F)
    {
      sub_266CCD068();
      if (v5 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_266CCD068()
{
  if (!qword_2800CBA48[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2800CA800, &unk_266DAFC10);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_2800CBA48);
    }
  }
}

uint64_t sub_266CCD104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B888] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_266C29DCC;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

void sub_266CCD210(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_266CCD220(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_266CCD24C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_266CCD298(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = type metadata accessor for ConfirmIntentWithUnlockFlow.State();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t OUTLINED_FUNCTION_1_35()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_26()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_5_25()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_7_19()
{

  JUMPOUT(0x26D5F2480);
}

uint64_t OUTLINED_FUNCTION_9_13()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_12_15()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 2, v0);
}

uint64_t OUTLINED_FUNCTION_19_11()
{
  v2 = *(v1 - 160);
  v3 = *(*(v1 - 168) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_21_11()
{
  result = v0;
  v3 = *(v1 - 176);
  v4 = *(v1 - 208);
  return result;
}

uint64_t OUTLINED_FUNCTION_27_8()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_34_3()
{
  v2 = *(v0 - 152);
}

uint64_t OUTLINED_FUNCTION_35_4()
{

  return sub_266DA7F2C();
}

BOOL Optional<A>.existsAndNotEmpty.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = *(a1 + 16);
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    (*(v2 + 8))(v5, a1);
    return 0;
  }

  else
  {
    v8 = Collection.isNotEmpty.getter();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return v8;
}

uint64_t sub_266CCD68C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_266CCD6E0()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CBAD0);
  v1 = __swift_project_value_buffer(v0, qword_2800CBAD0);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266CCD7A8()
{
  v1 = sub_266DA81AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 168), *(v0 + 192));
  sub_266DA816C();
  v6 = sub_266D6F5AC(v5);
  v8 = v7;
  (*(v2 + 8))(v5, v1);
  if (!v8)
  {
    return sub_266DA7CAC();
  }

  if (v8 == 1)
  {
    return sub_266DA7CCC();
  }

  sub_266DA7CBC();
  return sub_266C488A0(v6, v8);
}

uint64_t sub_266CCD8D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = OUTLINED_FUNCTION_14_3();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_266CCD904()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  sub_266DA80FC();
  v3 = sub_266DA80DC();
  if (qword_2800C9298 != -1)
  {
    OUTLINED_FUNCTION_2_33();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_2800CBAD0);
  v5 = v3;
  v6 = sub_266DA948C();
  v7 = sub_266DAAB0C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = MEMORY[0x277D84F70];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v37 = v11;
    *v10 = 136315138;
    v12 = [v5 disambiguationItems];
    v13 = sub_266DAA93C();

    v14 = MEMORY[0x26D5F12B0](v13, v9 + 8);
    v16 = v15;

    v17 = sub_266C22A3C(v14, v16, &v37);

    *(v10 + 4) = v17;
    OUTLINED_FUNCTION_25_7();
    _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x26D5F2480](v11, -1, -1);
    OUTLINED_FUNCTION_33_6();
  }

  v23 = [v5 disambiguationItems];
  v24 = sub_266DAA93C();

  v25 = sub_266C3A9B4(v24);

  if (v25)
  {
    v26 = v0[4];
    v27 = v26[4];
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_266DA7BAC();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBB70, qword_266DB5080);
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_266DA813C();

    v31 = v0[1];
    OUTLINED_FUNCTION_68();

    __asm { BRAA            X2, X16 }
  }

  sub_266CD01A8();
  OUTLINED_FUNCTION_87();
  *v34 = 0xD00000000000002ALL;
  *(v34 + 8) = 0x8000000266DC2A90;
  *(v34 + 16) = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_68();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266CCDBF0()
{
  OUTLINED_FUNCTION_22_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[10] = *(v2 + 16);
  v7 = sub_266DA7EBC();
  v1[11] = v7;
  OUTLINED_FUNCTION_11_3(v7);
  v1[12] = v8;
  v10 = *(v9 + 64) + 15;
  v1[13] = swift_task_alloc();
  v11 = sub_266DA81AC();
  v1[14] = v11;
  OUTLINED_FUNCTION_11_3(v11);
  v1[15] = v12;
  v14 = *(v13 + 64) + 15;
  v1[16] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_266CCDD00()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[5];
  sub_266DA80FC();
  v8 = sub_266DA80CC();
  __swift_project_boxed_opaque_existential_1((v5 + 168), *(v5 + 192));
  sub_266DA816C();
  v9 = sub_266D6F5AC(v1);
  v11 = v10;
  (*(v2 + 8))(v1, v3);
  if (!v11)
  {
    if (qword_2800C9298 != -1)
    {
      OUTLINED_FUNCTION_2_33();
    }

    v23 = sub_266DA94AC();
    __swift_project_value_buffer(v23, qword_2800CBAD0);
    v24 = sub_266DA948C();
    v25 = sub_266DAAACC();
    if (OUTLINED_FUNCTION_95(v25))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_25_7();
      _os_log_impl(v26, v27, v28, v29, v30, 2u);
      OUTLINED_FUNCTION_33_6();
    }

    sub_266CD01A8();
    OUTLINED_FUNCTION_87();
    *v31 = xmmword_266DB3600;
    v22 = (v31 + 1);
    goto LABEL_13;
  }

  if (v11 == 1)
  {
    if (qword_2800C9298 != -1)
    {
      OUTLINED_FUNCTION_2_33();
    }

    v12 = sub_266DA94AC();
    __swift_project_value_buffer(v12, qword_2800CBAD0);
    v13 = sub_266DA948C();
    v14 = sub_266DAAACC();
    if (OUTLINED_FUNCTION_95(v14))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_25_7();
      _os_log_impl(v15, v16, v17, v18, v19, 2u);
      OUTLINED_FUNCTION_33_6();
    }

    sub_266CD01A8();
    OUTLINED_FUNCTION_87();
    v21 = v20;
    v22 = (v20 + 16);
    *v21 = 0;
    v21[1] = 0;
LABEL_13:
    v32 = 2;
LABEL_14:
    v33 = v0[16];
    v34 = v0[13];
    *v22 = v32;
    swift_willThrow();

    OUTLINED_FUNCTION_28();
    goto LABEL_17;
  }

  v36 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBB78, &qword_266DB5168);
  v0[3] = sub_266DA7FFC();
  v37 = swift_task_alloc();
  *(v37 + 16) = v9;
  *(v37 + 24) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBB80, &qword_266DB5170);
  OUTLINED_FUNCTION_10_14();
  sub_266C230E8(v38, v39, &qword_266DB5170);
  sub_266DAA8CC();

  v40 = v0[2];
  if (!v40)
  {
    if (qword_2800C9298 != -1)
    {
      OUTLINED_FUNCTION_2_33();
    }

    v55 = sub_266DA94AC();
    __swift_project_value_buffer(v55, qword_2800CBAD0);
    v56 = sub_266DA948C();
    v57 = sub_266DAAACC();
    if (OUTLINED_FUNCTION_95(v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_266C08000, v56, OS_LOG_TYPE_DEFAULT, "FriendDisambiguationStrategy unable to determine selectedContact", v58, 2u);
      MEMORY[0x26D5F2480](v58, -1, -1);
    }

    sub_266CD01A8();
    OUTLINED_FUNCTION_87();
    *v59 = v9;
    v59[1] = v11;
    v22 = (v59 + 2);
    v32 = 1;
    goto LABEL_14;
  }

  v42 = v0[12];
  v41 = v0[13];
  v43 = v0[10];
  v61 = v0[11];
  v62 = v0[16];
  v44 = v8;
  v45 = v0[8];
  v60 = v0[4];
  sub_266C488A0(v9, v11);
  v46 = *(v45 + 32);
  v47 = *(v46 + 16);
  v48 = v40;
  v47(v40, v43, v46);
  type metadata accessor for INFriend();
  v49 = v48;
  v50 = v44;
  sub_266DA7EAC();
  OUTLINED_FUNCTION_38();
  sub_266DA7F6C();

  v51 = *(v42 + 8);
  v52 = OUTLINED_FUNCTION_38();
  v53(v52);

  OUTLINED_FUNCTION_15_4();
LABEL_17:

  return v35();
}

uint64_t sub_266CCE1A8(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 person];
  if (v5 && (v6 = sub_266C22F54(v5), v7))
  {
    if (v6 == a2 && v7 == a3)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_266DAB17C();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_266CCE244()
{
  OUTLINED_FUNCTION_22_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v6 = sub_266DA7E5C();
  v1[8] = v6;
  OUTLINED_FUNCTION_11_3(v6);
  v1[9] = v7;
  v9 = *(v8 + 64) + 15;
  v1[10] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266CCE2F8()
{
  v22 = v0[10];
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBB78, &qword_266DB5168);
  v0[2] = sub_266DA7FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBB80, &qword_266DB5170);
  sub_266C9A2C4();
  OUTLINED_FUNCTION_10_14();
  sub_266C230E8(v5, v6, &qword_266DB5170);
  v7 = sub_266DAA8BC();
  v0[11] = v7;

  __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
  v8 = *(v2 + 16);
  sub_266DA80FC();
  v9 = sub_266DA80CC();
  sub_266D04108(v9, *(v2 + 32), v7);

  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[12] = v10;
  *v10 = v11;
  v10[1] = sub_266CCE498;
  v12 = v0[10];
  v13 = v0[6];
  v14 = v0[7];
  v15 = v0[3];
  OUTLINED_FUNCTION_68();

  return sub_266CCE6DC(v16, v17, v18, v19);
}

uint64_t sub_266CCE498()
{
  v2 = *v1;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *(v2 + 96);
  *v4 = *v1;
  *(v3 + 104) = v0;

  v6 = *(v2 + 88);

  if (v0)
  {
    v7 = sub_266CCE62C;
  }

  else
  {
    v7 = sub_266CCE5C4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_266CCE5C4()
{
  OUTLINED_FUNCTION_22_0();
  v0 = OUTLINED_FUNCTION_36_6();
  v1(v0);

  OUTLINED_FUNCTION_15_4();

  return v2();
}

uint64_t sub_266CCE62C()
{
  OUTLINED_FUNCTION_22_0();
  v1 = OUTLINED_FUNCTION_36_6();
  v2(v1);

  OUTLINED_FUNCTION_28();
  v4 = *(v0 + 104);

  return v3();
}

id sub_266CCE698@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 person];
  *a2 = result;
  return result;
}

uint64_t sub_266CCE6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[34] = a4;
  v5[35] = v4;
  v5[32] = a2;
  v5[33] = a3;
  v5[31] = a1;
  v6 = type metadata accessor for Snippets();
  v5[36] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v8 = sub_266DA80AC();
  v5[41] = v8;
  v9 = *(v8 - 8);
  v5[42] = v9;
  v10 = *(v9 + 64) + 15;
  v5[43] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070) - 8) + 64) + 15;
  v5[44] = swift_task_alloc();
  v12 = sub_266DA7C0C();
  v5[45] = v12;
  v13 = *(v12 - 8);
  v5[46] = v13;
  v14 = *(v13 + 64) + 15;
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00) - 8) + 64) + 15;
  v5[49] = swift_task_alloc();
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080) - 8);
  v5[50] = v16;
  v5[51] = *(v16 + 64);
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266CCE990, 0, 0);
}

uint64_t sub_266CCE990()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[34];
  v6 = v0[32];
  v7 = swift_task_alloc();
  *(v7 + 16) = *(v5 + 16);
  *(v7 + 32) = *(v5 + 32);
  *(v7 + 40) = v3;
  sub_266C24340(sub_266CD0188, v7, v6);
  v9 = v8;
  v0[60] = v8;

  v0[61] = *(v3 + 208);
  sub_266D3DF40(v6, v1);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v4);
  v10 = OUTLINED_FUNCTION_109();
  __swift_storeEnumTagSinglePayload(v10, v11, 1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v12 = swift_allocObject();
  v0[62] = v12;
  *(v12 + 16) = xmmword_266DAE3B0;
  v13 = *(v3 + 40);
  v14 = swift_task_alloc();
  v0[63] = v14;
  *v14 = v0;
  v14[1] = sub_266CCEB04;

  return sub_266CB3214(v9);
}

uint64_t sub_266CCEB04(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v8 = *(v7 + 504);
  v9 = *(v7 + 480);
  v10 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v11 = v10;
  v5[64] = v1;

  if (v1)
  {
    v12 = v5[59];
    sub_266C47654(v5[58], &qword_2800CA050, &qword_266DB0080);
    sub_266C47654(v12, &qword_2800CA050, &qword_266DB0080);
    v13 = sub_266CCFCD4;
  }

  else
  {
    v5[65] = a1;
    v13 = sub_266CCEC60;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_266CCEC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v23 = v22[62];
  v25 = v22[48];
  v24 = v22[49];
  v26 = v22[44];
  v27 = v22[35];
  v28 = v22[33];
  *(v23 + 32) = v22[65];
  v29 = sub_266DA7E5C();
  OUTLINED_FUNCTION_9_3(v29);
  (*(v30 + 16))(v24, v28, v29);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v29);
  sub_266DA7BDC();
  __swift_project_boxed_opaque_existential_1((v27 + 128), *(v27 + 152));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0A8, &qword_266DB1EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266DAE4A0;
  *(inited + 56) = &unk_287868050;
  *(inited + 64) = sub_266C47AA8();
  v32 = swift_allocObject();
  *(inited + 32) = v32;
  *(v32 + 16) = "ResponseFramework";
  *(v32 + 24) = 17;
  *(v32 + 32) = 2;
  *(v32 + 40) = "SMART";
  *(v32 + 48) = 5;
  *(v32 + 56) = 2;
  LOBYTE(v25) = sub_266D7E674(inited);
  swift_setDeallocating();
  sub_266C6F0B4();
  LODWORD(a19) = (v25 & 1) == 0;
  v33 = *MEMORY[0x277D5BC50];
  v34 = sub_266DA7C7C();
  OUTLINED_FUNCTION_9_3(v34);
  (*(v35 + 104))(v26, v33, v34);
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v34);
  if (sub_266C3A14C(v23, v36, v37))
  {
    v38 = v22[62];
    v39 = v38 & 0xC000000000000001;
    sub_266CB9F54(0, (v38 & 0xC000000000000001) == 0, v38);
    v40 = v22[62];
    if (v39)
    {
      v41 = MEMORY[0x26D5F1780](0, v40);
    }

    else
    {
      v41 = *(v40 + 32);
    }

    v42 = v41;
    v43 = [v41 catId];

    v135 = sub_266DAA70C();
    v138 = v44;
  }

  else
  {
    v135 = 0;
    v138 = 0;
  }

  v45 = v22[61];
  v46 = v22[59];
  v47 = v22[56];
  v48 = v22[57];
  v49 = v22[50];
  v50 = v22[51];
  v130 = v22[48];
  v131 = v22[49];
  v51 = v22[46];
  v52 = v22[47];
  v53 = v22[45];
  v132 = v22[44];
  v133 = v22[43];
  v134 = v46;
  v136 = v22[36];
  v137 = v22[55];
  sub_266C4756C(v22[58], v48);
  sub_266C4756C(v46, v47);
  v54 = *(v49 + 80);
  v55 = (v54 + 24) & ~v54;
  v56 = (v50 + v54 + v55) & ~v54;
  v57 = swift_allocObject();
  v22[66] = v57;
  *(v57 + 16) = v45;
  sub_266C475DC(v48, v57 + v55);
  sub_266C475DC(v47, v57 + v56);
  (*(v51 + 16))(v52, v130, v53);
  v58 = swift_task_alloc();
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  *(v58 + 32) = 0;
  *(v58 + 40) = v135;
  *(v58 + 48) = v138;
  *(v58 + 56) = v131;
  *(v58 + 64) = 1;
  *(v58 + 65) = a19;
  *(v58 + 72) = sub_266C4876C;
  *(v58 + 80) = v57;
  *(v58 + 88) = v132;

  sub_266DA800C();

  sub_266C4756C(v134, v137);
  if (__swift_getEnumTagSinglePayload(v137, 1, v136) == 1)
  {
    v59 = v22 + 55;
  }

  else
  {
    v60 = v22[58];
    v61 = v22[54];
    v62 = v22[36];
    sub_266C476A8(v22[55], v22[40]);
    sub_266C4756C(v60, v61);
    v63 = OUTLINED_FUNCTION_31();
    if (__swift_getEnumTagSinglePayload(v63, v64, v62) != 1)
    {
      v97 = v22[39];
      v98 = v22[40];
      v99 = v22[36];
      sub_266C476A8(v22[54], v97);
      v22[24] = v99;
      v100 = sub_266C4DB4C();
      v22[25] = v100;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22 + 21);
      sub_266C47750(v98, boxed_opaque_existential_1);
      v22[29] = v99;
      v22[30] = v100;
      v102 = __swift_allocate_boxed_opaque_existential_1(v22 + 26);
      sub_266C47750(v97, v102);
      OUTLINED_FUNCTION_17_11(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_24_1();
      v22[67] = v103;
      *v103 = v104;
      v103[1] = sub_266CCF340;
      v106 = v22[61];
      v105 = v22[62];
      v107 = v22[43];
      v108 = v22[31];
      OUTLINED_FUNCTION_25_0();

      return v114(v109, v110, v111, v112, v113, v114, v115, v116, a9, v130, v131, v132, v133, v134, v135, v136, v137, v138, a19, a20, a21, a22);
    }

    v59 = v22 + 54;
    sub_266C477B4(v22[40]);
  }

  v65 = *v59;
  v66 = v22[59];
  v67 = v22[53];
  v68 = v22[36];
  sub_266C47654(v65, &qword_2800CA050, &qword_266DB0080);
  sub_266C4756C(v66, v67);
  v69 = OUTLINED_FUNCTION_31();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v69, v70, v68);
  v72 = v22[53];
  v73 = v22[36];
  if (EnumTagSinglePayload == 1)
  {
    v74 = v22[58];
    v75 = v22[52];
    sub_266C47654(v72, &qword_2800CA050, &qword_266DB0080);
    sub_266C4756C(v74, v75);
    v76 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v76, v77, v73) == 1)
    {
      sub_266C47654(v22[52], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_17_11(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_24_1();
      v22[70] = v78;
      *v78 = v79;
      v78[1] = sub_266CCFA7C;
      v81 = v22[61];
      v80 = v22[62];
      v82 = v22[43];
      v83 = v22[31];
      OUTLINED_FUNCTION_25_0();

      return v87(v84, v85, v86, v87, v88, v89, v90, v91, a9, v130, v131, v132, v133, v134, v135, v136, v137, v138, a19, a20, a21, a22);
    }

    v117 = v22[36];
    v118 = v22[37];
    sub_266C476A8(v22[52], v118);
    v22[14] = v117;
    v22[15] = sub_266C4DB4C();
    v119 = __swift_allocate_boxed_opaque_existential_1(v22 + 11);
    sub_266C47750(v118, v119);
    OUTLINED_FUNCTION_17_11(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_24_1();
    v22[69] = v120;
    *v120 = v121;
    OUTLINED_FUNCTION_37_4(v120);
  }

  else
  {
    v93 = v22[38];
    sub_266C476A8(v72, v93);
    v22[19] = v73;
    v22[20] = sub_266C4DB4C();
    v94 = __swift_allocate_boxed_opaque_existential_1(v22 + 16);
    sub_266C47750(v93, v94);
    OUTLINED_FUNCTION_17_11(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_24_1();
    v22[68] = v95;
    *v95 = v96;
    OUTLINED_FUNCTION_37_4(v95);
  }

  OUTLINED_FUNCTION_25_0();

  return v126(v122, v123, v124, v125, v126, v127, v128, v129, a9, v130, v131, v132, v133, v134, v135, v136, v137, v138, a19, a20, a21, a22);
}

uint64_t sub_266CCF340()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 536);
  v6 = *(v4 + 496);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 208));
  __swift_destroy_boxed_opaque_existential_0((v2 + 168));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266CCF448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = v22[66];
  v26 = v22[39];
  v27 = v22[40];

  sub_266C477B4(v26);
  sub_266C477B4(v27);
  v28 = OUTLINED_FUNCTION_0_50();
  v29(v28);
  v30 = OUTLINED_FUNCTION_30_4();
  v31(v30);
  OUTLINED_FUNCTION_44_1();
  v32 = OUTLINED_FUNCTION_38();
  sub_266C47654(v32, v33, &qword_266DB0080);
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266CCF5B4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *(v4 + 496);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 128));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266CCF6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = *(v22 + 528);
  v26 = *(v22 + 304);

  sub_266C477B4(v26);
  v27 = OUTLINED_FUNCTION_0_50();
  v28(v27);
  v29 = OUTLINED_FUNCTION_30_4();
  v30(v29);
  OUTLINED_FUNCTION_44_1();
  v31 = OUTLINED_FUNCTION_38();
  sub_266C47654(v31, v32, &qword_266DB0080);
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266CCF818()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 552);
  v6 = *(v4 + 496);
  v7 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 88));
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266CCF918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = *(v22 + 528);
  v26 = *(v22 + 296);

  sub_266C477B4(v26);
  v27 = OUTLINED_FUNCTION_0_50();
  v28(v27);
  v29 = OUTLINED_FUNCTION_30_4();
  v30(v29);
  OUTLINED_FUNCTION_44_1();
  v31 = OUTLINED_FUNCTION_38();
  sub_266C47654(v31, v32, &qword_266DB0080);
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266CCFA7C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = *(v1 + 560);
  v3 = *(v1 + 496);
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266CCFB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_36();
  v25 = *(v22 + 528);

  v26 = OUTLINED_FUNCTION_0_50();
  v27(v26);
  v28 = OUTLINED_FUNCTION_30_4();
  v29(v28);
  OUTLINED_FUNCTION_44_1();
  v30 = OUTLINED_FUNCTION_38();
  sub_266C47654(v30, v31, &qword_266DB0080);
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v24, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_25_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_266CCFCD4()
{
  v2 = v0[58];
  v1 = v0[59];
  v4 = v0[56];
  v3 = v0[57];
  v5 = v0[54];
  v6 = v0[55];
  v8 = v0[52];
  v7 = v0[53];
  v9 = v0[49];
  v13 = v0[48];
  v14 = v0[47];
  v15 = v0[44];
  v16 = v0[43];
  v17 = v0[40];
  v18 = v0[39];
  v19 = v0[38];
  v20 = v0[37];
  *(v0[62] + 16) = 0;

  OUTLINED_FUNCTION_28();
  v11 = v0[64];

  return v10();
}

uint64_t sub_266CCFE14@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_266DA750C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = *a1;
  sub_266DA900C();
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v10 = v8;
  sub_266DA7AFC();
  result = sub_266DA8FBC();
  *a3 = result;
  return result;
}

uint64_t sub_266CCFEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_266C54B08;

  return sub_266CCD8D8(a2, a3);
}

uint64_t sub_266CCFFA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266CCDBF0();
}

uint64_t sub_266CD0068()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C4716C;

  return sub_266CCE244();
}

uint64_t sub_266CD0188@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  return sub_266CCFE14(a1, *(v2 + 40), a2);
}

unint64_t sub_266CD01A8()
{
  result = qword_2800CBB90;
  if (!qword_2800CBB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CBB90);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy25FriendDisambiguationErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_266CD0238(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_50()
{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[57];
  v12 = v0[56];
  v13 = v0[55];
  v14 = v0[54];
  v15 = v0[53];
  v4 = v0[48];
  v5 = v0[49];
  v6 = v0[46];
  v16 = v0[52];
  v17 = v0[47];
  v8 = v0[44];
  v7 = v0[45];
  v9 = v0[40];
  v18 = v0[39];
  v19 = v0[38];
  v20 = v0[37];
  v10 = *(v0[42] + 8);
  return v0[43];
}

uint64_t OUTLINED_FUNCTION_2_33()
{

  return swift_once();
}

void OUTLINED_FUNCTION_33_6()
{

  JUMPOUT(0x26D5F2480);
}

uint64_t OUTLINED_FUNCTION_36_6()
{
  v1 = v0[8];
  v2 = *(v0[9] + 8);
  return v0[10];
}

uint64_t OUTLINED_FUNCTION_37_4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2[61];
  v3 = v2[62];
  v5 = v2[43];
  return v2[31];
}

uint64_t type metadata accessor for FMIPCoreDeviceSearcher()
{
  result = qword_2800CBBB0;
  if (!qword_2800CBBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_266CD03B4()
{
  result = sub_266C79A8C(319, &qword_2800CAAE8);
  if (v1 <= 0x3F)
  {
    result = sub_266C79A8C(319, &qword_2800CAAE0);
    if (v2 <= 0x3F)
    {
      result = sub_266C79A8C(319, &qword_2800CBBC0);
      if (v3 <= 0x3F)
      {
        result = sub_266C79A8C(319, &qword_2800CBBC8);
        if (v4 <= 0x3F)
        {
          result = sub_266C79A8C(319, &qword_2800CBBD0);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for NearbyScanSession();
            if (v6 <= 0x3F)
            {
              result = sub_266C79A8C(319, &qword_2800CBBD8);
              if (v7 <= 0x3F)
              {
                result = sub_266C79A8C(319, &qword_2800CBBE0);
                if (v8 <= 0x3F)
                {
                  result = sub_266DAAB4C();
                  if (v9 <= 0x3F)
                  {
                    result = sub_266C22FD4();
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
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

  return result;
}

void sub_266CD0570()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v58 = v2;
  v4 = type metadata accessor for FMIPCoreDeviceSearcher();
  v5 = OUTLINED_FUNCTION_11_3(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_7();
  v11 = v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD30, &qword_266DB53A0);
  OUTLINED_FUNCTION_0_2(v45);
  v46 = v12;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_13();
  v44 = v1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD38, &qword_266DB53A8);
  OUTLINED_FUNCTION_0_2(v48);
  v50 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10();
  v59 = v20;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD40, &qword_266DB53B0);
  OUTLINED_FUNCTION_0_2(v51);
  v54 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10();
  v47 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD48, &qword_266DB53B8);
  v52 = OUTLINED_FUNCTION_0_2(v26);
  v53 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10();
  v49 = v31;
  v57 = v0;
  sub_266CD2D9C(v61);
  v60[60] = v61[0];
  v60[61] = v61[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD50, &qword_266DB53C0);
  sub_266DAB31C();
  OUTLINED_FUNCTION_0_51();
  v55 = v11;
  v56 = v32;
  v33 = v11;
  sub_266CD5400(v0, v11, v34);
  sub_266CD5F1C(v3, v60);
  v35 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v36 = (v9 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v43 = v35;
  sub_266CD5330(v33, v37 + v35);
  OUTLINED_FUNCTION_7_20(v37 + v36);
  OUTLINED_FUNCTION_26_0();
  v38 = swift_allocObject();
  *(v38 + 16) = sub_266CD5F78;
  *(v38 + 24) = v37;
  sub_266DA966C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD58, &qword_266DB53C8);
  OUTLINED_FUNCTION_16_14();
  sub_266C230E8(v39, &qword_2800CBD30, &qword_266DB53A0);
  sub_266C230E8(&qword_2800CBD68, &qword_2800CBD58, &qword_266DB53C8);
  sub_266DA98DC();

  (*(v46 + 8))(v44, v45);
  sub_266CD5400(v57, v55, v56);
  sub_266CD5F1C(v58, v60);
  v40 = swift_allocObject();
  sub_266CD5330(v55, v40 + v35);
  OUTLINED_FUNCTION_7_20(v40 + v36);
  OUTLINED_FUNCTION_26_0();
  v41 = swift_allocObject();
  *(v41 + 16) = sub_266CD608C;
  *(v41 + 24) = v40;
  sub_266DA966C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB200, &qword_266DB53D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB10, &unk_266DB5340);
  sub_266C230E8(&qword_2800CBD70, &qword_2800CBD38, &qword_266DB53A8);
  sub_266C230E8(&qword_2800CAB18, &qword_2800CAB10, &unk_266DB5340);
  sub_266DA98DC();

  (*(v50 + 8))(v59, v48);
  sub_266CD5400(v57, v55, v56);
  sub_266CD5F1C(v58, v60);
  v42 = swift_allocObject();
  sub_266CD5330(v55, v42 + v43);
  OUTLINED_FUNCTION_7_20(v42 + v36);
  sub_266DA966C();
  sub_266C230E8(&qword_2800CBD78, &qword_2800CBD40, &qword_266DB53B0);
  sub_266DA98DC();

  (*(v54 + 8))(v47, v51);
  sub_266C230E8(&qword_2800CBD80, &qword_2800CBD48, &qword_266DB53B8);
  sub_266DA97EC();
  (*(v53 + 8))(v49, v52);
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CD0C5C()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CBB98);
  v1 = __swift_project_value_buffer(v0, qword_2800CBB98);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266CD0D24(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1((v1 + 216), *(v1 + 240));
  sub_266C9C76C(*v3, a1);
  sub_266CD0D74();
  v5 = v4;

  return v5;
}

void sub_266CD0D74()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_47_3();
  v4 = OUTLINED_FUNCTION_11_3(v3);
  v60 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v59 = v8;
  OUTLINED_FUNCTION_30_7();
  v61 = v9;
  v10 = sub_266DA947C();
  v11 = OUTLINED_FUNCTION_0_2(v10);
  v66 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_6();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBCA0, &qword_266DB5330);
  v19 = OUTLINED_FUNCTION_0_2(v18);
  v63 = v20;
  v64 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_42_1(v24);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBCA8, &qword_266DB5338);
  OUTLINED_FUNCTION_0(v65);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_20_10();
  v58 = v1;
  sub_266C233D0(v1 + 40, v67);
  sub_266DAABDC();
  if (qword_2800C9128 != -1)
  {
    OUTLINED_FUNCTION_2_16();
  }

  v28 = qword_28156EF98;
  sub_266DA946C();
  v57 = v28;
  sub_266DA945C();
  v29 = *(v66 + 8);
  v30 = v29(v17, v10);
  v56 = v29;
  v66 += 8;
  v55 = v10;
  MEMORY[0x28223BE20](v30);
  v54[-2] = v67;
  v68[0] = sub_266D69B00(sub_266C7ACB4, &v54[-4], v0);
  sub_266C233D0(v67, &v69);
  v68[1] = v0;

  sub_266DAABCC();
  sub_266DA946C();
  sub_266DA945C();
  v29(v17, v10);
  __swift_destroy_boxed_opaque_existential_0(v67);
  v31 = v58;
  sub_266CD0570();
  v33 = v32;
  v54[1] = v32;
  sub_266C7AFE4(v68);
  v68[0] = v33;
  OUTLINED_FUNCTION_0_51();
  v34 = v61;
  sub_266CD5400(v31, v61, v35);
  OUTLINED_FUNCTION_39_3(v60);
  v38 = v37 & ~v36;
  v39 = swift_allocObject();
  sub_266CD5330(v34, v39 + v38);
  OUTLINED_FUNCTION_26_0();
  v40 = swift_allocObject();
  *(v40 + 16) = sub_266CD5C18;
  *(v40 + 24) = v39;
  v61 = sub_266DA966C();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB10, &unk_266DB5340);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0A0, &qword_266DAFC70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAEC8, &qword_266DB5350);
  sub_266C230E8(&qword_2800CAB18, &qword_2800CAB10, &unk_266DB5340);
  sub_266C230E8(&qword_2800CAED0, &qword_2800CAEC8, &qword_266DB5350);
  v41 = v62;
  sub_266DA98DC();

  sub_266DA946C();
  v43 = v63;
  v42 = v64;
  (*(v63 + 16))(v2, v41, v64);
  v44 = v65;
  v45 = v2 + v65[12];
  sub_266DA946C();
  v56(v17, v55);
  (*(v43 + 8))(v41, v42);
  OUTLINED_FUNCTION_14_17(v2 + v44[11]);
  *(v2 + v44[9]) = &dword_266C08000;
  v46 = v57;
  *(v2 + v44[10]) = v57;
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_32_5();
  sub_266C230E8(v47, v48, v49);
  v50 = v46;
  sub_266DA97EC();
  OUTLINED_FUNCTION_32_5();
  sub_266C1825C(v51, v52, v53);
  OUTLINED_FUNCTION_5();
}

void sub_266CD1320()
{
  OUTLINED_FUNCTION_6();
  v92 = v0;
  v3 = v2;
  v4 = sub_266DA947C();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_6();
  v12 = v11 - v10;
  v13 = type metadata accessor for FMIPCoreDeviceSearcher();
  v14 = OUTLINED_FUNCTION_11_3(v13);
  v83 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_30_7();
  v19 = v18;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBCB8, &qword_266DB5358);
  OUTLINED_FUNCTION_0_2(v86);
  v85 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v24);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBCC0, &qword_266DB5360);
  OUTLINED_FUNCTION_0(v87);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_19_12();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBCC8, &qword_266DB5368);
  OUTLINED_FUNCTION_0_2(v91);
  v89 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_10();
  v88 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBCD0, &qword_266DB5370);
  OUTLINED_FUNCTION_0_2(v33);
  v90 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_42_1(v38);
  v93 = v3;
  v94 = sub_266CD4BAC;
  v95 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBCD8, &qword_266DB5378);
  sub_266DAAF3C();
  v96[3] = sub_266CD4C44;
  v96[4] = 0;
  v96[5] = sub_266CD5CBC;
  v96[6] = 0;
  v96[7] = sub_266CD5CC8;
  v96[8] = 0;
  v39 = sub_266CB87D8(v96);
  if (*(v39 + 16))
  {
    v82 = v3;
    if (qword_2800C92A0 != -1)
    {
      OUTLINED_FUNCTION_4_27();
    }

    v78 = v33;
    v79 = v12;
    v80 = v7;
    v81 = v4;
    v40 = sub_266DA94AC();
    v41 = OUTLINED_FUNCTION_46_3(v40, qword_2800CBB98);
    v42 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v42))
    {
      v43 = OUTLINED_FUNCTION_11();
      *v43 = 0;
      _os_log_impl(&dword_266C08000, v41, v42, "Checking for nearby devices", v43, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v44 = *(v92 + 208);
    v45 = *(v92 + 200);
    sub_266C50034(v39);

    sub_266CEFC08();
    v47 = v46;

    OUTLINED_FUNCTION_0_51();
    sub_266CD5400(v92, v19, v48);
    v49 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v77 = v49 + v17;
    v50 = swift_allocObject();
    v83 = v49;
    sub_266CD5330(v19, v50 + v49);
    v93 = v47;
    OUTLINED_FUNCTION_26_0();
    v51 = swift_allocObject();
    *(v51 + 16) = sub_266CD5CF8;
    *(v51 + 24) = v50;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBCE0, &qword_266DB5380);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBCE8, &qword_266DB5388);
    OUTLINED_FUNCTION_2_34();
    sub_266C230E8(v52, &qword_2800CBCE0, &qword_266DB5380);
    sub_266DA984C();

    if (qword_2800C9128 != -1)
    {
      OUTLINED_FUNCTION_2_16();
    }

    v53 = qword_28156EF98;
    sub_266DA946C();
    (*(v85 + 16))(v1, v84, v86);
    v54 = v87;
    v55 = v1 + v87[12];
    sub_266DA946C();
    v56 = OUTLINED_FUNCTION_40_2();
    v57(v56, v81);
    (*(v85 + 8))(v84, v86);
    OUTLINED_FUNCTION_14_17(v1 + v87[11]);
    *(v1 + v87[9]) = &dword_266C08000;
    *(v1 + v54[10]) = v53;
    OUTLINED_FUNCTION_0_51();
    sub_266CD5400(v92, v19, v58);
    v59 = swift_allocObject();
    sub_266CD5330(v19, v59 + v83);
    *(v59 + ((v77 + 7) & 0xFFFFFFFFFFFFFFF8)) = v82;

    v60 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0A0, &qword_266DAFC70);
    OUTLINED_FUNCTION_0_13();
    sub_266C230E8(v61, &qword_2800CBCC0, &qword_266DB5360);
    sub_266DA984C();

    sub_266C1825C(v1, &qword_2800CBCC0, &qword_266DB5360);
    OUTLINED_FUNCTION_4_9();
    sub_266C230E8(v62, v63, v64);
    sub_266CD5DF0();
    sub_266DA993C();
    (*(v89 + 8))(v88, v91);
    OUTLINED_FUNCTION_23_9(&qword_2800CBD10, &qword_2800CBCD0, &qword_266DB5370);
    OUTLINED_FUNCTION_48_4();
    v65 = OUTLINED_FUNCTION_22_9();
    v66(v65);
  }

  else
  {

    if (qword_2800C92A0 != -1)
    {
      OUTLINED_FUNCTION_4_27();
    }

    v67 = sub_266DA94AC();
    v68 = OUTLINED_FUNCTION_46_3(v67, qword_2800CBB98);
    v69 = sub_266DAAB0C();
    if (os_log_type_enabled(v68, v69))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v70, v71, "Skipping nearby scan");
      OUTLINED_FUNCTION_6_1();
    }

    v72 = sub_266DAA6CC();
    sub_266DAABDC();
    if (qword_2800C9128 != -1)
    {
      OUTLINED_FUNCTION_2_16();
    }

    sub_266DA946C();
    OUTLINED_FUNCTION_36_7();
    v73 = *(v7 + 8);
    v74 = v73(v12, v4);
    MEMORY[0x28223BE20](v74);
    *(&v76 - 4) = v92;
    *(&v76 - 3) = v72;
    *(&v76 - 16) = 0;
    v75 = sub_266D69C84(sub_266CD5E44, (&v76 - 6), v3);
    sub_266DAABCC();
    sub_266DA946C();
    OUTLINED_FUNCTION_36_7();
    v73(v12, v4);

    sub_266CD54B0(v75);
  }

  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_5();
}

void sub_266CD1CC4()
{
  OUTLINED_FUNCTION_6();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC360, &qword_266DB00D0);
  OUTLINED_FUNCTION_4_3(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10();
  v132 = v11;
  v12 = type metadata accessor for FMIPCoreDeviceSearcher();
  v13 = *(v12 - 8);
  v104[0] = v12 - 8;
  v115 = v13;
  v114 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_15_0(v14);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBBE8, &qword_266DB52B0);
  OUTLINED_FUNCTION_0_2(v105);
  v106 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19_12();
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBBF0, &qword_266DB52B8);
  OUTLINED_FUNCTION_0_2(v107);
  v108 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v22);
  v24 = v104 - v23;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBBF8, &qword_266DB52C0);
  OUTLINED_FUNCTION_0_2(v111);
  v113 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC00, &qword_266DB52C8);
  v120 = OUTLINED_FUNCTION_0_2(v30);
  v121 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v35);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC08, &qword_266DB52D0);
  OUTLINED_FUNCTION_0_2(v122);
  v124 = v36;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v40);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC10, &qword_266DB52D8);
  OUTLINED_FUNCTION_0_2(v123);
  v125 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_42_1(v45);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC18, &qword_266DB52E0);
  OUTLINED_FUNCTION_0_2(v128);
  v131 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_10();
  v117 = v50;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC20, &qword_266DB52E8);
  OUTLINED_FUNCTION_0_2(v127);
  v130 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_10();
  v118 = v55;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC28, &unk_266DB52F0);
  OUTLINED_FUNCTION_0_2(v126);
  v129 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_10();
  v119 = v60;
  v133 = *(*__swift_project_boxed_opaque_existential_1(v0, v0[3]) + 16);
  OUTLINED_FUNCTION_26_0();
  v61 = swift_allocObject();
  *(v61 + 16) = v6;
  *(v61 + 24) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC30, &unk_266DB7460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB78, &qword_266DB5300);
  sub_266C230E8(&unk_28156F0A8, &qword_2800CBC30, &unk_266DB7460);
  OUTLINED_FUNCTION_32_5();
  sub_266DA984C();

  v62 = OUTLINED_FUNCTION_4_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v62, v63);
  OUTLINED_FUNCTION_4_9();
  v104[2] = v64;
  sub_266C230E8(v65, &qword_2800CBBE8, &qword_266DB52B0);
  v104[1] = MEMORY[0x277CBCE80];
  OUTLINED_FUNCTION_43_3();
  sub_266C230E8(v66, v67, v68);
  v69 = v105;
  sub_266DA987C();
  (*(v106 + 8))(v1, v69);
  type metadata accessor for Location();
  v106 = MEMORY[0x277CBCC40];
  sub_266C230E8(&qword_2800CBC50, &qword_2800CBBF0, &qword_266DB52B8);
  v70 = v107;
  sub_266DA97FC();
  (*(v108 + 8))(v24, v70);
  OUTLINED_FUNCTION_0_51();
  v71 = v110;
  sub_266CD5400(v0, v110, v72);
  OUTLINED_FUNCTION_39_3(v115);
  v75 = v74 & ~v73;
  v76 = swift_allocObject();
  sub_266CD5330(v71, v76 + v75);
  sub_266DA966C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC58, &unk_266DB5310);
  sub_266C230E8(&qword_2800CBC60, &qword_2800CBBF8, &qword_266DB52C0);
  sub_266C230E8(&qword_2800CBC68, &qword_2800CBC58, &unk_266DB5310);
  v77 = v109;
  v78 = v111;
  sub_266DA996C();

  v79 = OUTLINED_FUNCTION_40_2();
  v80(v79, v78);
  v81 = *(v104[0] + 60);
  v133 = *(v2 + *(v104[0] + 64));
  v82 = v133;
  v83 = sub_266DAAB1C();
  v84 = v132;
  __swift_storeEnumTagSinglePayload(v132, 1, 1, v83);
  sub_266C22FD4();
  OUTLINED_FUNCTION_15_16();
  sub_266C230E8(v85, &qword_2800CBC00, &qword_266DB52C8);
  sub_266C23060();
  v86 = v82;
  v87 = v112;
  v88 = v120;
  sub_266DA98EC();
  sub_266C1825C(v84, &qword_2800CC360, &qword_266DB00D0);

  (*(v121 + 8))(v77, v88);
  type metadata accessor for SpeakableLocation();
  sub_266C230E8(&qword_2800CBC78, &qword_2800CBC08, &qword_266DB52D0);
  v89 = v116;
  v90 = v122;
  sub_266DA984C();
  (*(v124 + 8))(v87, v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9AD0, &unk_266DB32B0);
  v91 = v117;
  v92 = v123;
  sub_266DA95EC();
  (*(v125 + 8))(v89, v92);
  v93 = OUTLINED_FUNCTION_4_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(v93, v94);
  sub_266C230E8(&qword_2800CBC80, &qword_2800CBC18, &qword_266DB52E0);
  OUTLINED_FUNCTION_43_3();
  sub_266C230E8(v95, v96, v97);
  v98 = v118;
  v99 = v128;
  sub_266DA987C();
  (*(v131 + 8))(v91, v99);
  sub_266C230E8(&qword_2800CBC88, &qword_2800CBC20, &qword_266DB52E8);
  v100 = v127;
  sub_266DA988C();
  (*(v130 + 8))(v98, v100);
  OUTLINED_FUNCTION_17_17();
  sub_266C230E8(v101, &qword_2800CBC28, &unk_266DB52F0);
  OUTLINED_FUNCTION_48_4();
  v102 = OUTLINED_FUNCTION_22_9();
  v103(v102);
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266CD2878@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = 0;
  v8 = *result;
  v9 = *(*result + 16);
  for (i = *result + 32; ; i += 40)
  {
    if (v9 == v7)
    {
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }

    if (v7 >= *(v8 + 16))
    {
      break;
    }

    sub_266C233D0(i, &v16);
    v11 = v17;
    v12 = v18;
    __swift_project_boxed_opaque_existential_1(&v16, v17);
    if ((*(v12 + 16))(v11, v12) == a2 && v13 == a3)
    {

      return sub_266C0B0D8(&v16, a4);
    }

    v15 = sub_266DAB17C();

    if (v15)
    {
      return sub_266C0B0D8(&v16, a4);
    }

    result = __swift_destroy_boxed_opaque_existential_0(&v16);
    ++v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_266CD29F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13[-1] - v6;
  if (*(a1 + 24))
  {
    sub_266C67BE8(a1, v13, &qword_2800CAB78, &qword_266DB5300);
    v8 = v14;
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v9 + 104))(v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v10 = type metadata accessor for Location();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v10);
  }

  return sub_266CD5AB4(v7, a2);
}

void sub_266CD2B04(uint64_t a1@<X1>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a1 + 256), *(a1 + 280));
  sub_266CD8ED0();
  *a2 = v3;
}

uint64_t sub_266CD2B54@<X0>(uint64_t *a1@<X8>)
{
  if (qword_2800C92A0 != -1)
  {
    swift_once();
  }

  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, qword_2800CBB98);
  v3 = sub_266DA948C();
  v4 = sub_266DAAAEC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266C08000, v3, v4, "Timed out waiting for device to have a geocoded location", v5, 2u);
    MEMORY[0x26D5F2480](v5, -1, -1);
  }

  sub_266CD545C();
  result = swift_allocError();
  *a1 = result;
  return result;
}

id sub_266CD2C50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Location();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SpeakableLocation();
  sub_266CD5400(a1, v7, type metadata accessor for Location);
  result = sub_266D6CE4C(v7);
  *a2 = result;
  return result;
}

id sub_266CD2D00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  *a3 = nullsub_1(*a1, a2);

  return v4;
}

uint64_t sub_266CD2D9C@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_266DA947C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266DAABDC();
  if (qword_2800C9128 != -1)
  {
    swift_once();
  }

  sub_266DA946C();
  sub_266DA945C();
  v8 = *(v4 + 8);
  v8(v7, v3);
  v9 = __swift_project_boxed_opaque_existential_1((v1 + 120), *(v1 + 144));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  KeyPath = swift_getKeyPath();
  LOBYTE(v10) = sub_266C68428(KeyPath, 1346981190, 0xE400000000000000, v10);

  *a1 = 0;
  a1[1] = (v10 & 1) == 0;
  sub_266DAABCC();
  sub_266DA946C();
  sub_266DA945C();
  return (v8)(v7, v3);
}

void sub_266CD2F88()
{
  OUTLINED_FUNCTION_6();
  v3 = v0;
  v4 = sub_266DA947C();
  v5 = OUTLINED_FUNCTION_0_2(v4);
  v59 = v6;
  v60 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_6();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBE28, &qword_266DB5440);
  OUTLINED_FUNCTION_0_2(v12);
  v58 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBE30, &qword_266DB5448);
  OUTLINED_FUNCTION_0(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_20_10();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBE38, &qword_266DB5450);
  OUTLINED_FUNCTION_0_2(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_13();
  if (sub_266D65C48() && (sub_266CD4540(), (v29 & 1) == 0))
  {
    v56 = v25;
    v57 = v23;
    if (qword_2800C92A0 != -1)
    {
      OUTLINED_FUNCTION_4_27();
    }

    v36 = sub_266DA94AC();
    v37 = OUTLINED_FUNCTION_46_3(v36, qword_2800CBB98);
    v38 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v38))
    {
      v39 = OUTLINED_FUNCTION_11();
      *v39 = 0;
      _os_log_impl(&dword_266C08000, v37, v38, "Waiting for family update", v39, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v61 = *(*__swift_project_boxed_opaque_existential_1(v3, v3[3]) + 24);
    v40 = OUTLINED_FUNCTION_4_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
    OUTLINED_FUNCTION_2_34();
    OUTLINED_FUNCTION_43_3();
    sub_266C230E8(v42, v43, v44);
    sub_266DA988C();
    if (qword_2800C9128 != -1)
    {
      OUTLINED_FUNCTION_2_16();
    }

    v45 = qword_28156EF98;
    sub_266DA946C();
    v46 = v58;
    (*(v58 + 16))(v2, v18, v12);
    v47 = v2 + v19[12];
    sub_266DA946C();
    (*(v59 + 8))(v11, v60);
    (*(v46 + 8))(v18, v12);
    OUTLINED_FUNCTION_14_17(v2 + v19[11]);
    *(v2 + v19[9]) = &dword_266C08000;
    *(v2 + v19[10]) = v45;
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_32_5();
    sub_266C230E8(v48, v49, v50);
    sub_266CD5DF0();
    v51 = v45;
    sub_266DA993C();
    OUTLINED_FUNCTION_32_5();
    sub_266C1825C(v52, v53, v54);
    OUTLINED_FUNCTION_23_9(&qword_2800CBE50, &qword_2800CBE38, &qword_266DB5450);
    v55 = v57;
    sub_266DA97EC();
    (*(v56 + 8))(v1, v55);
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_5();
  }

  else
  {
    if (qword_2800C92A0 != -1)
    {
      OUTLINED_FUNCTION_4_27();
    }

    v30 = sub_266DA94AC();
    v31 = OUTLINED_FUNCTION_46_3(v30, qword_2800CBB98);
    v32 = sub_266DAAB0C();
    if (os_log_type_enabled(v31, v32))
    {
      *OUTLINED_FUNCTION_11() = 0;
      OUTLINED_FUNCTION_7_0(&dword_266C08000, v33, v34, "Skipping wait for family update");
      OUTLINED_FUNCTION_6_1();
    }

    OUTLINED_FUNCTION_5();

    sub_266CD56C0();
  }
}

void sub_266CD344C()
{
  OUTLINED_FUNCTION_6();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for FMIPCoreDeviceSearcher();
  v6 = OUTLINED_FUNCTION_11_3(v5);
  v83 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_30_7();
  v84 = v10;
  v11 = sub_266DA947C();
  v12 = OUTLINED_FUNCTION_0_2(v11);
  v81 = v13;
  v82 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_42_1(v17 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBDF0, &qword_266DB5420);
  OUTLINED_FUNCTION_0_2(v18);
  v80 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v22);
  v24 = v79 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBDF8, &qword_266DB5428);
  OUTLINED_FUNCTION_0(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_20_10();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBE00, &qword_266DB5430);
  OUTLINED_FUNCTION_0_2(v90);
  v88 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10();
  v86 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBE08, &qword_266DB5438);
  OUTLINED_FUNCTION_0_2(v34);
  v89 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_10();
  v87 = v39;
  v40 = *(*__swift_project_boxed_opaque_existential_1(v0, v0[3]) + 80);
  v41 = sub_266DAA15C();
  v42 = sub_266C6A6CC(v41);

  v43 = *(v42 + 16);

  v85 = v4;
  if (v43 || sub_266D65D00())
  {
    v44 = sub_266CD46BC();
    v45 = sub_266CD4758(v44, v4);

    v46 = 0;
  }

  else
  {
    v46 = 1;
    v45 = MEMORY[0x277D84F90];
  }

  if (*(v45 + 16))
  {
    sub_266CD58A4(v45);
  }

  else
  {

    if (qword_2800C92A0 != -1)
    {
      OUTLINED_FUNCTION_4_27();
    }

    v79[1] = v34;
    v47 = sub_266DA94AC();
    v48 = OUTLINED_FUNCTION_46_3(v47, qword_2800CBB98);
    v49 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 67109120;
      *(v50 + 4) = v46;
      _os_log_impl(&dword_266C08000, v48, v49, "Waiting for refresh (needsItemWait: %{BOOL}d)", v50, 8u);
      OUTLINED_FUNCTION_6_1();
    }

    *&v91[0] = *(*__swift_project_boxed_opaque_existential_1(v2, v2[3]) + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBC30, &unk_266DB7460);
    OUTLINED_FUNCTION_2_34();
    sub_266C230E8(v51, &qword_2800CBC30, &unk_266DB7460);
    sub_266DA988C();
    if (qword_2800C9128 != -1)
    {
      OUTLINED_FUNCTION_2_16();
    }

    v52 = qword_28156EF98;
    sub_266DA946C();
    v53 = v80;
    (*(v80 + 16))(v1, v24, v18);
    v54 = v1 + v25[12];
    sub_266DA946C();
    v55 = OUTLINED_FUNCTION_40_2();
    v56(v55);
    (*(v53 + 8))(v24, v18);
    OUTLINED_FUNCTION_14_17(v1 + v25[11]);
    *(v1 + v25[9]) = &dword_266C08000;
    *(v1 + v25[10]) = v52;
    OUTLINED_FUNCTION_0_51();
    v57 = v84;
    sub_266CD5400(v2, v84, v58);
    sub_266CD5F1C(v85, v91);
    OUTLINED_FUNCTION_39_3(v83);
    v61 = v60 & ~v59;
    v62 = swift_allocObject();
    sub_266CD5330(v57, v62 + v61);
    v63 = v62 + ((v9 + v61 + 7) & 0xFFFFFFFFFFFFFFF8);
    v64 = v91[1];
    *v63 = v91[0];
    *(v63 + 16) = v64;
    *(v63 + 32) = v91[2];
    *(v63 + 48) = v92;
    v65 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB200, &qword_266DB53D0);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_44_3();
    sub_266C230E8(v66, v67, v68);
    v69 = v86;
    sub_266DA984C();

    OUTLINED_FUNCTION_44_3();
    sub_266C1825C(v70, v71, v72);
    OUTLINED_FUNCTION_4_9();
    sub_266C230E8(v73, v74, v75);
    sub_266CD5DF0();
    v76 = v90;
    sub_266DA98FC();
    (*(v88 + 8))(v69, v76);
    sub_266C230E8(&qword_2800CBE20, &qword_2800CBE08, &qword_266DB5438);
    OUTLINED_FUNCTION_48_4();
    v77 = OUTLINED_FUNCTION_22_9();
    v78(v77);
  }

  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_5();
}

void sub_266CD3B20(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_266CD3B54();
  *a2 = v4;
}

void sub_266CD3B54()
{
  OUTLINED_FUNCTION_6();
  v42 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for FMIPCoreDeviceSearcher();
  v7 = OUTLINED_FUNCTION_11_3(v6);
  v41 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD88, &qword_266DB53D8);
  OUTLINED_FUNCTION_0_2(v44);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_13();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD90, &qword_266DB53E0);
  OUTLINED_FUNCTION_0_2(v45);
  v43 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19_12();
  if (qword_2800C92A0 != -1)
  {
    OUTLINED_FUNCTION_4_27();
  }

  v20 = sub_266DA94AC();
  v21 = OUTLINED_FUNCTION_46_3(v20, qword_2800CBB98);
  v22 = sub_266DAAADC();
  if (OUTLINED_FUNCTION_16_0(v22))
  {
    v23 = OUTLINED_FUNCTION_11();
    *v23 = 0;
    _os_log_impl(&dword_266C08000, v21, v22, "Validating SearchResults", v23, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  if (*(v3 + 16) || (v24 = *(sub_266CD46BC() + 16), , v24))
  {
    v25 = 0;
  }

  else
  {
    v25 = 1;
    v3 = 3;
  }

  v46[7] = v3;
  v47 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD98, &qword_266DB53E8);
  sub_266DAB31C();
  OUTLINED_FUNCTION_0_51();
  sub_266CD5400(v42, &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  sub_266CD5F1C(v5, v46);
  OUTLINED_FUNCTION_39_3(v41);
  v29 = v28 & ~v27;
  v30 = swift_allocObject();
  sub_266CD5330(&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
  OUTLINED_FUNCTION_7_20(v30 + ((v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_266DA966C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB200, &qword_266DB53D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAB10, &unk_266DB5340);
  OUTLINED_FUNCTION_16_14();
  sub_266C230E8(v31, v32, v33);
  OUTLINED_FUNCTION_2_34();
  sub_266C230E8(v34, &qword_2800CAB10, &unk_266DB5340);
  v35 = v44;
  sub_266DA98DC();

  (*(v12 + 8))(v1, v35);
  OUTLINED_FUNCTION_15_16();
  sub_266C230E8(v36, v37, v38);
  OUTLINED_FUNCTION_48_4();
  v39 = OUTLINED_FUNCTION_22_9();
  v40(v39);
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_5();
}

void sub_266CD3F30(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_266CD3F60();
  *a2 = v4;
}

void sub_266CD3F60()
{
  OUTLINED_FUNCTION_6();
  v79 = v0;
  v4 = v3;
  v5 = sub_266DA947C();
  v6 = OUTLINED_FUNCTION_0_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_6();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBDB0, &qword_266DB53F0);
  v15 = OUTLINED_FUNCTION_0_2(v14);
  v80 = v16;
  v81 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19_12();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBDB8, &qword_266DB53F8);
  OUTLINED_FUNCTION_0_2(v20);
  v83 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v73 - v25;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBDC0, &qword_266DB5400);
  OUTLINED_FUNCTION_0(v82);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v29);
  v31 = &v73 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBDC8, &qword_266DB5408);
  OUTLINED_FUNCTION_0(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_20_10();
  v36 = *(v4 + 16);
  if (v36)
  {
    v74 = v20;
    v75 = v13;
    v76 = v8;
    v77 = v5;
    v78 = v4;
    v37 = v4 + 32;
    v38 = v36 + 1;
    while (--v38)
    {
      v39 = v37 + 40;
      sub_266C233D0(v37, v84);
      v41 = v85;
      v40 = v86;
      __swift_project_boxed_opaque_existential_1(v84, v85);
      v42 = (*(v40 + 120))(v41, v40);
      __swift_destroy_boxed_opaque_existential_0(v84);
      v37 = v39;
      if ((v42 & 1) == 0)
      {
        v4 = v78;
        goto LABEL_6;
      }
    }

    v84[0] = *(*__swift_project_boxed_opaque_existential_1((v79 + 80), *(v79 + 104)) + OBJC_IVAR____TtC10SiriFindMy22BluetoothStateProvider_statePublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CAFC8, &qword_266DB5410);
    OUTLINED_FUNCTION_2_34();
    sub_266C230E8(v47, &unk_2800CAFC8, &qword_266DB5410);
    sub_266DA988C();
    OUTLINED_FUNCTION_26_0();
    v48 = swift_allocObject();
    *(v48 + 16) = sub_266CD4A00;
    *(v48 + 24) = 0;
    type metadata accessor for CBManagerState(0);
    OUTLINED_FUNCTION_17_17();
    sub_266C230E8(v49, v50, v51);
    v52 = v81;
    sub_266DA984C();

    (*(v80 + 8))(v1, v52);
    v53 = swift_allocObject();
    *(v53 + 16) = v78;
    OUTLINED_FUNCTION_4_9();
    sub_266C230E8(v54, v55, v56);
    sub_266CD5DF0();

    v57 = v74;
    sub_266DA993C();
    (*(v83 + 8))(v26, v57);
    v58 = &v31[*(v82 + 44)];
    *v58 = sub_266CD6250;
    v58[1] = v53;
    if (qword_2800C9128 != -1)
    {
      OUTLINED_FUNCTION_2_16();
    }

    v59 = qword_28156EF98;
    sub_266DA946C();
    sub_266C67BE8(v31, v2, &qword_2800CBDC0, &qword_266DB5400);
    v60 = v2 + v32[12];
    sub_266DA946C();
    v61 = OUTLINED_FUNCTION_40_2();
    v62(v61);
    OUTLINED_FUNCTION_43_3();
    sub_266C1825C(v63, v64, v65);
    OUTLINED_FUNCTION_14_17(v2 + v32[11]);
    *(v2 + v32[9]) = &dword_266C08000;
    *(v2 + v32[10]) = v59;
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_44_3();
    sub_266C230E8(v66, v67, v68);
    v69 = v59;
    sub_266DA97EC();
    OUTLINED_FUNCTION_44_3();
    sub_266C1825C(v70, v71, v72);
  }

  else
  {
LABEL_6:
    if (qword_2800C92A0 != -1)
    {
      OUTLINED_FUNCTION_4_27();
    }

    v43 = sub_266DA94AC();
    v44 = OUTLINED_FUNCTION_46_3(v43, qword_2800CBB98);
    v45 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v45))
    {
      v46 = OUTLINED_FUNCTION_11();
      *v46 = 0;
      _os_log_impl(&dword_266C08000, v44, v45, "Skipping bluetooth check", v46, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    sub_266CD58A4(v4);
  }

  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_5();
}

void sub_266CD4540()
{
  OUTLINED_FUNCTION_6();
  v1 = *__swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_266CFD7F8();
  v3 = v2;
  v4 = 0;
  v5 = *(v2 + 16);
  v6 = (v2 + 88);
  while (1)
  {
    if (v5 == v4)
    {
LABEL_11:

LABEL_14:
      OUTLINED_FUNCTION_5();
      return;
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    v8 = *(v6 - 1);
    v7 = *v6;
    v9 = *(v6 - 2);
    v10 = *(v6 - 4);
    v11 = *(v6 - 6);
    v12 = qword_2800C9158;

    swift_bridgeObjectRetain_n();
    if (v12 != -1)
    {
      swift_once();
    }

    if (v8 == qword_28156FC98 && v7 == unk_28156FCA0)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_14;
    }

    ++v4;
    v6 += 8;
    v14 = sub_266DAB17C();

    swift_bridgeObjectRelease_n();
    if (v14)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_266CD46BC()
{
  v1 = v0;
  v2 = *(*__swift_project_boxed_opaque_existential_1(v0, v0[3]) + 80);
  v3 = sub_266DAA15C();
  v4 = sub_266C6A6CC(v3);

  v5 = *(*__swift_project_boxed_opaque_existential_1(v1, v1[3]) + 80);
  v6 = sub_266DAA16C();
  v7 = sub_266C6A6EC(v6);

  sub_266C3843C(v7);
  return v4;
}

uint64_t sub_266CD4758(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v18[1] = a2;
  v5 = sub_266DA947C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266DAABDC();
  if (qword_2800C9128 != -1)
  {
    swift_once();
  }

  sub_266DA946C();
  sub_266DA945C();
  v10 = *(v6 + 8);
  v10(v9, v5);
  v18[0] = a1;
  v11 = sub_266D65D2C(a1);
  sub_266DAABCC();
  sub_266DA946C();
  sub_266DA945C();
  v10(v9, v5);
  v12 = v3[23];
  v13 = v3[24];
  __swift_project_boxed_opaque_existential_1(v3 + 20, v12);
  if ((*(v13 + 8))(v12, v13))
  {
    if (qword_2800C92A0 != -1)
    {
      swift_once();
    }

    v14 = sub_266DA94AC();
    __swift_project_value_buffer(v14, qword_2800CBB98);
    v15 = *__swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_266CFD7F8();
    sub_266C23798(v18[0], v11, v3 + 5, v16);
  }

  return v11;
}

uint64_t sub_266CD49C0@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_266CD4758(*a1, a2);
  *a3 = result;
  return result;
}

void sub_266CD4A00(uint64_t *a1)
{
  v1 = *a1;
  if (qword_2800C92A0 != -1)
  {
    swift_once();
  }

  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, qword_2800CBB98);
  oslog = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = CBManagerState.description.getter(v1);
    v8 = sub_266C22A3C(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_266C08000, oslog, v3, "Bluetooth state reported as %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x26D5F2480](v5, -1, -1);
    MEMORY[0x26D5F2480](v4, -1, -1);
  }
}

uint64_t *sub_266CD4B54@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  if (*result == 5)
  {
    v5 = a2;
  }

  else
  {
    v5 = 1;
  }

  *a3 = v5;
  *(a3 + 8) = v4 != 5;
  return result;
}

BOOL sub_266CD4BAC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return ((*(v2 + 96))(v1, v2) & 1) == 0;
}

BOOL sub_266CD4C04(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return SFMDevice.detectableNearby.getter(v1, v2);
}

uint64_t sub_266CD4C44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 32))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void sub_266CD4C9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPCoreDeviceSearcher();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 8);
  if (qword_2800C92A0 != -1)
  {
    swift_once();
  }

  v10 = sub_266DA94AC();
  __swift_project_value_buffer(v10, qword_2800CBB98);
  sub_266CD5400(a2, v7, type metadata accessor for FMIPCoreDeviceSearcher);
  sub_266C33EE0(v8, v9);
  v11 = sub_266DA948C();
  v12 = sub_266DAAB0C();
  sub_266CD5EB4(v8, v9);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 134218242;
    v15 = *(v7 + 26);
    v16 = *(sub_266C4F0B8() + 16);

    sub_266CD5EC0(v7);
    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = sub_266CD4EA4(v8, v9);
    v19 = sub_266C22A3C(v17, v18, &v21);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_266C08000, v11, v12, "findNearby complete, %ld devices found. Final status %s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26D5F2480](v14, -1, -1);
    MEMORY[0x26D5F2480](v13, -1, -1);
  }

  else
  {
    sub_266CD5EC0(v7);
  }
}

uint64_t sub_266CD4EA4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return 0x737365636375732ELL;
  }

  sub_266DAADFC();
  MEMORY[0x26D5F1170](0xD000000000000014, 0x8000000266DC2B20);
  sub_266DAAEEC();
  return 0;
}

uint64_t sub_266CD4F48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v5 = sub_266DA947C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  sub_266DAABDC();
  if (qword_2800C9128 != -1)
  {
    swift_once();
  }

  sub_266DA946C();
  sub_266DA945C();
  v12 = *(v6 + 8);
  v13 = v12(v9, v5);
  MEMORY[0x28223BE20](v13);
  v14 = v18;
  *(&v17 - 4) = v17;
  *(&v17 - 3) = v10;
  *(&v17 - 16) = v11;
  v15 = sub_266D69C84(sub_266CD63F4, (&v17 - 6), v14);
  sub_266DAABCC();
  sub_266DA946C();
  sub_266DA945C();
  result = v12(v9, v5);
  *v19 = v15;
  return result;
}

id sub_266CD5148(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  if (((*(v8 + 96))(v7, v8) & 1) == 0)
  {
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v12 = (*(v11 + 32))(v10, v11);
    if (v13)
    {
      if ((v6 & 1) == 0)
      {
        v14 = sub_266CBD264(v12, v13, v5);

        if (v14 == 2 || (v14 & 1) == 0)
        {
          v9 = 2;
          goto LABEL_10;
        }

        goto LABEL_2;
      }
    }

    v9 = 0;
    goto LABEL_10;
  }

LABEL_2:
  v9 = 1;
LABEL_10:
  v15 = v2[8];
  v16 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  SFMContactDataProvider.ownerContact(of:)(a1, v15, v16);
  v17 = *__swift_project_boxed_opaque_existential_1(v3 + 27, v3[30]);
  sub_266D2E318();
  type metadata accessor for DeviceDetail();
  sub_266C233D0(a1, v26);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = *(*__swift_project_boxed_opaque_existential_1(v3, v3[3]) + 80);
  v21 = sub_266DAA16C();
  v22 = sub_266C6A6EC(v21);

  v23 = sub_266CDACBC(v22, v18, v19);

  return sub_266CC81C0(v26, v25, v9, v27, v23);
}

uint64_t sub_266CD5330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPCoreDeviceSearcher();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_266CD5394()
{
  v0 = OUTLINED_FUNCTION_28_4();
  OUTLINED_FUNCTION_4_3(v0);
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_38_5();

  sub_266CD2B04(v3, v4);
}

uint64_t sub_266CD5400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_0(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_4_4();
  v8(v7);
  return a2;
}

unint64_t sub_266CD545C()
{
  result = qword_2800CBC98;
  if (!qword_2800CBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CBC98);
  }

  return result;
}

uint64_t sub_266CD54B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD18, &qword_266DB5390);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD20, &qword_266DB5398);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v14[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA0A0, &qword_266DAFC70);
  sub_266DA977C();
  sub_266CD5DF0();
  sub_266DA976C();
  (*(v3 + 8))(v6, v2);
  sub_266C230E8(&qword_2800CBD28, &qword_2800CBD20, &qword_266DB5398);
  v12 = sub_266DA97EC();
  (*(v8 + 8))(v11, v7);
  return v12;
}

uint64_t sub_266CD56C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBE58, qword_266DB5460);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD30, &qword_266DB53A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_266DA977C();
  sub_266CD5DF0();
  sub_266DA976C();
  (*(v1 + 8))(v4, v0);
  sub_266C230E8(&qword_2800CBD60, &qword_2800CBD30, &qword_266DB53A0);
  v10 = sub_266DA97EC();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t sub_266CD58A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBDE8, &qword_266DB5418);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CBD88, &qword_266DB53D8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v14[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CB200, &qword_266DB53D0);
  sub_266DA977C();
  sub_266CD5DF0();
  sub_266DA976C();
  (*(v3 + 8))(v6, v2);
  sub_266C230E8(&qword_2800CBDA0, &qword_2800CBD88, &qword_266DB53D8);
  v12 = sub_266DA97EC();
  (*(v8 + 8))(v11, v7);
  return v12;
}

uint64_t sub_266CD5AB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_3Tm()
{
  v2 = type metadata accessor for FMIPCoreDeviceSearcher();
  OUTLINED_FUNCTION_24_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_19();
  __swift_destroy_boxed_opaque_existential_0((v1 + v5 + 216));
  __swift_destroy_boxed_opaque_existential_0((v1 + v5 + 256));
  v8 = *(v0 + 60);
  v9 = sub_266DAAB4C();
  OUTLINED_FUNCTION_0(v9);
  (*(v10 + 8))(v1 + v5 + v8);

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

void sub_266CD5C18()
{
  v1 = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_4_3(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_266CD1320();
}

uint64_t sub_266CD5C70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_266CD5CC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266D1709C(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_266CD5CF8()
{
  v2 = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_4_3(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_266CD4C9C(v0, v4);
}

uint64_t sub_266CD5D64()
{
  v1 = OUTLINED_FUNCTION_28_4();
  OUTLINED_FUNCTION_11_3(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_18_12();
  v9 = *(v0 + v8);
  v10 = OUTLINED_FUNCTION_38_5();

  return sub_266CD4F48(v10, v11, v12, v13);
}

unint64_t sub_266CD5DF0()
{
  result = qword_2800CBD08;
  if (!qword_2800CBD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CBD08);
  }

  return result;
}

id sub_266CD5E5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v7 = *(v2 + 24);
  v8 = v5;
  result = sub_266CD5148(a1, &v7);
  *a2 = result;
  return result;
}

uint64_t sub_266CD5EB4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_266CD5EC0(uint64_t a1)
{
  v2 = type metadata accessor for FMIPCoreDeviceSearcher();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_22Tm()
{
  v3 = type metadata accessor for FMIPCoreDeviceSearcher();
  OUTLINED_FUNCTION_24_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = *(v5 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1 + v9;
  OUTLINED_FUNCTION_2_19();
  v12 = OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_0(v12);
  (*(v13 + 8))(v11 + v2);

  v14 = *(v1 + v10);

  v15 = *(v1 + v10 + 8);

  __swift_destroy_boxed_opaque_existential_0((v1 + v10 + 16));

  return MEMORY[0x2821FE8E8](v1, v10 + 56, v8 | 7);
}

uint64_t sub_266CD60A4()
{
  v2 = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_11_3(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = *(v6 + 64);
  OUTLINED_FUNCTION_18_12();
  return v0(v1 + v9);
}

uint64_t sub_266CD611C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_266CD617C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_28_4();
  OUTLINED_FUNCTION_11_3(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = *(v6 + 64);
  OUTLINED_FUNCTION_18_12();
  v9 = OUTLINED_FUNCTION_38_5();

  return a2(v9);
}

uint64_t sub_266CD621C@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *)@<X1>, uint64_t *a3@<X8>)
{
  result = sub_266C32EC4(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266CD6258()
{
  v0 = OUTLINED_FUNCTION_28_4();
  OUTLINED_FUNCTION_11_3(v0);
  v2 = v1;
  v4 = v3;
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v4 + 64);
  OUTLINED_FUNCTION_18_12();
  v7 = OUTLINED_FUNCTION_38_5();

  return sub_266CD49C0(v7, v8, v9);
}

_BYTE *storeEnumTagSinglePayload for FMIPCoreDeviceSearcher.LocationWaitError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_266CD63A0()
{
  result = qword_2800CBE60;
  if (!qword_2800CBE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CBE60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_27()
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_7_20@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 136);
  *a1 = *(v1 - 152);
  *(a1 + 16) = v2;
  result = *(v1 - 120);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v1 - 104);
  return result;
}

void OUTLINED_FUNCTION_14_17(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 2;
}

uint64_t OUTLINED_FUNCTION_23_9(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_266C230E8(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_28_4()
{

  return type metadata accessor for FMIPCoreDeviceSearcher();
}

uint64_t OUTLINED_FUNCTION_36_7()
{

  return sub_266DA945C();
}

uint64_t OUTLINED_FUNCTION_46_3(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_266DA948C();
}

uint64_t OUTLINED_FUNCTION_47_3()
{

  return type metadata accessor for FMIPCoreDeviceSearcher();
}

uint64_t OUTLINED_FUNCTION_48_4()
{

  return sub_266DA97EC();
}

uint64_t OUTLINED_FUNCTION_49_4()
{
  __swift_destroy_boxed_opaque_existential_0((v1 + 216));
  __swift_destroy_boxed_opaque_existential_0((v1 + 256));
  v2 = *(v0 + 60);

  return sub_266DAAB4C();
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy0bC10FriendTaskO(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

uint64_t sub_266CD6694(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266CD66D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_266CD671C(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_266CD6764@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a2;
  v3 = sub_266DA81DC();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v95 = v5;
  v96 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_6();
  v94 = v9 - v8;
  v99 = sub_266DA819C();
  v10 = OUTLINED_FUNCTION_0_2(v99);
  v102 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_6();
  v101 = v15 - v14;
  v16 = sub_266DA8BDC();
  v17 = OUTLINED_FUNCTION_0_2(v16);
  v100 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_6();
  v23 = v22 - v21;
  v24 = sub_266DA81AC();
  v25 = OUTLINED_FUNCTION_0_2(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v25);
  v93 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v97 = &v93 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v93 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v93 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v93 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v93 - v43;
  v45 = *(v27 + 16);
  v98 = a1;
  v46 = a1;
  v47 = v45;
  v45(&v93 - v43, v46, v24);
  v48 = (*(v27 + 88))(v44, v24);
  if (v48 == *MEMORY[0x277D5C128])
  {
    v47(v42, v44, v24);
    (*(v27 + 96))(v42, v24);
    v49 = v100;
    (*(v100 + 4))(v23, v42, v16);
    if (qword_2800C92A8 != -1)
    {
      OUTLINED_FUNCTION_0_52();
    }

    v50 = sub_266DA94AC();
    __swift_project_value_buffer(v50, qword_2800CBE68);
    v51 = sub_266DA948C();
    v52 = sub_266DAAB0C();
    if (os_log_type_enabled(v51, v52))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_5_26(&dword_266C08000, v53, v54, "[FindMyFriendTaskParser] parseTask NLv3IntentOnly");
      OUTLINED_FUNCTION_6_1();
    }

    sub_266CD70EC(v23, v103);
    (*(v49 + 1))(v23, v16);
    return (*(v27 + 8))(v44, v24);
  }

  v100 = v44;
  if (v48 == *MEMORY[0x277D5C150])
  {
    v96 = v47;
    v47(v39, v100, v24);
    (*(v27 + 96))(v39, v24);
    v55 = v39;
    v56 = v99;
    (*(v102 + 32))(v101, v55, v99);
    v57 = sub_266DA817C();
    v59 = v58;
    if (qword_2800C9408 != -1)
    {
      swift_once();
    }

    v60 = qword_2800CD278;
    v61 = unk_2800CD280;
    v104 = qword_2800CD268;
    v105 = unk_2800CD270;

    MEMORY[0x26D5F1170](v60, v61);
    if (v57 == v104 && v59 == v105)
    {

      v44 = v100;
    }

    else
    {
      v63 = sub_266DAB17C();

      v44 = v100;
      if ((v63 & 1) == 0)
      {
        (*(v102 + 8))(v101, v56);
        v47 = v96;
LABEL_22:
        if (qword_2800C92A8 != -1)
        {
          OUTLINED_FUNCTION_0_52();
        }

        v71 = sub_266DA94AC();
        __swift_project_value_buffer(v71, qword_2800CBE68);
        v72 = v97;
        v47(v97, v98, v24);
        v73 = sub_266DA948C();
        v74 = sub_266DAAB0C();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v104 = v76;
          *v75 = 136315138;
          v47(v93, v72, v24);
          v77 = sub_266DAA72C();
          v79 = v78;
          v80 = OUTLINED_FUNCTION_4_28();
          v81(v80);
          v82 = sub_266C22A3C(v77, v79, &v104);

          *(v75 + 4) = v82;
          _os_log_impl(&dword_266C08000, v73, v74, "[FindMyFriendTaskParser] unsupported parse type: %s", v75, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v76);
          v44 = v100;
          OUTLINED_FUNCTION_6_1();
          OUTLINED_FUNCTION_6_1();
        }

        else
        {

          v89 = OUTLINED_FUNCTION_4_28();
          v90(v89);
        }

        v91 = v103;
        *(v103 + 32) = 0;
        *v91 = 0u;
        *(v91 + 16) = 0u;
        *(v91 + 40) = -1;
        return (*(v27 + 8))(v44, v24);
      }
    }

    if (qword_2800C92A8 != -1)
    {
      OUTLINED_FUNCTION_0_52();
    }

    v83 = sub_266DA94AC();
    __swift_project_value_buffer(v83, qword_2800CBE68);
    v84 = sub_266DA948C();
    v85 = sub_266DAAB0C();
    if (os_log_type_enabled(v84, v85))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_5_26(&dword_266C08000, v86, v87, "[FindMyFriendTaskParser] parseTask directInvocation");
      OUTLINED_FUNCTION_6_1();
    }

    v88 = v101;
    sub_266CD7C00(v101, v103);
    (*(v102 + 8))(v88, v56);
  }

  else
  {
    v44 = v100;
    if (v48 != *MEMORY[0x277D5C160])
    {
      goto LABEL_22;
    }

    v47(v36, v100, v24);
    (*(v27 + 96))(v36, v24);
    v65 = v94;
    v64 = v95;
    v66 = v96;
    (*(v95 + 32))(v94, v36, v96);
    if (qword_2800C92A8 != -1)
    {
      OUTLINED_FUNCTION_0_52();
    }

    v67 = sub_266DA94AC();
    __swift_project_value_buffer(v67, qword_2800CBE68);
    v68 = sub_266DA948C();
    v69 = sub_266DAAB0C();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_266C08000, v68, v69, "[FindMyFriendTaskParser] parseTask uso", v70, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    sub_266CD7F38(v65, v103);
    (*(v64 + 8))(v65, v66);
  }

  return (*(v27 + 8))(v44, v24);
}

uint64_t sub_266CD7024()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CBE68);
  v1 = __swift_project_value_buffer(v0, qword_2800CBE68);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266CD70EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C95D8, &unk_266DAD560);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v78 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v78 - v10;
  v82 = type metadata accessor for ContactNLIntent();
  v12 = *(*(v82 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v82);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v88 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E0, &unk_266DB05F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v87 = &v78 - v19;
  v20 = sub_266DA8BDC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800C92A8 != -1)
  {
    swift_once();
  }

  v25 = sub_266DA94AC();
  v26 = __swift_project_value_buffer(v25, qword_2800CBE68);
  v27 = *(v21 + 16);
  v89 = a1;
  v83 = v27;
  v84 = v21 + 16;
  v27(v24, a1, v20);
  v85 = v26;
  v28 = sub_266DA948C();
  v29 = sub_266DAAB0C();
  v30 = os_log_type_enabled(v28, v29);
  v86 = v20;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v81 = a2;
    v32 = v31;
    v79 = swift_slowAlloc();
    v90 = v79;
    *v32 = 136315138;
    sub_266CD8AA8(&qword_2800CA5A0, MEMORY[0x277D5F458]);
    v33 = sub_266DAB13C();
    v80 = v15;
    v34 = v7;
    v35 = v11;
    v37 = v36;
    (*(v21 + 8))(v24, v20);
    v38 = sub_266C22A3C(v33, v37, &v90);
    v11 = v35;
    v7 = v34;
    v15 = v80;

    *(v32 + 4) = v38;
    _os_log_impl(&dword_266C08000, v28, v29, "[FindMyFriendTask] parsing nlv3 intent: %s", v32, 0xCu);
    v39 = v79;
    __swift_destroy_boxed_opaque_existential_0(v79);
    MEMORY[0x26D5F2480](v39, -1, -1);
    v40 = v32;
    a2 = v81;
    MEMORY[0x26D5F2480](v40, -1, -1);
  }

  else
  {

    (*(v21 + 8))(v24, v20);
  }

  v41 = v87;
  sub_266DA8BCC();
  v42 = sub_266DA876C();
  if (__swift_getEnumTagSinglePayload(v41, 1, v42) == 1)
  {
    result = sub_266C3A088(v41, &qword_2800CA2E0, &unk_266DB05F0);
LABEL_8:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    goto LABEL_9;
  }

  v45 = sub_266DA875C();
  v47 = v46;
  (*(*(v42 - 8) + 8))(v41, v42);
  if (v45 == 0x746361746E6F63 && v47 == 0xE700000000000000)
  {

    v50 = v86;
  }

  else
  {
    v49 = sub_266DAB17C();

    v50 = v86;
    if ((v49 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v83(v88, v89, v50);
  if (sub_266C58070() & 1) != 0 || (sub_266C58104())
  {
    if (qword_28156F6C0 != -1)
    {
      swift_once();
    }

    sub_266CD8AA8(&qword_28156F668, type metadata accessor for ContactNLIntent);
    sub_266DA873C();
    switch(v91)
    {
      case 1:
        v68 = sub_266DA948C();
        v69 = sub_266DAAB0C();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_266C08000, v68, v69, "Providing punch out to friends for this intent", v70, 2u);
          MEMORY[0x26D5F2480](v70, -1, -1);
        }

        result = sub_266C180F8(v88);
        *a2 = 1;
        *(a2 + 8) = 0u;
        *(a2 + 24) = 0u;
        goto LABEL_50;
      case 5:
      case 8:
        v51 = sub_266DA948C();
        v52 = sub_266DAAB0C();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_266C08000, v51, v52, "Providing the FindFriend RCH flow for this intent", v53, 2u);
          MEMORY[0x26D5F2480](v53, -1, -1);
        }

        sub_266C56388(v7);
        v54 = sub_266DA867C();
        if (__swift_getEnumTagSinglePayload(v7, 1, v54) == 1)
        {
          sub_266C180F8(v88);
          sub_266C3A088(v7, &qword_2800C95D8, &unk_266DAD560);
          v55 = 1;
        }

        else
        {
          PersonIntentNode.toContactQuery()();
          sub_266C180F8(v88);
          (*(*(v54 - 8) + 8))(v7, v54);
          v55 = 0;
        }

        v63 = sub_266DA8D0C();
        __swift_storeEnumTagSinglePayload(v11, v55, 1, v63);
        *(a2 + 24) = type metadata accessor for FindFriendIntentWrapper();
        *(a2 + 32) = &off_28785D820;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
        result = sub_266C17FCC(v11, boxed_opaque_existential_1);
        *(a2 + 40) = 0;
        return result;
      case 6:
        v71 = sub_266DA948C();
        v72 = sub_266DAAB0C();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&dword_266C08000, v71, v72, "Providing SetGeoFence RCH flow for this intent", v73, 2u);
          MEMORY[0x26D5F2480](v73, -1, -1);
        }

        v74 = v88;
        sub_266C1805C(v88, v15);
        *(a2 + 24) = type metadata accessor for SetGeoFenceNLv3IntentWrapper(0);
        *(a2 + 32) = &off_28785D320;
        __swift_allocate_boxed_opaque_existential_1(a2);
        sub_266C17094();
        result = sub_266C180F8(v74);
        v44 = 2;
        goto LABEL_10;
      case 7:
        v75 = sub_266DA948C();
        v76 = sub_266DAAB0C();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&dword_266C08000, v75, v76, "Providing unsupported remove geo fence dialog for this intent.", v77, 2u);
          MEMORY[0x26D5F2480](v77, -1, -1);
        }

        result = sub_266C180F8(v88);
        *a2 = 0u;
        *(a2 + 16) = 0u;
        *(a2 + 32) = 0;
LABEL_50:
        v44 = 4;
        goto LABEL_10;
      case 9:
        v60 = sub_266DA948C();
        v61 = sub_266DAAB0C();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&dword_266C08000, v60, v61, "Providing SetSharedLocationVisibility RCH flow for this intent", v62, 2u);
          MEMORY[0x26D5F2480](v62, -1, -1);
        }

        *(a2 + 24) = &type metadata for SetSharedLocationVisibilityIntentWrapper;
        *(a2 + 32) = &off_287866DF8;
        *a2 = 2;
        result = sub_266C180F8(v88);
        v44 = 1;
        goto LABEL_10;
      case 10:
        v65 = sub_266DA948C();
        v66 = sub_266DAAB0C();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&dword_266C08000, v65, v66, "Providing SetSharedLocationVisibility RCH flow for this intent", v67, 2u);
          MEMORY[0x26D5F2480](v67, -1, -1);
        }

        *(a2 + 24) = &type metadata for SetSharedLocationVisibilityIntentWrapper;
        *(a2 + 32) = &off_287866DF8;
        *a2 = 1;
        result = sub_266C180F8(v88);
        *(a2 + 40) = 1;
        return result;
      default:
        v56 = sub_266DA948C();
        v57 = sub_266DAAAFC();
        if (!os_log_type_enabled(v56, v57))
        {
          goto LABEL_32;
        }

        v58 = swift_slowAlloc();
        *v58 = 0;
        v59 = "No flow provided for the current fmf intent.";
        goto LABEL_31;
    }
  }

  v56 = sub_266DA948C();
  v57 = sub_266DAAB0C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    v59 = "Contact intent is not a FMF intent.";
LABEL_31:
    _os_log_impl(&dword_266C08000, v56, v57, v59, v58, 2u);
    MEMORY[0x26D5F2480](v58, -1, -1);
  }

LABEL_32:

  result = sub_266C180F8(v88);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
LABEL_9:
  v44 = -1;
LABEL_10:
  *(a2 + 40) = v44;
  return result;
}

void sub_266CD7C00(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_266DA819C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  if (qword_2800C92A8 != -1)
  {
    swift_once();
  }

  v12 = sub_266DA94AC();
  v13 = __swift_project_value_buffer(v12, qword_2800CBE68);
  v35 = *(v5 + 16);
  v35(v11, a1, v4);
  v34 = v13;
  v14 = sub_266DA948C();
  v15 = sub_266DAAB0C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v32 = a1;
    v19 = v18;
    v36 = v18;
    *v17 = 136315138;
    v20 = sub_266DA817C();
    v31 = v9;
    v22 = v21;
    (*(v5 + 8))(v11, v4);
    v23 = sub_266C22A3C(v20, v22, &v36);
    v9 = v31;

    *(v17 + 4) = v23;
    _os_log_impl(&dword_266C08000, v14, v15, "[FindMyFriendTask] parsing direct invocation with id: %s ", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v24 = v19;
    a1 = v32;
    MEMORY[0x26D5F2480](v24, -1, -1);
    v25 = v17;
    a2 = v33;
    MEMORY[0x26D5F2480](v25, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v11, v4);
  }

  v35(v9, a1, v4);
  sub_266D6EFE8(v9, &v36);
  if (v37)
  {
    v26 = sub_266DA948C();
    v27 = sub_266DAAAEC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_266C08000, v26, v27, "FindMyFriendParser makeFlow unexpected directInvocation", v28, 2u);
      MEMORY[0x26D5F2480](v28, -1, -1);
    }

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v29 = -1;
  }

  else
  {
    *a2 = v36;
    v29 = 3;
  }

  *(a2 + 40) = v29;
}