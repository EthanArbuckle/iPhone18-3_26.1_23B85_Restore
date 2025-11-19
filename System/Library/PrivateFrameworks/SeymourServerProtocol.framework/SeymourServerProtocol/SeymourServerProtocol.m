uint64_t sub_265B840E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 20);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B84140(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265B841EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265B84290(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_265B843C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_265BA5DE8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_265B84500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265BA5DE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037670, &unk_265BA6B00);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_265B845FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_265BA5DE8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037670, &unk_265BA6B00);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_265B84748(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265B847F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265B84898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = sub_265BA5DE8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_265B84910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = sub_265BA5DE8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_265B8498C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_265B84A38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265B84ADC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_265B84B88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265B84C2C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_265B84CD8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265B84D7C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265B84E28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265B84ECC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265B84F78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265B85034(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265B850E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265B8518C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_265BA5DE8();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037628, &unk_265BA6AD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_265B85310(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_265BA5DE8();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037628, &unk_265BA6AD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_265B85494(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_265B855C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_265BA5DE8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_265B856FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1 + 20);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B85784(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265B85830(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_265B85908(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_265B85974(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_265B859E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_265BA5DE8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_265B85A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_265BA5DE8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t FetchSyncChangesetRequestProtobuf.zoneRequests.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf.zone.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf.zone.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf.changeWindow.getter()
{
  v1 = *(v0 + 16);
  sub_265B85C84(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_265B85C84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf.changeWindow.setter(uint64_t a1, uint64_t a2)
{
  result = sub_265B85D10(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_265B85D10(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_265BA63F0;
  v1 = a1 + *(type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf(0) + 24);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B85EB4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B85F70(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.recordChangeset.getter@<X0>(void *a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v12 - v4;
  SyncChangesetResponse = type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(v1 + *(SyncChangesetResponse + 28), v5, &qword_280037598, &unk_265BA6430);
  v7 = type metadata accessor for SyncRecordChangesetProtobuf();
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_265B8D5C8(v5, a1, type metadata accessor for SyncRecordChangesetProtobuf);
  }

  v9 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v9;
  a1[2] = v9;
  v10 = a1 + *(v7 + 28);
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_265B8D568(v5, &qword_280037598, &unk_265BA6430);
  }

  return result;
}

uint64_t sub_265B861E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v13 - v5;
  SyncChangesetResponse = type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(a1 + *(SyncChangesetResponse + 28), v6, &qword_280037598, &unk_265BA6430);
  v8 = type metadata accessor for SyncRecordChangesetProtobuf();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_265B8D5C8(v6, a2, type metadata accessor for SyncRecordChangesetProtobuf);
  }

  v10 = MEMORY[0x277D84F90];
  *a2 = 0;
  a2[1] = v10;
  a2[2] = v10;
  v11 = a2 + *(v8 + 28);
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_265B8D568(v6, &qword_280037598, &unk_265BA6430);
  }

  return result;
}

uint64_t sub_265B8634C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncRecordChangesetProtobuf();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B8D438(a1, v8, type metadata accessor for SyncRecordChangesetProtobuf);
  v9 = *(type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0) + 28);
  sub_265B8D568(a2 + v9, &qword_280037598, &unk_265BA6430);
  sub_265B8D5C8(v8, a2 + v9, type metadata accessor for SyncRecordChangesetProtobuf);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.recordChangeset.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0) + 28);
  sub_265B8D568(v1 + v3, &qword_280037598, &unk_265BA6430);
  sub_265B8D5C8(a1, v1 + v3, type metadata accessor for SyncRecordChangesetProtobuf);
  v4 = type metadata accessor for SyncRecordChangesetProtobuf();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
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

uint64_t sub_265B865A0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.recordChangeset.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for SyncRecordChangesetProtobuf();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0) + 28);
  *(v5 + 12) = v15;
  sub_265B8D500(v1 + v15, v8, &qword_280037598, &unk_265BA6430);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x277D84F90];
    *v14 = 0;
    v14[1] = v17;
    v14[2] = v17;
    v18 = v14 + *(v9 + 28);
    _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_265B8D568(v8, &qword_280037598, &unk_265BA6430);
    }
  }

  else
  {
    sub_265B8D5C8(v8, v14, type metadata accessor for SyncRecordChangesetProtobuf);
  }

  return sub_265B867F8;
}

void sub_265B867F8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_265B8D438((*a1)[5], v4, type metadata accessor for SyncRecordChangesetProtobuf);
    sub_265B8D568(v9 + v3, &qword_280037598, &unk_265BA6430);
    sub_265B8D5C8(v4, v9 + v3, type metadata accessor for SyncRecordChangesetProtobuf);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_265B8D4A0(v5, type metadata accessor for SyncRecordChangesetProtobuf);
  }

  else
  {
    sub_265B8D568(v9 + v3, &qword_280037598, &unk_265BA6430);
    sub_265B8D5C8(v5, v9 + v3, type metadata accessor for SyncRecordChangesetProtobuf);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.hasRecordChangeset.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v8 - v2;
  SyncChangesetResponse = type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(v0 + *(SyncChangesetResponse + 28), v3, &qword_280037598, &unk_265BA6430);
  v5 = type metadata accessor for SyncRecordChangesetProtobuf();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_265B8D568(v3, &qword_280037598, &unk_265BA6430);
  return v6;
}

Swift::Void __swiftcall FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.clearRecordChangeset()()
{
  v1 = *(type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0) + 28);
  sub_265B8D568(v0 + v1, &qword_280037598, &unk_265BA6430);
  v2 = type metadata accessor for SyncRecordChangesetProtobuf();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_265B86AF8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B86B94(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = xmmword_265BA63F0;
  SyncChangesetResponse = type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  v3 = a1 + *(SyncChangesetResponse + 24);
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  v4 = *(SyncChangesetResponse + 28);
  v5 = type metadata accessor for SyncRecordChangesetProtobuf();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t sub_265B86D10@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1(0) + 20);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t FetchSyncChangesetRequestProtobuf.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf(0), sub_265B8B89C(qword_2813B5250, type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf), result = sub_265BA5FB8(), !v1))
  {
    v3 = v0 + *(type metadata accessor for FetchSyncChangesetRequestProtobuf(0) + 20);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t (*sub_265B86FB8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_265B8700C(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B8B89C(&qword_280037610, type metadata accessor for FetchSyncChangesetRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B870AC(uint64_t a1)
{
  v2 = sub_265B8B89C(&qword_2800375C8, type metadata accessor for FetchSyncChangesetRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B87118()
{
  sub_265B8B89C(&qword_2800375C8, type metadata accessor for FetchSyncChangesetRequestProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B871C8()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037488);
  __swift_project_value_buffer(v0, qword_280037488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6400;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "zone";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "changeWindow";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_265BA5EB8();
    }

    else if (result == 2)
    {
      sub_265BA5E58();
    }
  }

  return result;
}

uint64_t FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_265BA5FA8(), !v1))
  {
    v6 = v0[2];
    v7 = v0[3];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_14;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

LABEL_13:
        result = sub_265BA5F48();
        if (v1)
        {
          return result;
        }

        goto LABEL_14;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 != v10)
    {
      goto LABEL_13;
    }

LABEL_14:
    v11 = v0 + *(type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf(0) + 24);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t static FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_265BA60E8() & 1) == 0 || (sub_265B8C4EC(a1[2], a1[3], a2[2], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf(0) + 24);
  sub_265BA5DE8();
  sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B87644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_265BA63F0;
  v2 = a2 + *(a1 + 24);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t (*sub_265B87694(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_265B876E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B8B89C(&qword_280037608, type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B87788(uint64_t a1)
{
  v2 = sub_265B8B89C(qword_2813B5250, type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B877F4()
{
  sub_265B8B89C(qword_2813B5250, type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B87870(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_265BA60E8() & 1) == 0 || (sub_265B8C4EC(a1[2], a1[3], a2[2], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_265BA5DE8();
  sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B87970(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_265BA6008();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_265BA6410;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21870];
  v14 = sub_265BA5FD8();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_265BA5FE8();
}

uint64_t sub_265B87B5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_265B8B89C(a5, a6);
      sub_265BA5EC8();
    }
  }

  return result;
}

uint64_t FetchSyncChangesetResponseProtobuf.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0), sub_265B8B89C(qword_2813B5110, type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf), result = sub_265BA5FB8(), !v1))
  {
    v3 = v0 + *(type metadata accessor for FetchSyncChangesetResponseProtobuf(0) + 20);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t sub_265B87D48(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  sub_265BA5DE8();
  sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B87E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B87ED8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_265B87F7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B8B89C(&qword_280037600, type metadata accessor for FetchSyncChangesetResponseProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B8801C(uint64_t a1)
{
  v2 = sub_265B8B89C(&qword_2800375E0, type metadata accessor for FetchSyncChangesetResponseProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B88088()
{
  sub_265B8B89C(&qword_2800375E0, type metadata accessor for FetchSyncChangesetResponseProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B8811C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_265BA5DE8();
  sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B881E4()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_2800374C8);
  __swift_project_value_buffer(v0, qword_2800374C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "zone";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "changeWindow";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "recordChangeset";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t sub_265B8841C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_265BA6008();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_265B88564();
        break;
      case 2:
        sub_265BA5E58();
        break;
      case 1:
        sub_265BA5EB8();
        break;
    }
  }

  return result;
}

uint64_t sub_265B88564()
{
  v0 = *(type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0) + 28);
  type metadata accessor for SyncRecordChangesetProtobuf();
  sub_265B8B89C(qword_2813B5430, type metadata accessor for SyncRecordChangesetProtobuf);
  return sub_265BA5ED8();
}

uint64_t FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_265BA5FA8(), !v4))
  {
    v12 = v3[2];
    v13 = v3[3];
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        goto LABEL_14;
      }

      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
    }

    else
    {
      if (!v14)
      {
        if ((v13 & 0xFF000000000000) == 0)
        {
LABEL_14:
          result = sub_265B8871C(v3, a1, a2, a3);
          if (!v4)
          {
            v17 = v3 + *(type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0) + 24);
            return sub_265BA5DC8();
          }

          return result;
        }

LABEL_13:
        result = sub_265BA5F48();
        if (v4)
        {
          return result;
        }

        goto LABEL_14;
      }

      v15 = v12;
      v16 = v12 >> 32;
    }

    if (v15 == v16)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_265B8871C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for SyncRecordChangesetProtobuf();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  SyncChangesetResponse = type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(a1 + *(SyncChangesetResponse + 28), v8, &qword_280037598, &unk_265BA6430);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_265B8D568(v8, &qword_280037598, &unk_265BA6430);
  }

  sub_265B8D5C8(v8, v13, type metadata accessor for SyncRecordChangesetProtobuf);
  sub_265B8B89C(qword_2813B5430, type metadata accessor for SyncRecordChangesetProtobuf);
  sub_265BA5FC8();
  return sub_265B8D4A0(v13, type metadata accessor for SyncRecordChangesetProtobuf);
}

uint64_t sub_265B88984(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_265BA6168();
  a1(0);
  sub_265B8B89C(a2, a3);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B88A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_265BA63F0;
  v4 = a2 + *(a1 + 24);
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for SyncRecordChangesetProtobuf();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_265B88ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B88B30(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_265B88BD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B8B89C(&qword_2800375F8, type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B88C74@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_265BA6008();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_265B88D10(uint64_t a1)
{
  v2 = sub_265B8B89C(qword_2813B5110, type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B88D7C()
{
  sub_265BA6168();
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B88DD4()
{
  sub_265B8B89C(qword_2813B5110, type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B88E50()
{
  sub_265BA6168();
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B88EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA5D98();
  v97 = *(v4 - 8);
  v5 = *(v97 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v96 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v87 = &v77 - v8;
  v9 = type metadata accessor for SyncRecordChangesetProtobuf();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v77 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037620, &qword_265BA6AC8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v77 - v20;
  v94 = type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  v22 = *(*(v94 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v94);
  v25 = (&v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v28 = &v77 - v27;
  v29 = *(a1 + 16);
  if (v29 != *(a2 + 16))
  {
LABEL_43:
    v73 = 0;
    return v73 & 1;
  }

  if (!v29 || a1 == a2)
  {
    v73 = 1;
    return v73 & 1;
  }

  v89 = v13;
  v90 = v17;
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v85 = a1 + v30;
  v31 = 0;
  v82 = v18;
  v83 = a2 + v30;
  v80 = v25;
  v81 = (v10 + 48);
  v95 = v97 + 16;
  v32 = (v97 + 8);
  v84 = *(v26 + 72);
  v91 = &v77 - v27;
  v78 = v9;
  v79 = v21;
  v88 = v29;
  while (1)
  {
    v33 = v84 * v31;
    v34 = v28;
    result = sub_265B8D438(v85 + v84 * v31, v28, type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
    if (v31 == v88)
    {
      goto LABEL_51;
    }

    sub_265B8D438(v83 + v33, v25, type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
    v36 = *v34 == *v25 && v34[1] == v25[1];
    if (!v36)
    {
      v37 = sub_265BA60E8();
      v34 = v91;
      if ((v37 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v86 = v31;
    v38 = v25;
    v39 = *(v94 + 24);
    v40 = *(v82 + 48);
    sub_265B8D500(v34 + v39, v21, &qword_280037598, &unk_265BA6430);
    sub_265B8D500(v38 + v39, &v21[v40], &qword_280037598, &unk_265BA6430);
    v41 = *v81;
    if ((*v81)(v21, 1, v9) == 1)
    {
      if (v41(&v21[v40], 1, v9) != 1)
      {
        goto LABEL_46;
      }

      goto LABEL_35;
    }

    v42 = v90;
    sub_265B8D500(v21, v90, &qword_280037598, &unk_265BA6430);
    if (v41(&v21[v40], 1, v9) == 1)
    {
      sub_265B8D4A0(v42, type metadata accessor for SyncRecordChangesetProtobuf);
LABEL_46:
      v74 = &qword_280037620;
      v75 = &qword_265BA6AC8;
      v76 = v21;
LABEL_41:
      sub_265B8D568(v76, v74, v75);
      v25 = v80;
      v34 = v91;
LABEL_42:
      sub_265B8D4A0(v25, type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
      sub_265B8D4A0(v34, type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
      goto LABEL_43;
    }

    v43 = &v21[v40];
    v44 = v89;
    result = sub_265B8D5C8(v43, v89, type metadata accessor for SyncRecordChangesetProtobuf);
    v45.n128_u64[0] = *v42;
    v36 = *v42 == *v44;
    v46 = v87;
    if (!v36 || (v47 = v90[1], v48 = *(v89 + 1), v49 = *(v47 + 16), v49 != *(v48 + 16)))
    {
LABEL_39:
      sub_265B8D4A0(v89, type metadata accessor for SyncRecordChangesetProtobuf);
      v68 = v90;
LABEL_40:
      sub_265B8D4A0(v68, type metadata accessor for SyncRecordChangesetProtobuf);
      v74 = &qword_280037598;
      v75 = &unk_265BA6430;
      v76 = v79;
      goto LABEL_41;
    }

    if (v49 && v47 != v48)
    {
      v50 = 0;
      v51 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      v92 = v48 + v51;
      v93 = v47 + v51;
      while (v50 < *(v47 + 16))
      {
        v52 = *(v97 + 72) * v50;
        v53 = *(v97 + 16);
        result = v53(v46, v93 + v52, v4, v45);
        if (v50 >= *(v48 + 16))
        {
          goto LABEL_48;
        }

        v54 = v96;
        (v53)(v96, v92 + v52, v4);
        sub_265B8B89C(&qword_280037618, MEMORY[0x277CFB080]);
        v55 = sub_265BA6048();
        v56 = *v32;
        (*v32)(v54, v4);
        result = (v56)(v46, v4);
        if ((v55 & 1) == 0)
        {
          goto LABEL_39;
        }

        if (v49 == ++v50)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_25:
    v57 = v90[2];
    v58 = *(v89 + 2);
    v59 = *(v57 + 16);
    if (v59 != *(v58 + 16))
    {
      goto LABEL_39;
    }

    if (v59 && v57 != v58)
    {
      break;
    }

LABEL_33:
    v9 = v78;
    v67 = *(v78 + 28);
    sub_265BA5DE8();
    sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8]);
    v69 = v89;
    v68 = v90;
    v70 = sub_265BA6048();
    sub_265B8D4A0(v69, type metadata accessor for SyncRecordChangesetProtobuf);
    if ((v70 & 1) == 0)
    {
      goto LABEL_40;
    }

    sub_265B8D4A0(v68, type metadata accessor for SyncRecordChangesetProtobuf);
    v21 = v79;
LABEL_35:
    sub_265B8D568(v21, &qword_280037598, &unk_265BA6430);
    v71 = *(v94 + 20);
    sub_265BA5DE8();
    sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8]);
    v72 = v91;
    v25 = v80;
    v73 = sub_265BA6048();
    sub_265B8D4A0(v25, type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
    sub_265B8D4A0(v72, type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
    if (v73)
    {
      v31 = v86 + 1;
      v28 = v91;
      if (v86 + 1 != v88)
      {
        continue;
      }
    }

    return v73 & 1;
  }

  v60 = 0;
  v61 = (*(v97 + 80) + 32) & ~*(v97 + 80);
  v92 = v58 + v61;
  v93 = v57 + v61;
  while (v60 < *(v57 + 16))
  {
    v62 = *(v97 + 72) * v60;
    v63 = *(v97 + 16);
    result = v63(v46, v93 + v62, v4, v45);
    if (v60 >= *(v58 + 16))
    {
      goto LABEL_50;
    }

    v64 = v96;
    (v63)(v96, v92 + v62, v4);
    sub_265B8B89C(&qword_280037618, MEMORY[0x277CFB080]);
    v65 = sub_265BA6048();
    v66 = *v32;
    (*v32)(v64, v4);
    result = (v66)(v46, v4);
    if ((v65 & 1) == 0)
    {
      goto LABEL_39;
    }

    if (v59 == ++v60)
    {
      goto LABEL_33;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_265B89864(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA5D98();
  v126 = *(v4 - 8);
  v5 = *(v126 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v125 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v101 - v8;
  v118 = type metadata accessor for SyncRecordChangesetProtobuf();
  v127 = *(v118 - 8);
  v10 = *(v127 + 8);
  MEMORY[0x28223BE20](v118);
  v12 = (&v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v101 - v15;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037620, &qword_265BA6AC8);
  v17 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v119 = &v101 - v18;
  v120 = type metadata accessor for EncryptionKeyProofProtobuf(0);
  v19 = *(v120 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v120);
  v22 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037628, &unk_265BA6AD0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v114 = (&v101 - v25);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037630, &unk_265BA87D0);
  v26 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v28 = &v101 - v27;
  v29 = type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  v30 = *(*(v29 - 1) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v121 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v122 = (&v101 - v34);
  v35 = *(a1 + 16);
  if (v35 != *(a2 + 16))
  {
LABEL_52:
    v96 = 0;
    return v96 & 1;
  }

  if (!v35 || a1 == a2)
  {
    v96 = 1;
    return v96 & 1;
  }

  v111 = v12;
  v112 = v16;
  v102 = v22;
  v36 = 0;
  v37 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v107 = a1 + v37;
  v105 = a2 + v37;
  v110 = (v19 + 48);
  v104 = (v127 + 48);
  v123 = (v126 + 8);
  v124 = v126 + 16;
  v106 = *(v33 + 72);
  v127 = v9;
  v38 = v121;
  v103 = v28;
  v108 = v29;
  v113 = v35;
  while (1)
  {
    v39 = v106 * v36;
    v40 = v122;
    result = sub_265B8D438(v107 + v106 * v36, v122, type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf);
    if (v36 == v113)
    {
      goto LABEL_64;
    }

    v109 = v36;
    sub_265B8D438(v105 + v39, v38, type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf);
    v42 = *v40 == *v38 && v40[1] == v38[1];
    if (!v42 && (sub_265BA60E8() & 1) == 0)
    {
      goto LABEL_51;
    }

    v43 = v29[6];
    v44 = *(v116 + 48);
    sub_265B8D500(v40 + v43, v28, &qword_280037628, &unk_265BA6AD0);
    sub_265B8D500(v38 + v43, &v28[v44], &qword_280037628, &unk_265BA6AD0);
    v45 = v28;
    v46 = *v110;
    v47 = v28;
    v48 = v120;
    if ((*v110)(v47, 1, v120) == 1)
    {
      if (v46((v45 + v44), 1, v48) != 1)
      {
        goto LABEL_55;
      }

      sub_265B8D568(v45, &qword_280037628, &unk_265BA6AD0);
      v28 = v45;
      v29 = v108;
      v38 = v121;
      goto LABEL_22;
    }

    v49 = v114;
    sub_265B8D500(v45, v114, &qword_280037628, &unk_265BA6AD0);
    if (v46((v45 + v44), 1, v48) == 1)
    {
      sub_265B8D4A0(v49, type metadata accessor for EncryptionKeyProofProtobuf);
LABEL_55:
      v99 = &qword_280037630;
      v100 = &unk_265BA87D0;
      goto LABEL_57;
    }

    v50 = v45 + v44;
    v51 = v102;
    sub_265B8D5C8(v50, v102, type metadata accessor for EncryptionKeyProofProtobuf);
    if ((*v49 != *v51 || v49[1] != v51[1]) && (sub_265BA60E8() & 1) == 0 || (v49[2] != v51[2] || v49[3] != v51[3]) && (sub_265BA60E8() & 1) == 0)
    {
      sub_265B8D4A0(v51, type metadata accessor for EncryptionKeyProofProtobuf);
      sub_265B8D4A0(v49, type metadata accessor for EncryptionKeyProofProtobuf);
      v99 = &qword_280037628;
      v100 = &unk_265BA6AD0;
LABEL_57:
      sub_265B8D568(v45, v99, v100);
      v38 = v121;
      goto LABEL_51;
    }

    v52 = v51;
    v53 = v49;
    v54 = *(v120 + 24);
    sub_265BA5DE8();
    sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8]);
    v55 = sub_265BA6048();
    sub_265B8D4A0(v52, type metadata accessor for EncryptionKeyProofProtobuf);
    v28 = v103;
    v40 = v122;
    sub_265B8D4A0(v53, type metadata accessor for EncryptionKeyProofProtobuf);
    sub_265B8D568(v28, &qword_280037628, &unk_265BA6AD0);
    v29 = v108;
    v38 = v121;
    if ((v55 & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_22:
    v56 = v29[7];
    v57 = *(v115 + 48);
    v58 = v40 + v56;
    v59 = v119;
    sub_265B8D500(v58, v119, &qword_280037598, &unk_265BA6430);
    sub_265B8D500(v38 + v56, v59 + v57, &qword_280037598, &unk_265BA6430);
    v60 = *v104;
    v61 = v118;
    if ((*v104)(v59, 1, v118) == 1)
    {
      v42 = v60(v59 + v57, 1, v61) == 1;
      v62 = v59;
      if (!v42)
      {
        goto LABEL_59;
      }

      sub_265B8D568(v59, &qword_280037598, &unk_265BA6430);
      v38 = v121;
      v40 = v122;
      goto LABEL_45;
    }

    v63 = v112;
    sub_265B8D500(v59, v112, &qword_280037598, &unk_265BA6430);
    if (v60(v59 + v57, 1, v61) == 1)
    {
      sub_265B8D4A0(v63, type metadata accessor for SyncRecordChangesetProtobuf);
      v62 = v59;
LABEL_59:
      v97 = &qword_280037620;
      v98 = &qword_265BA6AC8;
LABEL_50:
      sub_265B8D568(v62, v97, v98);
      v38 = v121;
      v40 = v122;
LABEL_51:
      sub_265B8D4A0(v38, type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf);
      sub_265B8D4A0(v40, type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf);
      goto LABEL_52;
    }

    v64 = v59 + v57;
    v65 = v111;
    result = sub_265B8D5C8(v64, v111, type metadata accessor for SyncRecordChangesetProtobuf);
    v66.n128_u64[0] = *v63;
    if (*v63 != *v65 || (v67 = v112[1], v68 = *(v111 + 1), v69 = *(v67 + 16), v69 != *(v68 + 16)))
    {
LABEL_49:
      sub_265B8D4A0(v111, type metadata accessor for SyncRecordChangesetProtobuf);
      sub_265B8D4A0(v112, type metadata accessor for SyncRecordChangesetProtobuf);
      v97 = &qword_280037598;
      v98 = &unk_265BA6430;
      v62 = v119;
      goto LABEL_50;
    }

    if (v69 && v67 != v68)
    {
      v70 = 0;
      v71 = (*(v126 + 80) + 32) & ~*(v126 + 80);
      v117 = v67 + v71;
      v72 = v68 + v71;
      while (v70 < *(v67 + 16))
      {
        v73 = *(v126 + 72) * v70;
        v74 = *(v126 + 16);
        result = v74(v9, v117 + v73, v4, v66);
        if (v70 >= *(v68 + 16))
        {
          goto LABEL_61;
        }

        v75 = v125;
        (v74)(v125, v72 + v73, v4);
        sub_265B8B89C(&qword_280037618, MEMORY[0x277CFB080]);
        v76 = sub_265BA6048();
        v77 = *v123;
        v78 = v75;
        v9 = v127;
        (*v123)(v78, v4);
        result = (v77)(v9, v4);
        if ((v76 & 1) == 0)
        {
          goto LABEL_49;
        }

        if (v69 == ++v70)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

LABEL_36:
    v79 = v112[2];
    v80 = *(v111 + 2);
    v81 = *(v79 + 16);
    if (v81 != *(v80 + 16))
    {
      goto LABEL_49;
    }

    if (v81 && v79 != v80)
    {
      break;
    }

LABEL_44:
    v91 = *(v118 + 28);
    sub_265BA5DE8();
    sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8]);
    v92 = v111;
    v93 = v112;
    v94 = sub_265BA6048();
    sub_265B8D4A0(v92, type metadata accessor for SyncRecordChangesetProtobuf);
    sub_265B8D4A0(v93, type metadata accessor for SyncRecordChangesetProtobuf);
    sub_265B8D568(v119, &qword_280037598, &unk_265BA6430);
    v38 = v121;
    v40 = v122;
    v28 = v103;
    v29 = v108;
    if ((v94 & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_45:
    v95 = v29[5];
    sub_265BA5DE8();
    sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8]);
    v96 = sub_265BA6048();
    sub_265B8D4A0(v38, type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf);
    sub_265B8D4A0(v40, type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf);
    if (v96)
    {
      v36 = v109 + 1;
      if (v109 + 1 != v113)
      {
        continue;
      }
    }

    return v96 & 1;
  }

  v82 = 0;
  v83 = (*(v126 + 80) + 32) & ~*(v126 + 80);
  v117 = v79 + v83;
  v84 = v80 + v83;
  while (v82 < *(v79 + 16))
  {
    v85 = *(v126 + 72) * v82;
    v86 = *(v126 + 16);
    result = v86(v9, v117 + v85, v4, v66);
    if (v82 >= *(v80 + 16))
    {
      goto LABEL_63;
    }

    v87 = v125;
    (v86)(v125, v84 + v85, v4);
    sub_265B8B89C(&qword_280037618, MEMORY[0x277CFB080]);
    v88 = sub_265BA6048();
    v89 = *v123;
    v90 = v87;
    v9 = v127;
    (*v123)(v90, v4);
    result = (v89)(v9, v4);
    if ((v88 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (v81 == ++v82)
    {
      goto LABEL_44;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

uint64_t sub_265B8A5E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_265BA60E8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_265B8A670(uint64_t a1, uint64_t a2)
{
  v122[3] = *MEMORY[0x277D85DE8];
  v4 = sub_265BA5D98();
  v119 = *(v4 - 8);
  v5 = *(v119 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v118 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v120 = &v99 - v8;
  v9 = type metadata accessor for SyncRecordChangesetProtobuf();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v99 - v16;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037620, &qword_265BA6AC8);
  v18 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v20 = &v99 - v19;
  SyncChangesetResponse = type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  v21 = *(*(SyncChangesetResponse - 8) + 64);
  v22 = MEMORY[0x28223BE20](SyncChangesetResponse);
  v24 = (&v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v113 = &v99 - v26;
  v27 = *(a1 + 16);
  if (v27 != *(a2 + 16))
  {
    goto LABEL_88;
  }

  if (!v27 || a1 == a2)
  {
    v96 = 1;
    goto LABEL_89;
  }

  v111 = v17;
  v109 = v13;
  v107 = v9;
  v102 = 0;
  v28 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v106 = a1 + v28;
  v29 = 0;
  v104 = a2 + v28;
  v103 = (v10 + 48);
  v116 = (v119 + 8);
  v117 = v119 + 16;
  v105 = *(v25 + 72);
  v30 = v113;
  v101 = v20;
  v100 = v24;
  v110 = v27;
  while (1)
  {
    v31 = v105 * v29;
    sub_265B8D438(v106 + v105 * v29, v30, type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
    if (v29 == v110)
    {
      goto LABEL_96;
    }

    v108 = v29;
    sub_265B8D438(v104 + v31, v24, type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
    v32 = *v30 == *v24 && v30[1] == v24[1];
    if (!v32 && (sub_265BA60E8() & 1) == 0)
    {
      goto LABEL_87;
    }

    v33 = v30[2];
    v34 = v30[3];
    v35 = v24[2];
    v36 = v24[3];
    v37 = v34 >> 62;
    v38 = v36 >> 62;
    if (v34 >> 62 == 3)
    {
      v39 = 0;
      if (!v33 && v34 == 0xC000000000000000 && v36 >> 62 == 3)
      {
        v39 = 0;
        if (!v35 && v36 == 0xC000000000000000)
        {
          goto LABEL_60;
        }
      }

LABEL_27:
      if (v38 <= 1)
      {
        goto LABEL_28;
      }

      goto LABEL_21;
    }

    if (v37 > 1)
    {
      if (v37 == 2)
      {
        v45 = *(v33 + 16);
        v44 = *(v33 + 24);
        v42 = __OFSUB__(v44, v45);
        v39 = v44 - v45;
        if (v42)
        {
          goto LABEL_100;
        }

        goto LABEL_27;
      }

      v39 = 0;
      if (v38 <= 1)
      {
        goto LABEL_28;
      }
    }

    else if (v37)
    {
      LODWORD(v39) = HIDWORD(v33) - v33;
      if (__OFSUB__(HIDWORD(v33), v33))
      {
        goto LABEL_99;
      }

      v39 = v39;
      if (v38 <= 1)
      {
LABEL_28:
        if (v38)
        {
          LODWORD(v43) = HIDWORD(v35) - v35;
          if (__OFSUB__(HIDWORD(v35), v35))
          {
            goto LABEL_97;
          }

          v43 = v43;
        }

        else
        {
          v43 = BYTE6(v36);
        }

        goto LABEL_34;
      }
    }

    else
    {
      v39 = BYTE6(v34);
      if (v38 <= 1)
      {
        goto LABEL_28;
      }
    }

LABEL_21:
    if (v38 != 2)
    {
      if (v39)
      {
        goto LABEL_87;
      }

      goto LABEL_60;
    }

    v41 = *(v35 + 16);
    v40 = *(v35 + 24);
    v42 = __OFSUB__(v40, v41);
    v43 = v40 - v41;
    if (v42)
    {
      goto LABEL_98;
    }

LABEL_34:
    if (v39 != v43)
    {
      goto LABEL_87;
    }

    if (v39 < 1)
    {
      goto LABEL_60;
    }

    if (v37 > 1)
    {
      if (v37 != 2)
      {
        memset(v122, 0, 14);
LABEL_55:
        v58 = v102;
        sub_265B8C074(v122, v35, v36, &v121);
        v102 = v58;
        if (!v121)
        {
          goto LABEL_87;
        }

        goto LABEL_60;
      }

      v46 = v24[2];
      v47 = *(v33 + 16);
      v48 = *(v33 + 24);
      v49 = sub_265BA5C78();
      if (v49)
      {
        v50 = sub_265BA5C98();
        if (__OFSUB__(v47, v50))
        {
          goto LABEL_103;
        }

        v49 += v47 - v50;
      }

      if (__OFSUB__(v48, v47))
      {
        goto LABEL_102;
      }

      sub_265BA5C88();
      v51 = v102;
      sub_265B8C074(v49, v46, v36, v122);
      v102 = v51;
      v52 = v122[0];
      v20 = v101;
      v24 = v100;
    }

    else
    {
      if (!v37)
      {
        v122[0] = v30[2];
        LOWORD(v122[1]) = v34;
        BYTE2(v122[1]) = BYTE2(v34);
        BYTE3(v122[1]) = BYTE3(v34);
        BYTE4(v122[1]) = BYTE4(v34);
        BYTE5(v122[1]) = BYTE5(v34);
        goto LABEL_55;
      }

      v114 = v24[2];
      v53 = v24;
      v54 = v33;
      if (v33 >> 32 < v33)
      {
        goto LABEL_101;
      }

      v55 = sub_265BA5C78();
      if (v55)
      {
        v56 = v55;
        v57 = sub_265BA5C98();
        if (__OFSUB__(v54, v57))
        {
          goto LABEL_104;
        }

        v99 = v54 - v57 + v56;
      }

      else
      {
        v99 = 0;
      }

      v24 = v53;
      sub_265BA5C88();
      v59 = v102;
      sub_265B8C074(v99, v114, v36, v122);
      v102 = v59;
      v52 = v122[0];
      v20 = v101;
    }

    v30 = v113;
    if ((v52 & 1) == 0)
    {
      goto LABEL_87;
    }

LABEL_60:
    v60 = *(SyncChangesetResponse + 28);
    v61 = *(v112 + 48);
    sub_265B8D500(v30 + v60, v20, &qword_280037598, &unk_265BA6430);
    sub_265B8D500(v24 + v60, &v20[v61], &qword_280037598, &unk_265BA6430);
    v62 = *v103;
    v63 = v107;
    if ((*v103)(v20, 1, v107) == 1)
    {
      if (v62(&v20[v61], 1, v63) != 1)
      {
        goto LABEL_91;
      }

      sub_265B8D568(v20, &qword_280037598, &unk_265BA6430);
      goto LABEL_82;
    }

    v64 = v24;
    v65 = v111;
    sub_265B8D500(v20, v111, &qword_280037598, &unk_265BA6430);
    if (v62(&v20[v61], 1, v63) == 1)
    {
      break;
    }

    v66 = &v20[v61];
    v67 = v109;
    sub_265B8D5C8(v66, v109, type metadata accessor for SyncRecordChangesetProtobuf);
    v68.n128_u64[0] = *v65;
    if (*v65 != *v67 || (v69 = v111[1], v70 = *(v109 + 1), v71 = *(v69 + 16), v71 != *(v70 + 16)))
    {
LABEL_86:
      sub_265B8D4A0(v109, type metadata accessor for SyncRecordChangesetProtobuf);
      sub_265B8D4A0(v111, type metadata accessor for SyncRecordChangesetProtobuf);
      sub_265B8D568(v101, &qword_280037598, &unk_265BA6430);
      v24 = v100;
      v30 = v113;
      goto LABEL_87;
    }

    if (v71 && v69 != v70)
    {
      v72 = 0;
      v73 = (*(v119 + 80) + 32) & ~*(v119 + 80);
      v114 = v69 + v73;
      v74 = v70 + v73;
      while (v72 < *(v69 + 16))
      {
        v75 = *(v119 + 72) * v72;
        v76 = *(v119 + 16);
        v76(v120, v114 + v75, v4, v68);
        if (v72 >= *(v70 + 16))
        {
          goto LABEL_93;
        }

        v77 = v118;
        (v76)(v118, v74 + v75, v4);
        sub_265B8B89C(&qword_280037618, MEMORY[0x277CFB080]);
        v78 = sub_265BA6048();
        v79 = *v116;
        (*v116)(v77, v4);
        v79(v120, v4);
        if ((v78 & 1) == 0)
        {
          goto LABEL_86;
        }

        if (v71 == ++v72)
        {
          goto LABEL_73;
        }
      }

      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

LABEL_73:
    v80 = v111[2];
    v81 = *(v109 + 2);
    v82 = *(v80 + 16);
    if (v82 != *(v81 + 16))
    {
      goto LABEL_86;
    }

    if (v82 && v80 != v81)
    {
      v83 = 0;
      v84 = (*(v119 + 80) + 32) & ~*(v119 + 80);
      v114 = v80 + v84;
      v85 = v81 + v84;
      while (v83 < *(v80 + 16))
      {
        v86 = *(v119 + 72) * v83;
        v87 = *(v119 + 16);
        v87(v120, v114 + v86, v4, v68);
        if (v83 >= *(v81 + 16))
        {
          goto LABEL_95;
        }

        v88 = v118;
        (v87)(v118, v85 + v86, v4);
        sub_265B8B89C(&qword_280037618, MEMORY[0x277CFB080]);
        v89 = sub_265BA6048();
        v90 = *v116;
        (*v116)(v88, v4);
        v90(v120, v4);
        if ((v89 & 1) == 0)
        {
          goto LABEL_86;
        }

        if (v82 == ++v83)
        {
          goto LABEL_81;
        }
      }

LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
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
    }

LABEL_81:
    v91 = *(v107 + 28);
    sub_265BA5DE8();
    sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8]);
    v92 = v111;
    v93 = v109;
    v94 = sub_265BA6048();
    sub_265B8D4A0(v93, type metadata accessor for SyncRecordChangesetProtobuf);
    sub_265B8D4A0(v92, type metadata accessor for SyncRecordChangesetProtobuf);
    v20 = v101;
    sub_265B8D568(v101, &qword_280037598, &unk_265BA6430);
    v24 = v100;
    v30 = v113;
    if ((v94 & 1) == 0)
    {
      goto LABEL_87;
    }

LABEL_82:
    v95 = *(SyncChangesetResponse + 24);
    sub_265BA5DE8();
    sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8]);
    v96 = sub_265BA6048();
    sub_265B8D4A0(v24, type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
    sub_265B8D4A0(v30, type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
    if (v96)
    {
      v29 = v108 + 1;
      if (v108 + 1 != v110)
      {
        continue;
      }
    }

    goto LABEL_89;
  }

  sub_265B8D4A0(v65, type metadata accessor for SyncRecordChangesetProtobuf);
  v24 = v64;
  v30 = v113;
LABEL_91:
  sub_265B8D568(v20, &qword_280037620, &qword_265BA6AC8);
LABEL_87:
  sub_265B8D4A0(v24, type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
  sub_265B8D4A0(v30, type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);
LABEL_88:
  v96 = 0;
LABEL_89:
  v97 = *MEMORY[0x277D85DE8];
  return v96 & 1;
}

uint64_t sub_265B8B36C(uint64_t a1, uint64_t a2)
{
  v48[3] = *MEMORY[0x277D85DE8];
  SyncChangesetRequest = type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf(0);
  v4 = *(*(SyncChangesetRequest - 8) + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v42 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      v44 = 0;
      v45 = v15;
      while (1)
      {
        sub_265B8D438(v13, v10, type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf);
        sub_265B8D438(v14, v7, type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf);
        v16 = *v10 == *v7 && v10[1] == v7[1];
        if (!v16 && (sub_265BA60E8() & 1) == 0)
        {
LABEL_63:
          sub_265B8D4A0(v7, type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf);
          sub_265B8D4A0(v10, type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf);
          goto LABEL_64;
        }

        v17 = v10[2];
        v18 = v10[3];
        v19 = v7[2];
        v20 = v7[3];
        v21 = v18 >> 62;
        v22 = v20 >> 62;
        if (v18 >> 62 == 3)
        {
          break;
        }

        if (v21 > 1)
        {
          if (v21 == 2)
          {
            v29 = *(v17 + 16);
            v28 = *(v17 + 24);
            v26 = __OFSUB__(v28, v29);
            v23 = v28 - v29;
            if (v26)
            {
              goto LABEL_68;
            }

            goto LABEL_26;
          }

          v23 = 0;
          if (v22 > 1)
          {
            goto LABEL_20;
          }
        }

        else if (v21)
        {
          LODWORD(v23) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
            goto LABEL_67;
          }

          v23 = v23;
          if (v22 > 1)
          {
LABEL_20:
            if (v22 != 2)
            {
              if (v23)
              {
                goto LABEL_63;
              }

              goto LABEL_59;
            }

            v25 = *(v19 + 16);
            v24 = *(v19 + 24);
            v26 = __OFSUB__(v24, v25);
            v27 = v24 - v25;
            if (v26)
            {
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
            }

            goto LABEL_33;
          }
        }

        else
        {
          v23 = BYTE6(v18);
          if (v22 > 1)
          {
            goto LABEL_20;
          }
        }

LABEL_27:
        if (v22)
        {
          LODWORD(v27) = HIDWORD(v19) - v19;
          if (__OFSUB__(HIDWORD(v19), v19))
          {
            goto LABEL_66;
          }

          v27 = v27;
        }

        else
        {
          v27 = BYTE6(v20);
        }

LABEL_33:
        if (v23 != v27)
        {
          goto LABEL_63;
        }

        if (v23 >= 1)
        {
          if (v21 > 1)
          {
            if (v21 == 2)
            {
              v30 = *(v17 + 16);
              v42 = *(v17 + 24);
              v43 = v19;
              v31 = sub_265BA5C78();
              if (v31)
              {
                v32 = sub_265BA5C98();
                if (__OFSUB__(v30, v32))
                {
                  goto LABEL_71;
                }

                v31 += v30 - v32;
              }

              if (__OFSUB__(v42, v30))
              {
                goto LABEL_70;
              }

              goto LABEL_58;
            }

            memset(v48, 0, 14);
          }

          else
          {
            if (v21)
            {
              v43 = v7[2];
              v33 = v17;
              if (v17 >> 32 < v17)
              {
                goto LABEL_69;
              }

              v34 = sub_265BA5C78();
              if (v34)
              {
                v42 = v34;
                v35 = sub_265BA5C98();
                if (__OFSUB__(v33, v35))
                {
                  goto LABEL_72;
                }

                v31 = v33 - v35 + v42;
              }

              else
              {
                v31 = 0;
              }

LABEL_58:
              sub_265BA5C88();
              v37 = v44;
              sub_265B8C074(v31, v43, v20, v48);
              v44 = v37;
              if ((v48[0] & 1) == 0)
              {
                goto LABEL_63;
              }

              goto LABEL_59;
            }

            v48[0] = v10[2];
            LOWORD(v48[1]) = v18;
            BYTE2(v48[1]) = BYTE2(v18);
            BYTE3(v48[1]) = BYTE3(v18);
            BYTE4(v48[1]) = BYTE4(v18);
            BYTE5(v48[1]) = BYTE5(v18);
          }

          v36 = v44;
          sub_265B8C074(v48, v19, v20, &v47);
          v44 = v36;
          if (!v47)
          {
            goto LABEL_63;
          }
        }

LABEL_59:
        v38 = *(SyncChangesetRequest + 24);
        sub_265BA5DE8();
        sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8]);
        v39 = sub_265BA6048();
        sub_265B8D4A0(v7, type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf);
        sub_265B8D4A0(v10, type metadata accessor for FetchSyncChangesetRequestProtobuf.ZoneChangesetRequestProtobuf);
        if (v39)
        {
          v14 += v45;
          v13 += v45;
          if (--v11)
          {
            continue;
          }
        }

        goto LABEL_65;
      }

      v23 = 0;
      if (!v17 && v18 == 0xC000000000000000 && v20 >> 62 == 3)
      {
        v23 = 0;
        if (!v19 && v20 == 0xC000000000000000)
        {
          goto LABEL_59;
        }
      }

LABEL_26:
      if (v22 > 1)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }

    v39 = 1;
  }

  else
  {
LABEL_64:
    v39 = 0;
  }

LABEL_65:
  v40 = *MEMORY[0x277D85DE8];
  return v39 & 1;
}

uint64_t sub_265B8B89C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265B8B8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v22 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_20:
    v20 = 0;
    return v20 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_265B8D438(v14, v11, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);
      sub_265B8D438(v15, v8, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);
      v17 = *v11 == *v8 && v11[1] == v8[1];
      if (!v17 && (sub_265BA60E8() & 1) == 0)
      {
        break;
      }

      v18 = v11[2] == v8[2] && v11[3] == v8[3];
      if (!v18 && (sub_265BA60E8() & 1) == 0)
      {
        break;
      }

      v19 = *(v4 + 24);
      sub_265BA5DE8();
      sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8]);
      v20 = sub_265BA6048();
      sub_265B8D4A0(v8, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);
      sub_265B8D4A0(v11, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);
      if (v20)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_265B8D4A0(v8, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);
    sub_265B8D4A0(v11, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);
    goto LABEL_20;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_265B8BBB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScoreEstimationMarkerProtobuf();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_14:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_265B8D438(v14, v11, type metadata accessor for ScoreEstimationMarkerProtobuf);
      sub_265B8D438(v15, v8, type metadata accessor for ScoreEstimationMarkerProtobuf);
      if (*v11 != *v8 || v11[1] != v8[1] || v11[2] != v8[2] || v11[3] != v8[3])
      {
        break;
      }

      v17 = *(v4 + 32);
      sub_265BA5DE8();
      sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8]);
      v18 = sub_265BA6048();
      sub_265B8D4A0(v8, type metadata accessor for ScoreEstimationMarkerProtobuf);
      sub_265B8D4A0(v11, type metadata accessor for ScoreEstimationMarkerProtobuf);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_265B8D4A0(v8, type metadata accessor for ScoreEstimationMarkerProtobuf);
    sub_265B8D4A0(v11, type metadata accessor for ScoreEstimationMarkerProtobuf);
    goto LABEL_14;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_265B8BE7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v13, v19, v8);
    sub_265B8B89C(v32, v33);
    v26 = sub_265BA6048();
    v27 = *v22;
    (*v22)(v13, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_265B8C074@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_265BA5C78();
    if (v10)
    {
      v11 = sub_265BA5C98();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_265BA5C88();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_265BA5C78();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_265BA5C98();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_265BA5C88();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_265B8C2A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_265B8C434(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_265B85D10(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_265B8C074(v14, a3, a4, &v13);
  v10 = v4;
  sub_265B85D10(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_265B8C434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_265BA5C78();
  v11 = result;
  if (result)
  {
    result = sub_265BA5C98();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_265BA5C88();
  sub_265B8C074(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_265B8C4EC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_265B85C84(a3, a4);
          return sub_265B8C2A4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s21SeymourServerProtocol34FetchSyncChangesetResponseProtobufV04ZonefH0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for SyncRecordChangesetProtobuf();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037620, &qword_265BA6AC8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_265BA60E8() & 1) == 0 || (sub_265B8C4EC(a1[2], a1[3], a2[2], a2[3]) & 1) == 0)
  {
    goto LABEL_19;
  }

  v29 = v8;
  SyncChangesetResponse = type metadata accessor for FetchSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  v17 = *(SyncChangesetResponse + 28);
  v18 = *(v13 + 48);
  sub_265B8D500(a1 + v17, v16, &qword_280037598, &unk_265BA6430);
  sub_265B8D500(a2 + v17, &v16[v18], &qword_280037598, &unk_265BA6430);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_265B8D500(v16, v12, &qword_280037598, &unk_265BA6430);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v24 = &v16[v18];
      v25 = v29;
      sub_265B8D5C8(v24, v29, type metadata accessor for SyncRecordChangesetProtobuf);
      if (*v12 == *v25 && (sub_265B8BE7C(*(v12 + 1), *(v25 + 8), MEMORY[0x277CFB080], &qword_280037618, MEMORY[0x277CFB080], MEMORY[0x277CFB088]) & 1) != 0 && (sub_265B8BE7C(*(v12 + 2), *(v25 + 16), MEMORY[0x277CFB080], &qword_280037618, MEMORY[0x277CFB080], MEMORY[0x277CFB088]) & 1) != 0)
      {
        v26 = *(v4 + 28);
        sub_265BA5DE8();
        sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8]);
        v27 = sub_265BA6048();
        sub_265B8D4A0(v25, type metadata accessor for SyncRecordChangesetProtobuf);
        sub_265B8D4A0(v12, type metadata accessor for SyncRecordChangesetProtobuf);
        sub_265B8D568(v16, &qword_280037598, &unk_265BA6430);
        if (v27)
        {
          goto LABEL_8;
        }

LABEL_19:
        v21 = 0;
        return v21 & 1;
      }

      sub_265B8D4A0(v25, type metadata accessor for SyncRecordChangesetProtobuf);
      sub_265B8D4A0(v12, type metadata accessor for SyncRecordChangesetProtobuf);
      v22 = &qword_280037598;
      v23 = &unk_265BA6430;
LABEL_18:
      sub_265B8D568(v16, v22, v23);
      goto LABEL_19;
    }

    sub_265B8D4A0(v12, type metadata accessor for SyncRecordChangesetProtobuf);
LABEL_11:
    v22 = &qword_280037620;
    v23 = &qword_265BA6AC8;
    goto LABEL_18;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_265B8D568(v16, &qword_280037598, &unk_265BA6430);
LABEL_8:
  v20 = *(SyncChangesetResponse + 24);
  sub_265BA5DE8();
  sub_265B8B89C(&qword_2800375A0, MEMORY[0x277D216C8]);
  v21 = sub_265BA6048();
  return v21 & 1;
}

uint64_t sub_265B8D024()
{
  result = sub_265BA5DE8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_265BA5DE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_265BA5DE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_265B8D240(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_265B8D2E0(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    sub_265BA5DE8();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_265B8D2E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_265B8D36C()
{
  sub_265BA5DE8();
  if (v0 <= 0x3F)
  {
    sub_265B8D2E0(319, qword_2813B53E0, type metadata accessor for SyncRecordChangesetProtobuf, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_265B8D438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_265B8D4A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_265B8D500(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_265B8D568(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_265B8D5C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
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

uint64_t FetchScoresResponseProtobuf.communityScores.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037670, &unk_265BA6B00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  ScoresResponseProtobuf = type metadata accessor for FetchScoresResponseProtobuf();
  sub_265B8D874(v1 + *(ScoresResponseProtobuf + 20), v6);
  v8 = sub_265BA5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_265BA5CE8();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_265B8D568(v6, &qword_280037670, &unk_265BA6B00);
  }

  return result;
}

uint64_t type metadata accessor for FetchScoresResponseProtobuf()
{
  result = qword_280037698;
  if (!qword_280037698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265B8D874(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037670, &unk_265BA6B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265B8D8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037670, &unk_265BA6B00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  ScoresResponseProtobuf = type metadata accessor for FetchScoresResponseProtobuf();
  sub_265B8D874(a1 + *(ScoresResponseProtobuf + 20), v7);
  v9 = sub_265BA5CF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_265BA5CE8();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_265B8D568(v7, &qword_280037670, &unk_265BA6B00);
  }

  return result;
}

uint64_t sub_265B8DA3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA5CF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for FetchScoresResponseProtobuf() + 20);
  sub_265B8D568(a2 + v9, &qword_280037670, &unk_265BA6B00);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t FetchScoresResponseProtobuf.communityScores.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchScoresResponseProtobuf() + 20);
  sub_265B8D568(v1 + v3, &qword_280037670, &unk_265BA6B00);
  v4 = sub_265BA5CF8();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*FetchScoresResponseProtobuf.communityScores.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037670, &unk_265BA6B00) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_265BA5CF8();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for FetchScoresResponseProtobuf() + 20);
  *(v5 + 12) = v15;
  sub_265B8D874(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_265BA5CE8();
    if (v16(v8, 1, v9) != 1)
    {
      sub_265B8D568(v8, &qword_280037670, &unk_265BA6B00);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_265B8DE44;
}

void sub_265B8DE44(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_265B8D568(v9 + v3, &qword_280037670, &unk_265BA6B00);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_265B8D568(v9 + v3, &qword_280037670, &unk_265BA6B00);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL FetchScoresResponseProtobuf.hasCommunityScores.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037670, &unk_265BA6B00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  ScoresResponseProtobuf = type metadata accessor for FetchScoresResponseProtobuf();
  sub_265B8D874(v0 + *(ScoresResponseProtobuf + 20), v4);
  v6 = sub_265BA5CF8();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_265B8D568(v4, &qword_280037670, &unk_265BA6B00);
  return v7;
}

Swift::Void __swiftcall FetchScoresResponseProtobuf.clearCommunityScores()()
{
  v1 = *(type metadata accessor for FetchScoresResponseProtobuf() + 20);
  sub_265B8D568(v0 + v1, &qword_280037670, &unk_265BA6B00);
  v2 = sub_265BA5CF8();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t FetchScoresResponseProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_265BA5DE8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FetchScoresResponseProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = sub_265BA5DE8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FetchScoresResponseProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  v2 = *(type metadata accessor for FetchScoresResponseProtobuf() + 20);
  v3 = sub_265BA5CF8();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_265B8E2AC()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037658);
  __swift_project_value_buffer(v0, qword_280037658);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6410;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "communityScores";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_265BA5FD8();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_265BA5FE8();
}

uint64_t static FetchScoresResponseProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2800374E0 != -1)
  {
    swift_once();
  }

  v2 = sub_265BA6008();
  v3 = __swift_project_value_buffer(v2, qword_280037658);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t FetchScoresResponseProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_265B8E534();
    }
  }

  return result;
}

uint64_t sub_265B8E534()
{
  v0 = *(type metadata accessor for FetchScoresResponseProtobuf() + 20);
  sub_265BA5CF8();
  sub_265B8F214(&qword_2800376C8, MEMORY[0x277D52850]);
  return sub_265BA5ED8();
}

uint64_t FetchScoresResponseProtobuf.traverse<A>(visitor:)()
{
  result = sub_265B8E640(v0);
  if (!v1)
  {
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t sub_265B8E640(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037670, &unk_265BA6B00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_265BA5CF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ScoresResponseProtobuf = type metadata accessor for FetchScoresResponseProtobuf();
  sub_265B8D874(a1 + *(ScoresResponseProtobuf + 20), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_265B8D568(v5, &qword_280037670, &unk_265BA6B00);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_265B8F214(&qword_2800376C8, MEMORY[0x277D52850]);
  sub_265BA5FC8();
  return (*(v7 + 8))(v10, v6);
}

uint64_t FetchScoresResponseProtobuf.hashValue.getter()
{
  sub_265BA6168();
  type metadata accessor for FetchScoresResponseProtobuf();
  sub_265B8F214(&qword_280037678, type metadata accessor for FetchScoresResponseProtobuf);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B8E8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  v4 = *(a1 + 20);
  v5 = sub_265BA5CF8();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_265B8E968@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_265BA5DE8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_265B8E9D0(uint64_t a1)
{
  v3 = sub_265BA5DE8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_265B8EA88(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B8F214(&qword_2800376B0, type metadata accessor for FetchScoresResponseProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B8EB04@<X0>(uint64_t a1@<X8>)
{
  if (qword_2800374E0 != -1)
  {
    swift_once();
  }

  v2 = sub_265BA6008();
  v3 = __swift_project_value_buffer(v2, qword_280037658);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_265B8EBAC(uint64_t a1)
{
  v2 = sub_265B8F214(&qword_280037688, type metadata accessor for FetchScoresResponseProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B8EC18()
{
  sub_265B8F214(&qword_280037688, type metadata accessor for FetchScoresResponseProtobuf);

  return sub_265BA5F08();
}

uint64_t _s21SeymourServerProtocol27FetchScoresResponseProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA5CF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037670, &unk_265BA6B00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800376B8, &qword_265BA6CA8);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = *(type metadata accessor for FetchScoresResponseProtobuf() + 20);
  v19 = *(v14 + 56);
  sub_265B8D874(a1 + v18, v17);
  sub_265B8D874(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_265B8D568(v17, &qword_280037670, &unk_265BA6B00);
LABEL_9:
      sub_265BA5DE8();
      sub_265B8F214(&qword_2800375A0, MEMORY[0x277D216C8]);
      v21 = sub_265BA6048();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_265B8D874(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_265B8D568(v17, &qword_2800376B8, &qword_265BA6CA8);
    goto LABEL_7;
  }

  (*(v5 + 32))(v8, &v17[v19], v4);
  sub_265B8F214(&qword_2800376C0, MEMORY[0x277D52850]);
  v22 = sub_265BA6048();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v12, v4);
  sub_265B8D568(v17, &qword_280037670, &unk_265BA6B00);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

void sub_265B8F138()
{
  sub_265BA5DE8();
  if (v0 <= 0x3F)
  {
    sub_265B8F1BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_265B8F1BC()
{
  if (!qword_2800376A8)
  {
    sub_265BA5CF8();
    v0 = sub_265BA6088();
    if (!v1)
    {
      atomic_store(v0, &qword_2800376A8);
    }
  }
}

uint64_t sub_265B8F214(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FetchSyncableCountsRequestProtobuf.zones.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t FetchSyncableCountsRequestProtobuf.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for FetchSyncableCountsRequestProtobuf(0) + 20);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B8F3C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B8F47C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t FetchSyncableCountsResponseProtobuf.init()@<X0>(unint64_t *a1@<X8>)
{
  *a1 = sub_265B90110(MEMORY[0x277D84F90]);
  v2 = a1 + *(type metadata accessor for FetchSyncableCountsResponseProtobuf(0) + 20);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t FetchSyncableCountsRequestProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_265BA5E98();
    }
  }

  return result;
}

uint64_t FetchSyncableCountsRequestProtobuf.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_265BA5F88(), !v1))
  {
    v3 = v0 + *(type metadata accessor for FetchSyncableCountsRequestProtobuf(0) + 20);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t sub_265B8F798(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9020C(&qword_280037738, type metadata accessor for FetchSyncableCountsRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B8F838(uint64_t a1)
{
  v2 = sub_265B9020C(&qword_280037710, type metadata accessor for FetchSyncableCountsRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B8F8A4()
{
  sub_265B9020C(&qword_280037710, type metadata accessor for FetchSyncableCountsRequestProtobuf);

  return sub_265BA5F08();
}

uint64_t FetchSyncableCountsResponseProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_265B8FA04();
    }
  }

  return result;
}

uint64_t sub_265B8FA04()
{
  sub_265BA5DA8();
  sub_265BA5DB8();
  return sub_265BA5E28();
}

uint64_t FetchSyncableCountsResponseProtobuf.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (sub_265BA5DA8(), sub_265BA5DB8(), result = sub_265BA5F28(), !v1))
  {
    v3 = v0 + *(type metadata accessor for FetchSyncableCountsResponseProtobuf(0) + 20);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t sub_265B8FB7C(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  sub_265BA5DE8();
  sub_265B9020C(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B8FC7C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_265BA6168();
  a1(0);
  sub_265B9020C(a2, a3);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B8FD04@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  *a2 = sub_265B90110(MEMORY[0x277D84F90]);
  v4 = a2 + *(a1 + 20);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B8FD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9020C(&qword_280037730, type metadata accessor for FetchSyncableCountsResponseProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B8FE30(uint64_t a1)
{
  v2 = sub_265B9020C(&qword_280037720, type metadata accessor for FetchSyncableCountsResponseProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B8FE9C()
{
  sub_265B9020C(&qword_280037720, type metadata accessor for FetchSyncableCountsResponseProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B8FF30(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_265BA5DE8();
  sub_265B9020C(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B8FFDC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 4 * v12);

    v17 = sub_265B96598(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 4 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_265B90110(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037740, &qword_265BA6FF8);
    v3 = sub_265BA60C8();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_265B96598(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
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

uint64_t sub_265B9020C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_265B904D4()
{
  if (!qword_2813B4AB0)
  {
    v0 = sub_265BA6068();
    if (!v1)
    {
      atomic_store(v0, &qword_2813B4AB0);
    }
  }
}

uint64_t sub_265B90564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = sub_265BA5DE8();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_265B905EC()
{
  if (!qword_2813B4AF0[0])
  {
    v0 = sub_265BA6018();
    if (!v1)
    {
      atomic_store(v0, qword_2813B4AF0);
    }
  }
}

void ServerErrorProtobuf.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t ServerErrorProtobuf.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t ServerErrorProtobuf.zone.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ServerErrorProtobuf.zone.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ServerErrorProtobuf.zones.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t ServerErrorProtobuf.argumentName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ServerErrorProtobuf.argumentName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t ServerErrorProtobuf.errorDescription.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t ServerErrorProtobuf.errorDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t ServerErrorProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ServerErrorProtobuf() + 36);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ServerErrorProtobuf()
{
  result = qword_2813B5618;
  if (!qword_2813B5618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ServerErrorProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ServerErrorProtobuf() + 36);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t ServerErrorProtobuf.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xD;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_265B90A90()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_265BA6168();
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B90AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B91174();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_265B90B48()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_265BA6168();
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t ServerErrorProtobuf.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v1 = MEMORY[0x277D84F90];
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = v1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  v2 = a1 + *(type metadata accessor for ServerErrorProtobuf() + 36);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B90C50()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037748);
  __swift_project_value_buffer(v0, qword_280037748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA7000;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zone";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "zones";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "argumentName";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "errorDescription";
  *(v15 + 8) = 16;
  *(v15 + 16) = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t ServerErrorProtobuf.decodeMessage<A>(decoder:)()
{
  result = sub_265BA5E38();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_265B91174();
          sub_265BA5E48();
        }

        else if (result == 2)
        {
          goto LABEL_4;
        }
      }

      else if (result == 3)
      {
        sub_265BA5E98();
      }

      else if (result == 4 || result == 5)
      {
LABEL_4:
        sub_265BA5EB8();
      }

      result = sub_265BA5E38();
    }
  }

  return result;
}

uint64_t ServerErrorProtobuf.traverse<A>(visitor:)()
{
  if (!*v0 || (v10 = *v0, v11 = *(v0 + 8), sub_265B91174(), result = sub_265BA5F38(), !v1))
  {
    v3 = v0[3];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_265BA5FA8(), !v1))
    {
      if (!*(v0[4] + 16) || (result = sub_265BA5F88(), !v1))
      {
        v5 = v0[6];
        v6 = HIBYTE(v5) & 0xF;
        if ((v5 & 0x2000000000000000) == 0)
        {
          v6 = v0[5] & 0xFFFFFFFFFFFFLL;
        }

        if (!v6 || (result = sub_265BA5FA8(), !v1))
        {
          v7 = v0[8];
          v8 = HIBYTE(v7) & 0xF;
          if ((v7 & 0x2000000000000000) == 0)
          {
            v8 = v0[7] & 0xFFFFFFFFFFFFLL;
          }

          if (!v8 || (result = sub_265BA5FA8(), !v1))
          {
            v9 = v0 + *(type metadata accessor for ServerErrorProtobuf() + 36);
            return sub_265BA5DC8();
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_265B91174()
{
  result = qword_2813B5650;
  if (!qword_2813B5650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B5650);
  }

  return result;
}

uint64_t ServerErrorProtobuf.hashValue.getter()
{
  sub_265BA6168();
  type metadata accessor for ServerErrorProtobuf();
  sub_265B9206C(&qword_280037778, type metadata accessor for ServerErrorProtobuf);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B91254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = MEMORY[0x277D84F90];
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0xE000000000000000;
  v2 = a2 + *(a1 + 36);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B912B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B9132C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_265B913A0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_265B913F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9206C(&qword_280037798, type metadata accessor for ServerErrorProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B91494(uint64_t a1)
{
  v2 = sub_265B9206C(&qword_2813B5630, type metadata accessor for ServerErrorProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B91500()
{
  sub_265B9206C(&qword_2813B5630, type metadata accessor for ServerErrorProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B91580()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037760);
  __swift_project_value_buffer(v0, qword_280037760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_265BA7010;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 0;
  *v5 = "bootstrapRequired";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_265BA5FD8();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "mismatchedZones";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "invalidZone";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "invalidPayload";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "invalidArgument";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "transportFailed";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "serverFailed";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "fetchRequired";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "cacheFailed";
  *(v22 + 8) = 11;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "zoneCreationRequired";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "zoneDeletionRequired";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "noEncryptionKey";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "resetRequired";
  *(v30 + 1) = 13;
  v30[16] = 2;
  v8();
  return sub_265BA5FE8();
}

uint64_t _s21SeymourServerProtocol0B13ErrorProtobufV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v4 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v4 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v4 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v4 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v4 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v4 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v4 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v4 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v4 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v4 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      case 11:
        if (v4 != 11)
        {
          return 0;
        }

        goto LABEL_6;
      case 12:
        if (v4 != 12)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v4)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v4 == v5)
  {
LABEL_6:
    v6 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v6 || (sub_265BA60E8()) && (sub_265B8A5E0(a1[4], a2[4]) & 1) != 0 && (a1[5] == a2[5] && a1[6] == a2[6] || (sub_265BA60E8()) && (a1[7] == a2[7] && a1[8] == a2[8] || (sub_265BA60E8()))
    {
      v7 = *(type metadata accessor for ServerErrorProtobuf() + 36);
      sub_265BA5DE8();
      sub_265B9206C(&qword_2800375A0, MEMORY[0x277D216C8]);
      return sub_265BA6048() & 1;
    }
  }

  return 0;
}

unint64_t sub_265B91C18()
{
  result = qword_2813B5648;
  if (!qword_2813B5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B5648);
  }

  return result;
}

unint64_t sub_265B91C70()
{
  result = qword_2813B5638;
  if (!qword_2813B5638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B5638);
  }

  return result;
}

unint64_t sub_265B91CC8()
{
  result = qword_280037780;
  if (!qword_280037780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280037788, &qword_265BA7080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280037780);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_265B91D78()
{
  result = qword_2813B5640;
  if (!qword_2813B5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B5640);
  }

  return result;
}

void sub_265B91F14()
{
  sub_265B904D4();
  if (v0 <= 0x3F)
  {
    sub_265BA5DE8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ServerErrorProtobuf.ErrorType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ServerErrorProtobuf.ErrorType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_265B92020(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265B9203C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_265B9206C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ScoreEstimationMarkerProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScoreEstimationMarkerProtobuf() + 32);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ScoreEstimationMarkerProtobuf()
{
  result = qword_2800377D8;
  if (!qword_2800377D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScoreEstimationMarkerProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ScoreEstimationMarkerProtobuf() + 32);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ScoreEstimationMarkerProtobuf.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ScoreEstimationMarkerProtobuf();
  *a1 = 0;
  a1[1] = 0;
  v3 = a1 + *(v2 + 32);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B92354()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_2800377A0);
  __swift_project_value_buffer(v0, qword_2800377A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA7360;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "position";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "increment";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "desiredPosition";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t static ScoreEstimationMarkerProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280037508 != -1)
  {
    swift_once();
  }

  v2 = sub_265BA6008();
  v3 = __swift_project_value_buffer(v2, qword_2800377A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ScoreEstimationMarkerProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        sub_265BA5E68();
      }
    }

    else if (result == 1)
    {
      sub_265BA5E78();
    }

    else if (result == 2)
    {
      goto LABEL_2;
    }
  }
}

uint64_t ScoreEstimationMarkerProtobuf.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_265BA5F68(), !v1))
  {
    if (!v0[1] || (result = sub_265BA5F58(), !v1))
    {
      if (!v0[2] || (result = sub_265BA5F58(), !v1))
      {
        if (!v0[3] || (result = sub_265BA5F58(), !v1))
        {
          v3 = v0 + *(type metadata accessor for ScoreEstimationMarkerProtobuf() + 32);
          return sub_265BA5DC8();
        }
      }
    }
  }

  return result;
}

uint64_t ScoreEstimationMarkerProtobuf.hashValue.getter()
{
  sub_265BA6168();
  type metadata accessor for ScoreEstimationMarkerProtobuf();
  sub_265B92EA8(&qword_2800377B8, type metadata accessor for ScoreEstimationMarkerProtobuf);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B92874@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a2 + *(a1 + 32);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B928B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B92928(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_265B9299C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_265B929F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B92EA8(&qword_2800377E8, type metadata accessor for ScoreEstimationMarkerProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B92A6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_280037508 != -1)
  {
    swift_once();
  }

  v2 = sub_265BA6008();
  v3 = __swift_project_value_buffer(v2, qword_2800377A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_265B92B14(uint64_t a1)
{
  v2 = sub_265B92EA8(&qword_2800377C8, type metadata accessor for ScoreEstimationMarkerProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B92B80()
{
  sub_265B92EA8(&qword_2800377C8, type metadata accessor for ScoreEstimationMarkerProtobuf);

  return sub_265BA5F08();
}

uint64_t _s21SeymourServerProtocol29ScoreEstimationMarkerProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v2 = *(type metadata accessor for ScoreEstimationMarkerProtobuf() + 32);
  sub_265BA5DE8();
  sub_265B92EA8(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B92E20()
{
  result = sub_265BA5DE8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_265B92EA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for SyncRecordType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SyncRecordType(_WORD *result, int a2, int a3)
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

uint64_t ScoreCacheProtobuf.lowerScores.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ScoreCacheProtobuf.lowerMiddleScores.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ScoreCacheProtobuf.upperMiddleScores.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t ScoreCacheProtobuf.upperScores.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t ScoreCacheProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScoreCacheProtobuf() + 32);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ScoreCacheProtobuf()
{
  result = qword_280037830;
  if (!qword_280037830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScoreCacheProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ScoreCacheProtobuf() + 32);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ScoreCacheProtobuf.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  a1[2] = v2;
  a1[3] = v2;
  v3 = a1 + *(type metadata accessor for ScoreCacheProtobuf() + 32);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B93384()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_2800377F0);
  __swift_project_value_buffer(v0, qword_2800377F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA7360;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "lowerScores";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lowerMiddleScores";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "upperMiddleScores";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "upperScores";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t static ScoreCacheProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280037510 != -1)
  {
    swift_once();
  }

  v2 = sub_265BA6008();
  v3 = __swift_project_value_buffer(v2, qword_2800377F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ScoreCacheProtobuf.decodeMessage<A>(decoder:)()
{
  result = sub_265BA5E38();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_4:
          sub_265BA5CA8();
          sub_265B940CC(&qword_280037808, MEMORY[0x277D50638]);
          sub_265BA5EC8();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_4;
      }

      result = sub_265BA5E38();
    }
  }

  return result;
}

uint64_t ScoreCacheProtobuf.traverse<A>(visitor:)()
{
  v2 = v1;
  if (*(*v0 + 16))
  {
    sub_265BA5CA8();
    sub_265B940CC(&qword_280037808, MEMORY[0x277D50638]);
    result = sub_265BA5FB8();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[1] + 16))
  {
    sub_265BA5CA8();
    sub_265B940CC(&qword_280037808, MEMORY[0x277D50638]);
    result = sub_265BA5FB8();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0[2] + 16))
  {
    sub_265BA5CA8();
    sub_265B940CC(&qword_280037808, MEMORY[0x277D50638]);
    v4 = v2;
    result = sub_265BA5FB8();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v4 = v2;
  }

  if (!*(v0[3] + 16) || (sub_265BA5CA8(), sub_265B940CC(&qword_280037808, MEMORY[0x277D50638]), result = sub_265BA5FB8(), !v4))
  {
    v5 = v0 + *(type metadata accessor for ScoreCacheProtobuf() + 32);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t ScoreCacheProtobuf.hashValue.getter()
{
  sub_265BA6168();
  type metadata accessor for ScoreCacheProtobuf();
  sub_265B940CC(&qword_280037810, type metadata accessor for ScoreCacheProtobuf);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B93B3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v2;
  a2[2] = v2;
  a2[3] = v2;
  v3 = a2 + *(a1 + 32);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B93BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B940CC(&qword_280037848, type metadata accessor for ScoreCacheProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B93C34@<X0>(uint64_t a1@<X8>)
{
  if (qword_280037510 != -1)
  {
    swift_once();
  }

  v2 = sub_265BA6008();
  v3 = __swift_project_value_buffer(v2, qword_2800377F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_265B93CDC(uint64_t a1)
{
  v2 = sub_265B940CC(&qword_280037820, type metadata accessor for ScoreCacheProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B93D48()
{
  sub_265B940CC(&qword_280037820, type metadata accessor for ScoreCacheProtobuf);

  return sub_265BA5F08();
}

uint64_t _s21SeymourServerProtocol18ScoreCacheProtobufV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_265B8BE34(*a1, *a2) & 1) == 0 || (sub_265B8BE34(a1[1], a2[1]) & 1) == 0 || (sub_265B8BE34(a1[2], a2[2]) & 1) == 0 || (sub_265B8BE34(a1[3], a2[3]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for ScoreCacheProtobuf() + 32);
  sub_265BA5DE8();
  sub_265B940CC(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

void sub_265B93FEC()
{
  sub_265B94074();
  if (v0 <= 0x3F)
  {
    sub_265BA5DE8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_265B94074()
{
  if (!qword_280037840)
  {
    sub_265BA5CA8();
    v0 = sub_265BA6068();
    if (!v1)
    {
      atomic_store(v0, &qword_280037840);
    }
  }
}

uint64_t sub_265B940CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SubmitScoresRequestProtobuf.scores.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SubmitScoresRequestProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubmitScoresRequestProtobuf(0) + 20);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubmitScoresRequestProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubmitScoresRequestProtobuf(0) + 20);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubmitScoresRequestProtobuf.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for SubmitScoresRequestProtobuf(0) + 20);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t SubmitScoresResponseProtobuf.rejected.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf.reason.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf.reason.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf.score.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf.score.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_265B9453C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B945F8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf(0) + 24);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t SubmitScoresResponseProtobuf.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = a1 + *(type metadata accessor for SubmitScoresResponseProtobuf(0) + 24);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B9475C()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037850);
  __swift_project_value_buffer(v0, qword_280037850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6410;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "scores";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_265BA5FD8();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_265BA5FE8();
}

uint64_t SubmitScoresRequestProtobuf.decodeMessage<A>(decoder:)()
{
  result = sub_265BA5E38();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_265BA5CD8();
        sub_265B95DC0(&qword_280037898, MEMORY[0x277D521E0]);
        sub_265BA5EC8();
      }

      result = sub_265BA5E38();
    }
  }

  return result;
}

uint64_t SubmitScoresRequestProtobuf.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (sub_265BA5CD8(), sub_265B95DC0(&qword_280037898, MEMORY[0x277D521E0]), result = sub_265BA5FB8(), !v1))
  {
    v3 = v0 + *(type metadata accessor for SubmitScoresRequestProtobuf(0) + 20);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t static SubmitScoresRequestProtobuf.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_265B8BB68(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for SubmitScoresRequestProtobuf(0) + 20);
  sub_265BA5DE8();
  sub_265B95DC0(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B94BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B95DC0(&qword_280037910, type metadata accessor for SubmitScoresRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B94C90(uint64_t a1)
{
  v2 = sub_265B95DC0(&qword_2800378C8, type metadata accessor for SubmitScoresRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B94CFC()
{
  sub_265B95DC0(&qword_2800378C8, type metadata accessor for SubmitScoresRequestProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B94D78(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_265B8BB68(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_265BA5DE8();
  sub_265B95DC0(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B94E3C()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037868);
  __swift_project_value_buffer(v0, qword_280037868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6400;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "accepted";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rejected";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t SubmitScoresResponseProtobuf.decodeMessage<A>(decoder:)()
{
  result = sub_265BA5E38();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_265BA5E98();
      }

      else if (result == 2)
      {
        type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf(0);
        sub_265B95DC0(&qword_2800378A8, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);
        sub_265BA5EC8();
      }

      result = sub_265BA5E38();
    }
  }

  return result;
}

uint64_t SubmitScoresResponseProtobuf.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_265BA5F88(), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf(0), sub_265B95DC0(&qword_2800378A8, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf), result = sub_265BA5FB8(), !v1))
    {
      v3 = v0 + *(type metadata accessor for SubmitScoresResponseProtobuf(0) + 24);
      return sub_265BA5DC8();
    }
  }

  return result;
}

uint64_t static SubmitScoresResponseProtobuf.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_265B8A5E0(*a1, *a2) & 1) == 0 || (sub_265B8B8E4(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for SubmitScoresResponseProtobuf(0) + 24);
  sub_265BA5DE8();
  sub_265B95DC0(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B95330@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v2;
  v3 = a2 + *(a1 + 24);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B953A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B95DC0(&qword_280037908, type metadata accessor for SubmitScoresResponseProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B95448(uint64_t a1)
{
  v2 = sub_265B95DC0(&qword_2800378E0, type metadata accessor for SubmitScoresResponseProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B954B4()
{
  sub_265B95DC0(&qword_2800378E0, type metadata accessor for SubmitScoresResponseProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B95530(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_265B8A5E0(*a1, *a2) & 1) == 0 || (sub_265B8B8E4(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  sub_265BA5DE8();
  sub_265B95DC0(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B95604()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037880);
  __swift_project_value_buffer(v0, qword_280037880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6400;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "reason";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_265BA5EB8();
    }
  }

  return result;
}

uint64_t SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_265BA5FA8(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_265BA5FA8(), !v1))
    {
      v8 = v0 + *(type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf(0) + 24);
      return sub_265BA5DC8();
    }
  }

  return result;
}

uint64_t static SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_265BA60E8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_265BA60E8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf(0) + 24);
  sub_265BA5DE8();
  sub_265B95DC0(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B95A5C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_265BA6168();
  a1(0);
  sub_265B95DC0(a2, a3);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B95AE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B95B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B95DC0(&qword_280037900, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B95BFC(uint64_t a1)
{
  v2 = sub_265B95DC0(&qword_2800378A8, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B95C68()
{
  sub_265B95DC0(&qword_2800378A8, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B95CE4(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_265BA60E8() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_265BA60E8() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  sub_265BA5DE8();
  sub_265B95DC0(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B95DC0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_265B96190()
{
  sub_265B96310(319, &qword_2813B4AE8, MEMORY[0x277D521E0]);
  if (v0 <= 0x3F)
  {
    sub_265BA5DE8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_265B96258()
{
  sub_265B904D4();
  if (v0 <= 0x3F)
  {
    sub_265B96310(319, &qword_2813B4AD8, type metadata accessor for SubmitScoresResponseProtobuf.SessionScoresRejectionProtobuf);
    if (v1 <= 0x3F)
    {
      sub_265BA5DE8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_265B96310(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_265BA6068();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_265B9638C()
{
  result = sub_265BA5DE8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ServerError.init(wrapping:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getErrorValue();
  v5 = sub_265BA6118();
  if (*(v5 + 16) && (v6 = sub_265B96598(1635017060, 0xE400000000000000), (v7 & 1) != 0))
  {
    sub_265B96664(*(v5 + 56) + 32 * v6, &v11);

    if (swift_dynamicCast())
    {
      sub_265B966C0();
      sub_265BA5D38();
      goto LABEL_8;
    }
  }

  else
  {
  }

  swift_getErrorValue();
  if (!sub_265BA6108())
  {
    sub_265B96610();
    swift_allocError();
    *v10 = xmmword_265BA7BE0;
    *(v10 + 16) = 10;
    swift_willThrow();
    return MEMORY[0x26676C880](a1);
  }

  ServerError.init(wrapping:)(&v11);
LABEL_8:
  result = MEMORY[0x26676C880](a1);
  if (!v2)
  {
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return result;
}

unint64_t sub_265B96598(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_265BA6168();
  sub_265BA6058();
  v6 = sub_265BA6188();

  return sub_265B96714(a1, a2, v6);
}

unint64_t sub_265B96610()
{
  result = qword_2813B5578;
  if (!qword_2813B5578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813B5578);
  }

  return result;
}

uint64_t sub_265B96664(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_265B966C0()
{
  result = qword_2813B5580[0];
  if (!qword_2813B5580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813B5580);
  }

  return result;
}

unint64_t sub_265B96714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_265BA60E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_265B967E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BA5D88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_265B97898(&qword_280037920);
      v28 = sub_265BA6028();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_265B97898(&qword_280037928);
        v33 = sub_265BA6048();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t ServerError.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 <= 4)
  {
    if (*(v1 + 16) <= 1u)
    {
      v7 = v4 != 0;
    }

    else if (v4 == 2)
    {
      v7 = 2;
    }

    else if (v4 == 3)
    {
      v7 = 3;
    }

    else
    {
      v7 = 4;
    }

    MEMORY[0x26676C730](v7);

    return sub_265B96DC8(a1, v3);
  }

  else
  {
    v5 = *(v1 + 8);
    if (*(v1 + 16) <= 7u)
    {
      if (v4 == 5)
      {
        v6 = 7;
      }

      else if (v4 == 6)
      {
        v6 = 9;
      }

      else
      {
        v6 = 10;
      }

LABEL_22:
      MEMORY[0x26676C730](v6);

      return sub_265BA6058();
    }

    if (v4 == 8)
    {
      v6 = 11;
      goto LABEL_22;
    }

    if (v4 == 9)
    {
      v6 = 12;
      goto LABEL_22;
    }

    if (v3 | v5)
    {
      if (v3 ^ 1 | v5)
      {
        v9 = 8;
      }

      else
      {
        v9 = 6;
      }
    }

    else
    {
      v9 = 5;
    }

    return MEMORY[0x26676C730](v9);
  }
}

uint64_t ServerError.hashValue.getter()
{
  v1 = *(v0 + 16);
  *&v3[9] = *v0;
  v4 = v1;
  sub_265BA6168();
  ServerError.hash(into:)(v3);
  return sub_265BA6188();
}

uint64_t sub_265B96D18()
{
  v1 = *(v0 + 16);
  *&v3[9] = *v0;
  v4 = v1;
  sub_265BA6168();
  ServerError.hash(into:)(v3);
  return sub_265BA6188();
}

uint64_t sub_265B96D70()
{
  v1 = *(v0 + 16);
  *&v3[9] = *v0;
  v4 = v1;
  sub_265BA6168();
  ServerError.hash(into:)(v3);
  return sub_265BA6188();
}

uint64_t sub_265B96DC8(__int128 *a1, uint64_t a2)
{
  v4 = sub_265BA5D88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v26 = a1[2];
  v27 = v9;
  v28 = *(a1 + 8);
  v11 = *a1;
  v10 = a1[1];
  v23[0] = a1;
  v24 = v11;
  v25 = v10;
  v12 = sub_265BA6188();
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v23[2] = v5 + 16;
  v23[3] = v12;
  v23[1] = v5 + 8;

  v18 = 0;
  for (i = 0; v15; v18 ^= v22)
  {
    v20 = i;
LABEL_9:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    (*(v5 + 16))(v8, *(a2 + 48) + *(v5 + 72) * (v21 | (v20 << 6)), v4);
    sub_265B97898(&qword_280037920);
    v22 = sub_265BA6028();
    result = (*(v5 + 8))(v8, v4);
  }

  while (1)
  {
    v20 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v20 >= v16)
    {

      return MEMORY[0x26676C730](v18);
    }

    v15 = *(a2 + 56 + 8 * v20);
    ++i;
    if (v15)
    {
      i = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s21SeymourServerProtocol0B5ErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 4)
  {
    if (*(a1 + 16) <= 1u)
    {
      if (*(a1 + 16))
      {
        if (v7 == 1)
        {
          sub_265B977E0(*a2, *(a2 + 8), 1u);
          sub_265B977E0(v3, v2, 1u);
          LOBYTE(v11) = sub_265B967E0(v3, v6);
          sub_265B9783C(v3, v2, 1u);
          v12 = v6;
          v13 = v5;
          v14 = 1;
          goto LABEL_63;
        }
      }

      else if (!*(a2 + 16))
      {
        sub_265B977E0(*a2, *(a2 + 8), 0);
        sub_265B977E0(v3, v2, 0);
        v11 = sub_265B967E0(v3, v6);
        sub_265B9783C(v3, v2, 0);
        v12 = v6;
        v13 = v5;
        v14 = 0;
        goto LABEL_63;
      }
    }

    else if (v4 == 2)
    {
      if (v7 == 2)
      {
        sub_265B977E0(*a2, *(a2 + 8), 2u);
        sub_265B977E0(v3, v2, 2u);
        LOBYTE(v11) = sub_265B967E0(v3, v6);
        sub_265B9783C(v3, v2, 2u);
        v12 = v6;
        v13 = v5;
        v14 = 2;
        goto LABEL_63;
      }
    }

    else if (v4 == 3)
    {
      if (v7 == 3)
      {
        sub_265B977E0(*a2, *(a2 + 8), 3u);
        sub_265B977E0(v3, v2, 3u);
        LOBYTE(v11) = sub_265B967E0(v3, v6);
        sub_265B9783C(v3, v2, 3u);
        v12 = v6;
        v13 = v5;
        v14 = 3;
        goto LABEL_63;
      }
    }

    else if (v7 == 4)
    {
      sub_265B977E0(*a2, *(a2 + 8), 4u);
      sub_265B977E0(v3, v2, 4u);
      LOBYTE(v11) = sub_265B967E0(v3, v6);
      sub_265B9783C(v3, v2, 4u);
      v12 = v6;
      v13 = v5;
      v14 = 4;
      goto LABEL_63;
    }

    goto LABEL_56;
  }

  if (*(a1 + 16) <= 7u)
  {
    if (v4 == 5)
    {
      if (v7 == 5)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_265B977E0(*a1, v2, 5u);
          sub_265B977E0(v3, v2, 5u);
          sub_265B9783C(v3, v2, 5u);
          v8 = v3;
          v9 = v2;
          v10 = 5;
          goto LABEL_55;
        }

        v17 = *a1;
        LOBYTE(v11) = sub_265BA60E8();
        sub_265B977E0(v6, v5, 5u);
        sub_265B977E0(v3, v2, 5u);
        sub_265B9783C(v3, v2, 5u);
        v12 = v6;
        v13 = v5;
        v14 = 5;
        goto LABEL_63;
      }
    }

    else if (v4 == 6)
    {
      if (v7 == 6)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_265B977E0(*a1, v2, 6u);
          sub_265B977E0(v3, v2, 6u);
          sub_265B9783C(v3, v2, 6u);
          v8 = v3;
          v9 = v2;
          v10 = 6;
LABEL_55:
          sub_265B9783C(v8, v9, v10);
          return 1;
        }

        v19 = *a1;
        LOBYTE(v11) = sub_265BA60E8();
        sub_265B977E0(v6, v5, 6u);
        sub_265B977E0(v3, v2, 6u);
        sub_265B9783C(v3, v2, 6u);
        v12 = v6;
        v13 = v5;
        v14 = 6;
        goto LABEL_63;
      }
    }

    else if (v7 == 7)
    {
      if (v3 == v6 && v2 == v5)
      {
        sub_265B977E0(*a1, v2, 7u);
        sub_265B977E0(v3, v2, 7u);
        sub_265B9783C(v3, v2, 7u);
        v8 = v3;
        v9 = v2;
        v10 = 7;
        goto LABEL_55;
      }

      v21 = *a1;
      LOBYTE(v11) = sub_265BA60E8();
      sub_265B977E0(v6, v5, 7u);
      sub_265B977E0(v3, v2, 7u);
      sub_265B9783C(v3, v2, 7u);
      v12 = v6;
      v13 = v5;
      v14 = 7;
      goto LABEL_63;
    }

LABEL_56:
    sub_265B977E0(*a2, *(a2 + 8), v7);
    sub_265B977E0(v3, v2, v4);
    sub_265B9783C(v3, v2, v4);
    sub_265B9783C(v6, v5, v7);
    return 0;
  }

  if (v4 == 8)
  {
    if (v7 == 8)
    {
      if (v3 == v6 && v2 == v5)
      {
        sub_265B977E0(*a1, v2, 8u);
        sub_265B977E0(v3, v2, 8u);
        sub_265B9783C(v3, v2, 8u);
        v8 = v3;
        v9 = v2;
        v10 = 8;
        goto LABEL_55;
      }

      v18 = *a1;
      LOBYTE(v11) = sub_265BA60E8();
      sub_265B977E0(v6, v5, 8u);
      sub_265B977E0(v3, v2, 8u);
      sub_265B9783C(v3, v2, 8u);
      v12 = v6;
      v13 = v5;
      v14 = 8;
      goto LABEL_63;
    }

    goto LABEL_56;
  }

  if (v4 != 9)
  {
    if (v3 | v2)
    {
      if (!(v3 ^ 1 | v2))
      {
        if (v7 == 10 && v6 == 1 && !v5)
        {
          sub_265B9783C(*a1, v2, 0xAu);
          v15 = 1;
          sub_265B9783C(1, 0, 0xAu);
          return v15;
        }

        goto LABEL_56;
      }

      if (v7 != 10 || v6 != 2 || v5)
      {
        goto LABEL_56;
      }

      sub_265B9783C(*a1, v2, 0xAu);
      v8 = 2;
    }

    else
    {
      if (v7 != 10 || v5 | v6)
      {
        goto LABEL_56;
      }

      sub_265B9783C(*a1, v2, 0xAu);
      v8 = 0;
    }

    v9 = 0;
    v10 = 10;
    goto LABEL_55;
  }

  if (v7 != 9)
  {
    goto LABEL_56;
  }

  if (v3 == v6 && v2 == v5)
  {
    sub_265B977E0(*a1, v2, 9u);
    sub_265B977E0(v3, v2, 9u);
    sub_265B9783C(v3, v2, 9u);
    v8 = v3;
    v9 = v2;
    v10 = 9;
    goto LABEL_55;
  }

  v20 = *a1;
  LOBYTE(v11) = sub_265BA60E8();
  sub_265B977E0(v6, v5, 9u);
  sub_265B977E0(v3, v2, 9u);
  sub_265B9783C(v3, v2, 9u);
  v12 = v6;
  v13 = v5;
  v14 = 9;
LABEL_63:
  sub_265B9783C(v12, v13, v14);
  return v11 & 1;
}

unint64_t sub_265B976A4()
{
  result = qword_280037918;
  if (!qword_280037918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280037918);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21SeymourServerProtocol0B5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 9)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_265B9772C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 17))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_265B97774(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
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

uint64_t sub_265B977B8(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0;
    LOBYTE(a2) = 10;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_265B977E0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 4u)
  {
    if (a3 <= 6u)
    {
      if (a3 == 5)
      {
      }

      result = a2;
      if (a3 == 6)
      {
      }
    }

    else if (a3 == 7 || a3 == 8 || a3 == 9)
    {
    }
  }

  else if (a3 < 5u)
  {
  }

  return result;
}

uint64_t sub_265B9783C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 4u)
  {
    if (a3 <= 6u)
    {
      if (a3 == 5)
      {
      }

      result = a2;
      if (a3 == 6)
      {
      }
    }

    else if (a3 == 7 || a3 == 8 || a3 == 9)
    {
    }
  }

  else if (a3 < 5u)
  {
  }

  return result;
}

uint64_t sub_265B97898(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_265BA5D88();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SyncRecordChangesetProtobuf.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v2;
  a1[2] = v2;
  v3 = a1 + *(type metadata accessor for SyncRecordChangesetProtobuf() + 28);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t type metadata accessor for SyncRecordChangesetProtobuf()
{
  result = qword_2813B5418;
  if (!qword_2813B5418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SyncRecordChangesetProtobuf.inserted.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SyncRecordChangesetProtobuf.deleted.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SyncRecordChangesetProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SyncRecordChangesetProtobuf() + 28);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SyncRecordChangesetProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SyncRecordChangesetProtobuf() + 28);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_265B97BA0()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037930);
  __swift_project_value_buffer(v0, qword_280037930);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "inserted";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 5;
  *v11 = "deleted";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t static SyncRecordChangesetProtobuf._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280037530 != -1)
  {
    swift_once();
  }

  v2 = sub_265BA6008();
  v3 = __swift_project_value_buffer(v2, qword_280037930);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SyncRecordChangesetProtobuf.decodeMessage<A>(decoder:)()
{
  result = sub_265BA5E38();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 5 || result == 4)
      {
        sub_265BA5D98();
        sub_265B9885C(&qword_2813B5658, MEMORY[0x277CFB080]);
        sub_265BA5EC8();
      }

      else if (result == 2)
      {
        sub_265BA5EA8();
      }

      result = sub_265BA5E38();
    }
  }

  return result;
}

uint64_t SyncRecordChangesetProtobuf.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_265BA5F98(), !v1))
  {
    if (!*(v0[1] + 16) || (sub_265BA5D98(), sub_265B9885C(&qword_2813B5658, MEMORY[0x277CFB080]), result = sub_265BA5FB8(), !v1))
    {
      if (!*(v0[2] + 16) || (sub_265BA5D98(), sub_265B9885C(&qword_2813B5658, MEMORY[0x277CFB080]), result = sub_265BA5FB8(), !v1))
      {
        v3 = v0 + *(type metadata accessor for SyncRecordChangesetProtobuf() + 28);
        return sub_265BA5DC8();
      }
    }
  }

  return result;
}

uint64_t SyncRecordChangesetProtobuf.hashValue.getter()
{
  sub_265BA6168();
  type metadata accessor for SyncRecordChangesetProtobuf();
  sub_265B9885C(&qword_280037948, type metadata accessor for SyncRecordChangesetProtobuf);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B981C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a2 = 0;
  a2[1] = v2;
  a2[2] = v2;
  v3 = a2 + *(a1 + 28);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B98210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B98284(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_265B982F8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_265B9834C(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9885C(&qword_280037958, type metadata accessor for SyncRecordChangesetProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B983C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_280037530 != -1)
  {
    swift_once();
  }

  v2 = sub_265BA6008();
  v3 = __swift_project_value_buffer(v2, qword_280037930);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_265B98470(uint64_t a1)
{
  v2 = sub_265B9885C(qword_2813B5430, type metadata accessor for SyncRecordChangesetProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B984DC()
{
  sub_265B9885C(qword_2813B5430, type metadata accessor for SyncRecordChangesetProtobuf);

  return sub_265BA5F08();
}

uint64_t _s21SeymourServerProtocol27SyncRecordChangesetProtobufV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (sub_265B88EA8(*(a1 + 8), *(a2 + 8)) & 1) == 0 || (sub_265B88EA8(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for SyncRecordChangesetProtobuf() + 28);
  sub_265BA5DE8();
  sub_265B9885C(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

void sub_265B98770()
{
  sub_265B98804();
  if (v0 <= 0x3F)
  {
    sub_265BA5DE8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_265B98804()
{
  if (!qword_2813B4AE0)
  {
    sub_265BA5D98();
    v0 = sub_265BA6068();
    if (!v1)
    {
      atomic_store(v0, &qword_2813B4AE0);
    }
  }
}

uint64_t sub_265B9885C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EncryptionKeyProofProtobuf.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EncryptionKeyProofProtobuf.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EncryptionKeyProofProtobuf.etag.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t EncryptionKeyProofProtobuf.etag.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t EncryptionKeyProofProtobuf.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EncryptionKeyProofProtobuf(0) + 24);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EncryptionKeyProofProtobuf.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EncryptionKeyProofProtobuf(0) + 24);
  v4 = sub_265BA5DE8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t EncryptionKeyProofProtobuf.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for EncryptionKeyProofProtobuf(0) + 24);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t SubmitSyncChangesetRequestProtobuf.zoneChangesets.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.key.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037628, &unk_265BA6AD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(v1 + *(v7 + 24), v6, &qword_280037628, &unk_265BA6AD0);
  v8 = type metadata accessor for EncryptionKeyProofProtobuf(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_265B99550(v6, a1, type metadata accessor for EncryptionKeyProofProtobuf);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v10 = a1 + *(v8 + 24);
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_265B8D568(v6, &qword_280037628, &unk_265BA6AD0);
  }

  return result;
}

uint64_t sub_265B98DE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037628, &unk_265BA6AD0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(a1 + *(v8 + 24), v7, &qword_280037628, &unk_265BA6AD0);
  v9 = type metadata accessor for EncryptionKeyProofProtobuf(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_265B99550(v7, a2, type metadata accessor for EncryptionKeyProofProtobuf);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v11 = a2 + *(v9 + 24);
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_265B8D568(v7, &qword_280037628, &unk_265BA6AD0);
  }

  return result;
}

uint64_t sub_265B98F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncryptionKeyProofProtobuf(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B99B4C(a1, v8, type metadata accessor for EncryptionKeyProofProtobuf);
  v9 = *(type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0) + 24);
  sub_265B8D568(a2 + v9, &qword_280037628, &unk_265BA6AD0);
  sub_265B99550(v8, a2 + v9, type metadata accessor for EncryptionKeyProofProtobuf);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.key.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0) + 24);
  sub_265B8D568(v1 + v3, &qword_280037628, &unk_265BA6AD0);
  sub_265B99550(a1, v1 + v3, type metadata accessor for EncryptionKeyProofProtobuf);
  v4 = type metadata accessor for EncryptionKeyProofProtobuf(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.key.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037628, &unk_265BA6AD0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for EncryptionKeyProofProtobuf(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0) + 24);
  *(v5 + 12) = v15;
  sub_265B8D500(v1 + v15, v8, &qword_280037628, &unk_265BA6AD0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0xE000000000000000;
    v17 = v14 + *(v9 + 24);
    _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_265B8D568(v8, &qword_280037628, &unk_265BA6AD0);
    }
  }

  else
  {
    sub_265B99550(v8, v14, type metadata accessor for EncryptionKeyProofProtobuf);
  }

  return sub_265B99348;
}

uint64_t SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.recordChangeset.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(v1 + *(v7 + 28), v6, &qword_280037598, &unk_265BA6430);
  v8 = type metadata accessor for SyncRecordChangesetProtobuf();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_265B99550(v6, a1, type metadata accessor for SyncRecordChangesetProtobuf);
  }

  v10 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v10;
  a1[2] = v10;
  v11 = a1 + *(v8 + 28);
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_265B8D568(v6, &qword_280037598, &unk_265BA6430);
  }

  return result;
}

uint64_t sub_265B99550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_265B995B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(a1 + *(v8 + 28), v7, &qword_280037598, &unk_265BA6430);
  v9 = type metadata accessor for SyncRecordChangesetProtobuf();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_265B99550(v7, a2, type metadata accessor for SyncRecordChangesetProtobuf);
  }

  v11 = MEMORY[0x277D84F90];
  *a2 = 0;
  a2[1] = v11;
  a2[2] = v11;
  v12 = a2 + *(v9 + 28);
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_265B8D568(v7, &qword_280037598, &unk_265BA6430);
  }

  return result;
}

uint64_t sub_265B99724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncRecordChangesetProtobuf();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B99B4C(a1, v8, type metadata accessor for SyncRecordChangesetProtobuf);
  v9 = *(type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0) + 28);
  sub_265B8D568(a2 + v9, &qword_280037598, &unk_265BA6430);
  sub_265B99550(v8, a2 + v9, type metadata accessor for SyncRecordChangesetProtobuf);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.recordChangeset.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0) + 28);
  sub_265B8D568(v1 + v3, &qword_280037598, &unk_265BA6430);
  sub_265B99550(a1, v1 + v3, type metadata accessor for SyncRecordChangesetProtobuf);
  v4 = type metadata accessor for SyncRecordChangesetProtobuf();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.recordChangeset.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for SyncRecordChangesetProtobuf();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0) + 28);
  *(v5 + 12) = v15;
  sub_265B8D500(v1 + v15, v8, &qword_280037598, &unk_265BA6430);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x277D84F90];
    *v14 = 0;
    v14[1] = v17;
    v14[2] = v17;
    v18 = v14 + *(v9 + 28);
    _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_265B8D568(v8, &qword_280037598, &unk_265BA6430);
    }
  }

  else
  {
    sub_265B99550(v8, v14, type metadata accessor for SyncRecordChangesetProtobuf);
  }

  return sub_265B99B24;
}

uint64_t sub_265B99B4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_265B99BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.hasRecordChangeset.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(v0 + *(v5 + 28), v4, &qword_280037598, &unk_265BA6430);
  v6 = type metadata accessor for SyncRecordChangesetProtobuf();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_265B8D568(v4, &qword_280037598, &unk_265BA6430);
  return v7;
}

Swift::Void __swiftcall SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.clearRecordChangeset()()
{
  v1 = *(type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0) + 28);
  sub_265B8D568(v0 + v1, &qword_280037598, &unk_265BA6430);
  v2 = type metadata accessor for SyncRecordChangesetProtobuf();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_265B99DAC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B99E48(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  v3 = &a1[v2[5]];
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  v4 = v2[6];
  v5 = type metadata accessor for EncryptionKeyProofProtobuf(0);
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = v2[7];
  v7 = type metadata accessor for SyncRecordChangesetProtobuf();
  v8 = *(*(v7 - 8) + 56);

  return v8(&a1[v6], 1, 1, v7);
}

uint64_t SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.recordChangeset.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(v1 + *(v7 + 24), v6, &qword_280037598, &unk_265BA6430);
  v8 = type metadata accessor for SyncRecordChangesetProtobuf();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_265B99550(v6, a1, type metadata accessor for SyncRecordChangesetProtobuf);
  }

  v10 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v10;
  a1[2] = v10;
  v11 = a1 + *(v8 + 28);
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_265B8D568(v6, &qword_280037598, &unk_265BA6430);
  }

  return result;
}

uint64_t sub_265B9A264@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(a1 + *(v8 + 24), v7, &qword_280037598, &unk_265BA6430);
  v9 = type metadata accessor for SyncRecordChangesetProtobuf();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_265B99550(v7, a2, type metadata accessor for SyncRecordChangesetProtobuf);
  }

  v11 = MEMORY[0x277D84F90];
  *a2 = 0;
  a2[1] = v11;
  a2[2] = v11;
  v12 = a2 + *(v9 + 28);
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_265B8D568(v7, &qword_280037598, &unk_265BA6430);
  }

  return result;
}

uint64_t sub_265B9A3D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncRecordChangesetProtobuf();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B99B4C(a1, v8, type metadata accessor for SyncRecordChangesetProtobuf);
  v9 = *(type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0) + 24);
  sub_265B8D568(a2 + v9, &qword_280037598, &unk_265BA6430);
  sub_265B99550(v8, a2 + v9, type metadata accessor for SyncRecordChangesetProtobuf);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.recordChangeset.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0) + 24);
  sub_265B8D568(v1 + v3, &qword_280037598, &unk_265BA6430);
  sub_265B99550(a1, v1 + v3, type metadata accessor for SyncRecordChangesetProtobuf);
  v4 = type metadata accessor for SyncRecordChangesetProtobuf();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.recordChangeset.modify(void *a1))(uint64_t **, char)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for SyncRecordChangesetProtobuf();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0) + 24);
  *(v5 + 12) = v15;
  sub_265B8D500(v1 + v15, v8, &qword_280037598, &unk_265BA6430);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x277D84F90];
    *v14 = 0;
    v14[1] = v17;
    v14[2] = v17;
    v18 = v14 + *(v9 + 28);
    _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_265B8D568(v8, &qword_280037598, &unk_265BA6430);
    }
  }

  else
  {
    sub_265B99550(v8, v14, type metadata accessor for SyncRecordChangesetProtobuf);
  }

  return sub_265B9EAB8;
}

void sub_265B9A7D0(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_265B99B4C(v11, v10, a5);
    sub_265B8D568(v14 + v9, a3, a4);
    sub_265B99550(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_265B99BB4(v11, a5);
  }

  else
  {
    sub_265B8D568(v14 + v9, a3, a4);
    sub_265B99550(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

BOOL sub_265B9A944(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0);
  sub_265B8D500(v4 + *(v13 + 24), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_265B8D568(v12, a1, a2);
  return v15;
}

uint64_t sub_265B9AA7C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_265B8D568(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  v3 = &a1[*(v2 + 20)];
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for SyncRecordChangesetProtobuf();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_265B9AC48@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1(0) + 20);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B9ACAC()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037960);
  __swift_project_value_buffer(v0, qword_280037960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6400;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "etag";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t EncryptionKeyProofProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_265BA5EB8();
    }
  }

  return result;
}

uint64_t EncryptionKeyProofProtobuf.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_265BA5FA8(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_265BA5FA8(), !v1))
    {
      v8 = v0 + *(type metadata accessor for EncryptionKeyProofProtobuf(0) + 24);
      return sub_265BA5DC8();
    }
  }

  return result;
}

uint64_t static EncryptionKeyProofProtobuf.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_265BA60E8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_265BA60E8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for EncryptionKeyProofProtobuf(0) + 24);
  sub_265BA5DE8();
  sub_265B9B2D8(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B9B150(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9B2D8(&qword_280037A58, type metadata accessor for EncryptionKeyProofProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B9B1F0(uint64_t a1)
{
  v2 = sub_265B9B2D8(&qword_2813B5570, type metadata accessor for EncryptionKeyProofProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B9B25C()
{
  sub_265B9B2D8(&qword_2813B5570, type metadata accessor for EncryptionKeyProofProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B9B2D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265B9B320(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_265BA60E8() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_265BA60E8() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  sub_265BA5DE8();
  sub_265B9B2D8(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t SubmitSyncChangesetRequestProtobuf.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0), sub_265B9B2D8(qword_2813B4F38, type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf), result = sub_265BA5FB8(), !v1))
  {
    v3 = v0 + *(type metadata accessor for SubmitSyncChangesetRequestProtobuf(0) + 20);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t sub_265B9B648(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9B2D8(&qword_280037A50, type metadata accessor for SubmitSyncChangesetRequestProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B9B6E8(uint64_t a1)
{
  v2 = sub_265B9B2D8(&qword_280037A08, type metadata accessor for SubmitSyncChangesetRequestProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B9B754()
{
  sub_265B9B2D8(&qword_280037A08, type metadata accessor for SubmitSyncChangesetRequestProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B9B804()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_280037990);
  __swift_project_value_buffer(v0, qword_280037990);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6420;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "zone";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "key";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "recordChangeset";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_265B9BBA0();
        break;
      case 2:
        sub_265B9BAEC();
        break;
      case 1:
        sub_265BA5EB8();
        break;
    }
  }

  return result;
}

uint64_t sub_265B9BAEC()
{
  v0 = *(type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0) + 24);
  type metadata accessor for EncryptionKeyProofProtobuf(0);
  sub_265B9B2D8(&qword_2813B5570, type metadata accessor for EncryptionKeyProofProtobuf);
  return sub_265BA5ED8();
}

uint64_t sub_265B9BBA0()
{
  v0 = *(type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0) + 28);
  type metadata accessor for SyncRecordChangesetProtobuf();
  sub_265B9B2D8(qword_2813B5430, type metadata accessor for SyncRecordChangesetProtobuf);
  return sub_265BA5ED8();
}

uint64_t SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_265BA5FA8(), !v4))
  {
    result = sub_265B9BD18(v3, a1, a2, a3);
    if (!v4)
    {
      sub_265B9BF28(v3, a1, a2, a3);
      v12 = v3 + *(type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0) + 20);
      return sub_265BA5DC8();
    }
  }

  return result;
}

uint64_t sub_265B9BD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037628, &unk_265BA6AD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for EncryptionKeyProofProtobuf(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(a1 + *(v14 + 24), v8, &qword_280037628, &unk_265BA6AD0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_265B8D568(v8, &qword_280037628, &unk_265BA6AD0);
  }

  sub_265B99550(v8, v13, type metadata accessor for EncryptionKeyProofProtobuf);
  sub_265B9B2D8(&qword_2813B5570, type metadata accessor for EncryptionKeyProofProtobuf);
  sub_265BA5FC8();
  return sub_265B99BB4(v13, type metadata accessor for EncryptionKeyProofProtobuf);
}

uint64_t sub_265B9BF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for SyncRecordChangesetProtobuf();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(a1 + *(v14 + 28), v8, &qword_280037598, &unk_265BA6430);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_265B8D568(v8, &qword_280037598, &unk_265BA6430);
  }

  sub_265B99550(v8, v13, type metadata accessor for SyncRecordChangesetProtobuf);
  sub_265B9B2D8(qword_2813B5430, type metadata accessor for SyncRecordChangesetProtobuf);
  sub_265BA5FC8();
  return sub_265B99BB4(v13, type metadata accessor for SyncRecordChangesetProtobuf);
}

uint64_t sub_265B9C184@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[a1[5]];
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  v5 = a1[6];
  v6 = type metadata accessor for EncryptionKeyProofProtobuf(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for SyncRecordChangesetProtobuf();
  v9 = *(*(v8 - 8) + 56);

  return v9(&a2[v7], 1, 1, v8);
}

uint64_t sub_265B9C2A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9B2D8(&qword_280037A48, type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B9C344(uint64_t a1)
{
  v2 = sub_265B9B2D8(qword_2813B4F38, type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B9C3B0()
{
  sub_265B9B2D8(qword_2813B4F38, type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B9C458(uint64_t a1, uint64_t *a2)
{
  v3 = sub_265BA6008();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_265BA6410;
  v8 = v7 + v6 + v4[14];
  *(v7 + v6) = 1;
  *v8 = "zoneChangesets";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x277D21870];
  v10 = sub_265BA5FD8();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  return sub_265BA5FE8();
}

uint64_t sub_265B9C640(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_265B9B2D8(a5, a6);
      sub_265BA5EC8();
    }
  }

  return result;
}

uint64_t SubmitSyncChangesetResponseProtobuf.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0), sub_265B9B2D8(qword_2813B4D60, type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf), result = sub_265BA5FB8(), !v1))
  {
    v3 = v0 + *(type metadata accessor for SubmitSyncChangesetResponseProtobuf(0) + 20);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t sub_265B9C82C(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  sub_265BA5DE8();
  sub_265B9B2D8(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B9C978(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9B2D8(&qword_280037A40, type metadata accessor for SubmitSyncChangesetResponseProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B9CA18(uint64_t a1)
{
  v2 = sub_265B9B2D8(&qword_280037A20, type metadata accessor for SubmitSyncChangesetResponseProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B9CA84()
{
  sub_265B9B2D8(&qword_280037A20, type metadata accessor for SubmitSyncChangesetResponseProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B9CB18(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_265BA5DE8();
  sub_265B9B2D8(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B9CBE0()
{
  v0 = sub_265BA6008();
  __swift_allocate_value_buffer(v0, qword_2800379C0);
  __swift_project_value_buffer(v0, qword_2800379C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_265BA6400;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "zone";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_265BA5FD8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "recordChangeset";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_265BA5FE8();
}

uint64_t SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_265BA5EB8();
    }

    else if (result == 2)
    {
      sub_265B9CE5C();
    }
  }

  return result;
}

uint64_t sub_265B9CE5C()
{
  v0 = *(type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0) + 24);
  type metadata accessor for SyncRecordChangesetProtobuf();
  sub_265B9B2D8(qword_2813B5430, type metadata accessor for SyncRecordChangesetProtobuf);
  return sub_265BA5ED8();
}

uint64_t SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_265BA5FA8(), !v4))
  {
    result = sub_265B9CFBC(v3, a1, a2, a3);
    if (!v4)
    {
      v12 = v3 + *(type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0) + 20);
      return sub_265BA5DC8();
    }
  }

  return result;
}

uint64_t sub_265B9CFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for SyncRecordChangesetProtobuf();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  sub_265B8D500(a1 + *(v14 + 24), v8, &qword_280037598, &unk_265BA6430);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_265B8D568(v8, &qword_280037598, &unk_265BA6430);
  }

  sub_265B99550(v8, v13, type metadata accessor for SyncRecordChangesetProtobuf);
  sub_265B9B2D8(qword_2813B5430, type metadata accessor for SyncRecordChangesetProtobuf);
  sub_265BA5FC8();
  return sub_265B99BB4(v13, type metadata accessor for SyncRecordChangesetProtobuf);
}

uint64_t sub_265B9D218(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_265BA6168();
  a1(0);
  sub_265B9B2D8(a2, a3);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B9D2A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[*(a1 + 20)];
  _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for SyncRecordChangesetProtobuf();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_265B9D374(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9B2D8(&qword_280037A38, type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B9D414(uint64_t a1)
{
  v2 = sub_265B9B2D8(qword_2813B4D60, type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B9D480()
{
  sub_265B9B2D8(qword_2813B4D60, type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf);

  return sub_265BA5F08();
}

uint64_t _s21SeymourServerProtocol35SubmitSyncChangesetResponseProtobufV04ZonefH0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for SyncRecordChangesetProtobuf();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037620, &qword_265BA6AC8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_265BA60E8() & 1) == 0)
  {
    goto LABEL_18;
  }

  v29 = v8;
  v30 = type metadata accessor for SubmitSyncChangesetResponseProtobuf.ZoneChangesetProtobuf(0);
  v17 = *(v30 + 24);
  v18 = *(v13 + 48);
  sub_265B8D500(a1 + v17, v16, &qword_280037598, &unk_265BA6430);
  sub_265B8D500(a2 + v17, &v16[v18], &qword_280037598, &unk_265BA6430);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_265B8D500(v16, v12, &qword_280037598, &unk_265BA6430);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v24 = &v16[v18];
      v25 = v29;
      sub_265B99550(v24, v29, type metadata accessor for SyncRecordChangesetProtobuf);
      if (*v12 == *v25 && (sub_265B88EA8(*(v12 + 1), *(v25 + 8)) & 1) != 0 && (sub_265B88EA8(*(v12 + 2), *(v25 + 16)) & 1) != 0)
      {
        v26 = *(v4 + 28);
        sub_265BA5DE8();
        sub_265B9B2D8(&qword_2800375A0, MEMORY[0x277D216C8]);
        v27 = sub_265BA6048();
        sub_265B99BB4(v25, type metadata accessor for SyncRecordChangesetProtobuf);
        sub_265B99BB4(v12, type metadata accessor for SyncRecordChangesetProtobuf);
        sub_265B8D568(v16, &qword_280037598, &unk_265BA6430);
        if (v27)
        {
          goto LABEL_7;
        }

LABEL_18:
        v21 = 0;
        return v21 & 1;
      }

      sub_265B99BB4(v25, type metadata accessor for SyncRecordChangesetProtobuf);
      sub_265B99BB4(v12, type metadata accessor for SyncRecordChangesetProtobuf);
      v22 = &qword_280037598;
      v23 = &unk_265BA6430;
LABEL_17:
      sub_265B8D568(v16, v22, v23);
      goto LABEL_18;
    }

    sub_265B99BB4(v12, type metadata accessor for SyncRecordChangesetProtobuf);
LABEL_10:
    v22 = &qword_280037620;
    v23 = &qword_265BA6AC8;
    goto LABEL_17;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_265B8D568(v16, &qword_280037598, &unk_265BA6430);
LABEL_7:
  v20 = *(v30 + 20);
  sub_265BA5DE8();
  sub_265B9B2D8(&qword_2800375A0, MEMORY[0x277D216C8]);
  v21 = sub_265BA6048();
  return v21 & 1;
}

uint64_t _s21SeymourServerProtocol34SubmitSyncChangesetRequestProtobufV04ZonefH0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = type metadata accessor for SyncRecordChangesetProtobuf();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037598, &unk_265BA6430);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v53 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037620, &qword_265BA6AC8);
  v11 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v13 = &v53 - v12;
  v14 = type metadata accessor for EncryptionKeyProofProtobuf(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037628, &unk_265BA6AD0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v53 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037630, &unk_265BA87D0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v53 - v25;
  v27 = *a1;
  v28 = a1[1];
  v29 = *a2;
  v30 = a2[1];
  v60 = a2;
  if ((v27 != v29 || v28 != v30) && (sub_265BA60E8() & 1) == 0)
  {
    goto LABEL_34;
  }

  v53 = v7;
  v55 = v13;
  v54 = type metadata accessor for SubmitSyncChangesetRequestProtobuf.ZoneChangesetProtobuf(0);
  v31 = *(v54 + 24);
  v32 = *(v23 + 48);
  sub_265B8D500(a1 + v31, v26, &qword_280037628, &unk_265BA6AD0);
  sub_265B8D500(v60 + v31, &v26[v32], &qword_280037628, &unk_265BA6AD0);
  v33 = *(v15 + 48);
  if (v33(v26, 1, v14) == 1)
  {
    if (v33(&v26[v32], 1, v14) == 1)
    {
      sub_265B8D568(v26, &qword_280037628, &unk_265BA6AD0);
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  sub_265B8D500(v26, v22, &qword_280037628, &unk_265BA6AD0);
  if (v33(&v26[v32], 1, v14) == 1)
  {
    sub_265B99BB4(v22, type metadata accessor for EncryptionKeyProofProtobuf);
LABEL_9:
    v34 = &qword_280037630;
    v35 = &unk_265BA87D0;
LABEL_10:
    v36 = v26;
LABEL_33:
    sub_265B8D568(v36, v34, v35);
    goto LABEL_34;
  }

  sub_265B99550(&v26[v32], v18, type metadata accessor for EncryptionKeyProofProtobuf);
  if ((*v22 != *v18 || v22[1] != v18[1]) && (sub_265BA60E8() & 1) == 0 || (v22[2] != v18[2] || v22[3] != v18[3]) && (sub_265BA60E8() & 1) == 0)
  {
    sub_265B99BB4(v18, type metadata accessor for EncryptionKeyProofProtobuf);
    sub_265B99BB4(v22, type metadata accessor for EncryptionKeyProofProtobuf);
    v34 = &qword_280037628;
    v35 = &unk_265BA6AD0;
    goto LABEL_10;
  }

  v37 = *(v14 + 24);
  sub_265BA5DE8();
  sub_265B9B2D8(&qword_2800375A0, MEMORY[0x277D216C8]);
  v38 = sub_265BA6048();
  sub_265B99BB4(v18, type metadata accessor for EncryptionKeyProofProtobuf);
  sub_265B99BB4(v22, type metadata accessor for EncryptionKeyProofProtobuf);
  sub_265B8D568(v26, &qword_280037628, &unk_265BA6AD0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_18:
  v40 = v54;
  v39 = v55;
  v41 = *(v54 + 28);
  v42 = *(v57 + 48);
  sub_265B8D500(a1 + v41, v55, &qword_280037598, &unk_265BA6430);
  sub_265B8D500(v60 + v41, v39 + v42, &qword_280037598, &unk_265BA6430);
  v43 = v59;
  v44 = *(v58 + 48);
  if (v44(v39, 1, v59) != 1)
  {
    v47 = v56;
    sub_265B8D500(v39, v56, &qword_280037598, &unk_265BA6430);
    if (v44(v39 + v42, 1, v43) == 1)
    {
      sub_265B99BB4(v47, type metadata accessor for SyncRecordChangesetProtobuf);
      goto LABEL_24;
    }

    v48 = v39 + v42;
    v49 = v53;
    sub_265B99550(v48, v53, type metadata accessor for SyncRecordChangesetProtobuf);
    if (*v47 != *v49 || (sub_265B88EA8(*(v47 + 8), *(v49 + 8)) & 1) == 0 || (sub_265B88EA8(*(v47 + 16), *(v49 + 16)) & 1) == 0)
    {
      sub_265B99BB4(v49, type metadata accessor for SyncRecordChangesetProtobuf);
      sub_265B99BB4(v47, type metadata accessor for SyncRecordChangesetProtobuf);
      v34 = &qword_280037598;
      v35 = &unk_265BA6430;
      goto LABEL_32;
    }

    v50 = *(v43 + 28);
    sub_265BA5DE8();
    sub_265B9B2D8(&qword_2800375A0, MEMORY[0x277D216C8]);
    v51 = sub_265BA6048();
    sub_265B99BB4(v49, type metadata accessor for SyncRecordChangesetProtobuf);
    sub_265B99BB4(v47, type metadata accessor for SyncRecordChangesetProtobuf);
    sub_265B8D568(v39, &qword_280037598, &unk_265BA6430);
    if (v51)
    {
      goto LABEL_21;
    }

LABEL_34:
    v46 = 0;
    return v46 & 1;
  }

  if (v44(v39 + v42, 1, v43) != 1)
  {
LABEL_24:
    v34 = &qword_280037620;
    v35 = &qword_265BA6AC8;
LABEL_32:
    v36 = v39;
    goto LABEL_33;
  }

  sub_265B8D568(v39, &qword_280037598, &unk_265BA6430);
LABEL_21:
  v45 = *(v40 + 20);
  sub_265BA5DE8();
  sub_265B9B2D8(&qword_2800375A0, MEMORY[0x277D216C8]);
  v46 = sub_265BA6048();
  return v46 & 1;
}

void sub_265B9E75C()
{
  sub_265BA5DE8();
  if (v0 <= 0x3F)
  {
    sub_265B9E868(319, qword_2813B5520, type metadata accessor for EncryptionKeyProofProtobuf, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_265B9E868(319, qword_2813B53E0, type metadata accessor for SyncRecordChangesetProtobuf, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_265B9E868(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_265B9E914(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_265B9E868(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    sub_265BA5DE8();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_265B9E9DC()
{
  sub_265BA5DE8();
  if (v0 <= 0x3F)
  {
    sub_265B9E868(319, qword_2813B53E0, type metadata accessor for SyncRecordChangesetProtobuf, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t PingProtobuf.ping.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PingProtobuf.ping.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_265B9EC2C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_265B9ECE8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_265BA5DE8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_265B9EDC8@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1(0) + 20);
  return _s21SeymourServerProtocol27ExecuteTasksRequestProtobufVACycfC_0();
}

uint64_t sub_265B9EF40(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9F0C8(&qword_280037AF8, type metadata accessor for PingProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B9EFE0(uint64_t a1)
{
  v2 = sub_265B9F0C8(&qword_280037AA8, type metadata accessor for PingProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B9F04C()
{
  sub_265B9F0C8(&qword_280037AA8, type metadata accessor for PingProtobuf);

  return sub_265BA5F08();
}

uint64_t sub_265B9F0C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265B9F144(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_265BA6008();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037648, &unk_265BA6AE0);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280037650, &qword_265BA6FF0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_265BA6410;
  v10 = v9 + v8 + v6[14];
  *(v9 + v8) = 1;
  *v10 = a3;
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21870];
  v12 = sub_265BA5FD8();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  return sub_265BA5FE8();
}

uint64_t sub_265B9F2D4()
{
  while (1)
  {
    result = sub_265BA5E38();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_265BA5EB8();
    }
  }

  return result;
}

uint64_t sub_265B9F370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_265BA5FA8(), !v5))
  {
    v11 = v4 + *(a4(0) + 20);
    return sub_265BA5DC8();
  }

  return result;
}

uint64_t sub_265B9F42C(void *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_265BA60E8() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3(0) + 20);
  sub_265BA5DE8();
  sub_265B9F0C8(&qword_2800375A0, MEMORY[0x277D216C8]);
  return sub_265BA6048() & 1;
}

uint64_t sub_265B9F53C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_265BA6168();
  a1(0);
  sub_265B9F0C8(a2, a3);
  sub_265BA6038();
  return sub_265BA6188();
}

uint64_t sub_265B9F5FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_265B9F0C8(&qword_280037AF0, type metadata accessor for PongProtobuf);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_265B9F69C(uint64_t a1)
{
  v2 = sub_265B9F0C8(&qword_280037AC0, type metadata accessor for PongProtobuf);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_265B9F708()
{
  sub_265B9F0C8(&qword_280037AC0, type metadata accessor for PongProtobuf);

  return sub_265BA5F08();
}