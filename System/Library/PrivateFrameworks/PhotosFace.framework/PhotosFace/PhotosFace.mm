uint64_t sub_22FD6EA28()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_22FD6EAF8()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t sub_22FD6EBD8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22FD6EC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FE428C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22FE42854();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 92) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_22FD6ED1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22FE428C4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22FE42854();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 92) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22FD6EE28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2B08, qword_22FE48DB0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FD6EEA0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2B08, qword_22FE48DB0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22FD6EF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE428C4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22FD6EF98(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE428C4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22FD6F010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FE428C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FD6F0D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FE428C4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FD6F18C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE428C4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22FD6F1F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE428C4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22FD6F268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FE428C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FD6F324(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FE428C4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FD6F3DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22FD917D4(a1, a2);
  }

  return a1;
}

uint64_t sub_22FD6F3F0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_22FD6F430()
{
  v1 = (type metadata accessor for AlbumID() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);

  v5 = sub_22FE428C4();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(v0 + v2 + v1[7] + 8);

  return swift_deallocObject();
}

uint64_t sub_22FD6F530()
{
  v1 = *(type metadata accessor for DailyID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);

  v5 = sub_22FE428C4();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);

  return swift_deallocObject();
}

uint64_t sub_22FD6F64C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_22FD6F6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FE428C4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22FE42854();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22FD6F7E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22FE428C4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22FE42854();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 44)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22FD6F8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 52));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_22FD6FA14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for StoredPhotoLayout.ImageLocation(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE42D8, &unk_22FE4BA30);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 52)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22FD6FB28(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE42774();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FD6FB94(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22FE42774();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22FD6FC14(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FE42774();
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

uint64_t sub_22FD6FC80(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22FE42774();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22FD6FD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22FD6FDF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE4300, &qword_22FE4AB28);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_22FD6FEBC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22FE43A14();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_22FD6FF68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22FE43A14();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FD7000C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_22FD7004C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = sub_22FE42A74();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = type metadata accessor for StoredPhotoProto(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v19 - v16;
  v21 = a1;
  v22 = a2;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_22FDB4380(a1, a2);
  sub_22FE42A64();
  sub_22FDF19D0(&qword_27DAE4338, type metadata accessor for StoredPhotoProto);
  sub_22FE42BE4();
  if (v4)
  {
    return sub_22FD917D4(a1, a2);
  }

  sub_22FDF1A78(v17, v14, type metadata accessor for StoredPhotoProto);
  LOBYTE(v19[0]) = a3;
  StoredPhoto.init(protobuf:version:)(v14, v19, a4);
  sub_22FD917D4(a1, a2);
  return sub_22FDF1A18(v17, type metadata accessor for StoredPhotoProto);
}

uint64_t sub_22FD70264(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22FE42A54();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FD70310(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FE42A54();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FD703B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 20);
  return sub_22FE42A44();
}

uint64_t sub_22FD70400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FE42A54();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22FD704B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FE42A54();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FD70564@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for FetchFaceRequestProto(0);
  v5 = (a1 + *(result + 24));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_22FD705AC(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for FetchFaceRequestProto(0);
  v5 = a2 + *(result + 24);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t sub_22FD705E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FE42A54();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22FD706A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FE42A54();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FD7074C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22FE42A54();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FD707F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FE42A54();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FD708AC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for MessageProto(0);
  v5 = (a1 + *(result + 36));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_22FD708F4(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for MessageProto(0);
  v5 = a2 + *(result + 36);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t sub_22FD70930@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = type metadata accessor for MessageProto(0);
  v5 = (a1 + *(result + 40));
  if (*(v5 + 4))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_22FD70978(int *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for MessageProto(0);
  v5 = a2 + *(result + 40);
  *v5 = v3;
  *(v5 + 4) = 0;
  return result;
}

uint64_t sub_22FD709B4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for MessageProto(0);
  *a2 = *(a1 + *(result + 44)) & 1;
  return result;
}

uint64_t sub_22FD709F0(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for MessageProto(0);
  *(a2 + *(result + 44)) = v3;
  return result;
}

uint64_t sub_22FD70A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FE42A54();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44));
    if (v12 >= 2)
    {
      v13 = ((v12 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v13 = -2;
    }

    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_22FD70B00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FE42A54();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44)) = a2 + 2;
  }

  return result;
}

uint64_t sub_22FD70BBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22FE42A54();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FD70C68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FE42A54();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FD70D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FE42A54();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FD70DB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FE42A54();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FD70E64@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for StoredPhotoProto(0);
  v5 = a1 + *(result + 44);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_22FD70EB0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for StoredPhotoProto(0);
  v5 = a2 + *(result + 44);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_22FD70FD0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for StoredPhotoLayoutProto(0) + 20));
  v4 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__timePosition;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22FD71130@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for StoredPhotoLayoutProto(0) + 20));
  v4 = OBJC_IVAR____TtCV10PhotosFace22StoredPhotoLayoutProtoP33_AB2BD396CE90CE0850AF56485F0C251613_StorageClass__userEdited;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22FD7119C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FE42A54();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FD71248(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FE42A54();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FD712EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FE42A54();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_22FD713BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FE42A54();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_22FD7147C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FE42A54();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FD71538(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FE42A54();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FD715F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = sub_22FE42A54();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22FD71668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = sub_22FE42A54();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22FD716E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for SyncedPhotosFaceProto(0);
  v5 = (a1 + *(result + 36));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_22FD7172C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for SyncedPhotosFaceProto(0);
  v5 = a2 + *(result + 36);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_22FD71768@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = type metadata accessor for SyncedPhotosFaceProto(0);
  v5 = (a1 + *(result + 40));
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_22FD717B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for SyncedPhotosFaceProto(0);
  v5 = a2 + *(result + 40);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_22FD717EC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22FE42A54();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_22FD71898(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22FE42A54();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FD7193C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FE42A54();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FD719E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FE42A54();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FD71A8C()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = *v0;
  result = sub_22FDB285C(&v3, 1);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FD71B10()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = bswap32(*v0) >> 16;
  result = sub_22FDB285C(&v3, 2);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FD71B9C()
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = bswap32(*v0);
  result = sub_22FDB285C(&v3, 4);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FD71C24()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = bswap64(*v0);
  result = sub_22FDB285C(v3, 8);
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FD71C94(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  sub_22FE434E4();

  return swift_getWitnessTable();
}

uint64_t sub_22FD71D08()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_22FD71D50()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_22FD71D88(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  type metadata accessor for AsyncThrowingChannel();
  swift_getWitnessTable();
  type metadata accessor for DestructableSequence();

  return swift_getWitnessTable();
}

uint64_t sub_22FD71E2C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_22FD71E80()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_22FD71EB8()
{
  v1 = *(v0 + 4);
  v2 = *(*(v0 + 6) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *(v0 + 8);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_22FD71FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_22FD72034()
{
  swift_getWitnessTable();

  return sub_22FE43574();
}

uint64_t sub_22FD720B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_22FD72280()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_22FD722B8()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_22FD722F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_22FD723B0()
{
  v1 = v0[3];

  sub_22FD917D4(v0[4], v0[5]);

  return swift_deallocObject();
}

uint64_t sub_22FD72400()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_22FD72438()
{
  v1 = sub_22FE42E84();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 44) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_22FD72504()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  sub_22FD917D4(v0[7], v0[8]);
  v3 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_22FD72558()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE5340, &qword_22FE4F800);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_22FD72694()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_22FD726CC()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_22FD72704()
{
  v1 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_22FD7273C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 56);

  (*(v2 + 8))(v0 + v3, v1);
  sub_22FD917D4(*(v0 + v4), *(v0 + v4 + 8));

  return swift_deallocObject();
}

uint64_t sub_22FD72854()
{
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  v7 = *(v0 + 48);
  type metadata accessor for XPCMessageCenter.XPCResponse();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v1 = sub_22FE433A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 56) & ~*(v2 + 80)), v1);
  return swift_deallocObject();
}

uint64_t sub_22FD7291C()
{
  v1 = sub_22FE42E84();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 84) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 72);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_22FD729E8()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = (((*(v4 + 64) + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 2);
  swift_unknownObjectRelease();
  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);
  v9 = *&v0[v6];

  sub_22FD917D4(*&v0[v7], *&v0[v7 + 8]);
  v10 = *&v0[(v7 + 23) & 0xFFFFFFFFFFFFFFF8];

  return swift_deallocObject();
}

uint64_t sub_22FD72B0C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_22FD72B4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_22FD72BA4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void *sub_22FD72BC8(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

uint64_t sub_22FD72BF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22FD72C14(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t AsyncSequence<>.buffer(policy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v8;
  v12 = *(v8 + 8);
  (*(v6 + 16))(v10, v3, a2);
  (*(v6 + 32))(a3, v10, a2);
  result = type metadata accessor for AsyncBufferSequence();
  v14 = a3 + *(result + 36);
  *v14 = v11;
  *(v14 + 8) = v12;
  return result;
}

uint64_t static AsyncBufferSequencePolicy.bounded(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t static AsyncBufferSequencePolicy.bufferingLatest(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
    *(a2 + 8) = 1;
  }

  return result;
}

uint64_t static AsyncBufferSequencePolicy.bufferingOldest(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
    *(a2 + 8) = 2;
  }

  return result;
}

uint64_t AsyncBufferSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 24);
  v12 = type metadata accessor for AsyncBufferSequence.StorageType();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v24 - v15);
  v17 = v2 + *(a1 + 36);
  v18 = *v17;
  v19 = *(v17 + 8);
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      type metadata accessor for UnboundedBufferStorage();
      *v16 = sub_22FD83C40(v2, 0, 2);
      goto LABEL_13;
    }

    if (v18 <= 0)
    {
      goto LABEL_11;
    }

    type metadata accessor for UnboundedBufferStorage();
    v20 = v2;
    v21 = v18;
    v22 = 1;
    goto LABEL_10;
  }

  if (v19)
  {
    if (v18 < 1)
    {
      goto LABEL_11;
    }

    type metadata accessor for UnboundedBufferStorage();
    v20 = v2;
    v21 = v18;
    v22 = 0;
LABEL_10:
    *v16 = sub_22FD83C40(v20, v21, v22);
    goto LABEL_13;
  }

  if (v18 < 1)
  {
LABEL_11:
    (*(v6 + 16))(v10, v2, v5);
    sub_22FE43464();
    goto LABEL_13;
  }

  type metadata accessor for BoundedBufferStorage();
  *v16 = sub_22FD7D97C(v2, v18);
LABEL_13:
  swift_storeEnumTagMultiPayload();
  return (*(v13 + 32))(a2, v16, v12);
}

uint64_t AsyncBufferSequence.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *(a2 + 24);
  v3[5] = *(a2 + 16);
  v3[6] = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v3[7] = sub_22FE43E14();
  v4 = sub_22FE43744();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v7 = sub_22FE43744();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[15] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v3[16] = v11;
  v12 = *(v11 + 64) + 15;
  v3[17] = swift_task_alloc();
  v13 = type metadata accessor for AsyncBufferSequence.StorageType();
  v3[18] = v13;
  v14 = *(v13 - 8);
  v3[19] = v14;
  v15 = *(v14 + 64) + 15;
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD73308);
}

uint64_t sub_22FD73308()
{
  (*(v0[19] + 16))(v0[20], v0[3], v0[18]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[20];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v0[25] = *v2;
      v3 = swift_task_alloc();
      v0[26] = v3;
      *v3 = v0;
      v3[1] = sub_22FD73764;
      v4 = v0[11];

      return sub_22FD7AC58(v4);
    }

    else
    {
      v0[27] = *v2;
      v18 = swift_task_alloc();
      v0[28] = v18;
      *v18 = v0;
      v18[1] = sub_22FD73AAC;
      v19 = v0[10];

      return sub_22FD815EC(v19);
    }
  }

  else
  {
    v7 = v0[16];
    v6 = v0[17];
    v8 = v0[15];
    v10 = v0[4];
    v9 = v0[5];
    v11 = *(v7 + 32);
    v0[21] = v11;
    v0[22] = (v7 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v11(v6, v2, v8);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = *(MEMORY[0x277D856D0] + 4);
    v14 = swift_task_alloc();
    v0[23] = v14;
    *v14 = v0;
    v14[1] = sub_22FD73530;
    v15 = v0[17];
    v16 = v0[14];
    v17 = v0[15];

    return MEMORY[0x282200308](v16, v17, AssociatedConformanceWitness);
  }
}

uint64_t sub_22FD73530()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_22FD73DF4;
  }

  else
  {
    v3 = sub_22FD73644;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FD73644()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[17];
  v4 = v0[15];
  v16 = v0[14];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[2];
  v7 = v0[3];
  (*(v0[19] + 8))(v7, v0[18]);
  v2(v7, v3, v4);
  swift_storeEnumTagMultiPayload();
  (*(v5 + 32))(v8, v16, v6);
  v9 = v0[20];
  v10 = v0[17];
  v11 = v0[14];
  v13 = v0[10];
  v12 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_22FD73764()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22FD73860);
}

uint64_t sub_22FD73860()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[25];
  if (v4 == 1)
  {
    v6 = v0[8];
    v7 = v0[9];
    v8 = v0[6];
    v9 = v0[2];
    v10 = v0[25];

    (*(v7 + 8))(v1, v6);
    (*(*(v8 - 8) + 56))(v9, 1, 1, v8);
  }

  else
  {
    v11 = v0[2];
    WitnessTable = swift_getWitnessTable();
    sub_22FD8C9F4(v2, WitnessTable);

    (*(v3 + 8))(v1, v2);
    (*(*(v0[6] - 8) + 56))(v0[2], 0, 1, v0[6]);
  }

  v13 = v0[20];
  v14 = v0[17];
  v15 = v0[14];
  v17 = v0[10];
  v16 = v0[11];

  v18 = v0[1];

  return v18();
}

uint64_t sub_22FD73AAC()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22FD73BA8);
}

uint64_t sub_22FD73BA8()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[27];
  if (v4 == 1)
  {
    v6 = v0[8];
    v7 = v0[9];
    v8 = v0[6];
    v9 = v0[2];
    v10 = v0[27];

    (*(v7 + 8))(v1, v6);
    (*(*(v8 - 8) + 56))(v9, 1, 1, v8);
  }

  else
  {
    v11 = v0[2];
    WitnessTable = swift_getWitnessTable();
    sub_22FD8C9F4(v2, WitnessTable);

    (*(v3 + 8))(v1, v2);
    (*(*(v0[6] - 8) + 56))(v0[2], 0, 1, v0[6]);
  }

  v13 = v0[20];
  v14 = v0[17];
  v15 = v0[14];
  v17 = v0[10];
  v16 = v0[11];

  v18 = v0[1];

  return v18();
}

uint64_t sub_22FD73DF4()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];

  v7 = v0[1];

  return v7();
}

uint64_t sub_22FD73EAC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FD73F54;

  return AsyncBufferSequence.Iterator.next()(a1, a2);
}

uint64_t sub_22FD73F54()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22FD74048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v13 = *(a5 + 16);
  v12 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v6[4] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v6[5] = v17;
  v18 = *(MEMORY[0x277D856F8] + 4);
  v19 = swift_task_alloc();
  v6[6] = v19;
  *v19 = v6;
  v19[1] = sub_22FD74198;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v17);
}

uint64_t sub_22FD74198()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    (*(v2[4] + 32))(v2[2], v2[5], v2[3]);
  }

  else
  {
    v6 = v2[5];
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t sub_22FD742CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AsyncBufferSequence.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t default argument 0 of PhotosFaceDatabase.init(location:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22FE426C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FE42774();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28148B788 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v7, qword_28148B790);
  sub_22FE42704();
  v14[0] = 0x6146736F746F6850;
  v14[1] = 0xEA00000000006563;
  (*(v3 + 104))(v6, *MEMORY[0x277CC91D8], v2);
  sub_22FD750CC();
  sub_22FE42764();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2B08, qword_22FE48DB0);
  return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
}

void *sub_22FD74690@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_22FD746AC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](a1);
  v4 = sub_22FE43E04();

  return sub_22FD749A8(a1, v4);
}

unint64_t sub_22FD74718(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_22FE43DA4();

  return sub_22FD749A8(a1, v4);
}

unint64_t sub_22FD7475C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_22FE43DB4();
  StoredPhoto.hash(into:)(v7);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE0, &unk_22FE49010);
  MEMORY[0x23190B9C0](*(a1 + *(v4 + 36)));
  v5 = sub_22FE43E04();

  return sub_22FD74A14(a1, v5);
}

unint64_t sub_22FD747EC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_22FE428C4();
  sub_22FD76408(&qword_27DAE2CB8);
  v5 = sub_22FE42FD4();

  return sub_22FD74CE8(a1, v5);
}

unint64_t sub_22FD74870(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22FE43DB4();
  sub_22FE430D4();
  v6 = sub_22FE43E04();

  return sub_22FD74E94(a1, a2, v6);
}

unint64_t sub_22FD748E8(unsigned int a1)
{
  v3 = MEMORY[0x23190B990](*(v1 + 40), a1, 4);

  return sub_22FD74F4C(a1, v3);
}

unint64_t sub_22FD74930(char a1)
{
  v3 = *(v1 + 40);
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](qword_22FE49030[a1]);
  v4 = sub_22FE43E04();

  return sub_22FD74FB8(a1, v4);
}

unint64_t sub_22FD749A8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22FD74A14(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE0, &unk_22FE49010);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v10 = &v36 - v9;
  v11 = -1 << *(v2 + 32);
  v12 = a2 & ~v11;
  if ((*(v2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v37 = v7;
    v13 = ~v11;
    v14 = *(v8 + 72);
    do
    {
      sub_22FD764B4(*(v2 + 48) + v14 * v12, v10, &qword_27DAE2CE0, &unk_22FE49010);
      if ((_s10PhotosFace7DailyIDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
      {
        goto LABEL_33;
      }

      v15 = type metadata accessor for StoredPhoto(0);
      v16 = v15[5];
      if ((sub_22FE42824() & 1) == 0)
      {
        goto LABEL_33;
      }

      v17 = v15[6];
      if ((sub_22FE42824() & 1) == 0 || *&v10[v15[7]] != *(a1 + v15[7]))
      {
        goto LABEL_33;
      }

      v18 = v15[8];
      v19 = &v10[v18];
      v20 = *&v10[v18 + 8];
      v21 = (a1 + v18);
      v22 = v21[1];
      if (v20)
      {
        if (!v22)
        {
          goto LABEL_33;
        }

        v23 = *v19 == *v21 && v20 == v22;
        if (!v23 && (sub_22FE43CB4() & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else if (v22)
      {
        goto LABEL_33;
      }

      v24 = v15[9];
      v25 = &v10[v24];
      v26 = *&v10[v24 + 8];
      v27 = (a1 + v24);
      v28 = v27[1];
      if (v26)
      {
        if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_22FE43CB4() & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else if (v28)
      {
        goto LABEL_33;
      }

      if (*&v10[v15[10]] == *(a1 + v15[10]) && (sub_22FDD7B90(*&v10[v15[11]], *(a1 + v15[11])) & 1) != 0)
      {
        v29 = v15[12];
        v30 = &v10[v29];
        v31 = *&v10[v29 + 8];
        v32 = (a1 + v29);
        v33 = v32[1];
        if (v31)
        {
          if (v33 && (*v30 == *v32 && v31 == v33 || (sub_22FE43CB4() & 1) != 0))
          {
LABEL_30:
            v34 = *(v37 + 36);
            v36 = *&v10[v34];
            sub_22FD7644C(v10);
            if (v36 == *(a1 + v34))
            {
              return v12;
            }

            goto LABEL_34;
          }
        }

        else if (!v33)
        {
          goto LABEL_30;
        }
      }

LABEL_33:
      sub_22FD7644C(v10);
LABEL_34:
      v12 = (v12 + 1) & v13;
    }

    while (((*(v2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_22FD74CE8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_22FE428C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_22FD76408(&qword_27DAE2CC0);
      v16 = sub_22FE43024();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_22FD74E94(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_22FE43CB4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22FD74F4C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_22FD74FB8(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (qword_22FE49030[*(*(v2 + 48) + result)] == qword_22FE49030[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_22FD750CC()
{
  result = qword_28148AE88;
  if (!qword_28148AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148AE88);
  }

  return result;
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

unint64_t sub_22FD75168(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE8, &unk_22FE4A850);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE2CF0, &unk_22FE49020);
    v8 = sub_22FE43B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_22FD764B4(v10, v6, &qword_27DAE2CE8, &unk_22FE4A850);
      v12 = *v6;
      result = sub_22FD746AC(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for StoredPhotoLayout(0);
      result = sub_22FD7651C(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

void *sub_22FD75328(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CD8, &qword_22FE49008);
  v3 = sub_22FE43B04();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_22FD74718(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_22FD74718(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22FD75430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CC8, &qword_22FE48FF8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CD0, &qword_22FE49000);
    v8 = sub_22FE43B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22FD764B4(v10, v6, &qword_27DAE2CC8, &qword_22FE48FF8);
      result = sub_22FD747EC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22FE428C4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22FD75618(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CB0, &qword_22FE48FF0);
    v3 = sub_22FE43B04();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22FD74870(v5, v6);
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

uint64_t sub_22FD7571C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_22FD75800(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FD75878(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFC)
  {
    v7 = 252;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFC)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 > 3)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
  }

LABEL_24:
  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_22FD759C4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFC)
  {
    v8 = 252;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFC)
      {
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFC)
        {
          *(v18 + 8) = 0;
          *v18 = a2 - 253;
        }

        else
        {
          *(v18 + 8) = -a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_22FD75BC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for AsyncBufferSequence.StorageType();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FD75C34(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 253) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v14 < 2)
    {
LABEL_25:
      v16 = *(a1 + v9);
      if (v16 >= 3)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_25;
  }

LABEL_14:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 254;
}

void sub_22FD75D84(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v10 = v9 + 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 253) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_39:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v9] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_24;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t getEnumTagSinglePayload for Message.Operation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Message.Operation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_22FD76000(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_22FD7601C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_22FD76050(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FD76070(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_22FD760C0(uint64_t a1, unint64_t *a2)
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

uint64_t sub_22FD7610C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for BoundedBufferStorage();
    if (v5 <= 0x3F)
    {
      result = type metadata accessor for UnboundedBufferStorage();
      if (v6 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_22FD761C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2C98, &qword_22FE48FD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA0, &unk_22FE48FE0);
    v8 = sub_22FE43B04();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_22FD764B4(v10, v6, &qword_27DAE2C98, &qword_22FE48FD8);
      v12 = *v6;
      result = sub_22FD748E8(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 4 * result) = v12;
      v16 = v8[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
      result = sub_22FD76398(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

uint64_t sub_22FD76398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CA8, &unk_22FE4BE90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FD76408(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22FE428C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FD7644C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2CE0, &unk_22FE49010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FD764B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22FD7651C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredPhotoLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FD765C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for BoundedBufferStateMachine.State();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FD76638(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 0x20)
  {
    v3 = 32;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_23;
  }

  v4 = (v3 & 0xFFFFFFFFFFFFFFF8) + 16;
  v5 = a2 - 251;
  v6 = v4 & 0xFFFFFFF8;
  if ((v4 & 0xFFFFFFF8) != 0)
  {
    v5 = 2;
  }

  if (v5 >= 0x10000)
  {
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  if (v5 < 0x100)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v8 == 4)
  {
    v9 = *(a1 + v4);
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  else if (v8 == 2)
  {
    v9 = *(a1 + v4);
    if (!v9)
    {
LABEL_23:
      v12 = *(a1 + v3);
      if (v12 >= 4)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v9 = *(a1 + v4);
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  v11 = v9 - 1;
  if (v6)
  {
    v11 = 0;
    LODWORD(v6) = *a1;
  }

  return (v6 | v11) + 253;
}

unsigned int *sub_22FD766FC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  if (v4 <= 0x20)
  {
    v4 = 32;
  }

  v5 = (v4 & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 >= 0xFD)
  {
    v6 = a3 - 251;
    if ((v4 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v6 = 2;
    }

    if (v6 >= 0x10000)
    {
      v7 = 4;
    }

    else
    {
      v7 = 2;
    }

    if (v6 < 0x100)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    v9 = a2 - 252;
    if (a2 > 0xFC)
    {
      goto LABEL_13;
    }

LABEL_22:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *(result + v5) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_31;
      }

      *(result + v5) = 0;
    }

    else if (v8)
    {
      *(result + v5) = 0;
      if (!a2)
      {
        return result;
      }

LABEL_31:
      *(result + v4) = -a2;
      return result;
    }

    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  v8 = 0;
  v9 = a2 - 252;
  if (a2 <= 0xFC)
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((v4 & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  if ((v4 & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v11 = a2 - 253;
    v12 = result;
    bzero(result, (v4 & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v12;
    *v12 = v11;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      *(result + v5) = v10;
    }

    else
    {
      *(result + v5) = v10;
    }
  }

  else if (v8)
  {
    *(result + v5) = v10;
  }

  return result;
}

uint64_t sub_22FD76850(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    MEMORY[0x28223BE20](result);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2DF8, qword_22FE493F0);
    v5 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    type metadata accessor for UnsafeTransfer();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
    sub_22FE43E14();
    sub_22FE42A24();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
    sub_22FE43E14();
    sub_22FE43744();
    sub_22FE43434();
    sub_22FE43744();
    result = swift_getTupleTypeMetadata();
    if (v6 <= 0x3F)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      sub_22FE43E14();
      result = sub_22FE42A24();
      if (v7 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22FD76AB0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 32;
  if (*(v3 + 64) > 0x20uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 4)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 253;
}

void sub_22FD76BC8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x20)
  {
    v5 = 32;
  }

  v6 = v5 + 1;
  if (a3 < 0xFD)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 252) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFC)
  {
    v8 = a2 - 253;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_22FD76D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  type metadata accessor for BoundedBufferStateMachine.State();
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for BoundedBufferStateMachine();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_22FD76E1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = type metadata accessor for BoundedBufferStateMachine.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  (*(v7 + 16))(&v19 - v12, v2, v6);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 0:
      swift_getAssociatedTypeWitness();
      type metadata accessor for UnsafeTransfer();

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      v15 = sub_22FE43E14();
      v20 = sub_22FE432D4();
      v16 = sub_22FE43354();
      WitnessTable = swift_getWitnessTable();
      v18 = sub_22FD809BC(&v20, v15, v16, WitnessTable);

      *v11 = a1;
      v11[1] = v18;
      v11[2] = 0;
      v11[3] = 0;
      swift_storeEnumTagMultiPayload();
      (*(v7 + 40))(v2, v11, v6);
      return (*(*(v4 - 8) + 8))(v13, v4);
    case 1:
      goto LABEL_6;
    case 2:
      __break(1u);
LABEL_6:
      __break(1u);
      break;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FD77080(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = type metadata accessor for BoundedBufferStateMachine.State();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (v16 - v8);
  (*(v6 + 16))(v16 - v8, v1, v5);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      goto LABEL_12;
    }

    (*(v6 + 8))(v9, v5);
  }

  else
  {
    if (result != 1)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (v9[2])
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v11 = v9[3];
    v12 = *v9;
    v13 = v9[1];

    if (!v11)
    {
      swift_getAssociatedTypeWitness();
      type metadata accessor for UnsafeTransfer();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      v14 = sub_22FE43E14();
      sub_22FD797E8(sub_22FD797DC, 0, v13, MEMORY[0x277CFB918], v14, MEMORY[0x277D84A98], MEMORY[0x277D83B88], MEMORY[0x277D84AC0], v15);

      return v16[1] >= *(v1 + *(a1 + 36));
    }
  }

  return 0;
}

uint64_t sub_22FD7729C(char a1)
{
  sub_22FE43DB4();
  MEMORY[0x23190B9C0](a1 & 1);
  return sub_22FE43E04();
}

uint64_t sub_22FD77300()
{
  sub_22FE43DB4();
  sub_22FD72C48(v2, *v0);
  return sub_22FE43E04();
}

uint64_t sub_22FD77340(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = type metadata accessor for BoundedBufferStateMachine.State();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v19 - v10);
  (*(v8 + 16))(&v19 - v10, v2, v7);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    goto LABEL_8;
  }

  if (result != 1)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11[2])
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v14 = *v11;
  v13 = v11[1];
  if (!v11[3])
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for UnsafeTransfer();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
    v17 = sub_22FE43E14();
    sub_22FD797E8(sub_22FD797DC, 0, v13, MEMORY[0x277CFB918], v17, MEMORY[0x277D84A98], MEMORY[0x277D83B88], MEMORY[0x277D84AC0], v18);
    if (v20 >= *(v2 + *(a2 + 36)))
    {
      (*(v8 + 8))(v2, v7);
      *v2 = v14;
      v2[1] = v13;
      v2[2] = a1;
      v2[3] = 0;
      swift_storeEnumTagMultiPayload();
      return 0;
    }

    return 1;
  }

  v15 = *v11;

  v20 = v13;
  swift_getAssociatedTypeWitness();
  type metadata accessor for UnsafeTransfer();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  sub_22FE43E14();
  sub_22FE42A24();
  swift_getWitnessTable();
  v16 = sub_22FE43644();

  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    if (result != 2)
    {
      goto LABEL_15;
    }

    (*(v8 + 8))(v11, v7);
  }

  return 1;
}

uint64_t sub_22FD77650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v35 = a1;
  v37 = a3;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v31 - v10;
  type metadata accessor for UnsafeTransfer();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v12 = sub_22FE43E14();
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  v16 = type metadata accessor for BoundedBufferStateMachine.State();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v31 - v19);
  (*(v17 + 16))(&v31 - v19, v4, v16);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    (*(v17 + 8))(v20, v16);
    goto LABEL_11;
  }

  if (result != 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!v20[2])
  {
    v22 = v20[1];
    v32 = *v20;
    if (v20[3])
    {
      v23 = v20[3];
      v39 = v22;
      sub_22FE42A24();
      swift_getWitnessTable();
      result = sub_22FE43644();
      if (result)
      {
        (*(v17 + 8))(v4, v16);
        *v4 = v32;
        v4[1] = v22;
        v4[2] = 0;
        v4[3] = 0;
        swift_storeEnumTagMultiPayload();
        sub_22FE43E14();
        sub_22FE43744();
        sub_22FE43434();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v25 = *(TupleTypeMetadata2 + 48);
        v26 = v37;
        *v37 = v23;
        (*(v34 + 16))(&v26[v25], v35, AssociatedTypeWitness);
        swift_storeEnumTagMultiPayload();
        return (*(*(TupleTypeMetadata2 - 8) + 56))(v26, 0, 1, TupleTypeMetadata2);
      }

      __break(1u);
      goto LABEL_13;
    }

    v39 = v22;
    result = sub_22FD797E8(sub_22FD797DC, 0, v22, MEMORY[0x277CFB918], v12, MEMORY[0x277D84A98], MEMORY[0x277D83B88], MEMORY[0x277D84AC0], v30);
    if (v38 >= *(v4 + *(a2 + 36)))
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v27 = *(v17 + 8);
    v27(v4, v16);
    swift_storeEnumTagMultiPayload();
    (*(v34 + 16))(v11, v35, AssociatedTypeWitness);
    _s10PhotosFace20MakeThrowingIteratorVyACyxGxcfC_0(v11, AssociatedTypeWitness, v15);
    swift_storeEnumTagMultiPayload();
    sub_22FE42A24();
    sub_22FE429E4();
    (*(v33 + 8))(v15, v12);
    v27(v4, v16);
    v28 = v39;
    *v4 = v32;
    v4[1] = v28;
    v4[2] = 0;
    v4[3] = 0;
    swift_storeEnumTagMultiPayload();
LABEL_11:
    sub_22FE43E14();
    sub_22FE43744();
    sub_22FE43434();
    v29 = swift_getTupleTypeMetadata2();
    return (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_22FD77C00(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for UnsafeTransfer();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v7 = sub_22FE43E14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v28 - v10);
  v12 = type metadata accessor for BoundedBufferStateMachine.State();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = (&v28 - v18);
  (*(v13 + 16))(&v28 - v18, v3, v12);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    (*(v13 + 8))(v19, v12);
    return 1;
  }

  if (result != 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v28 = v8;
  if (!v19[2])
  {
    v21 = v19[3];
    v22 = *v19;
    v23 = v19[1];

    if (v21)
    {
      v29 = v23;
      sub_22FE42A24();
      swift_getWitnessTable();
      result = sub_22FE43644();
      if (result)
      {
        v29 = sub_22FE432D4();
        v24 = sub_22FE43354();
        WitnessTable = swift_getWitnessTable();
        v26 = sub_22FD809BC(&v29, v7, v24, WitnessTable);

        *v17 = v26;
        swift_storeEnumTagMultiPayload();
        (*(v13 + 40))(v3, v17, v12);
        return v21;
      }

      __break(1u);
      goto LABEL_15;
    }

    v29 = v23;
    if (a1)
    {
      *v11 = a1;
      swift_storeEnumTagMultiPayload();
      v27 = a1;
      sub_22FE42A24();
      sub_22FE429E4();
      (*(v28 + 8))(v11, v7);
    }

    (*(v13 + 8))(v3, v12);
    *v3 = v29;
    swift_storeEnumTagMultiPayload();
    return 1;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_22FD77FB4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v53 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for UnsafeTransfer();
  v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v6 = sub_22FE43E14();
  v7 = sub_22FE43744();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v47 - v13;
  v50 = *(v6 - 1);
  v15 = *(v50 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v47 - v19;
  v54 = v4;
  v21 = type metadata accessor for BoundedBufferStateMachine.State();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = (v47 - v24);
  (*(v22 + 16))(v47 - v24, v3, v21);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      (*(*(v5 - 8) + 32))(v53, v25, v5);
      type metadata accessor for BoundedBufferStateMachine.NextAction();
      return swift_storeEnumTagMultiPayload();
    }

    if (!v25[3])
    {
      v31 = *v25;
      v32 = v25[1];
      v48 = v25[2];
      v49 = v31;
      if (!v48)
      {
        v55 = v32;
        sub_22FE42A24();
        swift_getWitnessTable();
        if (sub_22FE43644())
        {

          type metadata accessor for BoundedBufferStateMachine.NextAction();
          return swift_storeEnumTagMultiPayload();
        }
      }

      v55 = v32;
      v33 = *(v22 + 8);
      v33(v3, v21);
      swift_storeEnumTagMultiPayload();
      sub_22FE42A24();
      sub_22FE42A14();
      v34 = v50;
      result = (*(v50 + 48))(v14, 1, v6);
      if (result != 1)
      {
        (*(v34 + 32))(v20, v14, v6);
        v33(v3, v21);
        v35 = v55;
        v47[1] = v55;
        *v3 = v49;
        v3[1] = v35;
        v3[2] = 0;
        v3[3] = 0;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
        v36 = sub_22FE43E14();
        sub_22FE43744();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v47[0] = v47;
        v38 = *(TupleTypeMetadata2 + 48);
        v39 = v53;
        *v53 = v48;
        MEMORY[0x28223BE20](TupleTypeMetadata2);
        v51 = v5;
        v40 = v54;
        v47[-2] = v5;
        v47[-1] = v40;

        sub_22FD78848(sub_22FD7AC08, v6, &v39[v38]);

        (*(v34 + 8))(v20, v6);

        (*(*(v36 - 8) + 56))(&v39[v38], 0, 1, v36);
LABEL_15:
        type metadata accessor for BoundedBufferStateMachine.NextAction();
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_19;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (result != 2)
  {
    __break(1u);
    goto LABEL_18;
  }

  v27 = *v25;
  v55 = *v25;
  sub_22FE42A24();
  swift_getWitnessTable();
  if (sub_22FE43644())
  {

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
    v28 = sub_22FE43E14();
    sub_22FE43744();
    v29 = *(swift_getTupleTypeMetadata2() + 48);
    v30 = v53;
    *v53 = 0;
    (*(*(v28 - 8) + 56))(&v30[v29], 1, 1, v28);
    type metadata accessor for BoundedBufferStateMachine.NextAction();
    return swift_storeEnumTagMultiPayload();
  }

  v55 = v27;
  v41 = *(v22 + 8);
  v41(v3, v21);
  swift_storeEnumTagMultiPayload();
  sub_22FE42A14();
  v42 = v50;
  result = (*(v50 + 48))(v11, 1, v6);
  if (result != 1)
  {
    (*(v42 + 32))(v18, v11, v6);
    v41(v3, v21);
    *v3 = v55;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
    v43 = sub_22FE43E14();
    sub_22FE43744();
    v44 = swift_getTupleTypeMetadata2();
    v49 = v47;
    v45 = *(v44 + 48);
    v46 = v53;
    *v53 = 0;
    MEMORY[0x28223BE20](v44);
    v47[-2] = v5;
    v51 = v5;
    v47[-1] = v54;

    sub_22FD78848(sub_22FD7AC08, v6, &v46[v45]);
    (*(v42 + 8))(v18, v6);

    (*(*(v43 - 8) + 56))(&v46[v45], 0, 1, v43);
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22FD78848@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v15, a2[3]);
  }

  else
  {
    (*(v7 + 32))(v11, v15, v6);
    a1(v11);
    (*(v7 + 8))(v11, v6);
    v18 = a2[3];
  }

  v19 = a2[4];
  sub_22FE43E14();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22FD78A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v52 = a1;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for UnsafeTransfer();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v9 = sub_22FE43E14();
  v10 = sub_22FE43744();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v51 - v16;
  v56 = *(v9 - 1);
  v18 = *(v56 + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v57 = &v51 - v22;
  v54 = v7;
  v55 = v6;
  v23 = type metadata accessor for BoundedBufferStateMachine.State();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = (&v51 - v26);
  (*(v24 + 16))(&v51 - v26, v4, v23);
  result = swift_getEnumCaseMultiPayload();
  v58 = v8;
  if (result > 1)
  {
    if (result != 2)
    {
      goto LABEL_18;
    }

    v33 = *v27;
    v60 = *v27;
    sub_22FE42A24();
    swift_getWitnessTable();
    if (sub_22FE43644())
    {

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
      v34 = sub_22FE43E14();
      sub_22FE43744();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v36 = *(TupleTypeMetadata2 + 48);
      *a3 = 0;
      (*(*(v34 - 8) + 56))(&a3[v36], 1, 1, v34);
      return (*(*(TupleTypeMetadata2 - 8) + 56))(a3, 0, 1, TupleTypeMetadata2);
    }

    v53 = a3;
    v60 = v33;
    v37 = *(v24 + 8);
    v37(v4, v23);
    swift_storeEnumTagMultiPayload();
    sub_22FE42A14();
    v38 = v56;
    result = (*(v56 + 48))(v14, 1, v9);
    if (result == 1)
    {
      goto LABEL_21;
    }

    (*(v38 + 32))(v21, v14, v9);
    v37(v4, v23);
    *v4 = v60;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
    v39 = sub_22FE43E14();
    sub_22FE43744();
    v40 = swift_getTupleTypeMetadata2();
    v58 = &v51;
    v41 = *(v40 + 48);
    v42 = v53;
    *v53 = 0;
    MEMORY[0x28223BE20](v40);
    v43 = v55;
    *(&v51 - 2) = v54;
    *(&v51 - 1) = v43;

    sub_22FD78848(sub_22FD798EC, v9, &v42[v41]);
    (*(v38 + 8))(v21, v9);

    (*(*(v39 - 8) + 56))(&v42[v41], 0, 1, v39);
  }

  else
  {
    if (result != 1)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v53 = a3;
    if (v27[3])
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v29 = *v27;
    v30 = v27[1];
    v51 = v27[2];
    if (!v51)
    {
      v60 = v30;
      sub_22FE42A24();

      swift_getWitnessTable();
      if (sub_22FE43644())
      {

        (*(v24 + 8))(v4, v23);
        *v4 = v29;
        v4[1] = v30;
        v31 = v52;
        v4[2] = 0;
        v4[3] = v31;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
        sub_22FE43E14();
        sub_22FE43744();
        v32 = swift_getTupleTypeMetadata2();
        return (*(*(v32 - 8) + 56))(v53, 1, 1, v32);
      }
    }

    v52 = v29;
    v60 = v30;
    v44 = *(v24 + 8);
    v44(v4, v23);
    swift_storeEnumTagMultiPayload();
    sub_22FE42A24();
    sub_22FE42A14();
    v45 = v56;
    result = (*(v56 + 48))(v17, 1, v9);
    if (result == 1)
    {
      goto LABEL_20;
    }

    (*(v45 + 32))(v57, v17, v9);
    v44(v4, v23);
    v46 = v60;
    *v4 = v52;
    v4[1] = v46;
    v4[2] = 0;
    v4[3] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
    v47 = sub_22FE43E14();
    sub_22FE43744();
    v40 = swift_getTupleTypeMetadata2();
    v58 = &v51;
    v48 = *(v40 + 48);
    v42 = v53;
    *v53 = v51;
    MEMORY[0x28223BE20](v40);
    v49 = v55;
    *(&v51 - 2) = v54;
    *(&v51 - 1) = v49;

    v50 = v57;
    sub_22FD78848(sub_22FD7AC08, v9, &v42[v48]);

    (*(v45 + 8))(v50, v9);

    (*(*(v47 - 8) + 56))(&v42[v48], 0, 1, v47);
  }

  return (*(*(v40 - 8) + 56))(v42, 0, 1, v40);
}

uint64_t sub_22FD79368(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = type metadata accessor for BoundedBufferStateMachine.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v29 - v10);
  (*(v5 + 16))(&v29 - v10, v1, v4);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      (*(v5 + 8))(v11, v4);
      swift_getAssociatedTypeWitness();
      type metadata accessor for UnsafeTransfer();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      v17 = sub_22FE43E14();
      v30 = sub_22FE432D4();
      v18 = sub_22FE43354();
      WitnessTable = swift_getWitnessTable();
      v20 = sub_22FD809BC(&v30, v17, v18, WitnessTable);

      *v9 = v20;
      swift_storeEnumTagMultiPayload();
      (*(v5 + 40))(v1, v9, v4);
      return 0;
    }

    __break(1u);
  }

  else
  {
    if (!result)
    {
      swift_getAssociatedTypeWitness();
      type metadata accessor for UnsafeTransfer();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      v13 = sub_22FE43E14();
      v30 = sub_22FE432D4();
      v14 = sub_22FE43354();
      v15 = swift_getWitnessTable();
      v16 = sub_22FD809BC(&v30, v13, v14, v15);

      *v9 = v16;
      swift_storeEnumTagMultiPayload();
      (*(v5 + 40))(v1, v9, v4);
      (*(*(v2 - 8) + 8))(v11, v2);
      return 0;
    }

    v22 = *v11;
    v21 = v11[1];
    v23 = v11[2];
    v24 = v11[3];

    swift_getAssociatedTypeWitness();
    type metadata accessor for UnsafeTransfer();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
    v25 = sub_22FE43E14();
    v30 = sub_22FE432D4();
    v26 = sub_22FE43354();
    v27 = swift_getWitnessTable();
    v28 = sub_22FD809BC(&v30, v25, v26, v27);

    *v9 = v28;
    swift_storeEnumTagMultiPayload();
    (*(v5 + 40))(v1, v9, v4);
    return v22;
  }

  return result;
}

uint64_t sub_22FD797E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16 + ((*(*(v15 - 8) + 80) + 16) & ~*(*(v15 - 8) + 80)), v14);
  if (v9)
  {
    return (*(v11 + 32))(a9, v14, a6);
  }

  return result;
}

uint64_t sub_22FD79908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 16);

  return v8(a2, a1, AssociatedTypeWitness);
}

uint64_t getEnumTagSinglePayload for Platform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Platform(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22FD79B00(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FD79B5C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22FD79BD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  sub_22FE43E14();
  sub_22FE43744();
  sub_22FE43434();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata2;
}

uint64_t sub_22FD79CB4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_25;
  }

  v10 = v9 + (((*(v8 + 80) & 0xF8) + 15) & ~(*(v8 + 80) & 0xF8) & 0x1F8) + 1;
  v11 = 8 * v10;
  if (v10 > 3)
  {
    goto LABEL_6;
  }

  v14 = (a2 - 2147483646 + ~(-1 << v11)) >> v11;
  if (v14 > 0xFFFE)
  {
    v12 = *(a1 + v10);
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_25:
    v16 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v16) = -1;
    }

    if ((v16 + 1) >= 2)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  if (v14 > 0xFE)
  {
    v12 = *(a1 + v10);
    if (*(a1 + v10))
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  if (!v14)
  {
    goto LABEL_25;
  }

LABEL_6:
  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_25;
  }

LABEL_14:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 0x7FFFFFFF;
}

void sub_22FD79E60(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 80) & 0xF8;
  v11 = (v10 + 15) & ~v10 & 0x1F8;
  v12 = *(v9 + 64);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  v13 = v12 + v11 + 1;
  if (a3 < 0x7FFFFFFF)
  {
    v14 = 0;
  }

  else if (v13 <= 3)
  {
    v17 = (a3 - 2147483646 + ~(-1 << (8 * v13))) >> (8 * v13);
    if (v17 > 0xFFFE)
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0xFF)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (a2 > 0x7FFFFFFE)
  {
    v15 = a2 - 0x7FFFFFFF;
    if (v13 >= 4)
    {
      bzero(a1, v13);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v16 = (v15 >> (8 * v13)) + 1;
    if (v13)
    {
      v19 = v15 & ~(-1 << (8 * v13));
      bzero(a1, v13);
      if (v13 != 3)
      {
        if (v13 == 2)
        {
          *a1 = v19;
          if (v14 > 1)
          {
LABEL_39:
            if (v14 == 2)
            {
              *&a1[v13] = v16;
            }

            else
            {
              *&a1[v13] = v16;
            }

            return;
          }
        }

        else
        {
          *a1 = v15;
          if (v14 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v14)
        {
          a1[v13] = v16;
        }

        return;
      }

      *a1 = v19;
      a1[2] = BYTE2(v19);
    }

    if (v14 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v14 <= 1)
  {
    if (v14)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      *a1 = a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v14 == 2)
  {
    *&a1[v13] = 0;
    goto LABEL_24;
  }

  *&a1[v13] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_22FD7A0A8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  sub_22FE43E14();
  sub_22FE43744();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata2;
}

uint64_t sub_22FD7A18C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFE)
  {
    goto LABEL_25;
  }

  v10 = v9 + (((*(v8 + 80) & 0xF8) + 15) & ~(*(v8 + 80) & 0xF8) & 0x1F8) + 1;
  v11 = 8 * v10;
  if (v10 > 3)
  {
    goto LABEL_6;
  }

  v14 = (a2 - 2147483645 + ~(-1 << v11)) >> v11;
  if (v14 > 0xFFFE)
  {
    v12 = *(a1 + v10);
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_25:
    v16 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v16) = -1;
    }

    if ((v16 + 1) < 2)
    {
      LODWORD(v16) = 0;
    }

    if (v16 >= 2)
    {
      return (v16 - 1);
    }

    else
    {
      return 0;
    }
  }

  if (v14 > 0xFE)
  {
    v12 = *(a1 + v10);
    if (*(a1 + v10))
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  if (!v14)
  {
    goto LABEL_25;
  }

LABEL_6:
  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_25;
  }

LABEL_14:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 2147483646;
}

void sub_22FD7A340(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 64);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  v11 = v10 + (((*(v9 + 80) & 0xF8) + 15) & ~(*(v9 + 80) & 0xF8) & 0x1F8) + 1;
  if (a3 <= 0x7FFFFFFD)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = (a3 - 2147483645 + ~(-1 << (8 * v11))) >> (8 * v11);
    if (v15 > 0xFFFE)
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0xFF)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0x7FFFFFFD)
  {
    v13 = a2 - 2147483646;
    if (v11 >= 4)
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v11)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_39:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      *a1 = a2 + 1;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_24;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_22FD7A584(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
    v5 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
    sub_22FE43E14();
    sub_22FE43744();
    result = swift_getTupleTypeMetadata2();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22FD7A694(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 80) & 0xF8;
  v9 = (v8 + 15) & ~v8 & 0x1F8;
  v10 = *(v7 + 64);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  v11 = v10 + v9;
  if (v11 + 1 > v6)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_28;
  }

  v13 = v12 + 1;
  v14 = 8 * (v12 + 1);
  if ((v12 + 1) <= 3)
  {
    v17 = ((a2 + ~(-1 << v14) - 253) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      v19 = *(a1 + v12);
      if (v19 >= 3)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return (v13 | v18) + 254;
}

void sub_22FD7A858(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 80) & 0xF8;
  v11 = (v10 + 15) & ~v10 & 0x1F8;
  v12 = *(v9 + 64);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  v13 = v12 + v11;
  if (v13 + 1 > v8)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = v8;
  }

  v15 = v14 + 1;
  if (a3 < 0xFE)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 + ~(-1 << (8 * v15)) - 253) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (a2 > 0xFD)
  {
    v17 = a2 - 254;
    if (v15 >= 4)
    {
      bzero(a1, v14 + 1);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v18 = (v17 >> (8 * v15)) + 1;
    if (v14 != -1)
    {
      v21 = v17 & ~(-1 << (8 * v15));
      bzero(a1, v15);
      if (v15 != 3)
      {
        if (v15 == 2)
        {
          *a1 = v21;
          if (v16 > 1)
          {
LABEL_42:
            if (v16 == 2)
            {
              *&a1[v15] = v18;
            }

            else
            {
              *&a1[v15] = v18;
            }

            return;
          }
        }

        else
        {
          *a1 = v17;
          if (v16 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v16)
        {
          a1[v15] = v18;
        }

        return;
      }

      *a1 = v21;
      a1[2] = BYTE2(v21);
    }

    if (v16 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v16 <= 1)
  {
    if (v16)
    {
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v14] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v16 == 2)
  {
    *&a1[v15] = 0;
    goto LABEL_27;
  }

  *&a1[v15] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t sub_22FD7AA98()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_22FD7AAF4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_22FD7AB44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_22FD7AB9C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_22FD7ABB4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_22FD7AC58(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_22FD7ACA0);
}

uint64_t sub_22FD7ACA0()
{
  v1 = v0[4];
  v2 = *(MEMORY[0x277D85A10] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  v5 = *(v1 + 80);
  v4 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  sub_22FE43E14();
  sub_22FE43744();
  *v3 = v0;
  v3[1] = sub_22FD7ADCC;
  v6 = v0[2];
  v7 = v0[3];

  return MEMORY[0x282200830](v6, &unk_22FE49368);
}

void sub_22FD7ADCC()
{
  v2 = *(*v1 + 40);
  v3 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v3 + 8);

    v4();
  }
}

uint64_t sub_22FD7AEE8(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *a2;
  v2[4] = *(*a2 + 88);
  v2[5] = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  sub_22FE43E14();
  v4 = sub_22FE43744();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for BoundedBufferStateMachine.NextAction();
  v7 = sub_22FE43744();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD7B0B8);
}

uint64_t sub_22FD7B0B8()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[3];
  v9 = *(v8 + 16);
  type metadata accessor for BoundedBufferStateMachine();
  sub_22FD8C780(sub_22FD7D478, v8, v9);
  (*(v4 + 16))(v1, v2, v3);
  if ((*(*(v5 - 8) + 48))(v1, 1, v5) == 1)
  {
    goto LABEL_9;
  }

  v10 = v0[12];
  v11 = v0[9];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return sub_22FE43A74();
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_9:
    v27 = swift_task_alloc();
    v0[14] = v27;
    *v27 = v0;
    v27[1] = sub_22FD7B3C0;
    v28 = v0[6];
    v29 = v0[2];
    v30 = v0[3];

    return sub_22FD7BEBC(v29, 0, 0, sub_22FD7D494, v30, v28);
  }

  else
  {
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[6];
    v16 = *v10;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v18 = *(v14 + 32);
    v18(v13, &v10[*(TupleTypeMetadata2 + 48)], v15);
    if (v16)
    {
      swift_continuation_throwingResume();
    }

    v19 = v0[8];
    v20 = v0[6];
    v21 = v0[2];
    (*(v0[11] + 8))(v0[13], v0[10]);
    v18(v21, v19, v20);
    v23 = v0[12];
    v22 = v0[13];
    v24 = v0[8];

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_22FD7B3C0()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22FD7B4BC);
}

uint64_t sub_22FD7B4BC()
{
  (*(v0[11] + 8))(v0[13], v0[10]);
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FD7B54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v4 = *(*a2 + 80);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v26 - v6;
  v9 = *(v8 + 88);
  Action = type metadata accessor for BoundedBufferStateMachine.NextAction();
  v11 = *(Action - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](Action);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v18 = type metadata accessor for BoundedBufferStateMachine();
  sub_22FD77FB4(v18, v17);
  (*(v11 + 16))(v15, v17, Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      sub_22FE43E14();
      v20 = sub_22FE43744();
      v21 = *(swift_getTupleTypeMetadata2() + 48);
      v22 = v27;
      (*(v11 + 32))(v27, v17, Action);
      (*(v11 + 56))(v22, 0, 1, Action);
      return (*(*(v20 - 8) + 8))(&v15[v21], v20);
    }

    else
    {
      v25 = v27;
      (*(v11 + 32))(v27, v17, Action);
      return (*(v11 + 56))(v25, 0, 1, Action);
    }
  }

  else
  {
    v24 = v26;
    (*(v26 + 32))(v7, v15, v4);
    sub_22FD7B8F4(a1, v7);
    (*(v24 + 8))(v7, v4);
    (*(v11 + 8))(v17, Action);
    return (*(v11 + 56))(v27, 1, 1, Action);
  }
}

uint64_t sub_22FD7B8F4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_22FE43404();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v6 + 16))(v9, a2, v5);
  v15 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v5;
  *(v16 + 5) = *(v4 + 88);
  (*(v6 + 32))(&v16[v15], v9, v5);
  *&v16[(v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8] = v2;

  v17 = sub_22FE0BBD0(0, 0, v13, &unk_22FE49390, v16);
  v18 = type metadata accessor for BoundedBufferStateMachine();
  sub_22FD76E1C(v17, v18);
}

uint64_t sub_22FD7BB38(uint64_t a1, void *a2)
{
  v4 = *(*a2 + 88);
  v5 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  sub_22FE43E14();
  v6 = sub_22FE43744();
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v28 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  SuspendedAction = type metadata accessor for BoundedBufferStateMachine.NextSuspendedAction();
  v13 = *(SuspendedAction - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](SuspendedAction);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  v20 = a2[2];
  v31 = v5;
  v32 = v4;
  v29 = a1;
  v33 = a1;
  type metadata accessor for BoundedBufferStateMachine();
  sub_22FD8C780(sub_22FD7D49C, v30, v20);
  (*(v13 + 16))(v17, v19, SuspendedAction);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27DAE2E00, &unk_22FE49950);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v17, 1, TupleTypeMetadata2) != 1)
  {
    v22 = *v17;
    v23 = v27;
    (*(v27 + 32))(v11, &v17[*(TupleTypeMetadata2 + 48)], v6);
    if (v22)
    {
      swift_continuation_throwingResume();
    }

    v24 = v28;
    (*(v23 + 16))(v28, v11, v6);
    sub_22FD81760(v24, v29, v6);
    (*(v23 + 8))(v11, v6);
  }

  return (*(v13 + 8))(v19, SuspendedAction);
}

uint64_t sub_22FD7BEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a1;
  v6[11] = a4;
  if (a2)
  {
    swift_getObjectType();
    sub_22FE43374();
  }

  return MEMORY[0x2822009F8](sub_22FD7BF50);
}

uint64_t sub_22FD7BF50()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v0[2] = v0;
  v0[7] = v3;
  v0[3] = sub_22FD7C010;
  v5 = swift_continuation_init();
  v6 = nullsub_1(v5, v2, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  v4(v6);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22FD7C010()
{
  v3 = *v0;
  v1 = *(*v0 + 8);

  return v1();
}

void sub_22FD7C0E8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v3 = sub_22FE43E14();
  v4 = sub_22FE43744();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-v6];
  v8 = v0[2];
  v12 = v2;
  v13 = v1;
  type metadata accessor for BoundedBufferStateMachine();
  type metadata accessor for BoundedBufferStateMachine.InterruptedAction();
  sub_22FD8C780(sub_22FD7D388, v11, v8);
  if (v14)
  {
    v10 = v15;
    v9 = v16;
    sub_22FE43414();
    if (v10)
    {
      swift_continuation_throwingResume();
    }

    if (v9)
    {
      (*(*(v3 - 8) + 56))(v7, 1, 1, v3);
      sub_22FD81760(v7, v9, v4);
    }
  }
}

uint64_t sub_22FD7C2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = *a5;
  v5[14] = *(*a5 + 88);
  v7 = *(v6 + 80);
  v5[15] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[16] = AssociatedTypeWitness;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v9 = sub_22FE43E14();
  v5[17] = v9;
  v10 = sub_22FE43744();
  v5[18] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v12 = *(v9 - 8);
  v5[20] = v12;
  v13 = *(v12 + 64) + 15;
  v5[21] = swift_task_alloc();
  v14 = type metadata accessor for BoundedBufferStateMachine.ElementProducedAction();
  v5[22] = v14;
  v15 = *(v14 - 8);
  v5[23] = v15;
  v16 = *(v15 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v17 = sub_22FE43744();
  v5[26] = v17;
  v18 = *(v17 - 8);
  v5[27] = v18;
  v19 = *(v18 + 64) + 15;
  v5[28] = swift_task_alloc();
  v20 = *(AssociatedTypeWitness - 8);
  v5[29] = v20;
  v21 = *(v20 + 64) + 15;
  v5[30] = swift_task_alloc();
  v22 = *(v7 - 8);
  v5[31] = v22;
  v23 = *(v22 + 64) + 15;
  v5[32] = swift_task_alloc();
  v24 = swift_getAssociatedTypeWitness();
  v5[33] = v24;
  v25 = *(v24 - 8);
  v5[34] = v25;
  v26 = *(v25 + 64) + 15;
  v5[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD7C64C);
}

uint64_t sub_22FD7C64C()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 112);
  v3 = *(v0 + 104);
  (*(*(v0 + 248) + 16))(*(v0 + 256), *(v0 + 96), *(v0 + 120));
  sub_22FE43464();
  v4 = *(v3 + 16);
  *(v0 + 288) = v4;
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  *(v0 + 296) = type metadata accessor for BoundedBufferStateMachine();
  sub_22FD8C780(sub_22FD7D610, v7, v4);

  if (*(v0 + 320) == 1)
  {

    return MEMORY[0x2822009F8](sub_22FD7C814);
  }

  else
  {
    v8 = *(v0 + 264);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = *(MEMORY[0x277D856D0] + 4);
    v13 = swift_task_alloc();
    *(v0 + 304) = v13;
    *v13 = v0;
    v13[1] = sub_22FD7CA54;
    v14 = *(v0 + 280);
    v15 = *(v0 + 264);
    v16 = *(v0 + 224);

    return MEMORY[0x282200308](v16, v15, AssociatedConformanceWitness);
  }
}

uint64_t sub_22FD7C814()
{
  v1 = v0[13];
  v0[2] = v0;
  v0[3] = sub_22FD7C8AC;
  v2 = swift_continuation_init();
  sub_22FD7D25C(v2, v1);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_22FD7C8AC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 120);
  v5 = *(*v0 + 112);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(MEMORY[0x277D856D0] + 4);
  v8 = swift_task_alloc();
  v1[38] = v8;
  *v8 = v2;
  v8[1] = sub_22FD7CA54;
  v9 = v1[35];
  v10 = v1[33];
  v11 = v1[28];

  return MEMORY[0x282200308](v11, v10, AssociatedConformanceWitness);
}

uint64_t sub_22FD7CA54()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_22FD7D0AC;
  }

  else
  {
    v3 = sub_22FD7CB68;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_22FD7CB68()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 128);
  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
    v4 = *(v0 + 312);
    v5 = *(v0 + 288);
    v6 = *(v0 + 296);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    (*(*(v0 + 216) + 8))(v2, *(v0 + 208));
    v9 = swift_task_alloc();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    type metadata accessor for BoundedBufferStateMachine.FinishAction();
    sub_22FD8C780(sub_22FD7D6B8, v9, v5);

    v10 = *(v0 + 88);
    v12 = *(v0 + 272);
    v11 = *(v0 + 280);
    v13 = *(v0 + 264);
    if (v10 >= 2)
    {
      v14 = *(v0 + 152);
      v15 = *(v0 + 144);
      (*(*(v0 + 160) + 56))(v14, 1, 1, *(v0 + 136));
      sub_22FD81760(v14, v10, v15);
    }

    (*(v12 + 8))(v11, v13);
    v16 = *(v0 + 280);
    v17 = *(v0 + 256);
    v18 = *(v0 + 240);
    v19 = *(v0 + 224);
    v21 = *(v0 + 192);
    v20 = *(v0 + 200);
    v22 = *(v0 + 168);
    v23 = *(v0 + 152);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v27 = *(v0 + 288);
    v26 = *(v0 + 296);
    v28 = *(v0 + 240);
    v29 = *(v0 + 200);
    v58 = *(v0 + 312);
    v59 = *(v0 + 192);
    v30 = *(v0 + 176);
    v31 = *(v0 + 184);
    v60 = *(v0 + 144);
    v61 = *(v0 + 136);
    v57 = *(v0 + 112);
    (*(v1 + 32))(v28, v2, v3);
    v32 = swift_task_alloc();
    v32[1] = vextq_s8(v57, v57, 8uLL);
    v32[2].i64[0] = v28;
    sub_22FD8C780(sub_22FD7D70C, v32, v27);

    (*(v31 + 16))(v59, v29, v30);
    sub_22FE43434();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v59, 1, TupleTypeMetadata2) != 1)
    {
      v34 = *(v0 + 192);
      v36 = *(v0 + 160);
      v35 = *(v0 + 168);
      v38 = *(v0 + 144);
      v37 = *(v0 + 152);
      v39 = *(v0 + 136);
      v40 = *v34;
      (*(v36 + 32))(v35, v34 + *(TupleTypeMetadata2 + 48), v39);
      (*(v36 + 16))(v37, v35, v39);
      (*(v36 + 56))(v37, 0, 1, v39);
      sub_22FD81760(v37, v40, v38);
      (*(v36 + 8))(v35, v39);
    }

    v42 = *(v0 + 232);
    v41 = *(v0 + 240);
    v43 = *(v0 + 128);
    (*(*(v0 + 184) + 8))(*(v0 + 200), *(v0 + 176));
    (*(v42 + 8))(v41, v43);
    v44 = *(v0 + 288);
    v46 = *(v0 + 112);
    v45 = *(v0 + 120);
    v47 = swift_task_alloc();
    *(v47 + 16) = v45;
    *(v47 + 24) = v46;
    *(v0 + 296) = type metadata accessor for BoundedBufferStateMachine();
    sub_22FD8C780(sub_22FD7D610, v47, v44);

    if (*(v0 + 320))
    {

      return MEMORY[0x2822009F8](sub_22FD7C814);
    }

    else
    {
      v48 = *(v0 + 264);
      v49 = *(v0 + 112);
      v50 = *(v0 + 120);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v52 = *(MEMORY[0x277D856D0] + 4);
      v53 = swift_task_alloc();
      *(v0 + 304) = v53;
      *v53 = v0;
      v53[1] = sub_22FD7CA54;
      v54 = *(v0 + 280);
      v55 = *(v0 + 264);
      v56 = *(v0 + 224);

      return MEMORY[0x282200308](v56, v55, AssociatedConformanceWitness);
    }
  }
}

uint64_t sub_22FD7D0AC()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[14];
  v4 = v0[15];
  (*(v0[34] + 8))(v0[35], v0[33]);
  v6 = swift_task_alloc();
  v6[2] = v4;
  v6[3] = v5;
  v6[4] = v1;
  type metadata accessor for BoundedBufferStateMachine.FinishAction();
  sub_22FD8C780(sub_22FD7D660, v6, v2);

  v7 = v0[10];
  v8 = v0[39];
  if (v7 > 1)
  {
    v9 = v0[19];
    v10 = v0[20];
    v12 = v0[17];
    v11 = v0[18];
    *v9 = v8;
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v9, 0, 1, v12);
    sub_22FD81760(v9, v7, v11);
  }

  else
  {
  }

  v13 = v0[35];
  v14 = v0[32];
  v15 = v0[30];
  v16 = v0[28];
  v18 = v0[24];
  v17 = v0[25];
  v19 = v0[21];
  v20 = v0[19];

  v21 = v0[1];

  return v21();
}

void sub_22FD7D25C(uint64_t a1, void *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v4[2] = *(*a2 + 80);
  v4[3] = *(v2 + 88);
  v4[4] = a1;
  type metadata accessor for BoundedBufferStateMachine();
  type metadata accessor for BoundedBufferStateMachine.ProducerSuspendedAction();
  sub_22FD8C780(sub_22FD7D764, v4, v3);
  if (v5 == 1)
  {
    swift_continuation_throwingResume();
  }
}

uint64_t sub_22FD7D334()
{
  sub_22FD7C0E8();
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22FD7D388@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for BoundedBufferStateMachine();
  result = sub_22FD79368(v5);
  *a1 = result;
  a1[1] = v7;
  a1[2] = v8;
  return result;
}

uint64_t sub_22FD7D3D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22FD73F54;

  return sub_22FD7AEE8(a1, v1);
}

uint64_t sub_22FD7D49C@<X0>(char *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = type metadata accessor for BoundedBufferStateMachine();
  return sub_22FD78A5C(v5, v6, a1);
}

uint64_t sub_22FD7D4F4(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 48) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = *(v1 + ((*(*(v1[4] - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22FD73F54;

  return sub_22FD7C2DC(a1, v6, v4, v1 + v5, v7);
}

uint64_t sub_22FD7D610@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for BoundedBufferStateMachine();
  result = sub_22FD77080(v5);
  *a1 = result & 1;
  return result;
}

uint64_t sub_22FD7D660@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = type metadata accessor for BoundedBufferStateMachine();
  result = sub_22FD77C00(v5, v6);
  *a1 = result;
  return result;
}

uint64_t sub_22FD7D6B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for BoundedBufferStateMachine();
  result = sub_22FD77C00(0, v5);
  *a1 = result;
  return result;
}

uint64_t sub_22FD7D70C@<X0>(char *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = type metadata accessor for BoundedBufferStateMachine();
  return sub_22FD77650(v5, v6, a1);
}

uint64_t sub_22FD7D764@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = type metadata accessor for BoundedBufferStateMachine();
  result = sub_22FD77340(v5, v6);
  *a1 = result & 1;
  return result;
}

void *sub_22FD7D7C0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v19 - v8;
  v11 = *(v10 + 88);
  v12 = type metadata accessor for BoundedBufferStateMachine();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  (*(v6 + 16))(v9, a1, v5);
  sub_22FD76D80(v9, a2, v5, v16);
  v17 = sub_22FD8C8F8();
  (*(v13 + 8))(v16, v12);
  v2[2] = v17;
  return v2;
}

uint64_t sub_22FD7D9C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for UnboundedBufferStateMachine.State();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for UnboundedBufferStateMachine.Policy();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22FD7DA68(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 0x18)
  {
    v3 = 24;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v4 = (v3 & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v4 <= 3)
  {
    v5 = ((a2 + 2) >> 8) + 1;
  }

  else
  {
    v5 = 2;
  }

  if (v5 >= 0x10000)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  if (v5 < 0x100)
  {
    v6 = 1;
  }

  if (v5 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = *&a1[v4];
      if (*&a1[v4])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v8 = *&a1[v4];
      if (v8)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v12 = *((&a1[v3 + 8] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v12 > 2)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v7)
  {
    goto LABEL_27;
  }

  v8 = a1[v4];
  if (!a1[v4])
  {
    goto LABEL_27;
  }

LABEL_23:
  v10 = (v8 - 1) << (8 * v4);
  if (v4 <= 3)
  {
    v11 = *a1;
  }

  else
  {
    v10 = 0;
    v11 = *a1;
  }

  return (v11 | v10) + 254;
}

void sub_22FD7DB58(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x18)
  {
    v5 = 24;
  }

  v6 = (v5 & 0xFFFFFFFFFFFFFFF8) + 17;
  if (a3 < 0xFE)
  {
    v9 = 0;
    if (a2 > 0xFD)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v6] = 0;
    }

    else if (v9)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      *((&a1[v5 + 8] & 0xFFFFFFFFFFFFFFF8) + 8) = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v6 <= 3)
  {
    v7 = ((a3 + 2) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (a2 <= 0xFD)
  {
    goto LABEL_24;
  }

LABEL_16:
  v10 = a2 - 254;
  v11 = (a2 - 254) >> 8;
  bzero(a1, (v5 & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v6 <= 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 1;
  }

  if (v6 <= 3)
  {
    *a1 = v10;
    if (v9 > 1)
    {
LABEL_21:
      if (v9 == 2)
      {
        *&a1[v6] = v12;
      }

      else
      {
        *&a1[v6] = v12;
      }

      return;
    }
  }

  else
  {
    *a1 = v10;
    if (v9 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v9)
  {
    a1[v6] = v12;
  }
}

uint64_t sub_22FD7DCF0(uint64_t a1, unsigned int a2)
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

uint64_t sub_22FD7DD38(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22FD7DD7C(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_22FD7DD94(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_22FD7DDAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2DF8, qword_22FE493F0);
    v5 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    type metadata accessor for UnsafeTransfer();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
    sub_22FE43E14();
    v6 = sub_22FE42A24();
    v8 = v7;
    sub_22FE43E14();
    sub_22FE43744();
    sub_22FE43434();
    sub_22FE43744();
    result = swift_getTupleTypeMetadata3();
    if (v9 <= 0x3F)
    {
      if (v8 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22FD7DF50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 24;
  if (*(v3 + 64) > 0x18uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 4)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 253;
}

void sub_22FD7E068(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x18)
  {
    v5 = 24;
  }

  v6 = v5 + 1;
  if (a3 < 0xFD)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 252) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFC)
  {
    v8 = a2 - 253;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_22FD7E220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  type metadata accessor for UnboundedBufferStateMachine.State();
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for UnboundedBufferStateMachine();
  v9 = a5 + *(result + 36);
  *v9 = a2;
  *(v9 + 8) = a3;
  return result;
}

uint64_t sub_22FD7E2D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = type metadata accessor for UnboundedBufferStateMachine.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  (*(v7 + 16))(&v19 - v12, v2, v6);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 0:
      swift_getAssociatedTypeWitness();
      type metadata accessor for UnsafeTransfer();

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      v15 = sub_22FE43E14();
      v20 = sub_22FE432D4();
      v16 = sub_22FE43354();
      WitnessTable = swift_getWitnessTable();
      v18 = sub_22FD809BC(&v20, v15, v16, WitnessTable);

      *v11 = a1;
      v11[1] = v18;
      v11[2] = 0;
      swift_storeEnumTagMultiPayload();
      (*(v7 + 40))(v2, v11, v6);
      return (*(*(v4 - 8) + 8))(v13, v4);
    case 1:
      goto LABEL_6;
    case 2:
      __break(1u);
LABEL_6:
      __break(1u);
      break;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FD7E538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v51 = a1;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for UnsafeTransfer();
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v10 = sub_22FE43E14();
  v11 = sub_22FE43744();
  v46 = *(v11 - 8);
  v47 = v11;
  v12 = *(v46 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v53 = AssociatedTypeWitness;
  v50 = *(AssociatedTypeWitness - 8);
  v16 = *(v50 + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v48 = &v43 - v18;
  v49 = *(v10 - 8);
  v19 = *(v49 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  v22 = type metadata accessor for UnboundedBufferStateMachine.State();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = (&v43 - v25);
  (*(v23 + 16))(&v43 - v25, v4, v22);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    v45 = a3;
    if (result != 1)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v28 = v26[1];
    v44 = *v26;
    v29 = v26[2];
    if (v29)
    {
      v55 = v28;
      sub_22FE42A24();
      swift_getWitnessTable();
      result = sub_22FE43644();
      if (result)
      {
        (*(v23 + 8))(v4, v22);
        *v4 = v44;
        v4[1] = v28;
        v4[2] = 0;
        swift_storeEnumTagMultiPayload();
        v30 = v53;
        sub_22FE43E14();
        sub_22FE43744();
        sub_22FE43434();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v32 = *(TupleTypeMetadata2 + 48);
        v33 = v45;
        *v45 = v29;
        (*(v50 + 16))(&v33[v32], v51, v30);
        swift_storeEnumTagMultiPayload();
        return (*(*(TupleTypeMetadata2 - 8) + 56))(v33, 0, 1, TupleTypeMetadata2);
      }

      __break(1u);
      goto LABEL_18;
    }

    v55 = v28;
    v34 = *(v23 + 8);
    v34(v4, v22);
    swift_storeEnumTagMultiPayload();
    v35 = v4 + *(a2 + 36);
    v36 = *v35;
    v37 = v35[8];
    a3 = v45;
    if (v37)
    {
      if (v37 == 1)
      {
        sub_22FD797E8(sub_22FD797DC, 0, v28, MEMORY[0x277CFB918], v10, MEMORY[0x277D84A98], MEMORY[0x277D83B88], MEMORY[0x277D84AC0], v42);
        if (v54 >= v36)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_22FD797E8(sub_22FD797DC, 0, v28, MEMORY[0x277CFB918], v10, MEMORY[0x277D84A98], MEMORY[0x277D83B88], MEMORY[0x277D84AC0], v42);
      if (v54 >= v36)
      {
        sub_22FE42A24();
        sub_22FE42A14();
        (*(v46 + 8))(v15, v47);
      }
    }

    v38 = v48;
    v39 = v53;
    (*(v50 + 16))(v48, v51, v53);
    _s10PhotosFace20MakeThrowingIteratorVyACyxGxcfC_0(v38, v39, v21);
    swift_storeEnumTagMultiPayload();
    sub_22FE42A24();
    sub_22FE429E4();
    (*(v49 + 8))(v21, v10);
LABEL_15:
    v34(v4, v22);
    v40 = v55;
    *v4 = v44;
    v4[1] = v40;
    v4[2] = 0;
    swift_storeEnumTagMultiPayload();
    goto LABEL_16;
  }

  if (result == 2)
  {
    (*(v23 + 8))(v26, v22);
LABEL_16:
    sub_22FE43E14();
    sub_22FE43744();
    sub_22FE43434();
    v41 = swift_getTupleTypeMetadata2();
    return (*(*(v41 - 8) + 56))(a3, 1, 1, v41);
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_22FD7EC00(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  type metadata accessor for UnsafeTransfer();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v7 = sub_22FE43E14();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v28 - v10);
  v12 = type metadata accessor for UnboundedBufferStateMachine.State();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = (&v28 - v18);
  (*(v13 + 16))(&v28 - v18, v3, v12);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result != 1)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v21 = *v19;
    v22 = v19[1];
    v23 = v19[2];

    if (v23)
    {
      v29 = v22;
      sub_22FE42A24();
      swift_getWitnessTable();
      result = sub_22FE43644();
      if (result)
      {
        v29 = sub_22FE432D4();
        v24 = sub_22FE43354();
        WitnessTable = swift_getWitnessTable();
        v26 = sub_22FD809BC(&v29, v7, v24, WitnessTable);

        *v17 = v26;
        swift_storeEnumTagMultiPayload();
        (*(v13 + 40))(v3, v17, v12);
        return v23;
      }

      __break(1u);
      goto LABEL_14;
    }

    v29 = v22;
    if (a1)
    {
      *v11 = a1;
      swift_storeEnumTagMultiPayload();
      v27 = a1;
      sub_22FE42A24();
      sub_22FE429E4();
      (*(v8 + 8))(v11, v7);
    }

    (*(v13 + 8))(v3, v12);
    *v3 = v29;
    swift_storeEnumTagMultiPayload();
    return 1;
  }

  if (result == 2)
  {
    (*(v13 + 8))(v19, v12);
    return 1;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_22FD7EFA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for UnsafeTransfer();
  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v7 = sub_22FE43E14();
  v8 = sub_22FE43744();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v44 - v14;
  v46 = *(v7 - 1);
  v16 = *(v46 + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  v49 = v6;
  v50 = v5;
  v22 = type metadata accessor for UnboundedBufferStateMachine.State();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = (&v44 - v25);
  (*(v23 + 16))(&v44 - v25, v3, v22);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v28 = *v26;
    v51 = *v26;
    sub_22FE42A24();
    swift_getWitnessTable();
    if (sub_22FE43644())
    {

      v29 = sub_22FE43E14();
      (*(*(v29 - 8) + 56))(a2, 1, 1, v29);
    }

    else
    {
      v51 = v28;
      v39 = *(v23 + 8);
      v39(v3, v22);
      swift_storeEnumTagMultiPayload();
      sub_22FE42A14();
      v40 = v46;
      result = (*(v46 + 48))(v12, 1, v7);
      if (result == 1)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      (*(v40 + 32))(v19, v12, v7);
      v39(v3, v22);
      *v3 = v51;
      v41 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v41);
      v42 = v50;
      *(&v44 - 2) = v49;
      *(&v44 - 1) = v42;

      sub_22FD78848(sub_22FD7AC08, v7, a2);
      (*(v40 + 8))(v19, v7);

      v43 = sub_22FE43E14();
      (*(*(v43 - 8) + 56))(a2, 0, 1, v43);
    }

LABEL_15:
    type metadata accessor for UnboundedBufferStateMachine.NextAction();
    return swift_storeEnumTagMultiPayload();
  }

  if (!result)
  {
    (*(*(v49 - 8) + 32))(a2, v26, v49);
    type metadata accessor for UnboundedBufferStateMachine.NextAction();
    return swift_storeEnumTagMultiPayload();
  }

  v44 = a2;
  v31 = *v26;
  v30 = v26[1];
  v45 = v26[2];
  v51 = v30;
  sub_22FE42A24();
  swift_getWitnessTable();
  result = sub_22FE43644();
  if (result)
  {

    if (!v45)
    {
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_18;
  }

  v51 = v30;
  if (v45)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v32 = *(v23 + 8);
  v32(v3, v22);
  swift_storeEnumTagMultiPayload();
  sub_22FE42A14();
  v33 = v46;
  result = (*(v46 + 48))(v15, 1, v7);
  if (result != 1)
  {
    (*(v33 + 32))(v21, v15, v7);
    v32(v3, v22);
    v34 = v51;
    *v3 = v31;
    v3[1] = v34;
    v3[2] = 0;
    v35 = swift_storeEnumTagMultiPayload();
    v45 = &v44;
    MEMORY[0x28223BE20](v35);
    v36 = v50;
    *(&v44 - 2) = v49;
    *(&v44 - 1) = v36;

    v37 = v44;
    sub_22FD78848(sub_22FD7AC08, v7, v44);

    (*(v33 + 8))(v21, v7);

    v38 = sub_22FE43E14();
    (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22FD7F71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v53 = a1;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for UnsafeTransfer();
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v8 = sub_22FE43E14();
  v9 = sub_22FE43744();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v50 - v15;
  v56 = *(v8 - 1);
  v17 = *(v56 + 64);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v52 = &v50 - v21;
  v54 = v7;
  v55 = v6;
  v22 = type metadata accessor for UnboundedBufferStateMachine.State();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = (&v50 - v25);
  (*(v23 + 16))(&v50 - v25, v4, v22);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v32 = *v26;
    v59 = *v26;
    sub_22FE42A24();
    swift_getWitnessTable();
    if (sub_22FE43644())
    {

      v33 = sub_22FE43E14();
      (*(*(v33 - 8) + 56))(a3, 1, 1, v33);
    }

    else
    {
      v59 = v32;
      v45 = *(v23 + 8);
      v45(v4, v22);
      swift_storeEnumTagMultiPayload();
      sub_22FE42A14();
      v46 = v56;
      result = (*(v56 + 48))(v13, 1, v8);
      if (result == 1)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      (*(v46 + 32))(v20, v13, v8);
      v45(v4, v22);
      *v4 = v59;
      v47 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v47);
      v48 = v55;
      *(&v50 - 2) = v54;
      *(&v50 - 1) = v48;

      sub_22FD78848(sub_22FD798EC, v8, a3);
      (*(v46 + 8))(v20, v8);

      v49 = sub_22FE43E14();
      (*(*(v49 - 8) + 56))(a3, 0, 1, v49);
    }

    v42 = sub_22FE43744();
    v43 = *(*(v42 - 8) + 56);
    v44 = a3;
    return v43(v44, 0, 1, v42);
  }

  v51 = a3;
  if (result != 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v28 = *v26;
  v29 = v26[1];
  v30 = v26[2];
  v59 = v29;
  sub_22FE42A24();

  swift_getWitnessTable();
  if (sub_22FE43644())
  {

    if (!v30)
    {
      (*(v23 + 8))(v4, v22);
      *v4 = v28;
      v4[1] = v29;
      v4[2] = v53;
      swift_storeEnumTagMultiPayload();
      sub_22FE43E14();
      v31 = sub_22FE43744();
      return (*(*(v31 - 8) + 56))(v51, 1, 1, v31);
    }

    __break(1u);
    goto LABEL_17;
  }

  v59 = v29;
  if (v30)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v34 = *(v23 + 8);
  v34(v4, v22);
  swift_storeEnumTagMultiPayload();
  sub_22FE42A14();
  v35 = v56;
  result = (*(v56 + 48))(v16, 1, v8);
  if (result != 1)
  {
    v36 = v52;
    (*(v35 + 32))(v52, v16, v8);
    v34(v4, v22);
    v37 = v59;
    *v4 = v28;
    v4[1] = v37;
    v4[2] = 0;
    v38 = swift_storeEnumTagMultiPayload();
    MEMORY[0x28223BE20](v38);
    v39 = v55;
    *(&v50 - 2) = v54;
    *(&v50 - 1) = v39;

    v40 = v51;
    sub_22FD78848(sub_22FD7AC08, v8, v51);

    (*(v35 + 8))(v36, v8);

    v41 = sub_22FE43E14();
    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    v42 = sub_22FE43744();
    v43 = *(*(v42 - 8) + 56);
    v44 = v40;
    return v43(v44, 0, 1, v42);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22FD7FEF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = type metadata accessor for UnboundedBufferStateMachine.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v28 - v10);
  (*(v5 + 16))(&v28 - v10, v1, v4);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      (*(v5 + 8))(v11, v4);
      swift_getAssociatedTypeWitness();
      type metadata accessor for UnsafeTransfer();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      v17 = sub_22FE43E14();
      v29 = sub_22FE432D4();
      v18 = sub_22FE43354();
      WitnessTable = swift_getWitnessTable();
      v20 = sub_22FD809BC(&v29, v17, v18, WitnessTable);

      *v9 = v20;
      swift_storeEnumTagMultiPayload();
      (*(v5 + 40))(v1, v9, v4);
      return 0;
    }

    __break(1u);
  }

  else
  {
    if (!result)
    {
      swift_getAssociatedTypeWitness();
      type metadata accessor for UnsafeTransfer();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
      v13 = sub_22FE43E14();
      v29 = sub_22FE432D4();
      v14 = sub_22FE43354();
      v15 = swift_getWitnessTable();
      v16 = sub_22FD809BC(&v29, v13, v14, v15);

      *v9 = v16;
      swift_storeEnumTagMultiPayload();
      (*(v5 + 40))(v1, v9, v4);
      (*(*(v2 - 8) + 8))(v11, v2);
      return 0;
    }

    v22 = *v11;
    v21 = v11[1];
    v23 = v11[2];

    swift_getAssociatedTypeWitness();
    type metadata accessor for UnsafeTransfer();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
    v24 = sub_22FE43E14();
    v29 = sub_22FE432D4();
    v25 = sub_22FE43354();
    v26 = swift_getWitnessTable();
    v27 = sub_22FD809BC(&v29, v24, v25, v26);

    *v9 = v27;
    swift_storeEnumTagMultiPayload();
    (*(v5 + 40))(v1, v9, v4);
    return v22;
  }

  return result;
}

uint64_t sub_22FD80360(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    sub_22FE429D4();
    v12 = sub_22FE43784();
    v14 = v13;
    MEMORY[0x28223BE20](v12);
    v15 = *(a7 + 8);
    result = sub_22FE431A4();
    if (v17 == 1)
    {
      result = sub_22FD8069C(a4, v12, v14, a5, a6, a7);
    }

    *(v16 + 8) = a3;
  }

  return result;
}

uint64_t sub_22FD80490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  result = MEMORY[0x28223BE20]();
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v22 = *(v20 + 64);
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_7;
  }

  v25 = *(*(v15 - 8) + 80);
  v26 = __CFADD__(v24, v25 + 1);
  v27 = v24 + v25 + 1;
  if (v26)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result = v16(v14 + v21, v14 + ((v27 - 1) & ~v25), v18);
  if (v9)
  {
    return (*(v11 + 32))(a9, v18, a6);
  }

  return result;
}

uint64_t sub_22FD80608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[1] = a2;
  v11[0] = a1;
  v8 = sub_22FE43034();
  WitnessTable = swift_getWitnessTable();
  return sub_22FD8069C(v11, a3, a4, a5, v8, WitnessTable);
}

uint64_t sub_22FD8069C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_22FE43744();
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = *(v34 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v33 = &v28 - v15;
  v29 = *(a5 - 8);
  v16 = *(v29 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v21 = *(v30 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v23 = &v28 - v22;
  v31 = a2;
  v32 = a4;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a2;
  v40 = a3;
  sub_22FE431A4();
  if (v42 != 1)
  {
    return v41;
  }

  (*(v29 + 16))(v18, a1, a5);
  v24 = sub_22FE43194();
  swift_getAssociatedConformanceWitness();
  v25 = v33;
  sub_22FE437A4();
  (*(v30 + 8))(v23, AssociatedTypeWitness);
  v26 = (*(*(v32 - 8) + 48))(v25, 1);
  result = (*(v34 + 8))(v25, v35);
  if (v26 == 1)
  {
    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FD809BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22FE435E4();
  if (v8 <= 0)
  {

    return MEMORY[0x28214E790](a2);
  }

  else
  {
    v9 = v8;
    v10 = sub_22FE429F4();
    v11 = MEMORY[0x28223BE20](v10);
    v15[8] = a2;
    v15[9] = a3;
    v15[10] = a4;
    v15[11] = v9;
    v15[12] = a1;
    MEMORY[0x28223BE20](v11);
    v15[2] = a2;
    v15[3] = sub_22FD80B44;
    v15[4] = v12;

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAE2B00, " x");
    sub_22FD80490(sub_22FD80B68, v15, v10, MEMORY[0x277CFB918], a2, v13, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84950], v16);

    return v10;
  }
}

uint64_t sub_22FD80B68(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  result = v6();
  if (v4)
  {
    *a3 = v4;
  }

  return result;
}

uint64_t sub_22FD80BA0(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  return sub_22FD80608(a1, a2, v2[5], v2[6], v2[2]);
}

uint64_t sub_22FD80BC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = a2;
  if (!a2)
  {
LABEL_6:
    *a3 = v5;
    return result;
  }

  if (v3[6] >= a2)
  {
    v6 = v3[2];
    v7 = v3[5];
    result = sub_22FE43724();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_22FD80C74(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  sub_22FE43E14();
  v3 = sub_22FE43744();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v3;
}

uint64_t sub_22FD80D1C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_25;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) > 3)
  {
    goto LABEL_6;
  }

  v14 = ((a2 + ~(-1 << v11) - 252) >> v11) + 1;
  if (HIWORD(v14))
  {
    v12 = *(a1 + v10);
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_25:
    v16 = *(a1 + v9);
    if (v16 >= 2)
    {
      v17 = (v16 ^ 0xFF) + 1;
    }

    else
    {
      v17 = 0;
    }

    if (v17 >= 2)
    {
      v18 = v17 - 1;
    }

    else
    {
      v18 = 0;
    }

    if (v18 >= 2)
    {
      return v18 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v14 > 0xFF)
  {
    v12 = *(a1 + v10);
    if (*(a1 + v10))
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

  if (v14 < 2)
  {
    goto LABEL_25;
  }

LABEL_6:
  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_25;
  }

LABEL_14:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 253;
}

void sub_22FD80E84(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v10 = v9 + 1;
  if (a3 < 0xFD)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 252) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFC)
  {
    v12 = a2 - 253;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_39:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v9] = -2 - a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_24;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_22FD81078(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
    sub_22FE43E14();
    v3 = sub_22FE43744();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_22FD8114C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  if (v7 + 1 > v6)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_28;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 253) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v13 < 2)
    {
LABEL_28:
      v15 = *(a1 + v8);
      if (v15 >= 3)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_28;
  }

LABEL_17:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 254;
}

void sub_22FD812CC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  if (v9 + 1 > v8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10 + 1;
  if (a3 < 0xFE)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 253) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xFD)
  {
    v13 = a2 - 254;
    if (v11 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v10 != -1)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_42:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v10] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_27;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t sub_22FD814C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22FD81510(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_22FD81560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_22FD815B4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_22FD815EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_22FD81634);
}

uint64_t sub_22FD81634()
{
  v1 = v0[4];
  v2 = *(MEMORY[0x277D85A10] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  v5 = *(v1 + 80);
  v4 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  sub_22FE43E14();
  sub_22FE43744();
  *v3 = v0;
  v3[1] = sub_22FD7ADCC;
  v6 = v0[2];
  v7 = v0[3];

  return MEMORY[0x282200830](v6, &unk_22FE49568);
}

uint64_t sub_22FD81760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_resume();
}

uint64_t sub_22FD817D8(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *a2;
  v2[4] = *(*a2 + 80);
  v2[5] = *(v3 + 88);
  v2[6] = type metadata accessor for UnboundedBufferStateMachine.NextAction();
  v4 = sub_22FE43744();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FD818EC);
}

uint64_t sub_22FD818EC()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = *(v8 + 16);
  type metadata accessor for UnboundedBufferStateMachine();
  sub_22FD8C780(sub_22FD837DC, v8, v9);
  (*(v4 + 16))(v1, v2, v3);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    goto LABEL_7;
  }

  v10 = v0[9];
  v11 = v0[6];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return sub_22FE43A74();
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_7:
    v22 = v0[4];
    v21 = v0[5];
    v23 = swift_task_alloc();
    v0[11] = v23;
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
    sub_22FE43E14();
    v24 = sub_22FE43744();
    *v23 = v0;
    v23[1] = sub_22FD81C50;
    v25 = v0[2];
    v26 = v0[3];

    return sub_22FD7BEBC(v25, 0, 0, sub_22FD837F8, v26, v24);
  }

  else
  {
    v14 = v0[4];
    v13 = v0[5];
    v15 = v0[2];
    (*(v0[8] + 8))(v0[10], v0[7]);
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
    sub_22FE43E14();
    v16 = sub_22FE43744();
    (*(*(v16 - 8) + 32))(v15, v10, v16);
    v18 = v0[9];
    v17 = v0[10];

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_22FD81C50()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_22FD81D4C);
}

uint64_t sub_22FD81D4C()
{
  (*(v0[8] + 8))(v0[10], v0[7]);
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FD81DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v4 = *(*a2 + 80);
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v23 - v6;
  v9 = *(v8 + 88);
  Action = type metadata accessor for UnboundedBufferStateMachine.NextAction();
  v11 = *(Action - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](Action);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = type metadata accessor for UnboundedBufferStateMachine();
  sub_22FD7EFA0(v18, v17);
  (*(v11 + 16))(v15, v17, Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v20 = v24;
    if (EnumCaseMultiPayload == 1)
    {
      (*(v11 + 32))(v24, v17, Action);
      (*(v11 + 56))(v20, 0, 1, Action);
      return (*(v11 + 8))(v15, Action);
    }

    else
    {
      (*(v11 + 32))(v24, v17, Action);
      return (*(v11 + 56))(v20, 0, 1, Action);
    }
  }

  else
  {
    v22 = v23;
    (*(v23 + 32))(v7, v15, v4);
    sub_22FD820C8(a1, v7);
    (*(v22 + 8))(v7, v4);
    (*(v11 + 8))(v17, Action);
    return (*(v11 + 56))(v24, 1, 1, Action);
  }
}

uint64_t sub_22FD820C8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAE3188, &qword_22FE49380);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_22FE43404();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v6 + 16))(v9, a2, v5);
  v15 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v5;
  *(v16 + 5) = *(v4 + 88);
  (*(v6 + 32))(&v16[v15], v9, v5);
  *&v16[(v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8] = v2;

  v17 = sub_22FE0BBD0(0, 0, v13, &unk_22FE49580, v16);
  v18 = type metadata accessor for UnboundedBufferStateMachine();
  sub_22FD7E2D4(v17, v18);
}

uint64_t sub_22FD8230C(uint64_t a1, void *a2)
{
  v25 = a1;
  v3 = *(*a2 + 88);
  v4 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  sub_22FE43E14();
  v5 = sub_22FE43744();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v24 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  SuspendedAction = type metadata accessor for UnboundedBufferStateMachine.NextSuspendedAction();
  v13 = *(SuspendedAction - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](SuspendedAction);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v24 - v18;
  v20 = a2[2];
  v27 = v4;
  v28 = v3;
  v29 = v25;
  type metadata accessor for UnboundedBufferStateMachine();
  sub_22FD8C780(sub_22FD83800, v26, v20);
  (*(v13 + 16))(v17, v19, SuspendedAction);
  if ((*(v6 + 48))(v17, 1, v5) != 1)
  {
    v21 = *(v6 + 32);
    v21(v11, v17, v5);
    v22 = v24;
    (*(v6 + 16))(v24, v11, v5);
    v21(*(*(v25 + 64) + 40), v22, v5);
    swift_continuation_resume();
    (*(v6 + 8))(v11, v5);
  }

  return (*(v13 + 8))(v19, SuspendedAction);
}

void sub_22FD82658()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAE2B00, " x");
  v3 = sub_22FE43E14();
  v4 = sub_22FE43744();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  v9 = v0[2];
  v12 = v2;
  v13 = v1;
  type metadata accessor for UnboundedBufferStateMachine();
  type metadata accessor for UnboundedBufferStateMachine.InterruptedAction();
  sub_22FD8C780(sub_22FD836F0, v11, v9);
  if (v14)
  {
    v10 = v15;
    sub_22FE43414();
    if (v10)
    {
      (*(*(v3 - 8) + 56))(v8, 1, 1, v3);
      (*(v5 + 32))(*(*(v10 + 64) + 40), v8, v4);
      swift_continuation_resume();
    }
  }
}