void *sub_275B05CB8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_275B05CD0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_275B7AD0C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_275B05D04()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275B05D4C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275B05D90()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275B05DD0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275B05E18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275B05E64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275B05E9C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275B05ED4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275B05F0C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275B05F50()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275B05F98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275B05FE0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275B06024()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275B0605C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275B060A4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275B060EC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_275B06170()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275B061A8()
{
  v1 = sub_275B7A06C();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v17 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = sub_275B7962C();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  v7 = v1[6];
  v8 = sub_275B7989C();
  if (!(*(*(v8 - 8) + 48))(v0 + v3 + v7, 1, v8))
  {
    v6(v4 + v7, v5);
  }

  v9 = v4 + v1[9];
  v10 = sub_275B79F4C();
  if (!(*(*(v10 - 1) + 48))(v9, 1, v10))
  {
    v6(v9, v5);
    v11 = *(v9 + v10[5] + 8);

    v12 = *(v9 + v10[6] + 8);

    v13 = *(v9 + v10[7] + 8);

    v14 = *(v9 + v10[8] + 8);
  }

  v15 = *(v4 + v1[10] + 8);

  return MEMORY[0x2821FE8E8](v0, ((v17 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_275B063C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275B06418()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275B06450()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275B06488()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275B064D8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275B06520()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275B06644()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275B0667C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275B066BC()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_275B06724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_275B79EEC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_275B06820(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33380, &qword_275B7CDD0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_275B79EEC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_275B06938()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275B06970()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275B069A8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275B069E0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275B06A20()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275B06A58(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_275B794EC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_275B06B04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_275B794EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_275B06BA8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275B06C08()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275B06C48()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275B06C80()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275B06CB8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275B06D10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275B06D50()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275B06D88()
{
  v1 = sub_275B7970C();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  v6 = sub_275B796EC();
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v15 = sub_275B7962C();
        (*(*(v15 - 8) + 8))(v0 + v3, v15);
        v9 = sub_275B79BCC();
        goto LABEL_9;
      case 1u:
        v24 = sub_275B7962C();
        v25 = (*(v24 - 8) + 8);
        v51 = *v25;
        (*v25)(v0 + v3, v24);
        v26 = sub_275B79DDC();
        v27 = *(v26 + 24);
        v28 = sub_275B7989C();
        if (!(*(*(v28 - 8) + 48))(&v5[v27], 1, v28))
        {
          v51(&v5[v27], v24);
        }

        v29 = &v5[*(v26 + 32)];
        v30 = sub_275B79F4C();
        if ((*(*(v30 - 1) + 48))(v29, 1, v30))
        {
          break;
        }

        v51(v29, v24);
        v31 = *&v29[v30[5] + 8];

        v32 = *&v29[v30[6] + 8];

        v33 = *&v29[v30[7] + 8];

        v16 = &v29[v30[8]];
        goto LABEL_11;
      case 2u:
        v10 = *v5;

        v11 = *(v5 + 1);

        v12 = *(sub_275B79D7C() + 24);
        goto LABEL_26;
      case 3u:
      case 4u:
      case 5u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xCu:
      case 0xDu:
      case 0xFu:
      case 0x10u:
        v7 = sub_275B7962C();
        (*(*(v7 - 8) + 8))(v0 + v3, v7);
        break;
      case 6u:
        v13 = sub_275B7962C();
        (*(*(v13 - 8) + 8))(v0 + v3, v13);
        v14 = *(sub_275B7A17C() + 24);
        goto LABEL_10;
      case 7u:
        v8 = sub_275B7962C();
        (*(*(v8 - 8) + 8))(v0 + v3, v8);
        v9 = sub_275B7A58C();
LABEL_9:
        v14 = *(v9 + 20);
LABEL_10:
        v16 = &v5[v14];
        goto LABEL_11;
      case 0xBu:
        v34 = sub_275B7962C();
        v35 = (*(v34 - 8) + 8);
        v52 = *v35;
        (*v35)(v0 + v3, v34);
        v36 = &v5[*(sub_275B7A7FC() + 20)];
        v37 = sub_275B7A06C();
        if ((*(*(v37 - 8) + 48))(v36, 1, v37))
        {
          break;
        }

        v50 = v34;
        v52(v36, v34);
        v38 = *(v37 + 24);
        v39 = sub_275B7989C();
        v40 = v37;
        if (!(*(*(v39 - 8) + 48))(&v36[v38], 1, v39))
        {
          v52(&v36[v38], v50);
        }

        v41 = &v36[*(v37 + 36)];
        v42 = sub_275B79F4C();
        if (!(*(*(v42 - 1) + 48))(v41, 1, v42))
        {
          v52(v41, v50);
          v43 = *&v41[v42[5] + 8];

          v44 = *&v41[v42[6] + 8];

          v45 = *&v41[v42[7] + 8];

          v46 = *&v41[v42[8] + 8];
        }

        v16 = &v36[*(v40 + 40)];
LABEL_11:
        v17 = *(v16 + 1);

        break;
      case 0xEu:
        v47 = *v5;

        v12 = *(sub_275B7A2AC() + 20);
LABEL_26:
        v48 = sub_275B7962C();
        (*(*(v48 - 8) + 8))(&v5[v12], v48);
        break;
      default:
        break;
    }
  }

  v18 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v1 + 20);
  v21 = sub_275B7962C();
  (*(*(v21 - 8) + 8))(&v5[v20], v21);
  v22 = *(v0 + v18);

  v23 = *(v0 + v19 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v19 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_275B0743C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275B07474()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275B074AC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275B074E4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275B0751C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275B0755C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275B0759C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275B075DC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

double variable initialization expression of BiomeNotificationFeatureProvider.$__lazy_storage_$_icloudNotificationFeatures2w@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t variable initialization expression of FeatureProvider.featureNames()
{
  v11 = MEMORY[0x277D84F90];
  sub_275B0E5B0(0, 55, 0);
  v0 = 0;
  v1 = v11;
  do
  {
    v2 = FeatureName.rawValue.getter(*(&unk_2884A7FB0 + v0 + 32));
    v12 = v1;
    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
    if (v5 >= v4 >> 1)
    {
      v7 = v2;
      v8 = v3;
      sub_275B0E5B0((v4 > 1), v5 + 1, 1);
      v3 = v8;
      v2 = v7;
      v1 = v12;
    }

    ++v0;
    *(v1 + 16) = v5 + 1;
    v6 = v1 + 16 * v5;
    *(v6 + 32) = v2;
    *(v6 + 40) = v3;
  }

  while (v0 != 55);
  v9 = sub_275B31714(v1);

  return v9;
}

uint64_t variable initialization expression of NotificationDelayAction.pendingNotificationState@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_275B7A06C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t variable initialization expression of ShadowEvaluationAPI.biomeManager@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for RealBiomeManager();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for RealBiomeManager;
  *a1 = result;
  return result;
}

uint64_t sub_275B07A40()
{
  v1 = *v0;
  sub_275B7B26C();
  sub_275B7B28C();
  return sub_275B7B2AC();
}

uint64_t sub_275B07AB4()
{
  v1 = *v0;
  sub_275B7B26C();
  sub_275B7B28C();
  return sub_275B7B2AC();
}

_DWORD *sub_275B07AF8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_275B07B1C()
{
  v1 = *v0;
  v2 = sub_275B7AD0C();
  v3 = MEMORY[0x277C892C0](v2);

  return v3;
}

uint64_t sub_275B07B58()
{
  v1 = *v0;
  sub_275B7AD0C();
  sub_275B7AD7C();
}

uint64_t sub_275B07BAC()
{
  v1 = *v0;
  sub_275B7AD0C();
  sub_275B7B26C();
  sub_275B7AD7C();
  v2 = sub_275B7B2AC();

  return v2;
}

uint64_t sub_275B07C20(uint64_t a1, id *a2)
{
  result = sub_275B7ACEC();
  *a2 = 0;
  return result;
}

uint64_t sub_275B07C98(uint64_t a1, id *a2)
{
  v3 = sub_275B7ACFC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_275B07D18@<X0>(uint64_t *a1@<X8>)
{
  sub_275B7AD0C();
  v2 = sub_275B7ACDC();

  *a1 = v2;
  return result;
}

uint64_t sub_275B07D5C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_275B7AD0C();
  v6 = v5;
  if (v4 == sub_275B7AD0C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_275B7B1BC();
  }

  return v9 & 1;
}

uint64_t sub_275B07DE4(uint64_t a1)
{
  v2 = sub_275B08084(&qword_280A33010, type metadata accessor for URLResourceKey);
  v3 = sub_275B08084(&qword_280A33018, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_275B07EA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_275B7ACDC();

  *a2 = v5;
  return result;
}

uint64_t sub_275B07EE8(uint64_t a1)
{
  v2 = sub_275B08084(&qword_280A32F18, type metadata accessor for MLModelMetadataKey);
  v3 = sub_275B08084(&qword_280A32F20, type metadata accessor for MLModelMetadataKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_275B08084(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_275B08184(uint64_t a1, unint64_t *a2)
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

uint64_t sub_275B082FC()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A330E0);
  __swift_project_value_buffer(v0, qword_280A330E0);
  type metadata accessor for BackingOffINDNotifier();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33108, qword_275B7C380);
  return sub_275B7A97C();
}

uint64_t sub_275B08378()
{
  result = sub_275B7AB2C();
  static BackingOffINDNotifier.kDefaultBackoffDuration = result;
  return result;
}

uint64_t *BackingOffINDNotifier.kDefaultBackoffDuration.unsafeMutableAddressor()
{
  if (qword_280A32C38 != -1)
  {
    swift_once();
  }

  return &static BackingOffINDNotifier.kDefaultBackoffDuration;
}

uint64_t static BackingOffINDNotifier.kDefaultBackoffDuration.getter()
{
  if (qword_280A32C38 != -1)
  {
    swift_once();
  }

  return static BackingOffINDNotifier.kDefaultBackoffDuration;
}

uint64_t BackingOffINDNotifier.__allocating_init(wrapping:stateManager:backoffDuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v15 = *(a1 + 24);
  v7 = v15;
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v15);
  v9 = *(v15 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12);
  *(v6 + 40) = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v6 + 16));
  (*(v9 + 32))(boxed_opaque_existential_1, v12, v7);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t *BackingOffINDNotifier.init(wrapping:stateManager:backoffDuration:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9, v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = sub_275B09298(v12, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

void BackingOffINDNotifier.displayDelayedOffer(withContext:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  BackingOffINDNotifier.checkIsNotTooEarlyToCallIndAgain()();
  if (v9)
  {
    v10 = v9;
    a3(v9);
  }

  else
  {
    v11 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
    v12 = v4[5];
    v13 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v12);
    v14 = swift_allocObject();
    v14[2] = a3;
    v14[3] = a4;
    v14[4] = v4;
    v14[5] = v11;
    v15 = *(v13 + 8);

    v15(a1, a2, sub_275B093FC, v14, v12, v13);
  }
}

uint64_t BackingOffINDNotifier.updateLastIndXpcCallMillis(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[7];
  v12 = a1;
  v13 = v3;
  if (qword_28140F988 != -1)
  {
    a1 = swift_once();
  }

  v5 = off_28140F990;
  MEMORY[0x28223BE20](a1, a2);
  v8 = v4;
  v9 = sub_275B09400;
  v10 = &v11;
  return (*(*v5 + 136))(0xD000000000000021, v6 | 0x8000000000000000, sub_275B09408);
}

uint64_t sub_275B08A3C()
{
  sub_275B7AB5C();
  sub_275B7994C();
  if (qword_280A32C30 != -1)
  {
    swift_once();
  }

  v0 = sub_275B7A96C();
  __swift_project_value_buffer(v0, qword_280A330E0);
  sub_275B7B09C();

  v1 = sub_275B7AB7C();
  MEMORY[0x277C89240](v1);

  MEMORY[0x277C89240](46, 0xE100000000000000);
  sub_275B7A91C();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BackingOffINDNotifier.checkIsNotTooEarlyToCallIndAgain()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A330F8, &qword_275B7C9A0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - v10;
  v12 = sub_275B79ABC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v32 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + 56);
  v18 = (*(v13 + 56))(v8, 1, 1, v12);
  if (qword_28140F988 != -1)
  {
    v18 = swift_once();
  }

  v20 = off_28140F990;
  MEMORY[0x28223BE20](v18, v19);
  *(&v31 - 2) = v8;
  *(&v31 - 1) = v17;
  (*(*v20 + 136))(0x6574617453746567, 0xE800000000000000, sub_275B094A8);
  if (v1)
  {
    sub_275B094C4(v8);
  }

  else
  {
    sub_275B0952C(v8, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_275B094C4(v11);
      if (qword_280A32C30 != -1)
      {
        swift_once();
      }

      v21 = sub_275B7A96C();
      __swift_project_value_buffer(v21, qword_280A330E0);
      sub_275B7A91C();
    }

    else
    {
      v22 = v32;
      sub_275B0959C(v11, v32);
      if (sub_275B7995C())
      {
        sub_275B7993C();
        sub_275B7AB6C();
        _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
        v23 = sub_275B7ABCC();
        v24 = *(v2 + 64);
        if (sub_275B7AACC())
        {
          if (qword_280A32C30 != -1)
          {
            swift_once();
          }

          v25 = sub_275B7A96C();
          __swift_project_value_buffer(v25, qword_280A330E0);
          v33 = 0;
          v34 = 0xE000000000000000;
          sub_275B7B09C();
          MEMORY[0x277C89240](0xD000000000000035, 0x8000000275B7FF00);
          v35 = v23;
          sub_275B7B0EC();
          MEMORY[0x277C89240](0x2E6F676120, 0xE500000000000000);
          sub_275B7A91C();
        }

        else
        {
          v33 = 0;
          v34 = 0xE000000000000000;
          sub_275B7B09C();
          MEMORY[0x277C89240](0xD000000000000032, 0x8000000275B7FEA0);
          v35 = v23;
          sub_275B7B0EC();
          MEMORY[0x277C89240](0x2E6F676120, 0xE500000000000000);

          MEMORY[0x277C89240](0xD00000000000001ELL, 0x8000000275B7FEE0);

          v27 = v33;
          v28 = v34;
          if (qword_280A32C30 != -1)
          {
            swift_once();
          }

          v29 = sub_275B7A96C();
          __swift_project_value_buffer(v29, qword_280A330E0);
          sub_275B7A93C();
          sub_275B0965C();
          swift_allocError();
          *v30 = v27;
          v30[1] = v28;
          swift_willThrow();
        }
      }

      else
      {
        if (qword_280A32C30 != -1)
        {
          swift_once();
        }

        v26 = sub_275B7A96C();
        __swift_project_value_buffer(v26, qword_280A330E0);
        sub_275B7A91C();
      }

      sub_275B09600(v22);
    }
  }
}

uint64_t BackingOffINDNotifier.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t BackingOffINDNotifier.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

void sub_275B09140(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v9 = *v4;
  BackingOffINDNotifier.checkIsNotTooEarlyToCallIndAgain()();
  if (v10)
  {
    v11 = v10;
    a3(v10);
  }

  else
  {
    v12 = _s33iCloudSubscriptionOptimizerDaemon23NotificationDelayActionC3now01iabC4Core9TimestampVvpfi_0();
    v13 = v9[5];
    v14 = v9[6];
    __swift_project_boxed_opaque_existential_1(v9 + 2, v13);
    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = a4;
    v15[4] = v9;
    v15[5] = v12;
    v16 = *(v14 + 8);

    v16(a1, a2, sub_275B098CC, v15, v13, v14);
  }
}

uint64_t *sub_275B09298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  a4[5] = a5;
  a4[6] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4 + 2);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  a4[7] = a2;
  a4[8] = a3;
  return a4;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_275B09400()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_275B08A3C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_275B094C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A330F8, &qword_275B7C9A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275B0952C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A330F8, &qword_275B7C9A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B0959C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B79ABC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B09600(uint64_t a1)
{
  v2 = sub_275B79ABC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_275B0965C()
{
  result = qword_280A33100;
  if (!qword_280A33100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A33100);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_275B096E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_275B09728(uint64_t result, int a2, int a3)
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

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275B097C0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  (*(v0 + 16))();
  return BackingOffINDNotifier.updateLastIndXpcCallMillis(_:)(v3, v4);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_275B098D0()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33110);
  __swift_project_value_buffer(v0, qword_280A33110);
  type metadata accessor for BiomeAppLaunch();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33188, &qword_275B7C478);
  return sub_275B7A97C();
}

uint64_t static BiomeAppLaunch.LastOpenedApp24h.get(timestamp:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33128, &unk_275B7C3B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v37 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33130, &unk_275B7C8D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v37 - v11;
  v13 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v41 = [v13 InFocus];
  swift_unknownObjectRelease();
  sub_275B7AC4C();
  v14 = swift_allocObject();
  *(v14 + 16) = 0x6E776F6E6B6E55;
  v39 = v14 + 16;
  *(v14 + 24) = 0xE700000000000000;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v38 = (v15 + 16);
  *(v15 + 24) = 1;
  sub_275B7AC2C();
  v16 = sub_275B795CC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(v12, 0, 1, v16);
  sub_275B7AC2C();
  v18(v8, 0, 1, v16);
  v19 = *(v17 + 48);
  v20 = 0;
  if (v19(v12, 1, v16) != 1)
  {
    v20 = sub_275B795AC();
    (*(v17 + 8))(v12, v16);
  }

  if (v19(v8, 1, v16) == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_275B795AC();
    (*(v17 + 8))(v8, v16);
  }

  v22 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v20 endDate:v21 maxEvents:0 lastN:0 reversed:0];

  v23 = v41;
  v24 = [v41 publisherWithOptions_];

  v46 = nullsub_1;
  v47 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_275B0C864;
  v45 = &block_descriptor;
  v25 = _Block_copy(&aBlock);
  v26 = swift_allocObject();
  v26[2] = v40;
  v26[3] = v14;
  v26[4] = v15;
  v46 = sub_275B0A128;
  v47 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_275B0C864;
  v45 = &block_descriptor_9;
  v27 = _Block_copy(&aBlock);

  v28 = [v24 sinkWithCompletion:v25 receiveInput:v27];
  _Block_release(v27);
  _Block_release(v25);

  v29 = v38;
  swift_beginAccess();
  if (*(v15 + 24))
  {

    swift_beginAccess();
    v30 = *(v14 + 16);
    v31 = *(v14 + 24);
  }

  else
  {
    v32 = *v29;
    swift_beginAccess();
    v30 = *(v14 + 16);
    v33 = *(v14 + 24);
    v34 = sub_275B7961C();
    v35 = v37;
    (*(*(v34 - 8) + 56))(v37, 1, 1, v34);

    sub_275B7AC6C();

    sub_275B0A398(v35);
  }

  return v30;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_275B09F00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_275B795CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v28 - v16;
  v18 = [a1 eventBody];
  swift_beginAccess();
  swift_beginAccess();
  if (v18)
  {
    v19 = v18;
    if ([v19 starting])
    {
      v20 = [v19 bundleID];
      if (v20)
      {
        v21 = v20;
        v29 = sub_275B7AD0C();
        v23 = v22;

        v24 = [v19 absoluteTimestamp];
        if (v24)
        {
          v25 = v24;
          sub_275B795BC();

          v26 = *(a3 + 24);

          (*(v8 + 32))(v17, v12, v7);
          *(a3 + 16) = v29;
          *(a3 + 24) = v23;
          v27 = sub_275B7AC3C();

          (*(v8 + 8))(v17, v7);
          *(a4 + 16) = v27;
          *(a4 + 24) = 0;
          goto LABEL_8;
        }
      }
    }
  }

LABEL_8:
  swift_endAccess();
  swift_endAccess();
}

void static BiomeAppLaunch.LastOpenedApp24h.receiveInput(_:_:_:)(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_275B795CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v28 - v15;
  if (a1)
  {
    v17 = v14;
    v29 = a1;
    if ([v29 starting])
    {
      v18 = [v29 bundleID];
      if (v18)
      {
        v19 = v18;
        v20 = sub_275B7AD0C();
        v22 = v21;

        v23 = [v29 absoluteTimestamp];
        if (v23)
        {
          v24 = v23;
          sub_275B795BC();

          v25 = a2[1];

          (*(v7 + 32))(v16, v12, v17);
          *a2 = v20;
          a2[1] = v22;
          v26 = sub_275B7AC3C();

          (*(v7 + 8))(v16, v17);
          *a3 = v26;
          *(a3 + 8) = 0;
          return;
        }
      }
    }

    v27 = v29;
  }
}

void sub_275B0A330(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_275B0A398(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33128, &unk_275B7C3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static BiomeAppLaunch.MinsSinceLastAppLaunch.get(appBundleId:startTime:endTime:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v36 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33130, &unk_275B7C8D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v34 - v12;
  v14 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v35 = [v14 InFocus];
  swift_unknownObjectRelease();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 1;
  sub_275B7AC2C();
  v16 = sub_275B795CC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(v13, 0, 1, v16);
  sub_275B7AC2C();
  v18(v9, 0, 1, v16);
  v34[1] = a4;
  v19 = sub_275B7ABAC();
  v20 = *(v17 + 48);
  v21 = 0;
  if (v20(v13, 1, v16) != 1)
  {
    v21 = sub_275B795AC();
    (*(v17 + 8))(v13, v16);
  }

  if (v20(v9, 1, v16) == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_275B795AC();
    (*(v17 + 8))(v9, v16);
  }

  v23 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v21 endDate:v22 maxEvents:0 lastN:0 reversed:v19 & 1];

  v24 = v35;
  v25 = [v35 publisherWithOptions_];

  v43 = nullsub_1;
  v44 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_275B0C864;
  v42 = &block_descriptor_13;
  v26 = _Block_copy(&aBlock);
  v27 = swift_allocObject();
  v28 = v36;
  v27[2] = v37;
  v27[3] = v28;
  v27[4] = v38;
  v27[5] = v15;
  v43 = sub_275B0A8F4;
  v44 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_275B0C864;
  v42 = &block_descriptor_19;
  v29 = _Block_copy(&aBlock);

  v30 = [v25 sinkWithCompletion:v26 receiveInput:v29];

  _Block_release(v29);
  _Block_release(v26);

  swift_beginAccess();
  if (*(v15 + 24))
  {
    v31 = -1;
  }

  else
  {
    v32 = *(v15 + 16);
    sub_275B7ABCC();
    v31 = sub_275B7AB1C();
  }

  return v31;
}

void sub_275B0A870(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [a1 eventBody];
  swift_beginAccess();
  _s33iCloudSubscriptionOptimizerDaemon14BiomeAppLaunchC013MinsSinceLastfG0C12receiveInputyySo12BMAppInFocusCSg_SS01iabC4Core9TimestampVSgztFZ_0(v8, a3, a4, a5 + 16);
  swift_endAccess();
}

uint64_t static BiomeAppLaunch.getAppLaunchCounts1wDict(endTime:)(uint64_t a1)
{
  type metadata accessor for BiomeAppLaunch.CountersByApp();
  sub_275B7AB2C();
  v2 = sub_275B7ABCC();
  return static BiomeAppLaunch.CountersByApp.get(startTime:endTime:appBundleIds:)(v2, a1, &unk_2884A7E48);
}

uint64_t static BiomeAppLaunch.CountersByApp.get(startTime:endTime:appBundleIds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33130, &unk_275B7C8D0);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v40 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_275B0BE7C(MEMORY[0x277D84F90]);
  v43 = v12 + 16;
  v13 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v14 = [v13 InFocus];
  swift_unknownObjectRelease();
  sub_275B7AC2C();
  v15 = sub_275B795CC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(v11, 0, 1, v15);
  sub_275B7AC2C();
  v17(v8, 0, 1, v15);
  v18 = sub_275B7ABAC();
  v19 = *(v16 + 48);
  v20 = 0;
  if (v19(v11, 1, v15) != 1)
  {
    v20 = sub_275B795AC();
    (*(v16 + 8))(v11, v15);
  }

  if (v19(v8, 1, v15) == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = sub_275B795AC();
    (*(v16 + 8))(v8, v15);
  }

  v22 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v20 endDate:v21 maxEvents:0 lastN:0 reversed:v18 & 1];

  v23 = [v14 publisherWithOptions_];
  v24 = swift_allocObject();
  v26 = v41;
  v25 = v42;
  *(v24 + 16) = v42;
  *(v24 + 24) = v26;
  v48 = sub_275B0BF78;
  v49 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_275B0B1C0;
  v47 = &block_descriptor_28;
  v27 = _Block_copy(&aBlock);

  v28 = [v23 filterWithIsIncluded_];
  _Block_release(v27);

  v29 = *(v12 + 16);

  v30 = sub_275B7AC7C();

  v31 = swift_allocObject();
  *(v31 + 16) = v25;
  v48 = sub_275B0BF80;
  v49 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_275B0B298;
  v47 = &block_descriptor_34;
  v32 = _Block_copy(&aBlock);

  v33 = [v28 reduceWithInitial:v30 nextPartialResult:v32];
  _Block_release(v32);

  v48 = sub_275B0BB98;
  v49 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_275B0C864;
  v47 = &block_descriptor_37;
  v34 = _Block_copy(&aBlock);

  v35 = swift_allocObject();
  *(v35 + 16) = v25;
  *(v35 + 24) = v12;
  v48 = sub_275B0BF88;
  v49 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_275B0B464;
  v47 = &block_descriptor_43;
  v36 = _Block_copy(&aBlock);

  v37 = [v33 sinkWithCompletion:v34 receiveInput:v36];
  _Block_release(v36);
  _Block_release(v34);

  swift_beginAccess();
  v38 = *(v12 + 16);

  return v38;
}

uint64_t static BiomeAppLaunch.getAppLaunchCountsSameSlotDict(startTime:offsetTimeInterval:)(uint64_t a1)
{
  type metadata accessor for BiomeAppLaunch.CountersByApp();
  v2 = sub_275B7ABBC();
  return static BiomeAppLaunch.CountersByApp.get(startTime:endTime:appBundleIds:)(a1, v2, MEMORY[0x277D84F90]);
}

id sub_275B0AF88(void *a1, uint64_t a2, uint64_t a3)
{
  result = [a1 eventBody];
  if (result)
  {
    v5 = result;
    v6 = [v5 bundleID];
    if (!v6)
    {
LABEL_5:

      return 0;
    }

    v7 = v6;
    v8 = sub_275B7AD0C();
    v10 = v9;

    if (*(a3 + 16))
    {
      v16[0] = v8;
      v16[1] = v10;
      MEMORY[0x28223BE20](v11, v12);
      v15[2] = v16;
      v13 = sub_275B0B5F0(sub_275B0C868, v15, a3);

      if ((v13 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v14 = [v5 starting];

    return v14;
  }

  return result;
}

id static BiomeAppLaunch.CountersByApp.filter(_:_:)(id result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = [v3 bundleID];
    if (!v4)
    {
LABEL_5:

      return 0;
    }

    v5 = v4;
    v6 = sub_275B7AD0C();
    v8 = v7;

    if (*(a2 + 16))
    {
      v14[0] = v6;
      v14[1] = v8;
      MEMORY[0x28223BE20](v9, v10);
      v13[2] = v14;
      v11 = sub_275B0B5F0(sub_275B0BF90, v13, a2);

      if ((v11 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v12 = [v3 starting];

    return v12;
  }

  return result;
}

uint64_t sub_275B0B1C0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

uint64_t sub_275B0B218@<X0>(id a1@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v5 = [a1 eventBody];
  _s33iCloudSubscriptionOptimizerDaemon14BiomeAppLaunchC010CountersByF0C6reduceySDySSSiGyp_So12BMAppInFocusCSgtFZ_0(a2, v5);
  v7 = v6;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33180, &qword_275B7C470);
  a3[3] = result;
  *a3 = v7;
  return result;
}

id sub_275B0B298(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11[3] = swift_getObjectType();
  v11[0] = a2;

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v10, v11, v7);

  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v8 = sub_275B7B1AC();
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_destroy_boxed_opaque_existential_1(v11);

  return v8;
}

id static BiomeAppLaunch.CountersByApp.completion(_:)(void *a1)
{
  result = [a1 state];
  if (result == 1)
  {
    if (qword_280A32C40 != -1)
    {
      swift_once();
    }

    v2 = sub_275B7A96C();
    __swift_project_value_buffer(v2, qword_280A33110);
    return sub_275B7A95C();
  }

  return result;
}

uint64_t sub_275B0B3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = swift_getObjectType();
  v6[0] = a1;
  swift_beginAccess();
  swift_unknownObjectRetain();
  _s33iCloudSubscriptionOptimizerDaemon14BiomeAppLaunchC010CountersByF0C12receiveInputyyyp_SDySSSiGztFZ_0(v6, (a3 + 16));
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_275B0B464(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t static BiomeAppLaunch.CountersByApp.getTotalCounts(counts:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = sub_275B0B768(*(result + 16), 0, &qword_280A33178, &unk_275B7C570);
    v4 = sub_275B0B83C(&v10, v3 + 4, v1, v2);

    result = sub_275B0C684();
    if (v4 != v1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v5 = v3[2];
    if (v5)
    {
LABEL_4:
      v6 = 0;
      v7 = v3 + 4;
      while (1)
      {
        v8 = *v7++;
        v9 = __OFADD__(v6, v8);
        v6 += v8;
        if (v9)
        {
          break;
        }

        if (!--v5)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    v5 = *(MEMORY[0x277D84F90] + 16);
    if (v5)
    {
      goto LABEL_4;
    }
  }

  v6 = 0;
LABEL_10:

  return v6;
}

uint64_t sub_275B0B5F0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_275B0B6D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_275B0B768(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

uint64_t sub_275B0B7E4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_275B7B1BC() & 1;
  }
}

void *sub_275B0B83C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 56) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_275B0B93C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7)) | (v9 << 6);
      v15 = *(*(a4 + 48) + 4 * v14);
      v16 = *(*(a4 + 56) + 8 * v14);
      v7 &= v7 - 1;
      *a2 = v15;
      *(a2 + 8) = v16;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 16;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v18 = v9 + 1;
    }

    else
    {
      v18 = (63 - v6) >> 6;
    }

    v9 = v18 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_275B0BA40(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (*(a4 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
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

id sub_275B0BB98(void *a1)
{
  result = [a1 state];
  if (result == 1)
  {
    if (qword_280A32C40 != -1)
    {
      swift_once();
    }

    v2 = sub_275B7A96C();
    __swift_project_value_buffer(v2, qword_280A33110);
    return sub_275B7A95C();
  }

  return result;
}

void _s33iCloudSubscriptionOptimizerDaemon14BiomeAppLaunchC013MinsSinceLastfG0C12receiveInputyySo12BMAppInFocusCSg_SS01iabC4Core9TimestampVSgztFZ_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_275B795CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v18 = &v31 - v17;
  if (!a1)
  {
    return;
  }

  v19 = v16;
  v32 = a1;
  if ([v32 starting])
  {
    v20 = [v32 bundleID];
    if (v20)
    {
      v21 = v20;
      v22 = sub_275B7AD0C();
      v24 = v23;

      if (v22 == a2 && v24 == a3)
      {
      }

      else
      {
        v26 = sub_275B7B1BC();

        if ((v26 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v27 = [v32 absoluteTimestamp];
      if (v27)
      {
        v28 = v27;
        sub_275B795BC();

        (*(v9 + 32))(v18, v13, v19);
        v29 = sub_275B7AC3C();

        (*(v9 + 8))(v18, v19);
        *a4 = v29;
        *(a4 + 8) = 0;
        return;
      }
    }
  }

LABEL_14:
  v30 = v32;
}

unint64_t sub_275B0BE7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33190, &unk_275B7C480);
    v3 = sub_275B7B14C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_275B180D4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_275B0BFAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33160, &qword_275B7C450);
    v3 = sub_275B7B14C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = sub_275B181A0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_275B0C08C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33170, &unk_275B7C460);
  v3 = sub_275B7B14C();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_275B181A0(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 4 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_275B181A0(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_275B0C1A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33148, &qword_275B7C438);
    v3 = sub_275B7B14C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_275B182E4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_275B0C294(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33150, &qword_275B7C440);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33158, &qword_275B7C448);
    v9 = sub_275B7B14C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_275B0C6FC(v11, v7);
      result = sub_275B1836C(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_275B795FC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void _s33iCloudSubscriptionOptimizerDaemon14BiomeAppLaunchC010CountersByF0C6reduceySDySSSiGyp_So12BMAppInFocusCSgtFZ_0(uint64_t a1, void *a2)
{
  sub_275B0C76C(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33180, &qword_275B7C470);
  if (swift_dynamicCast())
  {
    v3 = v14;
    if (!a2)
    {
      return;
    }
  }

  else
  {
    v3 = sub_275B0BE7C(MEMORY[0x277D84F90]);
    if (!a2)
    {
      return;
    }
  }

  v4 = [a2 bundleID];
  if (v4)
  {
    v5 = v4;
    v6 = sub_275B7AD0C();
    v8 = v7;

    v9 = *(v3 + 16);
    if (v9)
    {
      v10 = sub_275B180D4(v6, v8);
      if (v11)
      {
        v9 = *(*(v3 + 56) + 8 * v10);
      }

      else
      {
        v9 = 0;
      }
    }

    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15[0] = v3;
      sub_275B2C2A4(v12, v6, v8, isUniquelyReferenced_nonNull_native);
    }
  }
}

unint64_t _s33iCloudSubscriptionOptimizerDaemon14BiomeAppLaunchC010CountersByF0C12receiveInputyyyp_SDySSSiGztFZ_0(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;

  sub_275B0C76C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33180, &qword_275B7C470);
  if (swift_dynamicCast())
  {
    result = v7;
  }

  else
  {
    if (qword_280A32C40 != -1)
    {
      swift_once();
    }

    v6 = sub_275B7A96C();
    __swift_project_value_buffer(v6, qword_280A33110);
    sub_275B7A95C();
    result = sub_275B0BE7C(MEMORY[0x277D84F90]);
  }

  *a2 = result;
  return result;
}

uint64_t sub_275B0C6FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33150, &qword_275B7C440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275B0C76C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_275B0C7C8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_275B7B1BC() & 1;
  }
}

uint64_t sub_275B0C884()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33198);
  __swift_project_value_buffer(v0, qword_280A33198);
  type metadata accessor for BiomeAppLaunchFeatureProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331B0, &unk_275B7C4F0);
  return sub_275B7A97C();
}

uint64_t sub_275B0C900()
{
  if (v0[11])
  {
    v1 = v0[12];
    v2 = v0[10];
  }

  else
  {
    v3 = v0[5];
    v4 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
    v5 = v0;
    v2 = (*(v4 + 8))(v0[7], v3, v4);
    v6 = v5[11];
    v5[10] = v2;
    v5[11] = v7;
    v5[12] = v8;
  }

  return v2;
}

uint64_t sub_275B0C9BC()
{
  v1 = v0[13];
  v2 = v0[14];
  if (v1)
  {
    v3 = v0[13];
  }

  else
  {
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    v6 = v0;
    v3 = (*(v5 + 120))(v0[8], v0[9], v4, v5);
    v7 = v6[13];
    v8 = v6[14];
    v6[13] = v3;
    v6[14] = v9;

    sub_275B0D8A0(v7);
  }

  sub_275B0D904(v1);
  return v3;
}

uint64_t sub_275B0CA7C()
{
  if (v0[15])
  {
    v1 = v0[15];
  }

  else
  {
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    v4 = v0;
    v1 = (*(v3 + 80))(v0[8], v0[9], v2, v3);
    v5 = v0[15];
    v4[15] = v1;
  }

  return v1;
}

uint64_t sub_275B0CB10()
{
  if (v0[16])
  {
    v1 = v0[16];
  }

  else
  {
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    v4 = v0;
    v1 = (*(v3 + 40))(v0[7], v2, v3);
    v5 = v0[16];
    v4[16] = v1;
  }

  return v1;
}

uint64_t BiomeAppLaunchFeatureProvider.getFeatureByName(_:)(unsigned __int8 a1)
{
  if (a1 <= 0xCu)
  {
    if (a1 - 10 < 3)
    {
      v5 = sub_275B0D118(a1);
      type metadata accessor for Feature();
      v3 = swift_allocObject();
      *(v3 + 16) = a1;
      v4 = [objc_opt_self() featureValueWithInt64_];
      goto LABEL_17;
    }

    if (a1 == 8)
    {
      sub_275B0C900();
      sub_275B7AE3C();
      type metadata accessor for Feature();
      v3 = swift_allocObject();
      *(v3 + 16) = 8;
      v14 = sub_275B7ACDC();

      v15 = [objc_opt_self() featureValueWithString_];

      v11 = v15;
      v12 = 3;
      goto LABEL_18;
    }

    if (a1 == 9)
    {
      sub_275B0C900();
      v9 = v8;

      type metadata accessor for Feature();
      v3 = swift_allocObject();
      *(v3 + 16) = 9;
      v4 = [objc_opt_self() featureValueWithInt64_];
      goto LABEL_17;
    }

LABEL_14:
    if (qword_280A32C48 != -1)
    {
      swift_once();
    }

    v10 = sub_275B7A96C();
    __swift_project_value_buffer(v10, qword_280A33198);
    sub_275B7B09C();
    MEMORY[0x277C89240](0x2065727574616546, 0xE90000000000005BLL);
    sub_275B7B0EC();
    MEMORY[0x277C89240](0xD000000000000035, 0x8000000275B801F0);
    sub_275B7A95C();

    type metadata accessor for Feature();
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    v4 = [objc_opt_self() featureValueWithInt64_];
    goto LABEL_17;
  }

  if (a1 > 0x17u)
  {
    goto LABEL_14;
  }

  if (((1 << a1) & 0x1E000) != 0)
  {
    v6 = sub_275B0D310(a1);
    type metadata accessor for Feature();
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    v4 = [objc_opt_self() featureValueWithInt64_];
    goto LABEL_17;
  }

  if (((1 << a1) & 0xF00000) == 0)
  {
    if (((1 << a1) & 0xE0000) != 0)
    {
      v7 = sub_275B0D610(a1);
      type metadata accessor for Feature();
      v3 = swift_allocObject();
      *(v3 + 16) = a1;
      v4 = [objc_opt_self() featureValueWithInt64_];
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v2 = BiomeAppLaunchFeatureProvider.getAppLaunchCount2wStats(_:)(a1);
  type metadata accessor for Feature();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = [objc_opt_self() featureValueWithInt64_];
LABEL_17:
  v11 = v4;
  v12 = 1;
LABEL_18:
  *(v3 + 24) = v11;
  *(v3 + 32) = v12;
  return v3;
}

Swift::Int64 __swiftcall BiomeAppLaunchFeatureProvider.getAppLaunchCount2wStats(_:)(iCloudSubscriptionOptimizerDaemon::FeatureName a1)
{
  if (a1 <= iCloudSubscriptionOptimizerDaemon_FeatureName_appLaunchCount2wMax)
  {
    if (a1 != iCloudSubscriptionOptimizerDaemon_FeatureName_appLaunchCount2wMedian)
    {
      if (a1 == iCloudSubscriptionOptimizerDaemon_FeatureName_appLaunchCount2wMax)
      {
        sub_275B0C9BC();
        v2 = v1;
LABEL_8:

        v3 = *(v2 + 16);
LABEL_15:

        return v3;
      }

      goto LABEL_9;
    }

    sub_275B0C9BC();
    v6 = v5;
LABEL_14:

    v3 = *(v6 + 24);
    goto LABEL_15;
  }

  if (a1 == iCloudSubscriptionOptimizerDaemon_FeatureName_photosLaunchCount2wMedian)
  {
    v6 = sub_275B0C9BC();
    goto LABEL_14;
  }

  if (a1 == iCloudSubscriptionOptimizerDaemon_FeatureName_photosLaunchCount2wMax)
  {
    v2 = sub_275B0C9BC();
    goto LABEL_8;
  }

LABEL_9:
  if (qword_280A32C48 != -1)
  {
    swift_once();
  }

  v4 = sub_275B7A96C();
  __swift_project_value_buffer(v4, qword_280A33198);
  sub_275B7B09C();
  MEMORY[0x277C89240](0x2065727574616546, 0xE90000000000005BLL);
  sub_275B7B0EC();
  MEMORY[0x277C89240](0xD00000000000002DLL, 0x8000000275B80230);
  sub_275B7A95C();

  return -1;
}

uint64_t sub_275B0D118(char a1)
{
  switch(a1)
  {
    case 10:
      v1 = sub_275B0CB10();
      if (!*(v1 + 16))
      {
        goto LABEL_13;
      }

      v4 = sub_275B180D4(0xD000000000000010, 0x8000000275B7F3E0);
      if ((v6 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    case 12:
      v1 = sub_275B0CB10();
      if (*(v1 + 16))
      {
        v2 = "com.apple.camera";
        v3 = 0xD000000000000016;
LABEL_8:
        v4 = sub_275B180D4(v3, v2 | 0x8000000000000000);
        if ((v5 & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_12:
        v7 = *(*(v1 + 56) + 8 * v4);

        return v7;
      }

LABEL_13:

      return 0;
    case 11:
      v1 = sub_275B0CB10();
      if (*(v1 + 16))
      {
        v2 = "subscriptionoptimizerd";
        v3 = 0xD000000000000019;
        goto LABEL_8;
      }

      goto LABEL_13;
  }

  if (qword_280A32C48 != -1)
  {
    swift_once();
  }

  v9 = sub_275B7A96C();
  __swift_project_value_buffer(v9, qword_280A33198);
  sub_275B7B09C();
  MEMORY[0x277C89240](0x2065727574616546, 0xE90000000000005BLL);
  sub_275B7B0EC();
  MEMORY[0x277C89240](0xD000000000000028, 0x8000000275B803B0);
  sub_275B7A95C();

  return -1;
}

uint64_t sub_275B0D310(unsigned __int8 a1)
{
  if (a1 <= 0xEu)
  {
    if (a1 == 13)
    {
      v1 = sub_275B0CA7C();
      if (*(v1 + 16))
      {
        v17 = sub_275B180D4(0xD000000000000010, 0x8000000275B7F3E0);
        if (v18)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_24;
    }

    if (a1 == 14)
    {
      v1 = sub_275B0CA7C();
      if (*(v1 + 16))
      {
        v2 = "subscriptionoptimizerd";
        v3 = 0xD000000000000019;
        goto LABEL_22;
      }

      goto LABEL_24;
    }

    goto LABEL_15;
  }

  if (a1 == 15)
  {
    v1 = sub_275B0CA7C();
    if (*(v1 + 16))
    {
      v2 = "com.apple.camera";
      v3 = 0xD000000000000016;
LABEL_22:
      v17 = sub_275B180D4(v3, v2 | 0x8000000000000000);
      if (v19)
      {
LABEL_23:
        v20 = *(*(v1 + 56) + 8 * v17);

        return v20;
      }
    }

LABEL_24:

    return 0;
  }

  if (a1 != 16)
  {
LABEL_15:
    LOBYTE(v6) = a1;
    if (qword_280A32C48 == -1)
    {
LABEL_16:
      v16 = sub_275B7A96C();
      __swift_project_value_buffer(v16, qword_280A33198);
      v21[0] = 0;
      v21[1] = 0xE000000000000000;
      sub_275B7B09C();
      MEMORY[0x277C89240](0x2065727574616546, 0xE90000000000005BLL);
      v22 = v6;
      sub_275B7B0EC();
      MEMORY[0x277C89240](0xD000000000000039, 0x8000000275B803E0);
      sub_275B7A95C();

      return -1;
    }

LABEL_29:
    swift_once();
    goto LABEL_16;
  }

  v4 = sub_275B0CA7C();
  v5 = v4;
  v6 = *(v4 + 16);
  if (!v6)
  {
    v7 = MEMORY[0x277D84F90];
    v10 = *(MEMORY[0x277D84F90] + 16);
    if (v10)
    {
LABEL_11:
      v11 = 0;
      for (i = 4; ; ++i)
      {
        v13 = v7[i];
        v14 = __OFADD__(v11, v13);
        v11 += v13;
        if (v14)
        {
          break;
        }

        if (!--v10)
        {
          v15 = v11;

          return v15;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_27:

    return 0;
  }

  v7 = sub_275B0B69C(*(v4 + 16), 0);
  v8 = sub_275B0B83C(v21, v7 + 4, v6, v5);

  result = sub_275B0C684();
  if (v8 == v6)
  {
    v10 = v7[2];
    if (v10)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_275B0D610(char a1)
{
  switch(a1)
  {
    case 17:
      v5 = v1[5];
      v6 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
      v7 = v1[7];
      v8 = "subscriptionoptimizerd";
      v9 = *(v6 + 96);
      v10 = 0xD000000000000019;
      return v9(v7, v10, v8 | 0x8000000000000000, v5, v6);
    case 18:
      v5 = v1[5];
      v6 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
      v7 = v1[7];
      v8 = "com.apple.camera";
      v9 = *(v6 + 96);
      v10 = 0xD000000000000016;
      return v9(v7, v10, v8 | 0x8000000000000000, v5, v6);
    case 19:
      v2 = v1[5];
      v3 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
      return (*(v3 + 96))(v1[7], 0xD000000000000010, 0x8000000275B7F3E0, v2, v3);
    default:
      if (qword_280A32C48 != -1)
      {
        swift_once();
      }

      v11 = sub_275B7A96C();
      __swift_project_value_buffer(v11, qword_280A33198);
      sub_275B7B09C();
      MEMORY[0x277C89240](0x2065727574616546, 0xE90000000000005BLL);
      sub_275B7B0EC();
      MEMORY[0x277C89240](0xD000000000000030, 0x8000000275B80420);
      sub_275B7A95C();

      return -1;
  }
}

uint64_t *BiomeAppLaunchFeatureProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[11];

  v2 = v0[14];
  sub_275B0D8A0(v0[13]);
  v3 = v0[15];

  v4 = v0[16];

  return v0;
}

uint64_t BiomeAppLaunchFeatureProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[11];

  v2 = v0[14];
  sub_275B0D8A0(v0[13]);
  v3 = v0[15];

  v4 = v0[16];

  return swift_deallocClassInstance();
}

uint64_t sub_275B0D8A0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_275B0D904(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_275B0D944()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A331B8);
  __swift_project_value_buffer(v0, qword_280A331B8);
  type metadata accessor for BiomeFocusFeatureProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331F0, &unk_275B7C580);
  return sub_275B7A97C();
}

void *BiomeFocusFeatureProvider.__allocating_init(_:_:_:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[9] = 0;
  sub_275B075DC(a1, (v6 + 2));
  v6[7] = a2;
  v6[8] = a3;
  return v6;
}

void *BiomeFocusFeatureProvider.init(_:_:_:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3[9] = 0;
  sub_275B075DC(a1, (v3 + 2));
  v3[7] = a2;
  v3[8] = a3;
  return v3;
}

uint64_t sub_275B0DA5C()
{
  if (v0[9])
  {
    v1 = v0[9];
  }

  else
  {
    v2 = v0[5];
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    v4 = v0;
    v1 = (*(v3 + 104))(v0[8], v2, v3);
    v5 = v0[9];
    v4[9] = v1;
  }

  return v1;
}

uint64_t BiomeFocusFeatureProvider.getFeatureByName(_:)(unsigned __int8 a1)
{
  if (a1 <= 0x2Bu)
  {
    if (a1 > 0x29u)
    {
      if (a1 == 42)
      {
        v35 = v1[5];
        v36 = v1[6];
        __swift_project_boxed_opaque_existential_1(v1 + 2, v35);
        v37 = (*(v36 + 32))(v1[7], v35, v36);
        type metadata accessor for Feature();
        v20 = swift_allocObject();
        *(v20 + 16) = 42;
        v21 = [objc_opt_self() featureValueWithInt64_];
      }

      else
      {
        if (a1 != 43)
        {
          goto LABEL_48;
        }

        v22 = v1[5];
        v23 = v1[6];
        __swift_project_boxed_opaque_existential_1(v1 + 2, v22);
        v24 = v1[8];
        v25 = sub_275B7AC4C();
        v26 = (*(v23 + 16))(v25, v22, v23);
        type metadata accessor for Feature();
        v20 = swift_allocObject();
        *(v20 + 16) = 43;
        v21 = [objc_opt_self() featureValueWithInt64_];
      }
    }

    else if (a1 == 40)
    {
      v32 = v1[5];
      v33 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v32);
      v34 = (*(v33 + 16))(v1[7], v32, v33);
      type metadata accessor for Feature();
      v20 = swift_allocObject();
      *(v20 + 16) = 40;
      v21 = [objc_opt_self() featureValueWithInt64_];
    }

    else
    {
      if (a1 != 41)
      {
        goto LABEL_48;
      }

      v17 = v1[5];
      v18 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v17);
      v19 = (*(v18 + 24))(v1[7], v17, v18);
      type metadata accessor for Feature();
      v20 = swift_allocObject();
      *(v20 + 16) = 41;
      v21 = [objc_opt_self() featureValueWithInt64_];
    }
  }

  else if (a1 <= 0x2Du)
  {
    if (a1 == 44)
    {
      v41 = v1[5];
      v42 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v41);
      v43 = v1[8];
      v44 = sub_275B7AC4C();
      v45 = (*(v42 + 24))(v44, v41, v42);
      type metadata accessor for Feature();
      v20 = swift_allocObject();
      *(v20 + 16) = 44;
      v21 = [objc_opt_self() featureValueWithInt64_];
    }

    else
    {
      if (a1 != 45)
      {
        goto LABEL_48;
      }

      v27 = v1[5];
      v28 = v1[6];
      __swift_project_boxed_opaque_existential_1(v1 + 2, v27);
      v29 = v1[8];
      v30 = sub_275B7AC4C();
      v31 = (*(v28 + 32))(v30, v27, v28);
      type metadata accessor for Feature();
      v20 = swift_allocObject();
      *(v20 + 16) = 45;
      v21 = [objc_opt_self() featureValueWithInt64_];
    }
  }

  else
  {
    switch(a1)
    {
      case '.':
        v38 = v1[5];
        v39 = v1[6];
        __swift_project_boxed_opaque_existential_1(v1 + 2, v38);
        v40 = (*(v39 + 112))(v1[8], v38, v39);
        type metadata accessor for Feature();
        v20 = swift_allocObject();
        *(v20 + 16) = 46;
        v21 = [objc_opt_self() featureValueWithInt64_];
        break;
      case '/':
        v46 = sub_275B0DA5C();
        v47 = 0;
        v4 = 0x8000000275B7FC60;
        v48 = v46 + 40;
        v49 = -*(v46 + 16);
        v50 = MEMORY[0x277D84F90];
LABEL_35:
        v51 = v47 + 1;
        v52 = (v48 + 16 * v47);
        while (v49 + v51 != 1)
        {
          v47 = v51;
          if ((v51 - 1) >= *(v46 + 16))
          {
            goto LABEL_54;
          }

          v53 = *(v52 - 1);
          v54 = *v52;
          if (v53 != 0xD000000000000023 || 0x8000000275B7FC60 != v54)
          {
            ++v51;
            v52 += 2;
            if ((sub_275B7B1BC() & 1) == 0)
            {
              continue;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_275B0E5B0(0, *(v50 + 16) + 1, 1);
          }

          v57 = *(v50 + 16);
          v56 = *(v50 + 24);
          v58 = v57 + 1;
          if (v57 >= v56 >> 1)
          {
            sub_275B0E5B0((v56 > 1), v57 + 1, 1);
            v58 = v57 + 1;
          }

          *(v50 + 16) = v58;
          v59 = v50 + 16 * v57;
          *(v59 + 32) = v53;
          *(v59 + 40) = v54;
          v48 = v46 + 40;
          goto LABEL_35;
        }

        v62 = *(v50 + 16);

        type metadata accessor for Feature();
        v20 = swift_allocObject();
        *(v20 + 16) = 47;
        v21 = [objc_opt_self() featureValueWithInt64_];
        break;
      case '0':
        v2 = sub_275B0DA5C();
        v3 = 0;
        v4 = 0x8000000275B7FC90;
        v5 = v2 + 40;
        v6 = -*(v2 + 16);
        v7 = MEMORY[0x277D84F90];
LABEL_7:
        v8 = v3 + 1;
        v9 = (v5 + 16 * v3);
        while (1)
        {
          if (v6 + v8 == 1)
          {

            v61 = *(v7 + 16);

            type metadata accessor for Feature();
            v20 = swift_allocObject();
            *(v20 + 16) = 48;
            v21 = [objc_opt_self() featureValueWithInt64_];
            goto LABEL_52;
          }

          v3 = v8;
          if ((v8 - 1) >= *(v2 + 16))
          {
            break;
          }

          v10 = *(v9 - 1);
          v11 = *v9;
          if (v10 != 0xD000000000000023 || 0x8000000275B7FC90 != v11)
          {
            ++v8;
            v9 += 2;
            if ((sub_275B7B1BC() & 1) == 0)
            {
              continue;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_275B0E5B0(0, *(v7 + 16) + 1, 1);
          }

          v14 = *(v7 + 16);
          v13 = *(v7 + 24);
          v15 = v14 + 1;
          if (v14 >= v13 >> 1)
          {
            sub_275B0E5B0((v13 > 1), v14 + 1, 1);
            v15 = v14 + 1;
          }

          *(v7 + 16) = v15;
          v16 = v7 + 16 * v14;
          *(v16 + 32) = v10;
          *(v16 + 40) = v11;
          v5 = v2 + 40;
          goto LABEL_7;
        }

        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      default:
LABEL_48:
        LOBYTE(v4) = a1;
        if (qword_280A32C50 == -1)
        {
LABEL_49:
          v60 = sub_275B7A96C();
          __swift_project_value_buffer(v60, qword_280A331B8);
          sub_275B7B09C();
          MEMORY[0x277C89240](0x2065727574616546, 0xE90000000000005BLL);
          sub_275B7B0EC();
          MEMORY[0x277C89240](0xD000000000000031, 0x8000000275B80460);
          sub_275B7A95C();

          type metadata accessor for Feature();
          v20 = swift_allocObject();
          *(v20 + 16) = v4;
          v21 = [objc_opt_self() featureValueWithInt64_];
          break;
        }

LABEL_55:
        swift_once();
        goto LABEL_49;
    }
  }

LABEL_52:
  *(v20 + 24) = v21;
  *(v20 + 32) = 1;
  return v20;
}

Swift::Int __swiftcall BiomeFocusFeatureProvider.getFocusModeCount2w(enabledModeList:identifier:)(Swift::Int enabledModeList, iCloudSubscriptionOptimizerDaemon::FocusSemanticModeIdentifier identifier)
{
  v2 = *(enabledModeList + 16);
  if (v2)
  {
    v3 = 0;
    v4 = "com.apple.donotdisturb.mode.default";
    if (identifier)
    {
      v4 = "com.apple.donotdisturb.mode.driving";
    }

    v5 = (v4 - 32) | 0x8000000000000000;
    v6 = enabledModeList + 40;
    v7 = MEMORY[0x277D84F90];
    v21 = enabledModeList + 40;
    do
    {
      v8 = (v6 + 16 * v3);
      v9 = v3;
      while (1)
      {
        if (v9 >= v2)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          return enabledModeList;
        }

        v3 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_25;
        }

        v11 = *(v8 - 1);
        v10 = *v8;
        if (v11 == 0xD000000000000023 && v5 == v10)
        {
          break;
        }

        v13 = *(v8 - 1);
        v14 = *v8;
        v15 = sub_275B7B1BC();

        if (v15)
        {
          goto LABEL_16;
        }

        ++v9;
        v8 += 2;
        if (v3 == v2)
        {
          goto LABEL_23;
        }
      }

      v16 = *v8;

      v11 = 0xD000000000000023;
LABEL_16:
      enabledModeList = swift_isUniquelyReferenced_nonNull_native();
      if ((enabledModeList & 1) == 0)
      {
        enabledModeList = sub_275B0E5B0(0, *(v7 + 16) + 1, 1);
      }

      v6 = v21;
      v18 = *(v7 + 16);
      v17 = *(v7 + 24);
      if (v18 >= v17 >> 1)
      {
        enabledModeList = sub_275B0E5B0((v17 > 1), v18 + 1, 1);
      }

      *(v7 + 16) = v18 + 1;
      v19 = v7 + 16 * v18;
      *(v19 + 32) = v11;
      *(v19 + 40) = v10;
    }

    while (v3 != v2);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

LABEL_23:
  v20 = *(v7 + 16);

  return v20;
}

uint64_t BiomeFocusFeatureProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 72);

  return v0;
}

uint64_t BiomeFocusFeatureProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 72);

  return swift_deallocClassInstance();
}

char *sub_275B0E5B0(char *a1, int64_t a2, char a3)
{
  result = sub_275B0E648(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275B0E5F4(char *a1, int64_t a2, char a3)
{
  result = sub_275B0E95C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275B0E614(char *a1, int64_t a2, char a3)
{
  result = sub_275B0EC88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275B0E648(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33140, &qword_275B7C430);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_275B0E754(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33168, &qword_275B7C458);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_275B0E858(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E0, &unk_275B7C560);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_275B0E95C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331D8, &unk_275B7C550);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_275B0EA64(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_275B0EB60(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E8, &unk_275B7CDC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_275B0EC88(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331D0, &unk_275B7C540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t static BiomeFocusSleep.getIsSleepModeOn(timestamp:)()
{
  v1 = v0;
  v2 = [objc_opt_self() sleepModeStream];
  sub_275B7AC4C();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = sub_275B7AB3C();
  v5 = sub_275B7AB3C();
  sub_275B0F00C();
  v6 = sub_275B7AF9C();
  v7 = [v2 publisherWithStartTime:v4 endTime:v5 maxEvents:v6 reversed:1];

  v18 = nullsub_1;
  v19 = 0;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_275B0C864;
  v17 = &block_descriptor_0;
  v8 = _Block_copy(&v14);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v3;
  v18 = sub_275B0F0F4;
  v19 = v9;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_275B0C864;
  v17 = &block_descriptor_6;
  v10 = _Block_copy(&v14);

  v11 = [v7 sinkWithCompletion:v8 receiveInput:v10];

  _Block_release(v10);
  _Block_release(v8);

  swift_beginAccess();
  v12 = *(v3 + 16);

  return v12;
}

unint64_t sub_275B0F00C()
{
  result = qword_280A331F8;
  if (!qword_280A331F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A331F8);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_275B0F070(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 eventBody];
  swift_beginAccess();
  if (v4 && [v4 sleepModeState] == 2)
  {
    *(a3 + 16) = 1;
  }

  swift_endAccess();
}

id static BiomeFocusSleep.receiveInputSleepMode(_:_:)(id result, _BYTE *a2)
{
  if (result)
  {
    result = [result sleepModeState];
    if (result == 2)
    {
      *a2 = 1;
    }
  }

  return result;
}

uint64_t static BiomeFocusSleep.getIsDoNotDisturbOn(timestamp:)()
{
  if (static BiomeFocusSleep.getEnabledFocusMode(timestamp:)() == 0xD000000000000023 && 0x8000000275B7FC60 == v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_275B7B1BC();
  }

  return v1 & 1;
}

uint64_t static BiomeFocusSleep.getEnabledFocusMode(timestamp:)()
{
  v1 = v0;
  v2 = [objc_opt_self() userFocusComputedMode];
  sub_275B7AC4C();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F90];
  v5 = sub_275B7AB3C();
  v6 = sub_275B7AB3C();
  sub_275B0F00C();
  v7 = sub_275B7AF9C();
  v8 = [v2 publisherWithStartTime:v5 endTime:v6 maxEvents:v7 reversed:1];

  v20 = nullsub_1;
  v21 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_275B0C864;
  v19 = &block_descriptor_15;
  v9 = _Block_copy(&v16);
  v10 = swift_allocObject();
  v10[2] = v1;
  v10[3] = v3;
  v10[4] = v4;
  v20 = sub_275B0F594;
  v21 = v10;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_275B0C864;
  v19 = &block_descriptor_21;
  v11 = _Block_copy(&v16);

  v12 = [v8 sinkWithCompletion:v9 receiveInput:v11];

  _Block_release(v11);
  _Block_release(v9);

  swift_beginAccess();
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);

  return v13;
}

uint64_t static BiomeFocusSleep.getIsDrivingModeOn(timestamp:)()
{
  if (static BiomeFocusSleep.getEnabledFocusMode(timestamp:)() == 0xD000000000000023 && 0x8000000275B7FC90 == v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_275B7B1BC();
  }

  return v1 & 1;
}

void sub_275B0F4FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [a1 eventBody];
  swift_beginAccess();
  swift_beginAccess();
  _s33iCloudSubscriptionOptimizerDaemon15BiomeFocusSleepC012receiveInputF4ModeyySo06BMUserf8ComputedJ5EventCSg_SSzSaySSGztFZ_0(v6, (a3 + 16), (a4 + 16));
  swift_endAccess();
  swift_endAccess();
}

uint64_t static BiomeFocusSleep.enabledFocusMode(_:)(void *a1)
{
  result = [a1 isStarting];
  if (result)
  {
    result = [a1 semanticModeIdentifier];
    if (result)
    {

      return 1;
    }
  }

  return result;
}

uint64_t static BiomeFocusSleep.disabledFocusMode(_:)(void *a1)
{
  if ([a1 isStarting])
  {
    return 0;
  }

  result = [a1 semanticModeIdentifier];
  if (result)
  {

    return 1;
  }

  return result;
}

void _s33iCloudSubscriptionOptimizerDaemon15BiomeFocusSleepC012receiveInputF4ModeyySo06BMUserf8ComputedJ5EventCSg_SSzSaySSGztFZ_0(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1)
  {
    v5 = a1;
    if ([v5 isStarting])
    {
      v6 = [v5 semanticModeIdentifier];
      if (v6)
      {

        v7 = *a3;
        v8 = [v5 semanticModeIdentifier];
        if (v8)
        {
          v10 = v8;
          v11 = sub_275B7AD0C();
          v13 = v12;
        }

        else
        {
          v11 = 0;
          v13 = 0xE000000000000000;
        }

        v40 = v11;
        v41 = v13;
        MEMORY[0x28223BE20](v8, v9);
        v39 = &v40;
        v14 = sub_275B0B5F0(sub_275B0F9A4, v38, v7);

        if ((v14 & 1) == 0)
        {
          v15 = a2[1];

          v16 = [v5 semanticModeIdentifier];
          if (v16)
          {
            v17 = v16;
            v18 = sub_275B7AD0C();
            v20 = v19;
          }

          else
          {
            v18 = 0;
            v20 = 0xE000000000000000;
          }

          *a2 = v18;
          a2[1] = v20;
        }
      }
    }

    if ([v5 isStarting])
    {
      goto LABEL_18;
    }

    v21 = [v5 semanticModeIdentifier];
    if (!v21)
    {
      goto LABEL_18;
    }

    v22 = *a3;
    v23 = [v5 semanticModeIdentifier];
    if (v23)
    {
      v25 = v23;
      v26 = sub_275B7AD0C();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0xE000000000000000;
    }

    v40 = v26;
    v41 = v28;
    MEMORY[0x28223BE20](v23, v24);
    v39 = &v40;
    v29 = sub_275B0B5F0(sub_275B0F978, v38, v22);

    if (v29)
    {
LABEL_18:
    }

    else
    {
      v30 = [v5 semanticModeIdentifier];
      if (v30)
      {
        v31 = v30;
        v32 = sub_275B7AD0C();
        v34 = v33;
      }

      else
      {
        v32 = 0;
        v34 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_275B11064(0, *(v22 + 2) + 1, 1, v22);
      }

      v36 = *(v22 + 2);
      v35 = *(v22 + 3);
      if (v36 >= v35 >> 1)
      {
        v22 = sub_275B11064((v35 > 1), v36 + 1, 1, v22);
      }

      *(v22 + 2) = v36 + 1;
      v37 = &v22[16 * v36];
      *(v37 + 4) = v32;
      *(v37 + 5) = v34;
      *a3 = v22;
    }
  }
}

uint64_t sub_275B0F9CC()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A33200);
  __swift_project_value_buffer(v0, qword_280A33200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33298, qword_275B7C700);
  return sub_275B7A97C();
}

void *BiomeICloudSubscription.displayedNotification.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v1;
  return v1;
}

uint64_t BiomeICloudSubscription.buyAndOpenLabel.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return result;
}

uint64_t BiomeICloudSubscription.buyAndOpenLabel.setter(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 16) = result;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return result;
}

uint64_t BiomeICloudSubscription.init(displayedNotification:label:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

id static BiomeICloudSubscription.getPublisher(start:end:maxEvents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [BiomeLibrary() iCloud];
  swift_unknownObjectRelease();
  v7 = [v6 Subscription];
  swift_unknownObjectRelease();
  v8 = _s33iCloudSubscriptionOptimizerDaemon10BiomeUtilsC21getBMPublisherOptions5start3end9maxEventsSo0hI0C01iabC4Core9TimestampV_ALSitFZ_0(a1, a2, a3);
  v9 = [v7 publisherWithOptions_];

  return v9;
}

void sub_275B0FCD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 eventBody];
  [a1 timestamp];
  sub_275B7AB8C();
  swift_beginAccess();
  swift_beginAccess();
  if (v7)
  {
    v8 = *(a3 + 16);
    v9 = v7;
    v10 = v9;
    if (v8 == -1)
    {
      if ([v9 hasTotalQuota])
      {
        v11 = [v10 totalQuota];

        *(a3 + 16) = v11;
        goto LABEL_13;
      }
    }

    else if (*(a4 + 16) != 1 && [v9 hasTotalQuota] && v8 < objc_msgSend(v10, sel_totalQuota))
    {
      *(a4 + 16) = 1;
      *(a4 + 24) = sub_275B7ABCC();
    }

    if (*(a4 + 32) == 1)
    {
    }

    else
    {
      v12 = [v10 iCloudSubscriptionEventType];

      if (v12 == 3)
      {
        *(a4 + 32) = 1;
        *(a4 + 40) = sub_275B7ABCC();
      }
    }
  }

LABEL_13:
  swift_endAccess();
  swift_endAccess();
}

void static BiomeICloudSubscription.BuyAndOpenLabel.receiveInput(_:_:_:_:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a1)
  {
    v7 = *a4;
    v8 = a1;
    v9 = v8;
    v16 = v8;
    if (v7 == -1)
    {
      v13 = [v8 hasTotalQuota];
      v9 = v16;
      if (v13)
      {
        v14 = [v16 totalQuota];

        *a4 = v14;
        return;
      }
    }

    else if ((*a5 & 1) == 0)
    {
      v10 = [v8 hasTotalQuota];
      v9 = v16;
      if (v10)
      {
        v11 = [v16 totalQuota];
        v9 = v16;
        if (v7 < v11)
        {
          *a5 = 1;
          v12 = sub_275B7ABCC();
          v9 = v16;
          *(a5 + 8) = v12;
        }
      }
    }

    if (*(a5 + 16))
    {

      MEMORY[0x2821F9730]();
    }

    else
    {
      v15 = [v9 iCloudSubscriptionEventType];

      if (v15 == 3)
      {
        *(a5 + 16) = 1;
        *(a5 + 24) = sub_275B7ABCC();
      }
    }
  }
}

uint64_t static BiomeICloudSubscription.ICloudNotification.getDisplayedNotifications(beginTime:endTime:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F90];
  v5 = [BiomeLibrary() iCloud];
  swift_unknownObjectRelease();
  v6 = [v5 Subscription];
  swift_unknownObjectRelease();
  v7 = _s33iCloudSubscriptionOptimizerDaemon10BiomeUtilsC21getBMPublisherOptions5start3end9maxEventsSo0hI0C01iabC4Core9TimestampV_ALSitFZ_0(a1, a2, 0);
  v8 = [v6 publisherWithOptions_];

  v20 = sub_275B11E68;
  v21 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_275B0B1C0;
  v19 = &block_descriptor_1;
  v9 = _Block_copy(&v16);

  v10 = [v8 filterWithIsIncluded_];
  _Block_release(v9);

  v20 = sub_275B12560;
  v21 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_275B0C864;
  v19 = &block_descriptor_5;
  v11 = _Block_copy(&v16);

  v20 = sub_275B122E4;
  v21 = v4;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_275B0A330;
  v19 = &block_descriptor_8;
  v12 = _Block_copy(&v16);

  v13 = [v10 sinkWithCompletion:v11 receiveInput:v12];
  _Block_release(v12);
  _Block_release(v11);

  swift_beginAccess();
  v14 = *(v4 + 16);

  return v14;
}

void *static BiomeICloudSubscription.ICloudNotification.filterDisplayed(_:)(void *result)
{
  if (result)
  {
    return ([result iCloudSubscriptionEventType] == 5);
  }

  return result;
}

uint64_t sub_275B102E0(void *a1)
{
  v1 = a1;
  v2 = [v1 eventBody];
  if (v2)
  {
    v3 = v2;
    [v1 timestamp];
    v4 = sub_275B7AB8C();
    v5 = sub_275B11170(0, 1, 1, MEMORY[0x277D84F90]);
    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_275B11170((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    v8 = &v5[16 * v7];
    *(v8 + 4) = v3;
    *(v8 + 5) = v4;
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  sub_275B30660(v5);
  return swift_endAccess();
}

char *static BiomeICloudSubscription.ICloudNotification.receiveInput(_:)(void *a1)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = a1;
  v2 = [v1 eventBody];
  if (v2)
  {
    v3 = v2;
    [v1 timestamp];
    v4 = sub_275B7AB8C();
    v5 = sub_275B11170(0, 1, 1, MEMORY[0x277D84F90]);
    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_275B11170((v6 > 1), v7 + 1, 1, v5);
    }

    v8 = v5;

    result = v8;
    *(v8 + 2) = v7 + 1;
    v10 = &v8[16 * v7];
    *(v10 + 4) = v3;
    *(v10 + 5) = v4;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

double static BiomeICloudSubscription.MlServerScore.get(end:)(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0xBFF0000000000000;
  v4 = sub_275B7AC4C();
  v5 = [BiomeLibrary() iCloud];
  swift_unknownObjectRelease();
  v6 = [v5 Subscription];
  swift_unknownObjectRelease();
  v7 = _s33iCloudSubscriptionOptimizerDaemon10BiomeUtilsC21getBMPublisherOptions5start3end9maxEventsSo0hI0C01iabC4Core9TimestampV_ALSitFZ_0(v4, a1, 0);
  v8 = [v6 publisherWithOptions_];

  v19 = sub_275B12560;
  v20 = 0;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_275B0C864;
  v18 = &block_descriptor_14;
  v9 = _Block_copy(&v15);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = v3;
  v19 = sub_275B122EC;
  v20 = v10;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_275B0A330;
  v18 = &block_descriptor_20;
  v11 = _Block_copy(&v15);

  v12 = [v8 sinkWithCompletion:v9 receiveInput:v11];
  _Block_release(v11);
  _Block_release(v9);

  swift_beginAccess();
  v13 = *(v3 + 16);

  return v13;
}

void sub_275B10740(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 eventBody];
  swift_beginAccess();
  if (v4)
  {
    v5 = v4;
    if ([v5 hasMlServerScore])
    {
      [v5 mlServerScore];
      v7 = v6;
      if (v6 >= 0.0 && v6 <= 1.0)
      {

        *(a3 + 16) = v7;
        goto LABEL_12;
      }

      if (qword_280A32C58 != -1)
      {
        swift_once();
      }

      v9 = sub_275B7A96C();
      __swift_project_value_buffer(v9, qword_280A33200);
      sub_275B7B09C();
      MEMORY[0x277C89240](0xD00000000000002ALL, 0x8000000275B80580);
      sub_275B7AEDC();
      MEMORY[0x277C89240](11869, 0xE200000000000000);
      sub_275B7A93C();
    }
  }

LABEL_12:
  swift_endAccess();
}

void static BiomeICloudSubscription.MlServerScore.receiveInput(_:_:)(void *a1, double *a2)
{
  if (a1)
  {
    v7 = a1;
    if ([v7 hasMlServerScore])
    {
      [v7 mlServerScore];
      v4 = v3;
      if (v3 < 0.0 || v3 > 1.0)
      {
        if (qword_280A32C58 != -1)
        {
          swift_once();
        }

        v6 = sub_275B7A96C();
        __swift_project_value_buffer(v6, qword_280A33200);
        sub_275B7B09C();
        MEMORY[0x277C89240](0xD00000000000002ALL, 0x8000000275B80580);
        sub_275B7AEDC();
        MEMORY[0x277C89240](11869, 0xE200000000000000);
        sub_275B7A93C();
      }

      else
      {

        *a2 = v4;
      }
    }

    else
    {
    }
  }
}

uint64_t static BiomeICloudSubscription.UserTier.getTotalQuota(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = -1;
  v5 = sub_275B7ABAC();
  if (v5)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  if (v5)
  {
    a2 = a1;
  }

  v7 = [BiomeLibrary() iCloud];
  swift_unknownObjectRelease();
  v8 = [v7 Subscription];
  swift_unknownObjectRelease();
  v9 = _s33iCloudSubscriptionOptimizerDaemon10BiomeUtilsC21getBMPublisherOptions5start3end9maxEventsSo0hI0C01iabC4Core9TimestampV_ALSitFZ_0(a2, v6, 5);
  v10 = [v8 publisherWithOptions_];

  v20 = sub_275B12560;
  v21 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_275B0C864;
  v19 = &block_descriptor_24;
  v11 = _Block_copy(&v16);
  v20 = sub_275B122F4;
  v21 = v4;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_275B0A330;
  v19 = &block_descriptor_27;
  v12 = _Block_copy(&v16);

  v13 = [v10 sinkWithCompletion:v11 receiveInput:v12];
  _Block_release(v12);
  _Block_release(v11);

  swift_beginAccess();
  v14 = *(v4 + 16);

  return v14;
}

void sub_275B10CA8(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  swift_beginAccess();
  if (v3 && *(a2 + 16) == -1)
  {
    v4 = v3;
    if ([v4 hasTotalQuota])
    {
      v5 = [v4 totalQuota];

      *(a2 + 16) = v5;
    }

    else
    {
    }
  }

  swift_endAccess();
}

void static BiomeICloudSubscription.UserTier.receiveInput(_:_:)(void *a1, void *a2)
{
  if (a1 && *a2 == -1)
  {
    v4 = a1;
    if ([v4 hasTotalQuota])
    {
      v3 = [v4 totalQuota];

      *a2 = v3;
    }

    else
    {
    }
  }
}

uint64_t static BiomeICloudSubscription.UserTier.get(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static BiomeICloudSubscription.UserTier.getTotalQuota(_:_:)(a1, a2) >= 0x140000000)
  {
    return sub_275B7AD3C();
  }

  if (qword_280A32C58 != -1)
  {
    swift_once();
  }

  v3 = sub_275B7A96C();
  __swift_project_value_buffer(v3, qword_280A33200);
  sub_275B7B09C();

  v4 = sub_275B7B19C();
  MEMORY[0x277C89240](v4);

  MEMORY[0x277C89240](11869, 0xE200000000000000);
  sub_275B7A93C();

  return 0xD000000000000010;
}

char *sub_275B10F4C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33248, &qword_275B7C6A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_275B11064(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33140, &qword_275B7C430);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_275B11170(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A332A0, &qword_275B7DFF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_275B1127C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33278, &qword_275B7C6D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_275B1139C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331D8, &unk_275B7C550);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_275B114E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E0, &unk_275B7C560);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_275B11620(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_275B117DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_275B11910(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33268, &qword_275B7C6C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_275B11A1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A331E8, &unk_275B7CDC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_275B11B44(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33270, &qword_275B7C6D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_275B11C8C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

id sub_275B11E68(void *a1)
{
  result = [a1 eventBody];
  if (result)
  {
    v2 = result;
    v3 = [result iCloudSubscriptionEventType];

    return (v3 == 5);
  }

  return result;
}

id sub_275B11EBC(void *a1)
{
  result = [a1 state];
  if (result == 1)
  {
    [a1 error];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33218, &unk_275B7C670);
    v3 = sub_275B7AD1C();
    v5 = v4;
    if (qword_280A32C58 != -1)
    {
      swift_once();
    }

    v6 = sub_275B7A96C();
    __swift_project_value_buffer(v6, qword_280A33200);
    sub_275B7B09C();
    MEMORY[0x277C89240](0xD00000000000003FLL, 0x8000000275B80660);
    MEMORY[0x277C89240](v3, v5);

    MEMORY[0x277C89240](11869, 0xE200000000000000);
    sub_275B7A95C();
  }

  return result;
}

uint64_t sub_275B12008(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = -1;
  v3 = swift_allocObject();
  v4 = sub_275B7AB2C();
  *(v3 + 16) = 0;
  *(v3 + 24) = v4;
  *(v3 + 32) = 0;
  *(v3 + 40) = v4;
  v5 = sub_275B7ABBC();
  v6 = [BiomeLibrary() iCloud];
  swift_unknownObjectRelease();
  v7 = [v6 Subscription];
  swift_unknownObjectRelease();
  v8 = _s33iCloudSubscriptionOptimizerDaemon10BiomeUtilsC21getBMPublisherOptions5start3end9maxEventsSo0hI0C01iabC4Core9TimestampV_ALSitFZ_0(a1, v5, 0);
  v9 = [v7 publisherWithOptions_];

  v23 = sub_275B12560;
  v24 = 0;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_275B0C864;
  v22 = &block_descriptor_44;
  v10 = _Block_copy(&v19);
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v2;
  v11[4] = v3;
  v23 = sub_275B12534;
  v24 = v11;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_275B0A330;
  v22 = &block_descriptor_50;
  v12 = _Block_copy(&v19);

  v13 = [v9 sinkWithCompletion:v10 receiveInput:v12];
  _Block_release(v12);
  _Block_release(v10);

  swift_beginAccess();
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  v16 = *(v3 + 32);
  v17 = *(v3 + 40);

  return v14;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_275B12310(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_275B12358(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_275B123C4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[32])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_275B12418(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_275B1246C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_275B124B4(uint64_t result, int a2, int a3)
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

uint64_t sub_275B12584()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A332A8);
  __swift_project_value_buffer(v0, qword_280A332A8);
  type metadata accessor for BiomeNotificationFeatureProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A332C8, &unk_275B7C790);
  return sub_275B7A97C();
}

__n128 sub_275B12600@<Q0>(__n128 *a1@<X8>)
{
  v3 = *(v1 + 128);
  v31 = *(v1 + 112);
  v32 = v3;
  v33 = *(v1 + 144);
  v4 = *(v1 + 96);
  v29 = *(v1 + 80);
  v30 = v4;
  v5 = v31;
  if (v31)
  {
    v7 = *(&v32 + 1);
    v6 = v33;
    v9 = *(&v31 + 1);
    v8 = v32;
    v10 = *(&v30 + 1);
    v11 = v30;
    v12 = v29;
  }

  else
  {
    v13 = *(v1 + 40);
    v14 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1((v1 + 16), v13);
    (*(v14 + 48))(&v24, *(v1 + 56), v13, v14);
    v15 = *(v1 + 128);
    v22[2] = *(v1 + 112);
    v22[3] = v15;
    v23 = *(v1 + 144);
    v16 = *(v1 + 96);
    v22[0] = *(v1 + 80);
    v22[1] = v16;
    v17 = v27;
    *(v1 + 112) = v26;
    *(v1 + 128) = v17;
    *(v1 + 144) = v28;
    v18 = v25;
    *(v1 + 80) = v24;
    *(v1 + 96) = v18;
    sub_275B13810(&v24, v21);
    sub_275B1386C(v22);
    v7 = *(&v27 + 1);
    v6 = v28;
    v9 = *(&v26 + 1);
    v8 = v27;
    v10 = *(&v25 + 1);
    v5 = v26;
    v11 = v25;
    v12 = v24;
  }

  v20 = v12;
  sub_275B138D4(&v29, v22);
  result = v20;
  *a1 = v20;
  a1[1].n128_u64[0] = v11;
  a1[1].n128_u64[1] = v10;
  a1[2].n128_u64[0] = v5;
  a1[2].n128_u64[1] = v9;
  a1[3].n128_u64[0] = v8;
  a1[3].n128_u64[1] = v7;
  a1[4].n128_u64[0] = v6;
  return result;
}

__n128 sub_275B1274C@<Q0>(__n128 *a1@<X8>)
{
  v3 = *(v1 + 168);
  v4 = *(v1 + 200);
  v31 = *(v1 + 184);
  v32 = v4;
  v33 = *(v1 + 216);
  v29 = *(v1 + 152);
  v30 = v3;
  v5 = v31;
  if (v31)
  {
    v7 = *(&v32 + 1);
    v6 = v33;
    v9 = *(&v31 + 1);
    v8 = v32;
    v10 = *(&v30 + 1);
    v11 = v30;
    v12 = v29;
  }

  else
  {
    v13 = *(v1 + 40);
    v14 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1((v1 + 16), v13);
    (*(v14 + 56))(&v24, *(v1 + 56), v13, v14);
    v15 = *(v1 + 168);
    v16 = *(v1 + 200);
    v22[2] = *(v1 + 184);
    v22[3] = v16;
    v22[0] = *(v1 + 152);
    v22[1] = v15;
    v17 = v24;
    *(v1 + 168) = v25;
    v18 = v27;
    *(v1 + 184) = v26;
    *(v1 + 200) = v18;
    v23 = *(v1 + 216);
    *(v1 + 216) = v28;
    *(v1 + 152) = v17;
    sub_275B13810(&v24, v21);
    sub_275B1386C(v22);
    v7 = *(&v27 + 1);
    v6 = v28;
    v9 = *(&v26 + 1);
    v8 = v27;
    v10 = *(&v25 + 1);
    v5 = v26;
    v11 = v25;
    v12 = v24;
  }

  v20 = v12;
  sub_275B138D4(&v29, v22);
  result = v20;
  *a1 = v20;
  a1[1].n128_u64[0] = v11;
  a1[1].n128_u64[1] = v10;
  a1[2].n128_u64[0] = v5;
  a1[2].n128_u64[1] = v9;
  a1[3].n128_u64[0] = v8;
  a1[3].n128_u64[1] = v7;
  a1[4].n128_u64[0] = v6;
  return result;
}

__n128 sub_275B128B0@<Q0>(__n128 *a1@<X8>)
{
  v3 = *(v1 + 272);
  v31 = *(v1 + 256);
  v32 = v3;
  v33 = *(v1 + 288);
  v4 = *(v1 + 240);
  v29 = *(v1 + 224);
  v30 = v4;
  v5 = v31;
  if (v31)
  {
    v7 = *(&v32 + 1);
    v6 = v33;
    v9 = *(&v31 + 1);
    v8 = v32;
    v10 = *(&v30 + 1);
    v11 = v30;
    v12 = v29;
  }

  else
  {
    v13 = *(v1 + 40);
    v14 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1((v1 + 16), v13);
    (*(v14 + 88))(&v24, *(v1 + 64), *(v1 + 72), v13, v14);
    v15 = *(v1 + 272);
    v22[2] = *(v1 + 256);
    v22[3] = v15;
    v23 = *(v1 + 288);
    v16 = *(v1 + 240);
    v22[0] = *(v1 + 224);
    v22[1] = v16;
    v17 = v27;
    *(v1 + 256) = v26;
    *(v1 + 272) = v17;
    *(v1 + 288) = v28;
    v18 = v25;
    *(v1 + 224) = v24;
    *(v1 + 240) = v18;
    sub_275B13810(&v24, v21);
    sub_275B1386C(v22);
    v7 = *(&v27 + 1);
    v6 = v28;
    v9 = *(&v26 + 1);
    v8 = v27;
    v10 = *(&v25 + 1);
    v5 = v26;
    v11 = v25;
    v12 = v24;
  }

  v20 = v12;
  sub_275B138D4(&v29, v22);
  result = v20;
  *a1 = v20;
  a1[1].n128_u64[0] = v11;
  a1[1].n128_u64[1] = v10;
  a1[2].n128_u64[0] = v5;
  a1[2].n128_u64[1] = v9;
  a1[3].n128_u64[0] = v8;
  a1[3].n128_u64[1] = v7;
  a1[4].n128_u64[0] = v6;
  return result;
}

uint64_t sub_275B129FC()
{
  v1 = v0[37];
  v2 = v0[38];
  if (v1)
  {
    v3 = v0[37];
  }

  else
  {
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    v6 = v0;
    v3 = (*(v5 + 128))(v0[8], v0[9], v4, v5);
    v7 = v6[37];
    v8 = v6[38];
    v6[37] = v3;
    v6[38] = v9;

    sub_275B0D8A0(v7);
  }

  sub_275B0D904(v1);
  return v3;
}

uint64_t BiomeNotificationFeatureProvider.getFeatureByNameAllNotifications(_:)(unsigned __int8 a1)
{
  if (a1 > 0x1Du)
  {
    if (a1 - 32 >= 4)
    {
      if (a1 == 30)
      {
        sub_275B128B0(&v18);
        sub_275B13748(&v18);
        v15 = v18.n128_u64[0];
        type metadata accessor for Feature();
        v2 = swift_allocObject();
        *(v2 + 16) = 30;
        v7 = [objc_opt_self() featureValueWithInt64_];
      }

      else
      {
        if (a1 != 31)
        {
          goto LABEL_24;
        }

        sub_275B128B0(&v18);
        sub_275B13748(&v18);
        v10 = v18.n128_u64[1];
        type metadata accessor for Feature();
        v2 = swift_allocObject();
        *(v2 + 16) = 31;
        v7 = [objc_opt_self() featureValueWithInt64_];
      }
    }

    else
    {
      v6 = sub_275B13490(a1);
      type metadata accessor for Feature();
      v2 = swift_allocObject();
      *(v2 + 16) = a1;
      v7 = [objc_opt_self() featureValueWithInt64_];
    }

LABEL_9:
    v3 = v7;
    v4 = 1;
    goto LABEL_22;
  }

  if (a1 > 0x1Au)
  {
    switch(a1)
    {
      case 0x1Bu:
        sub_275B12600(&v18);

        sub_275B13748(&v18);
        sub_275B7AE3C();
        type metadata accessor for Feature();
        v2 = swift_allocObject();
        *(v2 + 16) = 27;
        v8 = sub_275B7ACDC();

        v9 = [objc_opt_self() featureValueWithString_];
        break;
      case 0x1Cu:
        sub_275B12600(&v18);

        sub_275B13748(&v18);
        sub_275B7AE3C();
        type metadata accessor for Feature();
        v2 = swift_allocObject();
        *(v2 + 16) = 28;
        v8 = sub_275B7ACDC();

        v9 = [objc_opt_self() featureValueWithString_];
        break;
      case 0x1Du:
        sub_275B12600(&v18);

        sub_275B13748(&v18);
        sub_275B7AE3C();
        type metadata accessor for Feature();
        v2 = swift_allocObject();
        *(v2 + 16) = 29;
        v8 = sub_275B7ACDC();

        v9 = [objc_opt_self() featureValueWithString_];
        break;
      default:
        goto LABEL_24;
    }

    v13 = v9;

    v3 = v13;
    v4 = 3;
    goto LABEL_22;
  }

  if (a1 == 24)
  {
    sub_275B12600(&v18);
    sub_275B13748(&v18);
    v11 = v18.n128_u64[0];
    type metadata accessor for Feature();
    v2 = swift_allocObject();
    *(v2 + 16) = 24;
    v7 = [objc_opt_self() featureValueWithInt64_];
    goto LABEL_9;
  }

  if (a1 == 25)
  {
    sub_275B12600(&v18);
    sub_275B13748(&v18);
    v12 = v18.n128_u64[1];
    type metadata accessor for Feature();
    v2 = swift_allocObject();
    *(v2 + 16) = 25;
    v7 = [objc_opt_self() featureValueWithInt64_];
    goto LABEL_9;
  }

  if (a1 != 26)
  {
LABEL_24:
    if (qword_280A32C60 != -1)
    {
      swift_once();
    }

    v17 = sub_275B7A96C();
    __swift_project_value_buffer(v17, qword_280A332A8);
    v18.n128_u64[0] = 0;
    v18.n128_u64[1] = 0xE000000000000000;
    sub_275B7B09C();
    MEMORY[0x277C89240](0x2065727574616546, 0xE90000000000005BLL);
    sub_275B7B0EC();
    MEMORY[0x277C89240](0xD000000000000038, 0x8000000275B806A0);
    sub_275B7A95C();

    type metadata accessor for Feature();
    v2 = swift_allocObject();
    *(v2 + 16) = a1;
    v7 = [objc_opt_self() featureValueWithInt64_];
    goto LABEL_9;
  }

  sub_275B12600(&v18);
  sub_275B13748(&v18);
  v1 = v19;
  type metadata accessor for Feature();
  v2 = swift_allocObject();
  *(v2 + 16) = 26;
  v3 = [objc_opt_self() featureValueWithDouble_];
  v4 = 2;
LABEL_22:
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  return v2;
}

uint64_t BiomeNotificationFeatureProvider.getFeatureByNameICloudNotifications(_:)(unsigned __int8 a1)
{
  if (a1 > 0x25u)
  {
    if (a1 == 38)
    {
      sub_275B1274C(&v10);

      sub_275B13748(&v10);
      sub_275B7AE3C();
      type metadata accessor for Feature();
      v1 = swift_allocObject();
      *(v1 + 16) = 38;
      v2 = sub_275B7ACDC();

      v3 = [objc_opt_self() featureValueWithString_];
      goto LABEL_13;
    }

    if (a1 == 39)
    {
      sub_275B1274C(&v10);

      sub_275B13748(&v10);
      sub_275B7AE3C();
      type metadata accessor for Feature();
      v1 = swift_allocObject();
      *(v1 + 16) = 39;
      v2 = sub_275B7ACDC();

      v3 = [objc_opt_self() featureValueWithString_];
      goto LABEL_13;
    }
  }

  else
  {
    if (a1 == 36)
    {
      sub_275B1274C(&v10);
      sub_275B13748(&v10);
      v8 = v11;
      type metadata accessor for Feature();
      v1 = swift_allocObject();
      *(v1 + 16) = 36;
      v6 = [objc_opt_self() featureValueWithDouble_];
      v7 = 2;
      goto LABEL_14;
    }

    if (a1 == 37)
    {
      sub_275B1274C(&v10);

      sub_275B13748(&v10);
      sub_275B7AE3C();
      type metadata accessor for Feature();
      v1 = swift_allocObject();
      *(v1 + 16) = 37;
      v2 = sub_275B7ACDC();

      v3 = [objc_opt_self() featureValueWithString_];
LABEL_13:
      v6 = v3;

      v7 = 3;
      goto LABEL_14;
    }
  }

  if (qword_280A32C60 != -1)
  {
    swift_once();
  }

  v5 = sub_275B7A96C();
  __swift_project_value_buffer(v5, qword_280A332A8);
  v10.n128_u64[0] = 0;
  v10.n128_u64[1] = 0xE000000000000000;
  sub_275B7B09C();
  MEMORY[0x277C89240](0x2065727574616546, 0xE90000000000005BLL);
  sub_275B7B0EC();
  MEMORY[0x277C89240](0xD00000000000002BLL, 0x8000000275B806E0);
  sub_275B7A95C();

  type metadata accessor for Feature();
  v1 = swift_allocObject();
  *(v1 + 16) = a1;
  v6 = [objc_opt_self() featureValueWithInt64_];
  v7 = 1;
LABEL_14:
  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  return v1;
}

uint64_t sub_275B13490(unsigned __int8 a1)
{
  if (a1 <= 0x21u)
  {
    if (a1 != 32)
    {
      if (a1 == 33)
      {
        v1 = sub_275B129FC();
LABEL_8:

        v3 = *(v1 + 16);
LABEL_15:

        return v3;
      }

      goto LABEL_9;
    }

    v5 = sub_275B129FC();
LABEL_14:

    v3 = *(v5 + 24);
    goto LABEL_15;
  }

  if (a1 == 34)
  {
    sub_275B129FC();
    v5 = v6;
    goto LABEL_14;
  }

  if (a1 == 35)
  {
    sub_275B129FC();
    v1 = v2;
    goto LABEL_8;
  }

LABEL_9:
  if (qword_280A32C60 != -1)
  {
    swift_once();
  }

  v4 = sub_275B7A96C();
  __swift_project_value_buffer(v4, qword_280A332A8);
  sub_275B7B09C();
  MEMORY[0x277C89240](0x2065727574616546, 0xE90000000000005BLL);
  sub_275B7B0EC();
  MEMORY[0x277C89240](0xD00000000000002BLL, 0x8000000275B80840);
  sub_275B7A95C();

  return -1;
}

uint64_t *BiomeNotificationFeatureProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[17];
  v12 = v0[18];
  sub_275B1379C(v0[10], v0[11], v0[12], v0[13], v0[14]);
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[26];
  v13 = v0[27];
  sub_275B1379C(v0[19], v0[20], v0[21], v0[22], v0[23]);
  v7 = v0[33];
  v8 = v0[34];
  v9 = v0[35];
  v14 = v0[36];
  sub_275B1379C(v0[28], v0[29], v0[30], v0[31], v0[32]);
  v10 = v0[38];
  sub_275B0D8A0(v0[37]);
  return v0;
}

uint64_t BiomeNotificationFeatureProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[17];
  v12 = v0[18];
  sub_275B1379C(v0[10], v0[11], v0[12], v0[13], v0[14]);
  v4 = v0[24];
  v5 = v0[25];
  v6 = v0[26];
  v13 = v0[27];
  sub_275B1379C(v0[19], v0[20], v0[21], v0[22], v0[23]);
  v7 = v0[33];
  v8 = v0[34];
  v9 = v0[35];
  v14 = v0[36];
  sub_275B1379C(v0[28], v0[29], v0[30], v0[31], v0[32]);
  v10 = v0[38];
  sub_275B0D8A0(v0[37]);

  return swift_deallocClassInstance();
}

uint64_t sub_275B1379C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_275B1386C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A332C0, "Ԯ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275B138D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A332C0, "Ԯ");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BiomeNotificationFeatures.usageTypeTop1.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t BiomeNotificationFeatures.usageTypeTop1.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t BiomeNotificationFeatures.usageTypeTop2.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t BiomeNotificationFeatures.usageTypeTop2.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t BiomeNotificationFeatures.usageTypeTop3.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t BiomeNotificationFeatures.usageTypeTop3.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

void __swiftcall BiomeNotificationFeatures.init()(iCloudSubscriptionOptimizerDaemon::BiomeNotificationFeatures *__return_ptr retstr)
{
  retstr->totalNotifCount = 0;
  retstr->openedNotifCount = 0;
  retstr->openedRatio = 0.0;
  retstr->usageTypeTop1._countAndFlagsBits = 0x6E776F6E6B6E55;
  retstr->usageTypeTop1._object = 0xE700000000000000;
  retstr->usageTypeTop2._countAndFlagsBits = 0x6E776F6E6B6E55;
  retstr->usageTypeTop2._object = 0xE700000000000000;
  retstr->usageTypeTop3._countAndFlagsBits = 0x6E776F6E6B6E55;
  retstr->usageTypeTop3._object = 0xE700000000000000;
}

void __swiftcall BiomeNotificationFeatures.init(totalNotifCount:openedNotifCount:openedRatio:usageTypeTop1:usageTypeTop2:usageTypeTop3:)(iCloudSubscriptionOptimizerDaemon::BiomeNotificationFeatures *__return_ptr retstr, Swift::Int totalNotifCount, Swift::Int openedNotifCount, Swift::Double openedRatio, Swift::String usageTypeTop1, Swift::String usageTypeTop2, Swift::String usageTypeTop3)
{
  *&v11 = totalNotifCount;
  *(&v11 + 1) = openedNotifCount;
  *&v12 = openedRatio;
  *(&v12 + 1) = usageTypeTop1._countAndFlagsBits;
  *&v13 = usageTypeTop1._object;
  *(&v13 + 1) = usageTypeTop2._countAndFlagsBits;
  *v14 = usageTypeTop2._object;
  *&v14[8] = usageTypeTop3;
  v15[0] = totalNotifCount;
  v15[1] = openedNotifCount;
  *&v15[2] = openedRatio;
  v16 = usageTypeTop1;
  v17 = usageTypeTop2;
  v18 = usageTypeTop3;
  sub_275B13810(&v11, v10);
  sub_275B13748(v15);
  v8 = *v14;
  *&retstr->usageTypeTop1._object = v13;
  *&retstr->usageTypeTop2._object = v8;
  retstr->usageTypeTop3._object = *&v14[16];
  v9 = v12;
  *&retstr->totalNotifCount = v11;
  *&retstr->openedRatio = v9;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_275B13C38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_275B13C80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_275B13CE0()
{
  v0 = sub_275B7A96C();
  __swift_allocate_value_buffer(v0, qword_280A332D0);
  __swift_project_value_buffer(v0, qword_280A332D0);
  type metadata accessor for BiomeNotificationStream();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A332F8, &qword_275B7C880);
  return sub_275B7A97C();
}

uint64_t sub_275B13D5C()
{
  v0 = sub_275B0C08C(&unk_2884A7EE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33308, &unk_275B7C890);
  result = swift_arrayDestroy();
  static BiomeNotificationStream.kUsageTypeValueMap = v0;
  return result;
}

uint64_t *BiomeNotificationStream.kUsageTypeValueMap.unsafeMutableAddressor()
{
  if (qword_280A32C70 != -1)
  {
    swift_once();
  }

  return &static BiomeNotificationStream.kUsageTypeValueMap;
}

uint64_t static BiomeNotificationStream.kUsageTypeValueMap.getter()
{
  if (qword_280A32C70 != -1)
  {
    swift_once();
  }
}

__n128 static BiomeNotificationStream.buildNotificationFeatures(usageTypeCounts:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_275B15F6C(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

double static BiomeNotificationStream.safeDivision(numerator:denominator:onErrorResult:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return a1 / a2;
  }

  return result;
}

__n128 static BiomeNotificationStream.getNotificationFeatures(startTime:endTime:bundleId:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for BiomeNotificationStream.CountersByUsageType();
  v10 = static BiomeNotificationStream.CountersByUsageType.get(startTime:endTime:notifBundleId:)(a1, a2, a3, a4);
  sub_275B15F6C(v10, v13);

  v11 = v13[3];
  *(a5 + 32) = v13[2];
  *(a5 + 48) = v11;
  *(a5 + 64) = v14;
  result = v13[1];
  *a5 = v13[0];
  *(a5 + 16) = result;
  return result;
}

uint64_t static BiomeNotificationStream.CountersByUsageType.get(startTime:endTime:notifBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = sub_275B0BFAC(MEMORY[0x277D84F90]);
  v10 = [BiomeLibrary() Notification];
  swift_unknownObjectRelease();
  v11 = [v10 Usage];
  swift_unknownObjectRelease();
  v12 = _s33iCloudSubscriptionOptimizerDaemon10BiomeUtilsC21getBMPublisherOptions5start3end9maxEventsSo0hI0C01iabC4Core9TimestampV_ALSitFZ_0(a1, a2, 0);
  v13 = [v11 publisherWithOptions_];

  v14 = swift_allocObject();
  v14[2] = v4;
  v14[3] = a3;
  v14[4] = a4;
  v31 = sub_275B1611C;
  v32 = v14;
  v27 = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_275B0B1C0;
  v30 = &block_descriptor_2;
  v15 = _Block_copy(&v27);

  v16 = [v13 filterWithIsIncluded_];
  _Block_release(v15);

  type metadata accessor for BMNotificationUsageType(0);
  sub_275B16140();

  v17 = sub_275B7AC7C();

  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  v31 = sub_275B16198;
  v32 = v18;
  v27 = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_275B0B298;
  v30 = &block_descriptor_9_0;
  v19 = _Block_copy(&v27);

  v20 = [v16 reduceWithInitial:v17 nextPartialResult:v19];
  _Block_release(v19);

  v31 = sub_275B16A4C;
  v32 = 0;
  v27 = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_275B0C864;
  v30 = &block_descriptor_12;
  v21 = _Block_copy(&v27);

  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  *(v22 + 24) = v9;
  v31 = sub_275B161A0;
  v32 = v22;
  v27 = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_275B0B464;
  v30 = &block_descriptor_18;
  v23 = _Block_copy(&v27);

  v24 = [v20 sinkWithCompletion:v21 receiveInput:v23];
  _Block_release(v23);
  _Block_release(v21);

  swift_beginAccess();
  v25 = *(v9 + 16);

  return v25;
}

uint64_t static BiomeNotificationStream.ICloudLabel.get(event:duration:)(uint64_t a1)
{
  v2 = *a1;
  v3 = sub_275B7ABBC();
  v4 = swift_allocObject();
  v5 = sub_275B7AB2C();
  *(v4 + 16) = 0;
  *(v4 + 24) = v5;
  v6 = [BiomeLibrary() Notification];
  swift_unknownObjectRelease();
  v7 = [v6 Usage];
  swift_unknownObjectRelease();
  v8 = _s33iCloudSubscriptionOptimizerDaemon10BiomeUtilsC21getBMPublisherOptions5start3end9maxEventsSo0hI0C01iabC4Core9TimestampV_ALSitFZ_0(v2, v3, 0);
  v9 = [v7 publisherWithOptions_];

  v10 = *(a1 + 8);
  v29 = *(a1 + 24);
  v30 = v10;
  v11 = swift_allocObject();
  v12 = *(a1 + 16);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a1 + 32);
  v27 = sub_275B161A8;
  v28 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_275B0B1C0;
  v26 = &block_descriptor_27_0;
  v13 = _Block_copy(&aBlock);
  sub_275B161B0(&v30, v22);
  sub_275B161B0(&v29, v22);

  v14 = [v9 filterWithIsIncluded_];
  _Block_release(v13);

  v27 = sub_275B16A4C;
  v28 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_275B0C864;
  v26 = &block_descriptor_30;
  v15 = _Block_copy(&aBlock);
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = v4;
  v27 = sub_275B1620C;
  v28 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_275B0A330;
  v26 = &block_descriptor_36;
  v17 = _Block_copy(&aBlock);

  v18 = [v14 sinkWithCompletion:v15 receiveInput:v17];
  _Block_release(v17);
  _Block_release(v15);

  swift_beginAccess();
  v19 = *(v4 + 24);
  v20 = *(v4 + 16);

  return v20;
}

uint64_t sub_275B146C4(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  LOBYTE(a2) = _s33iCloudSubscriptionOptimizerDaemon23BiomeNotificationStreamC11ICloudLabelV6filterySbSo19BMNotificationUsageCSg_SStFZ_0(v3, *(a2 + 24), *(a2 + 32));

  return a2 & 1;
}

id static BiomeNotificationStream.CountersByUsageType.completion(_:)(void *a1)
{
  result = [a1 state];
  if (result == 1)
  {
    [a1 error];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33218, &unk_275B7C670);
    v3 = sub_275B7AD1C();
    v5 = v4;
    if (qword_280A32C68 != -1)
    {
      swift_once();
    }

    v6 = sub_275B7A96C();
    __swift_project_value_buffer(v6, qword_280A332D0);
    sub_275B7B09C();

    MEMORY[0x277C89240](v3, v5);

    MEMORY[0x277C89240](11869, 0xE200000000000000);
    sub_275B7A95C();
  }

  return result;
}

void sub_275B1485C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 eventBody];
  [a1 timestamp];
  swift_beginAccess();
  if (v5)
  {
    v6 = v5;
    if ([v6 usageType] == 2)
    {
      sub_275B7AB8C();

      v7 = sub_275B7ABCC();
      v8 = 1;
    }

    else
    {
      if ([v6 usageType] != 4)
      {

        goto LABEL_8;
      }

      sub_275B7AB8C();

      v7 = sub_275B7ABCC();
      v8 = 2;
    }

    *(a3 + 16) = v8;
    *(a3 + 24) = v7;
  }

LABEL_8:
  swift_endAccess();
}

void static BiomeNotificationStream.ICloudLabel.receiveInput(_:_:_:_:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = a1;
    if ([v6 usageType] == 2)
    {
      sub_275B7AB8C();

      v4 = sub_275B7ABCC();
      v5 = 1;
LABEL_6:
      *a3 = v5;
      *(a3 + 8) = v4;
      return;
    }

    if ([v6 usageType] == 4)
    {
      sub_275B7AB8C();

      v4 = sub_275B7ABCC();
      v5 = 2;
      goto LABEL_6;
    }
  }
}

uint64_t static BiomeNotificationStream.ReceivedEvents.get(beginTime:endTime:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84F90];
  v6 = [BiomeLibrary() Notification];
  swift_unknownObjectRelease();
  v7 = [v6 Usage];
  swift_unknownObjectRelease();
  v8 = _s33iCloudSubscriptionOptimizerDaemon10BiomeUtilsC21getBMPublisherOptions5start3end9maxEventsSo0hI0C01iabC4Core9TimestampV_ALSitFZ_0(a1, a2, 0);
  v9 = [v7 publisherWithOptions_];

  v22 = sub_275B15A38;
  v23 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_275B0B1C0;
  v21 = &block_descriptor_42;
  v10 = _Block_copy(&v18);

  v11 = [v9 filterWithIsIncluded_];
  _Block_release(v10);

  v22 = sub_275B16A4C;
  v23 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_275B0C864;
  v21 = &block_descriptor_45;
  v12 = _Block_copy(&v18);
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v5;
  v22 = sub_275B16364;
  v23 = v13;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_275B0A330;
  v21 = &block_descriptor_51;
  v14 = _Block_copy(&v18);

  v15 = [v11 sinkWithCompletion:v12 receiveInput:v14];
  _Block_release(v14);
  _Block_release(v12);

  swift_beginAccess();
  v16 = *(v5 + 16);

  return v16;
}

void *static BiomeNotificationStream.ReceivedEvents.filter(_:)(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = [v1 bundleID];
    if (!v2)
    {
LABEL_8:

      return 0;
    }

    v3 = v2;
    v4 = sub_275B7AD0C();
    v6 = v5;

    if (v4 == 0xD000000000000019 && 0x8000000275B7F610 == v6)
    {
    }

    else
    {
      v8 = sub_275B7B1BC();

      if ((v8 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v9 = [v1 usageType];

    return (v9 == 17);
  }

  return result;
}

void sub_275B14E2C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [a1 eventBody];
  swift_beginAccess();
  _s33iCloudSubscriptionOptimizerDaemon23BiomeNotificationStreamC14ReceivedEventsC12receiveInputyySo19BMNotificationUsageCSg_SayAA011ICloudNotifE5EventVGztFZ_0(v4, (a3 + 16));
  swift_endAccess();
}

unint64_t sub_275B14EB4(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = [a1 eventBody];
  LOBYTE(a4) = _s33iCloudSubscriptionOptimizerDaemon23BiomeNotificationStreamC19CountersByUsageTypeC6filterySbSo014BMNotificationJ0CSg_SStFZ_0(v6, a3, a4);

  return a4 & 1;
}

uint64_t sub_275B14F14@<X0>(id a1@<X1>, uint64_t a2@<X0>, unint64_t *a3@<X8>)
{
  v5 = [a1 eventBody];
  v6 = _s33iCloudSubscriptionOptimizerDaemon23BiomeNotificationStreamC19CountersByUsageTypeC6reduceySDySo014BMNotificationjK0VSiGyp_So0mJ0CSgtFZ_0(a2, v5);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A332F0, &qword_275B7C878);
  a3[3] = result;
  *a3 = v6;
  return result;
}

uint64_t sub_275B14F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = swift_getObjectType();
  v6[0] = a1;
  swift_beginAccess();
  swift_unknownObjectRetain();
  _s33iCloudSubscriptionOptimizerDaemon23BiomeNotificationStreamC19CountersByUsageTypeC12receiveInputyyyp_SDySo014BMNotificationjK0VSiGztFZ_0(v6, (a3 + 16));
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_275B15018(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_275B5A280(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_275B15084(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_275B15084(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_275B7B18C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33300, &qword_275B7C888);
        v5 = sub_275B7AEAC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_275B15218(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_275B1518C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_275B1518C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
LABEL_5:
    v7 = (v4 + 16 * a3);
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = v6;
    v11 = v5;
    while (1)
    {
      v12 = *(v11 + 8);
      if (v12 >= v9 && (v9 != v12 || *v11 >= v8))
      {
LABEL_4:
        ++a3;
        v5 += 16;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *(v11 + 16) = *v11;
      *v11 = v8;
      *(v11 + 8) = v9;
      v11 -= 16;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_275B15218(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v97 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_109:
    v97 = *v97;
    if (!v97)
    {
      goto LABEL_147;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_111;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v6)
    {
      ++v8;
      goto LABEL_34;
    }

    v12 = *a3 + 16 * v11;
    v13 = *(v12 + 8);
    v14 = *a3 + 16 * v8;
    v15 = *(v14 + 8);
    v16 = v15 < v13 || v13 == v15 && *v14 < *v12;
    v8 += 2;
    if (v10 + 2 < v6)
    {
      v11 = v6 - 1;
      v18 = *v12;
      v19 = (v14 + 40);
      do
      {
        v20 = *(v19 - 2);
        v21 = *v19;
        if (v13 < *v19)
        {
          if (!v16)
          {
            goto LABEL_34;
          }
        }

        else if (v21 == v13)
        {
          if (((v16 ^ (v18 >= v20)) & 1) == 0)
          {
            v11 = v8 - 1;
            if (!v16)
            {
              goto LABEL_34;
            }

LABEL_26:
            if (v8 >= v10)
            {
              if (v10 <= v11)
              {
                v22 = 0;
                v23 = 16 * v8;
                v24 = 16 * v10;
                v25 = v10;
                do
                {
                  if (v25 != v8 + v22 - 1)
                  {
                    v26 = *a3;
                    if (!*a3)
                    {
                      goto LABEL_144;
                    }

                    v27 = (v26 + v24);
                    v28 = v26 + v23;
                    v29 = *v27;
                    v30 = *(v27 + 1);
                    *v27 = *(v28 - 16);
                    *(v28 - 16) = v29;
                    *(v28 - 8) = v30;
                  }

                  ++v25;
                  --v22;
                  v23 -= 16;
                  v24 += 16;
                }

                while (v25 < v8 + v22);
                v6 = a3[1];
              }

              goto LABEL_34;
            }

LABEL_140:
            __break(1u);
LABEL_141:
            result = sub_275B5A1B4(v9);
            v9 = result;
LABEL_111:
            v89 = v9 + 16;
            v90 = *(v9 + 2);
            if (v90 >= 2)
            {
              while (*a3)
              {
                v91 = &v9[16 * v90];
                v92 = *v91;
                v93 = &v89[2 * v90];
                v94 = v93[1];
                sub_275B1580C((*a3 + 16 * *v91), (*a3 + 16 * *v93), (*a3 + 16 * v94), v97);
                if (v4)
                {
                }

                if (v94 < v92)
                {
                  goto LABEL_133;
                }

                if (v90 - 2 >= *v89)
                {
                  goto LABEL_134;
                }

                *v91 = v92;
                *(v91 + 1) = v94;
                v95 = *v89 - v90;
                if (*v89 < v90)
                {
                  goto LABEL_135;
                }

                v90 = *v89 - 1;
                result = memmove(v93, v93 + 2, 16 * v95);
                *v89 = v90;
                if (v90 <= 1)
                {
                }
              }

              goto LABEL_145;
            }
          }
        }

        else if (v16)
        {
          v11 = v8 - 1;
          goto LABEL_26;
        }

        v19 += 2;
        ++v8;
        v13 = v21;
        v18 = v20;
      }

      while (v6 != v8);
      v8 = v6;
    }

    if (v16)
    {
      goto LABEL_26;
    }

LABEL_34:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_137;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_138;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_56:
    if (v8 < v10)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_275B10F4C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v43 = *(v9 + 2);
    v42 = *(v9 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_275B10F4C((v42 > 1), v43 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v44;
    v45 = &v9[16 * v43];
    *(v45 + 4) = v10;
    *(v45 + 5) = v8;
    v46 = *v97;
    if (!*v97)
    {
      goto LABEL_146;
    }

    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v9 + 4);
          v49 = *(v9 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_76:
          if (v51)
          {
            goto LABEL_124;
          }

          v64 = &v9[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_127;
          }

          v70 = &v9[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_131;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        v74 = &v9[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_90:
        if (v69)
        {
          goto LABEL_126;
        }

        v77 = &v9[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_129;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_97:
        v85 = v47 - 1;
        if (v47 - 1 >= v44)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v86 = *&v9[16 * v85 + 32];
        v87 = *&v9[16 * v47 + 40];
        sub_275B1580C((*a3 + 16 * v86), (*a3 + 16 * *&v9[16 * v47 + 32]), (*a3 + 16 * v87), v46);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_275B5A1B4(v9);
        }

        if (v85 >= *(v9 + 2))
        {
          goto LABEL_121;
        }

        v88 = &v9[16 * v85];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        result = sub_275B5A128(v47);
        v44 = *(v9 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v9[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_122;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_123;
      }

      v59 = &v9[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_125;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_128;
      }

      if (v63 >= v55)
      {
        v81 = &v9[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_132;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_76;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_109;
    }
  }

  v31 = *a3;
  v32 = *a3 + 16 * v8 - 16;
  v33 = v10 - v8;
LABEL_44:
  v34 = (v31 + 16 * v8);
  v35 = *v34;
  v36 = *(v34 + 1);
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = *(v38 + 8);
    if (v39 >= v36 && (v36 != v39 || *v38 >= v35))
    {
LABEL_43:
      ++v8;
      v32 += 16;
      --v33;
      if (v8 != v6)
      {
        goto LABEL_44;
      }

      v8 = v6;
      goto LABEL_56;
    }

    if (!v31)
    {
      break;
    }

    *(v38 + 16) = *v38;
    *v38 = v35;
    *(v38 + 8) = v36;
    v38 -= 16;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_275B1580C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *(v6 + 1);
      v18 = *(v4 + 1);
      if (v18 >= v17 && (v17 != v18 || *v4 >= *v6))
      {
        break;
      }

      v15 = v6;
      v16 = v7 == v6;
      v6 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v4;
    v16 = v7 == v4;
    v4 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v20 = v6 - 16;
    v5 -= 16;
    do
    {
      v21 = v5 + 16;
      v22 = *(v14 - 1);
      v23 = *(v6 - 1);
      if (v23 < v22 || ((v24 = v14 - 16, v22 == v23) ? (v25 = *v20 < *(v14 - 4)) : (v25 = 0), v25))
      {
        if (v21 != v6)
        {
          *v5 = *v20;
        }

        if (v14 <= v4 || (v6 -= 16, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v21 != v14)
      {
        *v5 = *v24;
      }

      v5 -= 16;
      v14 -= 16;
    }

    while (v24 > v4);
    v14 = v24;
  }

LABEL_43:
  v26 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v26 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v26 >> 4));
  }

  return 1;
}

id sub_275B15A38(void *a1)
{
  result = [a1 eventBody];
  if (result)
  {
    v2 = result;
    v3 = [v2 bundleID];
    if (!v3)
    {
LABEL_8:

      return 0;
    }

    v4 = v3;
    v5 = sub_275B7AD0C();
    v7 = v6;

    if (v5 == 0xD000000000000019 && 0x8000000275B7F610 == v7)
    {
    }

    else
    {
      v9 = sub_275B7B1BC();

      if ((v9 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v10 = [v2 usageType];

    return (v10 == 17);
  }

  return result;
}

id sub_275B15B38(void *a1)
{
  result = [a1 state];
  if (result == 1)
  {
    [a1 error];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A33218, &unk_275B7C670);
    v3 = sub_275B7AD1C();
    v5 = v4;
    if (qword_280A32C68 != -1)
    {
      swift_once();
    }

    v6 = sub_275B7A96C();
    __swift_project_value_buffer(v6, qword_280A332D0);
    sub_275B7B09C();

    MEMORY[0x277C89240](v3, v5);

    MEMORY[0x277C89240](11869, 0xE200000000000000);
    sub_275B7A95C();
  }

  return result;
}

char *_s33iCloudSubscriptionOptimizerDaemon23BiomeNotificationStreamC21getTopThreeUsageTypes15usageTypeCountsSaySSGSDySo014BMNotificationkN0VSiG_tFZ_0(uint64_t a1)
{
  v26 = a1;

  sub_275B76688(17);
  v1 = *(v26 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = sub_275B0B6C4(v1, 0);
    v4 = sub_275B0B93C(&v25, (v3 + 32), v1, v26);

    sub_275B0C684();
    if (v4 == v1)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = v2;
LABEL_5:
  v25 = v3;
  sub_275B15018(&v25);
  v5 = v25;
  v6 = *(v25 + 2);
  if (v6)
  {
    v25 = v2;
    sub_275B0E5B0(0, v6, 0);
    v7 = v25;
    if (qword_280A32C70 != -1)
    {
      swift_once();
    }

    v8 = static BiomeNotificationStream.kUsageTypeValueMap;
    v9 = 32;
    do
    {
      if (*(v8 + 16) && (v10 = sub_275B181A0(*&v5[v9]), (v11 & 1) != 0))
      {
        v12 = (*(v8 + 56) + 16 * v10);
        v14 = *v12;
        v13 = v12[1];
      }

      else
      {
        v13 = 0xE700000000000000;
        v14 = 0x6E776F6E6B6E55;
      }

      v25 = v7;
      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      if (v16 >= v15 >> 1)
      {
        sub_275B0E5B0((v15 > 1), v16 + 1, 1);
        v7 = v25;
      }

      *(v7 + 2) = v16 + 1;
      v17 = &v7[16 * v16];
      *(v17 + 4) = v14;
      *(v17 + 5) = v13;
      v9 += 16;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v18 = *(v7 + 2);
  if (v18 >= 4)
  {
    sub_275B1FE94(v7, (v7 + 32), 0, 7uLL);
    v20 = v19;

    v18 = *(v20 + 16);
    v7 = v20;
  }

  if (v18 <= 2)
  {
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_275B11064(0, *(v7 + 2) + 1, 1, v7);
      }

      v22 = *(v7 + 2);
      v21 = *(v7 + 3);
      if (v22 >= v21 >> 1)
      {
        v7 = sub_275B11064((v21 > 1), v22 + 1, 1, v7);
      }

      *(v7 + 2) = v22 + 1;
      v23 = &v7[16 * v22];
      *(v23 + 4) = 0x6E776F6E6B6E55;
      *(v23 + 5) = 0xE700000000000000;
    }

    while (v22 < 2);
  }

  return v7;
}

void *sub_275B15F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    result = _s33iCloudSubscriptionOptimizerDaemon23BiomeNotificationStreamC21getTopThreeUsageTypes15usageTypeCountsSaySSGSDySo014BMNotificationkN0VSiG_tFZ_0(a1);
    v8 = 0;
    v6 = 0;
    goto LABEL_13;
  }

  v4 = sub_275B181A0(17);
  if (v5)
  {
    v6 = *(*(a1 + 56) + 8 * v4);
    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }
  }

  v9 = sub_275B181A0(2);
  if (v10)
  {
    v8 = *(*(a1 + 56) + 8 * v9);
    goto LABEL_10;
  }

LABEL_9:
  v8 = 0;
LABEL_10:
  result = _s33iCloudSubscriptionOptimizerDaemon23BiomeNotificationStreamC21getTopThreeUsageTypes15usageTypeCountsSaySSGSDySo014BMNotificationkN0VSiG_tFZ_0(a1);
  if (!v6)
  {
    goto LABEL_13;
  }

  v11 = v8 / v6;
  for (i = result[2]; !i; i = result[2])
  {
    __break(1u);
LABEL_13:
    v11 = 0.0;
  }

  if (i == 1)
  {
    __break(1u);
  }

  else if (i >= 3)
  {
    v14 = result[4];
    v13 = result[5];
    v16 = result[6];
    v15 = result[7];
    v18 = result[8];
    v17 = result[9];

    *&v22 = v6;
    *(&v22 + 1) = v8;
    *&v23 = v11;
    *(&v23 + 1) = v14;
    *&v24 = v13;
    *(&v24 + 1) = v16;
    *&v25 = v15;
    *(&v25 + 1) = v18;
    v26 = v17;
    v27[0] = v6;
    v27[1] = v8;
    *&v27[2] = v11;
    v27[3] = v14;
    v27[4] = v13;
    v27[5] = v16;
    v27[6] = v15;
    v27[7] = v18;
    v27[8] = v17;
    sub_275B13810(&v22, &v21);
    result = sub_275B13748(v27);
    v19 = v25;
    *(a2 + 32) = v24;
    *(a2 + 48) = v19;
    *(a2 + 64) = v26;
    v20 = v23;
    *a2 = v22;
    *(a2 + 16) = v20;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_275B16140()
{
  result = qword_280A332E8;
  if (!qword_280A332E8)
  {
    type metadata accessor for BMNotificationUsageType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A332E8);
  }

  return result;
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon23BiomeNotificationStreamC11ICloudLabelV6filterySbSo19BMNotificationUsageCSg_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    v6 = [v5 bundleID];
    if (v6)
    {
      v7 = v6;
      v8 = sub_275B7AD0C();
      v10 = v9;

      if (v8 == 0xD000000000000019 && 0x8000000275B7F610 == v10)
      {
      }

      else
      {
        v12 = sub_275B7B1BC();

        if ((v12 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v14 = [v5 notificationID];
      if (v14)
      {
        v15 = v14;
        v16 = sub_275B7AD0C();
        v18 = v17;

        if (v16 == a2 && v18 == a3)
        {
          v13 = 1;
        }

        else
        {
          v13 = sub_275B7B1BC();
        }

        goto LABEL_18;
      }
    }

LABEL_15:
    v13 = 0;
LABEL_18:

    return v13 & 1;
  }

  v13 = 0;
  return v13 & 1;
}

void _s33iCloudSubscriptionOptimizerDaemon23BiomeNotificationStreamC14ReceivedEventsC12receiveInputyySo19BMNotificationUsageCSg_SayAA011ICloudNotifE5EventVGztFZ_0(void *a1, char **a2)
{
  v4 = sub_275B795CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v32 - v12;
  if (a1)
  {
    v35 = a1;
    v14 = [v35 absoluteTimestamp];
    if (v14)
    {
      v15 = v14;
      sub_275B795BC();

      (*(v5 + 32))(v13, v9, v4);
      v34 = sub_275B7AC3C();
      v16 = [v35 title];
      if (v16)
      {
        v17 = v16;
        v33 = sub_275B7AD0C();
        v19 = v18;
      }

      else
      {
        v33 = 0;
        v19 = 0xE000000000000000;
      }

      v21 = [v35 notificationID];
      if (v21)
      {
        v22 = v21;
        v23 = sub_275B7AD0C();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0xE000000000000000;
      }

      v26 = *a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_275B1127C(0, *(v26 + 2) + 1, 1, v26);
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      v29 = v35;
      if (v28 >= v27 >> 1)
      {
        v26 = sub_275B1127C((v27 > 1), v28 + 1, 1, v26);
        v29 = v35;
      }

      (*(v5 + 8))(v13, v4);
      *(v26 + 2) = v28 + 1;
      v30 = &v26[40 * v28];
      v31 = v33;
      *(v30 + 4) = v34;
      *(v30 + 5) = v31;
      *(v30 + 6) = v19;
      *(v30 + 7) = v23;
      *(v30 + 8) = v25;
      *a2 = v26;
    }

    else
    {
      v20 = v35;
    }
  }
}

uint64_t _s33iCloudSubscriptionOptimizerDaemon23BiomeNotificationStreamC19CountersByUsageTypeC6filterySbSo014BMNotificationJ0CSg_SStFZ_0(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v5 = qword_280A32C70;
    v6 = a1;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = static BiomeNotificationStream.kUsageTypeValueMap;

    v8 = [v6 usageType];
    if (*(v7 + 16))
    {
      sub_275B181A0(v8);
      v10 = v9;

      if (v10)
      {
        v11 = HIBYTE(a3) & 0xF;
        if ((a3 & 0x2000000000000000) == 0)
        {
          v11 = a2 & 0xFFFFFFFFFFFFLL;
        }

        if (!v11)
        {
          v17 = 1;
          goto LABEL_16;
        }

        v12 = [v6 bundleID];
        if (v12)
        {
          v13 = v12;
          v14 = sub_275B7AD0C();
          v16 = v15;

          if (v14 == a2 && v16 == a3)
          {

            v17 = 1;
          }

          else
          {
            v17 = sub_275B7B1BC();
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
    }

    v17 = 0;
LABEL_16:

    return v17 & 1;
  }

  v17 = 0;
  return v17 & 1;
}

unint64_t _s33iCloudSubscriptionOptimizerDaemon23BiomeNotificationStreamC19CountersByUsageTypeC6reduceySDySo014BMNotificationjK0VSiGyp_So0mJ0CSgtFZ_0(uint64_t a1, void *a2)
{
  sub_275B0C76C(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A332F0, &qword_275B7C878);
  if (swift_dynamicCast())
  {
    v3 = v10;
    if (!a2)
    {
      return v3;
    }
  }

  else
  {
    v3 = sub_275B0BFAC(MEMORY[0x277D84F90]);
    if (!a2)
    {
      return v3;
    }
  }

  result = [a2 usageType];
  v5 = result;
  v6 = *(v3 + 16);
  if (v6)
  {
    result = sub_275B181A0(result);
    if (v7)
    {
      v6 = *(*(v3 + 56) + 8 * result);
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11[0] = v3;
    sub_275B2C408(v8, v5, isUniquelyReferenced_nonNull_native);
    return v11[0];
  }

  __break(1u);
  return result;
}

unint64_t _s33iCloudSubscriptionOptimizerDaemon23BiomeNotificationStreamC19CountersByUsageTypeC12receiveInputyyyp_SDySo014BMNotificationjK0VSiGztFZ_0(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;

  sub_275B0C76C(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A332F0, &qword_275B7C878);
  if (swift_dynamicCast())
  {
    result = v7;
  }

  else
  {
    if (qword_280A32C68 != -1)
    {
      swift_once();
    }

    v6 = sub_275B7A96C();
    __swift_project_value_buffer(v6, qword_280A332D0);
    sub_275B7A95C();
    result = sub_275B0BFAC(MEMORY[0x277D84F90]);
  }

  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BiomeNotificationStream.ICloudLabel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BiomeNotificationStream.ICloudLabel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t BiomeStats.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t BiomeStats.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t BiomeStats.__allocating_init(max:median:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t BiomeStats.init(max:median:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_275B16B28(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_275B5A26C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_275B7B18C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_275B7AEAC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_275B16C5C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_275B16C5C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_275B5A1B4(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_275B171A8((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_275B10F4C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_275B10F4C((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_275B171A8((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}