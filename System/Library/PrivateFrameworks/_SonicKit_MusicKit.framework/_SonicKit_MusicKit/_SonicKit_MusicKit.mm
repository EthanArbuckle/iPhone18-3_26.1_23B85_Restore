id default argument 0 of MusicContent.Environment.init(userIdentity:bag:)()
{
  v0 = [objc_opt_self() defaultMediaIdentity];

  return v0;
}

uint64_t sub_2752E4BA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2752E4BC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 96) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MediaAPI.SpatialOffsets.Offset(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MediaAPI.SpatialOffsets.Offset(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2752E4C98(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2752E4CB8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy48_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2752E4D0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2752E4D2C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

void sub_2752E4D8C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2752E4DE0()
{
  *(v0 + 16) = [objc_opt_self() shared];
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_userStateDidChange_ name:*MEMORY[0x277D7F938] object:0];

  return v0;
}

uint64_t sub_2752E4E74()
{
  v1 = *v0;
  sub_2752E5160();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2753BE420;
  sub_2753B7398();
  MEMORY[0x277C76100](0x203A3A4B4ALL, 0xE500000000000000);
  sub_2753B7468();
  MEMORY[0x277C76100](0x6320737265737520, 0xEF206465676E6168);
  v3 = [v0[2] allUserStates];
  v4 = sub_2752E51B4();
  v5 = sub_2753B6FD8();

  v6 = MEMORY[0x277C762C0](v5, v4);
  v8 = v7;

  MEMORY[0x277C76100](v6, v8);

  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_2753B7778();
}

uint64_t sub_2752E5104()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_2752E5160()
{
  if (!qword_2809C0730)
  {
    v0 = sub_2753B76C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C0730);
    }
  }
}

unint64_t sub_2752E51B4()
{
  result = qword_2809C0738;
  if (!qword_2809C0738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809C0738);
  }

  return result;
}

unint64_t sub_2752E51FC()
{
  result = qword_2809C0740;
  if (!qword_2809C0740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0740);
  }

  return result;
}

uint64_t sub_2752E52A0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_2753B6288();
  *(v1 + 24) = sub_2753B6278();
  sub_2752E5560();
  v3 = sub_2753B70C8();

  return MEMORY[0x2822009F8](sub_2752E5338, v3, v2);
}

uint64_t sub_2752E5338()
{
  v2 = v0[2];
  v1 = v0[3];

  type metadata accessor for MusicAccountManager();
  swift_allocObject();
  v3 = sub_2752E4DE0();
  type metadata accessor for HomeSharingAccountManager();
  v4 = swift_allocObject();
  *v2 = v3;
  v2[1] = v4;
  v5 = v0[1];

  return v5();
}

uint64_t sub_2752E53D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752E546C;

  return sub_2752E52A0(a1);
}

uint64_t sub_2752E546C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_2752E5560()
{
  result = qword_2809C0748;
  if (!qword_2809C0748)
  {
    sub_2753B6288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0748);
  }

  return result;
}

uint64_t sub_2752E55B8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2752E55F8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2752E5658()
{
  result = qword_2809C0750;
  if (!qword_2809C0750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0750);
  }

  return result;
}

unint64_t sub_2752E56B0()
{
  result = qword_2809C0758[0];
  if (!qword_2809C0758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809C0758);
  }

  return result;
}

uint64_t sub_2752E571C()
{
  v1 = *(v0 + 16);
  strcpy(v1, "Unimplemented");
  *(v1 + 14) = -4864;
  v2 = *MEMORY[0x277D65138];
  v3 = sub_2753B6A38();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2752E5850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = *(a5 + 8);
  v12 = sub_2753B69B8();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for FacetCollection<>.ArtworkData();
  v14 = a6 + *(result + 36);
  *v14 = a2;
  *(v14 + 8) = a3;
  *(v14 + 16) = a4 & 1;
  return result;
}

uint64_t sub_2752E5908(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752E59A0;

  return FacetCollection<>.ArtworkData.availability.getter(a1);
}

uint64_t sub_2752E59A0()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_2752E5A8C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2752E5B1C;

  return FacetCollection<>.ArtworkData.value.getter();
}

uint64_t sub_2752E5B1C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;
  OUTLINED_FUNCTION_2();
  *v9 = v8;

  if (!v2)
  {
    v10 = *(v6 + 16);
    *v10 = a1;
    v10[1] = a2;
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t FacetCollection<>.artworkData(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20]();
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v6, v17);
  v18 = *(a4 + 16);
  return sub_2752E5850(v15, a1, a2, a3 & 1, a5, a6);
}

uint64_t sub_2752E5DA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752E6614;

  return FacetCollection<>.ArtworkTemplateURL.availability.getter(a1);
}

uint64_t sub_2752E5E40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2752E6614;

  return FacetCollection<>.ArtworkTemplateURL.value.getter();
}

uint64_t sub_2752E5F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  v6 = sub_2753B69B8();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3, a1, v6);
}

uint64_t sub_2752E5FBC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752E6614;

  return FacetCollection<>.MotionArtwork.availability.getter(a1);
}

uint64_t sub_2752E6054(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2752E60E4;

  return FacetCollection<>.MotionArtwork.value.getter();
}

uint64_t sub_2752E60E4()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  if (!v0)
  {
    **(v4 + 16) = v3;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_2752E61EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1);
  v11 = *(a1 + 16);
  return sub_2752E5F4C(v9, a2, a3);
}

void sub_2752E62CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  sub_2753B69B8();
  if (v3 <= 0x3F)
  {
    sub_2752E63F0();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2752E63F0()
{
  if (!qword_2809C07E0[0])
  {
    type metadata accessor for CGSize(255);
    v0 = sub_2753B72A8();
    if (!v1)
    {
      atomic_store(v0, qword_2809C07E0);
    }
  }
}

uint64_t sub_2752E648C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  result = sub_2753B69B8();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(a3 + 24) + 8);
  v7 = sub_2753B69B8();

  return __swift_getEnumTagSinglePayload(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(a4 + 24) + 8);
  v8 = sub_2753B69B8();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
}

uint64_t OUTLINED_FUNCTION_1()
{

  return sub_2753B74A8();
}

uint64_t sub_2752E6688()
{
  OUTLINED_FUNCTION_24();
  sub_2753B70B8();
  return v0;
}

uint64_t FacetCollection<>.Asset.id.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_160(*(a1 + 24));
  sub_2753B69A8();
  v4 = sub_2753B6648();
  v6 = v5;

  MEMORY[0x277C76100](v4, v6);

  MEMORY[0x277C76100](0x2D74657373612DLL, 0xE700000000000000);
  v8 = *(v1 + *(a1 + 36));
  sub_2753B7468();
  return 0;
}

uint64_t FacetCollection<>.Asset.context.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = OUTLINED_FUNCTION_160(*(a1 + 24));
  OUTLINED_FUNCTION_9(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_27();

  return v6(v5);
}

uint64_t FacetCollection<>.Asset.context.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(*(a2 + 24) + 8);
  v5 = sub_2753B69B8();
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_150();

  return v9(v8, a1);
}

uint64_t FacetCollection<>.Asset.builders.getter(uint64_t a1)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_141();
  if (*(v1 + *(v6 + 44)) - 1 >= 4)
  {
    OUTLINED_FUNCTION_56();
    return sub_2753B7038();
  }

  else
  {
    OUTLINED_FUNCTION_56();
    sub_2753B76C8();
    swift_allocObject();
    v7 = sub_2753B6FF8();
    v9 = v8;
    (*(v4 + 16))(v2, v1, a1);
    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    v13[0] = type metadata accessor for FacetCollection<>.MusicKitAssetElement();
    v13[1] = v13;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_43();
    v9[3] = sub_2753B68B8();
    v9[4] = swift_getWitnessTable();
    __swift_allocate_boxed_opaque_existential_1(v9);
    swift_getWitnessTable();
    sub_2753B68A8();
    sub_2753B70B8();
  }

  return v7;
}

uint64_t sub_2752E6AC0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2752E6AE4, 0, 0);
}

uint64_t sub_2752E6AE4()
{
  v2 = v0[2];
  v1 = v0[3];
  OUTLINED_FUNCTION_39();
  sub_2752F3C30();
  v3 = v0[1];

  return v3();
}

uint64_t sub_2752E6B4C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(a3 + 8);
  v8 = sub_2753B69B8();
  OUTLINED_FUNCTION_9(v8);
  (*(v9 + 32))(a4, a1);
  result = type metadata accessor for FacetCollection<>.Asset();
  *(a4 + *(result + 36)) = v6;
  return result;
}

uint64_t sub_2752E6BE8(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D650F0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  WitnessTable = swift_getWitnessTable();
  *v6 = v2;
  v6[1] = sub_2752E546C;

  return MEMORY[0x2821CC418](a1, a2, WitnessTable);
}

uint64_t sub_2752E6CB4(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D650F8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  WitnessTable = swift_getWitnessTable();
  *v6 = v2;
  v6[1] = sub_2752F7284;

  return MEMORY[0x2821CC420](a1, a2, WitnessTable);
}

uint64_t sub_2752E6D80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FacetCollection<>.Asset.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2752E6DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = OUTLINED_FUNCTION_2_0(a1);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10();
  v14 = v13 - v12;
  (*(v15 + 16))(v13 - v12, v4, a1);
  v18 = a3;
  v16 = *(a1 + 16);
  return sub_2752E6B4C(v14, &v18, a2, a4);
}

uint64_t AssetRecipe.url.getter()
{
  OUTLINED_FUNCTION_86();
  v0 = sub_2753B61F8();
  OUTLINED_FUNCTION_9(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_27();

  return v4(v3);
}

uint64_t AssetRecipe.url.setter()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_2753B61F8();
  OUTLINED_FUNCTION_9(v1);
  v3 = *(v2 + 40);
  v4 = OUTLINED_FUNCTION_150();

  return v5(v4, v0);
}

uint64_t sub_2752E6F74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6573616863727570 && a2 == 0xE800000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7069726373627573 && a2 == 0xEC0000006E6F6974)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2752E7054(char a1)
{
  if (a1)
  {
    return 0x7069726373627573;
  }

  else
  {
    return 0x6573616863727570;
  }
}

uint64_t sub_2752E709C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752E6F74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752E70E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2752E7040();
  *a1 = result;
  return result;
}

uint64_t sub_2752E710C(uint64_t a1)
{
  v2 = sub_2752F2F8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E7148(uint64_t a1)
{
  v2 = sub_2752F2F8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E71BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2752E7184();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2752E7204@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2752E7230(uint64_t a1)
{
  v2 = sub_2752F2F38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E726C(uint64_t a1)
{
  v2 = sub_2752F2F38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E72A8(uint64_t a1)
{
  v2 = sub_2752F2EE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E72E4(uint64_t a1)
{
  v2 = sub_2752F2EE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E7334(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1735290739 && a2 == 0xE400000000000000;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6569766F6DLL && a2 == 0xE500000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x74736163646F70 && a2 == 0xE700000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F6F426F69647561 && a2 == 0xE90000000000006BLL;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x74656C6B6F6F62 && a2 == 0xE700000000000000;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x646956636973756DLL && a2 == 0xEA00000000006F65;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x646F736970457674 && a2 == 0xE900000000000065)
            {

              return 6;
            }

            else
            {
              v12 = sub_2753B7718();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2752E75B4(char a1)
{
  result = 1735290739;
  switch(a1)
  {
    case 1:
      result = 0x6569766F6DLL;
      break;
    case 2:
      v3 = 0x736163646F70;
      goto LABEL_5;
    case 3:
      result = 0x6F6F426F69647561;
      break;
    case 4:
      v3 = 0x656C6B6F6F62;
LABEL_5:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
      break;
    case 5:
      result = 0x646956636973756DLL;
      break;
    case 6:
      result = 0x646F736970457674;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2752E769C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954616964656DLL && a2 == 0xE900000000000065;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2752E779C(char a1)
{
  if (a1)
  {
    return 25705;
  }

  else
  {
    return 0x707954616964656DLL;
  }
}

uint64_t sub_2752E77CC(uint64_t a1)
{
  v2 = sub_2752F31D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E7808(uint64_t a1)
{
  v2 = sub_2752F31D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E7844(uint64_t a1)
{
  v2 = sub_2752F3184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E7880(uint64_t a1)
{
  v2 = sub_2752F3184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E78F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752E7334(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752E7920@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2752E7574();
  *a1 = result;
  return result;
}

uint64_t sub_2752E7948(uint64_t a1)
{
  v2 = sub_2752F3328();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E7984(uint64_t a1)
{
  v2 = sub_2752F3328();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E79C0(uint64_t a1)
{
  v2 = sub_2752F3280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E79FC(uint64_t a1)
{
  v2 = sub_2752F3280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E7A38(uint64_t a1)
{
  v2 = sub_2752F3130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E7A74(uint64_t a1)
{
  v2 = sub_2752F3130();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E7AB0(uint64_t a1)
{
  v2 = sub_2752F322C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E7AEC(uint64_t a1)
{
  v2 = sub_2752F322C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E7B28(uint64_t a1)
{
  v2 = sub_2752F32D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E7B64(uint64_t a1)
{
  v2 = sub_2752F32D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E7BA0(uint64_t a1)
{
  v2 = sub_2752F30DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E7BDC(uint64_t a1)
{
  v2 = sub_2752F30DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E7C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752E769C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752E7C7C(uint64_t a1)
{
  v2 = sub_2752F2FE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E7CB8(uint64_t a1)
{
  v2 = sub_2752F2FE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetRecipe.DRM.PurchaseKeyMaterial.pinf.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = OUTLINED_FUNCTION_27();
  sub_2752F22F8(v3, v4);
  return OUTLINED_FUNCTION_27();
}

uint64_t AssetRecipe.DRM.PurchaseKeyMaterial.pinf.setter()
{
  OUTLINED_FUNCTION_96();
  result = sub_2752F2350(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t AssetRecipe.DRM.PurchaseKeyMaterial.suzeLeaseInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
}

uint64_t sub_2752E7DA4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1718511984 && a2 == 0xE400000000000000;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7361654C657A7573 && a2 == 0xED00006F666E4965)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2752E7E74(char a1)
{
  if (a1)
  {
    return 0x7361654C657A7573;
  }

  else
  {
    return 1718511984;
  }
}

uint64_t sub_2752E7EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752E7DA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752E7EE0(uint64_t a1)
{
  v2 = sub_2752F361C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E7F1C(uint64_t a1)
{
  v2 = sub_2752F361C();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 _s015_SonicKit_MusicB011AssetRecipeV3DRMO19PurchaseKeyMaterialV13suzeLeaseInfoAE04SuzekL0VSgvs_0(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1[2].n128_u64[0];

  result = v5;
  v1[1] = v5;
  v1[2].n128_u64[0] = v2;
  return result;
}

uint64_t sub_2752E7FD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F666E497064 && a2 == 0xE600000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7361654C657A7573 && a2 == 0xED00006F666E4965)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2752E80A0(char a1)
{
  if (a1)
  {
    return 0x7361654C657A7573;
  }

  else
  {
    return 0x6F666E497064;
  }
}

uint64_t sub_2752E80E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752E7FD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752E8110(uint64_t a1)
{
  v2 = sub_2752F337C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E814C(uint64_t a1)
{
  v2 = sub_2752F337C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E8198(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819047270 && a2 == 0xE400000000000000;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1768843629 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2753B7718();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2752E8268(char a1)
{
  OUTLINED_FUNCTION_100();
  MEMORY[0x277C76A80](a1 & 1);
  return sub_2753B77D8();
}

uint64_t sub_2752E82A8(char a1)
{
  if (a1)
  {
    return 1768843629;
  }

  else
  {
    return 1819047270;
  }
}

uint64_t sub_2752E82D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752E8198(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752E82F8(uint64_t a1)
{
  v2 = sub_2752F3814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E8334(uint64_t a1)
{
  v2 = sub_2752F3814();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E8370(uint64_t a1)
{
  v2 = sub_2752F37C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E83AC(uint64_t a1)
{
  v2 = sub_2752F37C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752E83E8(uint64_t a1)
{
  v2 = sub_2752F376C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E8424(uint64_t a1)
{
  v2 = sub_2752F376C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetRecipe.DRM.SecurityKeyMaterial.sinf.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = OUTLINED_FUNCTION_27();
  sub_2752F22F8(v3, v4);
  return OUTLINED_FUNCTION_27();
}

uint64_t AssetRecipe.DRM.SecurityKeyMaterial.sinf.setter()
{
  OUTLINED_FUNCTION_96();
  result = sub_2752F2350(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t AssetRecipe.DRM.SecurityKeyMaterial.sinf2.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_27();
  sub_2752F22F8(v3, v4);
  return OUTLINED_FUNCTION_27();
}

uint64_t AssetRecipe.DRM.SecurityKeyMaterial.sinf2.setter()
{
  OUTLINED_FUNCTION_96();
  result = sub_2752F2350(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t sub_2752E85D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6169726176 && a2 == 0xE700000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1718511987 && a2 == 0xE400000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x32666E6973 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2753B7718();

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

uint64_t sub_2752E86E4(char a1)
{
  if (!a1)
  {
    return 0x746E6169726176;
  }

  if (a1 == 1)
  {
    return 1718511987;
  }

  return 0x32666E6973;
}

uint64_t sub_2752E8738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752E85D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752E8760@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2752E86DC();
  *a1 = result;
  return result;
}

uint64_t sub_2752E8788(uint64_t a1)
{
  v2 = sub_2752F3670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752E87C4(uint64_t a1)
{
  v2 = sub_2752F3670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerURL.getter()
{
  v2 = OUTLINED_FUNCTION_86();
  v3 = *(type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(v2) + 20);
  v4 = sub_2753B61F8();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerURL.setter()
{
  v2 = OUTLINED_FUNCTION_24();
  v3 = *(type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(v2) + 20);
  v4 = sub_2753B61F8();
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerURL.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  v1 = *(type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(v0) + 20);
  return OUTLINED_FUNCTION_116();
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerCertificateURL.getter()
{
  v2 = OUTLINED_FUNCTION_86();
  v3 = *(type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(v2) + 24);
  v4 = sub_2753B61F8();
  v5 = OUTLINED_FUNCTION_9(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerCertificateURL.setter()
{
  v2 = OUTLINED_FUNCTION_24();
  v3 = *(type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(v2) + 24);
  v4 = sub_2753B61F8();
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerCertificateURL.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  v1 = *(type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(v0) + 24);
  return OUTLINED_FUNCTION_116();
}

_SonicKit_MusicKit::AssetRecipe::DRM::FairPlayStreaming::KeyServerType_optional __swiftcall AssetRecipe.DRM.FairPlayStreaming.KeyServerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2753B74E8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.KeyServerType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x647261646E617473;
  }

  else
  {
    result = 0x6966696C706D6973;
  }

  *v0;
  return result;
}

uint64_t sub_2752E8B10(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25705;
  switch(a1)
  {
    case 1:
      v3 = 0xE400000000000000;
      v4 = 1701869940;
      break;
    case 2:
      v4 = 0x7475626972747461;
      v3 = 0xEA00000000007365;
      break;
    case 3:
      v3 = 1885956211;
      OUTLINED_FUNCTION_139();
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  switch(a2)
  {
    case 1:
      v5 = 0xE400000000000000;
      v6 = 1701869940;
      break;
    case 2:
      v6 = 0x7475626972747461;
      v5 = 0xEA00000000007365;
      break;
    case 3:
      v6 = 0x6E6F6974616C6572;
      v5 = 0xED00007370696873;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_57();
  }

  return v8 & 1;
}

uint64_t sub_2752E8C74()
{
  v0 = MediaAPI.MediaAPIType.rawValue.getter();
  v2 = v1;
  if (v0 == MediaAPI.MediaAPIType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_57();
  }

  return v5 & 1;
}

uint64_t sub_2752E8D08(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x647261646E617473;
  }

  else
  {
    v3 = 0x6966696C706D6973;
  }

  if (v2)
  {
    v4 = 0xEA00000000006465;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x647261646E617473;
  }

  else
  {
    v5 = 0x6966696C706D6973;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA00000000006465;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_57();
  }

  return v8 & 1;
}

uint64_t sub_2752E8DA0(char a1, char a2)
{
  v2 = 0x6E6F6973726576;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 7107189;
    }

    else
    {
      v3 = 7172708;
    }

    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E6F6973726576;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 7107189;
    }

    else
    {
      v2 = 7172708;
    }

    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (v3 == v2 && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2753B7718();
  }

  return v7 & 1;
}

uint64_t sub_2752E8E7C(unsigned __int8 a1, char a2)
{
  v2 = 0x73676E6F73;
  v3 = a1;
  v4 = 0x73676E6F73;
  switch(v3)
  {
    case 1:
      OUTLINED_FUNCTION_65();
      break;
    case 2:
      v4 = OUTLINED_FUNCTION_130();
      break;
    case 3:
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_129();
      break;
    case 4:
      v4 = OUTLINED_FUNCTION_107();
      break;
    default:
      break;
  }

  v5 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_82();
      break;
    case 2:
      OUTLINED_FUNCTION_126();
      break;
    case 3:
      OUTLINED_FUNCTION_62();
      v5 = 0xE900000000000073;
      break;
    case 4:
      OUTLINED_FUNCTION_105();
      break;
    default:
      break;
  }

  if (v4 == v2 && v5 == 0xE500000000000000)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_57();
  }

  return v7 & 1;
}

uint64_t sub_2752E8FAC(unsigned __int8 a1, char a2)
{
  v2 = 1735290739;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1735290739;
  switch(v4)
  {
    case 1:
      v5 = 0x646956636973756DLL;
      v3 = 0xEA00000000006F65;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x6D75626C61;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = OUTLINED_FUNCTION_64();
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x646956636973756DLL;
      v6 = 0xEA00000000006F65;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x6D75626C61;
      break;
    case 3:
      v6 = 0xE800000000000000;
      OUTLINED_FUNCTION_62();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_57();
  }

  return v8 & 1;
}

uint64_t sub_2752E90F0(unsigned __int8 a1, char a2)
{
  v2 = 1735290739;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x646956636973756DLL;
    }

    else
    {
      v4 = 0x6D75626C61;
    }

    if (v3 == 1)
    {
      v5 = 0xEA00000000006F65;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1735290739;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x646956636973756DLL;
    }

    else
    {
      v2 = 0x6D75626C61;
    }

    if (a2 == 1)
    {
      v6 = 0xEA00000000006F65;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_57();
  }

  return v8 & 1;
}

uint64_t sub_2752E91DC()
{
  v0 = 1735290739;
  OUTLINED_FUNCTION_139();
  v2 = 0x2D7972617262696CLL;
  v4 = v3;
  v5 = 0x2D7972617262696CLL;
  v6 = 1735290739;
  switch(v4)
  {
    case 1:
      v6 = 0x80000002753B8130;
      v5 = 0xD000000000000014;
      break;
    case 2:
      v6 = 0xEE00736D75626C61;
      v5 = 0x2D7972617262696CLL;
      break;
    case 3:
      v5 = 0xD000000000000011;
      v6 = 0x80000002753B8170;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0x80000002753B8130;
      v2 = 0xD000000000000014;
      break;
    case 2:
      OUTLINED_FUNCTION_151();
      break;
    case 3:
      v2 = 0xD000000000000011;
      v0 = 0x80000002753B8170;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_159();
  }

  return v8 & 1;
}

uint64_t sub_2752E9340(unsigned __int8 a1, char a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6E776F6E6B6E75;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x73676E6F73;
      break;
    case 2:
      OUTLINED_FUNCTION_65();
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_130();
      break;
    case 4:
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_129();
      break;
    case 5:
      v5 = OUTLINED_FUNCTION_107();
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x73676E6F73;
      break;
    case 2:
      OUTLINED_FUNCTION_82();
      break;
    case 3:
      OUTLINED_FUNCTION_126();
      break;
    case 4:
      OUTLINED_FUNCTION_62();
      v6 = 0xE900000000000073;
      break;
    case 5:
      OUTLINED_FUNCTION_105();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_57();
  }

  return v8 & 1;
}

uint64_t sub_2752E94D0()
{
  OUTLINED_FUNCTION_32();
  sub_2753B6A18();
  sub_2752F2964(qword_2809C1060, MEMORY[0x277D65110]);
  OUTLINED_FUNCTION_135();
  sub_2753B6F38();
  OUTLINED_FUNCTION_135();
  sub_2753B6F38();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = OUTLINED_FUNCTION_159();
  }

  return v1 & 1;
}

uint64_t sub_2752E95A8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_139();
      break;
    default:
      break;
  }

  sub_2753B6688();
}

uint64_t sub_2752E9694()
{
  MediaAPI.MediaAPIType.rawValue.getter();
  sub_2753B6688();
}

uint64_t sub_2752E96F4()
{
  sub_2753B6688();
}

uint64_t sub_2752E9764()
{
  sub_2753B6688();
}

uint64_t sub_2752E97E0()
{
  OUTLINED_FUNCTION_132();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_145();
      break;
    case 2:
      OUTLINED_FUNCTION_131();
      break;
    case 3:
      OUTLINED_FUNCTION_129();
      OUTLINED_FUNCTION_69();
      break;
    case 4:
      OUTLINED_FUNCTION_106();
      break;
    default:
      break;
  }

  sub_2753B6688();
}

uint64_t sub_2752E987C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      OUTLINED_FUNCTION_69();
      break;
    default:
      break;
  }

  sub_2753B6688();
}

uint64_t sub_2752E9930()
{
  sub_2753B6688();
}

uint64_t sub_2752E99B4()
{
  OUTLINED_FUNCTION_139();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_151();
      break;
    default:
      break;
  }

  sub_2753B6688();
}

uint64_t sub_2752E9A80(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_132();
      break;
    case 2:
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_145();
      break;
    case 3:
      OUTLINED_FUNCTION_131();
      break;
    case 4:
      OUTLINED_FUNCTION_129();
      OUTLINED_FUNCTION_69();
      break;
    case 5:
      OUTLINED_FUNCTION_106();
      break;
    default:
      break;
  }

  sub_2753B6688();
}

uint64_t sub_2752E9B38(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 24;
  }

  else
  {
    v2 = 0;
  }

  return MEMORY[0x277C76A80](v2);
}

uint64_t sub_2752E9BB0@<X0>(uint64_t *a1@<X8>)
{
  result = AssetRecipe.DRM.FairPlayStreaming.KeyServerType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerType.getter()
{
  v2 = OUTLINED_FUNCTION_86();
  result = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(v2);
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerType.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  v1 = *(type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(v0) + 28);
  return OUTLINED_FUNCTION_116();
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerSupportsOfflineKeys.setter(char a1)
{
  result = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.keyServerSupportsOfflineKeys.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  v1 = *(type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(v0) + 32);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_2752E9D0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44497465737361 && a2 == 0xE700000000000000;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657672655379656BLL && a2 == 0xEC0000004C525572;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000002753B8360 == a2;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x657672655379656BLL && a2 == 0xED00006570795472;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD00000000000001CLL && 0x80000002753B8380 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_2753B7718();

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

unint64_t sub_2752E9EC4(char a1)
{
  result = 0x44497465737361;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0x657672655379656BLL;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2752E9F84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x67614279656BLL && a2 == 0xE600000000000000;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6573616863727570 && a2 == 0xE800000000000000;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6365746F72706564 && a2 == 0xEC0000006E6F6974;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7974697275636573 && a2 == 0xE800000000000000;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000011 && 0x80000002753B8340 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_2753B7718();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2752EA17C(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 0x67614279656BLL;
      break;
    case 2:
      result = 0x6573616863727570;
      break;
    case 3:
      result = 0x6365746F72706564;
      break;
    case 4:
      result = 0x7974697275636573;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2752EA278(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = OUTLINED_FUNCTION_159();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2752EA2E0()
{
  OUTLINED_FUNCTION_100();
  MEMORY[0x277C76A80](0);
  return sub_2753B77D8();
}

uint64_t sub_2752EA324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752E9D0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752EA34C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2752E9EBC();
  *a1 = result;
  return result;
}

uint64_t sub_2752EA374(uint64_t a1)
{
  v2 = sub_2752F3520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752EA3B0(uint64_t a1)
{
  v2 = sub_2752F3520();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752EA3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752E9F84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752EA41C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2752EA174();
  *a1 = result;
  return result;
}

uint64_t sub_2752EA444(uint64_t a1)
{
  v2 = sub_2752F28CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752EA480(uint64_t a1)
{
  v2 = sub_2752F28CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752EA4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752EA278(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2752EA510(uint64_t a1)
{
  v2 = sub_2752F277C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752EA54C(uint64_t a1)
{
  v2 = sub_2752F277C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752EA588(uint64_t a1)
{
  v2 = sub_2752F26D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752EA5C4(uint64_t a1)
{
  v2 = sub_2752F26D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752EA600(uint64_t a1)
{
  v2 = sub_2752F2824();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752EA63C(uint64_t a1)
{
  v2 = sub_2752F2824();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752EA678(uint64_t a1)
{
  v2 = sub_2752F2878();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752EA6B4(uint64_t a1)
{
  v2 = sub_2752F2878();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752EA6F0(uint64_t a1)
{
  v2 = sub_2752F27D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752EA72C(uint64_t a1)
{
  v2 = sub_2752F27D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2752EA768()
{
  sub_2753B7798();
  MEMORY[0x277C76A80](0);
  return sub_2753B77D8();
}

uint64_t sub_2752EA7A8(uint64_t a1)
{
  v2 = sub_2752F2728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752EA7E4(uint64_t a1)
{
  v2 = sub_2752F2728();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetRecipe.drm.getter()
{
  v0 = OUTLINED_FUNCTION_86();
  v1 = *(type metadata accessor for AssetRecipe(v0) + 20);
  OUTLINED_FUNCTION_1_0();
  return sub_2752F3C30();
}

uint64_t AssetRecipe.drm.setter()
{
  v2 = OUTLINED_FUNCTION_24();
  v3 = v1 + *(type metadata accessor for AssetRecipe(v2) + 20);

  return sub_2752F2408(v0, v3);
}

uint64_t AssetRecipe.drm.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  v1 = *(type metadata accessor for AssetRecipe(v0) + 20);
  return OUTLINED_FUNCTION_116();
}

uint64_t AssetRecipe.iTunesStoreContentInfo.contentID.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t AssetRecipe.iTunesStoreContentInfo.contentID.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t AssetRecipe.iTunesStoreContentInfo.contentType.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_27();
}

uint64_t AssetRecipe.iTunesStoreContentInfo.contentType.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AssetRecipe.iTunesStoreContentInfo.downloadParameters.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t AssetRecipe.iTunesStoreContentInfo.purchasedMediaKind.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_27();
}

uint64_t AssetRecipe.iTunesStoreContentInfo.purchasedMediaKind.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t AssetRecipe.iTunesStoreContentInfo.userAgent.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_27();
}

uint64_t AssetRecipe.iTunesStoreContentInfo.userAgent.setter()
{
  OUTLINED_FUNCTION_96();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t AssetRecipe.iTunesStoreContentInfo.dsid.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t AssetRecipe.iTunesStoreContentInfo.dsid.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t AssetRecipe.iTunesStoreContentInfo.hlsPlaylistURL.getter()
{
  v0 = OUTLINED_FUNCTION_86();
  v1 = *(type metadata accessor for AssetRecipe.iTunesStoreContentInfo(v0) + 40);
  OUTLINED_FUNCTION_3_0();
  return sub_2752F24C4();
}

uint64_t AssetRecipe.iTunesStoreContentInfo.hlsPlaylistURL.setter()
{
  v0 = OUTLINED_FUNCTION_24();
  v1 = *(type metadata accessor for AssetRecipe.iTunesStoreContentInfo(v0) + 40);
  OUTLINED_FUNCTION_3_0();
  return sub_2752F2570();
}

uint64_t AssetRecipe.iTunesStoreContentInfo.hlsPlaylistURL.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  v1 = *(type metadata accessor for AssetRecipe.iTunesStoreContentInfo(v0) + 40);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_2752EABDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E65746E6F63 && a2 == 0xE900000000000044;
  if (v4 || (sub_2753B7718() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079;
    if (v6 || (sub_2753B7718() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000002753B83A0 == a2;
      if (v7 || (sub_2753B7718() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000002753B83C0 == a2;
        if (v8 || (sub_2753B7718() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E65674172657375 && a2 == 0xE900000000000074;
          if (v9 || (sub_2753B7718() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1684632420 && a2 == 0xE400000000000000;
            if (v10 || (sub_2753B7718() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6C79616C50736C68 && a2 == 0xEE004C5255747369)
            {

              return 6;
            }

            else
            {
              v12 = sub_2753B7718();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2752EAE2C(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_100();
  MEMORY[0x277C76A80](a1);
  return sub_2753B77D8();
}

unint64_t sub_2752EAE6C(char a1)
{
  result = 0x49746E65746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x54746E65746E6F63;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x6E65674172657375;
      break;
    case 5:
      result = 1684632420;
      break;
    case 6:
      result = 0x6C79616C50736C68;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2752EAF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2752EABDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2752EAF94(uint64_t a1)
{
  v2 = sub_2752F39E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752EAFD0(uint64_t a1)
{
  v2 = sub_2752F39E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssetRecipe.iTunesStoreContentInfo.getter()
{
  v0 = OUTLINED_FUNCTION_86();
  v1 = *(type metadata accessor for AssetRecipe(v0) + 24);
  OUTLINED_FUNCTION_6();
  return sub_2752F24C4();
}

uint64_t AssetRecipe.iTunesStoreContentInfo.setter()
{
  v0 = OUTLINED_FUNCTION_24();
  v1 = *(type metadata accessor for AssetRecipe(v0) + 24);
  OUTLINED_FUNCTION_6();
  return sub_2752F2570();
}

uint64_t AssetRecipe.iTunesStoreContentInfo.modify()
{
  v0 = OUTLINED_FUNCTION_24();
  v1 = *(type metadata accessor for AssetRecipe(v0) + 24);
  return OUTLINED_FUNCTION_116();
}

void static AssetRecipe.== infix(_:_:)()
{
  OUTLINED_FUNCTION_153();
  v0 = type metadata accessor for AssetRecipe.iTunesStoreContentInfo(0);
  v1 = OUTLINED_FUNCTION_9(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_10();
  sub_2752F251C(0, &qword_2809C08F0, type metadata accessor for AssetRecipe.iTunesStoreContentInfo);
  OUTLINED_FUNCTION_75(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_21();
  sub_2752F38E4(0, &qword_2809C08F8, &qword_2809C08F0, type metadata accessor for AssetRecipe.iTunesStoreContentInfo);
  v9 = v8;
  OUTLINED_FUNCTION_9(v8);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_112();
  if (sub_2753B61A8())
  {
    v13 = type metadata accessor for AssetRecipe(0);
    v14 = *(v13 + 20);
    static AssetRecipe.DRM.== infix(_:_:)();
    if (v15)
    {
      v16 = *(v13 + 24);
      v17 = *(v9 + 48);
      OUTLINED_FUNCTION_37();
      sub_2752F24C4();
      sub_2752F24C4();
      OUTLINED_FUNCTION_123(&qword_2809C08F0, 1, v0);
      if (!v18)
      {
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_152();
        sub_2752F24C4();
        OUTLINED_FUNCTION_123(&qword_2809C08F0 + v17, 1, v0);
        if (!v18)
        {
          OUTLINED_FUNCTION_55();
          sub_2752F2680();
          static AssetRecipe.iTunesStoreContentInfo.== infix(_:_:)();
          sub_2752F25C8();
          sub_2752F25C8();
          OUTLINED_FUNCTION_5();
          sub_2752F3998();
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_11();
        sub_2752F25C8();
LABEL_11:
        OUTLINED_FUNCTION_6();
        sub_2752F3948();
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_123(&qword_2809C08F0 + v17, 1, v0);
      if (!v18)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_5();
      sub_2752F3998();
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_155();
}

void AssetRecipe.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_153();
  a19 = v21;
  a20 = v22;
  v23 = OUTLINED_FUNCTION_24();
  v24 = type metadata accessor for AssetRecipe.iTunesStoreContentInfo(v23);
  v25 = OUTLINED_FUNCTION_9(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_37();
  sub_2752F251C(0, &qword_2809C08F0, v28);
  OUTLINED_FUNCTION_75(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  sub_2753B61F8();
  OUTLINED_FUNCTION_0_1();
  sub_2752F2964(v35, v36);
  OUTLINED_FUNCTION_52();
  sub_2753B6D38();
  v37 = type metadata accessor for AssetRecipe(0);
  v38 = v20 + *(v37 + 20);
  AssetRecipe.DRM.hash(into:)();
  v39 = *(v37 + 24);
  sub_2752F24C4();
  OUTLINED_FUNCTION_123(v34, 1, v24);
  if (v40)
  {
    OUTLINED_FUNCTION_156();
  }

  else
  {
    OUTLINED_FUNCTION_55();
    sub_2752F2680();
    OUTLINED_FUNCTION_157();
    AssetRecipe.iTunesStoreContentInfo.hash(into:)();
    OUTLINED_FUNCTION_11();
    sub_2752F25C8();
  }

  OUTLINED_FUNCTION_155();
}

void static AssetRecipe.DRM.== infix(_:_:)()
{
  OUTLINED_FUNCTION_153();
  *&v72 = v1;
  v2 = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
  v3 = OUTLINED_FUNCTION_75(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_10();
  v71[1] = v7 - v6;
  v8 = type metadata accessor for AssetRecipe.DRM(0);
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_98();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_142();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v71 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v71 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v71 - v20;
  sub_2752F261C();
  v23 = OUTLINED_FUNCTION_75(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_10();
  v29 = (v27 - v26 + *(v28 + 56));
  sub_2752F3C30();
  sub_2752F3C30();
  OUTLINED_FUNCTION_27();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_0();
      sub_2752F3C30();
      v58 = *v19;
      v57 = *(v19 + 1);
      v35 = *(v19 + 4);
      OUTLINED_FUNCTION_76();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_17;
      }

      v36 = *v29;
      v37 = *(v29 + 3);
      v38 = *(v29 + 4);
      v77 = v58;
      v78 = v57;
      v39 = *(v19 + 1);
      goto LABEL_15;
    case 2u:
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_52();
      sub_2752F3C30();
      v34 = *v16;
      v33 = *(v16 + 1);
      v35 = *(v16 + 4);
      OUTLINED_FUNCTION_76();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
LABEL_17:
        v61 = OUTLINED_FUNCTION_112();
        sub_2752F2350(v61, v62);

        goto LABEL_22;
      }

      v36 = *v29;
      v37 = *(v29 + 3);
      v38 = *(v29 + 4);
      v77 = v34;
      v78 = v33;
      v39 = *(v16 + 1);
LABEL_15:
      v79 = v39;
      v80 = v35;
      v73 = v36;
      v72 = *(v29 + 8);
      v74 = v72;
      v75 = v37;
      v76 = v38;
      static AssetRecipe.DRM.PurchaseKeyMaterial.== infix(_:_:)(&v77, &v73);
      sub_2752F2350(v36, v72);

      v59 = OUTLINED_FUNCTION_112();
      sub_2752F2350(v59, v60);

      goto LABEL_16;
    case 3u:
      OUTLINED_FUNCTION_1_0();
      sub_2752F3C30();
      v41 = v0[1];
      v40 = v0[2];
      v43 = v0[3];
      v42 = v0[4];
      OUTLINED_FUNCTION_76();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v44 = *v0;
        v45 = *v29;
        v46 = *(v29 + 1);
        v47 = *(v29 + 2);
        v48 = *(v29 + 3);
        v49 = *(v29 + 4);
        if (v44 == v45 && (v50 = OUTLINED_FUNCTION_147(), (MEMORY[0x277C75500](v50) & 1) != 0))
        {
          v51 = OUTLINED_FUNCTION_94();
          v52 = MEMORY[0x277C75500](v51);
          sub_2752F2350(v46, v47);
          sub_2752F2350(v48, v49);
          v53 = OUTLINED_FUNCTION_147();
          sub_2752F2350(v53, v54);
          v55 = OUTLINED_FUNCTION_94();
          sub_2752F2350(v55, v56);
          if (v52)
          {
            goto LABEL_16;
          }
        }

        else
        {
          sub_2752F2350(v46, v47);
          sub_2752F2350(v48, v49);
          v67 = OUTLINED_FUNCTION_147();
          sub_2752F2350(v67, v68);
          v69 = OUTLINED_FUNCTION_94();
          sub_2752F2350(v69, v70);
        }
      }

      else
      {
        v63 = OUTLINED_FUNCTION_147();
        sub_2752F2350(v63, v64);
        v65 = OUTLINED_FUNCTION_94();
        sub_2752F2350(v65, v66);
      }

      goto LABEL_22;
    case 4u:
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_53();
      sub_2752F3C30();
      OUTLINED_FUNCTION_76();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        OUTLINED_FUNCTION_48();
        sub_2752F2680();
        v31 = OUTLINED_FUNCTION_94();
        static AssetRecipe.DRM.FairPlayStreaming.== infix(_:_:)(v31, v32);
        sub_2752F25C8();
        sub_2752F25C8();
LABEL_16:
        OUTLINED_FUNCTION_13();
      }

      else
      {
        OUTLINED_FUNCTION_8();
        sub_2752F25C8();
LABEL_22:
        sub_2752F25C8();
      }

LABEL_23:
      OUTLINED_FUNCTION_155();
      return;
    case 5u:
      OUTLINED_FUNCTION_76();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    default:
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_152();
      sub_2752F3C30();
      OUTLINED_FUNCTION_76();
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_22;
      }

      v30 = *v21 ^ *v29;
      OUTLINED_FUNCTION_13();
      goto LABEL_23;
  }
}

void AssetRecipe.DRM.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v23;
  a20 = v24;
  a10 = v22;
  v134 = v21;
  v26 = v25;
  OUTLINED_FUNCTION_46();
  v27 = MEMORY[0x277D84538];
  sub_2752F3C84(0, v28, v29, v30, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v31);
  v131 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_19();
  v130 = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
  v36 = OUTLINED_FUNCTION_9(v130);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10();
  v39 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v39, v40, v41, v42, v27);
  v129 = OUTLINED_FUNCTION_2_0(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_19();
  v47 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v47, v48, v49, v50, v27);
  v128 = v51;
  OUTLINED_FUNCTION_2_0(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_19();
  v55 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v55, v56, v57, v58, v27);
  v127 = v59;
  OUTLINED_FUNCTION_2_0(v59);
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_19();
  v63 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v63, v64, v65, v66, v27);
  v126 = v67;
  OUTLINED_FUNCTION_2_0(v67);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_19();
  v71 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v71, v72, v73, v74, v27);
  v76 = v75;
  OUTLINED_FUNCTION_2_0(v75);
  v78 = *(v77 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_14();
  v80 = type metadata accessor for AssetRecipe.DRM(0);
  v81 = OUTLINED_FUNCTION_9(v80);
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_10();
  v86 = (v85 - v84);
  v87 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v87, v88, v89, &type metadata for AssetRecipe.DRM.CodingKeys, v27);
  v133 = OUTLINED_FUNCTION_2_0(v90);
  v92 = *(v91 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_20();
  v94 = v26[4];
  OUTLINED_FUNCTION_67_0(v26, v26[3]);
  sub_2752F28CC();
  v132 = v20;
  sub_2753B7808();
  OUTLINED_FUNCTION_1_0();
  sub_2752F3C30();
  OUTLINED_FUNCTION_111();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v118 = *(v86 + 4);
      sub_2752F27D0();
      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_103(&a14);
      OUTLINED_FUNCTION_127();
      sub_2752F2A54();
      v106 = v127;
      sub_2753B7698();
      v107 = &a15;
      goto LABEL_8;
    case 2u:
      v105 = *(v86 + 4);
      sub_2752F277C();
      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_103(&a17);
      OUTLINED_FUNCTION_127();
      sub_2752F2A00();
      v106 = v128;
      sub_2753B7698();
      v107 = &a18;
LABEL_8:
      v119 = OUTLINED_FUNCTION_66(v107);
      v120(v119, v106);
      OUTLINED_FUNCTION_108();
      v121 = OUTLINED_FUNCTION_94();
      v122(v121);
      sub_2752F2350(v134, v135);

      goto LABEL_10;
    case 3u:
      v108 = *v86;
      v109 = *(v86 + 1);
      v110 = *(v86 + 2);
      v111 = *(v86 + 3);
      v112 = *(v86 + 4);
      sub_2752F2728();
      sub_2753B75E8();
      sub_2752F29AC();
      sub_2753B7698();
      v113 = OUTLINED_FUNCTION_84();
      v114(v113, v129);
      OUTLINED_FUNCTION_108();
      v115(v132, v133);
      sub_2752F2350(v109, v110);
      v116 = OUTLINED_FUNCTION_97();
      sub_2752F2350(v116, v117);
      goto LABEL_10;
    case 4u:
      sub_2752F2680();
      sub_2752F26D4();
      sub_2753B75E8();
      OUTLINED_FUNCTION_38();
      sub_2752F2964(v100, v101);
      sub_2753B7698();
      v102 = *(v131 + 8);
      v103 = OUTLINED_FUNCTION_112();
      v104(v103);
      OUTLINED_FUNCTION_8();
      sub_2752F25C8();
      OUTLINED_FUNCTION_108();
      v98 = OUTLINED_FUNCTION_114();
      goto LABEL_4;
    case 5u:
      sub_2752F2878();
      sub_2753B75E8();
      v123 = OUTLINED_FUNCTION_66(&a10);
      v124(v123, v76);
      OUTLINED_FUNCTION_108();
      v125(v20, v133);
      goto LABEL_10;
    default:
      v95 = *v86;
      sub_2752F2824();
      sub_2753B75E8();
      sub_2752F2AA8();
      sub_2753B7698();
      v96 = OUTLINED_FUNCTION_66(&a12);
      v97(v96, v126);
      OUTLINED_FUNCTION_108();
      v98 = OUTLINED_FUNCTION_112();
LABEL_4:
      v99(v98);
LABEL_10:
      OUTLINED_FUNCTION_61();
      return;
  }
}

uint64_t AssetRecipe.DRM.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_24();
  v1 = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(v0);
  v2 = OUTLINED_FUNCTION_9(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_10();
  v7 = (v6 - v5);
  v8 = type metadata accessor for AssetRecipe.DRM(0);
  v9 = OUTLINED_FUNCTION_9(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10();
  v14 = (v13 - v12);
  OUTLINED_FUNCTION_1_0();
  sub_2752F3C30();
  OUTLINED_FUNCTION_115();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v29 = *v14;
      v30 = *(v14 + 1);
      v19 = v14[16];
      v31 = *(v14 + 3);
      v20 = *(v14 + 4);
      v22 = 2;
      goto LABEL_8;
    case 2u:
      v17 = *v14;
      v18 = *(v14 + 1);
      v19 = v14[16];
      v21 = *(v14 + 3);
      v20 = *(v14 + 4);
      v22 = 3;
LABEL_8:
      MEMORY[0x277C76A80](v22);
      OUTLINED_FUNCTION_101();
      sub_2753B6248();
      if (v20)
      {
        OUTLINED_FUNCTION_157();
        MEMORY[0x277C76A80](v19);
        OUTLINED_FUNCTION_97();
        sub_2753B6688();
      }

      else
      {
        OUTLINED_FUNCTION_156();
      }

      v32 = OUTLINED_FUNCTION_135();
      sub_2752F2350(v32, v33);

    case 3u:
      v23 = *v14;
      v24 = *(v14 + 1);
      v25 = *(v14 + 2);
      v26 = *(v14 + 3);
      v27 = *(v14 + 4);
      MEMORY[0x277C76A80](4);
      MEMORY[0x277C76A80](v23);
      OUTLINED_FUNCTION_152();
      sub_2753B6248();
      OUTLINED_FUNCTION_97();
      sub_2753B6248();
      sub_2752F2350(v24, v25);
      return sub_2752F2350(v26, v27);
    case 4u:
      OUTLINED_FUNCTION_48();
      sub_2752F2680();
      MEMORY[0x277C76A80](5);
      if (*(v7 + 8) == 1)
      {
        OUTLINED_FUNCTION_156();
      }

      else
      {
        v34 = *v7;
        OUTLINED_FUNCTION_157();
        MEMORY[0x277C76AA0](v34);
      }

      v35 = v1[5];
      sub_2753B61F8();
      OUTLINED_FUNCTION_0_1();
      sub_2752F2964(v36, v37);
      OUTLINED_FUNCTION_33();
      sub_2753B6D38();
      v38 = v7 + v1[6];
      OUTLINED_FUNCTION_33();
      sub_2753B6D38();
      *(v7 + v1[7]);
      *(v7 + v1[7]);
      sub_2753B6688();

      v39 = *(v7 + v1[8]);
      sub_2753B77B8();
      OUTLINED_FUNCTION_8();
      return sub_2752F25C8();
    case 5u:
      v16 = 0;
      return MEMORY[0x277C76A80](v16);
    default:
      v15 = *v14;
      MEMORY[0x277C76A80](1);
      v16 = v15;
      return MEMORY[0x277C76A80](v16);
  }
}

void AssetRecipe.DRM.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v197 = v26;
  OUTLINED_FUNCTION_46();
  v27 = MEMORY[0x277D844C8];
  sub_2752F3C84(0, v28, v29, v30, MEMORY[0x277D844C8]);
  v32 = OUTLINED_FUNCTION_2_0(v31);
  v195 = v33;
  v196 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19();
  v194 = v37;
  v38 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v38, v39, v40, v41, v27);
  v184 = v42;
  OUTLINED_FUNCTION_2_0(v42);
  v188 = v43;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_19();
  v193 = v47;
  v48 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v48, v49, v50, v51, v27);
  v183 = v52;
  OUTLINED_FUNCTION_2_0(v52);
  v187 = v53;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_19();
  v192 = v57;
  v58 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v58, v59, v60, v61, v27);
  v182 = v62;
  OUTLINED_FUNCTION_2_0(v62);
  v186 = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_19();
  v191 = v67;
  v68 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v68, v69, v70, v71, v27);
  v181 = v72;
  OUTLINED_FUNCTION_2_0(v72);
  v185 = v73;
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_19();
  v190 = v77;
  v78 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v78, v79, v80, v81, v27);
  v180 = v82;
  OUTLINED_FUNCTION_2_0(v82);
  v179 = v83;
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_19();
  v189 = v87;
  v88 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v88, v89, v90, v91, v27);
  v93 = OUTLINED_FUNCTION_2_0(v92);
  v198 = v94;
  v199 = v93;
  v96 = *(v95 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_70();
  v200 = type metadata accessor for AssetRecipe.DRM(0);
  v98 = OUTLINED_FUNCTION_9(v200);
  v100 = *(v99 + 64);
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_98();
  v178 = v101 - v102;
  v104 = MEMORY[0x28223BE20](v103);
  v106 = v173 - v105;
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_142();
  v108 = MEMORY[0x28223BE20](v107);
  v110 = v173 - v109;
  v111 = MEMORY[0x28223BE20](v108);
  v113 = v173 - v112;
  MEMORY[0x28223BE20](v111);
  v115 = v25[3];
  v114 = v25[4];
  v201 = v25;
  OUTLINED_FUNCTION_67_0(v25, v115);
  sub_2752F28CC();
  sub_2753B77F8();
  if (v20)
  {
    goto LABEL_8;
  }

  v174 = v113;
  v175 = v110;
  v176 = v21;
  v177 = v106;
  v116 = v200;
  v117 = sub_2753B75C8();
  sub_2752F2B48(v117, 0);
  if (v120 == v121 >> 1)
  {
    goto LABEL_7;
  }

  v173[1] = 0;
  if (v120 >= (v121 >> 1))
  {
    __break(1u);
    JUMPOUT(0x2752ED0D4);
  }

  v122 = *(v119 + v120);
  sub_2752F3868(v120 + 1, v121 >> 1, v118, v119, v120, v121);
  v124 = v123;
  v126 = v125;
  swift_unknownObjectRelease();
  if (v124 != v126 >> 1)
  {
LABEL_7:
    v129 = sub_2753B73E8();
    OUTLINED_FUNCTION_122();
    v131 = v130;
    sub_2752F2CE0();
    v133 = *(v132 + 48);
    *v131 = v116;
    v134 = sub_2753B7508();
    OUTLINED_FUNCTION_59(v134);
    v135 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_18(v129);
    (*(v136 + 104))(v131);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_92();
    v137 = OUTLINED_FUNCTION_95();
    v138(v137);
LABEL_8:
    v139 = v201;
    goto LABEL_9;
  }

  v127 = v196;
  v128 = v195;
  switch(v122)
  {
    case 1:
      v202[0] = 1;
      sub_2752F2824();
      OUTLINED_FUNCTION_23(&type metadata for AssetRecipe.DRM.KeyBagCodingKeys, v202);
      sub_2752F2E90();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_73();
      swift_unknownObjectRelease();
      v166 = OUTLINED_FUNCTION_28();
      v167(v166);
      v168 = OUTLINED_FUNCTION_29();
      v169(v168);
      *v174 = v202[0];
      OUTLINED_FUNCTION_53();
      goto LABEL_15;
    case 2:
      v202[0] = 2;
      sub_2752F27D0();
      OUTLINED_FUNCTION_23(&type metadata for AssetRecipe.DRM.PurchaseCodingKeys, v202);
      sub_2752F2E3C();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_73();
      swift_unknownObjectRelease();
      v152 = OUTLINED_FUNCTION_28();
      v153(v152);
      v154 = OUTLINED_FUNCTION_29();
      v155(v154);
      v156 = *&v202[32];
      v157 = *&v202[16];
      v158 = v175;
      *v175 = *v202;
      v158[1] = v157;
      *(v158 + 4) = v156;
      OUTLINED_FUNCTION_53();
      goto LABEL_15;
    case 3:
      v202[0] = 3;
      sub_2752F277C();
      OUTLINED_FUNCTION_23(&type metadata for AssetRecipe.DRM.DeprotectionCodingKeys, v202);
      sub_2752F2DE8();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_73();
      swift_unknownObjectRelease();
      v159 = OUTLINED_FUNCTION_28();
      v160(v159);
      v161 = OUTLINED_FUNCTION_29();
      v162(v161);
      v163 = *&v202[32];
      v164 = *&v202[16];
      v165 = v176;
      *v176 = *v202;
      v165[1] = v164;
      *(v165 + 4) = v163;
      OUTLINED_FUNCTION_53();
      goto LABEL_15;
    case 4:
      v202[0] = 4;
      sub_2752F2728();
      OUTLINED_FUNCTION_23(&type metadata for AssetRecipe.DRM.SecurityCodingKeys, v202);
      sub_2752F2D94();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_73();
      swift_unknownObjectRelease();
      v147 = OUTLINED_FUNCTION_28();
      v148(v147);
      v149 = OUTLINED_FUNCTION_29();
      v150(v149);
      v151 = v177;
      *v177 = v202[0];
      *(v151 + 8) = *&v202[8];
      *(v151 + 24) = *&v202[24];
      OUTLINED_FUNCTION_53();
LABEL_15:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7();
      sub_2752F2680();
      goto LABEL_16;
    case 5:
      v202[0] = 5;
      sub_2752F26D4();
      v140 = v194;
      OUTLINED_FUNCTION_23(&type metadata for AssetRecipe.DRM.FairplayStreamingCodingKeys, v202);
      type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
      OUTLINED_FUNCTION_38();
      sub_2752F2964(v145, v146);
      OUTLINED_FUNCTION_88();
      sub_2753B75B8();
      swift_unknownObjectRelease();
      (*(v128 + 8))(v140, v127);
      OUTLINED_FUNCTION_92();
      v170 = OUTLINED_FUNCTION_52();
      v171(v170);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7();
      sub_2752F2680();
      v172 = v201;
      goto LABEL_17;
    default:
      v202[0] = 0;
      sub_2752F2878();
      OUTLINED_FUNCTION_23(&type metadata for AssetRecipe.DRM.NoneCodingKeys, v202);
      swift_unknownObjectRelease();
      v141 = OUTLINED_FUNCTION_66(&a12);
      v142(v141, v180);
      OUTLINED_FUNCTION_92();
      v143 = OUTLINED_FUNCTION_52();
      v144(v143);
      swift_storeEnumTagMultiPayload();
LABEL_16:
      v172 = v201;
LABEL_17:
      OUTLINED_FUNCTION_7();
      sub_2752F2680();
      v139 = v172;
      break;
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v139);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

void AssetRecipe.DRM.KeyBag.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_41();
  v4 = MEMORY[0x277D84538];
  sub_2752F3C84(0, v5, v6, v7, MEMORY[0x277D84538]);
  v9 = OUTLINED_FUNCTION_2_0(v8);
  v46 = v10;
  v47 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_134(v14);
  v15 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v15, v16, v17, v18, v4);
  v20 = OUTLINED_FUNCTION_2_0(v19);
  v43 = v21;
  v44 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_133(v25);
  v26 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v26, v27, v28, &type metadata for AssetRecipe.DRM.KeyBag.CodingKeys, v4);
  v30 = v29;
  OUTLINED_FUNCTION_2_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_30();
  v36 = *v0;
  v37 = v3[4];
  OUTLINED_FUNCTION_67_0(v3, v3[3]);
  sub_2752F2F8C();
  OUTLINED_FUNCTION_104();
  v38 = (v32 + 8);
  if (v36)
  {
    OUTLINED_FUNCTION_77();
    sub_2752F2EE4();
    v39 = v45;
    OUTLINED_FUNCTION_35();
    sub_2753B75E8();
    v41 = v46;
    v40 = v47;
  }

  else
  {
    sub_2752F2F38();
    v39 = v42;
    OUTLINED_FUNCTION_35();
    sub_2753B75E8();
    v41 = v43;
    v40 = v44;
  }

  (*(v41 + 8))(v39, v40);
  (*v38)(v1, v30);
  OUTLINED_FUNCTION_61();
}

uint64_t _s015_SonicKit_MusicB011AssetRecipeV3DRMO19SecurityKeyMaterialV7VariantO9hashValueSivg_0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_119();
  return sub_2753B77D8();
}

void AssetRecipe.DRM.KeyBag.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_60();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  OUTLINED_FUNCTION_41();
  v28 = MEMORY[0x277D844C8];
  sub_2752F3C84(0, v29, v30, v31, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v32);
  v80 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_134(v37);
  v38 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v38, v39, v40, v41, v28);
  v43 = v42;
  OUTLINED_FUNCTION_2_0(v42);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_14();
  v47 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v47, v48, v49, &type metadata for AssetRecipe.DRM.KeyBag.CodingKeys, v28);
  v51 = v50;
  OUTLINED_FUNCTION_2_0(v50);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_30();
  v55 = v27[4];
  OUTLINED_FUNCTION_67_0(v27, v27[3]);
  sub_2752F2F8C();
  OUTLINED_FUNCTION_93();
  if (!v23)
  {
    v56 = OUTLINED_FUNCTION_102();
    sub_2752F2B48(v56, 0);
    if (v58 != v57 >> 1)
    {
      OUTLINED_FUNCTION_31();
      if (v63 == v64)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_117(v59, v60, v61, v62);
      OUTLINED_FUNCTION_154();
      if (!(&type metadata for AssetRecipe.DRM.KeyBag.CodingKeys >> 1))
      {
        if (v51)
        {
          OUTLINED_FUNCTION_77();
          sub_2752F2EE4();
          OUTLINED_FUNCTION_25(&type metadata for AssetRecipe.DRM.KeyBag.SubscriptionCodingKeys, &a13);
          OUTLINED_FUNCTION_63();
          swift_unknownObjectRelease();
          (*(v80 + 8))(v81, v43);
        }

        else
        {
          a12 = 0;
          sub_2752F2F38();
          OUTLINED_FUNCTION_25(&type metadata for AssetRecipe.DRM.KeyBag.PurchaseCodingKeys, &a12);
          OUTLINED_FUNCTION_63();
          swift_unknownObjectRelease();
          v76 = OUTLINED_FUNCTION_83();
          v77(v76);
        }

        v78 = OUTLINED_FUNCTION_68();
        v79(v78);
        *v51 = v51;
        v75 = 0;
        goto LABEL_10;
      }
    }

    v65 = sub_2753B73E8();
    OUTLINED_FUNCTION_122();
    v67 = v66;
    sub_2752F2CE0();
    v69 = *(v68 + 48);
    *v67 = &type metadata for AssetRecipe.DRM.KeyBag;
    v70 = sub_2753B7508();
    OUTLINED_FUNCTION_59(v70);
    v71 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_18(v65);
    (*(v72 + 104))(v67);
    swift_willThrow();
    swift_unknownObjectRelease();
    v73 = OUTLINED_FUNCTION_125();
    v74(v73);
    v27 = 0;
  }

  v75 = v27;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v75);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

uint64_t sub_2752ED7C4()
{
  v1 = *v0;
  sub_2753B7798();
  OUTLINED_FUNCTION_119();
  return sub_2753B77D8();
}

uint64_t static AssetRecipe.DRM.SuzeLeaseInfo.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_2753B7718();
  }
}

void AssetRecipe.DRM.SuzeLeaseInfo.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_36();
  sub_2752F3C84(0, v4, v5, &type metadata for AssetRecipe.DRM.SuzeLeaseInfo.CodingKeys, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_21();
  v12 = *v0;
  v17 = *(v0 + 2);
  v18 = *(v0 + 1);
  v13 = v3[4];
  OUTLINED_FUNCTION_67_0(v3, v3[3]);
  sub_2752F2FE0();
  OUTLINED_FUNCTION_149();
  sub_2753B7808();
  sub_2752F3034();
  sub_2753B7698();
  if (!v1)
  {
    OUTLINED_FUNCTION_22();
    sub_2753B7658();
  }

  v14 = *(v8 + 8);
  v15 = OUTLINED_FUNCTION_114();
  v16(v15);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

uint64_t AssetRecipe.DRM.SuzeLeaseInfo.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  MEMORY[0x277C76A80](*v0);
  OUTLINED_FUNCTION_101();

  return sub_2753B6688();
}

uint64_t AssetRecipe.DRM.SuzeLeaseInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_119();
  sub_2753B6688();
  return sub_2753B77D8();
}

void AssetRecipe.DRM.SuzeLeaseInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  OUTLINED_FUNCTION_60();
  v16 = v15;
  v31 = v17;
  OUTLINED_FUNCTION_36();
  sub_2752F3C84(0, v18, v19, &type metadata for AssetRecipe.DRM.SuzeLeaseInfo.CodingKeys, MEMORY[0x277D844C8]);
  v21 = v20;
  OUTLINED_FUNCTION_2_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_14();
  v27 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_2752F2FE0();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (!v13)
  {
    sub_2752F3088();
    sub_2753B75B8();
    v28 = sub_2753B7578();
    v30 = v29;
    (*(v23 + 8))(v14, v21);
    *v31 = a13;
    *(v31 + 8) = v28;
    *(v31 + 16) = v30;
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

uint64_t sub_2752EDC2C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_2753B7798();
  MEMORY[0x277C76A80](v1);
  sub_2753B6688();
  return sub_2753B77D8();
}

void AssetRecipe.DRM.SuzeLeaseInfo.MediaType.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_49();
  v4 = MEMORY[0x277D84538];
  sub_2752F3C84(0, v5, v6, v7, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v12 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v12, v13, v14, v15, v4);
  v17 = OUTLINED_FUNCTION_2_0(v16);
  v111 = v18;
  v112 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_19();
  v110 = v22;
  v23 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v23, v24, v25, v26, v4);
  v28 = OUTLINED_FUNCTION_2_0(v27);
  v108 = v29;
  v109 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_19();
  v107 = v33;
  v34 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v34, v35, v36, v37, v4);
  v39 = OUTLINED_FUNCTION_2_0(v38);
  v105 = v40;
  v106 = v39;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_19();
  v104 = v44;
  v45 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v45, v46, v47, v48, v4);
  v50 = OUTLINED_FUNCTION_2_0(v49);
  v102 = v51;
  v103 = v50;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_19();
  v101 = v55;
  v56 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v56, v57, v58, v59, v4);
  v61 = OUTLINED_FUNCTION_2_0(v60);
  v99 = v62;
  v100 = v61;
  v64 = *(v63 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_19();
  v98 = v66;
  v67 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v67, v68, v69, v70, v4);
  v72 = v71;
  OUTLINED_FUNCTION_2_0(v71);
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_70();
  v76 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v76, v77, v78, &type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.CodingKeys, v4);
  OUTLINED_FUNCTION_2_0(v79);
  v81 = v80;
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_20();
  v85 = *v1;
  v86 = v3[4];
  OUTLINED_FUNCTION_67_0(v3, v3[3]);
  sub_2752F3328();
  OUTLINED_FUNCTION_148();
  sub_2753B7808();
  v87 = (v81 + 8);
  switch(v85)
  {
    case 1:
      sub_2752F3280();
      v91 = v98;
      OUTLINED_FUNCTION_16();
      v93 = v99;
      v92 = v100;
      goto LABEL_8;
    case 2:
      sub_2752F322C();
      v91 = v101;
      OUTLINED_FUNCTION_16();
      v93 = v102;
      v92 = v103;
      goto LABEL_8;
    case 3:
      OUTLINED_FUNCTION_128();
      sub_2752F31D8();
      v91 = v104;
      OUTLINED_FUNCTION_16();
      v93 = v105;
      v92 = v106;
      goto LABEL_8;
    case 4:
      sub_2752F3184();
      v91 = v107;
      OUTLINED_FUNCTION_16();
      v93 = v108;
      v92 = v109;
      goto LABEL_8;
    case 5:
      sub_2752F3130();
      v91 = v110;
      OUTLINED_FUNCTION_16();
      v93 = v111;
      v92 = v112;
LABEL_8:
      (*(v93 + 8))(v91, v92);
      v94 = *v87;
      v95 = OUTLINED_FUNCTION_53();
      goto LABEL_11;
    case 6:
      sub_2752F30DC();
      OUTLINED_FUNCTION_35();
      sub_2753B75E8();
      v88 = OUTLINED_FUNCTION_109();
      goto LABEL_10;
    default:
      sub_2752F32D4();
      OUTLINED_FUNCTION_35();
      sub_2753B75E8();
      v88 = OUTLINED_FUNCTION_84();
      v90 = v72;
LABEL_10:
      v89(v88, v90);
      v97 = *v87;
      v95 = OUTLINED_FUNCTION_97();
LABEL_11:
      v96(v95);
      OUTLINED_FUNCTION_61();
      return;
  }
}

void AssetRecipe.DRM.SuzeLeaseInfo.MediaType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_60();
  a26 = v29;
  a27 = v30;
  v32 = v31;
  v132 = v33;
  OUTLINED_FUNCTION_49();
  v34 = MEMORY[0x277D844C8];
  sub_2752F3C84(0, v35, v36, v37, MEMORY[0x277D844C8]);
  v131 = v38;
  OUTLINED_FUNCTION_2_0(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_133(v42);
  v43 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v43, v44, v45, v46, v34);
  OUTLINED_FUNCTION_2_0(v47);
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_19();
  v51 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v51, v52, v53, v54, v34);
  OUTLINED_FUNCTION_2_0(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_19();
  v59 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v59, v60, v61, v62, v34);
  OUTLINED_FUNCTION_2_0(v63);
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_19();
  v67 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v67, v68, v69, v70, v34);
  OUTLINED_FUNCTION_2_0(v71);
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_19();
  v75 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v75, v76, v77, v78, v34);
  OUTLINED_FUNCTION_2_0(v79);
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_19();
  v83 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v83, v84, v85, v86, v34);
  v88 = v87;
  OUTLINED_FUNCTION_2_0(v87);
  v90 = *(v89 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_14();
  v92 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v92, v93, v94, &type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.CodingKeys, v34);
  v96 = v95;
  OUTLINED_FUNCTION_2_0(v95);
  v98 = *(v97 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_70();
  v100 = v32[4];
  v133 = v32;
  OUTLINED_FUNCTION_67_0(v32, v32[3]);
  sub_2752F3328();
  sub_2753B77F8();
  if (v27)
  {
    goto LABEL_9;
  }

  v101 = sub_2753B75C8();
  sub_2752F2B48(v101, 0);
  v103 = v102;
  if (v105 == v104 >> 1)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_31();
  if (v110 == v111)
  {
    __break(1u);
    JUMPOUT(0x2752EEB80);
  }

  v130 = *(v109 + v107);
  sub_2752F3868(v107 + 1, v106, v103, v109, v107, v108);
  v113 = v112;
  v115 = v114;
  swift_unknownObjectRelease();
  if (v113 != v115 >> 1)
  {
LABEL_8:
    v119 = sub_2753B73E8();
    OUTLINED_FUNCTION_122();
    v121 = v120;
    sub_2752F2CE0();
    v123 = *(v122 + 48);
    *v121 = &type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType;
    v124 = sub_2753B7508();
    OUTLINED_FUNCTION_59(v124);
    v125 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_18(v119);
    (*(v126 + 104))(v121);
    swift_willThrow();
    swift_unknownObjectRelease();
    v127 = OUTLINED_FUNCTION_84();
    v128(v127, v96);
LABEL_9:
    v129 = v133;
    goto LABEL_10;
  }

  switch(v130)
  {
    case 1:
      a12 = 1;
      sub_2752F3280();
      OUTLINED_FUNCTION_12(&type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.MovieCodingKeys, &a12);
      OUTLINED_FUNCTION_85();
      swift_unknownObjectRelease();
      goto LABEL_16;
    case 2:
      a13 = 2;
      sub_2752F322C();
      OUTLINED_FUNCTION_12(&type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.PodcastCodingKeys, &a13);
      OUTLINED_FUNCTION_85();
      swift_unknownObjectRelease();
      goto LABEL_16;
    case 3:
      OUTLINED_FUNCTION_128();
      sub_2752F31D8();
      OUTLINED_FUNCTION_12(&type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.AudioBookCodingKeys, &a14);
      OUTLINED_FUNCTION_85();
      swift_unknownObjectRelease();
      goto LABEL_16;
    case 4:
      a15 = 4;
      sub_2752F3184();
      OUTLINED_FUNCTION_12(&type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.BookletCodingKeys, &a15);
      OUTLINED_FUNCTION_85();
      swift_unknownObjectRelease();
      goto LABEL_16;
    case 5:
      a16 = 5;
      sub_2752F3130();
      OUTLINED_FUNCTION_12(&type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.MusicVideoCodingKeys, &a16);
      OUTLINED_FUNCTION_85();
      swift_unknownObjectRelease();
LABEL_16:
      v116 = OUTLINED_FUNCTION_109();
      break;
    case 6:
      a17 = 6;
      sub_2752F30DC();
      OUTLINED_FUNCTION_12(&type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.TvEpisodeCodingKeys, &a17);
      OUTLINED_FUNCTION_85();
      swift_unknownObjectRelease();
      v116 = OUTLINED_FUNCTION_109();
      v118 = v131;
      break;
    default:
      a11 = 0;
      sub_2752F32D4();
      OUTLINED_FUNCTION_12(&type metadata for AssetRecipe.DRM.SuzeLeaseInfo.MediaType.SongCodingKeys, &a11);
      OUTLINED_FUNCTION_85();
      swift_unknownObjectRelease();
      v116 = OUTLINED_FUNCTION_109();
      v118 = v88;
      break;
  }

  v117(v116, v118);
  (*(v113 + 8))(v28, v96);
  v129 = v133;
  *v132 = v130;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v129);
  OUTLINED_FUNCTION_61();
}

uint64_t static AssetRecipe.DRM.FairPlayStreaming.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v4 & 1;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_11;
    }
  }

  v5 = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
  v6 = v5[5];
  if ((sub_2753B61A8() & 1) == 0 || (v7 = v5[6], (sub_2753B61A8() & 1) == 0) || (sub_2752E8D08(*(a1 + v5[7]), *(a2 + v5[7])) & 1) == 0)
  {
LABEL_11:
    v4 = 0;
    return v4 & 1;
  }

  v4 = *(a1 + v5[8]) ^ *(a2 + v5[8]) ^ 1;
  return v4 & 1;
}

void AssetRecipe.DRM.FairPlayStreaming.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_42();
  sub_2752F3C84(0, v5, v6, &type metadata for AssetRecipe.DRM.FairPlayStreaming.CodingKeys, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_21();
  v13 = v4[4];
  OUTLINED_FUNCTION_67_0(v4, v4[3]);
  sub_2752F3520();
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_81();
  sub_2753B7808();
  v14 = *v2;
  v15 = *(v2 + 8);
  OUTLINED_FUNCTION_88();
  sub_2753B7648();
  if (!v1)
  {
    v16 = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
    v17 = v16[5];
    OUTLINED_FUNCTION_143();
    sub_2753B61F8();
    OUTLINED_FUNCTION_0_1();
    sub_2752F2964(v18, v19);
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_88();
    sub_2753B7698();
    v20 = v16[6];
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_88();
    sub_2753B7698();
    v25 = *(v2 + v16[7]);
    sub_2752F3574();
    OUTLINED_FUNCTION_88();
    sub_2753B7698();
    v21 = *(v2 + v16[8]);
    OUTLINED_FUNCTION_88();
    sub_2753B7668();
  }

  v22 = *(v9 + 8);
  v23 = OUTLINED_FUNCTION_114();
  v24(v23);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

uint64_t AssetRecipe.DRM.FairPlayStreaming.hash(into:)()
{
  v1 = v0;
  if (*(v0 + 8) == 1)
  {
    OUTLINED_FUNCTION_156();
  }

  else
  {
    v2 = *v0;
    OUTLINED_FUNCTION_157();
    MEMORY[0x277C76AA0](v2);
  }

  v3 = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
  v4 = v3[5];
  sub_2753B61F8();
  OUTLINED_FUNCTION_0_1();
  sub_2752F2964(v5, v6);
  OUTLINED_FUNCTION_33();
  sub_2753B6D38();
  v7 = v1 + v3[6];
  OUTLINED_FUNCTION_33();
  sub_2753B6D38();
  *(v1 + v3[7]);
  *(v1 + v3[7]);
  sub_2753B6688();

  v8 = *(v1 + v3[8]);
  return sub_2753B77B8();
}

void AssetRecipe.DRM.FairPlayStreaming.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  OUTLINED_FUNCTION_60();
  v65 = v11;
  v13 = v12;
  v63 = v14;
  v15 = sub_2753B61F8();
  v68 = OUTLINED_FUNCTION_2_0(v15);
  v69 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_98();
  v21 = (v19 - v20);
  MEMORY[0x28223BE20](v22);
  v24 = v61 - v23;
  OUTLINED_FUNCTION_42();
  sub_2752F3C84(0, v25, v26, &type metadata for AssetRecipe.DRM.FairPlayStreaming.CodingKeys, MEMORY[0x277D844C8]);
  v64 = v27;
  OUTLINED_FUNCTION_2_0(v27);
  v29 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_70();
  v67 = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(0);
  v33 = OUTLINED_FUNCTION_9(v67);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10();
  v38 = v37 - v36;
  v39 = v13[3];
  v40 = v13[4];
  v66 = v13;
  v41 = OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_67_0(v41, v42);
  sub_2752F3520();
  v43 = v65;
  sub_2753B77F8();
  if (v43)
  {
    __swift_destroy_boxed_opaque_existential_1(v66);
  }

  else
  {
    v65 = v29;
    OUTLINED_FUNCTION_34();
    v44 = v38;
    *v38 = sub_2753B7568();
    *(v38 + 8) = v45 & 1;
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_0_1();
    v48 = sub_2752F2964(v46, v47);
    v49 = v24;
    v50 = v68;
    OUTLINED_FUNCTION_34();
    sub_2753B75B8();
    v61[1] = v48;
    v51 = v67;
    v52 = v67[5];
    v53 = *(v69 + 32);
    v62 = v44;
    v53(v44 + v52, v49, v50);
    OUTLINED_FUNCTION_124();
    v54 = v21;
    OUTLINED_FUNCTION_34();
    sub_2753B75B8();
    v55 = v62;
    v53(v62 + v51[6], v54, v50);
    sub_2752F35C8();
    v56 = v64;
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_34();
    sub_2753B75B8();
    *(v55 + v51[7]) = a11;
    OUTLINED_FUNCTION_34();
    v57 = sub_2753B7588();
    v58 = v51[8];
    v59 = OUTLINED_FUNCTION_84();
    v60(v59, v56);
    *(v55 + v58) = v57 & 1;
    sub_2752F3C30();
    __swift_destroy_boxed_opaque_existential_1(v66);
    OUTLINED_FUNCTION_8();
    sub_2752F25C8();
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_2752EF668(void *a1, void *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  if ((MEMORY[0x277C75500](*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (v7)
    {
      if (v6 == v3)
      {
        if (v2 == v5 && v4 == v7)
        {
          return 1;
        }

        OUTLINED_FUNCTION_76();
        if (OUTLINED_FUNCTION_159())
        {
          return 1;
        }
      }

      return 0;
    }

LABEL_12:

    return 0;
  }

  if (v7)
  {
    goto LABEL_12;
  }

  return 1;
}

void sub_2752EF770()
{
  OUTLINED_FUNCTION_60();
  v26 = v2;
  v4 = v3;
  sub_2752F3C84(0, v5, v6, v7, MEMORY[0x277D84538]);
  v9 = v8;
  OUTLINED_FUNCTION_2_0(v8);
  v27 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_20();
  v15 = *v0;
  v14 = v0[1];
  v23 = v0[3];
  v24 = v0[2];
  v25 = v0[4];
  v16 = v4[4];
  OUTLINED_FUNCTION_67_0(v4, v4[3]);
  v17 = sub_2752F22F8(v15, v14);
  v26(v17);
  OUTLINED_FUNCTION_146();
  sub_2753B7808();
  sub_2752F33D0();
  sub_2753B7698();
  sub_2752F2350(v15, v14);
  if (v1)
  {
    v18 = OUTLINED_FUNCTION_83();
    v19(v18, v9);
  }

  else
  {
    OUTLINED_FUNCTION_77();
    sub_2752F3424();

    sub_2753B7638();

    v20 = *(v27 + 8);
    v21 = OUTLINED_FUNCTION_97();
    v22(v21);
  }

  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

uint64_t sub_2752EF950()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  sub_2753B6248();
  if (!v5)
  {
    return sub_2753B77B8();
  }

  sub_2753B77B8();
  MEMORY[0x277C76A80](v3);

  return sub_2753B6688();
}

uint64_t sub_2752EF9E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  OUTLINED_FUNCTION_100();
  sub_2753B6248();
  sub_2753B77B8();
  if (v5)
  {
    MEMORY[0x277C76A80](v3);
    sub_2753B6688();
  }

  return sub_2753B77D8();
}

void sub_2752EFABC()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v4 = v3;
  v27 = v5;
  sub_2752F3C84(0, v6, v7, v8, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14();
  v15 = v4[3];
  v16 = v4[4];
  v17 = OUTLINED_FUNCTION_52();
  v19 = OUTLINED_FUNCTION_67_0(v17, v18);
  v2(v19);
  sub_2753B77F8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_2752F3478();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_110();
    sub_2753B75B8();
    OUTLINED_FUNCTION_77();
    sub_2752F34CC();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_110();
    sub_2753B7558();
    v20 = *(v11 + 8);
    v21 = OUTLINED_FUNCTION_71();
    v22(v21);

    *v27 = v28;
    v27[1] = v29;
    v27[2] = v28;
    v27[3] = v29;
    v27[4] = v30;
    v23 = OUTLINED_FUNCTION_111();
    sub_2752F22F8(v23, v24);

    __swift_destroy_boxed_opaque_existential_1(v4);
    v25 = OUTLINED_FUNCTION_111();
    sub_2752F2350(v25, v26);
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_2752EFCE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v6 = *(v4 + 4);
  v7 = v4[1];
  v10 = *v4;
  v11 = v7;
  v12 = v6;
  sub_2753B7798();
  a4(v9);
  return sub_2753B77D8();
}

uint64_t static AssetRecipe.DRM.SecurityKeyMaterial.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v2 = a1[3];
    v3 = a1[4];
    v4 = a2[3];
    v5 = a2[4];
    if (MEMORY[0x277C75500](a1[1], a1[2], a2[1], a2[2]))
    {
      OUTLINED_FUNCTION_27();

      JUMPOUT(0x277C75500);
    }
  }

  return 0;
}

void AssetRecipe.DRM.SecurityKeyMaterial.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  sub_2752F3C84(0, v4, v5, &type metadata for AssetRecipe.DRM.SecurityKeyMaterial.CodingKeys, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_21();
  v12 = *v0;
  v21 = v0[2];
  v22 = v0[1];
  v19 = v0[4];
  v20 = v0[3];
  v13 = v3[4];
  OUTLINED_FUNCTION_67_0(v3, v3[3]);
  sub_2752F3670();
  OUTLINED_FUNCTION_149();
  sub_2753B7808();
  sub_2752F36C4();
  OUTLINED_FUNCTION_99();
  sub_2753B7698();
  if (!v1)
  {
    OUTLINED_FUNCTION_77();
    sub_2752F22F8(v14, v15);
    sub_2752F33D0();
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_58();
    sub_2753B7698();
    sub_2752F2350(v22, v21);
    sub_2752F22F8(v20, v19);
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_58();
    sub_2753B7698();
    sub_2752F2350(v20, v19);
  }

  v16 = *(v8 + 8);
  v17 = OUTLINED_FUNCTION_114();
  v18(v17);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

uint64_t AssetRecipe.DRM.SecurityKeyMaterial.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x277C76A80](*v0);
  OUTLINED_FUNCTION_101();
  sub_2753B6248();
  OUTLINED_FUNCTION_33();

  return sub_2753B6248();
}

uint64_t AssetRecipe.DRM.SecurityKeyMaterial.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_119();
  sub_2753B6248();
  sub_2753B6248();
  return sub_2753B77D8();
}

void AssetRecipe.DRM.SecurityKeyMaterial.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v20 = v3;
  OUTLINED_FUNCTION_47();
  sub_2752F3C84(0, v4, v5, &type metadata for AssetRecipe.DRM.SecurityKeyMaterial.CodingKeys, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14();
  v12 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2752F3670();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_81();
  sub_2753B77F8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_2752F3718();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_110();
    sub_2753B75B8();
    OUTLINED_FUNCTION_77();
    sub_2752F3478();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_110();
    sub_2753B75B8();
    OUTLINED_FUNCTION_35();
    OUTLINED_FUNCTION_110();
    sub_2753B75B8();
    v13 = *(v8 + 8);
    v14 = OUTLINED_FUNCTION_71();
    v15(v14);
    *v20 = v21;
    *(v20 + 8) = v21;
    *(v20 + 16) = v22;
    *(v20 + 24) = v21;
    *(v20 + 32) = v22;
    sub_2752F22F8(v21, v22);
    v16 = OUTLINED_FUNCTION_115();
    sub_2752F22F8(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_2752F2350(v21, v22);
    v18 = OUTLINED_FUNCTION_115();
    sub_2752F2350(v18, v19);
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_2752F02F8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_2753B7798();
  MEMORY[0x277C76A80](v1);
  sub_2753B6248();
  sub_2753B6248();
  return sub_2753B77D8();
}

void AssetRecipe.DRM.SecurityKeyMaterial.Variant.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_45();
  v4 = MEMORY[0x277D84538];
  sub_2752F3C84(0, v5, v6, v7, MEMORY[0x277D84538]);
  v9 = OUTLINED_FUNCTION_2_0(v8);
  v46 = v10;
  v47 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_134(v14);
  v15 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v15, v16, v17, v18, v4);
  v20 = OUTLINED_FUNCTION_2_0(v19);
  v43 = v21;
  v44 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_133(v25);
  v26 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v26, v27, v28, &type metadata for AssetRecipe.DRM.SecurityKeyMaterial.Variant.CodingKeys, v4);
  v30 = v29;
  OUTLINED_FUNCTION_2_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_30();
  v36 = *v0;
  v37 = v3[4];
  OUTLINED_FUNCTION_67_0(v3, v3[3]);
  sub_2752F3814();
  OUTLINED_FUNCTION_104();
  v38 = (v32 + 8);
  if (v36)
  {
    OUTLINED_FUNCTION_77();
    sub_2752F376C();
    v39 = v45;
    OUTLINED_FUNCTION_35();
    sub_2753B75E8();
    v41 = v46;
    v40 = v47;
  }

  else
  {
    sub_2752F37C0();
    v39 = v42;
    OUTLINED_FUNCTION_35();
    sub_2753B75E8();
    v41 = v43;
    v40 = v44;
  }

  (*(v41 + 8))(v39, v40);
  (*v38)(v1, v30);
  OUTLINED_FUNCTION_61();
}

void AssetRecipe.DRM.SecurityKeyMaterial.Variant.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_60();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  OUTLINED_FUNCTION_45();
  v28 = MEMORY[0x277D844C8];
  sub_2752F3C84(0, v29, v30, v31, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v32);
  v80 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_134(v37);
  v38 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v38, v39, v40, v41, v28);
  v43 = v42;
  OUTLINED_FUNCTION_2_0(v42);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_14();
  v47 = OUTLINED_FUNCTION_17();
  sub_2752F3C84(v47, v48, v49, &type metadata for AssetRecipe.DRM.SecurityKeyMaterial.Variant.CodingKeys, v28);
  v51 = v50;
  OUTLINED_FUNCTION_2_0(v50);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_30();
  v55 = v27[4];
  OUTLINED_FUNCTION_67_0(v27, v27[3]);
  sub_2752F3814();
  OUTLINED_FUNCTION_93();
  if (!v23)
  {
    v56 = OUTLINED_FUNCTION_102();
    sub_2752F2B48(v56, 0);
    if (v58 != v57 >> 1)
    {
      OUTLINED_FUNCTION_31();
      if (v63 == v64)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_117(v59, v60, v61, v62);
      OUTLINED_FUNCTION_154();
      if (!(&type metadata for AssetRecipe.DRM.SecurityKeyMaterial.Variant.CodingKeys >> 1))
      {
        if (v51)
        {
          OUTLINED_FUNCTION_77();
          sub_2752F376C();
          OUTLINED_FUNCTION_25(&type metadata for AssetRecipe.DRM.SecurityKeyMaterial.Variant.MiniCodingKeys, &a13);
          OUTLINED_FUNCTION_63();
          swift_unknownObjectRelease();
          (*(v80 + 8))(v81, v43);
        }

        else
        {
          a12 = 0;
          sub_2752F37C0();
          OUTLINED_FUNCTION_25(&type metadata for AssetRecipe.DRM.SecurityKeyMaterial.Variant.FullCodingKeys, &a12);
          OUTLINED_FUNCTION_63();
          swift_unknownObjectRelease();
          v76 = OUTLINED_FUNCTION_83();
          v77(v76);
        }

        v78 = OUTLINED_FUNCTION_68();
        v79(v78);
        *v51 = v51;
        v75 = 0;
        goto LABEL_10;
      }
    }

    v65 = sub_2753B73E8();
    OUTLINED_FUNCTION_122();
    v67 = v66;
    sub_2752F2CE0();
    v69 = *(v68 + 48);
    *v67 = &type metadata for AssetRecipe.DRM.SecurityKeyMaterial.Variant;
    v70 = sub_2753B7508();
    OUTLINED_FUNCTION_59(v70);
    v71 = *MEMORY[0x277D84160];
    OUTLINED_FUNCTION_18(v65);
    (*(v72 + 104))(v67);
    swift_willThrow();
    swift_unknownObjectRelease();
    v73 = OUTLINED_FUNCTION_125();
    v74(v73);
    v27 = 0;
  }

  v75 = v27;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v75);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

void static AssetRecipe.iTunesStoreContentInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_153();
  v2 = v1;
  v4 = v3;
  v5 = sub_2753B61F8();
  v6 = OUTLINED_FUNCTION_2_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10();
  v13 = v12 - v11;
  v14 = MEMORY[0x277CC9260];
  sub_2752F251C(0, &qword_2809C08E8, MEMORY[0x277CC9260]);
  OUTLINED_FUNCTION_75(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_21();
  sub_2752F38E4(0, &qword_2809C0C40, &qword_2809C08E8, v14);
  v20 = v19;
  OUTLINED_FUNCTION_9(v19);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_20();
  v24 = *(v2 + 8);
  if (*(v4 + 8))
  {
    if (!*(v2 + 8))
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (*v4 != *v2)
    {
      v24 = 1;
    }

    if (v24)
    {
      goto LABEL_54;
    }
  }

  v25 = *(v4 + 24);
  v26 = *(v2 + 24);
  if (v25)
  {
    if (!v26)
    {
      goto LABEL_54;
    }

    v27 = *(v4 + 16) == *(v2 + 16) && v25 == v26;
    if (!v27 && (sub_2753B7718() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v26)
  {
    goto LABEL_54;
  }

  v28 = *(v2 + 32);
  if (*(v4 + 32))
  {
    if (!v28)
    {
      goto LABEL_54;
    }

    v29 = *(v2 + 32);

    v30 = OUTLINED_FUNCTION_111();
    v32 = sub_2752F20F8(v30, v31);

    if ((v32 & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v28)
  {
    goto LABEL_54;
  }

  v33 = *(v4 + 48);
  v34 = *(v2 + 48);
  if (v33)
  {
    if (!v34)
    {
      goto LABEL_54;
    }

    v35 = *(v4 + 40) == *(v2 + 40) && v33 == v34;
    if (!v35 && (sub_2753B7718() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v34)
  {
    goto LABEL_54;
  }

  v36 = *(v4 + 64);
  v37 = *(v2 + 64);
  if (v36)
  {
    if (!v37)
    {
      goto LABEL_54;
    }

    v38 = *(v4 + 56) == *(v2 + 56) && v36 == v37;
    if (!v38 && (sub_2753B7718() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  else if (v37)
  {
    goto LABEL_54;
  }

  v39 = *(v2 + 80);
  if (*(v4 + 80))
  {
    if (!*(v2 + 80))
    {
      goto LABEL_54;
    }

LABEL_45:
    v40 = *(type metadata accessor for AssetRecipe.iTunesStoreContentInfo(0) + 40);
    v41 = *(v20 + 48);
    sub_2752F24C4();
    sub_2752F24C4();
    OUTLINED_FUNCTION_123(&qword_2809C08E8, 1, v5);
    if (v27)
    {
      OUTLINED_FUNCTION_123(&qword_2809C08E8 + v41, 1, v5);
      if (v27)
      {
        OUTLINED_FUNCTION_4_0();
        sub_2752F3998();
        goto LABEL_54;
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_152();
      sub_2752F24C4();
      OUTLINED_FUNCTION_123(&qword_2809C08E8 + v41, 1, v5);
      if (!v42)
      {
        (*(v8 + 32))(v13, &qword_2809C08E8 + v41, v5);
        OUTLINED_FUNCTION_0_1();
        sub_2752F2964(v43, v44);
        sub_2753B6D68();
        v45 = *(v8 + 8);
        v46 = OUTLINED_FUNCTION_76();
        v45(v46);
        (v45)(v0, v5);
        OUTLINED_FUNCTION_4_0();
        sub_2752F3998();
        goto LABEL_54;
      }

      (*(v8 + 8))(v0, v5);
    }

    OUTLINED_FUNCTION_3_0();
    sub_2752F3948();
    goto LABEL_54;
  }

  if (*(v4 + 72) != *(v2 + 72))
  {
    v39 = 1;
  }

  if ((v39 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_54:
  OUTLINED_FUNCTION_155();
}

void AssetRecipe.iTunesStoreContentInfo.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_40();
  sub_2752F3C84(0, v5, v6, &type metadata for AssetRecipe.iTunesStoreContentInfo.CodingKeys, MEMORY[0x277D84538]);
  OUTLINED_FUNCTION_2_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_21();
  v13 = v4[4];
  OUTLINED_FUNCTION_67_0(v4, v4[3]);
  sub_2752F39E8();
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_81();
  sub_2753B7808();
  v14 = *v2;
  v15 = *(v2 + 8);
  OUTLINED_FUNCTION_22();
  sub_2753B7648();
  if (!v1)
  {
    v16 = v2[2];
    v17 = v2[3];
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_22();
    sub_2753B75F8();
    v30 = v2[4];
    OUTLINED_FUNCTION_124();
    sub_2752F3A3C();
    sub_2752F3A98(&qword_2809C0C68);
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_58();
    sub_2753B7638();
    v18 = v2[5];
    v19 = v2[6];
    OUTLINED_FUNCTION_128();
    OUTLINED_FUNCTION_22();
    sub_2753B75F8();
    v20 = v2[7];
    v21 = v2[8];
    OUTLINED_FUNCTION_22();
    sub_2753B75F8();
    v22 = v2[9];
    v23 = *(v2 + 80);
    OUTLINED_FUNCTION_22();
    sub_2753B7648();
    v24 = *(type metadata accessor for AssetRecipe.iTunesStoreContentInfo(0) + 40);
    sub_2753B61F8();
    OUTLINED_FUNCTION_0_1();
    sub_2752F2964(v25, v26);
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_58();
    sub_2753B7638();
  }

  v27 = *(v9 + 8);
  v28 = OUTLINED_FUNCTION_114();
  v29(v28);
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_61();
}

uint64_t AssetRecipe.iTunesStoreContentInfo.hash(into:)()
{
  OUTLINED_FUNCTION_43();
  v2 = sub_2753B61F8();
  v3 = OUTLINED_FUNCTION_2_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_10();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_4_0();
  sub_2752F251C(0, v11, v12);
  OUTLINED_FUNCTION_75(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_141();
  if (*(v0 + 8) == 1)
  {
    sub_2753B77B8();
  }

  else
  {
    v17 = *v0;
    sub_2753B77B8();
    MEMORY[0x277C76AA0](v17);
  }

  if (v0[3])
  {
    v18 = v0[2];
    sub_2753B77B8();
    OUTLINED_FUNCTION_95();
    sub_2753B6688();
  }

  else
  {
    sub_2753B77B8();
  }

  if (v0[4])
  {
    sub_2753B77B8();
    v19 = OUTLINED_FUNCTION_115();
    sub_2752F2B80(v19, v20);
  }

  else
  {
    sub_2753B77B8();
  }

  if (v0[6])
  {
    v21 = v0[5];
    sub_2753B77B8();
    OUTLINED_FUNCTION_95();
    sub_2753B6688();
  }

  else
  {
    sub_2753B77B8();
  }

  if (v0[8])
  {
    v22 = v0[7];
    sub_2753B77B8();
    OUTLINED_FUNCTION_95();
    sub_2753B6688();
  }

  else
  {
    sub_2753B77B8();
  }

  if (*(v0 + 80) == 1)
  {
    sub_2753B77B8();
  }

  else
  {
    v23 = v0[9];
    sub_2753B77B8();
    MEMORY[0x277C76AA0](v23);
  }

  v24 = *(type metadata accessor for AssetRecipe.iTunesStoreContentInfo(0) + 40);
  OUTLINED_FUNCTION_3_0();
  sub_2752F24C4();
  OUTLINED_FUNCTION_123(v1, 1, v2);
  if (v25)
  {
    return sub_2753B77B8();
  }

  (*(v5 + 32))(v10, v1, v2);
  sub_2753B77B8();
  OUTLINED_FUNCTION_0_1();
  sub_2752F2964(v26, v27);
  OUTLINED_FUNCTION_150();
  sub_2753B6D38();
  return (*(v5 + 8))(v10, v2);
}

uint64_t sub_2752F132C(void (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_100();
  a1(v3);
  return sub_2753B77D8();
}

void AssetRecipe.iTunesStoreContentInfo.init(from:)()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  OUTLINED_FUNCTION_4_0();
  sub_2752F251C(0, v3, v4);
  OUTLINED_FUNCTION_75(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_40();
  sub_2752F3C84(0, v9, v10, v11, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_2_0(v12);
  v38 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_30();
  v17 = type metadata accessor for AssetRecipe.iTunesStoreContentInfo(0);
  v18 = OUTLINED_FUNCTION_75(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10();
  v23 = v22 - v21;
  *v23 = 0;
  *(v23 + 8) = 1;
  *(v23 + 48) = 0u;
  *(v23 + 64) = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0u;
  *(v23 + 80) = 1;
  v25 = *(v24 + 48);
  v26 = sub_2753B61F8();
  __swift_storeEnumTagSinglePayload(v23 + v25, 1, 1, v26);
  v27 = v2[4];
  OUTLINED_FUNCTION_67_0(v2, v2[3]);
  sub_2752F39E8();
  sub_2753B77F8();
  if (!v0)
  {
    *v23 = sub_2753B7568();
    *(v23 + 8) = v28 & 1;
    OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_137();
    *(v23 + 16) = sub_2753B7518();
    *(v23 + 24) = v29;
    sub_2752F3A3C();
    OUTLINED_FUNCTION_124();
    sub_2752F3A98(&qword_2809C0C78);
    sub_2753B7558();
    *(v23 + 32) = v39;
    OUTLINED_FUNCTION_128();
    OUTLINED_FUNCTION_137();
    *(v23 + 40) = sub_2753B7518();
    *(v23 + 48) = v30;
    OUTLINED_FUNCTION_137();
    *(v23 + 56) = sub_2753B7518();
    *(v23 + 64) = v31;
    OUTLINED_FUNCTION_137();
    *(v23 + 72) = sub_2753B7568();
    *(v23 + 80) = v32 & 1;
    OUTLINED_FUNCTION_0_1();
    sub_2752F2964(v33, v34);
    sub_2753B7558();
    v35 = *(v38 + 8);
    v36 = OUTLINED_FUNCTION_95();
    v37(v36);
    OUTLINED_FUNCTION_3_0();
    sub_2752F2570();
    sub_2752F3C30();
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_11();
  sub_2752F25C8();
  OUTLINED_FUNCTION_61();
}

uint64_t sub_2752F1750(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_2753B7798();
  a4(v6);
  return sub_2753B77D8();
}

uint64_t sub_2752F1804()
{
  v0 = sub_2753B74E8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2752F1850(char a1)
{
  if (!a1)
  {
    return 0x6E6F6973726576;
  }

  if (a1 == 1)
  {
    return 7107189;
  }

  return 7172708;
}

uint64_t sub_2752F18B0@<X0>(uint64_t *a1@<X8>)
{
  result = AssetRecipe.CodingError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2752F1924@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2752F1804();
  *a2 = result;
  return result;
}

uint64_t sub_2752F1954@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2752F1850(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2752F1988@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2752F1804();
  *a1 = result;
  return result;
}

uint64_t sub_2752F19BC(uint64_t a1)
{
  v2 = sub_2752F3AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2752F19F8(uint64_t a1)
{
  v2 = sub_2752F3AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

void AssetRecipe.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_60();
  a22 = v26;
  a23 = v27;
  v29 = v28;
  v65 = type metadata accessor for AssetRecipe.DRM(0);
  v30 = OUTLINED_FUNCTION_9(v65);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_133(v34 - v33);
  v35 = sub_2753B61F8();
  v36 = OUTLINED_FUNCTION_2_0(v35);
  v66 = v37;
  v67 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10();
  v42 = v41 - v40;
  OUTLINED_FUNCTION_51();
  sub_2752F3C84(0, v43, v44, &type metadata for AssetRecipe.CodingKeys, MEMORY[0x277D844C8]);
  v46 = v45;
  OUTLINED_FUNCTION_2_0(v45);
  v68 = v47;
  v49 = *(v48 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_20();
  v51 = type metadata accessor for AssetRecipe(0);
  v52 = OUTLINED_FUNCTION_9(v51);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_141();
  v56 = *(v55 + 24);
  v57 = type metadata accessor for AssetRecipe.iTunesStoreContentInfo(0);
  v69 = v25;
  __swift_storeEnumTagSinglePayload(v25 + v56, 1, 1, v57);
  v58 = v29[4];
  OUTLINED_FUNCTION_67_0(v29, v29[3]);
  sub_2752F3AF8();
  OUTLINED_FUNCTION_148();
  sub_2753B77F8();
  if (v24)
  {
    goto LABEL_5;
  }

  a13 = 0;
  if (sub_2753B75A8() != 1)
  {
    a12 = 1;
    sub_2752F3C84(0, &qword_2809C0C90, sub_2752F3B4C, &type metadata for AssetRecipe.CodingError, MEMORY[0x277D64F08]);
    sub_2752F3BA0();
    OUTLINED_FUNCTION_122();
    v63 = sub_2752F3B4C();
    MEMORY[0x277C755D0](&a12, 0xD000000000000027, 0x80000002753B8310, MEMORY[0x277D84F90], &type metadata for AssetRecipe.CodingError, v63);
    swift_willThrow();
    (*(v68 + 8))(v23, v46);
LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_5();
    sub_2752F3998();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_0_1();
  sub_2752F2964(v59, v60);
  sub_2753B75B8();
  (*(v66 + 32))(v69, v42, v67);
  OUTLINED_FUNCTION_50();
  sub_2752F2964(v61, v62);
  sub_2753B75B8();
  (*(v68 + 8))(v23, v46);
  v64 = *(v51 + 20);
  OUTLINED_FUNCTION_7();
  sub_2752F2680();
  OUTLINED_FUNCTION_39();
  sub_2752F3C30();
  __swift_destroy_boxed_opaque_existential_1(v29);
  sub_2752F25C8();
LABEL_6:
  OUTLINED_FUNCTION_61();
}

void AssetRecipe.encode(to:)()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  OUTLINED_FUNCTION_51();
  sub_2752F3C84(0, v4, v5, &type metadata for AssetRecipe.CodingKeys, MEMORY[0x277D84538]);
  v7 = v6;
  OUTLINED_FUNCTION_2_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_141();
  v13 = v3[4];
  OUTLINED_FUNCTION_67_0(v3, v3[3]);
  sub_2752F3AF8();
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_81();
  sub_2753B7808();
  sub_2753B7688();
  if (!v0)
  {
    sub_2753B61F8();
    OUTLINED_FUNCTION_0_1();
    sub_2752F2964(v14, v15);
    OUTLINED_FUNCTION_138();
    sub_2753B7698();
    v16 = *(type metadata accessor for AssetRecipe(0) + 20);
    OUTLINED_FUNCTION_124();
    type metadata accessor for AssetRecipe.DRM(0);
    OUTLINED_FUNCTION_50();
    sub_2752F2964(v17, v18);
    OUTLINED_FUNCTION_138();
    sub_2753B7698();
  }

  (*(v9 + 8))(v1, v7);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_61();
}

uint64_t sub_2752F20F8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_2753842B8(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_2753B7718();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2752F22F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2752F2350(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2752F2408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetRecipe.DRM(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2752F248C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2752F24C4()
{
  v1 = OUTLINED_FUNCTION_32();
  sub_2752F251C(v1, v2, v3);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_27();
  v8(v7);
  return v0;
}

void sub_2752F251C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2753B72A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2752F2570()
{
  v1 = OUTLINED_FUNCTION_32();
  sub_2752F251C(v1, v2, v3);
  OUTLINED_FUNCTION_9(v4);
  v6 = *(v5 + 40);
  v7 = OUTLINED_FUNCTION_27();
  v8(v7);
  return v0;
}

uint64_t sub_2752F25C8()
{
  v1 = OUTLINED_FUNCTION_24();
  v3 = v2(v1);
  OUTLINED_FUNCTION_9(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void sub_2752F261C()
{
  if (!qword_2809C0908)
  {
    type metadata accessor for AssetRecipe.DRM(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809C0908);
    }
  }
}

uint64_t sub_2752F2680()
{
  v1 = OUTLINED_FUNCTION_32();
  v3 = v2(v1);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_27();
  v7(v6);
  return v0;
}

unint64_t sub_2752F26D4()
{
  result = qword_2809C0918;
  if (!qword_2809C0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0918);
  }

  return result;
}

unint64_t sub_2752F2728()
{
  result = qword_2809C0928;
  if (!qword_2809C0928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0928);
  }

  return result;
}

unint64_t sub_2752F277C()
{
  result = qword_2809C0938;
  if (!qword_2809C0938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0938);
  }

  return result;
}

unint64_t sub_2752F27D0()
{
  result = qword_2809C0948;
  if (!qword_2809C0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0948);
  }

  return result;
}

unint64_t sub_2752F2824()
{
  result = qword_2809C0958;
  if (!qword_2809C0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0958);
  }

  return result;
}

unint64_t sub_2752F2878()
{
  result = qword_2809C0968;
  if (!qword_2809C0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0968);
  }

  return result;
}

unint64_t sub_2752F28CC()
{
  result = qword_2809C0978;
  if (!qword_2809C0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0978);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2752F2964(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2752F29AC()
{
  result = qword_2809C0988;
  if (!qword_2809C0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0988);
  }

  return result;
}

unint64_t sub_2752F2A00()
{
  result = qword_2809C0990;
  if (!qword_2809C0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0990);
  }

  return result;
}

unint64_t sub_2752F2A54()
{
  result = qword_2809C0998;
  if (!qword_2809C0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0998);
  }

  return result;
}

unint64_t sub_2752F2AA8()
{
  result = qword_2809C09A0;
  if (!qword_2809C09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C09A0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_2752F2B48(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_80();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_2752F2B80(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = (v11 << 10) | (16 * v12);
    v14 = (*(a2 + 48) + v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(a2 + 56) + v13);
    v18 = *v17;
    v19 = v17[1];
    memcpy(__dst, a1, sizeof(__dst));

    sub_2753B6688();

    sub_2753B6688();

    result = sub_2753B77D8();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x277C76A80](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_2752F2CE0()
{
  if (!qword_2809C09E0)
  {
    sub_2752F2D50();
    sub_2753B73D8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809C09E0);
    }
  }
}

unint64_t sub_2752F2D50()
{
  result = qword_2809C09E8;
  if (!qword_2809C09E8)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2809C09E8);
  }

  return result;
}

unint64_t sub_2752F2D94()
{
  result = qword_2809C09F8;
  if (!qword_2809C09F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C09F8);
  }

  return result;
}

unint64_t sub_2752F2DE8()
{
  result = qword_2809C0A00;
  if (!qword_2809C0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0A00);
  }

  return result;
}

unint64_t sub_2752F2E3C()
{
  result = qword_2809C0A08;
  if (!qword_2809C0A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0A08);
  }

  return result;
}

unint64_t sub_2752F2E90()
{
  result = qword_2809C0A10;
  if (!qword_2809C0A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0A10);
  }

  return result;
}

unint64_t sub_2752F2EE4()
{
  result = qword_2809C0A20;
  if (!qword_2809C0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0A20);
  }

  return result;
}

unint64_t sub_2752F2F38()
{
  result = qword_2809C0A30;
  if (!qword_2809C0A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0A30);
  }

  return result;
}

unint64_t sub_2752F2F8C()
{
  result = qword_2809C0A40;
  if (!qword_2809C0A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0A40);
  }

  return result;
}

unint64_t sub_2752F2FE0()
{
  result = qword_2809C0A68;
  if (!qword_2809C0A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0A68);
  }

  return result;
}

unint64_t sub_2752F3034()
{
  result = qword_2809C0A70;
  if (!qword_2809C0A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0A70);
  }

  return result;
}

unint64_t sub_2752F3088()
{
  result = qword_2809C0A80;
  if (!qword_2809C0A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0A80);
  }

  return result;
}

unint64_t sub_2752F30DC()
{
  result = qword_2809C0A90;
  if (!qword_2809C0A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0A90);
  }

  return result;
}

unint64_t sub_2752F3130()
{
  result = qword_2809C0AA0;
  if (!qword_2809C0AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0AA0);
  }

  return result;
}

unint64_t sub_2752F3184()
{
  result = qword_2809C0AB0;
  if (!qword_2809C0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0AB0);
  }

  return result;
}

unint64_t sub_2752F31D8()
{
  result = qword_2809C0AC0;
  if (!qword_2809C0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0AC0);
  }

  return result;
}

unint64_t sub_2752F322C()
{
  result = qword_2809C0AD0;
  if (!qword_2809C0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0AD0);
  }

  return result;
}

unint64_t sub_2752F3280()
{
  result = qword_2809C0AE0;
  if (!qword_2809C0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0AE0);
  }

  return result;
}

unint64_t sub_2752F32D4()
{
  result = qword_2809C0AF0;
  if (!qword_2809C0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0AF0);
  }

  return result;
}

unint64_t sub_2752F3328()
{
  result = qword_2809C0B00;
  if (!qword_2809C0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0B00);
  }

  return result;
}

unint64_t sub_2752F337C()
{
  result = qword_2809C0B50;
  if (!qword_2809C0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0B50);
  }

  return result;
}

unint64_t sub_2752F33D0()
{
  result = qword_2809C0B58;
  if (!qword_2809C0B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0B58);
  }

  return result;
}

unint64_t sub_2752F3424()
{
  result = qword_2809C0B60;
  if (!qword_2809C0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0B60);
  }

  return result;
}

unint64_t sub_2752F3478()
{
  result = qword_2809C0B70;
  if (!qword_2809C0B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0B70);
  }

  return result;
}

unint64_t sub_2752F34CC()
{
  result = qword_2809C0B78;
  if (!qword_2809C0B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0B78);
  }

  return result;
}

unint64_t sub_2752F3520()
{
  result = qword_2809C0B88;
  if (!qword_2809C0B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0B88);
  }

  return result;
}

unint64_t sub_2752F3574()
{
  result = qword_2809C0B98;
  if (!qword_2809C0B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0B98);
  }

  return result;
}

unint64_t sub_2752F35C8()
{
  result = qword_2809C0BB0;
  if (!qword_2809C0BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0BB0);
  }

  return result;
}

unint64_t sub_2752F361C()
{
  result = qword_2809C0BC0;
  if (!qword_2809C0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0BC0);
  }

  return result;
}

unint64_t sub_2752F3670()
{
  result = qword_2809C0BD8;
  if (!qword_2809C0BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0BD8);
  }

  return result;
}

unint64_t sub_2752F36C4()
{
  result = qword_2809C0BE0;
  if (!qword_2809C0BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0BE0);
  }

  return result;
}

unint64_t sub_2752F3718()
{
  result = qword_2809C0BF0;
  if (!qword_2809C0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0BF0);
  }

  return result;
}

unint64_t sub_2752F376C()
{
  result = qword_2809C0C00;
  if (!qword_2809C0C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0C00);
  }

  return result;
}

unint64_t sub_2752F37C0()
{
  result = qword_2809C0C10;
  if (!qword_2809C0C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0C10);
  }

  return result;
}

unint64_t sub_2752F3814()
{
  result = qword_2809C0C20;
  if (!qword_2809C0C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0C20);
  }

  return result;
}

uint64_t sub_2752F3868(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_2752F38E4(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2752F251C(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2752F3948()
{
  v1 = OUTLINED_FUNCTION_24();
  sub_2752F38E4(v1, v2, v3, v4);
  OUTLINED_FUNCTION_9(v5);
  (*(v6 + 8))(v0);
  return v0;
}

uint64_t sub_2752F3998()
{
  v1 = OUTLINED_FUNCTION_24();
  sub_2752F251C(v1, v2, v3);
  OUTLINED_FUNCTION_9(v4);
  (*(v5 + 8))(v0);
  return v0;
}

unint64_t sub_2752F39E8()
{
  result = qword_2809C0C58;
  if (!qword_2809C0C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0C58);
  }

  return result;
}

void sub_2752F3A3C()
{
  if (!qword_2809C0C60)
  {
    v0 = sub_2753B6CD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2809C0C60);
    }
  }
}

uint64_t sub_2752F3A98(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2752F3A3C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2752F3AF8()
{
  result = qword_2809C0C88;
  if (!qword_2809C0C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0C88);
  }

  return result;
}

unint64_t sub_2752F3B4C()
{
  result = qword_2809C0C98;
  if (!qword_2809C0C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0C98);
  }

  return result;
}

unint64_t sub_2752F3BA0()
{
  result = qword_2809C0CA0;
  if (!qword_2809C0CA0)
  {
    sub_2752F3C84(255, &qword_2809C0C90, sub_2752F3B4C, &type metadata for AssetRecipe.CodingError, MEMORY[0x277D64F08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0CA0);
  }

  return result;
}

uint64_t sub_2752F3C30()
{
  v1 = OUTLINED_FUNCTION_32();
  v3 = v2(v1);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_27();
  v7(v6);
  return v0;
}

void sub_2752F3C84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_2752F3CF0()
{
  result = qword_2809C0CC0;
  if (!qword_2809C0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0CC0);
  }

  return result;
}

unint64_t sub_2752F3DA8()
{
  result = qword_2809C0CC8;
  if (!qword_2809C0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0CC8);
  }

  return result;
}

unint64_t sub_2752F3E00()
{
  result = qword_2809C0CD0;
  if (!qword_2809C0CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0CD0);
  }

  return result;
}

unint64_t sub_2752F3EE8()
{
  result = qword_2809C0CE8;
  if (!qword_2809C0CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0CE8);
  }

  return result;
}

unint64_t sub_2752F3F40()
{
  result = qword_2809C0CF0;
  if (!qword_2809C0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0CF0);
  }

  return result;
}

unint64_t sub_2752F3F98()
{
  result = qword_2809C0CF8;
  if (!qword_2809C0CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0CF8);
  }

  return result;
}

unint64_t sub_2752F3FF0()
{
  result = qword_2809C0D00;
  if (!qword_2809C0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0D00);
  }

  return result;
}

unint64_t sub_2752F4090()
{
  result = qword_2809C0D10;
  if (!qword_2809C0D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0D10);
  }

  return result;
}

unint64_t sub_2752F40E8()
{
  result = qword_2809C0D18;
  if (!qword_2809C0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0D18);
  }

  return result;
}

unint64_t sub_2752F4188()
{
  result = qword_2809C0D28;
  if (!qword_2809C0D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0D28);
  }

  return result;
}

unint64_t sub_2752F41E0()
{
  result = qword_2809C0D30;
  if (!qword_2809C0D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0D30);
  }

  return result;
}

unint64_t sub_2752F4238()
{
  result = qword_2809C0D38[0];
  if (!qword_2809C0D38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2809C0D38);
  }

  return result;
}

uint64_t sub_2752F42A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 24) + 8);
  result = sub_2753B69B8();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2752F4338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = OUTLINED_FUNCTION_160(*(a3 + 24));
  v8 = OUTLINED_FUNCTION_74(v7);
  if (*(v9 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v8);
  }

  else
  {
    v11 = *(a1 + *(a3 + 36));
    if (v11 >= 6)
    {
      return v11 - 5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2752F43F0(uint64_t a1, char a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = OUTLINED_FUNCTION_160(*(a4 + 24));
  result = OUTLINED_FUNCTION_74(v9);
  if (*(v11 + 84) == a3)
  {
    OUTLINED_FUNCTION_140();

    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 5;
  }

  return result;
}

uint64_t sub_2752F44BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_43();
  v6 = sub_2753B61F8();
  OUTLINED_FUNCTION_74(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_150();
  }

  else
  {
    v10 = type metadata accessor for AssetRecipe.DRM(0);
    v11 = OUTLINED_FUNCTION_74(v10);
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = *(a3 + 20);
    }

    else
    {
      OUTLINED_FUNCTION_5();
      sub_2752F251C(0, v14, v15);
      v9 = v16;
      v13 = *(a3 + 24);
    }

    v8 = v3 + v13;
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v9);
}

uint64_t sub_2752F45AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_43();
  v6 = sub_2753B61F8();
  OUTLINED_FUNCTION_74(v6);
  if (*(v7 + 84) != a3)
  {
    v8 = type metadata accessor for AssetRecipe.DRM(0);
    OUTLINED_FUNCTION_74(v8);
    if (*(v9 + 84) == a3)
    {
      v10 = *(a4 + 20);
    }

    else
    {
      OUTLINED_FUNCTION_5();
      sub_2752F251C(0, v11, v12);
      v13 = *(a4 + 24);
    }
  }

  OUTLINED_FUNCTION_140();

  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

void sub_2752F4690()
{
  sub_2753B61F8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AssetRecipe.DRM(319);
    if (v1 <= 0x3F)
    {
      sub_2752F251C(319, &qword_2809C08F0, type metadata accessor for AssetRecipe.iTunesStoreContentInfo);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2752F4750()
{
  result = type metadata accessor for AssetRecipe.DRM.FairPlayStreaming(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
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

uint64_t sub_2752F47FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_2752F483C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2752F48F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      return OUTLINED_FUNCTION_79(*a1 + 2147483646);
    }

    v3 = *(a1 + 32);
    OUTLINED_FUNCTION_158();
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_79(v4);
}

uint64_t sub_2752F493C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_2752F49A8(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[40])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
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

uint64_t sub_2752F49E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2752F4A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24();
  v6 = sub_2753B61F8();
  v7 = OUTLINED_FUNCTION_74(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  else
  {
    v12 = *(v3 + *(a3 + 28));
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2752F4B2C(uint64_t a1, char a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_43();
  v8 = sub_2753B61F8();
  result = OUTLINED_FUNCTION_74(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(a4 + 20);
    OUTLINED_FUNCTION_140();

    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  else
  {
    *(v4 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

void sub_2752F4BCC()
{
  sub_2752F4F00(319, &qword_2809C0DF0);
  if (v0 <= 0x3F)
  {
    sub_2753B61F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2752F4C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    OUTLINED_FUNCTION_158();
    return (v5 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_4_0();
    sub_2752F251C(0, v9, v10);
    v12 = v11;
    v13 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v13, a2, v12);
  }
}

uint64_t sub_2752F4D38(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    OUTLINED_FUNCTION_4_0();
    sub_2752F251C(0, v5, v6);
    v7 = *(a4 + 40);
    OUTLINED_FUNCTION_140();

    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  return result;
}

uint64_t sub_2752F4DC0()
{
  sub_2752F4F00(319, &qword_2809C0DF0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_2752F4F00(319, &qword_2809C0E08);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_2752F251C(319, &qword_2809C0E10, sub_2752F3A3C);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_2752F251C(319, &qword_2809C08E8, MEMORY[0x277CC9260]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_2752F4F00(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2753B72A8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2752F4FBC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_79(-1);
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
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 3);
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

  return OUTLINED_FUNCTION_79(v8);
}

_BYTE *sub_2752F5040(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_91(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_89(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2752F50FCLL);
      case 4:
        result = OUTLINED_FUNCTION_90(result, v6);
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
          result = OUTLINED_FUNCTION_78(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetRecipe.DRM.FairPlayStreaming.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetRecipe.DRM.FairPlayStreaming.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2752F5298);
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

uint64_t sub_2752F52E0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_79(-1);
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
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 7);
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

      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 7);
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

  return OUTLINED_FUNCTION_79(v8);
}

_BYTE *sub_2752F5364(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_91(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_89(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2752F5420);
      case 4:
        result = OUTLINED_FUNCTION_90(result, v6);
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
          result = OUTLINED_FUNCTION_78(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2752F54D8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_79(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_79(v8);
}

_BYTE *sub_2752F555C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_91(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_89(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2752F5618);
      case 4:
        result = OUTLINED_FUNCTION_90(result, v6);
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
          result = OUTLINED_FUNCTION_78(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2752F5674(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_79(-1);
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
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_79((*a1 | (v4 << 8)) - 6);
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

  return OUTLINED_FUNCTION_79(v8);
}

_BYTE *sub_2752F56FC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_91(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_89(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2752F57B8);
      case 4:
        result = OUTLINED_FUNCTION_90(result, v6);
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
          result = OUTLINED_FUNCTION_78(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2752F584C(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_121(a1);
}

_BYTE *sub_2752F5898(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2752F5934);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2752F5970()
{
  result = qword_2809C0E18;
  if (!qword_2809C0E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E18);
  }

  return result;
}

unint64_t sub_2752F59C8()
{
  result = qword_2809C0E20;
  if (!qword_2809C0E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E20);
  }

  return result;
}

unint64_t sub_2752F5A20()
{
  result = qword_2809C0E28;
  if (!qword_2809C0E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E28);
  }

  return result;
}

unint64_t sub_2752F5A78()
{
  result = qword_2809C0E30;
  if (!qword_2809C0E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E30);
  }

  return result;
}

unint64_t sub_2752F5AD0()
{
  result = qword_2809C0E38;
  if (!qword_2809C0E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E38);
  }

  return result;
}

unint64_t sub_2752F5B28()
{
  result = qword_2809C0E40;
  if (!qword_2809C0E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E40);
  }

  return result;
}

unint64_t sub_2752F5B80()
{
  result = qword_2809C0E48;
  if (!qword_2809C0E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E48);
  }

  return result;
}

unint64_t sub_2752F5BD8()
{
  result = qword_2809C0E50;
  if (!qword_2809C0E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E50);
  }

  return result;
}

unint64_t sub_2752F5C30()
{
  result = qword_2809C0E58;
  if (!qword_2809C0E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E58);
  }

  return result;
}

unint64_t sub_2752F5C88()
{
  result = qword_2809C0E60;
  if (!qword_2809C0E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E60);
  }

  return result;
}

unint64_t sub_2752F5CE0()
{
  result = qword_2809C0E68;
  if (!qword_2809C0E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E68);
  }

  return result;
}

unint64_t sub_2752F5D38()
{
  result = qword_2809C0E70;
  if (!qword_2809C0E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E70);
  }

  return result;
}

unint64_t sub_2752F5D90()
{
  result = qword_2809C0E78;
  if (!qword_2809C0E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E78);
  }

  return result;
}

unint64_t sub_2752F5DE8()
{
  result = qword_2809C0E80;
  if (!qword_2809C0E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E80);
  }

  return result;
}

unint64_t sub_2752F5E40()
{
  result = qword_2809C0E88;
  if (!qword_2809C0E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E88);
  }

  return result;
}

unint64_t sub_2752F5E98()
{
  result = qword_2809C0E90;
  if (!qword_2809C0E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E90);
  }

  return result;
}

unint64_t sub_2752F5EF0()
{
  result = qword_2809C0E98;
  if (!qword_2809C0E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0E98);
  }

  return result;
}

unint64_t sub_2752F5F48()
{
  result = qword_2809C0EA0;
  if (!qword_2809C0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0EA0);
  }

  return result;
}

unint64_t sub_2752F5FA0()
{
  result = qword_2809C0EA8;
  if (!qword_2809C0EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0EA8);
  }

  return result;
}

unint64_t sub_2752F5FF8()
{
  result = qword_2809C0EB0;
  if (!qword_2809C0EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0EB0);
  }

  return result;
}

unint64_t sub_2752F6050()
{
  result = qword_2809C0EB8;
  if (!qword_2809C0EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0EB8);
  }

  return result;
}

unint64_t sub_2752F60A8()
{
  result = qword_2809C0EC0;
  if (!qword_2809C0EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0EC0);
  }

  return result;
}

unint64_t sub_2752F6100()
{
  result = qword_2809C0EC8;
  if (!qword_2809C0EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0EC8);
  }

  return result;
}

unint64_t sub_2752F6158()
{
  result = qword_2809C0ED0;
  if (!qword_2809C0ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0ED0);
  }

  return result;
}

unint64_t sub_2752F61B0()
{
  result = qword_2809C0ED8;
  if (!qword_2809C0ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0ED8);
  }

  return result;
}

unint64_t sub_2752F6208()
{
  result = qword_2809C0EE0;
  if (!qword_2809C0EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0EE0);
  }

  return result;
}

unint64_t sub_2752F6260()
{
  result = qword_2809C0EE8;
  if (!qword_2809C0EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0EE8);
  }

  return result;
}

unint64_t sub_2752F62B8()
{
  result = qword_2809C0EF0;
  if (!qword_2809C0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0EF0);
  }

  return result;
}

unint64_t sub_2752F6310()
{
  result = qword_2809C0EF8;
  if (!qword_2809C0EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0EF8);
  }

  return result;
}

unint64_t sub_2752F6368()
{
  result = qword_2809C0F00;
  if (!qword_2809C0F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F00);
  }

  return result;
}

unint64_t sub_2752F63C0()
{
  result = qword_2809C0F08;
  if (!qword_2809C0F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F08);
  }

  return result;
}

unint64_t sub_2752F6418()
{
  result = qword_2809C0F10;
  if (!qword_2809C0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F10);
  }

  return result;
}

unint64_t sub_2752F6470()
{
  result = qword_2809C0F18;
  if (!qword_2809C0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F18);
  }

  return result;
}

unint64_t sub_2752F64C8()
{
  result = qword_2809C0F20;
  if (!qword_2809C0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F20);
  }

  return result;
}

unint64_t sub_2752F6520()
{
  result = qword_2809C0F28;
  if (!qword_2809C0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F28);
  }

  return result;
}

unint64_t sub_2752F6578()
{
  result = qword_2809C0F30;
  if (!qword_2809C0F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F30);
  }

  return result;
}

unint64_t sub_2752F65D0()
{
  result = qword_2809C0F38;
  if (!qword_2809C0F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F38);
  }

  return result;
}

unint64_t sub_2752F6628()
{
  result = qword_2809C0F40;
  if (!qword_2809C0F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F40);
  }

  return result;
}

unint64_t sub_2752F6680()
{
  result = qword_2809C0F48;
  if (!qword_2809C0F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F48);
  }

  return result;
}

unint64_t sub_2752F66D8()
{
  result = qword_2809C0F50;
  if (!qword_2809C0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F50);
  }

  return result;
}

unint64_t sub_2752F6730()
{
  result = qword_2809C0F58;
  if (!qword_2809C0F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F58);
  }

  return result;
}

unint64_t sub_2752F6788()
{
  result = qword_2809C0F60;
  if (!qword_2809C0F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F60);
  }

  return result;
}

unint64_t sub_2752F67E0()
{
  result = qword_2809C0F68;
  if (!qword_2809C0F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F68);
  }

  return result;
}

unint64_t sub_2752F6838()
{
  result = qword_2809C0F70;
  if (!qword_2809C0F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F70);
  }

  return result;
}

unint64_t sub_2752F6890()
{
  result = qword_2809C0F78;
  if (!qword_2809C0F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F78);
  }

  return result;
}

unint64_t sub_2752F68E8()
{
  result = qword_2809C0F80;
  if (!qword_2809C0F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F80);
  }

  return result;
}

unint64_t sub_2752F6940()
{
  result = qword_2809C0F88;
  if (!qword_2809C0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F88);
  }

  return result;
}

unint64_t sub_2752F6998()
{
  result = qword_2809C0F90;
  if (!qword_2809C0F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F90);
  }

  return result;
}

unint64_t sub_2752F69F0()
{
  result = qword_2809C0F98;
  if (!qword_2809C0F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0F98);
  }

  return result;
}

unint64_t sub_2752F6A48()
{
  result = qword_2809C0FA0;
  if (!qword_2809C0FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FA0);
  }

  return result;
}

unint64_t sub_2752F6AA0()
{
  result = qword_2809C0FA8;
  if (!qword_2809C0FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FA8);
  }

  return result;
}

unint64_t sub_2752F6AF8()
{
  result = qword_2809C0FB0;
  if (!qword_2809C0FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FB0);
  }

  return result;
}

unint64_t sub_2752F6B50()
{
  result = qword_2809C0FB8;
  if (!qword_2809C0FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FB8);
  }

  return result;
}

unint64_t sub_2752F6BA8()
{
  result = qword_2809C0FC0;
  if (!qword_2809C0FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FC0);
  }

  return result;
}

unint64_t sub_2752F6C00()
{
  result = qword_2809C0FC8;
  if (!qword_2809C0FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FC8);
  }

  return result;
}

unint64_t sub_2752F6C58()
{
  result = qword_2809C0FD0;
  if (!qword_2809C0FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FD0);
  }

  return result;
}

unint64_t sub_2752F6CB0()
{
  result = qword_2809C0FD8;
  if (!qword_2809C0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FD8);
  }

  return result;
}

unint64_t sub_2752F6D08()
{
  result = qword_2809C0FE0;
  if (!qword_2809C0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FE0);
  }

  return result;
}

unint64_t sub_2752F6D60()
{
  result = qword_2809C0FE8;
  if (!qword_2809C0FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FE8);
  }

  return result;
}

unint64_t sub_2752F6DB8()
{
  result = qword_2809C0FF0;
  if (!qword_2809C0FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FF0);
  }

  return result;
}

unint64_t sub_2752F6E10()
{
  result = qword_2809C0FF8;
  if (!qword_2809C0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0FF8);
  }

  return result;
}

unint64_t sub_2752F6E68()
{
  result = qword_2809C1000;
  if (!qword_2809C1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1000);
  }

  return result;
}

unint64_t sub_2752F6EC0()
{
  result = qword_2809C1008;
  if (!qword_2809C1008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1008);
  }

  return result;
}

unint64_t sub_2752F6F18()
{
  result = qword_2809C1010;
  if (!qword_2809C1010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1010);
  }

  return result;
}

unint64_t sub_2752F6F70()
{
  result = qword_2809C1018;
  if (!qword_2809C1018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1018);
  }

  return result;
}

unint64_t sub_2752F6FC8()
{
  result = qword_2809C1020;
  if (!qword_2809C1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1020);
  }

  return result;
}

unint64_t sub_2752F7020()
{
  result = qword_2809C1028;
  if (!qword_2809C1028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1028);
  }

  return result;
}

unint64_t sub_2752F7078()
{
  result = qword_2809C1030;
  if (!qword_2809C1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1030);
  }

  return result;
}

unint64_t sub_2752F70D0()
{
  result = qword_2809C1038;
  if (!qword_2809C1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1038);
  }

  return result;
}

unint64_t sub_2752F7128()
{
  result = qword_2809C1040;
  if (!qword_2809C1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1040);
  }

  return result;
}

unint64_t sub_2752F7180()
{
  result = qword_2809C1048;
  if (!qword_2809C1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1048);
  }

  return result;
}

unint64_t sub_2752F71D8()
{
  result = qword_2809C1050;
  if (!qword_2809C1050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1050);
  }

  return result;
}

unint64_t sub_2752F722C()
{
  result = qword_2809C1058;
  if (!qword_2809C1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C1058);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_13()
{

  return sub_2752F25C8();
}

uint64_t OUTLINED_FUNCTION_16()
{
  v2 = *(v0 - 104);

  return sub_2753B75E8();
}

uint64_t OUTLINED_FUNCTION_23(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD968](a1, a2, v2, a1);
}

uint64_t OUTLINED_FUNCTION_26()
{
  v2 = *(v0 - 256);

  return sub_2753B75B8();
}

uint64_t OUTLINED_FUNCTION_56()
{
  *(v1 - 72) = v0;

  return swift_getExtendedExistentialTypeMetadata();
}

uint64_t OUTLINED_FUNCTION_57()
{

  return sub_2753B7718();
}

uint64_t OUTLINED_FUNCTION_59(uint64_t a1)
{

  return MEMORY[0x2821FD170](a1, 0xD00000000000002BLL, v1 | 0x8000000000000000, 0);
}

uint64_t OUTLINED_FUNCTION_93()
{
  v2 = *(v0 - 88);

  return sub_2753B77F8();
}

uint64_t OUTLINED_FUNCTION_100()
{

  return sub_2753B7798();
}

uint64_t OUTLINED_FUNCTION_102()
{
  *(v3 - 152) = v0;
  *(v3 - 144) = v2;
  *(v3 - 88) = v1;
  v5 = *(v3 - 96);

  return sub_2753B75C8();
}

uint64_t OUTLINED_FUNCTION_103@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256);
  v5 = *(v1 - 168);
  v4 = *(v1 - 160);

  return sub_2753B75E8();
}

uint64_t OUTLINED_FUNCTION_104()
{

  return sub_2753B7808();
}

uint64_t OUTLINED_FUNCTION_117@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, unint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v6 = *(a4 + a2);

  return sub_2752F3868(a2 + 1, a1, v4, a4, a2, a3);
}

void OUTLINED_FUNCTION_119()
{

  JUMPOUT(0x277C76A80);
}

uint64_t OUTLINED_FUNCTION_122()
{

  return swift_allocError();
}

__n128 OUTLINED_FUNCTION_127()
{
  v2 = *(v1 - 192);
  result = *(v1 - 144);
  *(v1 - 128) = result;
  *(v1 - 112) = v2;
  *(v1 - 96) = v0;
  return result;
}

__n128 OUTLINED_FUNCTION_136()
{
  result = *(v0 + 16);
  *(v1 - 144) = *v0;
  *(v1 - 192) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_154()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_156()
{

  return sub_2753B77B8();
}

uint64_t OUTLINED_FUNCTION_157()
{

  return sub_2753B77B8();
}

uint64_t OUTLINED_FUNCTION_159()
{

  return sub_2753B7718();
}

uint64_t OUTLINED_FUNCTION_160@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);

  return sub_2753B69B8();
}

uint64_t FacetCollection<>.ContentType.id.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_160(*(a1 + 24));
  sub_2753B69A8();
  v2 = sub_2753B6648();

  MEMORY[0x277C76100](0x746E65746E6F632DLL, 0xEC00000065707954);
  return v2;
}

uint64_t FacetCollection<>.ContentType.context.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = OUTLINED_FUNCTION_160(*(a1 + 24));
  v6 = OUTLINED_FUNCTION_9(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2, v6);
}

uint64_t FacetCollection<>.ContentType.context.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(*(a2 + 24) + 8);
  v6 = sub_2753B69B8();
  v7 = OUTLINED_FUNCTION_9(v6);
  v9 = *(v8 + 40);

  return v9(v2, a1, v7);
}

uint64_t FacetCollection<>.ContentType.builders.getter(uint64_t a1)
{
  v2 = v1;
  v4 = OUTLINED_FUNCTION_2_0(a1);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v4);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v9;
  swift_getExtendedExistentialTypeMetadata();
  sub_2753B76C8();
  swift_allocObject();
  sub_2753B6FF8();
  v13 = v12;
  (*(v6 + 16))(v11, v2, a1);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = type metadata accessor for FacetCollection<>.FullyQualifiedContentRegistrationElement();
  v20 = v16;
  v21 = &v20;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v15;
  swift_getWitnessTable();
  v13[3] = sub_2753B68B8();
  v13[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v13);
  v19[1] = v16;
  v19[0] = swift_getWitnessTable();
  sub_2753B68A8();
  return sub_2752E6688();
}