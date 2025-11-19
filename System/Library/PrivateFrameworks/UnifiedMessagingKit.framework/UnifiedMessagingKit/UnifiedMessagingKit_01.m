uint64_t sub_2703BE548(uint64_t a1)
{
  v2 = sub_2703BEB98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703BE584(uint64_t a1)
{
  v2 = sub_2703BEB98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703BE5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703BDB08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2703BE5F0(uint64_t a1)
{
  v2 = sub_2703BEAF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703BE62C(uint64_t a1)
{
  v2 = sub_2703BEAF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2703BE66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703BDC00(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2703BE698(uint64_t a1)
{
  v2 = sub_2703BEB44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703BE6D4(uint64_t a1)
{
  v2 = sub_2703BEB44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static BrandingModel.assetBrandingModel(model:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  sub_2703BE7B8(__srca);
  memcpy(a2, __srca, 0x160uLL);
  return sub_2703BE7D0(__dst, &v5);
}

uint64_t sub_2703BE7B8(uint64_t result)
{
  v1 = *(result + 136) & 0xE0000000000000FFLL;
  *(result + 48) = *(result + 48);
  *(result + 136) = v1;
  return result;
}

uint64_t static BrandingModel.wordmarkBrandingModel(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  sub_2703BE884(v5);
  memcpy(a3, v5, 0x160uLL);
}

uint64_t sub_2703BE884(uint64_t result)
{
  v1 = *(result + 136) & 0xE0000000000000FFLL | 0x1000000000000000;
  *(result + 48) = *(result + 48);
  *(result + 136) = v1;
  return result;
}

unint64_t sub_2703BE8A4()
{
  result = qword_2807CF040;
  if (!qword_2807CF040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF040);
  }

  return result;
}

unint64_t sub_2703BE8FC()
{
  result = qword_2807CF048;
  if (!qword_2807CF048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF048);
  }

  return result;
}

unint64_t sub_2703BE950(uint64_t a1)
{
  *(a1 + 8) = sub_2703BE980();
  result = sub_2703BE9D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2703BE980()
{
  result = qword_2807CF050;
  if (!qword_2807CF050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF050);
  }

  return result;
}

unint64_t sub_2703BE9D4()
{
  result = qword_2807CF058;
  if (!qword_2807CF058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF058);
  }

  return result;
}

uint64_t sub_2703BEAC0(uint64_t result, char a2)
{
  v2 = *(result + 136) & 0xE0000000000000FFLL | ((a2 & 1) << 60);
  *(result + 48) = *(result + 48);
  *(result + 136) = v2;
  return result;
}

unint64_t sub_2703BEAF0()
{
  result = qword_2807CF078;
  if (!qword_2807CF078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF078);
  }

  return result;
}

unint64_t sub_2703BEB44()
{
  result = qword_2807CF080;
  if (!qword_2807CF080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF080);
  }

  return result;
}

unint64_t sub_2703BEB98()
{
  result = qword_2807CF088;
  if (!qword_2807CF088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF088);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BrandingModel.Content.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x2703BECC4);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2703BED10(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2703BEDACLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2703BEDE8()
{
  result = qword_2807CF0A8;
  if (!qword_2807CF0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF0A8);
  }

  return result;
}

unint64_t sub_2703BEE40()
{
  result = qword_2807CF0B0;
  if (!qword_2807CF0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF0B0);
  }

  return result;
}

unint64_t sub_2703BEE98()
{
  result = qword_2807CF0B8;
  if (!qword_2807CF0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF0B8);
  }

  return result;
}

unint64_t sub_2703BEEF0()
{
  result = qword_2807CF0C0;
  if (!qword_2807CF0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF0C0);
  }

  return result;
}

unint64_t sub_2703BEF48()
{
  result = qword_2807CF0C8;
  if (!qword_2807CF0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF0C8);
  }

  return result;
}

unint64_t sub_2703BEFA0()
{
  result = qword_2807CF0D0;
  if (!qword_2807CF0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF0D0);
  }

  return result;
}

unint64_t sub_2703BEFF8()
{
  result = qword_2807CF0D8;
  if (!qword_2807CF0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF0D8);
  }

  return result;
}

unint64_t sub_2703BF050()
{
  result = qword_2807CF0E0;
  if (!qword_2807CF0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF0E0);
  }

  return result;
}

unint64_t sub_2703BF0A8()
{
  result = qword_2807CF0E8;
  if (!qword_2807CF0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF0E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_4()
{

  return sub_2705D7ED4();
}

void *sub_2703BF150@<X0>(char a1@<W0>, void *a2@<X8>)
{
  memset(v4, 0, 80);
  LOBYTE(v4[5]) = 1;
  *(&v4[5] + 8) = 0u;
  *(&v4[6] + 8) = 0u;
  *(&v4[7] + 8) = 0u;
  *(&v4[8] + 8) = 0u;
  if (a1)
  {
    memcpy(__dst, v4, sizeof(__dst));
    sub_2703BF5D4(v5);
  }

  else
  {
    memcpy(__dst, v4, sizeof(__dst));
    sub_2703BF20C(v5);
  }

  sub_2703BF99C(v5, v4);
  return memcpy(a2, v4, 0x98uLL);
}

void *sub_2703BF20C@<X0>(void *a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF0F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_2705D58D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x277CE0A58];
  v9 = *(v5 + 104);
  v9(v7, v8, v4);
  v10 = sub_2705D5794();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v10);
  sub_2705D5834();
  v25 = sub_2705D5854();
  sub_2703BF9F8(v3);
  v11 = *(v5 + 8);
  v11(v7, v4);
  v24 = sub_2705D5774();
  v23 = sub_2705D5D84();
  v22 = sub_2705D5894();
  v21 = sub_2705D5D84();
  v9(v7, v8, v4);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v10);
  sub_2705D5834();
  v12 = sub_2705D5854();
  sub_2703BF9F8(v3);
  v11(v7, v4);
  v13 = sub_2705D5D54();
  LOBYTE(v52[0]) = 1;
  memset(v32, 0, 32);
  v32[4] = v25;
  v33 = 0;
  v34 = 0;
  v35[0] = 0;
  v35[1] = v24;
  v35[2] = 0;
  LOBYTE(v35[3]) = 1;
  v35[4] = v23;
  v35[5] = 0;
  v35[6] = 0;
  v35[7] = v22;
  v35[8] = v21;
  v35[9] = 0;
  v35[10] = v12;
  v35[11] = v13;
  memset(v36, 0, sizeof(v36));
  v37 = v25;
  v38 = 0;
  v40 = 0;
  v39 = 0;
  v41 = v24;
  v42 = 0;
  v43 = 1;
  v44 = v23;
  v45 = 0;
  v46 = 0;
  v47 = v22;
  v48 = v21;
  v49 = 0;
  v50 = v12;
  v51 = v13;
  sub_2703BFA60(v32, &v53);
  sub_2703BFABC(v36);
  v29 = *&v32[1];
  v30 = *&v32[3];
  v31 = v33;
  memcpy(v28, v35, sizeof(v28));
  v14 = objc_opt_self();
  v15 = [v14 tertiaryLabelColor];
  v16 = sub_2705D5C14();

  v17 = [v14 quaternarySystemFillColor];
  v18 = sub_2705D5C14();

  *&v52[1] = v29;
  *&v52[3] = v30;
  v52[0] = v16;
  v52[5] = v31;
  v52[6] = v18;
  memcpy(&v52[7], v28, 0x60uLL);
  v54 = v29;
  v55 = v30;
  v53 = v16;
  v56 = v31;
  v57 = v18;
  memcpy(v58, v28, sizeof(v58));
  sub_2703BFA60(v52, &v27);
  sub_2703BFABC(&v53);
  return memcpy(v26, v52, 0x98uLL);
}

void *sub_2703BF5D4@<X0>(void *a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF0F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_2705D58D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x277CE0A68];
  v9 = *(v5 + 104);
  v9(v7, v8, v4);
  v10 = sub_2705D5794();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v10);
  sub_2705D5834();
  v25 = sub_2705D5854();
  sub_2703BF9F8(v3);
  v11 = *(v5 + 8);
  v11(v7, v4);
  v24 = sub_2705D5754();
  v23 = sub_2705D5D84();
  v22 = sub_2705D5754();
  v21 = sub_2705D5D84();
  v9(v7, v8, v4);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v10);
  sub_2705D5834();
  v12 = sub_2705D5854();
  sub_2703BF9F8(v3);
  v11(v7, v4);
  v13 = sub_2705D5D54();
  LOBYTE(v52[0]) = 1;
  memset(v32, 0, 32);
  v32[4] = v25;
  v33 = 0;
  v34 = 0;
  v35[0] = 0;
  v35[1] = v24;
  v35[2] = 0;
  LOBYTE(v35[3]) = 1;
  v35[4] = v23;
  v35[5] = 0;
  v35[6] = 0;
  v35[7] = v22;
  v35[8] = v21;
  v35[9] = 0;
  v35[10] = v12;
  v35[11] = v13;
  memset(v36, 0, sizeof(v36));
  v37 = v25;
  v38 = 0;
  v40 = 0;
  v39 = 0;
  v41 = v24;
  v42 = 0;
  v43 = 1;
  v44 = v23;
  v45 = 0;
  v46 = 0;
  v47 = v22;
  v48 = v21;
  v49 = 0;
  v50 = v12;
  v51 = v13;
  sub_2703BFA60(v32, &v53);
  sub_2703BFABC(v36);
  v29 = *&v32[1];
  v30 = *&v32[3];
  v31 = v33;
  memcpy(v28, v35, sizeof(v28));
  v14 = objc_opt_self();
  v15 = [v14 quaternaryLabelColor];
  v16 = sub_2705D5C14();

  v17 = [v14 secondarySystemBackgroundColor];
  v18 = sub_2705D5C14();

  *&v52[1] = v29;
  *&v52[3] = v30;
  v52[0] = v16;
  v52[5] = v31;
  v52[6] = v18;
  memcpy(&v52[7], v28, 0x60uLL);
  v54 = v29;
  v55 = v30;
  v53 = v16;
  v56 = v31;
  v57 = v18;
  memcpy(v58, v28, sizeof(v58));
  sub_2703BFA60(v52, &v27);
  sub_2703BFABC(&v53);
  return memcpy(v26, v52, 0x98uLL);
}

uint64_t sub_2703BF9F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF0F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

UnifiedMessagingKit::BundleImageModel __swiftcall BundleImageModel.init(name:)(Swift::String name)
{
  v2 = v1;
  strcpy(v7, "bundleimage://");
  HIBYTE(v7[1]) = -18;
  MEMORY[0x2743A3A90](name._countAndFlagsBits);

  v5 = v7[1];
  *v2 = v7[0];
  v2[1] = v5;
  result.name._object = v4;
  result.name._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_2703BFB80(uint64_t a1)
{
  v2 = sub_2703BFD24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703BFBBC(uint64_t a1)
{
  v2 = sub_2703BFD24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BundleImageModel.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF0F8);
  OUTLINED_FUNCTION_0_7();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2703BFD24();
  sub_2705D84C4();
  sub_2705D8034();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_2703BFD24()
{
  result = qword_2807CF100;
  if (!qword_2807CF100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF100);
  }

  return result;
}

uint64_t BundleImageModel.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF108);
  OUTLINED_FUNCTION_0_7();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2703BFD24();
  sub_2705D8484();
  if (!v2)
  {
    v11 = sub_2705D7F54();
    v13 = v12;
    (*(v7 + 8))(v10, v3);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2703BFF0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2703BFF4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BundleImageModel.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2703C0034);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2703C0070()
{
  result = qword_2807CF110;
  if (!qword_2807CF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF110);
  }

  return result;
}

unint64_t sub_2703C00C8()
{
  result = qword_2807CF118;
  if (!qword_2807CF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF118);
  }

  return result;
}

unint64_t sub_2703C0120()
{
  result = qword_2807CF120;
  if (!qword_2807CF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF120);
  }

  return result;
}

uint64_t sub_2703C018C(char a1)
{
  if (!a1)
  {
    return 0x656E6961746E6F63;
  }

  if (a1 == 1)
  {
    return 0x7974706D65;
  }

  return 1819044208;
}

uint64_t sub_2703C01DC()
{
  v0 = sub_2705D7EB4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

double sub_2703C0228@<D0>(uint64_t a1@<X8>)
{
  sub_2703C1DF8(v1, v5, &qword_2807CF140);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_2703C0280@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for Button();
  sub_2703C1DF8(v1 + *(v6 + 24), v5, &qword_2807CF130);
  return sub_2703C1E5C(v5, a1);
}

uint64_t sub_2703C0358@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2703C01DC();
  *a1 = result;
  return result;
}

uint64_t sub_2703C0388@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2703C018C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_2703C03F4()
{
  OUTLINED_FUNCTION_10_1();
  v44 = v1;
  v3 = v2;
  v40 = v4;
  v5 = sub_2705D6484();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8_2();
  v9 = type metadata accessor for Button();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  v13 = v12 - v11;
  v15 = *(v14 + 24);
  v16 = sub_2705D6A54();
  __swift_storeEnumTagSinglePayload(v13 + v15, 1, 1, v16);
  v17 = v13 + v9[7];
  *(v17 + 32) = 0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  v18 = v17;
  v19 = sub_2704698DC();
  if (!v0)
  {
    v43[0] = v19;
    v43[1] = v20;
    sub_2705D7CF4();
    sub_2705D6494();
    if ((sub_2705D6444() & 1) == 0)
    {
      sub_2705D67A4();
      if (v42)
      {
        v22 = OUTLINED_FUNCTION_14_2();
        MEMORY[0x6575676572](v22);
        sub_2703B291C(&v41, v43);
LABEL_8:
        sub_2703B4B64(v43, v18);
        *(v13 + v9[8]) = sub_2703C0A48(0x656C797473, 0xE500000000000000, v9);
        v32 = sub_2704698DC();
        v33 = (v13 + v9[9]);
        *v33 = v32;
        v33[1] = v34;
        v35 = sub_2704698DC();
        v37 = v36;
        v38 = OUTLINED_FUNCTION_13_2();
        MEMORY[0x6575676572](v38);
        *(v13 + 40) = v35;
        *(v13 + 48) = v37;
        sub_2703C1688(v13, v40);
        sub_2705D6654();
        OUTLINED_FUNCTION_11_1();
        (*(v39 + 8))(v44);
        sub_2703C16EC(v13);
        goto LABEL_9;
      }

      sub_2703C1634(&v41, &unk_2807CF480);
    }

    v23 = sub_2705D7184();
    OUTLINED_FUNCTION_3_8();
    sub_2703C1D58(v24, v25);
    v26 = swift_allocError();
    *v27 = 0x6575676573;
    v27[1] = 0xE500000000000000;
    v27[2] = v9;
    OUTLINED_FUNCTION_4_4();
    (*(v28 + 104))(v29, v30, v23);
    swift_willThrow();
    v31 = OUTLINED_FUNCTION_14_2();
    MEMORY[0x6575676572](v31);

    memset(v43, 0, 40);
    goto LABEL_8;
  }

  (*(v7 + 8))(v3, v5);
  sub_2705D6654();
  OUTLINED_FUNCTION_11_1();
  (*(v21 + 8))(v44);
  sub_2703C1634(v13 + v15, &qword_2807CF130);
  sub_2703C1634(v18, &unk_2807CF480);

LABEL_9:
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2703C087C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2705D6484();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  v12 = v11 - v10;
  sub_2705D6494();
  if ((sub_2705D6444() & 1) != 0 || (sub_2703C179C(), sub_2705D63C4(), !v20))
  {
    sub_2705D7184();
    OUTLINED_FUNCTION_3_8();
    sub_2703C1D58(v13, v14);
    swift_allocError();
    *v15 = a1;
    v15[1] = a2;
    v15[2] = a3;
    OUTLINED_FUNCTION_4_4();
    (*(v16 + 104))();
    swift_willThrow();
    v17 = *(v8 + 8);

    v17(v12, v6);
  }

  else
  {
    a2 = v19;
    (*(v8 + 8))(v12, v6);
  }

  return a2;
}

uint64_t sub_2703C0A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2705D6484();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2705D6494();
  if ((sub_2705D6444() & 1) != 0 || (sub_2703C1748(), sub_2705D63C4(), v10 = v15, v15 == 3))
  {
    v10 = sub_2705D7184();
    sub_2703C1D58(&qword_2807CF138, MEMORY[0x277D22548]);
    swift_allocError();
    *v11 = a1;
    v11[1] = a2;
    v11[2] = a3;
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D22530], v10);
    swift_willThrow();
    v12 = *(v7 + 8);

    v12(v9, v6);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
  }

  return v10;
}

void sub_2703C0CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_10_1();
  v15 = OUTLINED_FUNCTION_12_2(v14);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8_2();
  sub_2705D6484();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  v19 = OUTLINED_FUNCTION_7_3(v18);
  v20(v19);
  v21 = OUTLINED_FUNCTION_9_3();
  v22(v21, v10, v15);
  sub_2703DB2DC(v13, v12, v27);
  v23 = OUTLINED_FUNCTION_6_4();
  v24(v23);
  v25 = OUTLINED_FUNCTION_5_5();
  v26(v25);
  if (!v11)
  {
    memcpy(a10, v27, 0x50uLL);
  }

  OUTLINED_FUNCTION_11_3();
}

void sub_2703C0E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_10_1();
  v13 = OUTLINED_FUNCTION_12_2(v12);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8_2();
  sub_2705D6484();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v17 = OUTLINED_FUNCTION_7_3(v16);
  v18(v17);
  v19 = OUTLINED_FUNCTION_9_3();
  v20(v19, v10, v13);
  sub_2703DAEAC();
  v21 = OUTLINED_FUNCTION_6_4();
  v22(v21);
  v23 = OUTLINED_FUNCTION_5_5();
  v24(v23);
  if (!v11)
  {
    memcpy(a10, v25, 0x58uLL);
  }

  OUTLINED_FUNCTION_11_3();
}

void sub_2703C0FF0()
{
  OUTLINED_FUNCTION_10_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_2705D6654();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  v10 = v9 - v8;
  v11 = sub_2705D6484();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v17 = v16 - v15;
  v18 = OUTLINED_FUNCTION_9_3();
  v19(v18, v3, v11);
  (*(v6 + 16))(v10, v1, v4);
  sub_27047E754(v17, v10);
  (*(v6 + 8))(v1, v4);
  (*(v13 + 8))(v3, v11);
  OUTLINED_FUNCTION_11_3();
}

void sub_2703C11A8()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_2705D6484();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  v13 = v12 - v11;
  (*(v9 + 16))(v12 - v11, v4, v7);
  v14 = sub_2704698DC();
  if (v0)
  {
    sub_2705D6654();
    OUTLINED_FUNCTION_11_1();
    (*(v16 + 8))(v2);
    v17 = *(v9 + 8);
    v17(v4, v7);
    v17(v13, v7);
  }

  else
  {
    v18 = v14;
    v19 = v15;
    sub_2705D6654();
    OUTLINED_FUNCTION_11_1();
    (*(v20 + 8))(v2);
    v21 = *(v9 + 8);
    v21(v4, v7);
    v21(v13, v7);
    *v6 = v18;
    *(v6 + 8) = v19;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = -1;
  }

  OUTLINED_FUNCTION_11_3();
}

void sub_2703C13E8()
{
  OUTLINED_FUNCTION_10_1();
  v19 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_2705D6654();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  v11 = v10 - v9;
  v12 = sub_2705D6484();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v18 = v17 - v16;
  (*(v14 + 16))(v17 - v16, v4, v12);
  (*(v7 + 16))(v11, v2, v5);
  v19(v18, v11);
  (*(v7 + 8))(v2, v5);
  (*(v14 + 8))(v4, v12);
  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2703C1590(uint64_t a1)
{
  result = sub_2703C1D58(&qword_2807CF128, type metadata accessor for Button);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for Button()
{
  result = qword_2807CF158;
  if (!qword_2807CF158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2703C1634(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_11_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2703C1688(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Button();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2703C16EC(uint64_t a1)
{
  v2 = type metadata accessor for Button();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2703C1748()
{
  result = qword_2807CF148;
  if (!qword_2807CF148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF148);
  }

  return result;
}

unint64_t sub_2703C179C()
{
  result = qword_2807CF150;
  if (!qword_2807CF150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF150);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Button.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2703C18BCLL);
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

uint64_t sub_2703C1908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2703C19B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_2703C1A3C()
{
  sub_2703C1B58();
  if (v0 <= 0x3F)
  {
    sub_2703C1C5C(319, &qword_2807CF188, &qword_2807CF190, &unk_2705DEE80, MEMORY[0x277D21D28]);
    if (v1 <= 0x3F)
    {
      sub_2703C1C5C(319, &qword_2807CF198, &qword_2807D65D0, &unk_2705DC050, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2703C1CC0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2703C1B58()
{
  if (!qword_2807CF168)
  {
    sub_2705D6594();
    v0 = MEMORY[0x277D21B40];
    sub_2703C1D58(&qword_2807CF170, MEMORY[0x277D21B40]);
    sub_2703C1D58(&qword_2807CF178, v0);
    sub_2703C1D58(&qword_2807CF180, v0);
    v1 = sub_2705D6924();
    if (!v2)
    {
      atomic_store(v1, &qword_2807CF168);
    }
  }
}

void sub_2703C1C5C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2703C1CC0()
{
  if (!qword_2807CF1A0)
  {
    v0 = sub_2705D7C14();
    if (!v1)
    {
      atomic_store(v0, &qword_2807CF1A0);
    }
  }
}

uint64_t sub_2703C1D58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2703C1DA4()
{
  result = qword_2807CF1B0;
  if (!qword_2807CF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF1B0);
  }

  return result;
}

uint64_t sub_2703C1DF8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_4_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2703C1E5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_12_2@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 72) = a1;

  return sub_2705D6654();
}

uint64_t sub_2703C1FE4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      sub_2705D4D04();
      break;
    case 2:
      sub_2705D4CF4();
      break;
    default:
      sub_2705D4D14();
      break;
  }

  v3 = sub_2705D4D24();

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
}

uint64_t sub_2703C2080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF1B8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17_0();
  v83 = v4;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF1C0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_0();
  v84 = v6;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF1C8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_0();
  v80 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807D6600);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_0();
  v74 = v10;
  v71 = sub_2705D4D24();
  OUTLINED_FUNCTION_0();
  v69 = v11;
  MEMORY[0x28223BE20](v12);
  v73 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF1D0);
  OUTLINED_FUNCTION_0();
  v76 = v15;
  v77 = v14;
  v16 = MEMORY[0x28223BE20](v14);
  v72 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v75 = &v67 - v18;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF1D8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17_0();
  v78 = v20;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF1E0);
  OUTLINED_FUNCTION_0();
  v68 = v21;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17_0();
  v70 = v23;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF1E8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_17_0();
  v89 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF1F0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v26);
  v28 = &v67 - v27;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF1F8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v29);
  v31 = &v67 - v30;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF200);
  OUTLINED_FUNCTION_0();
  v33 = v32;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  v36 = &v67 - v35;
  v37 = *a1;
  if (sub_2704D9D40(*a1) == 0x6E69616C70 && v38 == 0xE500000000000000)
  {
  }

  else
  {
    v40 = sub_2705D8134();

    if ((v40 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (*(a1 + 56))
  {
    v41 = *(a1 + 72);
    v93[0] = *(a1 + 64);
    v93[1] = v41;
    sub_2703C2F54();

    sub_2705D5EB4();
    v42 = v86;
    (*(v33 + 16))(v28, v36, v86);
    swift_storeEnumTagMultiPayload();
    sub_2703C2E2C(&qword_2807CF210, &qword_2807CF200);
    sub_2703C2E2C(&qword_2807CF220, &qword_2807CF1E0);
    sub_2705D5434();
    sub_2703C2E9C(v31, v89, &qword_2807CF1F8);
    swift_storeEnumTagMultiPayload();
    sub_2703C2CE4();
    sub_2703C2DA0();
    sub_2705D5434();
    sub_2703C2EFC(v31, &qword_2807CF1F8);
    return (*(v33 + 8))(v36, v42);
  }

LABEL_10:
  if (sub_2704D9D40(v37) == 0x6C6F626D7973 && v44 == 0xE600000000000000)
  {
  }

  else
  {
    v46 = sub_2705D8134();

    if ((v46 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  memcpy(v93, (a1 + 88), 0x160uLL);
  if (get_enum_tag_for_layout_string_19UnifiedMessagingKit13BrandingModelVSg_0(v93) != 1)
  {
    memcpy(v92, v93, sizeof(v92));
    if (sub_2703BB658(v92) == 4)
    {
      v47 = sub_2703BC05C(v92);
      MEMORY[0x28223BE20](v47);
      *(&v67 - 2) = v48;
      *(&v67 - 1) = v49;
      v50 = v70;
      sub_2705D5E94();
      v51 = v68;
      v52 = v85;
      (*(v68 + 16))(v28, v50, v85);
      swift_storeEnumTagMultiPayload();
      sub_2703C2E2C(&qword_2807CF210, &qword_2807CF200);
      sub_2703C2E2C(&qword_2807CF220, &qword_2807CF1E0);
      sub_2705D5434();
      OUTLINED_FUNCTION_5_6(v31);
      swift_storeEnumTagMultiPayload();
      sub_2703C2CE4();
      sub_2703C2DA0();
      OUTLINED_FUNCTION_4_5();
      sub_2703C2EFC(v31, &qword_2807CF1F8);
      return (*(v51 + 8))(v70, v52);
    }
  }

LABEL_20:
  if (sub_2704D9D40(v37) == 0x6D6574737973 && v53 == 0xE600000000000000)
  {

    goto LABEL_27;
  }

  v55 = sub_2705D8134();

  if (v55)
  {
LABEL_27:
    v59 = v74;
    sub_2703C1FE4(*(a1 + 80), v74);
    v60 = v71;
    if (__swift_getEnumTagSinglePayload(v59, 1, v71) == 1)
    {
      v61 = v73;
      sub_2705D4D14();
      if (__swift_getEnumTagSinglePayload(v59, 1, v60) != 1)
      {
        sub_2703C2EFC(v59, &qword_2807D6600);
      }
    }

    else
    {
      v61 = v73;
      (*(v69 + 32))(v73, v59, v60);
    }

    v62 = v75;
    MEMORY[0x2743A22C0](v61, CGSizeMake, 0);
    v64 = v76;
    v63 = v77;
    (*(v76 + 16))(v72, v62, v77);
    sub_2703C2E2C(&qword_2807CF230, &qword_2807CF1D0);
    *v80 = sub_2705D5F04();
    swift_storeEnumTagMultiPayload();
    sub_2703C2E2C(&qword_2807CF210, &qword_2807CF200);
    v65 = v78;
    sub_2705D5434();
    (*(v64 + 8))(v62, v63);
    v57 = &qword_2807CF1D8;
    sub_2703C2E9C(v65, v83, &qword_2807CF1D8);
    swift_storeEnumTagMultiPayload();
    sub_2703C2C40();
    v66 = v84;
    sub_2705D5434();
    sub_2703C2E9C(v66, v89, &qword_2807CF1C0);
    swift_storeEnumTagMultiPayload();
    sub_2703C2CE4();
    sub_2703C2DA0();
    sub_2705D5434();
    sub_2703C2EFC(v66, &qword_2807CF1C0);
    v58 = v65;
    return sub_2703C2EFC(v58, v57);
  }

  swift_storeEnumTagMultiPayload();
  sub_2703C2C40();
  v56 = v84;
  sub_2705D5434();
  v57 = &qword_2807CF1C0;
  OUTLINED_FUNCTION_5_6(v56);
  swift_storeEnumTagMultiPayload();
  sub_2703C2CE4();
  sub_2703C2DA0();
  OUTLINED_FUNCTION_4_5();
  v58 = v56;
  return sub_2703C2EFC(v58, v57);
}

uint64_t sub_2703C2BF8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_2705D5DF4();
  *a1 = result;
  return result;
}

unint64_t sub_2703C2C40()
{
  result = qword_2807CF208;
  if (!qword_2807CF208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF1D8);
    sub_2703C2E2C(&qword_2807CF210, &qword_2807CF200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF208);
  }

  return result;
}

unint64_t sub_2703C2CE4()
{
  result = qword_2807CF218;
  if (!qword_2807CF218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF1F8);
    sub_2703C2E2C(&qword_2807CF210, &qword_2807CF200);
    sub_2703C2E2C(&qword_2807CF220, &qword_2807CF1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF218);
  }

  return result;
}

unint64_t sub_2703C2DA0()
{
  result = qword_2807CF228;
  if (!qword_2807CF228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF1C0);
    sub_2703C2C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF228);
  }

  return result;
}

uint64_t sub_2703C2E2C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19UnifiedMessagingKit13BrandingModelVSg_0(uint64_t a1)
{
  v1 = *(a1 + 49);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2703C2E9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2703C2EFC(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2703C2F54()
{
  result = qword_2807CF238;
  if (!qword_2807CF238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF238);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_5()
{

  return sub_2705D5434();
}

uint64_t OUTLINED_FUNCTION_5_6(uint64_t a1)
{
  v4 = *(v1 + 176);

  return sub_2703C2E9C(a1, v4, v2);
}

UnifiedMessagingKit::ButtonModel::Style_optional __swiftcall ButtonModel.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2705D7EB4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ButtonModel.Style.rawValue.getter()
{
  v1 = 0x7974706D65;
  if (*v0 != 1)
  {
    v1 = 1819044208;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E6961746E6F63;
  }
}

uint64_t sub_2703C30A8@<X0>(uint64_t *a1@<X8>)
{
  result = ButtonModel.Style.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ButtonModel.init(title:action:additionalClickMetrics:style:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  v10 = *(a4 + 16);
  v11 = *a5;
  if (a7)
  {
    v12 = a6;
  }

  else
  {
    v12 = 0;
  }

  *a8 = *a3;
  *(a8 + 16) = v8;
  *(a8 + 24) = v9;
  *(a8 + 25) = v11;
  *(a8 + 32) = a1;
  *(a8 + 40) = a2;
  *(a8 + 48) = a1;
  *(a8 + 56) = a2;
  *(a8 + 64) = *a4;
  *(a8 + 80) = v10;
  *(a8 + 88) = v12;
  *(a8 + 96) = a7;
  *(a8 + 104) = v12;
  *(a8 + 112) = a7;
}

__n128 ButtonModel.init(title:action:additionalClickMetrics:style:subtitle:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 32) = *a1;
  *a6 = *a2;
  *(a6 + 64) = *a3;
  result = *a5;
  v7 = *(a5 + 16);
  *(a6 + 88) = *a5;
  v8 = *(a1 + 24);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a3 + 16);
  v12 = *a4;
  *(a6 + 48) = *(a1 + 16);
  *(a6 + 56) = v8;
  *(a6 + 16) = v9;
  *(a6 + 24) = v10;
  *(a6 + 80) = v11;
  *(a6 + 25) = v12;
  *(a6 + 104) = v7;
  return result;
}

uint64_t sub_2703C3254(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000002706133F0 == a2;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_2705D8134();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_2703C33F8(char a1)
{
  result = 0x6E6F69746361;
  switch(a1)
  {
    case 1:
      v3 = 1819898995;
      goto LABEL_5;
    case 2:
      v3 = 1819568500;
LABEL_5:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x656C746974627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2703C34A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703C3254(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2703C34CC(uint64_t a1)
{
  v2 = sub_2703C3874();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703C3508(uint64_t a1)
{
  v2 = sub_2703C3874();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ButtonModel.encode(to:)(void *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF240);
  OUTLINED_FUNCTION_0();
  v38 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v43 = *(v1 + 25);
  v10 = *(v1 + 32);
  v34 = *(v1 + 40);
  v35 = v10;
  v11 = *(v1 + 48);
  v32 = *(v1 + 56);
  v33 = v11;
  v12 = *(v1 + 72);
  v29 = *(v1 + 64);
  v30 = v12;
  v31 = *(v1 + 80);
  v13 = *(v1 + 96);
  v25 = *(v1 + 88);
  v26 = v13;
  v14 = *(v1 + 104);
  v27 = *(v1 + 112);
  v28 = v14;
  v15 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_2703AE9E8(v8, v9, v15);
  sub_2703C3874();
  v16 = v6;
  sub_2705D84C4();
  v39 = v7;
  v40 = v8;
  v17 = v36;
  v41 = v9;
  LOBYTE(v42) = v15;
  v44 = 0;
  sub_2703C38C8();
  OUTLINED_FUNCTION_1_8();
  v18 = v6;
  v19 = v37;
  sub_2705D8084();
  if (v19)
  {
    OUTLINED_FUNCTION_6_5();
    sub_2703AE980(v15, v6, a1);
    return (*(v38 + 8))(v6, v17);
  }

  else
  {
    v21 = v33;
    v22 = v34;
    v23 = v35;
    OUTLINED_FUNCTION_6_5();
    sub_2703AE980(v15, v18, a1);
    LOBYTE(v39) = v43;
    v44 = 1;
    sub_2703C391C();
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_5_7();
    sub_2705D8084();
    v39 = v23;
    v40 = v22;
    v41 = v21;
    v42 = v32;
    v44 = 2;
    sub_2703C3970();

    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_5_7();
    sub_2705D8084();

    v39 = v29;
    v40 = v30;
    LOBYTE(v41) = v31;
    v44 = 3;
    sub_2703AE9E8(v29, v30, v31);
    sub_2703C39C4();
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_5_7();
    sub_2705D8024();
    sub_2703AE980(v39, v40, v41);
    v24 = v38;
    v39 = v25;
    v40 = v26;
    v41 = v28;
    v42 = v27;
    v44 = 4;
    sub_2703C3A18(v25, v26);
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_5_7();
    sub_2705D8024();
    sub_2703C3A5C(v39, v40);
    return (*(v24 + 8))(v16, v17);
  }
}

unint64_t sub_2703C3874()
{
  result = qword_2807CF248;
  if (!qword_2807CF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF248);
  }

  return result;
}

unint64_t sub_2703C38C8()
{
  result = qword_2807CF250;
  if (!qword_2807CF250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF250);
  }

  return result;
}

unint64_t sub_2703C391C()
{
  result = qword_2807CF258;
  if (!qword_2807CF258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF258);
  }

  return result;
}

unint64_t sub_2703C3970()
{
  result = qword_2807CF260;
  if (!qword_2807CF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF260);
  }

  return result;
}

unint64_t sub_2703C39C4()
{
  result = qword_2807CF268;
  if (!qword_2807CF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF268);
  }

  return result;
}

uint64_t sub_2703C3A18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2703C3A5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t ButtonModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF270);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2703C3874();
  sub_2705D8484();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_2703C3EB0();
  OUTLINED_FUNCTION_3_9();
  sub_2705D7FA4();
  v22 = v26;
  v23 = v27;
  v24 = v28;
  sub_2703C3F04();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3_9();
  sub_2705D7FA4();
  v45 = v29;
  sub_2703C3F58();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3_9();
  sub_2705D7FA4();
  v19 = v26;
  v18 = v26;
  v6 = v29;
  v20 = v28;
  LOBYTE(v25[0]) = 3;
  sub_2703C3FAC();
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3_9();
  sub_2705D7F44();
  v21 = v27;
  v16 = v26;
  v17 = v27;
  v7 = v28;
  v46 = 4;
  OUTLINED_FUNCTION_3_9();
  sub_2705D7F44();
  v8 = OUTLINED_FUNCTION_0_8();
  v9(v8);
  v14 = v42;
  v15 = v41;
  v12 = v44;
  v13 = v43;
  v25[0] = v22;
  v25[1] = v23;
  v25[2] = v24;
  v10 = v45;
  LOBYTE(v25[3]) = v45;
  BYTE1(v25[3]) = v19;
  v25[4] = v18;
  v25[5] = v21;
  v25[6] = v20;
  v25[7] = v6;
  v25[8] = v16;
  v25[9] = v17;
  LOBYTE(v25[10]) = v7;
  v25[11] = v41;
  v25[12] = v42;
  v25[13] = v43;
  v25[14] = v44;
  memcpy(a2, v25, 0x78uLL);
  sub_2703B1428(v25, &v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v26 = v22;
  v27 = v23;
  v28 = v24;
  LOBYTE(v29) = v10;
  BYTE1(v29) = v19;
  v30 = v18;
  v31 = v21;
  v32 = v20;
  v33 = v6;
  v34 = v16;
  v35 = v17;
  v36 = v7;
  v37 = v15;
  v38 = v14;
  v39 = v13;
  v40 = v12;
  return sub_2703C4000(&v26);
}

unint64_t sub_2703C3EB0()
{
  result = qword_2807CF278;
  if (!qword_2807CF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF278);
  }

  return result;
}

unint64_t sub_2703C3F04()
{
  result = qword_2807CF280;
  if (!qword_2807CF280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF280);
  }

  return result;
}

unint64_t sub_2703C3F58()
{
  result = qword_2807CF288;
  if (!qword_2807CF288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF288);
  }

  return result;
}

unint64_t sub_2703C3FAC()
{
  result = qword_2807CF290;
  if (!qword_2807CF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF290);
  }

  return result;
}

unint64_t sub_2703C4034()
{
  result = qword_2807CF298;
  if (!qword_2807CF298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF298);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ButtonModel.Style(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2703C4194);
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

_BYTE *storeEnumTagSinglePayload for ButtonModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x2703C4298);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2703C42D4()
{
  result = qword_2807CF2A0;
  if (!qword_2807CF2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF2A0);
  }

  return result;
}

unint64_t sub_2703C432C()
{
  result = qword_2807CF2A8;
  if (!qword_2807CF2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF2A8);
  }

  return result;
}

unint64_t sub_2703C4384()
{
  result = qword_2807CF2B0;
  if (!qword_2807CF2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF2B0);
  }

  return result;
}

unint64_t sub_2703C43D8()
{
  result = qword_2807CF2B8;
  if (!qword_2807CF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF2B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_5()
{
}

uint64_t sub_2703C44A0@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, __src, 0x80uLL);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = -1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  OUTLINED_FUNCTION_1_9(255);
  v3 = a2 + *(type metadata accessor for BuyAction() + 44);
  *&v4 = OUTLINED_FUNCTION_4_6();
  *v3 = v4;
  *(v3 + 16) = v4;
  *(v3 + 32) = 0;
  sub_2703B4B64(&v36, v3);
  *&v5 = OUTLINED_FUNCTION_4_6();
  *v6 = v5;
  *(v6 + 16) = v5;
  *(v6 + 32) = 0;
  v31 = v6;
  sub_2703B4B64(&v36, v6);
  v7 = __dst[3];
  v8 = __dst[4];
  *a2 = 0;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  v9 = __dst[5];
  v10 = *(a2 + 24);
  *(a2 + 24) = __dst[5];
  sub_2703AE9E8(v7, v8, v9);
  v11 = OUTLINED_FUNCTION_8_3();
  sub_2703AE980(v11, v12, v10);
  v13 = __dst[15];
  *(a2 + 32) = __dst[14];
  *(a2 + 40) = v13;
  v14 = __dst[1];
  v15 = *(a2 + 144);
  v16 = *(a2 + 152);
  *(a2 + 144) = __dst[0];
  *(a2 + 152) = v14;
  v17 = __dst[2];
  v18 = *(a2 + 160);
  *(a2 + 160) = __dst[2];

  v19 = OUTLINED_FUNCTION_8_3();
  sub_2703AE9E8(v19, v20, v17);
  sub_2703AE980(v15, v16, v18);
  sub_2705D6764();
  v21 = __dst[13];
  if (LOBYTE(__dst[13]) == 254)
  {
    OUTLINED_FUNCTION_4_6();
  }

  else
  {
    v22 = __dst[11];
    v23 = __dst[12];
    v32 = __dst[10];
    v33 = __dst[11];
    v34 = __dst[12];
    v35 = __dst[13];

    sub_2703AE9E8(v22, v23, v21);
    sub_2703B3B04(&v32);
    v24 = OUTLINED_FUNCTION_8_3();
    sub_2703AFC10(v24, v25, v23, v21);
  }

  sub_2703B4B64(&v36, v3);
  v26 = __dst[9];
  if (LOBYTE(__dst[9]) == 254)
  {
    OUTLINED_FUNCTION_4_6();
    sub_2703C57A8(__dst);
  }

  else
  {
    v27 = __dst[6];
    v28 = __dst[7];
    v29 = __dst[8];
    v32 = __dst[6];
    v33 = __dst[7];
    v34 = __dst[8];
    v35 = __dst[9];

    sub_2703AE9E8(v28, v29, v26);
    sub_2703B3B04(&v32);
    sub_2703C57A8(__dst);
    sub_2703AFC10(v27, v28, v29, v26);
  }

  return sub_2703B4B64(&v36, v31);
}

uint64_t sub_2703C4700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_2705D6774();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2703C4774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a2;
  v81 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2C8);
  MEMORY[0x28223BE20](v4 - 8);
  v87 = &v77 - v5;
  v91 = sub_2705D6484();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v80 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v79 = &v77 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v77 - v13;
  v90 = sub_2705D6774();
  OUTLINED_FUNCTION_0();
  v85 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_0();
  v83 = v18 - v17;
  v19 = type metadata accessor for BuyAction();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_0();
  v23 = v22 - v21;
  *(v22 - v21 + 8) = 0;
  v24 = (v22 - v21 + 8);
  *(v23 + 16) = 0;
  *(v23 + 24) = -1;
  *(v23 + 56) = 0;
  v86 = (v22 - v21 + 56);
  *(v23 + 48) = 0;
  *&v25 = OUTLINED_FUNCTION_1_9(255);
  v27 = v23 + *(v26 + 44);
  *&__dst[2] = 0;
  __dst[0] = v25;
  __dst[1] = v25;
  *v27 = v25;
  *(v27 + 16) = v25;
  *(v27 + 32) = 0;
  v88 = v27;
  sub_2703B4B64(__dst, v27);
  *&v28 = OUTLINED_FUNCTION_6_6();
  *v29 = v28;
  *(v29 + 16) = v28;
  *(v29 + 32) = 0;
  v89 = v29;
  sub_2703B4B64(__dst, v29);
  v30 = a1;
  sub_2705D6494();
  if (sub_2705D6444())
  {
    goto LABEL_4;
  }

  v82 = v19;
  v31 = v7;
  v32 = a1;
  v33 = v87;
  sub_2703C5518(v14, v95, v87);
  v34 = v90;
  if (__swift_getEnumTagSinglePayload(v33, 1, v90) == 1)
  {
    sub_2703C1634(v87, &qword_2807CF2C8);
    v30 = a1;
    v7 = v31;
    v19 = v82;
LABEL_4:
    sub_2705D7184();
    OUTLINED_FUNCTION_0_9();
    sub_2703C5C10(v35, v36);
    OUTLINED_FUNCTION_9_4();
    strcpy(v37, "actionMetrics");
    *(v37 + 7) = -4864;
    *(v37 + 2) = v19;
    OUTLINED_FUNCTION_4_4();
    (*(v38 + 104))();
    swift_willThrow();
    v39 = *(v7 + 8);
    v40 = v91;
    v39(v30, v91);
    v39(v14, v40);
    sub_2705D6654();
    OUTLINED_FUNCTION_11_1();
    (*(v41 + 8))(v95);

    sub_2703AE980(*(v23 + 8), *(v23 + 16), *(v23 + 24));
    memcpy(__dst, v86, 0x58uLL);
    sub_2703C1634(__dst, &qword_2807CF2D0);
    sub_2703AE980(*(v23 + 144), *(v23 + 152), *(v23 + 160));
    sub_2703C1634(v88, &qword_2807CF2D8);
    return sub_2703C1634(v89, &qword_2807CF2D8);
  }

  v78 = *(v31 + 8);
  v78(v14, v91);
  v43 = *(v85 + 32);
  v44 = v83;
  v43(v83, v87, v34);
  v45 = v82;
  v43(v23 + *(v82 + 40), v44, v34);
  v46 = v84;
  v47 = sub_2703C5198(0xD000000000000011, 0x8000000270613410, v45);
  if (v46)
  {

    v48 = 0;
  }

  else
  {
    v48 = v47;
  }

  *v23 = v48;
  sub_2703AE980(*(v23 + 8), *(v23 + 16), *(v23 + 24));
  *v24 = 0;
  v24[1] = 0;
  *(v23 + 24) = -1;
  *(v23 + 32) = sub_2704698DC();
  *(v23 + 40) = v49;
  v50 = sub_2703C5198(0x747865746E6F63, 0xE700000000000000, v45);
  sub_27046BFF4(v50);
  v52 = v51;
  v54 = v53;
  v56 = v55;

  sub_2703AE980(*(v23 + 144), *(v23 + 152), *(v23 + 160));
  *(v23 + 144) = v52;
  *(v23 + 152) = v54;
  *(v23 + 160) = v56;
  v57 = v79;
  v90 = v32;
  sub_2705D6494();
  v58 = sub_2705D6444();
  v59 = v91;
  v60 = v82;
  if ((v58 & 1) == 0)
  {
    sub_2705D67A4();
    if (v93)
    {
      v61 = v59;
      v78(v57, v59);
      sub_2703B291C(&v92, __dst);
      goto LABEL_13;
    }

    sub_2703C1634(&v92, &unk_2807CF480);
    v60 = v82;
  }

  sub_2705D7184();
  OUTLINED_FUNCTION_0_9();
  sub_2703C5C10(v62, v63);
  v64 = OUTLINED_FUNCTION_10_2();
  strcpy(v65, "failureAction");
  *(v65 + 7) = -4864;
  *(v65 + 2) = v60;
  OUTLINED_FUNCTION_4_4();
  (*(v66 + 104))();
  swift_willThrow();
  v78(v57, v59);

  OUTLINED_FUNCTION_6_6();
  v61 = v59;
LABEL_13:
  sub_2703B4B64(__dst, v88);
  v67 = v80;
  v68 = v90;
  sub_2705D6494();
  if (sub_2705D6444())
  {
LABEL_17:
    sub_2705D7184();
    OUTLINED_FUNCTION_0_9();
    sub_2703C5C10(v70, v71);
    v72 = OUTLINED_FUNCTION_10_2();
    strcpy(v73, "successAction");
    *(v73 + 7) = -4864;
    *(v73 + 2) = v82;
    OUTLINED_FUNCTION_4_4();
    (*(v74 + 104))();
    swift_willThrow();
    v75 = v78;
    v78(v68, v61);
    v75(v67, v61);

    OUTLINED_FUNCTION_6_6();
    goto LABEL_18;
  }

  sub_2705D67A4();
  if (!v93)
  {
    sub_2703C1634(&v92, &unk_2807CF480);
    goto LABEL_17;
  }

  v69 = v78;
  v78(v68, v61);
  v69(v67, v61);
  sub_2703B291C(&v92, __dst);
LABEL_18:
  sub_2703B4B64(__dst, v89);
  sub_2703C56E8(v23, v81);
  sub_2705D6654();
  OUTLINED_FUNCTION_11_1();
  (*(v76 + 8))(v95);
  return sub_2703C574C(v23);
}

uint64_t sub_2703C5198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2705D6484();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  v12 = v11 - v10;
  sub_2705D6494();
  if ((sub_2705D6444() & 1) != 0 || (v13 = sub_2703C5400()) == 0)
  {
    v14 = sub_2705D7184();
    OUTLINED_FUNCTION_0_9();
    sub_2703C5C10(v15, v16);
    OUTLINED_FUNCTION_9_4();
    *v17 = a1;
    v17[1] = a2;
    v17[2] = a3;
    OUTLINED_FUNCTION_4_4();
    (*(v18 + 104))();
    swift_willThrow();
    v19 = *(v8 + 8);

    v19(v12, v6);
  }

  else
  {
    v14 = v13;
    (*(v8 + 8))(v12, v6);
  }

  return v14;
}

uint64_t sub_2703C535C(uint64_t a1)
{
  result = sub_2703C5C10(&qword_2807CF2C0, type metadata accessor for BuyAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for BuyAction()
{
  result = qword_2807CF2E8;
  if (!qword_2807CF2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2703C5400()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF2E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  sub_2705D63B4();
  v3 = sub_2705D6844();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2703C1634(v2, &qword_2807CF2E0);
    return 0;
  }

  else
  {
    v4 = sub_2705D6834();
    OUTLINED_FUNCTION_4_4();
    (*(v5 + 8))(v2, v3);
  }

  return v4;
}

uint64_t sub_2703C5518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2705D6654();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2705D6484();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_2705D6774();
  (*(v11 + 16))(v13, a1, v10);
  (*(v7 + 16))(v9, a2, v6);
  sub_2705D6A34();
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v14);
}

uint64_t sub_2703C56E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BuyAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2703C574C(uint64_t a1)
{
  v2 = type metadata accessor for BuyAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2703C5810(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_2705D6774();
    v10 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_2703C58B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_2705D6774();
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2703C5938()
{
  sub_2703C5B54(319, &qword_2807CF2F8, &qword_2807CF300, &unk_2705DF700, MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2703C5B08(319, &qword_2807CF308);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_2703C5B08(319, &qword_2807CF1A0);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_2703C5B54(319, &qword_2807CF310, &qword_2807D42B0, &unk_27060E0B0, MEMORY[0x277D83D88]);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_2703C5B08(319, &qword_2807CF318);
      if (v8 > 0x3F)
      {
        return v5;
      }

      else
      {
        v1 = sub_2705D6774();
        if (v9 <= 0x3F)
        {
          sub_2703C5B54(319, &qword_2807CF320, &qword_2807CF328, &unk_2705DF710, MEMORY[0x277D21D28]);
          v1 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_2703C5B08(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2705D7C14();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2703C5B54(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2703C5BB8(uint64_t a1)
{
  result = sub_2703C5C10(&qword_2807CECD0, type metadata accessor for BuyAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2703C5C10(unint64_t *a1, void (*a2)(uint64_t))
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

double OUTLINED_FUNCTION_1_9@<D0>(char a1@<W8>)
{
  *(v1 + 64) = 1;
  result = 0.0;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  *(v1 + 160) = a1;
  return result;
}

double OUTLINED_FUNCTION_6_6()
{
  *(v0 - 144) = 0;
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return swift_allocError();
}

uint64_t BuyActionModel.context.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v3;
  return OUTLINED_FUNCTION_0_2(v2, v3, *(v1 + 16), a1);
}

uint64_t BuyActionModel.context.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_2703AE980(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t BuyActionModel.additionalMetrics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return OUTLINED_FUNCTION_0_2(v2, v3, *(v1 + 40), a1);
}

uint64_t BuyActionModel.additionalMetrics.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_2703AE980(*(v1 + 24), *(v1 + 32), *(v1 + 40));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

void BuyActionModel.successAction.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  OUTLINED_FUNCTION_5_8(v2, v3, v4, *(v1 + 72), a1);
}

__n128 BuyActionModel.successAction.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  sub_2703AFC10(*(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72));
  result = v5;
  *(v2 + 48) = v5;
  *(v2 + 64) = v1;
  *(v2 + 72) = v3;
  return result;
}

void BuyActionModel.failureAction.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  OUTLINED_FUNCTION_5_8(v2, v3, v4, *(v1 + 104), a1);
}

__n128 BuyActionModel.failureAction.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3(a1);
  sub_2703AFC10(*(v2 + 80), *(v2 + 88), *(v2 + 96), *(v2 + 104));
  result = v5;
  *(v2 + 80) = v5;
  *(v2 + 96) = v1;
  *(v2 + 104) = v3;
  return result;
}

uint64_t BuyActionModel.buyParams.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t BuyActionModel.buyParams.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

__n128 BuyActionModel.init(buyParams:additionalMetrics:failureAction:successAction:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __n128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = *(a3 + 16);
  v12 = a4[1].n128_u64[0];
  v13 = a4[1].n128_u8[8];
  v31 = *a5;
  v32 = *a4;
  v14 = *(a5 + 2);
  v15 = *(a5 + 24);
  v16 = OUTLINED_FUNCTION_16();
  sub_2703AE980(v16, v17, v18);
  v19 = OUTLINED_FUNCTION_0_10();
  sub_2703AFC10(v19, v20, v21, v22);
  v23 = OUTLINED_FUNCTION_0_10();
  sub_2703AFC10(v23, v24, v25, v26);
  v27 = OUTLINED_FUNCTION_16();
  sub_2703AE980(v27, v28, v29);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = -1;
  *(a6 + 24) = v9;
  *(a6 + 32) = v10;
  *(a6 + 40) = v11;
  result = v32;
  *(a6 + 48) = v31;
  *(a6 + 64) = v14;
  *(a6 + 72) = v15;
  *(a6 + 80) = v32;
  *(a6 + 96) = v12;
  *(a6 + 104) = v13;
  *(a6 + 112) = a1;
  *(a6 + 120) = a2;
  return result;
}

uint64_t BuyActionModel.init(buyParams:context:additionalMetrics:failureAction:successAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = a3[1];
  v34 = *a3;
  v9 = *(a3 + 16);
  v10 = *a4;
  v11 = a4[1];
  v12 = *(a4 + 16);
  v13 = *(a5 + 2);
  v14 = *(a5 + 24);
  v32 = *a5;
  v33 = *a6;
  v15 = *(a6 + 2);
  v16 = *(a6 + 24);
  *(a7 + 112) = a1;
  *(a7 + 120) = a2;
  v17 = OUTLINED_FUNCTION_16();
  sub_2703AE980(v17, v18, v19);
  *(a7 + 24) = v10;
  *(a7 + 32) = v11;
  *(a7 + 40) = v12;
  v20 = OUTLINED_FUNCTION_0_10();
  sub_2703AFC10(v20, v21, v22, v23);
  *(a7 + 80) = v32;
  *(a7 + 96) = v13;
  *(a7 + 104) = v14;
  v24 = OUTLINED_FUNCTION_0_10();
  sub_2703AFC10(v24, v25, v26, v27);
  *(a7 + 48) = v33;
  *(a7 + 64) = v15;
  *(a7 + 72) = v16;
  v28 = OUTLINED_FUNCTION_16();
  result = sub_2703AE980(v28, v29, v30);
  *a7 = v34;
  *(a7 + 8) = v8;
  *(a7 + 16) = v9;
  return result;
}

uint64_t BuyActionModel.init(buyParams:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = -1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = -1;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 48) = 0;
  *(a3 + 72) = -2;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  *(a3 + 80) = 0;
  *(a3 + 104) = -2;
  *(a3 + 112) = result;
  *(a3 + 120) = a2;
  return result;
}

uint64_t sub_2703C6150(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747865746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000270613430 == a2;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463;
      if (v7 || (sub_2705D8134() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x416572756C696166 && a2 == 0xED00006E6F697463;
        if (v8 || (sub_2705D8134() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6D61726150797562 && a2 == 0xE900000000000073)
        {

          return 4;
        }

        else
        {
          v10 = sub_2705D8134();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_2703C6310(char a1)
{
  result = 0x747865746E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x4173736563637573;
      break;
    case 3:
      result = 0x416572756C696166;
      break;
    case 4:
      result = 0x6D61726150797562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2703C63D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703C6150(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2703C6400(uint64_t a1)
{
  v2 = sub_2703C6780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703C643C(uint64_t a1)
{
  v2 = sub_2703C6780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BuyActionModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF330);
  OUTLINED_FUNCTION_0();
  v35 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = v23 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 24);
  v32 = *(v1 + 32);
  v33 = v10;
  v40 = *(v1 + 40);
  v11 = *(v1 + 48);
  v30 = *(v1 + 56);
  v31 = v11;
  v29 = *(v1 + 64);
  LODWORD(v11) = *(v1 + 72);
  v12 = *(v1 + 88);
  v24 = *(v1 + 80);
  v25 = v12;
  v26 = *(v1 + 96);
  v27 = *(v1 + 104);
  v28 = v11;
  v13 = *(v1 + 120);
  v23[1] = *(v1 + 112);
  v23[2] = v13;
  v14 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2703AE9E8(v9, v8, v14);
  sub_2703C6780();
  sub_2705D84C4();
  v36 = v9;
  v37 = v8;
  v15 = v7;
  LOBYTE(v38) = v14;
  v41 = 0;
  sub_2703C39C4();
  v16 = v34;
  sub_2705D8024();
  if (v16)
  {
    sub_2703AE980(v36, v37, v38);
    return (*(v35 + 8))(v7, v3);
  }

  else
  {
    v18 = v28;
    v20 = v29;
    v19 = v30;
    v21 = v31;
    v22 = v35;
    sub_2703AE980(v36, v37, v38);
    v36 = v33;
    v37 = v32;
    LOBYTE(v38) = v40;
    v41 = 1;
    sub_2703AE9E8(v33, v32, v40);
    OUTLINED_FUNCTION_8_4();
    sub_2705D8024();
    sub_2703AE980(v36, v37, v38);
    v36 = v21;
    v37 = v19;
    v38 = v20;
    v39 = v18;
    v41 = 2;
    sub_2703B4AA0(v21, v19, v20, v18);
    sub_2703C38C8();
    OUTLINED_FUNCTION_8_4();
    sub_2705D8024();
    OUTLINED_FUNCTION_11_4();
    v36 = v24;
    v37 = v25;
    v38 = v26;
    v39 = v27;
    v41 = 3;
    sub_2703B4AA0(v24, v25, v26, v27);
    OUTLINED_FUNCTION_8_4();
    sub_2705D8024();
    OUTLINED_FUNCTION_11_4();
    LOBYTE(v36) = 4;
    sub_2705D8034();
    return (*(v22 + 8))(v15, 0);
  }
}

unint64_t sub_2703C6780()
{
  result = qword_2807CF338;
  if (!qword_2807CF338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF338);
  }

  return result;
}

void BuyActionModel.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF340);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_2703C6780();
  sub_2705D8484();
  if (v2)
  {
    v48 = v2;
    OUTLINED_FUNCTION_4_7();
    OUTLINED_FUNCTION_7_4();
    __swift_destroy_boxed_opaque_existential_1(v47);
    sub_2703AE980(0, 0, 255);
    sub_2703AE980(0, 0, 255);
    sub_2703AFC10(v2, v45, v46, a2);
    sub_2703AFC10(v49, v50, v51, v69);
  }

  else
  {
    LOBYTE(v52[0]) = 0;
    sub_2703C3FAC();
    OUTLINED_FUNCTION_2_7();
    sub_2705D7F44();
    v42 = v53;
    v44 = v54;
    v43 = v55;
    v12 = OUTLINED_FUNCTION_16();
    sub_2703AE980(v12, v13, v14);
    LOBYTE(v52[0]) = 1;
    OUTLINED_FUNCTION_2_7();
    sub_2705D7F44();
    v39 = v53;
    v41 = v54;
    v40 = v55;
    v15 = OUTLINED_FUNCTION_16();
    sub_2703AE980(v15, v16, v17);
    LOBYTE(v52[0]) = 2;
    sub_2703C3EB0();
    OUTLINED_FUNCTION_2_7();
    sub_2705D7F44();
    v46 = a2;
    v18 = v54;
    v38 = v53;
    v19 = v55;
    HIDWORD(v37) = v56;
    v20 = OUTLINED_FUNCTION_0_10();
    sub_2703AFC10(v20, v21, v22, v23);
    LOBYTE(v52[0]) = 3;
    OUTLINED_FUNCTION_2_7();
    sub_2705D7F44();
    v49 = v53;
    v50 = v54;
    v51 = v55;
    v69 = v56;
    v24 = OUTLINED_FUNCTION_0_10();
    sub_2703AFC10(v24, v25, v26, v27);
    v70 = 4;
    v28 = sub_2705D7F54();
    v48 = 0;
    v29 = v28;
    v30 = v10;
    v32 = v31;
    (*(v7 + 8))(v30, v5);
    v34 = v41;
    v33 = v42;
    v52[0] = v42;
    v52[1] = v44;
    LOBYTE(v52[2]) = v43;
    v35 = v39;
    v52[3] = v39;
    v52[4] = v41;
    v36 = v40;
    LOBYTE(v52[5]) = v40;
    v52[6] = v38;
    v52[7] = v18;
    v52[8] = v19;
    LOBYTE(v52[9]) = BYTE4(v37);
    v52[10] = v49;
    v52[11] = v50;
    v52[12] = v51;
    LOBYTE(v52[13]) = v69;
    v52[14] = v29;
    v52[15] = v32;
    memcpy(v46, v52, 0x80uLL);
    sub_2703AE65C(v52, &v53);
    __swift_destroy_boxed_opaque_existential_1(v47);
    v53 = v33;
    v54 = v44;
    LOBYTE(v55) = v43;
    v56 = v35;
    v57 = v34;
    v58 = v36;
    v59 = v38;
    v60 = v18;
    v61 = v19;
    v62 = BYTE4(v37);
    v63 = v49;
    v64 = v50;
    v65 = v51;
    v66 = v69;
    v67 = v29;
    v68 = v32;
    sub_2703C57A8(&v53);
  }
}

uint64_t get_enum_tag_for_layout_string_19UnifiedMessagingKit14ActionModelBoxVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 <= 0x11)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

uint64_t sub_2703C6CBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120);
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

uint64_t sub_2703C6CFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BuyActionModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x2703C6E38);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2703C6E74()
{
  result = qword_2807CF348;
  if (!qword_2807CF348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF348);
  }

  return result;
}

unint64_t sub_2703C6ECC()
{
  result = qword_2807CF350;
  if (!qword_2807CF350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF350);
  }

  return result;
}

unint64_t sub_2703C6F24()
{
  result = qword_2807CF358;
  if (!qword_2807CF358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF358);
  }

  return result;
}

void OUTLINED_FUNCTION_4_7()
{
  v0[13] = 0;
  v0[14] = 0;
  v0[12] = 0;
  v0[8] = 0;
  v0[9] = 0;
}

void OUTLINED_FUNCTION_11_4()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);
  v4 = *(v0 - 96);
  v5 = *(v0 - 88);

  sub_2703AFC10(v2, v3, v4, v5);
}

uint64_t sub_2703C7020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D6620);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  sub_2705D6894();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_2703C1634(v9, &unk_2807D6620);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038);
    sub_2703B29E4();
    swift_allocError();
    *v17 = 0;
    return sub_2705D70B4();
  }

  else
  {
    v35 = a3;
    v36 = a1;
    v19 = v16;
    v20 = *(v11 + 32);
    v20(v19, v9, v10);
    v21 = v19;
    v22 = sub_2705D69C4();
    if (v22)
    {
      v23 = v22;
      *(&v39 + 1) = sub_2703CACA0(0, &qword_2807CEC80);
      v40 = MEMORY[0x277D225C0];
      *&v38 = v23;
      sub_2703B291C(&v38, v41);
    }

    else
    {
      v24 = sub_2705D6A74();
      v38 = 0u;
      v39 = 0u;
      v40 = 0;
      v41[3] = v24;
      v41[4] = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1Tm(v41);
      sub_2705D6A64();
      if (*(&v39 + 1))
      {
        sub_2703C1634(&v38, &unk_2807CF4A0);
      }
    }

    v25 = *(v11 + 16);
    v34 = v21;
    v25(v14, v21, v10);
    v26 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v27 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    v20((v28 + v26), v14, v10);
    *(v28 + v27) = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038);

    v18 = sub_2705D7104();
    sub_2703CAAEC(v37, &v38, &unk_2807CF480);
    v29 = swift_allocObject();
    v30 = v39;
    *(v29 + 16) = v38;
    *(v29 + 32) = v30;
    *(v29 + 48) = v40;
    *(v29 + 56) = sub_2703CB508;
    *(v29 + 64) = v28;
    *(v29 + 72) = v18;
    sub_2703CAAEC(v35, &v38, &unk_2807CF480);
    v31 = swift_allocObject();
    v32 = v39;
    *(v31 + 16) = v38;
    *(v31 + 32) = v32;
    *(v31 + 48) = v40;
    *(v31 + 56) = sub_2703CB508;
    *(v31 + 64) = v28;
    *(v31 + 72) = v18;
    swift_retain_n();
    swift_retain_n();
    sub_2705D7094();

    (*(v11 + 8))(v34, v10);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  return v18;
}

void sub_2703C747C()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_9_5(v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D6620);
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  OUTLINED_FUNCTION_0();
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_10_4();
  if (v11)
  {
    sub_2703C1634(v2, &unk_2807D6620);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038);
    sub_2703B29E4();
    OUTLINED_FUNCTION_24_1();
    swift_allocError();
    *v12 = 0;
    sub_2705D70B4();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_0_11();
    v0(v13);
    if (OUTLINED_FUNCTION_40())
    {
      v14 = sub_2703CACA0(0, &qword_2807CEC80);
      OUTLINED_FUNCTION_17_2(v14, MEMORY[0x277D225C0]);
    }

    else
    {
      sub_2705D6A74();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_35(v15, MEMORY[0x277D21FB0]);
      sub_2705D6A64();
      if (v26[3])
      {
        sub_2703C1634(v26, &unk_2807CF4A0);
      }
    }

    v16 = OUTLINED_FUNCTION_1_10();
    v17(v16);
    OUTLINED_FUNCTION_3_11();
    v18 = OUTLINED_FUNCTION_39();
    v19 = OUTLINED_FUNCTION_8_5(v18);
    v0(v19);
    *(v8 + v2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038);
    OUTLINED_FUNCTION_36();
    sub_2705D7104();
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_20_1();
    v20 = swift_allocObject();
    OUTLINED_FUNCTION_6_7(v20);
    *(v21 + 48) = v22;
    *(v21 + 56) = sub_2703CB508;
    OUTLINED_FUNCTION_11_5(v21);
    OUTLINED_FUNCTION_20_1();
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_5_9(v23);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_16_1();

    v24 = OUTLINED_FUNCTION_12_3();
    v25(v24);
    __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_25_1();
}

void sub_2703C775C()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_9_5(v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D6620);
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  OUTLINED_FUNCTION_0();
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_10_4();
  if (v11)
  {
    sub_2703C1634(v2, &unk_2807D6620);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038);
    sub_2703B29E4();
    OUTLINED_FUNCTION_24_1();
    swift_allocError();
    *v12 = 0;
    sub_2705D70B4();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_0_11();
    v0(v13);
    if (OUTLINED_FUNCTION_40())
    {
      v14 = sub_2703CACA0(0, &qword_2807CEC80);
      OUTLINED_FUNCTION_17_2(v14, MEMORY[0x277D225C0]);
    }

    else
    {
      sub_2705D6A74();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_35(v15, MEMORY[0x277D21FB0]);
      sub_2705D6A64();
      if (v26[3])
      {
        sub_2703C1634(v26, &unk_2807CF4A0);
      }
    }

    v16 = OUTLINED_FUNCTION_1_10();
    v17(v16);
    OUTLINED_FUNCTION_3_11();
    v18 = OUTLINED_FUNCTION_39();
    v19 = OUTLINED_FUNCTION_8_5(v18);
    v0(v19);
    *(v8 + v2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038);
    OUTLINED_FUNCTION_36();
    sub_2705D7104();
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_20_1();
    v20 = swift_allocObject();
    OUTLINED_FUNCTION_6_7(v20);
    *(v21 + 48) = v22;
    *(v21 + 56) = sub_2703CB508;
    OUTLINED_FUNCTION_11_5(v21);
    OUTLINED_FUNCTION_20_1();
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_5_9(v23);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_16_1();

    v24 = OUTLINED_FUNCTION_12_3();
    v25(v24);
    __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_25_1();
}

void sub_2703C7A3C()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_9_5(v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D6620);
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  OUTLINED_FUNCTION_0();
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_10_4();
  if (v11)
  {
    sub_2703C1634(v2, &unk_2807D6620);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038);
    sub_2703B29E4();
    OUTLINED_FUNCTION_24_1();
    swift_allocError();
    *v12 = 0;
    sub_2705D70B4();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_0_11();
    v0(v13);
    if (OUTLINED_FUNCTION_40())
    {
      v14 = sub_2703CACA0(0, &qword_2807CEC80);
      OUTLINED_FUNCTION_17_2(v14, MEMORY[0x277D225C0]);
    }

    else
    {
      sub_2705D6A74();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_35(v15, MEMORY[0x277D21FB0]);
      sub_2705D6A64();
      if (v26[3])
      {
        sub_2703C1634(v26, &unk_2807CF4A0);
      }
    }

    v16 = OUTLINED_FUNCTION_1_10();
    v17(v16);
    OUTLINED_FUNCTION_3_11();
    v18 = OUTLINED_FUNCTION_39();
    v19 = OUTLINED_FUNCTION_8_5(v18);
    v0(v19);
    *(v8 + v2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038);
    OUTLINED_FUNCTION_36();
    sub_2705D7104();
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_20_1();
    v20 = swift_allocObject();
    OUTLINED_FUNCTION_6_7(v20);
    *(v21 + 48) = v22;
    *(v21 + 56) = sub_2703CB508;
    OUTLINED_FUNCTION_11_5(v21);
    OUTLINED_FUNCTION_20_1();
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_5_9(v23);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_16_1();

    v24 = OUTLINED_FUNCTION_12_3();
    v25(v24);
    __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_25_1();
}

void sub_2703C7D1C()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_9_5(v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D6620);
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  OUTLINED_FUNCTION_0();
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_10_4();
  if (v11)
  {
    sub_2703C1634(v2, &unk_2807D6620);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038);
    sub_2703B29E4();
    OUTLINED_FUNCTION_24_1();
    swift_allocError();
    *v12 = 0;
    sub_2705D70B4();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_0_11();
    v0(v13);
    if (OUTLINED_FUNCTION_40())
    {
      v14 = sub_2703CACA0(0, &qword_2807CEC80);
      OUTLINED_FUNCTION_17_2(v14, MEMORY[0x277D225C0]);
    }

    else
    {
      sub_2705D6A74();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_35(v15, MEMORY[0x277D21FB0]);
      sub_2705D6A64();
      if (v26[3])
      {
        sub_2703C1634(v26, &unk_2807CF4A0);
      }
    }

    v16 = OUTLINED_FUNCTION_1_10();
    v17(v16);
    OUTLINED_FUNCTION_3_11();
    v18 = OUTLINED_FUNCTION_39();
    v19 = OUTLINED_FUNCTION_8_5(v18);
    v0(v19);
    *(v8 + v2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038);
    OUTLINED_FUNCTION_36();
    sub_2705D7104();
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_20_1();
    v20 = swift_allocObject();
    OUTLINED_FUNCTION_6_7(v20);
    *(v21 + 48) = v22;
    *(v21 + 56) = sub_2703CB3A0;
    OUTLINED_FUNCTION_11_5(v21);
    OUTLINED_FUNCTION_20_1();
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_5_9(v23);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_16_1();

    v24 = OUTLINED_FUNCTION_12_3();
    v25(v24);
    __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_25_1();
}

void sub_2703C7FFC()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_9_5(v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D6620);
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  OUTLINED_FUNCTION_0();
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_10_4();
  if (v11)
  {
    sub_2703C1634(v2, &unk_2807D6620);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038);
    sub_2703B29E4();
    OUTLINED_FUNCTION_24_1();
    swift_allocError();
    *v12 = 0;
    sub_2705D70B4();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_0_11();
    v0(v13);
    if (OUTLINED_FUNCTION_40())
    {
      v14 = sub_2703CACA0(0, &qword_2807CEC80);
      OUTLINED_FUNCTION_17_2(v14, MEMORY[0x277D225C0]);
    }

    else
    {
      sub_2705D6A74();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_35(v15, MEMORY[0x277D21FB0]);
      sub_2705D6A64();
      if (v26[3])
      {
        sub_2703C1634(v26, &unk_2807CF4A0);
      }
    }

    v16 = OUTLINED_FUNCTION_1_10();
    v17(v16);
    OUTLINED_FUNCTION_3_11();
    v18 = OUTLINED_FUNCTION_39();
    v19 = OUTLINED_FUNCTION_8_5(v18);
    v0(v19);
    *(v8 + v2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038);
    OUTLINED_FUNCTION_36();
    sub_2705D7104();
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_20_1();
    v20 = swift_allocObject();
    OUTLINED_FUNCTION_6_7(v20);
    *(v21 + 48) = v22;
    *(v21 + 56) = sub_2703CB508;
    OUTLINED_FUNCTION_11_5(v21);
    OUTLINED_FUNCTION_20_1();
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_5_9(v23);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_16_1();

    v24 = OUTLINED_FUNCTION_12_3();
    v25(v24);
    __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_25_1();
}

void sub_2703C82DC()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_9_5(v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D6620);
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  OUTLINED_FUNCTION_0();
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_10_4();
  if (v11)
  {
    sub_2703C1634(v2, &unk_2807D6620);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038);
    sub_2703B29E4();
    OUTLINED_FUNCTION_24_1();
    swift_allocError();
    *v12 = 0;
    sub_2705D70B4();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_0_11();
    v0(v13);
    if (OUTLINED_FUNCTION_40())
    {
      v14 = sub_2703CACA0(0, &qword_2807CEC80);
      OUTLINED_FUNCTION_17_2(v14, MEMORY[0x277D225C0]);
    }

    else
    {
      sub_2705D6A74();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_35(v15, MEMORY[0x277D21FB0]);
      sub_2705D6A64();
      if (v26[3])
      {
        sub_2703C1634(v26, &unk_2807CF4A0);
      }
    }

    v16 = OUTLINED_FUNCTION_1_10();
    v17(v16);
    OUTLINED_FUNCTION_3_11();
    v18 = OUTLINED_FUNCTION_39();
    v19 = OUTLINED_FUNCTION_8_5(v18);
    v0(v19);
    *(v8 + v2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038);
    OUTLINED_FUNCTION_36();
    sub_2705D7104();
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_20_1();
    v20 = swift_allocObject();
    OUTLINED_FUNCTION_6_7(v20);
    *(v21 + 48) = v22;
    *(v21 + 56) = sub_2703CB508;
    OUTLINED_FUNCTION_11_5(v21);
    OUTLINED_FUNCTION_20_1();
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_5_9(v23);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_16_1();

    v24 = OUTLINED_FUNCTION_12_3();
    v25(v24);
    __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  OUTLINED_FUNCTION_27_1();
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_2703C85BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF4B0);
  OUTLINED_FUNCTION_0();
  v2 = v1;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  (*(v2 + 104))(&v8 - v4, *MEMORY[0x277D21E18], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  v6 = sub_2705D6A04();
  (*(v2 + 8))(v5, v0);
  return v6;
}

id sub_2703C86D8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC19UnifiedMessagingKit23BuyActionImplementation_delegate] = 0;
  *&v1[OBJC_IVAR____TtC19UnifiedMessagingKit23BuyActionImplementation_bag] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_2703C8734()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v34 = type metadata accessor for BuyAction();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF450);
  v12 = OUTLINED_FUNCTION_23_0(v11);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = sub_2705D6ED4();
  sub_2705D6894();
  if (__swift_getEnumTagSinglePayload(v15, 1, v18) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF458);
    sub_2705D68B4();
    v32 = v5;
    __swift_project_boxed_opaque_existential_1(v37, v37[3]);
    v5 = v32;
    sub_2705D6874();
    __swift_destroy_boxed_opaque_existential_1(v37);
    if (__swift_getEnumTagSinglePayload(v15, 1, v18) != 1)
    {
      sub_2703C1634(v15, &qword_2807CF450);
    }
  }

  else
  {
    (*(*(v18 - 8) + 32))(v17, v15, v18);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  }

  sub_2703CACA0(0, &unk_2807CF460);
  sub_2705D6914();
  sub_2705D6EA4();
  v19 = v37[0];
  v20 = type metadata accessor for BuyDelegate();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC19UnifiedMessagingKit11BuyDelegate_objectGraph] = v3;
  v36.receiver = v21;
  v36.super_class = v20;

  v22 = objc_msgSendSuper2(&v36, sel_init);
  v23 = *(v1 + OBJC_IVAR____TtC19UnifiedMessagingKit23BuyActionImplementation_delegate);
  *(v1 + OBJC_IVAR____TtC19UnifiedMessagingKit23BuyActionImplementation_delegate) = v22;

  if (*(v5 + 40))
  {
    sub_2703C8BE4(v17, *(v1 + OBJC_IVAR____TtC19UnifiedMessagingKit23BuyActionImplementation_bag), v19);
    v24 = v33;
    sub_2703C56E8(v5, v33);
    v25 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v3;
    sub_2703CA6F0(v24, v26 + v25);
    v27 = sub_2705D6A74();
    OUTLINED_FUNCTION_35(v27, MEMORY[0x277D21FB0]);

    sub_2705D6A64();
    sub_2705D6784();
    v28 = sub_2705D7074();

    __swift_destroy_boxed_opaque_existential_1(v37);
    v29 = v34;
    sub_2703CAAEC(v5 + *(v34 + 48), v37, &qword_2807CF2D8);
    sub_2703CAAEC(v5 + *(v29 + 44), v35, &qword_2807CF2D8);
    sub_2703C7020(v28, v37, v35, v3);

    sub_2703C1634(v35, &unk_2807CF480);
    sub_2703C1634(v37, &unk_2807CF480);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF038);
    sub_2703CA528();
    OUTLINED_FUNCTION_24_1();
    swift_allocError();
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    *v30 = 0;
    *(v30 + 24) = xmmword_2705E0080;
    sub_2705D70B4();
  }

  sub_2703C1634(v17, &qword_2807CF450);
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_2703C8BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[0] = a3;
  v24 = sub_2705D6174();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF450);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  sub_2703CACA0(0, &qword_2807CF4D0);

  v11 = sub_2703C9564();
  v12 = [objc_allocWithZone(MEMORY[0x277CEE640]) initWithPurchaseType:0 buyParams:v11];
  sub_2703CAAEC(a1, v10, &qword_2807CF450);
  v13 = sub_2705D6ED4();
  if (__swift_getEnumTagSinglePayload(v10, 1, v13) == 1)
  {
    sub_2703C1634(v10, &qword_2807CF450);
    v14 = 0;
  }

  else
  {
    v14 = MEMORY[0x2743A32D0]();
    (*(*(v13 - 8) + 8))(v10, v13);
  }

  [v12 setAccount_];

  [v12 setClientInfo_];
  [v12 setUserInitiated_];
  [v12 setRequiresAccount_];
  sub_2703CACA0(0, &qword_2807CF4D8);
  v15 = v12;
  swift_unknownObjectRetain();
  v16 = sub_2703C95D8(v15, a2);
  [v16 setDelegate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF4E0);
  v17 = sub_2703CACA0(0, &qword_2807CEC80);
  v18 = v24;
  (*(v5 + 104))(v7, *MEMORY[0x277D851C8], v24);
  v19 = sub_2705D7B44();
  (*(v5 + 8))(v7, v18);
  v26 = v17;
  v27 = MEMORY[0x277D225C0];
  v25 = v19;
  *(swift_allocObject() + 16) = v16;
  v20 = v16;
  v21 = sub_2705D7064();

  return v21;
}

uint64_t sub_2703C8F94@<X0>(void **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v34 = a3;
  v28 = a2;
  v4 = sub_2705D6164();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2705D6194();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BuyAction();
  v27 = *(v8 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2705D6174();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  type metadata accessor for ActionResultHandler();
  sub_2705D6894();
  v15 = aBlock[0];
  if (aBlock[0])
  {
    sub_2703CACA0(0, &qword_2807CEC80);
    (*(v11 + 104))(v13, *MEMORY[0x277D851B8], v10);
    v26 = sub_2705D7B44();
    (*(v11 + 8))(v13, v10);
    sub_2703C56E8(v28, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v14;
    sub_2703CA6F0(&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    aBlock[4] = sub_2703CA96C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2703C9520;
    aBlock[3] = &block_descriptor;
    v18 = _Block_copy(aBlock);

    v19 = v14;
    sub_2705D6184();
    aBlock[7] = MEMORY[0x277D84F90];
    sub_2703CA9E4(&qword_2807CF4B8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF4C0);
    sub_2703CAA2C();
    v20 = v30;
    v21 = v33;
    sub_2705D7C94();
    v22 = v26;
    MEMORY[0x2743A3F40](0, v7, v20, v18);
    _Block_release(v18);

    (*(v32 + 8))(v20, v21);
    (*(v29 + 8))(v7, v31);
  }

  v23 = *MEMORY[0x277D21CA8];
  v24 = sub_2705D6784();
  return (*(*(v24 - 8) + 104))(v34, v23, v24);
}

uint64_t sub_2703C9444(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionResultHandler.Result();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = *(a3 + 144);
  v11 = *(a3 + 152);
  *v8 = a2;
  *(v8 + 1) = v10;
  *(v8 + 2) = v11;
  LOBYTE(a3) = *(a3 + 160);
  v8[24] = a3;
  swift_storeEnumTagMultiPayload();
  sub_2703AE9E8(v10, v11, a3);
  v12 = a2;
  v9(v8);
  return sub_2703CAA90(v8);
}

uint64_t sub_2703C9520(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_2703C9564()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_2705D7534();

  v2 = [v0 initWithString_];

  return v2;
}

id sub_2703C95D8(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPurchase:a1 bag:a2];

  swift_unknownObjectRelease();
  return v3;
}

void sub_2703C9638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = [a5 performPurchase];
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = sub_2703CABC8;
  v12[5] = v10;
  v14[4] = sub_2703CAC40;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2703C9880;
  v14[3] = &block_descriptor_31;
  v13 = _Block_copy(v14);

  [v11 addFinishBlock_];
  _Block_release(v13);
}

void sub_2703C9784(void *a1, id a2, void (*a3)(void), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v7 = a2;
    (a3)(a2);
    v8 = a2;
    goto LABEL_3;
  }

  if (!a1)
  {
    sub_2703CA528();
    v10 = swift_allocError();
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = 0;
    *(v11 + 24) = xmmword_2705E0090;
    a3();
    v8 = v10;
LABEL_3:

    goto LABEL_5;
  }

  v12 = a1;
  a5();
  v8 = v12;

LABEL_5:
}

void sub_2703C9880(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_2703C994C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2703C9A18()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_29_1(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF4B0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_31_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_42();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_28_1(v6);
  v15[3] = type metadata accessor for DialogAction();
  v15[4] = sub_2703CA9E4(&qword_2807CF510, type metadata accessor for DialogAction);
  __swift_allocate_boxed_opaque_existential_1Tm(v15);
  OUTLINED_FUNCTION_41();

  sub_2705D6764();
  *v1 = v14;
  v1[1] = sub_2703CAFF4;
  v1[2] = v0;
  v7 = OUTLINED_FUNCTION_23_1();
  v8(v7);
  v9 = v14;
  OUTLINED_FUNCTION_21_1();

  v10 = OUTLINED_FUNCTION_33_0();
  v11(v10);
  v12 = OUTLINED_FUNCTION_32_0();
  v13(v12);
  __swift_destroy_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_25_1();
}

void sub_2703C9C50()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_29_1(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF4B0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_31_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_42();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_28_1(v6);
  v15[3] = type metadata accessor for EngagementTaskAction();
  v15[4] = sub_2703CA9E4(&qword_2807CECE8, type metadata accessor for EngagementTaskAction);
  __swift_allocate_boxed_opaque_existential_1Tm(v15);
  OUTLINED_FUNCTION_41();

  sub_2705D6764();
  *v1 = v14;
  v1[1] = sub_2703CB50C;
  v1[2] = v0;
  v7 = OUTLINED_FUNCTION_23_1();
  v8(v7);
  v9 = v14;
  OUTLINED_FUNCTION_21_1();

  v10 = OUTLINED_FUNCTION_33_0();
  v11(v10);
  v12 = OUTLINED_FUNCTION_32_0();
  v13(v12);
  __swift_destroy_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_25_1();
}

void sub_2703C9E88()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_29_1(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF4B0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_31_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_42();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_28_1(v6);
  v15[3] = type metadata accessor for AuthenticateAction();
  v15[4] = sub_2703CA9E4(&qword_2807CF500, type metadata accessor for AuthenticateAction);
  __swift_allocate_boxed_opaque_existential_1Tm(v15);
  OUTLINED_FUNCTION_41();

  sub_2705D6764();
  *v1 = v14;
  v1[1] = sub_2703CB50C;
  v1[2] = v0;
  v7 = OUTLINED_FUNCTION_23_1();
  v8(v7);
  v9 = v14;
  OUTLINED_FUNCTION_21_1();

  v10 = OUTLINED_FUNCTION_33_0();
  v11(v10);
  v12 = OUTLINED_FUNCTION_32_0();
  v13(v12);
  __swift_destroy_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_2703CA0C0(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  v12 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v12;
  v13 = a3;
  v14 = a4;
  v15 = a1;
  a8();
}

void sub_2703CA180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_2705D4354();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_2703CA1F0()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_2703CA284();

  if (!v1)
  {
    sub_2703CAC4C();
    OUTLINED_FUNCTION_24_1();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_2703CA284()
{
  v1 = [v0 connectedScenes];
  sub_2703CACA0(0, &qword_2807CF4F0);
  sub_2703CACE0();
  v2 = sub_2705D7A04();

  sub_2703CAD48(v2);
  v4 = v3;

  result = sub_2703CAFD0(v4);
  if (!result)
  {

    return 0;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x2743A4130](0, v4);
    goto LABEL_5;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);
LABEL_5:
    v7 = v6;

    return v7;
  }

  __break(1u);
  return result;
}

id sub_2703CA478()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuyDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2703CA528()
{
  result = qword_2807CF470;
  if (!qword_2807CF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF470);
  }

  return result;
}

uint64_t sub_2703CA57C()
{
  type metadata accessor for BuyAction();
  OUTLINED_FUNCTION_34_0();
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  v4 = v1 + v3;

  v5 = *(v1 + v3 + 24);
  if (v5 != 255)
  {
    sub_2703AE630(*(v4 + 8), *(v4 + 16), v5);
  }

  v6 = *(v4 + 64);
  if (v6)
  {
    if (v6 == 1)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v7 = *(v4 + 160);
  if (v7 != 255)
  {
    sub_2703AE630(*(v4 + 144), *(v4 + 152), v7);
  }

  v8 = v0[10];
  sub_2705D6774();
  OUTLINED_FUNCTION_11_1();
  (*(v9 + 8))(v4 + v8);
  v10 = OUTLINED_FUNCTION_43(v0[11]);
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v12 = OUTLINED_FUNCTION_43(v0[12]);
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return swift_deallocObject();
}

uint64_t sub_2703CA6F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BuyAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2703CA754@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for BuyAction();
  OUTLINED_FUNCTION_23_0(v5);
  return sub_2703C8F94(a1, v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80)), a2);
}

uint64_t sub_2703CA7F0()
{
  type metadata accessor for BuyAction();
  OUTLINED_FUNCTION_34_0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  v4 = v1 + v3;

  v5 = *(v1 + v3 + 24);
  if (v5 != 255)
  {
    sub_2703AE630(*(v4 + 8), *(v4 + 16), v5);
  }

  v6 = *(v4 + 64);
  if (v6)
  {
    if (v6 == 1)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v7 = *(v4 + 160);
  if (v7 != 255)
  {
    sub_2703AE630(*(v4 + 144), *(v4 + 152), v7);
  }

  v8 = v0[10];
  sub_2705D6774();
  OUTLINED_FUNCTION_11_1();
  (*(v9 + 8))(v4 + v8);
  v10 = OUTLINED_FUNCTION_43(v0[11]);
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v12 = OUTLINED_FUNCTION_43(v0[12]);
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return swift_deallocObject();
}

uint64_t sub_2703CA96C()
{
  v1 = type metadata accessor for BuyAction();
  OUTLINED_FUNCTION_23_0(v1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return sub_2703C9444(v3, v4, v5);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2703CA9E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2703CAA2C()
{
  result = qword_2807CF4C8;
  if (!qword_2807CF4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF4C8);
  }

  return result;
}

uint64_t sub_2703CAA90(uint64_t a1)
{
  v2 = type metadata accessor for ActionResultHandler.Result();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2703CAAEC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2703CAB54()
{

  return swift_deallocObject();
}

uint64_t sub_2703CAB94()
{

  OUTLINED_FUNCTION_42();

  return swift_deallocObject();
}

uint64_t sub_2703CABC8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_2703CAC00()
{

  return swift_deallocObject();
}

unint64_t sub_2703CAC4C()
{
  result = qword_2807CF4E8;
  if (!qword_2807CF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF4E8);
  }

  return result;
}

uint64_t sub_2703CACA0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_2703CACE0()
{
  result = qword_2807CF4F8;
  if (!qword_2807CF4F8)
  {
    sub_2703CACA0(255, &qword_2807CF4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF4F8);
  }

  return result;
}

void sub_2703CAD48(uint64_t a1)
{
  v1 = a1;
  v22 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2705D7CA4();
    sub_2703CACA0(0, &qword_2807CF4F0);
    sub_2703CACE0();
    sub_2705D7A14();
    v1 = v17;
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

LABEL_7:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_2705D7CB4() || (sub_2703CACA0(0, &qword_2807CF4F0), swift_dynamicCast(), v13 = v16, v4 = v9, v5 = v10, !v16))
      {
LABEL_24:
        sub_2703B5C38();
        return;
      }

      goto LABEL_17;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_13:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_17:
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {

      goto LABEL_7;
    }

    v15 = [v14 keyWindow];

    v9 = v4;
    v10 = v5;
    if (v15)
    {
      MEMORY[0x2743A3BB0]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2705D77E4();
      }

      sub_2705D7824();
      goto LABEL_7;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_2703CAFD0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2705D7E64();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_2703CAFF8(uint64_t a1, char a2)
{
  v3 = a1;
  if (a2)
  {
    a1 = 0;
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return (*(v2 + 16))(a1, v4);
}

uint64_t sub_2703CB03C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

_BYTE *storeEnumTagSinglePayload for BuyDelegate.PresentationError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2703CB15CLL);
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

uint64_t get_enum_tag_for_layout_string_19UnifiedMessagingKit23BuyActionImplementationC12PerformErrorO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2703CB1C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 40))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2703CB218(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 4;
    }
  }

  return result;
}

double sub_2703CB270(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

unint64_t sub_2703CB2B0()
{
  result = qword_2807CF518;
  if (!qword_2807CF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF518);
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  OUTLINED_FUNCTION_11_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroy_12Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  OUTLINED_FUNCTION_20_1();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_0_11()
{
  *(v3 - 184) = v2;
  *(v3 - 176) = v0;
  return v1;
}

uint64_t OUTLINED_FUNCTION_1_10()
{
  result = v0;
  *(v2 - 192) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_9(uint64_t a1)
{
  v6 = *(v4 - 144);
  *(a1 + 16) = *(v4 - 160);
  *(a1 + 32) = v6;
  *(a1 + 48) = *(v4 - 128);
  *(a1 + 56) = v3;
  *(a1 + 64) = v2;
  *(a1 + 72) = v1;

  return swift_retain_n();
}

__n128 OUTLINED_FUNCTION_6_7(uint64_t a1)
{
  result = *(v1 - 160);
  v3 = *(v1 - 144);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_5()
{

  return sub_2705D6894();
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t a1)
{
  *(a1 + 64) = v3;
  *(a1 + 72) = v2;
  v6 = *(v4 - 184);

  return sub_2703CAAEC(v6, v4 - 160, v1);
}

double OUTLINED_FUNCTION_14_3()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_1()
{

  return sub_2705D7094();
}

uint64_t OUTLINED_FUNCTION_17_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 136) = a1;
  *(v3 - 128) = a2;
  *(v3 - 160) = v2;

  return sub_2703B291C((v3 - 160), v3 - 120);
}

uint64_t OUTLINED_FUNCTION_18_1()
{
  v3 = *(v1 - 168);

  return sub_2703CAAEC(v3, v1 - 160, v0);
}

uint64_t OUTLINED_FUNCTION_21_1()
{

  return sub_2705D6A04();
}

uint64_t OUTLINED_FUNCTION_28_1(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
  return 0;
}

uint64_t *OUTLINED_FUNCTION_35@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = a2;

  return __swift_allocate_boxed_opaque_existential_1Tm((v2 - 120));
}

uint64_t OUTLINED_FUNCTION_36()
{
}

uint64_t OUTLINED_FUNCTION_37()
{

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_38()
{

  return sub_2705D68B4();
}

uint64_t OUTLINED_FUNCTION_39()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_40()
{

  return sub_2705D69C4();
}

uint64_t OUTLINED_FUNCTION_41()
{
}

void *sub_2703CB8C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2705D53C4();
  v5 = type metadata accessor for CardPlatterComponentModel();
  v6 = *(a1 + *(v5 + 32));
  if (*(a1 + *(v5 + 28) + 8))
  {
    LOBYTE(v18[0]) = 1;
    LOBYTE(__src[0]) = 1;
    *__dst = v4;
    *&__dst[8] = 0;
    __dst[16] = 1;
    *&__dst[24] = v6;
    v29 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF560);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF568);
    sub_2703CCF20();
    OUTLINED_FUNCTION_5_10();
    sub_2703AFBC8(v7, &qword_2807CF568);
    sub_2705D5434();
  }

  else
  {

    v8 = sub_2705D56E4();
    sub_2705D4D34();
    __dst[0] = 1;
    v27 = 0;
    __src[0] = v4;
    __src[1] = 0;
    LOBYTE(__src[2]) = 1;
    __src[3] = v6;
    LOBYTE(__src[4]) = v8;
    __src[5] = v9;
    __src[6] = v10;
    __src[7] = v11;
    __src[8] = v12;
    LOBYTE(__src[9]) = 0;
    v18[0] = v4;
    v18[1] = 0;
    v19 = 1;
    v20 = v6;
    v21 = v8;
    v22 = v9;
    v23 = v10;
    v24 = v11;
    v25 = v12;
    v26 = 0;

    OUTLINED_FUNCTION_15_2(v13);
    sub_2703C2EFC(v18, &qword_2807CF560);
    v14 = memcpy(__dst, __src, sizeof(__dst));
    v27 = 0;
    v29 = 0;
    OUTLINED_FUNCTION_15_2(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF560);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF568);
    sub_2703CCF20();
    OUTLINED_FUNCTION_5_10();
    sub_2703AFBC8(v15, &qword_2807CF568);
    sub_2705D5434();

    sub_2703C2EFC(__src, &qword_2807CF560);
  }

  return memcpy(a2, v30, 0x4AuLL);
}

uint64_t sub_2703CBB40()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_12();
  v3 = sub_2703CCED8(v1, v2);
  OUTLINED_FUNCTION_4_9(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_2705D45F4();

  return *(v0 + 16);
}

uint64_t sub_2703CBBC8(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_12_4();
  }

  return result;
}

uint64_t sub_2703CBC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    sub_2703C3A18(a1, 0);
    if (!a6)
    {
      sub_2703C3A18(a5, 0);
      sub_2703C3A5C(a1, 0);
      v19 = 0;
      return v19 & 1;
    }

    sub_2703C3A18(a5, a6);
    goto LABEL_16;
  }

  if (!a6)
  {
    sub_2703C3A18(a1, a2);
    sub_2703C3A18(a5, 0);
    sub_2703C3A18(a1, a2);

LABEL_16:
    sub_2703C3A5C(a1, a2);
    sub_2703C3A5C(a5, a6);
    v19 = 1;
    return v19 & 1;
  }

  v16 = a1 == a5 && a2 == a6;
  if (v16 || (sub_2705D8134() & 1) != 0)
  {
    if (a3 == a7 && a4 == a8)
    {
      sub_2703C3A18(a1, a2);
      sub_2703C3A18(a5, a6);
      sub_2703C3A18(a1, a2);
      sub_2703C3A5C(a5, a6);
      v19 = 0;
    }

    else
    {
      v18 = sub_2705D8134();
      sub_2703C3A18(a1, a2);
      sub_2703C3A18(a5, a6);
      sub_2703C3A18(a1, a2);
      sub_2703C3A5C(a5, a6);
      v19 = v18 ^ 1;
    }
  }

  else
  {
    sub_2703C3A18(a1, a2);
    sub_2703C3A18(a5, a6);
    sub_2703C3A18(a1, a2);
    sub_2703C3A5C(a5, a6);
    v19 = 1;
  }

  sub_2703C3A5C(a1, a2);
  return v19 & 1;
}

BOOL sub_2703CBF20(uint64_t a1, uint64_t a2)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    v3 = sub_270463D2C(a1, a2);
  }

  return (v3 & 1) == 0;
}

uint64_t sub_2703CBF5C()
{
  OUTLINED_FUNCTION_0_12();
  sub_2703CCED8(v0, v1);
  return sub_2705D45E4();
}

uint64_t sub_2703CC004@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_12();
  v5 = sub_2703CCED8(v3, v4);
  OUTLINED_FUNCTION_4_9(v5, v6, v7, v8, v9, v10, v11, v12, v18, v1);
  sub_2705D45F4();

  v13 = v1[3];
  v14 = v1[4];
  v15 = v1[5];
  v16 = v1[6];
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v15;
  a1[3] = v16;
  return sub_2703C3A18(v13, v14);
}

void sub_2703CC0A0()
{
  OUTLINED_FUNCTION_26_1();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = OUTLINED_FUNCTION_1_11();
  sub_2703C3A18(v6, v7);
  v8 = OUTLINED_FUNCTION_1_11();
  v12 = OUTLINED_FUNCTION_8_6(v8, v9, v10, v11);
  v13 = OUTLINED_FUNCTION_1_11();
  sub_2703C3A5C(v13, v14);
  if (v12)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_6();
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_12_4();
    OUTLINED_FUNCTION_7_6();

    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    v0[3] = v2;
    v0[4] = v3;
    v0[5] = v4;
    v0[6] = v5;
    OUTLINED_FUNCTION_25_1();

    sub_2703C3A5C(v16, v17);
  }
}

uint64_t sub_2703CC184(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[3];
  v6 = a1[4];
  a1[3] = a2;
  a1[4] = a3;
  a1[5] = a4;
  a1[6] = a5;
  sub_2703C3A18(a2, a3);
  return sub_2703C3A5C(v5, v6);
}

uint64_t sub_2703CC1F0@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_12();
  v5 = sub_2703CCED8(v3, v4);
  OUTLINED_FUNCTION_4_9(v5, v6, v7, v8, v9, v10, v11, v12, v18, v1);
  sub_2705D45F4();

  v13 = v1[7];
  v14 = v1[8];
  v15 = v1[9];
  v16 = v1[10];
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v15;
  a1[3] = v16;
  return sub_2703C3A18(v13, v14);
}

void sub_2703CC28C()
{
  OUTLINED_FUNCTION_26_1();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = OUTLINED_FUNCTION_1_11();
  sub_2703C3A18(v6, v7);
  v8 = OUTLINED_FUNCTION_1_11();
  v12 = OUTLINED_FUNCTION_8_6(v8, v9, v10, v11);
  v13 = OUTLINED_FUNCTION_1_11();
  sub_2703C3A5C(v13, v14);
  if (v12)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_6();
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_12_4();
    OUTLINED_FUNCTION_7_6();

    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    v0[7] = v2;
    v0[8] = v3;
    v0[9] = v4;
    v0[10] = v5;
    OUTLINED_FUNCTION_25_1();

    sub_2703C3A5C(v16, v17);
  }
}

uint64_t sub_2703CC370(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[7];
  v6 = a1[8];
  a1[7] = a2;
  a1[8] = a3;
  a1[9] = a4;
  a1[10] = a5;
  sub_2703C3A18(a2, a3);
  return sub_2703C3A5C(v5, v6);
}

uint64_t sub_2703CC3DC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_12();
  v3 = sub_2703CCED8(v1, v2);
  OUTLINED_FUNCTION_4_9(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_2705D45F4();
}

uint64_t sub_2703CC494(uint64_t a1)
{
  if (sub_2703CBF20(*(v1 + 88), a1))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_12_4();
  }

  else
  {
    *(v1 + 88) = a1;
  }
}

uint64_t sub_2703CC570(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = a2;
}

uint64_t sub_2703CC5AC@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_12();
  v5 = sub_2703CCED8(v3, v4);
  OUTLINED_FUNCTION_4_9(v5, v6, v7, v8, v9, v10, v11, v12, v18, v1);
  sub_2705D45F4();

  v13 = v1[12];
  v14 = v1[13];
  v15 = v1[14];
  v16 = v1[15];
  *a1 = v13;
  a1[1] = v14;
  a1[2] = v15;
  a1[3] = v16;
  return sub_2703C3A18(v13, v14);
}

double sub_2703CC648@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_2703CC688(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v10[0] = *a1;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  sub_2703C3A18(v10[0], v6);
  return a5(v10);
}

void sub_2703CC6DC()
{
  OUTLINED_FUNCTION_26_1();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = OUTLINED_FUNCTION_1_11();
  sub_2703C3A18(v6, v7);
  v8 = OUTLINED_FUNCTION_1_11();
  v12 = OUTLINED_FUNCTION_8_6(v8, v9, v10, v11);
  v13 = OUTLINED_FUNCTION_1_11();
  sub_2703C3A5C(v13, v14);
  if (v12)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_11_6();
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_12_4();
    OUTLINED_FUNCTION_7_6();

    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    v0[12] = v2;
    v0[13] = v3;
    v0[14] = v4;
    v0[15] = v5;
    OUTLINED_FUNCTION_25_1();

    sub_2703C3A5C(v16, v17);
  }
}

uint64_t sub_2703CC7C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[12];
  v6 = a1[13];
  a1[12] = a2;
  a1[13] = a3;
  a1[14] = a4;
  a1[15] = a5;
  sub_2703C3A18(a2, a3);
  return sub_2703C3A5C(v5, v6);
}

uint64_t sub_2703CC82C()
{
  if (sub_2703CBB40())
  {

    return MEMORY[0x282133490]();
  }

  else
  {

    return sub_2705D5D54();
  }
}

uint64_t sub_2703CC870()
{
  if (sub_2703CBB40())
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x656C63726963;
  }
}

uint64_t sub_2703CC8BC()
{
  if (sub_2703CBB40())
  {
    if (qword_2807CE790 != -1)
    {
      OUTLINED_FUNCTION_6_8();
    }
  }

  else
  {

    return sub_2705D5D84();
  }
}

uint64_t sub_2703CC928()
{
  if (sub_2703CBB40())
  {
    if (qword_2807CE790 != -1)
    {
      OUTLINED_FUNCTION_6_8();
    }
  }

  else if (qword_2807CE7A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2703CC9E4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 120) = 0;
  *(v4 + 104) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 24) = 0u;
  sub_2705D4624();
  *(v4 + 16) = a1;
  sub_2703CC0A0();
  sub_2703CC28C();
  sub_2703CC494(a4);
  sub_2703CC6DC();
  return v4;
}

double sub_2703CCA9C()
{
  v0 = sub_2703CC3DC();
  if (!v0)
  {
    return 16.0;
  }

  v1 = *(v0 + 16);

  result = 0.0;
  if (!v1)
  {
    return 16.0;
  }

  return result;
}

uint64_t *sub_2703CCAD4()
{
  sub_2703C3A5C(v0[3], v0[4]);
  sub_2703C3A5C(v0[7], v0[8]);

  sub_2703C3A5C(v0[12], v0[13]);
  v1 = OBJC_IVAR____TtC19UnifiedMessagingKit14CardViewConfig___observationRegistrar;
  sub_2705D4634();
  OUTLINED_FUNCTION_14();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_2703CCB58()
{
  sub_2703CCAD4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for CardViewConfig()
{
  result = qword_2807CF528;
  if (!qword_2807CF528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2703CCC04()
{
  result = sub_2705D4634();
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

uint64_t sub_2703CCCB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2703CBB40();
  *a1 = result & 1;
  return result;
}

unint64_t sub_2703CCD80()
{
  result = qword_2807CF540;
  if (!qword_2807CF540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF540);
  }

  return result;
}

unint64_t sub_2703CCDD8()
{
  result = qword_2807CF548;
  if (!qword_2807CF548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF548);
  }

  return result;
}

uint64_t sub_2703CCED8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2703CCF20()
{
  result = qword_2807CF570;
  if (!qword_2807CF570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF560);
    sub_2703AFBC8(&qword_2807CF578, &qword_2807CF568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF570);
  }

  return result;
}

unint64_t sub_2703CCFEC()
{
  result = qword_2807CF580;
  if (!qword_2807CF580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF588);
    sub_2703CCF20();
    sub_2703AFBC8(&qword_2807CF578, &qword_2807CF568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF580);
  }

  return result;
}

uint64_t sub_2703CD0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2705D53D4();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF590);
  sub_2703CD1DC(a1, (a2 + *(v4 + 44)));
  sub_2705D56B4();
  sub_2705D4D34();
  OUTLINED_FUNCTION_13_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF598);
  OUTLINED_FUNCTION_10_5(v5);
  sub_2705D56E4();
  sub_2703CCA9C();
  sub_2705D4D34();
  OUTLINED_FUNCTION_13_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5A0);
  OUTLINED_FUNCTION_10_5(v6);
  v7 = sub_2705D60A4();
  v9 = v8;
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5A8) + 36);
  sub_2703CE184(v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5B0);
  v12 = (v10 + *(result + 36));
  *v12 = v7;
  v12[1] = v9;
  return result;
}

uint64_t sub_2703CD1DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v117 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5F0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v119 = v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v118 = v106 - v6;
  v7 = sub_2705D5314();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5F8);
  MEMORY[0x28223BE20](v115);
  v110 = v106 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF600);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v116 = v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v122 = v106 - v14;
  v123 = sub_2705D52B4();
  v127 = 1;
  sub_2703CDB50(v125);
  memcpy(v128, v125, sizeof(v128));
  memcpy(v129, v125, 0xD0uLL);
  sub_2703CF590(v128, v124, &qword_2807CF608);
  sub_2703C2EFC(v129, &qword_2807CF608);
  memcpy(&v126[7], v128, 0xD0uLL);
  v121 = v127;
  sub_2703CC1F0(v125);
  v15 = v125[1];
  v120 = a1;
  if (v125[1])
  {
    v16 = v125[0];
    v125[0] = v125[2];
    v125[1] = v125[3];
    sub_2703C2F54();

    v17 = sub_2705D5944();
    v19 = v18;
    v109 = v9;
    v21 = v20;
    sub_2703C3A5C(v16, v15);
    sub_2705D58B4();
    v22 = sub_2705D5914();
    v24 = v23;
    LOBYTE(v16) = v25;

    sub_2703CEDB0(v17, v19, v21 & 1);

    sub_2705D5814();
    v26 = sub_2705D58E4();
    v28 = v27;
    v30 = v29;
    v114 = v31;
    sub_2703CEDB0(v22, v24, v16 & 1);

    v125[0] = sub_2705D5D54();
    v32 = sub_2705D58F4();
    v34 = v33;
    LOBYTE(v24) = v35;
    v37 = v36;
    sub_2703CEDB0(v26, v28, v30 & 1);

    v113 = v34;
    v114 = v32;
    v111 = v24 & 1;
    sub_2703CED5C(v32, v34, v24 & 1);
    v112 = v37;
  }

  else
  {
    v113 = 0;
    v114 = 0;
    v111 = 0;
    v112 = 0;
  }

  sub_2703CC5AC(v125);
  v38 = v125[1];
  if (v125[1])
  {
    v39 = v125[0];
    sub_2705D5DF4();
    v40 = sub_2705D5954();
    v109 = v41;
    v107 = v42;
    v106[1] = v43;
    sub_2705D5304();
    sub_2705D52F4();
    sub_2705D52E4();
    sub_2703C3A5C(v39, v38);
    sub_2705D52F4();
    sub_2705D5324();
    v44 = sub_2705D5924();
    v46 = v45;
    v48 = v47;
    v49 = v109;
    v50 = sub_2705D5904();
    v52 = v51;
    v54 = v53;
    v108 = v55;
    sub_2703CEDB0(v44, v46, v48 & 1);

    sub_2703CEDB0(v40, v49, v107 & 1);

    sub_2705D58A4();
    v56 = sub_2705D5914();
    v58 = v57;
    v60 = v59;

    sub_2703CEDB0(v50, v52, v54 & 1);

    sub_2705D57C4();
    v61 = sub_2705D58E4();
    v63 = v62;
    v65 = v64;
    sub_2703CEDB0(v56, v58, v60 & 1);

    v124[0] = sub_2703CC82C();
    v66 = sub_2705D58F4();
    v108 = v67;
    v109 = v66;
    LOBYTE(v49) = v68;
    v70 = v69;
    sub_2703CEDB0(v61, v63, v65 & 1);

    v71 = sub_2705D56C4();
    sub_2705D4D34();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    LOBYTE(v61) = v49 & 1;
    LOBYTE(v124[0]) = v49 & 1;
    v127 = 0;
    LOBYTE(v49) = sub_2705D56C4();
    v80 = v115;
    v81 = v110;
    v82 = &v110[*(v115 + 36)];
    v83 = *(sub_2705D5064() + 20);
    v84 = *MEMORY[0x277CE0118];
    v85 = sub_2705D5344();
    (*(*(v85 - 8) + 104))(&v82[v83], v84, v85);
    __asm { FMOV            V0.2D, #4.0 }

    *v82 = _Q0;
    *&v82[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF620) + 36)] = 256;
    v91 = v108;
    *v81 = v109;
    *(v81 + 8) = v91;
    *(v81 + 16) = v61;
    *(v81 + 24) = v70;
    *(v81 + 32) = v71;
    *(v81 + 40) = v73;
    *(v81 + 48) = v75;
    *(v81 + 56) = v77;
    *(v81 + 64) = v79;
    *(v81 + 72) = 0;
    *(v81 + 73) = v49;
    v92 = v122;
    sub_2703CF3E8(v81, v122, &qword_2807CF5F8);
    v93 = v92;
    v94 = 0;
    v95 = v80;
  }

  else
  {
    v92 = v122;
    v93 = v122;
    v94 = 1;
    v95 = v115;
  }

  __swift_storeEnumTagSinglePayload(v93, v94, 1, v95);
  v96 = v118;
  sub_2703CDF78();
  v97 = v116;
  sub_2703CF590(v92, v116, &qword_2807CF600);
  v98 = v119;
  sub_2703CF590(v96, v119, &qword_2807CF5F0);
  v124[0] = v123;
  v124[1] = 0;
  LOBYTE(v124[2]) = v121;
  memcpy(&v124[2] + 1, v126, 0xD7uLL);
  v99 = v117;
  memcpy(v117, v124, 0xE8uLL);
  v101 = v113;
  v100 = v114;
  v99[29] = v114;
  v99[30] = v101;
  v103 = v111;
  v102 = v112;
  v99[31] = v111;
  v99[32] = v102;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF610);
  sub_2703CF590(v97, v99 + *(v104 + 64), &qword_2807CF600);
  sub_2703CF590(v98, v99 + *(v104 + 80), &qword_2807CF5F0);
  sub_2703CF590(v124, v125, &qword_2807CF618);
  sub_2703CED18(v100, v101, v103, v102);
  sub_2703CED6C(v100, v101, v103, v102);
  sub_2703C2EFC(v96, &qword_2807CF5F0);
  sub_2703C2EFC(v122, &qword_2807CF600);
  sub_2703C2EFC(v98, &qword_2807CF5F0);
  sub_2703C2EFC(v97, &qword_2807CF600);
  sub_2703CED6C(v100, v101, v103, v102);
  v125[0] = v123;
  v125[1] = 0;
  LOBYTE(v125[2]) = v121;
  memcpy(&v125[2] + 1, v126, 0xD7uLL);
  return sub_2703C2EFC(v125, &qword_2807CF618);
}

uint64_t sub_2703CDB50@<X0>(uint64_t a1@<X8>)
{
  sub_2703CC004(&v56);
  v1 = v57;
  if (v57)
  {
    v2 = v56;
    *(&v54[0] + 1) = v59;
    sub_2703C2F54();

    v3 = sub_2705D5944();
    v5 = v4;
    v7 = v6;
    sub_2703C3A5C(v2, v1);
    sub_2705D5784();
    v8 = sub_2705D5914();
    v10 = v9;
    LOBYTE(v2) = v11;

    sub_2703CEDB0(v3, v5, v7 & 1);

    sub_2705D5834();
    v12 = sub_2705D58E4();
    v14 = v13;
    v16 = v15;
    sub_2703CEDB0(v8, v10, v2 & 1);

    *&v54[0] = sub_2705D5D54();
    v1 = sub_2705D58F4();
    v18 = v17;
    LOBYTE(v2) = v19;
    v21 = v20;
    sub_2703CEDB0(v12, v14, v16 & 1);

    LOBYTE(v31) = sub_2705D56D4();
    sub_2705D4D34();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    LOBYTE(v54[0]) = v2 & 1;
    LOBYTE(v45[0]) = 0;
    v30 = v2 & 1;
    v31 = v31;
  }

  else
  {
    v18 = 0;
    v21 = 0;
    v31 = 0;
    v30 = 0;
    v23 = 0;
    v25 = 0;
    v27 = 0;
    v29 = 0;
  }

  sub_2703CC870();
  v32 = sub_2705D5DF4();
  v33 = sub_2705D56D4();
  sub_2705D4D34();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = sub_2703CC8BC();
  LOBYTE(v56) = 0;
  sub_2705D60A4();
  sub_2705D4E64();
  __src[0] = v1;
  __src[1] = v18;
  __src[2] = v30;
  __src[3] = v21;
  __src[4] = v31;
  __src[5] = v23;
  __src[6] = v25;
  __src[7] = v27;
  __src[8] = v29;
  LOBYTE(__src[9]) = 0;
  memcpy(__dst, __src, 0x49uLL);
  v47[120] = 0;
  *&v54[0] = v32;
  BYTE8(v54[0]) = v33;
  *(v54 + 9) = *v52;
  HIDWORD(v54[0]) = *&v52[3];
  *&v54[1] = v35;
  *(&v54[1] + 1) = v37;
  *&v54[2] = v39;
  *(&v54[2] + 1) = v41;
  LOBYTE(v54[3]) = 0;
  *(&v54[3] + 1) = *v51;
  DWORD1(v54[3]) = *&v51[3];
  *(&v54[3] + 1) = v42;
  v54[5] = v49;
  v54[6] = v50;
  v54[4] = v48;
  memcpy(&v47[7], v54, 0x70uLL);
  memcpy(a1, __dst, 0x50uLL);
  *(a1 + 80) = 0x4024000000000000;
  *(a1 + 88) = 0;
  memcpy((a1 + 89), v47, 0x77uLL);
  v56 = v32;
  LOBYTE(v57) = v33;
  *(&v57 + 1) = *v52;
  HIDWORD(v57) = *&v52[3];
  v58 = v35;
  v59 = v37;
  v60 = v39;
  v61 = v41;
  v62 = 0;
  *v63 = *v51;
  *&v63[3] = *&v51[3];
  v64 = v42;
  v66 = v49;
  v67 = v50;
  v65 = v48;
  sub_2703CF590(__src, v45, &qword_2807CF6D0);
  sub_2703CF590(v54, v45, &qword_2807CF6D8);
  sub_2703C2EFC(&v56, &qword_2807CF6D8);
  v45[0] = v1;
  v45[1] = v18;
  v45[2] = v30;
  v45[3] = v21;
  v45[4] = v31;
  v45[5] = v23;
  v45[6] = v25;
  v45[7] = v27;
  v45[8] = v29;
  v46 = 0;
  return sub_2703C2EFC(v45, &qword_2807CF6D0);
}

void sub_2703CDF78()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF628);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v5);
  v7 = v16 - v6;
  v8 = sub_2703CC3DC();
  if (v8)
  {
    v9 = v8;
    *v7 = sub_2705D53D4();
    *(v7 + 1) = 0;
    v7[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF630);
    v16[1] = sub_2703CEDC0(v9);
    swift_getKeyPath();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF638);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF640);
    sub_2703AFBC8(&qword_2807CF648, &qword_2807CF638);
    sub_2703CEFF8();
    sub_2705D5F74();
    sub_2703CF3E8(v7, v3, &qword_2807CF628);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
    OUTLINED_FUNCTION_25_1();
  }

  else
  {
    OUTLINED_FUNCTION_25_1();

    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }
}

uint64_t sub_2703CE184@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2705D5064();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33[-v7];
  v9 = *(v3 + 28);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_2705D5344();
  (*(*(v11 - 8) + 104))(&v5[v9], v10, v11);
  __asm { FMOV            V0.2D, #20.0 }

  *v5 = _Q0;
  v17 = sub_2703CC928();
  sub_2703CBB40();
  sub_2705D4DC4();
  sub_2703CEC0C(v5, v8);
  v18 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5C0) + 36)];
  v19 = v34;
  *v18 = *&v33[8];
  *(v18 + 1) = v19;
  *(v18 + 4) = v35;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5C8);
  *&v8[*(v20 + 52)] = v17;
  *&v8[*(v20 + 56)] = 256;
  v21 = sub_2705D60A4();
  v23 = v22;
  sub_2703CEC70(v5);
  v24 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5D0) + 36)];
  *v24 = v21;
  v24[1] = v23;
  if (qword_2807CE780 != -1)
  {
    swift_once();
  }

  v25 = qword_2807CFC60;
  sub_2703CEC0C(v8, a1);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5D8);
  *(a1 + *(v26 + 52)) = v25;
  *(a1 + *(v26 + 56)) = 256;
  v27 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5E0) + 36);
  sub_2703CF590(v8, v27, &qword_2807CF5B8);

  v28 = sub_2705D60A4();
  v30 = v29;
  sub_2703C2EFC(v8, &qword_2807CF5B8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF5E8);
  v32 = (v27 + *(result + 36));
  *v32 = v28;
  v32[1] = v30;
  return result;
}

void *sub_2703CE468@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a3;
  v5 = *a1;
  v6 = a1[6];
  if (!*a1)
  {
    v60 = a3;
    __dst[1] = a1[6];
    sub_2703C2F54();
    v59 = a2;

    v30 = sub_2705D5944();
    v32 = v31;
    v34 = v33;
    sub_2705D58B4();
    v35 = sub_2705D5914();
    v37 = v36;
    v39 = v38;

    sub_2703CEDB0(v30, v32, v34 & 1);

    __dst[0] = sub_2705D5D84();
    v40 = sub_2705D58F4();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    sub_2703CEDB0(v35, v37, v39 & 1);

    if (*(v59 + 16) == 1 || (sub_2703CBB40() & 1) == 0)
    {
      v47 = sub_2705D56E4();
      sub_2705D4D34();
      v67[0] = v44 & 1;
      __src[0] = v40;
      __src[1] = v42;
      LOBYTE(__src[2]) = v44 & 1;
      __src[3] = v46;
      LOBYTE(__src[4]) = v47;
      __src[5] = v48;
      __src[6] = v49;
      __src[7] = v50;
      __src[8] = v51;
      LOBYTE(__src[9]) = 0;
      v65[0] = v40;
      v65[1] = v42;
      LOBYTE(v65[2]) = v44 & 1;
      v65[3] = v46;
      LOBYTE(v65[4]) = v47;
      v65[5] = v48;
      v65[6] = v49;
      v65[7] = v50;
      v65[8] = v51;
      LOBYTE(v65[9]) = 0;
      sub_2703CED5C(v40, v42, v44 & 1);

      sub_2703CF590(__src, __dst, &qword_2807CF6A0);
      sub_2703C2EFC(v65, &qword_2807CF6A0);
      memcpy(__dst, __src, 0x49uLL);
      v61[0] = 0;
      BYTE1(__dst[9]) = 0;
      sub_2703CF590(__src, v67, &qword_2807CF6A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF6A0);
      sub_2703CF2D8();
      sub_2705D5434();
      sub_2703CEDB0(v40, v42, v44 & 1);

      sub_2703C2EFC(__src, &qword_2807CF6A0);
    }

    else
    {
      LOBYTE(v65[0]) = v44 & 1;
      LOBYTE(__src[0]) = 1;
      __dst[0] = v40;
      __dst[1] = v42;
      LOBYTE(__dst[2]) = v44 & 1;
      __dst[3] = v46;
      BYTE1(__dst[9]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF6A0);
      sub_2703CF2D8();
      sub_2705D5434();
    }

    memcpy(v61, v62, 0x4AuLL);
    v52 = sub_2703CC9BC();
    v54 = v53;
    KeyPath = swift_getKeyPath();
    v54 &= 1u;
    v62[96] = v54;
    sub_2705D60B4();
    sub_2705D5094();
    memcpy(&v63[7], v67, 0x70uLL);
    memcpy(__src, v61, 0x50uLL);
    __src[10] = KeyPath;
    __src[11] = v52;
    LOBYTE(__src[12]) = v54;
    memcpy(&__src[12] + 1, v63, 0x77uLL);
    sub_2703CF47C(__src);
    goto LABEL_13;
  }

  if (sub_2703CBB40())
  {
    v60 = v4;
    __dst[1] = v6;
    sub_2703C2F54();

    v7 = sub_2705D5944();
    v9 = v8;
    v11 = v10;
    sub_2705D58B4();
    v58 = a2;
    v12 = sub_2705D5914();
    v14 = v13;
    v16 = v15;

    sub_2703CEDB0(v7, v9, v11 & 1);

    __dst[0] = sub_2705D5D84();
    v17 = sub_2705D58F4();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_2703CEDB0(v12, v14, v16 & 1);

    if (v5 == *(v58 + 16) - 1)
    {
      v24 = sub_2705D56E4();
      sub_2705D4D34();
      v25 = v21 & 1;
      v67[0] = v25;
      __src[0] = v17;
      __src[1] = v19;
      LOBYTE(__src[2]) = v25;
      __src[3] = v23;
      LOBYTE(__src[4]) = v24;
      __src[5] = v26;
      __src[6] = v27;
      __src[7] = v28;
      __src[8] = v29;
      LOBYTE(__src[9]) = 0;
      v65[0] = v17;
      v65[1] = v19;
      LOBYTE(v65[2]) = v25;
      v65[3] = v23;
      LOBYTE(v65[4]) = v24;
      v65[5] = v26;
      v65[6] = v27;
      v65[7] = v28;
      v65[8] = v29;
      LOBYTE(v65[9]) = 0;
      sub_2703CED5C(v17, v19, v25);

      sub_2703CF590(__src, __dst, &qword_2807CF6A0);
      sub_2703C2EFC(v65, &qword_2807CF6A0);
      memcpy(__dst, __src, 0x49uLL);
      v61[0] = 0;
      BYTE1(__dst[9]) = 0;
      sub_2703CF590(__src, v67, &qword_2807CF6A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF6A0);
      sub_2703CF2D8();
      sub_2705D5434();
      sub_2703CEDB0(v17, v19, v25);

      sub_2703C2EFC(__src, &qword_2807CF6A0);
    }

    else
    {
      LOBYTE(v65[0]) = v21 & 1;
      LOBYTE(__src[0]) = 1;
      __dst[0] = v17;
      __dst[1] = v19;
      LOBYTE(__dst[2]) = v21 & 1;
      __dst[3] = v23;
      BYTE1(__dst[9]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF6A0);
      sub_2703CF2D8();
      sub_2705D5434();
    }

    memcpy(v66, v67, 0x4AuLL);
    sub_2705D60B4();
    sub_2705D5094();
    memcpy(__src, v66, 0xC0uLL);
    sub_2703CF468(__src);
LABEL_13:
    memcpy(v65, __src, 0xD9uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF6C0);
    sub_2703CF108();
    sub_2703CF35C();
    sub_2705D5434();
    memcpy(v65, __dst, 0xD9uLL);
    CGSizeMake(v65, v56);
    memcpy(__dst, v65, 0xD9uLL);
    v4 = v60;
    return memcpy(v4, __dst, 0xD9uLL);
  }

  sub_2703CF438(__dst);
  return memcpy(v4, __dst, 0xD9uLL);
}

uint64_t sub_2703CEC0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2705D5064();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2703CEC70(uint64_t a1)
{
  v2 = sub_2705D5064();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2703CECCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2703CC3DC();
  *a1 = result;
  return result;
}

uint64_t sub_2703CED18(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2703CED5C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2703CED5C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2703CED6C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2703CEDB0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2703CEDB0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2703CEDC0(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v22 = *(result + 16);
  v4 = (MEMORY[0x277D84F90] + 32);
  for (i = (result + 72); ; i += 6)
  {
    if (v22 == v2)
    {
      v19 = v3[3];
      if (v19 >= 2)
      {
        v20 = v19 >> 1;
        v18 = __OFSUB__(v20, v1);
        v21 = v20 - v1;
        if (v18)
        {
          goto LABEL_27;
        }

        v3[2] = v21;
      }

      return v3;
    }

    v7 = *(i - 5);
    v6 = *(i - 4);
    v8 = *(i - 2);
    v9 = *i;
    v23 = *(i - 1);
    v24 = *(i - 3);
    if (v1)
    {

      v10 = v3;
    }

    else
    {
      v11 = v3[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_26;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      v13 = v12 <= 1 ? 1 : v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF6C8);
      v10 = swift_allocObject();
      v14 = (_swift_stdlib_malloc_size(v10) - 32) / 56;
      v10[2] = v13;
      v10[3] = 2 * v14;
      v15 = v10 + 4;
      v16 = v3[3] >> 1;
      v4 = &v10[7 * v16 + 4];
      v1 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;
      if (v3[2])
      {
        if (v10 != v3 || v15 >= &v3[7 * v16 + 4])
        {
          memmove(v15, v3 + 4, 56 * v16);
        }

        v3[2] = 0;
      }

      else
      {
      }
    }

    v18 = __OFSUB__(v1--, 1);
    if (v18)
    {
      break;
    }

    *v4 = v2;
    v4[1] = v7;
    v4[2] = v6;
    v4[3] = v24;
    v4[4] = v8;
    v4[5] = v23;
    v4[6] = v9;
    v4 += 7;
    ++v2;
    v3 = v10;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2703CEFB0()
{

  return swift_deallocObject();
}

unint64_t sub_2703CEFF8()
{
  result = qword_2807CF650;
  if (!qword_2807CF650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF640);
    sub_2703CF07C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF650);
  }

  return result;
}

unint64_t sub_2703CF07C()
{
  result = qword_2807CF658;
  if (!qword_2807CF658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF660);
    sub_2703CF108();
    sub_2703CF35C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF658);
  }

  return result;
}

unint64_t sub_2703CF108()
{
  result = qword_2807CF668;
  if (!qword_2807CF668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF670);
    sub_2703CF194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF668);
  }

  return result;
}

unint64_t sub_2703CF194()
{
  result = qword_2807CF678;
  if (!qword_2807CF678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF680);
    sub_2703CF24C();
    sub_2703AFBC8(&qword_2807CF6A8, &qword_2807CF6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF678);
  }

  return result;
}

unint64_t sub_2703CF24C()
{
  result = qword_2807CF688;
  if (!qword_2807CF688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF690);
    sub_2703CF2D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF688);
  }

  return result;
}

unint64_t sub_2703CF2D8()
{
  result = qword_2807CF698;
  if (!qword_2807CF698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF698);
  }

  return result;
}

unint64_t sub_2703CF35C()
{
  result = qword_2807CF6B8;
  if (!qword_2807CF6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF6C0);
    sub_2703CF24C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF6B8);
  }

  return result;
}

uint64_t sub_2703CF3E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_14_4(a1, a2, a3);
  OUTLINED_FUNCTION_14();
  (*(v5 + 32))(v3, v4);
  return v3;
}

uint64_t sub_2703CF590(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_14_4(a1, a2, a3);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(v3, v4);
  return v3;
}

unint64_t sub_2703CF694()
{
  result = qword_2807CF6E0;
  if (!qword_2807CF6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF5A8);
    sub_2703CF74C();
    sub_2703AFBC8(&qword_2807CF708, &qword_2807CF5B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF6E0);
  }

  return result;
}

unint64_t sub_2703CF74C()
{
  result = qword_2807CF6E8;
  if (!qword_2807CF6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF5A0);
    sub_2703CF7D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF6E8);
  }

  return result;
}

unint64_t sub_2703CF7D8()
{
  result = qword_2807CF6F0;
  if (!qword_2807CF6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF598);
    sub_2703AFBC8(&qword_2807CF6F8, &qword_2807CF700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF6F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_6()
{

  return sub_2703C3A5C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_8_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_2703CBC68(a1, a2, a3, a4, v4, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_10_5(uint64_t result)
{
  v7 = v1 + *(result + 36);
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_4()
{

  return sub_2703CBF5C();
}

uint64_t OUTLINED_FUNCTION_14_4(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

uint64_t OUTLINED_FUNCTION_15_2(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_2703CF590(va, v2 - 176, v1);
}

double sub_2703CFA04@<D0>(uint64_t a1@<X8>)
{
  sub_2703CAAEC(v1, v5, &qword_2807CF140);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_2703CFA5C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for CardPlatterComponentModel();
  sub_2703CAAEC(v1 + *(v6 + 24), v5, &qword_2807CF130);
  return sub_2703C1E5C(v5, a1);
}

uint64_t sub_2703CFB48@<X0>(void *__src@<X6>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, char a7@<W5>, uint64_t a8@<X8>)
{
  memcpy(__dst, __src, 0x280uLL);
  v31 = BYTE1(__dst[70]);
  v43 = __dst[76];
  v44 = __dst[77];
  v45 = __dst[78];
  v46 = __dst[79];
  v42[0] = __dst[72];
  v42[1] = __dst[73];
  v42[2] = __dst[74];
  v42[3] = __dst[75];
  v10 = __dst[60];
  if (!__dst[60])
  {
    sub_2703C3A18(__dst[76], __dst[77]);
    OUTLINED_FUNCTION_0_13();
    v14 = 0;
LABEL_12:
    v22 = __dst[48];
    v23 = __dst[49];
    type metadata accessor for CardViewConfig();
    swift_allocObject();
    sub_2703C3A18(v22, v23);
    v24 = sub_2703CC9E4(v31 & 1, &v43, v42, v14);
    sub_2703D03B4(__dst);
    v43 = a2;
    v44 = a3;
    sub_2705D7CF4();
    v25 = type metadata accessor for CardPlatterComponentModel();
    *(a8 + 56) = 0u;
    *(a8 + 72) = 0;
    *(a8 + 40) = 0u;
    v26 = v25[6];
    v27 = sub_2705D6A54();
    __swift_storeEnumTagSinglePayload(a8 + v26, 1, 1, v27);
    v28 = a8 + v25[7];
    sub_2703B4B64(a4, a8 + 40);
    sub_2703D0408(a8 + v26);
    result = sub_2703C1E5C(a5, a8 + v26);
    *v28 = a6;
    *(v28 + 8) = a7 & 1;
    *(a8 + v25[8]) = v24;
    return result;
  }

  v11 = *(__dst[60] + 16);
  if (!v11)
  {
    sub_2703C3A18(__dst[76], __dst[77]);
    OUTLINED_FUNCTION_0_13();
    v14 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v29 = a6;
  v30 = a7;
  sub_2703C3A18(__dst[76], __dst[77]);
  OUTLINED_FUNCTION_0_13();
  v41 = MEMORY[0x277D84F90];

  result = sub_2704ADCBC(0, v11, 0);
  v13 = 0;
  v14 = v41;
  v35 = v10;
  v36 = *(v10 + 16);
  v15 = (v10 + 56);
  while (v36 != v13)
  {
    if (v13 >= *(v10 + 16))
    {
      goto LABEL_14;
    }

    v16 = *(v15 - 2);
    v17 = *v15;
    v39 = *(v15 - 1);
    v40 = *(v15 - 3);

    v18 = sub_2705D80A4();
    MEMORY[0x2743A3A90](v18);

    MEMORY[0x2743A3A90](0x2D6C69617465642DLL, 0xE800000000000000);

    v20 = *(v41 + 16);
    v19 = *(v41 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_2704ADCBC(v19 > 1, v20 + 1, 1);
    }

    *(v41 + 16) = v20 + 1;
    v21 = (v41 + 48 * v20);
    v21[4] = a2;
    v21[5] = a3;
    v21[6] = v40;
    v21[7] = v16;
    v21[8] = v39;
    v21[9] = v17;
    ++v13;
    v15 += 4;
    v10 = v35;
    if (v11 == v13)
    {

      a7 = v30;
      a6 = v29;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_2703CFEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CardPlatterComponentModel();
  sub_2703CBBC8(a1);

  return sub_2703CFF94(v2, a2);
}

uint64_t type metadata accessor for CardPlatterComponentModel()
{
  result = qword_2807CF710;
  if (!qword_2807CF710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2703CFF94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardPlatterComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2703D000C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2703D00B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_2703D0140()
{
  sub_2703C1B58();
  if (v0 <= 0x3F)
  {
    sub_2703D0264(319, &qword_2807CF198, &qword_2807D65D0, &unk_2705DC050, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2703D0264(319, &qword_2807CF188, &qword_2807CF190, &unk_2705DEE80, MEMORY[0x277D21D28]);
      if (v2 <= 0x3F)
      {
        sub_2703D02C8();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CardViewConfig();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2703D0264(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2703D02C8()
{
  if (!qword_2807CF720)
  {
    v0 = sub_2705D7C14();
    if (!v1)
    {
      atomic_store(v0, &qword_2807CF720);
    }
  }
}

uint64_t sub_2703D036C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2703D0408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_13()
{

  return sub_2703C3A18(v1, v0);
}

uint64_t sub_2703D04A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_2703D0528()
{
  OUTLINED_FUNCTION_18_2();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF770);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = v8 - v6;
  OUTLINED_FUNCTION_1_12();
  sub_2703D22A0();
  OUTLINED_FUNCTION_8_7();
  sub_2705D84C4();
  v8[1] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF780);
  sub_2703D2348(&qword_2807CF788, sub_2703D22F4);
  sub_2705D8084();
  (*(v4 + 8))(v7, v2);
  OUTLINED_FUNCTION_17_3();
}

void sub_2703D0688()
{
  OUTLINED_FUNCTION_18_2();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF798);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_30_1();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2703D22A0();
  OUTLINED_FUNCTION_8_7();
  sub_2705D8484();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF780);
    sub_2703D2348(&qword_2807CF7A0, sub_2703D23C0);
    sub_2705D7FA4();
    v4 = OUTLINED_FUNCTION_9_6();
    v5(v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_17_3();
}

uint64_t sub_2703D0810(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_2703D08A0()
{
  OUTLINED_FUNCTION_18_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF730);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_1_12();
  sub_2703D1C38();
  OUTLINED_FUNCTION_8_7();
  sub_2705D84C4();
  sub_2703D1C8C();
  sub_2705D8084();
  v1 = OUTLINED_FUNCTION_9_6();
  v2(v1);
  OUTLINED_FUNCTION_17_3();
}

void sub_2703D09AC()
{
  OUTLINED_FUNCTION_18_2();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF748);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_30_1();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2703D1C38();
  OUTLINED_FUNCTION_8_7();
  sub_2705D8484();
  if (!v0)
  {
    sub_2703D1CE0();
    sub_2705D7FA4();
    v4 = OUTLINED_FUNCTION_9_6();
    v5(v4);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_17_3();
}

uint64_t sub_2703D0AF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465686369726E65 && a2 == 0xEC00000061746144;
  if (v4 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000270613640 == a2;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2705D8134();

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

uint64_t sub_2703D0C14(char a1)
{
  if (!a1)
  {
    return 0x6465686369726E65;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x6567617373656DLL;
}

void sub_2703D0C78()
{
  OUTLINED_FUNCTION_18_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF878);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_1_12();
  sub_2703D2C04();
  OUTLINED_FUNCTION_8_7();
  sub_2705D84C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF300);
  sub_2703D2CE4(&qword_2807CF880);
  OUTLINED_FUNCTION_7_7();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF860);
    sub_2703D2D50(&qword_2807CF888, sub_2703C39C4);
    OUTLINED_FUNCTION_7_7();
    sub_2703D2DD4();
    sub_2705D8024();
  }

  v2 = OUTLINED_FUNCTION_12_5();
  v3(v2);
  OUTLINED_FUNCTION_17_3();
}

void sub_2703D0E68()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF848);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2703D2C04();
  sub_2705D8484();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF300);
    sub_2703D2CE4(&qword_2807CF858);
    OUTLINED_FUNCTION_6_9();
    v6 = v19[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF860);
    LOBYTE(v15) = 1;
    sub_2703D2D50(&qword_2807CF868, sub_2703C3FAC);
    OUTLINED_FUNCTION_6_9();
    v7 = v19[0];
    sub_2703D2C58();
    sub_2705D7F44();
    v8 = OUTLINED_FUNCTION_4_10();
    v9(v8);
    v10 = v23;
    v11 = v24;
    v12 = v25;
    *&v15 = v6;
    *(&v15 + 1) = v7;
    v16 = v23;
    v17 = v24;
    v18 = v25;
    sub_2703D2CAC(&v15, v19);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v19[0] = v6;
    v19[1] = v7;
    v20 = v10;
    v21 = v11;
    v22 = v12;
    sub_2703D292C(v19);
    v13 = v16;
    *v4 = v15;
    v4[1] = v13;
    v14 = v18;
    v4[2] = v17;
    v4[3] = v14;
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2703D1164(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6974656B72616DLL && a2 == 0xED00006174614467)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2705D8134();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_2703D1208()
{
  OUTLINED_FUNCTION_18_2();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF820);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_31_0();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_2703D2830();
  sub_2705D84C4();
  v5 = v1[1];
  v10 = *v1;
  v11 = v5;
  v6 = v1[3];
  v12 = v1[2];
  v13 = v6;
  sub_2703D2524(v1, v9);
  sub_2703D28D8();
  OUTLINED_FUNCTION_6_1();
  sub_2705D8084();
  v9[0] = v10;
  v9[1] = v11;
  v9[2] = v12;
  v9[3] = v13;
  sub_2703D292C(v9);
  v7 = OUTLINED_FUNCTION_12_5();
  v8(v7);
  OUTLINED_FUNCTION_17_3();
}

void sub_2703D135C()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF808);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2703D2830();
  sub_2705D8484();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_2703D2884();
    sub_2705D7FA4();
    (*(v7 + 8))(v10, v5);
    v13 = v17;
    v14 = v18;
    v15 = v19;
    v16 = v20;
    __swift_destroy_boxed_opaque_existential_1(v2);
    v11 = v14;
    *v4 = v13;
    v4[1] = v11;
    v12 = v16;
    v4[2] = v15;
    v4[3] = v12;
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2703D14E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2705D8134() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_2705D8134() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1635018093 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2705D8134();

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

uint64_t sub_2703D15F8(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 1635018093;
}

void sub_2703D1634()
{
  OUTLINED_FUNCTION_10_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF7C8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_1_12();
  sub_2703D2414();
  OUTLINED_FUNCTION_8_7();
  sub_2705D84C4();
  LOBYTE(v13) = 0;
  OUTLINED_FUNCTION_6_1();
  sub_2705D8034();
  if (v1)
  {
    v3 = OUTLINED_FUNCTION_12_5();
    v4(v3);
  }

  else
  {
    LOBYTE(v13) = 1;
    OUTLINED_FUNCTION_6_1();
    sub_2705D8034();
    v5 = v0[3];
    v17[0] = v0[2];
    v17[1] = v5;
    v6 = v0[5];
    v8 = v0[2];
    v7 = v0[3];
    v17[2] = v0[4];
    v17[3] = v6;
    v13 = v8;
    v14 = v7;
    v9 = v0[5];
    v15 = v0[4];
    v16 = v9;
    sub_2703D2524(v17, v12);
    sub_2703D255C();
    OUTLINED_FUNCTION_6_1();
    sub_2705D8084();
    v12[0] = v13;
    v12[1] = v14;
    v12[2] = v15;
    v12[3] = v16;
    sub_2703D25B0(v12);
    v10 = OUTLINED_FUNCTION_12_5();
    v11(v10);
  }

  OUTLINED_FUNCTION_11_3();
}

void sub_2703D17F4()
{
  OUTLINED_FUNCTION_10_1();
  v2 = v1;
  v29 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF7B0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2703D2414();
  sub_2705D8484();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_16_2();
    v7 = v6;
    v12 = v5;
    LOBYTE(v14[0]) = 1;
    *&v11 = OUTLINED_FUNCTION_16_2();
    *(&v11 + 1) = v8;
    v20 = 2;
    sub_2703D2468();
    sub_2705D7FA4();
    v9 = OUTLINED_FUNCTION_3_12();
    v10(v9);
    v25 = v21;
    v26 = v22;
    v27 = v23;
    v28 = v24;
    *&v13[0] = v12;
    *(&v13[0] + 1) = v7;
    v13[1] = v11;
    v13[2] = v21;
    v13[3] = v22;
    v13[4] = v23;
    v13[5] = v24;
    sub_2703D24BC(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v14[0] = v12;
    v14[1] = v7;
    v15 = v11;
    v16 = v25;
    v17 = v26;
    v18 = v27;
    v19 = v28;
    sub_2703D24F4(v14);
    memcpy(v29, v13, 0x60uLL);
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_2703D1A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703D04A0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2703D1A88(uint64_t a1)
{
  v2 = sub_2703D22A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703D1AC4(uint64_t a1)
{
  v2 = sub_2703D22A0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2703D1B00(void *a1@<X8>)
{
  sub_2703D0688();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_2703D1B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703D0810(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2703D1B78(uint64_t a1)
{
  v2 = sub_2703D1C38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703D1BB4(uint64_t a1)
{
  v2 = sub_2703D1C38();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2703D1BF0(void *a1@<X8>)
{
  sub_2703D09AC();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_2703D1C38()
{
  result = qword_2807CF738;
  if (!qword_2807CF738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF738);
  }

  return result;
}

unint64_t sub_2703D1C8C()
{
  result = qword_2807CF740;
  if (!qword_2807CF740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF740);
  }

  return result;
}

unint64_t sub_2703D1CE0()
{
  result = qword_2807CF750;
  if (!qword_2807CF750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF750);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19UnifiedMessagingKit12MercuryModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2703D1D54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_2703D1D94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2703D1E1C()
{
  result = qword_2807CF758;
  if (!qword_2807CF758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF758);
  }

  return result;
}

uint64_t sub_2703D1E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703D0AF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2703D1EC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2703D0C0C();
  *a1 = result;
  return result;
}

uint64_t sub_2703D1EE8(uint64_t a1)
{
  v2 = sub_2703D2C04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703D1F24(uint64_t a1)
{
  v2 = sub_2703D2C04();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2703D1F60@<D0>(_OWORD *a1@<X8>)
{
  sub_2703D0E68();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_2703D1FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703D1164(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2703D1FEC(uint64_t a1)
{
  v2 = sub_2703D2830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703D2028(uint64_t a1)
{
  v2 = sub_2703D2830();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2703D2064@<D0>(_OWORD *a1@<X8>)
{
  sub_2703D135C();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_2703D20EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2703D14E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2703D2114(uint64_t a1)
{
  v2 = sub_2703D2414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2703D2150(uint64_t a1)
{
  v2 = sub_2703D2414();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2703D218C(void *a1@<X8>)
{
  sub_2703D17F4();
  if (!v1)
  {
    memcpy(a1, v3, 0x60uLL);
  }
}

unint64_t sub_2703D21F4()
{
  result = qword_2807CF760;
  if (!qword_2807CF760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF760);
  }

  return result;
}

unint64_t sub_2703D224C()
{
  result = qword_2807CF768;
  if (!qword_2807CF768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF768);
  }

  return result;
}

unint64_t sub_2703D22A0()
{
  result = qword_2807CF778;
  if (!qword_2807CF778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF778);
  }

  return result;
}

unint64_t sub_2703D22F4()
{
  result = qword_2807CF790;
  if (!qword_2807CF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF790);
  }

  return result;
}

uint64_t sub_2703D2348(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF780);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2703D23C0()
{
  result = qword_2807CF7A8;
  if (!qword_2807CF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF7A8);
  }

  return result;
}

unint64_t sub_2703D2414()
{
  result = qword_2807CF7B8;
  if (!qword_2807CF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF7B8);
  }

  return result;
}

unint64_t sub_2703D2468()
{
  result = qword_2807CF7C0;
  if (!qword_2807CF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF7C0);
  }

  return result;
}

unint64_t sub_2703D255C()
{
  result = qword_2807CF7D0;
  if (!qword_2807CF7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF7D0);
  }

  return result;
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

unint64_t sub_2703D2624()
{
  result = qword_2807CF7D8;
  if (!qword_2807CF7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF7D8);
  }

  return result;
}

unint64_t sub_2703D267C()
{
  result = qword_2807CF7E0;
  if (!qword_2807CF7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF7E0);
  }

  return result;
}

unint64_t sub_2703D26D4()
{
  result = qword_2807CF7E8;
  if (!qword_2807CF7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF7E8);
  }

  return result;
}

unint64_t sub_2703D272C()
{
  result = qword_2807CF7F0;
  if (!qword_2807CF7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF7F0);
  }

  return result;
}

unint64_t sub_2703D2784()
{
  result = qword_2807CF7F8;
  if (!qword_2807CF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF7F8);
  }

  return result;
}

unint64_t sub_2703D27DC()
{
  result = qword_2807CF800;
  if (!qword_2807CF800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF800);
  }

  return result;
}

unint64_t sub_2703D2830()
{
  result = qword_2807CF810;
  if (!qword_2807CF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF810);
  }

  return result;
}

unint64_t sub_2703D2884()
{
  result = qword_2807CF818;
  if (!qword_2807CF818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF818);
  }

  return result;
}

unint64_t sub_2703D28D8()
{
  result = qword_2807CF828;
  if (!qword_2807CF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF828);
  }

  return result;
}

_BYTE *sub_2703D295C(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2703D29F8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2703D2A34(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2703D2A8C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_2703D2B00()
{
  result = qword_2807CF830;
  if (!qword_2807CF830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF830);
  }

  return result;
}

unint64_t sub_2703D2B58()
{
  result = qword_2807CF838;
  if (!qword_2807CF838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF838);
  }

  return result;
}

unint64_t sub_2703D2BB0()
{
  result = qword_2807CF840;
  if (!qword_2807CF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF840);
  }

  return result;
}

unint64_t sub_2703D2C04()
{
  result = qword_2807CF850;
  if (!qword_2807CF850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF850);
  }

  return result;
}

unint64_t sub_2703D2C58()
{
  result = qword_2807CF870;
  if (!qword_2807CF870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF870);
  }

  return result;
}

uint64_t sub_2703D2CE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF300);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2703D2D50(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2807CF860);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2703D2DD4()
{
  result = qword_2807CF890;
  if (!qword_2807CF890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF890);
  }

  return result;
}

_BYTE *sub_2703D2E30(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2703D2EFCLL);
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

unint64_t sub_2703D2F38()
{
  result = qword_2807CF898;
  if (!qword_2807CF898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF898);
  }

  return result;
}

unint64_t sub_2703D2F90()
{
  result = qword_2807CF8A0;
  if (!qword_2807CF8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF8A0);
  }

  return result;
}

unint64_t sub_2703D2FE8()
{
  result = qword_2807CF8A8;
  if (!qword_2807CF8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CF8A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_9()
{

  return sub_2705D7F44();
}

uint64_t OUTLINED_FUNCTION_7_7()
{

  return sub_2705D8024();
}

uint64_t OUTLINED_FUNCTION_16_2()
{

  return sub_2705D7F54();
}

uint64_t sub_2703D3178@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v52 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D6620);
  MEMORY[0x28223BE20](v2 - 8);
  v49 = &v43 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF918);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v51 = &v43 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  v56[3] = sub_2705D6A74();
  v56[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1Tm(v56);
  sub_2705D6A64();
  v20 = sub_2705D6914();
  sub_2705D6D54();
  v54 = v20;
  sub_2705D6A14();
  v53 = *(v9 + 16);
  v53(v19, v17, v8);
  sub_2703D4F10();
  v50 = v19;
  sub_2705D69E4();
  v55 = v9;
  v21 = *(v9 + 8);
  v21(v17, v8);
  (*(v5 + 8))(v7, v4);
  v22 = *v48;
  v46 = v9 + 8;
  v47 = v9 + 16;
  if (v22)
  {
    v23 = objc_allocWithZone(type metadata accessor for BuyActionImplementation());
    v44 = v21;
    v24 = swift_unknownObjectRetain_n();
    v25 = sub_2703C86D8(v24);
    sub_2705D6A14();
    v56[0] = v25;
    v53(v17, v12, v8);
    sub_2703D4F74(&qword_2807D4FD0, type metadata accessor for BuyActionImplementation);
    sub_2705D69E4();
    v21(v12, v8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF930);
    v26 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_2705DC030;
    v28 = v53;
    v53((v27 + v26), v17, v8);
    sub_2703D3E64(v27);
    swift_setDeallocating();
    sub_2704890E4();
    v29 = v49;
    v28(v49, v12, v8);
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v8);
    v30 = v17;
    v31 = v51;
    sub_2703D3F30(v29, v51);
    swift_unknownObjectRelease();
    sub_2703B2934(v29, &unk_2807D6620);
    v32 = v44;
    v44(v12, v8);
    v21 = v32;
    v32(v30, v8);
  }

  else
  {
    v33 = v49;
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v8);
    v30 = v17;
    v31 = v51;
    sub_2703D3F30(v33, v51);
    sub_2703B2934(v33, &unk_2807D6620);
    v28 = v53;
  }

  v34 = [objc_allocWithZone(type metadata accessor for PresentationRequestImplementation()) init];
  sub_2705D6A14();
  v56[0] = v34;
  v45 = v30;
  v28(v30, v12, v8);
  sub_2703D4F74(&qword_2807CF928, type metadata accessor for PresentationRequestImplementation);
  sub_2705D69E4();
  v21(v12, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF930);
  v35 = *(v55 + 72);
  v36 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_2705E10F0;
  v38 = v37 + v36;
  v39 = v50;
  v28(v38, v50, v8);
  v28(v38 + v35, v31, v8);
  v40 = v38 + 2 * v35;
  v41 = v45;
  v28(v40, v45, v8);
  sub_2703D3E64(v37);
  swift_setDeallocating();
  sub_2704890E4();
  v21(v41, v8);
  v21(v31, v8);
  return (v21)(v39, v8);
}

uint64_t sub_2703D380C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v56 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D6620);
  MEMORY[0x28223BE20](v2 - 8);
  v53 = &v47 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF918);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v15 = MEMORY[0x28223BE20](v14);
  v55 = &v47 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v47 - v20;
  v60[3] = sub_2705D6A74();
  v60[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1Tm(v60);
  sub_2705D6A64();
  v22 = sub_2705D6914();
  sub_2705D6D54();
  v58 = v22;
  sub_2705D6A14();
  v57 = *(v12 + 16);
  (v57)(v21, v19, v10);
  sub_2703D4F10();
  v54 = v21;
  sub_2705D69E4();
  v59 = v12;
  v23 = *(v12 + 8);
  v23(v19, v10);
  (*(v6 + 8))(v9, v4);
  v24 = *(v52 + 32);
  v50 = v12 + 8;
  v51 = v12 + 16;
  if (v24)
  {
    v25 = objc_allocWithZone(type metadata accessor for BuyActionImplementation());
    v48 = v23;
    v26 = swift_unknownObjectRetain_n();
    v27 = sub_2703C86D8(v26);
    sub_2705D6A14();
    v60[0] = v27;
    OUTLINED_FUNCTION_10_6();
    v57();
    sub_2703D4F74(&qword_2807D4FD0, type metadata accessor for BuyActionImplementation);
    sub_2705D69E4();
    v28 = OUTLINED_FUNCTION_8_8();
    (v23)(v28);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF930);
    v29 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_2705DC030;
    v31 = v57;
    (v57)(v30 + v29, v19, v10);
    sub_2703D3E64(v30);
    swift_setDeallocating();
    sub_2704890E4();
    v32 = v53;
    OUTLINED_FUNCTION_10_6();
    v31();
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v10);
    v33 = v19;
    v34 = v55;
    sub_2703D3F30(v32, v55);
    swift_unknownObjectRelease();
    sub_2703B2934(v32, &unk_2807D6620);
    v35 = OUTLINED_FUNCTION_8_8();
    v36 = v48;
    (v48)(v35);
    v23 = v36;
    v36(v33, v10);
  }

  else
  {
    v37 = v53;
    __swift_storeEnumTagSinglePayload(v53, 1, 1, v10);
    v33 = v19;
    v34 = v55;
    sub_2703D3F30(v37, v55);
    sub_2703B2934(v37, &unk_2807D6620);
    v31 = v57;
  }

  v38 = [objc_allocWithZone(type metadata accessor for PresentationRequestImplementation()) init];
  sub_2705D6A14();
  v60[0] = v38;
  OUTLINED_FUNCTION_10_6();
  v49 = v33;
  v31();
  sub_2703D4F74(&qword_2807CF928, type metadata accessor for PresentationRequestImplementation);
  sub_2705D69E4();
  v39 = OUTLINED_FUNCTION_8_8();
  (v23)(v39);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF930);
  v40 = *(v59 + 72);
  v41 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_2705E10F0;
  v43 = v42 + v41;
  OUTLINED_FUNCTION_10_6();
  v31();
  (v31)(v43 + v40, v34, v10);
  (v31)(v43 + 2 * v40, v49, v10);
  sub_2703D3E64(v42);
  swift_setDeallocating();
  sub_2704890E4();
  v44 = OUTLINED_FUNCTION_11_7();
  (v23)(v44);
  v23(v34, v10);
  v45 = OUTLINED_FUNCTION_8_8();
  return (v23)(v45);
}

uint64_t sub_2703D3E64(uint64_t a1)
{
  sub_2705D6914();
  result = sub_2705D6A14();
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490) - 8);
    v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      OUTLINED_FUNCTION_11_7();
      result = sub_2705D69D4();
      v5 += v6;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2703D3F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D6620);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_2703CAAEC(a1, &v9 - v5, &unk_2807D6620);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    return (*(*(v7 - 8) + 32))(a2, v6, v7);
  }

  sub_2705D6914();
  sub_2705D6A14();
  result = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (result != 1)
  {
    return sub_2703B2934(v6, &unk_2807D6620);
  }

  return result;
}

uint64_t sub_2703D407C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807D6620);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CF490);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v35 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v34 - v13;
  v15 = sub_2705D6384();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    type metadata accessor for ActionResultHandler();
    v36 = a2;

    sub_2705D6374();
    v34[1] = sub_2705D6914();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF910);
    v21 = v7;
    v22 = v15;
    v23 = a1;
    v24 = v14;
    v25 = v9;
    v26 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_2705DC030;
    v28 = v27 + v26;
    v9 = v25;
    v14 = v24;
    a1 = v23;
    v15 = v22;
    v7 = v21;
    (*(v17 + 16))(v28, v20, v15);
    OUTLINED_FUNCTION_9_7();
    sub_2705D68C4();
    (*(v17 + 8))(v20, v15);
  }

  else
  {
    sub_2705D6914();
    OUTLINED_FUNCTION_9_7();
    sub_2705D68C4();
  }

  sub_2703CAAEC(a1, v6, &unk_2807D6620);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {

    sub_2703B2934(v6, &unk_2807D6620);
    sub_2705D6914();
    OUTLINED_FUNCTION_9_7();
    sub_2705D68C4();
  }

  else
  {
    (*(v9 + 32))(v14, v6, v7);
    (*(v9 + 16))(v35, v14, v7);

    sub_2705D6374();
    sub_2705D6914();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CF910);
    v29 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_2705DC030;
    (*(v17 + 16))(v30 + v29, v20, v15);
    OUTLINED_FUNCTION_9_7();
    sub_2705D68C4();
    v31 = *(v17 + 8);

    v31(v20, v15);
    (*(v9 + 8))(v14, v7);
  }

  v32 = sub_2705D68F4();

  return v32;
}