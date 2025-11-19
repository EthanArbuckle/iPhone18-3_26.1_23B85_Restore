uint64_t sub_22FDF5264(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FetchFaceRequestProto.day.getter()
{
  v1 = (v0 + *(type metadata accessor for FetchFaceRequestProto(0) + 24));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t FetchFaceRequestProto.day.setter(int a1)
{
  result = type metadata accessor for FetchFaceRequestProto(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t FetchFaceRequestProto.id.getter()
{
  v1 = *v0;
  sub_22FDB4380(*v0, *(v0 + 8));
  return v1;
}

uint64_t FetchFaceRequestProto.id.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FD917D4(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t (*FetchFaceRequestProto.day.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for FetchFaceRequestProto(0) + 24);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_22FDF545C;
}

uint64_t sub_22FDF545C(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall FetchFaceRequestProto.clearDay()()
{
  v1 = v0 + *(type metadata accessor for FetchFaceRequestProto(0) + 24);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t FetchFaceRequestProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FetchFaceRequestProto(0) + 20);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FetchFaceRequestProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchFaceRequestProto(0) + 20);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FetchFaceRequestProto.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_22FE4B510;
  FaceRequestProto = type metadata accessor for FetchFaceRequestProto(0);
  v3 = a1 + *(FaceRequestProto + 20);
  result = sub_22FE42A44();
  v5 = a1 + *(FaceRequestProto + 24);
  *v5 = 0;
  v5[4] = 1;
  return result;
}

uint64_t FetchByDayResponseProto.photos.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t FetchByDayResponseProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FetchByDayResponseProto(0) + 24);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FetchByDayResponseProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FetchByDayResponseProto(0) + 24);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FetchByDayResponseProto.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for FetchByDayResponseProto(0) + 24);
  return sub_22FE42A44();
}

uint64_t sub_22FDF5884()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE48D8);
  __swift_project_value_buffer(v0, qword_27DAE48D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FE49F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FE42CE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "day";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_22FE42CF4();
}

uint64_t FetchFaceRequestProto.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22FE42AB4();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FE42B04();
    }

    else if (result == 2)
    {
      v3 = *(type metadata accessor for FetchFaceRequestProto(0) + 24);
      sub_22FE42B74();
    }
  }

  return result;
}

uint64_t FetchFaceRequestProto.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_22FE42C54();
    if (v1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
    goto LABEL_8;
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = sub_22FDF5BEC(v0);
  if (!v1)
  {
    v8 = v0 + *(type metadata accessor for FetchFaceRequestProto(0) + 20);
    return sub_22FE42A34();
  }

  return result;
}

uint64_t sub_22FDF5BEC(uint64_t a1)
{
  result = type metadata accessor for FetchFaceRequestProto(0);
  v3 = (a1 + *(result + 24));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22FE42CA4();
  }

  return result;
}

uint64_t sub_22FDF5CB0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = xmmword_22FE4B510;
  v4 = a2 + *(a1 + 20);
  result = sub_22FE42A44();
  v6 = a2 + *(a1 + 24);
  *v6 = 0;
  v6[4] = 1;
  return result;
}

uint64_t sub_22FDF5D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDF6808(&qword_27DAE4968, type metadata accessor for FetchFaceRequestProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDF5DEC(uint64_t a1)
{
  v2 = sub_22FDF6808(&qword_27DAE4310, type metadata accessor for FetchFaceRequestProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDF5E58()
{
  sub_22FDF6808(&qword_27DAE4310, type metadata accessor for FetchFaceRequestProto);

  return sub_22FE42C04();
}

uint64_t sub_22FDF5EF4()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE48F0);
  __swift_project_value_buffer(v0, qword_27DAE48F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FE49F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "day";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FE42CE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "photos";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_22FE42CF4();
}

uint64_t FetchByDayResponseProto.decodeMessage<A>(decoder:)()
{
  result = sub_22FE42AB4();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22FE42B84();
      }

      else if (result == 2)
      {
        type metadata accessor for StoredPhotoProto(0);
        sub_22FDF6808(&qword_27DAE4338, type metadata accessor for StoredPhotoProto);
        sub_22FE42BA4();
      }

      result = sub_22FE42AB4();
    }
  }

  return result;
}

uint64_t FetchByDayResponseProto.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_22FE42CA4(), !v1))
  {
    if (!*(*(v0 + 8) + 16) || (type metadata accessor for StoredPhotoProto(0), sub_22FDF6808(&qword_27DAE4338, type metadata accessor for StoredPhotoProto), result = sub_22FE42CC4(), !v1))
    {
      v3 = v0 + *(type metadata accessor for FetchByDayResponseProto(0) + 24);
      return sub_22FE42A34();
    }
  }

  return result;
}

uint64_t static FetchByDayResponseProto.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (sub_22FDB655C(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for FetchByDayResponseProto(0) + 24);
  sub_22FE42A54();
  sub_22FDF6808(&qword_27DAE44A0, MEMORY[0x277D216C8]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FDF63E4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22FE43DB4();
  a1(0);
  sub_22FDF6808(a2, a3);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDF646C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 24);
  return sub_22FE42A44();
}

uint64_t sub_22FDF64E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDF6808(&qword_27DAE4960, type metadata accessor for FetchByDayResponseProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDF6588(uint64_t a1)
{
  v2 = sub_22FDF6808(&qword_27DAE4318, type metadata accessor for FetchByDayResponseProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDF65F4()
{
  sub_22FDF6808(&qword_27DAE4318, type metadata accessor for FetchByDayResponseProto);

  return sub_22FE42C04();
}

uint64_t sub_22FDF6670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_22FDB655C(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 24);
  sub_22FE42A54();
  sub_22FDF6808(&qword_27DAE44A0, MEMORY[0x277D216C8]);
  return sub_22FE43024() & 1;
}

uint64_t _s10PhotosFace05FetchB12RequestProtoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_22FDF2C1C(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  FaceRequestProto = type metadata accessor for FetchFaceRequestProto(0);
  v5 = *(FaceRequestProto + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v11 = *(FaceRequestProto + 20);
  sub_22FE42A54();
  sub_22FDF6808(&qword_27DAE44A0, MEMORY[0x277D216C8]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FDF6808(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22FDF6AEC()
{
  if (!qword_27DAE4948)
  {
    v0 = sub_22FE43744();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAE4948);
    }
  }
}

uint64_t sub_22FDF6B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a5(319);
  if (v8 <= 0x3F)
  {
    result = a6(319);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t GeneratePhotoRequestProto.identifiers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_22FDF6D6C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FDF6E28(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_22FDF6F08@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1(0) + 20);
  return sub_22FE42A44();
}

uint64_t GeneratePhotoRequestProto.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22FE42AB4();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FE42AF4();
    }
  }

  return result;
}

uint64_t GeneratePhotoRequestProto.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_22FE42C44(), !v1))
  {
    v3 = v0 + *(type metadata accessor for GeneratePhotoRequestProto(0) + 20);
    return sub_22FE42A34();
  }

  return result;
}

uint64_t sub_22FDF7160(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDF72E8(&qword_27DAE49F8, type metadata accessor for GeneratePhotoRequestProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDF7200(uint64_t a1)
{
  v2 = sub_22FDF72E8(&qword_27DAE4340, type metadata accessor for GeneratePhotoRequestProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDF726C()
{
  sub_22FDF72E8(&qword_27DAE4340, type metadata accessor for GeneratePhotoRequestProto);

  return sub_22FE42C04();
}

uint64_t sub_22FDF72E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FDF737C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22FE42D04();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22FE49F60;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x277D21870];
  v14 = sub_22FE42CE4();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_22FE42CF4();
}

uint64_t GeneratePhotoResponseProto.decodeMessage<A>(decoder:)()
{
  result = sub_22FE42AB4();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for StoredPhotoProto(0);
        sub_22FDF72E8(&qword_27DAE4338, type metadata accessor for StoredPhotoProto);
        sub_22FE42BA4();
      }

      result = sub_22FE42AB4();
    }
  }

  return result;
}

uint64_t GeneratePhotoResponseProto.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for StoredPhotoProto(0), sub_22FDF72E8(&qword_27DAE4338, type metadata accessor for StoredPhotoProto), result = sub_22FE42CC4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for GeneratePhotoResponseProto(0) + 20);
    return sub_22FE42A34();
  }

  return result;
}

uint64_t sub_22FDF76FC(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  sub_22FE42A54();
  sub_22FDF72E8(&qword_27DAE44A0, MEMORY[0x277D216C8]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FDF77FC(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22FE43DB4();
  a1(0);
  sub_22FDF72E8(a2, a3);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDF78D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDF72E8(&qword_27DAE49F0, type metadata accessor for GeneratePhotoResponseProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDF7970(uint64_t a1)
{
  v2 = sub_22FDF72E8(&qword_27DAE4348, type metadata accessor for GeneratePhotoResponseProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDF79DC()
{
  sub_22FDF72E8(&qword_27DAE4348, type metadata accessor for GeneratePhotoResponseProto);

  return sub_22FE42C04();
}

uint64_t sub_22FDF7CB0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_22FE42A54();
  sub_22FDF72E8(&qword_27DAE44A0, MEMORY[0x277D216C8]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FDF7DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = sub_22FE42A54();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t MessageProto.messageCode.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageProto(0) + 36));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t MessageProto.requestIndex.getter()
{
  v1 = (v0 + *(type metadata accessor for MessageProto(0) + 40));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t MessageProto.messageCode.setter(int a1)
{
  result = type metadata accessor for MessageProto(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t MessageProto.requestIndex.setter(int a1)
{
  result = type metadata accessor for MessageProto(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

unint64_t MessageOperationProto.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FDF7FD4()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_22FE43DB4();
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDF8040(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDF91F0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_22FDF808C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_22FE43DB4();
  sub_22FE42FE4();
  return sub_22FE43E04();
}

void MessageProto.operation.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t MessageProto.operation.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t (*MessageProto.messageCode.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for MessageProto(0) + 36);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_22FDF545C;
}

Swift::Void __swiftcall MessageProto.clearMessageCode()()
{
  v1 = v0 + *(type metadata accessor for MessageProto(0) + 36);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t (*MessageProto.requestIndex.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for MessageProto(0) + 40);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_22FDFA6CC;
}

Swift::Void __swiftcall MessageProto.clearRequestIndex()()
{
  v1 = v0 + *(type metadata accessor for MessageProto(0) + 40);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t MessageProto.messageContent.getter()
{
  v1 = *(v0 + 16);
  sub_22FDB4380(v1, *(v0 + 24));
  return v1;
}

uint64_t MessageProto.messageContent.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FD917D4(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MessageProto.complete.setter(char a1)
{
  result = type metadata accessor for MessageProto(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*MessageProto.complete.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for MessageProto(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_22FDF846C;
}

uint64_t MessageProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MessageProto(0) + 32);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MessageProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MessageProto(0) + 32);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MessageProto.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_22FE4B510;
  *(a1 + 32) = 0;
  v2 = type metadata accessor for MessageProto(0);
  v3 = a1 + v2[8];
  result = sub_22FE42A44();
  v5 = a1 + v2[9];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a1 + v2[10];
  *v6 = 0;
  *(v6 + 4) = 1;
  *(a1 + v2[11]) = 2;
  return result;
}

uint64_t FileHeaderProto.filename.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FileHeaderProto.filename.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FileHeaderProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FileHeaderProto(0) + 20);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FileHeaderProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FileHeaderProto(0) + 20);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FileHeaderProto.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for FileHeaderProto(0) + 20);
  return sub_22FE42A44();
}

uint64_t sub_22FDF88C0()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4A00);
  __swift_project_value_buffer(v0, qword_27DAE4A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FE49F90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "unspecified";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FE42CE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "event";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "request";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "response";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "error";
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v9();
  return sub_22FE42CF4();
}

uint64_t sub_22FDF8BB8()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4A18);
  __swift_project_value_buffer(v0, qword_27DAE4A18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22FE4A1C0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "operation";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22FE42CE4();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "messageCode";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "requestIndex";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "messageContent";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "fileCount";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "version";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "complete";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  return sub_22FE42CF4();
}

uint64_t MessageProto.decodeMessage<A>(decoder:)()
{
  result = sub_22FE42AB4();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            sub_22FDF91F0();
            sub_22FE42AE4();
            goto LABEL_5;
          case 2:
            v3 = v0;
            v6 = *(type metadata accessor for MessageProto(0) + 36);
            break;
          case 3:
            v3 = v0;
            v4 = *(type metadata accessor for MessageProto(0) + 40);
            break;
          default:
            goto LABEL_5;
        }

        v0 = v3;
        sub_22FE42B74();
      }

      else
      {
        if (result <= 5)
        {
          if (result == 4)
          {
            sub_22FE42B04();
            goto LABEL_5;
          }

LABEL_19:
          sub_22FE42B84();
          goto LABEL_5;
        }

        if (result == 6)
        {
          goto LABEL_19;
        }

        if (result == 7)
        {
          v5 = *(type metadata accessor for MessageProto(0) + 44);
          sub_22FE42AC4();
        }
      }

LABEL_5:
      result = sub_22FE42AB4();
    }
  }

  return result;
}

uint64_t MessageProto.traverse<A>(visitor:)()
{
  if (*v0)
  {
    v9 = *v0;
    v10 = *(v0 + 8);
    sub_22FDF91F0();
    result = sub_22FE42C34();
    if (v1)
    {
      return result;
    }
  }

  result = sub_22FDF9244(v0);
  if (v1)
  {
    return result;
  }

  sub_22FDF92BC(v0);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_15;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
  }

  else
  {
    if (!v5)
    {
      if ((v4 & 0xFF000000000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v6 = v3;
    v7 = v3 >> 32;
  }

  if (v6 != v7)
  {
LABEL_14:
    sub_22FE42C54();
  }

LABEL_15:
  if (*(v0 + 32))
  {
    sub_22FE42CA4();
  }

  if (*(v0 + 36))
  {
    sub_22FE42CA4();
  }

  sub_22FDF9334(v0);
  v8 = v0 + *(type metadata accessor for MessageProto(0) + 32);
  return sub_22FE42A34();
}

unint64_t sub_22FDF91F0()
{
  result = qword_27DAE4A48;
  if (!qword_27DAE4A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4A48);
  }

  return result;
}

uint64_t sub_22FDF9244(uint64_t a1)
{
  result = type metadata accessor for MessageProto(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22FE42CA4();
  }

  return result;
}

uint64_t sub_22FDF92BC(uint64_t a1)
{
  result = type metadata accessor for MessageProto(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22FE42CA4();
  }

  return result;
}

uint64_t sub_22FDF9334(uint64_t a1)
{
  result = type metadata accessor for MessageProto(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return sub_22FE42C24();
  }

  return result;
}

uint64_t sub_22FDF93F8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_22FE4B510;
  *(a2 + 32) = 0;
  v4 = a2 + a1[8];
  result = sub_22FE42A44();
  v6 = a1[10];
  v7 = a2 + a1[9];
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a2 + v6;
  *v8 = 0;
  *(v8 + 4) = 1;
  *(a2 + a1[11]) = 2;
  return result;
}

uint64_t sub_22FDF9494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FDF9508(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_22FDF957C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_22FDF95D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDFA040(&qword_27DAE4AE8, type metadata accessor for MessageProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDF9670(uint64_t a1)
{
  v2 = sub_22FDFA040(&qword_27DAE4A90, type metadata accessor for MessageProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDF96DC()
{
  sub_22FDFA040(&qword_27DAE4A90, type metadata accessor for MessageProto);

  return sub_22FE42C04();
}

uint64_t sub_22FDF9780()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4A30);
  __swift_project_value_buffer(v0, qword_27DAE4A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FE49F60;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "filename";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FE42CE4();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_22FE42CF4();
}

uint64_t FileHeaderProto.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22FE42AB4();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22FE42B64();
    }
  }

  return result;
}

uint64_t FileHeaderProto.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_22FE42C94(), !v1))
  {
    v6 = v0 + *(type metadata accessor for FileHeaderProto(0) + 20);
    return sub_22FE42A34();
  }

  return result;
}

uint64_t static FileHeaderProto.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_22FE43CB4() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for FileHeaderProto(0) + 20);
  sub_22FE42A54();
  sub_22FDFA040(&qword_27DAE44A0, MEMORY[0x277D216C8]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FDF9B1C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22FE43DB4();
  a1(0);
  sub_22FDFA040(a2, a3);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDF9BA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1 + 20);
  return sub_22FE42A44();
}

uint64_t sub_22FDF9C20(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDFA040(&qword_27DAE4AE0, type metadata accessor for FileHeaderProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDF9CC0(uint64_t a1)
{
  v2 = sub_22FDFA040(&qword_27DAE4AA8, type metadata accessor for FileHeaderProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDF9D2C()
{
  sub_22FDFA040(&qword_27DAE4AA8, type metadata accessor for FileHeaderProto);

  return sub_22FE42C04();
}

uint64_t sub_22FDF9DA8(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22FE43CB4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_22FE42A54();
  sub_22FDFA040(&qword_27DAE44A0, MEMORY[0x277D216C8]);
  return sub_22FE43024() & 1;
}

uint64_t _s10PhotosFace12MessageProtoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5 <= 1)
    {
      if (v5)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4)
      {
        return 0;
      }
    }

    else if (v5 == 2)
    {
      if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v5 == 3)
    {
      if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = type metadata accessor for MessageProto(0);
  v7 = *(v6 + 36);
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 4);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 4);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = *(v6 + 40);
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 4);
  v15 = (a2 + v12);
  v16 = *(a2 + v12 + 4);
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (*v13 != *v15)
    {
      LOBYTE(v16) = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  v17 = v6;
  if ((sub_22FDF2C1C(a1[2], a1[3], *(a2 + 16), *(a2 + 24)) & 1) == 0 || *(a1 + 8) != *(a2 + 32) || *(a1 + 9) != *(a2 + 36))
  {
    return 0;
  }

  v18 = *(v17 + 44);
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 2)
  {
    if (v20 == 2)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (v20 == 2 || ((v19 ^ v20) & 1) != 0)
  {
    return 0;
  }

LABEL_37:
  v22 = *(v17 + 32);
  sub_22FE42A54();
  sub_22FDFA040(&qword_27DAE44A0, MEMORY[0x277D216C8]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FDFA040(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22FDFA08C()
{
  result = qword_27DAE4A60;
  if (!qword_27DAE4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4A60);
  }

  return result;
}

unint64_t sub_22FDFA0E4()
{
  result = qword_27DAE4A68;
  if (!qword_27DAE4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4A68);
  }

  return result;
}

unint64_t sub_22FDFA13C()
{
  result = qword_27DAE4A70;
  if (!qword_27DAE4A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE4A78, &qword_22FE4D428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4A70);
  }

  return result;
}

unint64_t sub_22FDFA1A4()
{
  result = qword_27DAE4A80;
  if (!qword_27DAE4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4A80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoredPhotoLayoutImageLocationTypeProto(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for StoredPhotoLayoutImageLocationTypeProto(uint64_t result, int a2, int a3)
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

uint64_t sub_22FDFA488(uint64_t a1)
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

uint64_t sub_22FDFA4A4(uint64_t result, int a2)
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

void sub_22FDFA4FC()
{
  sub_22FE42A54();
  if (v0 <= 0x3F)
  {
    sub_22FDFA5DC(319, &qword_27DAE4948);
    if (v1 <= 0x3F)
    {
      sub_22FDFA5DC(319, &qword_27DAE4AC8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22FDFA5DC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22FE43744();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_22FDFA650()
{
  result = sub_22FE42A54();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ShuffleIDProto.id.getter()
{
  v1 = *v0;
  sub_22FDB4380(*v0, *(v0 + 8));
  return v1;
}

uint64_t ShuffleIDProto.id.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FD917D4(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ShuffleIDProto.people.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t ShuffleIDProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShuffleIDProto() + 36);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ShuffleIDProto()
{
  result = qword_27DAE4B20;
  if (!qword_27DAE4B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShuffleIDProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShuffleIDProto() + 36);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShuffleIDProto.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_22FE4B510;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  *(a1 + 26) = 0;
  v1 = a1 + *(type metadata accessor for ShuffleIDProto() + 36);
  return sub_22FE42A44();
}

uint64_t sub_22FDFAA44()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4AF0);
  __swift_project_value_buffer(v0, qword_27DAE4AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_22FE49F90;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FE42CE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "people";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "pets";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "nature";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "cityscape";
  *(v14 + 8) = 9;
  *(v14 + 16) = 2;
  v8();
  return sub_22FE42CF4();
}

uint64_t static ShuffleIDProto._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAE2A80 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D04();
  v3 = __swift_project_value_buffer(v2, qword_27DAE4AF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ShuffleIDProto.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22FE42AB4();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_22FE42B04();
      }

      else if (result == 2)
      {
        sub_22FE42B24();
      }
    }

    else if (result == 3 || result == 4 || result == 5)
    {
      sub_22FE42AD4();
    }
  }

  return result;
}

uint64_t ShuffleIDProto.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_22FE42C54();
    if (v1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
    goto LABEL_8;
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(*(v0 + 16) + 16) || (result = sub_22FE42C74(), !v1))
  {
    if (*(v0 + 24) != 1 || (result = sub_22FE42C24(), !v1))
    {
      if (*(v0 + 25) != 1 || (result = sub_22FE42C24(), !v1))
      {
        if (*(v0 + 26) != 1 || (result = sub_22FE42C24(), !v1))
        {
          v8 = v0 + *(type metadata accessor for ShuffleIDProto() + 36);
          return sub_22FE42A34();
        }
      }
    }
  }

  return result;
}

uint64_t ShuffleIDProto.hashValue.getter()
{
  sub_22FE43DB4();
  type metadata accessor for ShuffleIDProto();
  sub_22FDFB704(&qword_27DAE4B08, type metadata accessor for ShuffleIDProto);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FDFB02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_22FE4B510;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  *(a2 + 26) = 0;
  v2 = a2 + *(a1 + 36);
  return sub_22FE42A44();
}

uint64_t sub_22FDFB090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22FDFB104(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_22FE42A54();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_22FDFB178(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_22FDFB1CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FDFB704(&qword_27DAE4B38, type metadata accessor for ShuffleIDProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FDFB248@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAE2A80 != -1)
  {
    swift_once();
  }

  v2 = sub_22FE42D04();
  v3 = __swift_project_value_buffer(v2, qword_27DAE4AF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22FDFB2F0(uint64_t a1)
{
  v2 = sub_22FDFB704(&qword_27DAE4500, type metadata accessor for ShuffleIDProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FDFB35C()
{
  sub_22FDFB704(&qword_27DAE4500, type metadata accessor for ShuffleIDProto);

  return sub_22FE42C04();
}

uint64_t _s10PhotosFace14ShuffleIDProtoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_22FDF2C1C(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_22FDB6FC0(*(a1 + 16), *(a2 + 16)) & 1) == 0 || *(a1 + 24) != *(a2 + 24) || *(a1 + 25) != *(a2 + 25) || *(a1 + 26) != *(a2 + 26))
  {
    return 0;
  }

  v5 = *(type metadata accessor for ShuffleIDProto() + 36);
  sub_22FE42A54();
  sub_22FDFB704(&qword_27DAE44A0, MEMORY[0x277D216C8]);
  return sub_22FE43024() & 1;
}

void sub_22FDFB614()
{
  sub_22FDFB6B4();
  if (v0 <= 0x3F)
  {
    sub_22FE42A54();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FDFB6B4()
{
  if (!qword_27DAE4B30)
  {
    v0 = sub_22FE43354();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAE4B30);
    }
  }
}

uint64_t sub_22FDFB704(unint64_t *a1, void (*a2)(uint64_t))
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

double StoredPhotoProto.creationDate.getter()
{
  v1 = v0 + *(type metadata accessor for StoredPhotoProto(0) + 44);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t StoredPhotoProto.title.getter()
{
  v1 = (v0 + *(type metadata accessor for StoredPhotoProto(0) + 48));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t StoredPhotoProto.subtitle.getter()
{
  v1 = (v0 + *(type metadata accessor for StoredPhotoProto(0) + 52));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t StoredPhotoProto.accessibilityDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for StoredPhotoProto(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t StoredPhotoProto.accessibilityDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StoredPhotoProto(0) + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StoredPhotoProto.creationDate.setter(double a1)
{
  result = type metadata accessor for StoredPhotoProto(0);
  v4 = v1 + *(result + 44);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t StoredPhotoProto.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StoredPhotoProto(0) + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StoredPhotoProto.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StoredPhotoProto(0) + 52));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t StoredPhotoLayoutProto.timePosition.getter()
{
  v1 = *(v0 + *(type metadata accessor for StoredPhotoLayoutProto(0) + 20));
  v2 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22FDFBB2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4618, &unk_22FE4DA30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = *(v2 + *(type metadata accessor for StoredPhotoLayoutProto(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  sub_22FD764B4(v9 + v10, v8, &qword_27DAE4618, &unk_22FE4DA30);
  v11 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return sub_22FDFDFC4(v8, a2, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  v13 = a2 + *(v11 + 20);
  sub_22FE42A44();
  v14 = (a2 + *(v11 + 24));
  *v14 = 0;
  v14[1] = 0;
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return sub_22FD93E6C(v8, &qword_27DAE4618, &unk_22FE4DA30);
  }

  return result;
}

uint64_t sub_22FDFBCD8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4610, &unk_22FE4BA50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = *(v2 + *(type metadata accessor for StoredPhotoLayoutProto(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  sub_22FD764B4(v9 + v10, v8, &qword_27DAE4610, &unk_22FE4BA50);
  v11 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return sub_22FDFDFC4(v8, a2, type metadata accessor for StoredPhotoLayoutRectProto);
  }

  *a2 = 0u;
  a2[1] = 0u;
  v13 = a2 + *(v11 + 32);
  sub_22FE42A44();
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return sub_22FD93E6C(v8, &qword_27DAE4610, &unk_22FE4BA50);
  }

  return result;
}

double sub_22FDFBE74(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for StoredPhotoLayoutProto(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

uint64_t StoredPhotoLayoutProto.userEdited.getter()
{
  v1 = *(v0 + *(type metadata accessor for StoredPhotoLayoutProto(0) + 20));
  v2 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22FDFBF4C(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4618, &unk_22FE4DA30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  v10 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  v11 = *(v2 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = sub_22FE03B20(v13);

    *(v4 + v10) = v17;
    v13 = v17;
  }

  sub_22FDFDFC4(a1, v9, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  v18 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
  v19 = *a2;
  swift_beginAccess();
  sub_22FDE176C(v9, v13 + v19, &qword_27DAE4618, &unk_22FE4DA30);
  return swift_endAccess();
}

uint64_t sub_22FDFC0D8(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4610, &unk_22FE4BA50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  v10 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  v11 = *(v2 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = sub_22FE03B20(v13);

    *(v4 + v10) = v17;
    v13 = v17;
  }

  sub_22FDFDFC4(a1, v9, type metadata accessor for StoredPhotoLayoutRectProto);
  v18 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
  v19 = *a2;
  swift_beginAccess();
  sub_22FDE176C(v9, v13 + v19, &qword_27DAE4610, &unk_22FE4BA50);
  return swift_endAccess();
}

uint64_t StoredPhotoLayoutProto.timePosition.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_22FE03B20(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  result = swift_beginAccess();
  *(v7 + v12) = a1;
  return result;
}

uint64_t sub_22FDFC328(uint64_t *a1, double a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_22FE03B20(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = *a1;
  result = swift_beginAccess();
  *(v9 + v14) = a2;
  return result;
}

uint64_t StoredPhotoLayoutProto.userEdited.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_22FE03B20(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
  result = swift_beginAccess();
  *(v7 + v12) = a1 & 1;
  return result;
}

uint64_t StoredPhotoLayoutImageLocationProto.location.getter()
{
  v1 = (v0 + *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t StoredPhotoLayoutImageLocationProto.location.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

unint64_t StoredPhotoLayoutImageLocationTypeProto.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

unint64_t sub_22FDFC5AC@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_22FDFC5D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FDFC5F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE04178();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t StoredPhotoProto.localIdentifier.getter()
{
  v1 = *v0;
  sub_22FDB4380(*v0, *(v0 + 8));
  return v1;
}

uint64_t StoredPhotoProto.localIdentifier.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FD917D4(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t StoredPhotoProto.layouts.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_22FDFC7AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for StoredPhotoProto(0) + 40));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22FDFC810(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for StoredPhotoProto(0) + 40));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*StoredPhotoProto.accessibilityDescription.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for StoredPhotoProto(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22FDFC914;
}

Swift::Void __swiftcall StoredPhotoProto.clearAccessibilityDescription()()
{
  v1 = (v0 + *(type metadata accessor for StoredPhotoProto(0) + 40));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t (*StoredPhotoProto.creationDate.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for StoredPhotoProto(0) + 44);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_22FDFC9BC;
}

uint64_t sub_22FDFC9BC(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall StoredPhotoProto.clearCreationDate()()
{
  v1 = v0 + *(type metadata accessor for StoredPhotoProto(0) + 44);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t sub_22FDFCA04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for StoredPhotoProto(0) + 48));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22FDFCA68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for StoredPhotoProto(0) + 48));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*StoredPhotoProto.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for StoredPhotoProto(0) + 48);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22FE04D80;
}

Swift::Void __swiftcall StoredPhotoProto.clearTitle()()
{
  v1 = (v0 + *(type metadata accessor for StoredPhotoProto(0) + 48));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t sub_22FDFCBA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for StoredPhotoProto(0) + 52));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22FDFCC08(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for StoredPhotoProto(0) + 52));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*StoredPhotoProto.subtitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for StoredPhotoProto(0) + 52);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22FE04D80;
}

Swift::Void __swiftcall StoredPhotoProto.clearSubtitle()()
{
  v1 = (v0 + *(type metadata accessor for StoredPhotoProto(0) + 52));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t StoredPhotoProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StoredPhotoProto(0) + 36);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StoredPhotoProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for StoredPhotoProto(0) + 36);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t StoredPhotoProto.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_22FE4B510;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = MEMORY[0x277D84F90];
  v2 = type metadata accessor for StoredPhotoProto(0);
  v3 = a1 + v2[9];
  result = sub_22FE42A44();
  v5 = (a1 + v2[10]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a1 + v2[11];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a1 + v2[12]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a1 + v2[13]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

void StoredPhotoLayoutImageLocationProto.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t StoredPhotoLayoutImageLocationProto.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_22FDFCF5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_22FDFCFC0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 24));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t (*StoredPhotoLayoutImageLocationProto.location.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_22FE04D80;
}

void sub_22FDFD0C4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall StoredPhotoLayoutImageLocationProto.clearLocation()()
{
  v1 = (v0 + *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 24));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t StoredPhotoLayoutImageLocationProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 20);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StoredPhotoLayoutImageLocationProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 20);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t StoredPhotoLayoutImageLocationProto.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v3 = a1 + *(v2 + 20);
  result = sub_22FE42A44();
  v5 = (a1 + *(v2 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

void (*StoredPhotoLayoutProto.baseImage.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4618, &unk_22FE4DA30) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage;
  swift_beginAccess();
  sub_22FD764B4(v16 + v17, v8, &qword_27DAE4618, &unk_22FE4DA30);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    v19 = v14 + *(v9 + 20);
    sub_22FE42A44();
    v20 = (v14 + *(v9 + 24));
    *v20 = 0;
    v20[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FD93E6C(v8, &qword_27DAE4618, &unk_22FE4DA30);
    }
  }

  else
  {
    sub_22FDFDFC4(v8, v14, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  }

  return sub_22FDFD59C;
}

BOOL sub_22FDFD5FC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for StoredPhotoLayoutProto(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  sub_22FD764B4(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  sub_22FD93E6C(v12, a1, a2);
  return v16;
}

uint64_t sub_22FDFD744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4618, &unk_22FE4DA30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FE04068(a1, v16, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  v17 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  v18 = *(a2 + v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a2 + v17);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = sub_22FE03B20(v20);

    *(a2 + v17) = v24;
    v20 = v24;
  }

  sub_22FDFDFC4(v16, v11, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  (*(v13 + 56))(v11, 0, 1, v12);
  v25 = *a5;
  swift_beginAccess();
  sub_22FDE176C(v11, v20 + v25, &qword_27DAE4618, &unk_22FE4DA30);
  return swift_endAccess();
}

void (*StoredPhotoLayoutProto.maskImage.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4618, &unk_22FE4DA30) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage;
  swift_beginAccess();
  sub_22FD764B4(v16 + v17, v8, &qword_27DAE4618, &unk_22FE4DA30);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    v19 = v14 + *(v9 + 20);
    sub_22FE42A44();
    v20 = (v14 + *(v9 + 24));
    *v20 = 0;
    v20[1] = 0;
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FD93E6C(v8, &qword_27DAE4618, &unk_22FE4DA30);
    }
  }

  else
  {
    sub_22FDFDFC4(v8, v14, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  }

  return sub_22FDFDBAC;
}

uint64_t sub_22FDFDC0C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  v14 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_22FE03B20(v17);

    *(v9 + v14) = v21;
    v17 = v21;
  }

  v22 = a3(0);
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = *a4;
  swift_beginAccess();
  sub_22FDE176C(v13, v17 + v23, a1, a2);
  return swift_endAccess();
}

uint64_t sub_22FDFDD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4610, &unk_22FE4BA50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FE04068(a1, v16, type metadata accessor for StoredPhotoLayoutRectProto);
  v17 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  v18 = *(a2 + v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a2 + v17);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = sub_22FE03B20(v20);

    *(a2 + v17) = v24;
    v20 = v24;
  }

  sub_22FDFDFC4(v16, v11, type metadata accessor for StoredPhotoLayoutRectProto);
  (*(v13 + 56))(v11, 0, 1, v12);
  v25 = *a5;
  swift_beginAccess();
  sub_22FDE176C(v11, v20 + v25, &qword_27DAE4610, &unk_22FE4BA50);
  return swift_endAccess();
}

uint64_t StoredPhotoLayoutRectProto.init()@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  *a1 = 0u;
  a1[1] = 0u;
  v3 = a1 + *(v2 + 32);
  return sub_22FE42A44();
}

uint64_t sub_22FDFDFC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*StoredPhotoLayoutProto.originalCrop.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4610, &unk_22FE4BA50) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop;
  swift_beginAccess();
  sub_22FD764B4(v16 + v17, v8, &qword_27DAE4610, &unk_22FE4BA50);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0u;
    v14[1] = 0u;
    v19 = v14 + *(v9 + 32);
    sub_22FE42A44();
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FD93E6C(v8, &qword_27DAE4610, &unk_22FE4BA50);
    }
  }

  else
  {
    sub_22FDFDFC4(v8, v14, type metadata accessor for StoredPhotoLayoutRectProto);
  }

  return sub_22FDFE2A4;
}

uint64_t sub_22FDFE334(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_22FE03B20(v7);

    *(a2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  result = swift_beginAccess();
  *(v7 + v12) = v3;
  return result;
}

void (*StoredPhotoLayoutProto.timePosition.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_22FDFE488;
}

void sub_22FDFE488(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_22FE03B20(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  v14 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  swift_beginAccess();
  *(v7 + v14) = v2;

  free(v1);
}

void (*StoredPhotoLayoutProto.timeRect.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4610, &unk_22FE4BA50) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect;
  swift_beginAccess();
  sub_22FD764B4(v16 + v17, v8, &qword_27DAE4610, &unk_22FE4BA50);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0u;
    v14[1] = 0u;
    v19 = v14 + *(v9 + 32);
    sub_22FE42A44();
    if (v18(v8, 1, v9) != 1)
    {
      sub_22FD93E6C(v8, &qword_27DAE4610, &unk_22FE4BA50);
    }
  }

  else
  {
    sub_22FDFDFC4(v8, v14, type metadata accessor for StoredPhotoLayoutRectProto);
  }

  return sub_22FDFE7BC;
}

void sub_22FDFE7EC(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *(*a1 + 128);
  if (a2)
  {
    v10 = *(v8 + 72);
    sub_22FE04068(*(v8 + 120), *(v8 + 112), a3);
    v11 = *(v10 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v8 + 128);
      v15 = *(v8 + 72);
      v16 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      v19 = sub_22FE03B20(v13);

      *(v15 + v14) = v19;
      v13 = v19;
    }

    v21 = *(v8 + 112);
    v20 = *(v8 + 120);
    v22 = *(v8 + 96);
    v23 = *(v8 + 104);
    v25 = *(v8 + 80);
    v24 = *(v8 + 88);
    sub_22FDFDFC4(v21, v25, a3);
    (*(v23 + 56))(v25, 0, 1, v22);
    v26 = *a4;
    swift_beginAccess();
    sub_22FDE176C(v25, v13 + v26, a5, a6);
    swift_endAccess();
    sub_22FE040D0(v20, a3);
  }

  else
  {
    v27 = *(v8 + 72);
    v28 = *(v27 + v9);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v27 + v9);
    if ((v29 & 1) == 0)
    {
      v31 = *(v8 + 128);
      v32 = *(v8 + 72);
      v33 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      v36 = sub_22FE03B20(v30);

      *(v32 + v31) = v36;
      v30 = v36;
    }

    v21 = *(v8 + 112);
    v20 = *(v8 + 120);
    v37 = *(v8 + 96);
    v38 = *(v8 + 104);
    v25 = *(v8 + 80);
    v24 = *(v8 + 88);
    sub_22FDFDFC4(v20, v25, a3);
    (*(v38 + 56))(v25, 0, 1, v37);
    v39 = *a4;
    swift_beginAccess();
    sub_22FDE176C(v25, v30 + v39, a5, a6);
    swift_endAccess();
  }

  free(v20);
  free(v21);
  free(v24);
  free(v25);

  free(v8);
}

void (*StoredPhotoLayoutProto.backgroundZorder.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return sub_22FDFEB18;
}

uint64_t sub_22FDFEB24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_22FE03B20(v11);

    *(a2 + v8) = v15;
    v11 = v15;
  }

  v16 = *a5;
  result = swift_beginAccess();
  *(v11 + v16) = v7;
  return result;
}

void (*StoredPhotoLayoutProto.foregroundZorder.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return sub_22FDFEC80;
}

void sub_22FDFEC8C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 80);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 88);
    v12 = *(v4 + 80);
    v13 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_22FE03B20(v10);

    *(v12 + v11) = v16;
    v10 = v16;
  }

  v17 = *a3;
  swift_beginAccess();
  *(v10 + v17) = v5;

  free(v4);
}

void (*StoredPhotoLayoutProto.timeElementZorder.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return sub_22FDFEE18;
}

void (*StoredPhotoLayoutProto.imageAotbrightness.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return sub_22FDFEECC;
}

uint64_t sub_22FDFEED8(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_22FE03B20(v7);

    *(a2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
  result = swift_beginAccess();
  *(v7 + v12) = v3;
  return result;
}

void (*StoredPhotoLayoutProto.userEdited.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_22FDFF02C;
}

void sub_22FDFF02C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_22FE03B20(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  v14 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
  swift_beginAccess();
  *(v7 + v14) = v4;

  free(v1);
}

uint64_t StoredPhotoLayoutProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FE42A54();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StoredPhotoLayoutProto.unknownFields.setter(uint64_t a1)
{
  v3 = sub_22FE42A54();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t StoredPhotoLayoutProto.init()@<X0>(uint64_t a1@<X8>)
{
  sub_22FE42A44();
  v2 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  if (qword_27DAE2AA8 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_27DAE4BA0;
}

uint64_t StoredPhotoLayoutRectProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StoredPhotoLayoutRectProto(0) + 32);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StoredPhotoLayoutRectProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for StoredPhotoLayoutRectProto(0) + 32);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_22FDFF450()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4B40);
  __swift_project_value_buffer(v0, qword_27DAE4B40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FE49FA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "unspecified";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FE42CE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "cache";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "other";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_22FE42CF4();
}

uint64_t sub_22FDFF6C0()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4B58);
  __swift_project_value_buffer(v0, qword_27DAE4B58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22FE4A410;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "localIdentifier";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FE42CE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "date";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "parallaxScale";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "preferredLayout";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "layouts";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "accessibilityDescription";
  *(v17 + 1) = 24;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "creationDate";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "title";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "subtitle";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  return sub_22FE42CF4();
}

uint64_t StoredPhotoProto.decodeMessage<A>(decoder:)()
{
  result = sub_22FE42AB4();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result != 3)
          {
            sub_22FE42B84();
            goto LABEL_6;
          }
        }

        else
        {
          if (result == 1)
          {
            sub_22FE42B04();
            goto LABEL_6;
          }

          if (result != 2)
          {
            goto LABEL_6;
          }
        }

        sub_22FE42B44();
      }

      else if (result <= 6)
      {
        if (result != 5)
        {
          v3 = v0;
          v6 = *(type metadata accessor for StoredPhotoProto(0) + 40);
          goto LABEL_5;
        }

        type metadata accessor for StoredPhotoLayoutProto(0);
        sub_22FE04130(&qword_27DAE4620, type metadata accessor for StoredPhotoLayoutProto);
        sub_22FE42BA4();
      }

      else
      {
        switch(result)
        {
          case 7:
            v7 = *(type metadata accessor for StoredPhotoProto(0) + 44);
            sub_22FE42B34();
            break;
          case 8:
            v3 = v0;
            v4 = *(type metadata accessor for StoredPhotoProto(0) + 48);
LABEL_5:
            v0 = v3;
            sub_22FE42B54();
            break;
          case 9:
            v3 = v0;
            v5 = *(type metadata accessor for StoredPhotoProto(0) + 52);
            goto LABEL_5;
        }
      }

LABEL_6:
      result = sub_22FE42AB4();
    }
  }

  return result;
}

uint64_t StoredPhotoProto.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_22FE42C54();
    if (v1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
    goto LABEL_8;
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(v0 + 16) || (result = sub_22FE42C84(), !v1))
  {
    if (!*(v0 + 24) || (result = sub_22FE42C84(), !v1))
    {
      if (!*(v0 + 32) || (result = sub_22FE42CA4(), !v1))
      {
        if (!*(*(v0 + 40) + 16) || (type metadata accessor for StoredPhotoLayoutProto(0), sub_22FE04130(&qword_27DAE4620, type metadata accessor for StoredPhotoLayoutProto), result = sub_22FE42CC4(), !v1))
        {
          result = sub_22FDFFE6C(v0);
          if (!v1)
          {
            sub_22FDFFEE4(v0);
            sub_22FDFFF5C(v0);
            sub_22FDFFFD4(v0);
            v8 = v0 + *(type metadata accessor for StoredPhotoProto(0) + 36);
            return sub_22FE42A34();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22FDFFE6C(uint64_t a1)
{
  result = type metadata accessor for StoredPhotoProto(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22FE42C94();
  }

  return result;
}

uint64_t sub_22FDFFEE4(uint64_t a1)
{
  result = type metadata accessor for StoredPhotoProto(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22FE42C84();
  }

  return result;
}

uint64_t sub_22FDFFF5C(uint64_t a1)
{
  result = type metadata accessor for StoredPhotoProto(0);
  v3 = (a1 + *(result + 48));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22FE42C94();
  }

  return result;
}

uint64_t sub_22FDFFFD4(uint64_t a1)
{
  result = type metadata accessor for StoredPhotoProto(0);
  v3 = (a1 + *(result + 52));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22FE42C94();
  }

  return result;
}

uint64_t sub_22FE00098@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_22FE4B510;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = MEMORY[0x277D84F90];
  v4 = a2 + a1[9];
  result = sub_22FE42A44();
  v6 = a1[11];
  v7 = (a2 + a1[10]);
  *v7 = 0;
  v7[1] = 0;
  v8 = a2 + v6;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1[13];
  v10 = (a2 + a1[12]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + v9);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_22FE00164(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE04130(&qword_27DAE4D28, type metadata accessor for StoredPhotoProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FE00204(uint64_t a1)
{
  v2 = sub_22FE04130(&qword_27DAE4338, type metadata accessor for StoredPhotoProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FE00270()
{
  sub_22FE04130(&qword_27DAE4338, type metadata accessor for StoredPhotoProto);

  return sub_22FE42C04();
}

uint64_t sub_22FE0030C()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4B70);
  __swift_project_value_buffer(v0, qword_27DAE4B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FE49F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FE42CE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "location";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_22FE42CF4();
}

uint64_t StoredPhotoLayoutImageLocationProto.decodeMessage<A>(decoder:)()
{
  result = sub_22FE42AB4();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_22FE04178();
        sub_22FE42AE4();
      }

      else if (result == 2)
      {
        v3 = *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 24);
        sub_22FE42B54();
      }

      result = sub_22FE42AB4();
    }
  }

  return result;
}

uint64_t StoredPhotoLayoutImageLocationProto.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_22FE04178(), result = sub_22FE42C34(), !v1))
  {
    result = sub_22FE00694(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for StoredPhotoLayoutImageLocationProto(0) + 20);
      return sub_22FE42A34();
    }
  }

  return result;
}

uint64_t sub_22FE00694(uint64_t a1)
{
  result = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22FE42C94();
  }

  return result;
}

uint64_t sub_22FE00758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + *(a1 + 20);
  result = sub_22FE42A44();
  v6 = (a2 + *(a1 + 24));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_22FE007EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE04130(&qword_27DAE4D20, type metadata accessor for StoredPhotoLayoutImageLocationProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FE0088C(uint64_t a1)
{
  v2 = sub_22FE04130(&qword_27DAE4638, type metadata accessor for StoredPhotoLayoutImageLocationProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FE008F8()
{
  sub_22FE04130(&qword_27DAE4638, type metadata accessor for StoredPhotoLayoutImageLocationProto);

  return sub_22FE42C04();
}

uint64_t sub_22FE00994()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4B88);
  __swift_project_value_buffer(v0, qword_27DAE4B88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_22FE4DA20;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "baseImage";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FE42CE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "maskImage";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "originalCrop";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "timePosition";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "timeRect";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "backgroundZorder";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "foregroundZorder";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "timeElementZorder";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "imageAOTBrightness";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "userEdited";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  return sub_22FE42CF4();
}

uint64_t sub_22FE00D70()
{
  v0 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage;
  v5 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage, 1, 1, v5);
  v7 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop;
  v8 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v3 + v7, 1, 1, v8);
  *(v3 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition) = 0;
  result = (v9)(v3 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect, 1, 1, v8);
  *(v3 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder) = 0;
  *(v3 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder) = 0;
  *(v3 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder) = 0;
  *(v3 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness) = 0;
  *(v3 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited) = 0;
  qword_27DAE4BA0 = v3;
  return result;
}

uint64_t sub_22FE00EE4()
{
  sub_22FD93E6C(v0 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage, &qword_27DAE4618, &unk_22FE4DA30);
  sub_22FD93E6C(v0 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage, &qword_27DAE4618, &unk_22FE4DA30);
  sub_22FD93E6C(v0 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop, &qword_27DAE4610, &unk_22FE4BA50);
  sub_22FD93E6C(v0 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect, &qword_27DAE4610, &unk_22FE4BA50);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t StoredPhotoLayoutProto.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for StoredPhotoLayoutProto._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_22FE03B20(v12);

    *(v4 + v8) = v16;
    v11 = v16;
  }

  return sub_22FE0107C(v11, a1, a2, a3);
}

uint64_t sub_22FE0107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22FE42AB4();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder;
          }

          else
          {
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder;
          }

          goto LABEL_5;
        }

        switch(result)
        {
          case 8:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder;
LABEL_5:
            sub_22FE014D4(v11, v12, v13, v14, v15);
            break;
          case 9:
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness;
            goto LABEL_5;
          case 10:
            sub_22FE0155C();
            break;
        }
      }

      else if (result <= 2)
      {
        if (result == 1)
        {
          v21 = a2;
          v22 = a1;
          v23 = a3;
          v24 = a4;
          v25 = &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage;
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_6;
          }

          v21 = a2;
          v22 = a1;
          v23 = a3;
          v24 = a4;
          v25 = &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage;
        }

        sub_22FE01298(v21, v22, v23, v24, v25);
      }

      else
      {
        if (result == 3)
        {
          v16 = a2;
          v17 = a1;
          v18 = a3;
          v19 = a4;
          v20 = &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop;
          goto LABEL_26;
        }

        if (result != 4)
        {
          v16 = a2;
          v17 = a1;
          v18 = a3;
          v19 = a4;
          v20 = &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect;
LABEL_26:
          sub_22FE01370(v16, v17, v18, v19, v20);
          goto LABEL_6;
        }

        sub_22FE01448();
      }

LABEL_6:
      result = sub_22FE42AB4();
    }
  }

  return result;
}

uint64_t sub_22FE01298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  sub_22FE04130(&qword_27DAE4638, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  sub_22FE42BB4();
  return swift_endAccess();
}

uint64_t sub_22FE01370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  type metadata accessor for StoredPhotoLayoutRectProto(0);
  sub_22FE04130(&qword_27DAE4640, type metadata accessor for StoredPhotoLayoutRectProto);
  sub_22FE42BB4();
  return swift_endAccess();
}

uint64_t sub_22FE01448()
{
  swift_beginAccess();
  sub_22FE42B84();
  return swift_endAccess();
}

uint64_t sub_22FE014D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_22FE42B44();
  return swift_endAccess();
}

uint64_t sub_22FE0155C()
{
  swift_beginAccess();
  sub_22FE42AD4();
  return swift_endAccess();
}

uint64_t StoredPhotoLayoutProto.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for StoredPhotoLayoutProto(0);
  result = sub_22FE01654(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_22FE42A34();
  }

  return result;
}

uint64_t sub_22FE01654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22FE018C0(a1, a2, a3, a4, &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage, 1);
  if (!v4)
  {
    sub_22FE018C0(a1, a2, a3, a4, &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage, 2);
    sub_22FE01AE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop, 3);
    v10 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
    swift_beginAccess();
    if (*(a1 + v10))
    {
      sub_22FE42CA4();
    }

    sub_22FE01AE0(a1, a2, a3, a4, &OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect, 5);
    v11 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder;
    swift_beginAccess();
    if (*(a1 + v11))
    {
      sub_22FE42C84();
    }

    v12 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder;
    swift_beginAccess();
    if (*(a1 + v12))
    {
      sub_22FE42C84();
    }

    v13 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder;
    swift_beginAccess();
    if (*(a1 + v13))
    {
      sub_22FE42C84();
    }

    v14 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness;
    swift_beginAccess();
    if (*(a1 + v14))
    {
      sub_22FE42C84();
    }

    v15 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
    result = swift_beginAccess();
    if (*(a1 + v15) == 1)
    {
      return sub_22FE42C24();
    }
  }

  return result;
}

uint64_t sub_22FE018C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v19[1] = a6;
  v19[2] = a3;
  v19[7] = a4;
  v19[0] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4618, &unk_22FE4DA30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a5;
  swift_beginAccess();
  sub_22FD764B4(a1 + v17, v11, &qword_27DAE4618, &unk_22FE4DA30);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_22FD93E6C(v11, &qword_27DAE4618, &unk_22FE4DA30);
  }

  sub_22FDFDFC4(v11, v16, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  sub_22FE04130(&qword_27DAE4638, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  sub_22FE42CD4();
  return sub_22FE040D0(v16, type metadata accessor for StoredPhotoLayoutImageLocationProto);
}

uint64_t sub_22FE01AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v19[1] = a6;
  v19[2] = a3;
  v19[7] = a4;
  v19[0] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4610, &unk_22FE4BA50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a5;
  swift_beginAccess();
  sub_22FD764B4(a1 + v17, v11, &qword_27DAE4610, &unk_22FE4BA50);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_22FD93E6C(v11, &qword_27DAE4610, &unk_22FE4BA50);
  }

  sub_22FDFDFC4(v11, v16, type metadata accessor for StoredPhotoLayoutRectProto);
  sub_22FE04130(&qword_27DAE4640, type metadata accessor for StoredPhotoLayoutRectProto);
  sub_22FE42CD4();
  return sub_22FE040D0(v16, type metadata accessor for StoredPhotoLayoutRectProto);
}

uint64_t sub_22FE01D04(uint64_t a1, uint64_t a2)
{
  v135 = a2;
  v3 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  v123 = *(v3 - 8);
  v124 = v3;
  v4 = *(v123 + 64);
  MEMORY[0x28223BE20](v3);
  v120 = (&v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4D30, &qword_22FE4E270);
  v6 = *(*(v125 - 8) + 64);
  MEMORY[0x28223BE20](v125);
  v118 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v122 = &v117 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4610, &unk_22FE4BA50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v117 = (&v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v119 = &v117 - v14;
  MEMORY[0x28223BE20](v15);
  v121 = (&v117 - v16);
  MEMORY[0x28223BE20](v17);
  v130 = &v117 - v18;
  v133 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v19 = *(v133 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v133);
  v127 = (&v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4D38, &qword_22FE4E278);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v129 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v117 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4618, &unk_22FE4DA30);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v126 = (&v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v132 = &v117 - v32;
  MEMORY[0x28223BE20](v33);
  v131 = (&v117 - v34);
  MEMORY[0x28223BE20](v35);
  v37 = &v117 - v36;
  v38 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage;
  swift_beginAccess();
  v134 = a1;
  sub_22FD764B4(a1 + v38, v37, &qword_27DAE4618, &unk_22FE4DA30);
  v39 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage;
  v40 = v135;
  swift_beginAccess();
  v128 = v22;
  v41 = *(v22 + 48);
  sub_22FD764B4(v37, v27, &qword_27DAE4618, &unk_22FE4DA30);
  v42 = v40 + v39;
  v43 = v133;
  sub_22FD764B4(v42, &v27[v41], &qword_27DAE4618, &unk_22FE4DA30);
  v44 = *(v19 + 48);
  if (v44(v27, 1, v43) == 1)
  {
    v45 = v134;

    sub_22FD93E6C(v37, &qword_27DAE4618, &unk_22FE4DA30);
    if (v44(&v27[v41], 1, v43) != 1)
    {
      goto LABEL_12;
    }

    sub_22FD93E6C(v27, &qword_27DAE4618, &unk_22FE4DA30);
  }

  else
  {
    v45 = v134;
    v46 = v131;
    sub_22FD764B4(v27, v131, &qword_27DAE4618, &unk_22FE4DA30);
    if (v44(&v27[v41], 1, v43) == 1)
    {

      sub_22FD93E6C(v37, &qword_27DAE4618, &unk_22FE4DA30);
      sub_22FE040D0(v46, type metadata accessor for StoredPhotoLayoutImageLocationProto);
      goto LABEL_12;
    }

    v47 = &v27[v41];
    v48 = v127;
    sub_22FDFDFC4(v47, v127, type metadata accessor for StoredPhotoLayoutImageLocationProto);

    v49 = _s10PhotosFace35StoredPhotoLayoutImageLocationProtoV2eeoiySbAC_ACtFZ_0(v46, v48);
    sub_22FE040D0(v48, type metadata accessor for StoredPhotoLayoutImageLocationProto);
    sub_22FD93E6C(v37, &qword_27DAE4618, &unk_22FE4DA30);
    sub_22FE040D0(v46, type metadata accessor for StoredPhotoLayoutImageLocationProto);
    sub_22FD93E6C(v27, &qword_27DAE4618, &unk_22FE4DA30);
    if ((v49 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v50 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage;
  swift_beginAccess();
  v51 = v132;
  sub_22FD764B4(v45 + v50, v132, &qword_27DAE4618, &unk_22FE4DA30);
  v52 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage;
  v53 = v135;
  swift_beginAccess();
  v27 = v129;
  v54 = *(v128 + 48);
  sub_22FD764B4(v51, v129, &qword_27DAE4618, &unk_22FE4DA30);
  sub_22FD764B4(v53 + v52, &v27[v54], &qword_27DAE4618, &unk_22FE4DA30);
  v55 = v133;
  if (v44(v27, 1, v133) == 1)
  {
    sub_22FD93E6C(v51, &qword_27DAE4618, &unk_22FE4DA30);
    v56 = v44(&v27[v54], 1, v55);
    v57 = v130;
    v58 = v134;
    if (v56 == 1)
    {
      sub_22FD93E6C(v27, &qword_27DAE4618, &unk_22FE4DA30);
      goto LABEL_17;
    }

LABEL_12:
    v61 = &qword_27DAE4D38;
    v62 = &qword_22FE4E278;
    v63 = v27;
LABEL_13:
    sub_22FD93E6C(v63, v61, v62);
    goto LABEL_14;
  }

  v59 = v126;
  sub_22FD764B4(v27, v126, &qword_27DAE4618, &unk_22FE4DA30);
  v60 = v44(&v27[v54], 1, v55);
  v57 = v130;
  if (v60 == 1)
  {
    sub_22FD93E6C(v132, &qword_27DAE4618, &unk_22FE4DA30);
    sub_22FE040D0(v59, type metadata accessor for StoredPhotoLayoutImageLocationProto);
    goto LABEL_12;
  }

  v66 = v127;
  sub_22FDFDFC4(&v27[v54], v127, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  v67 = _s10PhotosFace35StoredPhotoLayoutImageLocationProtoV2eeoiySbAC_ACtFZ_0(v59, v66);
  sub_22FE040D0(v66, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  sub_22FD93E6C(v132, &qword_27DAE4618, &unk_22FE4DA30);
  sub_22FE040D0(v59, type metadata accessor for StoredPhotoLayoutImageLocationProto);
  sub_22FD93E6C(v27, &qword_27DAE4618, &unk_22FE4DA30);
  v58 = v134;
  if ((v67 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v68 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop;
  swift_beginAccess();
  sub_22FD764B4(v58 + v68, v57, &qword_27DAE4610, &unk_22FE4BA50);
  v69 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop;
  v70 = v135;
  swift_beginAccess();
  v71 = *(v125 + 48);
  v72 = v122;
  sub_22FD764B4(v57, v122, &qword_27DAE4610, &unk_22FE4BA50);
  v73 = v72;
  sub_22FD764B4(v70 + v69, v72 + v71, &qword_27DAE4610, &unk_22FE4BA50);
  v74 = *(v123 + 48);
  v75 = v72;
  v76 = v124;
  if (v74(v75, 1, v124) == 1)
  {
    sub_22FD93E6C(v57, &qword_27DAE4610, &unk_22FE4BA50);
    if (v74(v73 + v71, 1, v76) == 1)
    {
      sub_22FD93E6C(v73, &qword_27DAE4610, &unk_22FE4BA50);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v77 = v121;
  sub_22FD764B4(v73, v121, &qword_27DAE4610, &unk_22FE4BA50);
  if (v74(v73 + v71, 1, v76) == 1)
  {
    sub_22FD93E6C(v130, &qword_27DAE4610, &unk_22FE4BA50);
    sub_22FE040D0(v77, type metadata accessor for StoredPhotoLayoutRectProto);
LABEL_22:
    v61 = &qword_27DAE4D30;
    v62 = &qword_22FE4E270;
    v63 = v73;
    goto LABEL_13;
  }

  v78 = v73 + v71;
  v79 = v120;
  sub_22FDFDFC4(v78, v120, type metadata accessor for StoredPhotoLayoutRectProto);
  v80 = _s10PhotosFace26StoredPhotoLayoutRectProtoV2eeoiySbAC_ACtFZ_0(v77, v79);
  sub_22FE040D0(v79, type metadata accessor for StoredPhotoLayoutRectProto);
  sub_22FD93E6C(v130, &qword_27DAE4610, &unk_22FE4BA50);
  sub_22FE040D0(v77, type metadata accessor for StoredPhotoLayoutRectProto);
  sub_22FD93E6C(v73, &qword_27DAE4610, &unk_22FE4BA50);
  if ((v80 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_24:
  v81 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  swift_beginAccess();
  LODWORD(v81) = *(v58 + v81);
  v82 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  v83 = v135;
  swift_beginAccess();
  if (v81 != *(v83 + v82))
  {
    goto LABEL_14;
  }

  v84 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect;
  swift_beginAccess();
  v85 = v119;
  sub_22FD764B4(v58 + v84, v119, &qword_27DAE4610, &unk_22FE4BA50);
  v86 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect;
  v87 = v135;
  swift_beginAccess();
  v88 = *(v125 + 48);
  v89 = v118;
  sub_22FD764B4(v85, v118, &qword_27DAE4610, &unk_22FE4BA50);
  v90 = v89;
  sub_22FD764B4(v87 + v86, v89 + v88, &qword_27DAE4610, &unk_22FE4BA50);
  if (v74(v89, 1, v76) != 1)
  {
    v93 = v89;
    v94 = v117;
    sub_22FD764B4(v93, v117, &qword_27DAE4610, &unk_22FE4BA50);
    if (v74(v90 + v88, 1, v76) != 1)
    {
      v95 = v120;
      sub_22FDFDFC4(v90 + v88, v120, type metadata accessor for StoredPhotoLayoutRectProto);
      v96 = v90;
      v97 = _s10PhotosFace26StoredPhotoLayoutRectProtoV2eeoiySbAC_ACtFZ_0(v94, v95);
      sub_22FE040D0(v95, type metadata accessor for StoredPhotoLayoutRectProto);
      sub_22FD93E6C(v119, &qword_27DAE4610, &unk_22FE4BA50);
      sub_22FE040D0(v94, type metadata accessor for StoredPhotoLayoutRectProto);
      sub_22FD93E6C(v96, &qword_27DAE4610, &unk_22FE4BA50);
      v92 = v134;
      if ((v97 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_32;
    }

    sub_22FD93E6C(v119, &qword_27DAE4610, &unk_22FE4BA50);
    sub_22FE040D0(v94, type metadata accessor for StoredPhotoLayoutRectProto);
LABEL_30:
    sub_22FD93E6C(v90, &qword_27DAE4D30, &qword_22FE4E270);
    goto LABEL_14;
  }

  sub_22FD93E6C(v85, &qword_27DAE4610, &unk_22FE4BA50);
  v91 = v74(v89 + v88, 1, v76);
  v92 = v134;
  if (v91 != 1)
  {
    goto LABEL_30;
  }

  sub_22FD93E6C(v89, &qword_27DAE4610, &unk_22FE4BA50);
LABEL_32:
  v98 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder;
  swift_beginAccess();
  v99 = *(v92 + v98);
  v100 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder;
  v101 = v135;
  swift_beginAccess();
  if (v99 == *(v101 + v100))
  {
    v102 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder;
    swift_beginAccess();
    v103 = *(v92 + v102);
    v104 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder;
    v105 = v135;
    swift_beginAccess();
    if (v103 == *(v105 + v104))
    {
      v106 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder;
      swift_beginAccess();
      v107 = *(v92 + v106);
      v108 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder;
      v109 = v135;
      swift_beginAccess();
      if (v107 == *(v109 + v108))
      {
        v110 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness;
        swift_beginAccess();
        v111 = *(v92 + v110);
        v112 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness;
        v113 = v135;
        swift_beginAccess();
        if (v111 == *(v113 + v112))
        {
          v114 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
          swift_beginAccess();
          LOBYTE(v114) = *(v92 + v114);

          v115 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
          v116 = v135;
          swift_beginAccess();
          LOBYTE(v115) = *(v116 + v115);

          v64 = v114 ^ v115 ^ 1;
          return v64 & 1;
        }
      }
    }
  }

LABEL_14:

  v64 = 0;
  return v64 & 1;
}

uint64_t sub_22FE02BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22FE42A44();
  v4 = *(a1 + 20);
  if (qword_27DAE2AA8 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_27DAE4BA0;
}

uint64_t sub_22FE02C60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FE42A54();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22FE02CC8(uint64_t a1)
{
  v3 = sub_22FE42A54();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_22FE02D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE04130(&qword_27DAE4D18, type metadata accessor for StoredPhotoLayoutProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FE02E20(uint64_t a1)
{
  v2 = sub_22FE04130(&qword_27DAE4620, type metadata accessor for StoredPhotoLayoutProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FE02E8C()
{
  sub_22FE04130(&qword_27DAE4620, type metadata accessor for StoredPhotoLayoutProto);

  return sub_22FE42C04();
}

uint64_t sub_22FE02F28()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4BA8);
  __swift_project_value_buffer(v0, qword_27DAE4BA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FE49FB0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "x";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FE42CE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y";
  *(v10 + 8) = 1;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "height";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_22FE42CF4();
}

uint64_t StoredPhotoLayoutRectProto.decodeMessage<A>(decoder:)()
{
  result = sub_22FE42AB4();
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
LABEL_9:
          sub_22FE42B44();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = sub_22FE42AB4();
    }
  }

  return result;
}

uint64_t StoredPhotoLayoutRectProto.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_22FE42C84(), !v1))
  {
    if (!v0[1] || (result = sub_22FE42C84(), !v1))
    {
      if (!v0[2] || (result = sub_22FE42C84(), !v1))
      {
        if (!v0[3] || (result = sub_22FE42C84(), !v1))
        {
          v3 = v0 + *(type metadata accessor for StoredPhotoLayoutRectProto(0) + 32);
          return sub_22FE42A34();
        }
      }
    }
  }

  return result;
}

uint64_t sub_22FE03380(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22FE43DB4();
  a1(0);
  sub_22FE04130(a2, a3);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FE03408@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;
  v2 = a2 + *(a1 + 32);
  return sub_22FE42A44();
}

uint64_t sub_22FE0347C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE04130(&qword_27DAE4D10, type metadata accessor for StoredPhotoLayoutRectProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FE0351C(uint64_t a1)
{
  v2 = sub_22FE04130(&qword_27DAE4640, type metadata accessor for StoredPhotoLayoutRectProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FE03588()
{
  sub_22FE04130(&qword_27DAE4640, type metadata accessor for StoredPhotoLayoutRectProto);

  return sub_22FE42C04();
}

uint64_t _s10PhotosFace26StoredPhotoLayoutRectProtoV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  v2 = *(type metadata accessor for StoredPhotoLayoutRectProto(0) + 32);
  sub_22FE42A54();
  sub_22FE04130(&qword_27DAE44A0, MEMORY[0x277D216C8]);
  return sub_22FE43024() & 1;
}

uint64_t _s10PhotosFace35StoredPhotoLayoutImageLocationProtoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v7 = *(v6 + 24);
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }

    if (*v8 != *v10 || v9 != v11)
    {
      v13 = v6;
      v14 = sub_22FE43CB4();
      v6 = v13;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_18:
    v15 = *(v6 + 20);
    sub_22FE42A54();
    sub_22FE04130(&qword_27DAE44A0, MEMORY[0x277D216C8]);
    return sub_22FE43024() & 1;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  return 0;
}

uint64_t _s10PhotosFace22StoredPhotoLayoutProtoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StoredPhotoLayoutProto(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_22FE01D04(v5, v6);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  sub_22FE42A54();
  sub_22FE04130(&qword_27DAE44A0, MEMORY[0x277D216C8]);
  return sub_22FE43024() & 1;
}

uint64_t _s10PhotosFace16StoredPhotoProtoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_22FDF2C1C(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || (sub_22FDB6D34(*(a1 + 40), *(a2 + 40)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StoredPhotoProto(0);
  v5 = v4[10];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22FE43CB4();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[11];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 8);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[12];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v23 = v4;
      v24 = sub_22FE43CB4();
      v4 = v23;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v25 = v4[13];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }

    if (*v26 != *v28 || v27 != v29)
    {
      v30 = v4;
      v31 = sub_22FE43CB4();
      v4 = v30;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_33:
    v32 = v4[9];
    sub_22FE42A54();
    sub_22FE04130(&qword_27DAE44A0, MEMORY[0x277D216C8]);
    return sub_22FE43024() & 1;
  }

  if (!v29)
  {
    goto LABEL_33;
  }

  return 0;
}

uint64_t sub_22FE03B20(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4610, &unk_22FE4BA50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4618, &unk_22FE4DA30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v40 - v8;
  v10 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage;
  v11 = type metadata accessor for StoredPhotoLayoutImageLocationProto(0);
  v12 = *(*(v11 - 8) + 56);
  v12(v1 + v10, 1, 1, v11);
  v13 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage;
  v12(v1 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage, 1, 1, v11);
  v14 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop;
  v15 = type metadata accessor for StoredPhotoLayoutRectProto(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v1 + v14, 1, 1, v15);
  v40 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  *(v1 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition) = 0;
  v42 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect;
  v16(v1 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect, 1, 1, v15);
  v17 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder;
  *(v1 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder) = 0;
  v44 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder;
  *(v1 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder) = 0;
  v45 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder;
  *(v1 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder) = 0;
  v46 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness;
  *(v1 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness) = 0;
  v41 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
  *(v1 + OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited) = 0;
  v18 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__baseImage;
  swift_beginAccess();
  sub_22FD764B4(a1 + v18, v9, &qword_27DAE4618, &unk_22FE4DA30);
  swift_beginAccess();
  sub_22FDE176C(v9, v1 + v10, &qword_27DAE4618, &unk_22FE4DA30);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__maskImage;
  swift_beginAccess();
  sub_22FD764B4(a1 + v19, v9, &qword_27DAE4618, &unk_22FE4DA30);
  swift_beginAccess();
  sub_22FDE176C(v9, v1 + v13, &qword_27DAE4618, &unk_22FE4DA30);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__originalCrop;
  swift_beginAccess();
  v21 = v43;
  sub_22FD764B4(a1 + v20, v43, &qword_27DAE4610, &unk_22FE4BA50);
  swift_beginAccess();
  sub_22FDE176C(v21, v1 + v14, &qword_27DAE4610, &unk_22FE4BA50);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  swift_beginAccess();
  LODWORD(v22) = *(a1 + v22);
  v23 = v40;
  swift_beginAccess();
  *(v1 + v23) = v22;
  v24 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeRect;
  swift_beginAccess();
  sub_22FD764B4(a1 + v24, v21, &qword_27DAE4610, &unk_22FE4BA50);
  v25 = v42;
  swift_beginAccess();
  sub_22FDE176C(v21, v1 + v25, &qword_27DAE4610, &unk_22FE4BA50);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__backgroundZorder;
  swift_beginAccess();
  v27 = *(a1 + v26);
  swift_beginAccess();
  *(v1 + v17) = v27;
  v28 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__foregroundZorder;
  swift_beginAccess();
  v29 = *(a1 + v28);
  v30 = v44;
  swift_beginAccess();
  *(v1 + v30) = v29;
  v31 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timeElementZorder;
  swift_beginAccess();
  v32 = *(a1 + v31);
  v33 = v45;
  swift_beginAccess();
  *(v1 + v33) = v32;
  v34 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__imageAotbrightness;
  swift_beginAccess();
  v35 = *(a1 + v34);
  v36 = v46;
  swift_beginAccess();
  *(v1 + v36) = v35;
  v37 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v37);
  v38 = v41;
  swift_beginAccess();
  *(v1 + v38) = a1;
  return v1;
}

uint64_t sub_22FE04068(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FE040D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FE04130(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22FE04178()
{
  result = qword_27DAE4C18;
  if (!qword_27DAE4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4C18);
  }

  return result;
}

unint64_t sub_22FE041D0()
{
  result = qword_27DAE4C38;
  if (!qword_27DAE4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4C38);
  }

  return result;
}

unint64_t sub_22FE04228()
{
  result = qword_27DAE4C40;
  if (!qword_27DAE4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4C40);
  }

  return result;
}

unint64_t sub_22FE04280()
{
  result = qword_27DAE4C48;
  if (!qword_27DAE4C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE4C50, &qword_22FE4DB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4C48);
  }

  return result;
}

unint64_t sub_22FE042E8()
{
  result = qword_27DAE4C58;
  if (!qword_27DAE4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4C58);
  }

  return result;
}

double keypath_get_31Tm@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for StoredPhotoLayoutProto(0) + 20));
  v6 = *a2;
  swift_beginAccess();
  result = *(v5 + v6);
  *a3 = result;
  return result;
}

void sub_22FE0485C()
{
  sub_22FE04D0C(319, &qword_27DAE4CB0, type metadata accessor for StoredPhotoLayoutProto, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22FE42A54();
    if (v1 <= 0x3F)
    {
      sub_22FDFA5DC(319, &qword_28148AE78);
      if (v2 <= 0x3F)
      {
        sub_22FDFA5DC(319, &qword_27DAE4CB8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22FE049B8()
{
  sub_22FE42A54();
  if (v0 <= 0x3F)
  {
    sub_22FDFA5DC(319, &qword_28148AE78);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22FE04A84()
{
  result = sub_22FE42A54();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StoredPhotoLayoutProto._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22FE04B30()
{
  result = sub_22FE42A54();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FE04BB8()
{
  sub_22FE04D0C(319, &qword_27DAE4D00, type metadata accessor for StoredPhotoLayoutImageLocationProto, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_22FE04D0C(319, &qword_27DAE4D08, type metadata accessor for StoredPhotoLayoutRectProto, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_22FE04D0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t SyncedPhotosFaceProto.day.getter()
{
  v1 = (v0 + *(type metadata accessor for SyncedPhotosFaceProto(0) + 36));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t SyncedPhotosFaceProto.checksum.getter()
{
  v1 = (v0 + *(type metadata accessor for SyncedPhotosFaceProto(0) + 40));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t SyncedPhotosFaceProto.day.setter(uint64_t a1)
{
  result = type metadata accessor for SyncedPhotosFaceProto(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t SyncedPhotosFaceProto.checksum.setter(uint64_t a1)
{
  result = type metadata accessor for SyncedPhotosFaceProto(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t SyncFacesRequestProto.trackedFaces.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SyncFacesRequestProto.cachedIdentifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SyncFacesRequestProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SyncFacesRequestProto(0) + 24);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SyncFacesRequestProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SyncFacesRequestProto(0) + 24);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SyncFacesRequestProto.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  v3 = a1 + *(type metadata accessor for SyncFacesRequestProto(0) + 24);
  return sub_22FE42A44();
}

uint64_t SyncedPhotosFaceProto.id.getter()
{
  v1 = *v0;
  sub_22FDB4380(*v0, *(v0 + 8));
  return v1;
}

uint64_t SyncedPhotosFaceProto.id.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22FD917D4(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t (*SyncedPhotosFaceProto.day.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SyncedPhotosFaceProto(0) + 36);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_22FDFC9BC;
}

Swift::Void __swiftcall SyncedPhotosFaceProto.clearDay()()
{
  v1 = v0 + *(type metadata accessor for SyncedPhotosFaceProto(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t SyncedPhotosFaceProto.photos.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SyncedPhotosFaceProto.cached.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t (*SyncedPhotosFaceProto.checksum.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for SyncedPhotosFaceProto(0) + 40);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_22FE06D34;
}

Swift::Void __swiftcall SyncedPhotosFaceProto.clearChecksum()()
{
  v1 = v0 + *(type metadata accessor for SyncedPhotosFaceProto(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t SyncedPhotosFaceProto.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SyncedPhotosFaceProto(0) + 32);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SyncedPhotosFaceProto.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SyncedPhotosFaceProto(0) + 32);
  v4 = sub_22FE42A54();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SyncedPhotosFaceProto.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_22FE4B510;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = v2;
  *(a1 + 32) = 0;
  v3 = type metadata accessor for SyncedPhotosFaceProto(0);
  v4 = a1 + v3[8];
  result = sub_22FE42A44();
  v6 = a1 + v3[9];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v3[10];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_22FE0558C()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4D40);
  __swift_project_value_buffer(v0, qword_27DAE4D40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FE49F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "trackedFaces";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22FE42CE4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cachedIdentifiers";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_22FE42CF4();
}

uint64_t SyncFacesRequestProto.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22FE42AB4();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_22FE42AF4();
    }
  }

  return result;
}

uint64_t SyncFacesRequestProto.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_22FE42C44(), !v1))
  {
    if (!*(v0[1] + 16) || (result = sub_22FE42C44(), !v1))
    {
      v3 = v0 + *(type metadata accessor for SyncFacesRequestProto(0) + 24);
      return sub_22FE42A34();
    }
  }

  return result;
}

uint64_t static SyncFacesRequestProto.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22FDB6714(*a1, *a2) & 1) == 0 || (sub_22FDB6714(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for SyncFacesRequestProto(0) + 24);
  sub_22FE42A54();
  sub_22FE05BA8(&qword_27DAE44A0, MEMORY[0x277D216C8]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FE059A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v2;
  v3 = a2 + *(a1 + 24);
  return sub_22FE42A44();
}

uint64_t sub_22FE05A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE05BA8(&qword_27DAE4DD8, type metadata accessor for SyncFacesRequestProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FE05AC0(uint64_t a1)
{
  v2 = sub_22FE05BA8(&qword_27DAE4368, type metadata accessor for SyncFacesRequestProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FE05B2C()
{
  sub_22FE05BA8(&qword_27DAE4368, type metadata accessor for SyncFacesRequestProto);

  return sub_22FE42C04();
}

uint64_t sub_22FE05BA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FE05BF0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_22FDB6714(*a1, *a2) & 1) == 0 || (sub_22FDB6714(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  sub_22FE42A54();
  sub_22FE05BA8(&qword_27DAE44A0, MEMORY[0x277D216C8]);
  return sub_22FE43024() & 1;
}

uint64_t sub_22FE05CC4()
{
  v0 = sub_22FE42D04();
  __swift_allocate_value_buffer(v0, qword_27DAE4D58);
  __swift_project_value_buffer(v0, qword_27DAE4D58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47D8, &qword_22FE4CBE0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE47E0, &unk_22FE4D0A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22FE4E280;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22FE42CE4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "day";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "photos";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "cached";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "complete";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "checksum";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  return sub_22FE42CF4();
}

uint64_t SyncedPhotosFaceProto.decodeMessage<A>(decoder:)()
{
  result = sub_22FE42AB4();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_22FE42AF4();
            break;
          case 5:
            sub_22FE42AD4();
            break;
          case 6:
            v4 = *(type metadata accessor for SyncedPhotosFaceProto(0) + 40);
            sub_22FE42B14();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_22FE42B04();
            break;
          case 2:
            type metadata accessor for StoredPhotoProto(0);
            sub_22FE05BA8(&qword_27DAE4338, type metadata accessor for StoredPhotoProto);
            sub_22FE42BA4();
            break;
          case 3:
            v3 = *(type metadata accessor for SyncedPhotosFaceProto(0) + 36);
            sub_22FE42B94();
            break;
        }
      }

      result = sub_22FE42AB4();
    }
  }

  return result;
}

uint64_t SyncedPhotosFaceProto.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_22FE42C54();
    if (v1)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
    goto LABEL_8;
  }

  if ((v3 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(*(v0 + 16) + 16) || (type metadata accessor for StoredPhotoProto(0), sub_22FE05BA8(&qword_27DAE4338, type metadata accessor for StoredPhotoProto), result = sub_22FE42CC4(), !v1))
  {
    result = sub_22FE06308(v0);
    if (!v1)
    {
      if (*(*(v0 + 24) + 16))
      {
        sub_22FE42C44();
      }

      if (*(v0 + 32) == 1)
      {
        sub_22FE42C24();
      }

      sub_22FE06380(v0);
      v8 = v0 + *(type metadata accessor for SyncedPhotosFaceProto(0) + 32);
      return sub_22FE42A34();
    }
  }

  return result;
}

uint64_t sub_22FE06308(uint64_t a1)
{
  result = type metadata accessor for SyncedPhotosFaceProto(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22FE42CB4();
  }

  return result;
}

uint64_t sub_22FE06380(uint64_t a1)
{
  result = type metadata accessor for SyncedPhotosFaceProto(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_22FE42C64();
  }

  return result;
}

uint64_t sub_22FE06444(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22FE43DB4();
  a1(0);
  sub_22FE05BA8(a2, a3);
  sub_22FE42FE4();
  return sub_22FE43E04();
}

uint64_t sub_22FE064CC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_22FE4B510;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = v4;
  *(a2 + 32) = 0;
  v5 = a2 + a1[8];
  result = sub_22FE42A44();
  v7 = a1[10];
  v8 = a2 + a1[9];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  return result;
}

uint64_t sub_22FE06584(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE05BA8(&qword_27DAE4DD0, type metadata accessor for SyncedPhotosFaceProto);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22FE06624(uint64_t a1)
{
  v2 = sub_22FE05BA8(&qword_27DAE4380, type metadata accessor for SyncedPhotosFaceProto);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22FE06690()
{
  sub_22FE05BA8(&qword_27DAE4380, type metadata accessor for SyncedPhotosFaceProto);

  return sub_22FE42C04();
}

uint64_t _s10PhotosFace06SyncedaB5ProtoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_22FDF2C1C(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SyncedPhotosFaceProto(0);
  v5 = v4[9];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if ((sub_22FDB655C(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (sub_22FDB6714(*(a1 + 24), *(a2 + 24)) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v11 = v4[10];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = v4[8];
  sub_22FE42A54();
  sub_22FE05BA8(&qword_27DAE44A0, MEMORY[0x277D216C8]);
  return sub_22FE43024() & 1;
}

void sub_22FE06AC4()
{
  sub_22FE06CE4(319, &qword_27DAE4878, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_22FE42A54();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FE06B94()
{
  sub_22FDF438C();
  if (v0 <= 0x3F)
  {
    sub_22FE06CE4(319, &qword_27DAE4878, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_22FE42A54();
      if (v2 <= 0x3F)
      {
        sub_22FE06CE4(319, &qword_27DAE4DC0, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_22FE06CE4(319, &qword_27DAE4DC8, MEMORY[0x277D84A28], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22FE06CE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t UUID.init(serialized:version:)(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
LABEL_17:
      sub_22FD91780();
      swift_allocError();
      *v13 = 1;
      swift_willThrow();
      return sub_22FD917D4(a1, a2);
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
    if (v4)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v4 != 2)
    {
      if (v4 != 1)
      {
        goto LABEL_22;
      }

      if (a1 > a1 >> 32)
      {
        goto LABEL_25;
      }

      v9 = sub_22FE42654();
      if (!v9)
      {
        goto LABEL_30;
      }

      v10 = v9;
      v11 = sub_22FE42684();
      if (__OFSUB__(a1, v11))
      {
        goto LABEL_27;
      }

      v12 = (a1 - v11 + v10);
      sub_22FE42674();
      if (v12)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_24;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v15 = *(a1 + 16);
    v16 = sub_22FE42654();
    if (!v16)
    {
      goto LABEL_28;
    }

    v17 = v16;
    v18 = sub_22FE42684();
    if (!__OFSUB__(v15, v18))
    {
      v12 = (v15 - v18 + v17);
      sub_22FE42674();
      if (!v12)
      {
        goto LABEL_29;
      }

LABEL_21:
      v19 = *v12;
      v20 = v12[1];
      v21 = v12[2];
      v22 = v12[3];
      v23 = v12[4];
      v24 = v12[5];
      v25 = v12[6];
      v26 = v12[7];
      v27 = v12[8];
      v28 = v12[9];
      v29 = v12[10];
      v30 = v12[11];
      v31 = v12[12];
      v32 = v12[13];
      v33 = v12[14];
      v34 = v12[15];
LABEL_22:
      sub_22FE42894();
      return sub_22FD917D4(a1, a2);
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_22FE42674();
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_22FE42674();
  __break(1u);
  return result;
}

uint64_t UUID.serialized(version:)()
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = sub_22FE428A4();
  v11 = v0;
  v12 = v1;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  sub_22FE428A4();
  result = sub_22FDB285C(&v10, 16);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t FixedWidthInteger.init(serialized:version:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v57 = a5;
  v65 = *MEMORY[0x277D85DE8];
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_22FE43A54() & 7) != 0)
  {
    goto LABEL_53;
  }

  v14 = sub_22FE43A54();
  v15 = v14 + 7;
  if (v14 >= 0)
  {
    v15 = v14;
  }

  v16 = a2 >> 62;
  v55 = a2 >> 62;
  v56 = a2;
  v54 = a1;
  v39[1] = v5;
  if ((a2 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(a2);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (v16 != 2)
  {
    if ((v14 + 7) <= 0xE)
    {
      v26 = *(*(*(a4 + 8) + 24) + 8);
      sub_22FE43A84();
      v25 = v54;
LABEL_24:
      result = sub_22FD917D4(v25, v56);
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  v20 = __OFSUB__(v18, v19);
  v17 = v18 - v19;
  if (v20)
  {
    __break(1u);
LABEL_11:
    LODWORD(v17) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_55;
    }

    v17 = v17;
  }

LABEL_13:
  v21 = v15 >> 3;
  if (v17 == v15 >> 3)
  {
    v22 = v14;
    v23 = *(*(*(a4 + 8) + 24) + 8);
    sub_22FE43A84();
    if (v55)
    {
      v24 = v22;
      v25 = v54;
      if (v55 == 2)
      {
        v29 = *(v54 + 16);
      }

      else
      {
        v29 = v54;
      }
    }

    else
    {
      v29 = 0;
      v24 = v22;
      v25 = v54;
    }

    if (v24 < -7)
    {
      goto LABEL_54;
    }

    if ((v24 + 7) < 0xF)
    {
      goto LABEL_24;
    }

    v52 = BYTE6(v56);
    v53 = v25;
    v31 = (v10 + 8);
    v50 = v25 >> 8;
    v51 = v25 >> 32;
    v48 = v25 >> 24;
    v49 = v25 >> 16;
    v46 = v25 >> 40;
    v47 = HIDWORD(v25);
    v44 = HIBYTE(v25);
    v45 = HIWORD(v25);
    v42 = v56 >> 16;
    v43 = v56 >> 8;
    v40 = HIDWORD(v56);
    v41 = v56 >> 24;
    while (1)
    {
      if (!v21)
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
      }

      v58 = 8;
      sub_22FE08978();
      sub_22FE437D4();
      if (v55 == 2)
      {
        break;
      }

      if (v55 == 1)
      {
        if (v29 < v53 || v29 >= v51)
        {
          goto LABEL_49;
        }

        v33 = sub_22FE42654();
        if (!v33)
        {
          goto LABEL_56;
        }

        v34 = v33;
        v35 = sub_22FE42684();
        v36 = v29 - v35;
        if (__OFSUB__(v29, v35))
        {
          goto LABEL_51;
        }

LABEL_27:
        v32 = *(v34 + v36);
        v25 = v54;
        goto LABEL_28;
      }

      if (v29 >= v52)
      {
        goto LABEL_47;
      }

      LOBYTE(v58) = v25;
      BYTE1(v58) = v50;
      BYTE2(v58) = v49;
      BYTE3(v58) = v48;
      BYTE4(v58) = v47;
      BYTE5(v58) = v46;
      BYTE6(v58) = v45;
      HIBYTE(v58) = v44;
      v59 = v56;
      v60 = v43;
      v61 = v42;
      v62 = v41;
      v63 = v40;
      v64 = BYTE5(v56);
      v32 = *(&v58 + v29);
LABEL_28:
      LOBYTE(v58) = v32;
      sub_22FE089CC();
      sub_22FE437E4();
      sub_22FE437C4();
      (*v31)(v13, a3);
      ++v29;
      if (!--v21)
      {
        goto LABEL_24;
      }
    }

    if (v29 < *(v25 + 16))
    {
      goto LABEL_48;
    }

    if (v29 >= *(v25 + 24))
    {
      goto LABEL_50;
    }

    v37 = sub_22FE42654();
    if (!v37)
    {
      goto LABEL_57;
    }

    v34 = v37;
    v38 = sub_22FE42684();
    v36 = v29 - v38;
    if (__OFSUB__(v29, v38))
    {
      goto LABEL_52;
    }

    goto LABEL_27;
  }

LABEL_20:
  sub_22FD91780();
  swift_allocError();
  *v27 = 1;
  swift_willThrow();
  result = sub_22FD917D4(v54, a2);
LABEL_25:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t FixedWidthInteger.serialized(version:)(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FE43A64();
  sub_22FE07724(v6, sub_22FE0765C, 0, a2, MEMORY[0x277D84A98], MEMORY[0x277CC9318], MEMORY[0x277D84AC0], v7);
  (*(v3 + 8))(v6, a2);
  result = v10[1];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FE0765C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = &a2[-result];
    if (a2 == result)
    {
      result = 0;
      v5 = 0xC000000000000000;
    }

    else if (v4 <= 14)
    {
      result = sub_22FE088C0(result, a2);
      v5 = v10 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = sub_22FE42694();
      v7 = *(v6 + 48);
      v8 = *(v6 + 52);
      swift_allocObject();
      v9 = sub_22FE42644();
      if (v4 >= 0x7FFFFFFF)
      {
        sub_22FE427A4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v4;
        v5 = v9 | 0x8000000000000000;
      }

      else
      {
        result = v4 << 32;
        v5 = v9 | 0x4000000000000000;
      }
    }

    *a3 = result;
    a3[1] = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22FE07724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20]();
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v13, v13 + *(*(v16 - 8) + 64), v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

uint64_t sub_22FE07870@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void)@<X5>, _BYTE *a4@<X8>)
{
  v8 = a3();
  result = sub_22FD917D4(a1, a2);
  if (!v4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_22FE078D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v7 = sub_22FE09144(a1, a2);
  result = sub_22FD917D4(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_22FE0792C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v7 = sub_22FE09454(a1, a2);
  result = sub_22FD917D4(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_22FE07988@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_22FE0971C(a1, a2);
  result = sub_22FD917D4(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t String.init(serialized:version:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_22FE430A4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_22FE43094();
  result = sub_22FE43084();
  if (v7)
  {
    v8 = result;
    sub_22FD917D4(a1, a2);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t String.serialized(version:)(uint64_t a1, uint64_t a2, unint64_t a3)
{

  return sub_22FDBF4C0(a2, a3);
}

uint64_t sub_22FE07AE8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22FE430A4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_22FE43094();
  result = sub_22FE43084();
  if (v9)
  {
    v10 = result;
    v11 = v9;
    result = sub_22FD917D4(a1, a2);
    *a3 = v10;
    a3[1] = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22FE07BA8()
{
  v2 = *v0;
  v1 = v0[1];

  return sub_22FDBF4C0(v2, v1);
}

uint64_t Array<A>.init(serialized:version:)(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_22FE42A74();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  v13 = *(v22 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v20 - v14;
  v21 = *a3;
  v26 = a1;
  v27 = a2;
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  sub_22FDB4380(a1, a2);
  v23 = a4;
  swift_getAssociatedConformanceWitness();
  sub_22FDF1538();
  v16 = v28;
  sub_22FE42BE4();
  if (v16)
  {
    sub_22FD917D4(a1, a2);
  }

  else
  {
    v17 = a1;
    LOBYTE(v24[0]) = v21;
    v18 = v22;
    *&v24[0] = (*(a5 + 32))(v15, v24, v23, a5);
    sub_22FE43354();
    swift_getWitnessTable();
    a1 = sub_22FE43364();
    sub_22FD917D4(v17, a2);
    (*(v18 + 8))(v15, AssociatedTypeWitness);
  }

  return a1;
}

uint64_t Array<A>.serialized(version:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v16 - v13;
  v17 = *a1;
  (*(a4 + 40))(a2, &v17, a3, a4, v12);
  if (!v4)
  {
    swift_getAssociatedConformanceWitness();
    a3 = sub_22FE42BD4();
    (*(v10 + 8))(v14, AssociatedTypeWitness);
  }

  return a3;
}

uint64_t Array<A>.init(serialized:version:)(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v10 = sub_22FE42A74();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = type metadata accessor for GenericListProto(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a3;
  v30[0] = a1;
  v30[1] = a2;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FE08A20();
  v17 = v12;
  v18 = sub_22FE42BE4();
  if (v5)
  {
    sub_22FD917D4(a1, a2);
  }

  else
  {
    v19 = *v15;
    v26[1] = v26;
    *&v27 = v19;
    MEMORY[0x28223BE20](v18);
    v20 = a5;
    v21 = v31;
    v26[-4] = v31;
    v26[-3] = v20;
    LOBYTE(v26[-2]) = v16;

    v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4DF0, &qword_22FE4E5C8);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
    v23 = sub_22FE08A9C();
    v24 = sub_22FDA5834(sub_22FE08A78, &v26[-6], v26[0], v21, v22, v23, MEMORY[0x277D84950], v30);

    *&v27 = v24;
    sub_22FE43354();
    swift_getWitnessTable();
    v17 = sub_22FE43364();
    sub_22FD917D4(a1, a2);
    sub_22FE08B00(v15);
  }

  return v17;
}

uint64_t sub_22FE08310(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a1;
  v10 = a1[1];
  v13 = a2;
  v11 = *(a4 + 8);
  sub_22FDB4380(v9, v10);
  result = v11(v9, v10, &v13, a3, a4);
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

uint64_t Array<A>.serialized(version:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for GenericListProto(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(v11) = *a1;
  v23[2] = a2;
  v20 = a3;
  v21 = a4;
  v22 = v11;
  v13 = sub_22FE43354();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
  WitnessTable = swift_getWitnessTable();
  v16 = sub_22FDA5834(sub_22FE08B5C, v19, v13, MEMORY[0x277CC9318], v14, WitnessTable, MEMORY[0x277D84950], v23);
  if (!v4)
  {
    MEMORY[0x28223BE20](v16);
    *&v19[-16] = v17;
    sub_22FE08A20();
    sub_22FE42C14();

    v9 = sub_22FE42BD4();
    sub_22FE08B00(v12);
  }

  return v9;
}

uint64_t sub_22FE085A4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a1 = a2;
  return result;
}

uint64_t Array<A>.gather(attachments:version:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_22FE43354();
  swift_getWitnessTable();
  return sub_22FE43224();
}

uint64_t Array<A>.save(attachments:version:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_22FE43354();
  swift_getWitnessTable();
  return sub_22FE43224();
}

uint64_t sub_22FE08724@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = *(a5 - 8);
  v10 = *a3;
  result = Array<A>.init(serialized:version:)(a1, a2, &v10, *(a4 + 16), v8);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_22FE0878C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *v4;
  v7 = *(a3 + 16);
  return Array<A>.gather(attachments:version:)(a1, a2);
}

uint64_t sub_22FE087A0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *v4;
  v7 = *(a3 + 16);
  return Array<A>.save(attachments:version:)(a1, a2);
}

uint64_t sub_22FE08854@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_22FE0885C()
{
  v1 = *v0;
  sub_22FDB4380(*v0, *(v0 + 8));
  return v1;
}

unint64_t sub_22FE088A0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE088C0(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_22FE08978()
{
  result = qword_27DAE4DE0;
  if (!qword_27DAE4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4DE0);
  }

  return result;
}

unint64_t sub_22FE089CC()
{
  result = qword_27DAE4DE8;
  if (!qword_27DAE4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4DE8);
  }

  return result;
}

unint64_t sub_22FE08A20()
{
  result = qword_27DAE4840;
  if (!qword_27DAE4840)
  {
    type metadata accessor for GenericListProto(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4840);
  }

  return result;
}

unint64_t sub_22FE08A9C()
{
  result = qword_27DAE4DF8;
  if (!qword_27DAE4DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE4DF0, &qword_22FE4E5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAE4DF8);
  }

  return result;
}

uint64_t sub_22FE08B00(uint64_t a1)
{
  v2 = type metadata accessor for GenericListProto(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FE08B5C@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v10 = *(v2 + 32);
  result = (*(v7 + 16))(&v10, v6);
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    *a2 = result;
    a2[1] = v9;
  }

  return result;
}

uint64_t sub_22FE08BC8(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
  return result;
}

uint64_t sub_22FE08C14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  return (*(v2 + 24))(v3, &v5, v1);
}

uint64_t sub_22FE08C70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  return (*(v2 + 32))(v3, &v5, v1);
}

uint64_t sub_22FE08CBC(uint64_t result, unint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_13;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 == 1)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 1)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_22FD91780();
      swift_allocError();
      *v8 = 1;
      result = swift_willThrow();
LABEL_31:
      v11 = *MEMORY[0x277D85DE8];
      return result;
    }

    goto LABEL_33;
  }

  if (BYTE6(a2) != 1)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (!v2)
  {
    v7 = 0;
LABEL_23:
    if (v7 < BYTE6(a2))
    {
      v12 = result;
      v13 = a2;
      v14 = BYTE2(a2);
      v15 = BYTE3(a2);
      v16 = BYTE4(a2);
      v17 = BYTE5(a2);
      result = *(&v12 + v7);
      if ((result & 0x80) != 0)
      {
        goto LABEL_25;
      }

      goto LABEL_31;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  if (v2 != 2)
  {
    goto LABEL_22;
  }

  v7 = *(result + 16);
  while (1)
  {
    if (v2 != 1)
    {
      goto LABEL_26;
    }

    if (v7 < result || v7 >= result >> 32)
    {
      goto LABEL_36;
    }

    result = sub_22FE42654();
    if (!result)
    {
      break;
    }

    v9 = result;
    result = sub_22FE42684();
    v2 = v7 - result;
    if (!__OFSUB__(v7, result))
    {
      while (1)
      {
        result = *(v9 + v2);
        if ((result & 0x80) == 0)
        {
          goto LABEL_31;
        }

LABEL_25:
        __break(1u);
LABEL_26:
        if (v7 < *(result + 16))
        {
          goto LABEL_35;
        }

        if (v7 >= *(result + 24))
        {
          goto LABEL_37;
        }

        result = sub_22FE42654();
        if (!result)
        {
          goto LABEL_40;
        }

        v9 = result;
        v10 = sub_22FE42684();
        v2 = v7 - v10;
        if (__OFSUB__(v7, v10))
        {
          goto LABEL_38;
        }
      }
    }

    __break(1u);
LABEL_22:
    v7 = result;
    if (!v2)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_22FE08F04(uint64_t a1, unint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_13;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 == 1)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 1)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_22FD91780();
      swift_allocError();
      *v8 = 1;
      result = swift_willThrow();
LABEL_30:
      v12 = *MEMORY[0x277D85DE8];
      return result;
    }

    goto LABEL_32;
  }

  if (BYTE6(a2) != 1)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (!v2)
  {
    v7 = 0;
LABEL_23:
    if (v7 < BYTE6(a2))
    {
      v13 = a1;
      v14 = a2;
      v15 = BYTE2(a2);
      v16 = BYTE3(a2);
      v17 = BYTE4(a2);
      v18 = BYTE5(a2);
      result = *(&v13 + v7);
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (v2 != 2)
  {
    goto LABEL_22;
  }

  v7 = *(a1 + 16);
  while (1)
  {
    if (v2 != 1)
    {
      if (v7 >= *(a1 + 16))
      {
        if (v7 < *(a1 + 24))
        {
          result = sub_22FE42654();
          if (!result)
          {
            goto LABEL_39;
          }

          v10 = result;
          v11 = sub_22FE42684();
          v2 = v7 - v11;
          if (!__OFSUB__(v7, v11))
          {
LABEL_29:
            result = *(v10 + v2);
            goto LABEL_30;
          }

LABEL_37:
          __break(1u);
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v7 < a1 || v7 >= a1 >> 32)
    {
      goto LABEL_35;
    }

    result = sub_22FE42654();
    if (!result)
    {
      break;
    }

    v10 = result;
    a1 = sub_22FE42684();
    v2 = v7 - a1;
    if (!__OFSUB__(v7, a1))
    {
      goto LABEL_29;
    }

    __break(1u);
LABEL_22:
    v7 = a1;
    if (!v2)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_22FE09144(uint64_t a1, unint64_t a2)
{
  v2 = BYTE6(a2);
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
LABEL_24:
      sub_22FD91780();
      swift_allocError();
      *v16 = 1;
      result = swift_willThrow();
LABEL_39:
      v23 = *MEMORY[0x277D85DE8];
      return result;
    }

    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 == 2)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v3)
  {
    goto LABEL_22;
  }

  if (BYTE6(a2) != 2)
  {
    goto LABEL_24;
  }

  while (1)
  {
LABEL_8:
    v8 = a1;
    if (!v3)
    {
      if (v2 && v2 > 1uLL)
      {
        v14 = a1;
        v17 = BYTE1(a1);
LABEL_38:
        result = v17 | (v14 << 8);
        goto LABEL_39;
      }

      goto LABEL_42;
    }

    if (v3 == 2)
    {
      v9 = *(a1 + 16);
    }

    else
    {
      v9 = a1;
    }

    if (v3 != 1)
    {
      if (v9 >= *(a1 + 16))
      {
        if (v9 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = a1;
        result = sub_22FE42654();
        if (!result)
        {
          goto LABEL_48;
        }

        v19 = result;
        v20 = sub_22FE42684();
        if (__OFSUB__(v9, v20))
        {
          goto LABEL_46;
        }

        v21 = v9 + 1;
        if (v9 + 1 >= *(v18 + 16))
        {
          if (v21 < *(v18 + 24))
          {
            v14 = *(v19 + v9 - v20);
            result = sub_22FE42654();
            if (!result)
            {
              goto LABEL_48;
            }

            v15 = result;
            v22 = sub_22FE42684();
            v3 = v21 - v22;
            if (!__OFSUB__(v21, v22))
            {
LABEL_37:
              v17 = *(v15 + v3);
              goto LABEL_38;
            }

LABEL_46:
            __break(1u);
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v9 < a1)
    {
      goto LABEL_43;
    }

    v10 = a1 >> 32;
    if (v9 >= a1 >> 32)
    {
      goto LABEL_43;
    }

    result = sub_22FE42654();
    if (!result)
    {
      goto LABEL_47;
    }

    v12 = result;
    a1 = sub_22FE42684();
    v3 = v9 - a1;
    if (!__OFSUB__(v9, a1))
    {
      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_41;
    }

    if (HIDWORD(a1) - a1 != 2)
    {
      goto LABEL_24;
    }
  }

  v13 = v9 + 1;
  if (v9 + 1 < v8 || v13 >= v10)
  {
    goto LABEL_43;
  }

  v14 = *(v12 + v3);
  result = sub_22FE42654();
  if (result)
  {
    v15 = result;
    a1 = sub_22FE42684();
    v3 = v13 - a1;
    if (!__OFSUB__(v13, a1))
    {
      goto LABEL_37;
    }

    goto LABEL_21;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_22FE09454(unint64_t a1, unint64_t a2)
{
  v3 = a2;
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_13;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (v8)
    {
      goto LABEL_41;
    }

    if (v9 != 4)
    {
      goto LABEL_13;
    }

LABEL_8:
    v36 = a1;
    if (v5)
    {
      if (v5 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v2 = 0;
    v34 = a1 >> 32;
    v35 = BYTE6(a2);
    v12 = 4;
    v32 = a1 >> 16;
    v33 = a1 >> 8;
    v30 = HIDWORD(a1);
    v31 = a1 >> 24;
    v28 = HIWORD(a1);
    v29 = a1 >> 40;
    v26 = a2 >> 8;
    v27 = HIBYTE(a1);
    v24 = a2 >> 24;
    v25 = a2 >> 16;
    v23 = HIDWORD(a2);
    v13 = a2 >> 40;
    while (v5 != 1)
    {
      if (v5)
      {
        if (v10 < *(a1 + 16))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
        }

        if (v10 >= *(a1 + 24))
        {
          goto LABEL_39;
        }

        v19 = sub_22FE42654();
        if (!v19)
        {
          goto LABEL_44;
        }

        v16 = v19;
        v20 = sub_22FE42684();
        v18 = v10 - v20;
        if (__OFSUB__(v10, v20))
        {
          __break(1u);
          goto LABEL_35;
        }

        goto LABEL_17;
      }

      if (v10 >= v35)
      {
        goto LABEL_37;
      }

      v37[0] = a1;
      v37[1] = v33;
      v37[2] = v32;
      v37[3] = v31;
      v37[4] = v30;
      v37[5] = v29;
      v37[6] = v28;
      v37[7] = v27;
      v37[8] = v3;
      v37[9] = v26;
      v37[10] = v25;
      v37[11] = v24;
      v37[12] = v23;
      v37[13] = v13;
      v14 = v37[v10];
LABEL_18:
      v2 = (v2 << 8) | v14;
      ++v10;
      if (!--v12)
      {
        goto LABEL_35;
      }
    }

    if (v10 < v36 || v10 >= v34)
    {
      goto LABEL_38;
    }

    v15 = sub_22FE42654();
    if (!v15)
    {
      goto LABEL_43;
    }

    v16 = v15;
    v17 = sub_22FE42684();
    v18 = v10 - v17;
    if (__OFSUB__(v10, v17))
    {
      goto LABEL_40;
    }

LABEL_17:
    v14 = *(v16 + v18);
    goto LABEL_18;
  }

  if (!v5)
  {
    if (BYTE6(a2) != 4)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_42;
  }

  if (HIDWORD(a1) - a1 == 4)
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_22FD91780();
  swift_allocError();
  *v11 = 1;
  swift_willThrow();
LABEL_35:
  v21 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_22FE0971C(unint64_t a1, unint64_t a2)
{
  v3 = a2;
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_13;
    }

    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (v8)
    {
      goto LABEL_41;
    }

    if (v9 != 8)
    {
      goto LABEL_13;
    }

LABEL_8:
    v36 = a1;
    if (v5)
    {
      if (v5 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v2 = 0;
    v34 = a1 >> 32;
    v35 = BYTE6(a2);
    v12 = 8;
    v32 = a1 >> 16;
    v33 = a1 >> 8;
    v30 = HIDWORD(a1);
    v31 = a1 >> 24;
    v28 = HIWORD(a1);
    v29 = a1 >> 40;
    v26 = a2 >> 8;
    v27 = HIBYTE(a1);
    v24 = a2 >> 24;
    v25 = a2 >> 16;
    v23 = HIDWORD(a2);
    v13 = a2 >> 40;
    while (v5 != 1)
    {
      if (v5)
      {
        if (v10 < *(a1 + 16))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
        }

        if (v10 >= *(a1 + 24))
        {
          goto LABEL_39;
        }

        v19 = sub_22FE42654();
        if (!v19)
        {
          goto LABEL_44;
        }

        v16 = v19;
        v20 = sub_22FE42684();
        v18 = v10 - v20;
        if (__OFSUB__(v10, v20))
        {
          __break(1u);
          goto LABEL_35;
        }

        goto LABEL_17;
      }

      if (v10 >= v35)
      {
        goto LABEL_37;
      }

      v37[0] = a1;
      v37[1] = v33;
      v37[2] = v32;
      v37[3] = v31;
      v37[4] = v30;
      v37[5] = v29;
      v37[6] = v28;
      v37[7] = v27;
      v37[8] = v3;
      v37[9] = v26;
      v37[10] = v25;
      v37[11] = v24;
      v37[12] = v23;
      v37[13] = v13;
      v14 = v37[v10];
LABEL_18:
      v2 = (v2 << 8) | v14;
      ++v10;
      if (!--v12)
      {
        goto LABEL_35;
      }
    }

    if (v10 < v36 || v10 >= v34)
    {
      goto LABEL_38;
    }

    v15 = sub_22FE42654();
    if (!v15)
    {
      goto LABEL_43;
    }

    v16 = v15;
    v17 = sub_22FE42684();
    v18 = v10 - v17;
    if (__OFSUB__(v10, v17))
    {
      goto LABEL_40;
    }

LABEL_17:
    v14 = *(v16 + v18);
    goto LABEL_18;
  }

  if (!v5)
  {
    if (BYTE6(a2) != 8)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_42;
  }

  if (HIDWORD(a1) - a1 == 8)
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_22FD91780();
  swift_allocError();
  *v11 = 1;
  swift_willThrow();
LABEL_35:
  v21 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_22FE09A2C()
{
  v2 = *MEMORY[0x277D85DE8];
  result = sub_22FD71B10();
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FE09A78()
{
  v2 = *MEMORY[0x277D85DE8];
  result = sub_22FD71B9C();
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FE09AC4()
{
  v2 = *MEMORY[0x277D85DE8];
  result = sub_22FD71C24();
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FE09B10()
{
  v2 = *MEMORY[0x277D85DE8];
  result = sub_22FD71A8C();
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FE09B5C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t BroadcastSequence.__allocating_init()()
{
  v0 = swift_allocObject();
  BroadcastSequence.init()();
  return v0;
}

uint64_t BroadcastSequence.init()()
{
  v1 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  sub_22FE434D4();
  *(v0 + 16) = sub_22FE42F34();
  *(v0 + 24) = 0;
  return v0;
}

uint64_t sub_22FE09C50(uint64_t a1)
{
  v27 = a1;
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  v25 = &v20 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v24 = sub_22FE43494();
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v24);
  v23 = &v20 - v8;
  v26 = v2;
  v9 = sub_22FE434D4();
  v10 = *(v9 - 8);
  v20 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - v11;
  swift_beginAccess();
  v13 = v1[2];

  if (!sub_22FE43304())
  {
  }

  v14 = 0;
  v21 = (v3 + 16);
  v22 = (v10 + 16);
  v15 = (v6 + 8);
  while (1)
  {
    v16 = sub_22FE432F4();
    sub_22FE432B4();
    if (v16)
    {
      (*(v10 + 16))(v12, v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, v9);
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_22FE43924();
    if (v20 != 8)
    {
      break;
    }

    v28 = result;
    (*v22)(v12, &v28, v9);
    swift_unknownObjectRelease();
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
LABEL_10:
      __break(1u);
    }

LABEL_5:
    (*v21)(v25, v27, v26);
    v18 = v23;
    sub_22FE434B4();
    (*v15)(v18, v24);
    (*(v10 + 8))(v12, v9);
    ++v14;
    if (v17 == sub_22FE43304())
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE09FD4(void *a1)
{
  v2 = v1;
  v4 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v5 = sub_22FE434D4();
  v6 = *(v5 - 8);
  v18 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  swift_beginAccess();
  v9 = *(v2 + 16);

  if (!sub_22FE43304())
  {
LABEL_11:

    v15 = sub_22FE432D4();
    swift_beginAccess();
    v16 = *(v2 + 16);
    *(v2 + 16) = v15;
  }

  v10 = 0;
  while (1)
  {
    v11 = sub_22FE432F4();
    sub_22FE432B4();
    if (v11)
    {
      (*(v6 + 16))(v8, v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v5);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_22FE43924();
    if (v18 != 8)
    {
      break;
    }

    v19 = result;
    (*(v6 + 16))(v8, &v19, v5);
    swift_unknownObjectRelease();
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_5:
    v19 = a1;
    v13 = a1;
    sub_22FE434C4();
    (*(v6 + 8))(v8, v5);
    ++v10;
    if (v12 == sub_22FE43304())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FE0A244()
{
  v1 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v2 = sub_22FE434A4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v8 - v5;
  if (v0[24] == 1)
  {
    MEMORY[0x28223BE20](v4);
    *(&v8 - 2) = v1;
  }

  sub_22FE0A494(v6);
  return sub_22FE434F4();
}

uint64_t sub_22FE0A39C()
{
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE0A868();
  sub_22FE43374();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  sub_22FE434D4();
  return sub_22FE434C4();
}

uint64_t sub_22FE0A494@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v3 = sub_22FE434A4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22FE0A538(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v4 = sub_22FE434D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  if (qword_28148B410 != -1)
  {
    swift_once();
  }

  type metadata accessor for CommunicationActor();
  sub_22FE0A868();
  sub_22FE43374();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v5 + 16))(v8, a1, v4);
  swift_beginAccess();
  sub_22FE43354();
  sub_22FE43324();
  return swift_endAccess();
}

uint64_t BroadcastSequence.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t BroadcastSequence.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_22FE0A868()
{
  result = qword_28148B408;
  if (!qword_28148B408)
  {
    type metadata accessor for CommunicationActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148B408);
  }

  return result;
}

uint64_t AsyncSequence.collect()(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_22FE0A8E4);
}

uint64_t sub_22FE0A8E4()
{
  v1 = v0[4];
  v2 = v0[5];
  swift_getAssociatedTypeWitness();
  v0[3] = sub_22FE42F34();
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D85860] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  v6 = sub_22FE43354();
  *v5 = v0;
  v5[1] = sub_22FE0AA08;
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];

  return MEMORY[0x282200540](v0 + 2, v0 + 3, &unk_22FE4E710, v3, v9, v6, v7);
}

uint64_t sub_22FE0AA08()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_22FDC3644;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_22FE0AB24;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_22FE0AB40(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[4] = AssociatedTypeWitness;
  v4 = *(AssociatedTypeWitness - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FE0AC18);
}

uint64_t sub_22FE0AC18()
{
  v1 = v0[2];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  sub_22FE43354();
  sub_22FE43324();

  v2 = v0[1];

  return v2();
}

uint64_t sub_22FE0ACC0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22FD73F54;

  return sub_22FE0AB40(a1, a2);
}

uint64_t DestructableSequence.__allocating_init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  DestructableSequence.init(_:_:)(a1, a2, a3);
  return v9;
}

uint64_t DestructableSequence.init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(*v3 + 80) - 8) + 32))(v3 + *(*v3 + 96), a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE4E00, &qword_22FE4E720);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v3 + *(*v3 + 104)) = v6;
  v7 = (v3 + *(*v3 + 112));
  *v7 = a2;
  v7[1] = a3;
  return v3;
}

uint64_t DestructableSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = v5[10];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v18 - v9;
  v11 = v5[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v16 = &v18 - v15;
  (*(v7 + 16))(v10, v3 + v5[12], v6, v14);
  sub_22FE43464();
  DestructableIterator.init(_:_:)(v16, v3, a2);
}

uint64_t DestructableIterator.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a2 + 88);
  v7 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a3, a1, AssociatedTypeWitness);
  result = type metadata accessor for DestructableIterator();
  *(a3 + *(result + 36)) = a2;
  return result;
}

atomic_uchar *sub_22FE0B11C()
{
  result = (*(**(v0 + *(*v0 + 104)) + 136))();
  if ((atomic_exchange(result, 1u) & 1) == 0)
  {
    v2 = v0 + *(*v0 + 112);
    v3 = *(v2 + 8);
    return (*v2)();
  }

  return result;
}

uint64_t *DestructableSequence.deinit()
{
  v1 = *v0;
  sub_22FE0B11C();
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v2 = *(v0 + *(*v0 + 104));

  v3 = *(v0 + *(*v0 + 112) + 8);

  return v0;
}

uint64_t DestructableSequence.__deallocating_deinit()
{
  DestructableSequence.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22FE0B2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  DestructableSequence.makeAsyncIterator()(a1, a2);
}

uint64_t DestructableIterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 24);
  v3[6] = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v3[7] = v8;
  *v8 = v3;
  v8[1] = sub_22FE0B404;

  return MEMORY[0x282200308](a1, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_22FE0B404()
{
  v2 = *(*v1 + 56);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22FE0B534);
  }
}

uint64_t sub_22FE0B534()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v3, 1, AssociatedTypeWitness) == 1)
  {
    v5 = *(v0[4] + *(v0[3] + 36));
    sub_22FE0B11C();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_22FE0B618(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD73F54;

  return DestructableIterator.next()(a1, a2);
}

uint64_t sub_22FE0B6C0(uint64_t a1)
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

uint64_t sub_22FE0B7B4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for DestructableSequence();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22FE0B864(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_28:
    if (v10 < 0x7FFFFFFF)
    {
      v22 = *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }

    else
    {
      v21 = *(v9 + 48);

      return v21(a1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v11 + (v14 | v20) + 1;
}

void sub_22FE0B9F4(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v14 = a3 - v12 + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a3)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (a2 > v12)
  {
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a2 - v12;
    }

    else
    {
      v18 = 1;
    }

    if (((v11 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v19 = ~v12 + a2;
      bzero(a1, v13);
      *a1 = v19;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        *(a1 + v13) = v18;
      }

      else
      {
        *(a1 + v13) = v18;
      }
    }

    else if (v17)
    {
      *(a1 + v13) = v18;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v13) = 0;
  }

  else if (v17)
  {
    *(a1 + v13) = 0;
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
  if (v10 < 0x7FFFFFFF)
  {
    v21 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = (a2 - 1);
    }

    *v21 = v22;
  }

  else
  {
    v20 = *(v9 + 56);

    v20(a1, a2);
  }
}

uint64_t sub_22FE0BBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_22FE0D520(a3, v27 - v11);
  v13 = sub_22FE43404();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_22FE0D590(v12);
  }

  else
  {
    sub_22FE433F4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22FE43374();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22FE430C4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_22FE0D590(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22FE0D590(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t generateElements<A>(isolation:_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  type metadata accessor for AsyncThrowingChannel();

  v10 = AsyncThrowingChannel.__allocating_init()();
  v11 = sub_22FE43404();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = v10;

  v13 = sub_22FE0BBD0(0, 0, v9, &unk_22FE4E830, v12);

  swift_getWitnessTable();
  type metadata accessor for DestructableSequence();
  v16 = v10;
  result = DestructableSequence.__allocating_init(_:_:)(&v16, sub_22FE0D37C, v13);
  *a3 = result;
  return result;
}

uint64_t sub_22FE0C080(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v7 = *(a5 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v5[6] = v9;
  v13 = (a3 + *a3);
  v10 = a3[1];
  v11 = swift_task_alloc();
  v5[7] = v11;
  *v11 = v5;
  v11[1] = sub_22FE0C1D8;

  return v13(v9);
}

uint64_t sub_22FE0C1D8()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FE0C558);
  }

  else
  {
    v9 = (v3[2] + *v3[2]);
    v4 = *(v3[2] + 4);
    v5 = swift_task_alloc();
    v3[9] = v5;
    *v5 = v3;
    v5[1] = sub_22FE0C3B0;
    v6 = v3[3];
    v7 = v3[6];

    return v9(v7);
  }
}

uint64_t sub_22FE0C3B0()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *v1;
  v6[10] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FD97814);
  }

  else
  {
    v7 = v6[6];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_22FE0C558()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FE0C5DC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t *a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a2;

  generateElements<A>(isolation:_:)(a4, v10, a5);
}

uint64_t sub_22FE0C668(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a2;
  v5[5] = a5;
  v5[3] = a1;
  v7 = *(a5 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();
  v11 = (a3 + *a3);
  v8 = a3[1];
  v9 = swift_task_alloc();
  v5[9] = v9;
  *v9 = v5;
  v9[1] = sub_22FE0C7B4;

  return v11();
}

uint64_t sub_22FE0C7B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {
    v6 = *(v3 + 64);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22FE0C904);
  }
}

uint64_t sub_22FE0C904()
{
  v1 = v0[10];
  v2 = v0[5];
  if (sub_22FE43304())
  {
    v3 = v0[10];
    v4 = v0[5];
    v5 = sub_22FE432F4();
    sub_22FE432B4();
    if (v5)
    {
      (*(v0[6] + 16))(v0[8], v0[10] + ((*(v0[6] + 80) + 32) & ~*(v0[6] + 80)), v0[5]);
    }

    else
    {
      v14 = v0[10];
      v15 = v0[7];
      v16 = v0[5];
      result = sub_22FE43924();
      if (v15 != 8)
      {
        __break(1u);
        return result;
      }

      v17 = v0[8];
      v18 = v0[5];
      v19 = v0[6];
      v0[2] = result;
      (*(v19 + 16))(v17, v0 + 2, v18);
      swift_unknownObjectRelease();
    }

    v0[11] = 1;
    v20 = (v0[3] + *v0[3]);
    v6 = *(v0[3] + 4);
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_22FE0CB14;
    v8 = v0[8];
    v9 = v0[4];

    return v20(v8);
  }

  else
  {
    v11 = v0[10];
    v12 = v0[8];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_22FE0CB14()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[10];
    (*(v2[6] + 8))(v2[8], v2[5]);

    v5 = sub_22FE0CE8C;
  }

  else
  {
    (*(v2[6] + 8))(v2[8], v2[5]);
    v5 = sub_22FE0CC64;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_22FE0CC64()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[5];
  if (v2 == sub_22FE43304())
  {
    v4 = v0[10];
    v5 = v0[8];

    v6 = v0[1];

    return v6();
  }

  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[5];
  v11 = sub_22FE432F4();
  sub_22FE432B4();
  if (v11)
  {
    result = (*(v0[6] + 16))(v0[8], v0[10] + ((*(v0[6] + 80) + 32) & ~*(v0[6] + 80)) + *(v0[6] + 72) * v9, v0[5]);
  }

  else
  {
    v16 = v0[7];
    v17 = v0[5];
    result = sub_22FE43924();
    if (v16 != 8)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v18 = v0[8];
    v19 = v0[5];
    v20 = v0[6];
    v0[2] = result;
    (*(v20 + 16))(v18, v0 + 2, v19);
    result = swift_unknownObjectRelease();
  }

  v0[11] = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = (v0[3] + *v0[3]);
  v12 = *(v0[3] + 4);
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_22FE0CB14;
  v14 = v0[8];
  v15 = v0[4];

  return v21(v14);
}

uint64_t sub_22FE0CE8C()
{
  v1 = v0[13];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FE0CEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22FE0CF14);
}

uint64_t sub_22FE0CF14()
{
  v6 = (v0[2] + *v0[2]);
  v1 = *(v0[2] + 4);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22FE0D014;
  v4 = v0[3];
  v3 = v0[4];

  return v6(&unk_22FE4E868, v3);
}

uint64_t sub_22FE0D014()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_22FE0D188;
  }

  else
  {
    v3 = sub_22FE0D128;
  }

  return MEMORY[0x2822009F8](v3);
}