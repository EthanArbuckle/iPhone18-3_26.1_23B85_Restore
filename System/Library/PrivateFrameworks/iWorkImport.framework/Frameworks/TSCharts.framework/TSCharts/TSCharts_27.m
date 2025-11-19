uint64_t *sub_276470B7C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27646FE54(result);

    return sub_27647088C(v4, a2);
  }

  return result;
}

uint64_t sub_276470BC8(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  result = sub_27644DF5C(*(a1 + 48));
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(a1 + 56));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 4) != 0)
    {
      result = TSCH::PropertyValueStorageContainerArchive::IsInitialized(*(a1 + 64));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 8) != 0)
    {
      result = TSCH::PropertyValueStorageContainerArchive::IsInitialized(*(a1 + 72));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 0x10) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(a1 + 80));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t *sub_276470C98(uint64_t *a1)
{
  sub_276470CCC(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_276470CCC(uint64_t *result)
{
  if (result != &qword_2812F2388)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      v3 = sub_276466CA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4025A55CD8);
    }

    v4 = v1[4];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C98580]();
    }

    v5 = v1[5];
    if (v5)
    {
      TSCH::PropertyValueStorageContainerArchive::~PropertyValueStorageContainerArchive(v5);
      MEMORY[0x277C98580]();
    }

    result = v1[6];
    if (result)
    {
      TSCH::PropertyValueStorageContainerArchive::~PropertyValueStorageContainerArchive(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_276470D90(uint64_t *a1)
{
  sub_276470C98(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276470DD0(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_12:
    result = TSP::Reference::Clear(v1[4]);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_13;
  }

  result = sub_27644C464(result[3]);
  if ((v2 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  result = TSCH::PropertyValueStorageContainerArchive::Clear(v1[5]);
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = TSCH::PropertyValueStorageContainerArchive::Clear(v1[6]);
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_276470E68(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  while ((sub_2763D4D98(a3, &v23) & 1) == 0)
  {
    v5 = (v23 + 1);
    v6 = *v23;
    if ((*v23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v23 + 2);
LABEL_6:
      v23 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v7 - 128));
    v23 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v21;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 4u;
        v14 = *(a1 + 40);
        if (!v14)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = google::protobuf::Arena::CreateMaybeMessage<TSCH::PropertyValueStorageContainerArchive>(v18);
          *(a1 + 40) = v14;
LABEL_37:
          v5 = v23;
        }
      }

      else
      {
        if (v8 != 4 || v6 != 34)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 8u;
        v14 = *(a1 + 48);
        if (!v14)
        {
          v15 = *(a1 + 8);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = google::protobuf::Arena::CreateMaybeMessage<TSCH::PropertyValueStorageContainerArchive>(v15);
          *(a1 + 48) = v14;
          goto LABEL_37;
        }
      }

      v13 = sub_2764AF9B0(a3, v14, v5);
      goto LABEL_46;
    }

    if (v8 == 1)
    {
      if (v6 != 10)
      {
        goto LABEL_39;
      }

      *(a1 + 16) |= 1u;
      v16 = *(a1 + 24);
      if (!v16)
      {
        v17 = *(a1 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = sub_276476600(v17);
        *(a1 + 24) = v16;
        v5 = v23;
      }

      v13 = sub_2764AE490(a3, v16, v5);
    }

    else
    {
      if (v8 != 2 || v6 != 18)
      {
LABEL_39:
        if (v6)
        {
          v19 = (v6 & 7) == 4;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          *(a3 + 80) = v6 - 1;
          return v23;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v13 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_46;
      }

      *(a1 + 16) |= 2u;
      v10 = *(a1 + 32);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C97B90](v11);
        LODWORD(v10) = v12;
        *(a1 + 32) = v12;
        v5 = v23;
      }

      v13 = sub_2764ADCBC(a3, v10, v5);
    }

LABEL_46:
    v23 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v23;
}

unsigned __int8 *sub_2764710C0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 20);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = sub_2764670A4(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(a1 + 32);
  *a2 = 18;
  v13 = *(v12 + 5);
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = a2 + 3;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      a2[2] = v15;
      v14 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v13;
    v14 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_36;
  }

LABEL_26:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(a1 + 40);
  *a2 = 26;
  v19 = *(v18 + 11);
  if (v19 > 0x7F)
  {
    a2[1] = v19 | 0x80;
    v21 = v19 >> 7;
    if (v19 >> 14)
    {
      v20 = a2 + 3;
      do
      {
        *(v20 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        ++v20;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(v20 - 1) = v22;
    }

    else
    {
      a2[2] = v21;
      v20 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v19;
    v20 = a2 + 2;
  }

  a2 = TSCH::PropertyValueStorageContainerArchive::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) != 0)
  {
LABEL_36:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v24 = *(a1 + 48);
    *a2 = 34;
    v25 = *(v24 + 11);
    if (v25 > 0x7F)
    {
      a2[1] = v25 | 0x80;
      v27 = v25 >> 7;
      if (v25 >> 14)
      {
        v26 = a2 + 3;
        do
        {
          *(v26 - 1) = v27 | 0x80;
          v28 = v27 >> 7;
          ++v26;
          v29 = v27 >> 14;
          v27 >>= 7;
        }

        while (v29);
        *(v26 - 1) = v28;
      }

      else
      {
        a2[2] = v27;
        v26 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v25;
      v26 = a2 + 2;
    }

    a2 = TSCH::PropertyValueStorageContainerArchive::_InternalSerialize(v24, v26, a3);
  }

LABEL_46:
  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276471388(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_276467344(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xE) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v7 = TSP::Reference::ByteSizeLong(*(a1 + 32));
      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 4) == 0)
      {
LABEL_7:
        if ((v2 & 8) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    else if ((v2 & 4) == 0)
    {
      goto LABEL_7;
    }

    v8 = TSCH::PropertyValueStorageContainerArchive::ByteSizeLong(*(a1 + 40));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) != 0)
    {
LABEL_8:
      v5 = TSCH::PropertyValueStorageContainerArchive::ByteSizeLong(*(a1 + 48));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_9:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_2764714CC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885273F8, 0);
  if (v4)
  {

    return sub_276471574(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276471574(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = sub_276476600(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &qword_2812F1FA8;
      }

      result = sub_27644DC54(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v9 = *(v3 + 32);
      if (!v9)
      {
        v10 = *(v3 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = MEMORY[0x277C97B90](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = MEMORY[0x277D80A18];
      }

      result = TSP::Reference::MergeFrom(v9, v11);
    }

    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v12 = *(v3 + 40);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSCH::PropertyValueStorageContainerArchive>(v13);
        *(v3 + 40) = v12;
      }

      if (*(a2 + 40))
      {
        v14 = *(a2 + 40);
      }

      else
      {
        v14 = &TSCH::_PropertyValueStorageContainerArchive_default_instance_;
      }

      result = TSCH::PropertyValueStorageContainerArchive::MergeFrom(v12, v14);
    }

    if ((v5 & 8) != 0)
    {
      *(v3 + 16) |= 8u;
      v15 = *(v3 + 48);
      if (!v15)
      {
        v16 = *(v3 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = google::protobuf::Arena::CreateMaybeMessage<TSCH::PropertyValueStorageContainerArchive>(v16);
        *(v3 + 48) = v15;
      }

      if (*(a2 + 48))
      {
        v17 = *(a2 + 48);
      }

      else
      {
        v17 = &TSCH::_PropertyValueStorageContainerArchive_default_instance_;
      }

      return TSCH::PropertyValueStorageContainerArchive::MergeFrom(v15, v17);
    }
  }

  return result;
}

uint64_t *sub_276471708(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276470DD0(result);

    return sub_2764714CC(v4, a2);
  }

  return result;
}

uint64_t sub_276471754(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  result = sub_27644DF5C(*(a1 + 24));
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(a1 + 32));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 4) != 0)
    {
      result = TSCH::PropertyValueStorageContainerArchive::IsInitialized(*(a1 + 40));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 8) == 0)
    {
      return 1;
    }

    result = TSCH::PropertyValueStorageContainerArchive::IsInitialized(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t *sub_276471810(uint64_t *a1)
{
  if (a1 != &qword_2812F23C0 && a1[3])
  {
    v2 = MEMORY[0x277C973A0]();
    MEMORY[0x277C98580](v2, 0x10A1C40C24530F0);
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276471874(uint64_t *a1)
{
  sub_276471810(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_2764718B4(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSK::CommandArchive::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_276471910(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_2763D4D98(a3, &v16) & 1) == 0)
  {
    v5 = (v16 + 1);
    v6 = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v16 + 2);
LABEL_6:
      v16 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v7 - 128));
    v16 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v14;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C97AF0](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_2764AF5A0(a3, v10, v5);
    }

    else
    {
      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_276471A58(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 5);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = TSK::CommandArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276471B48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSK::CommandArchive::ByteSizeLong(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_276471BD4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527410, 0);
  if (v4)
  {

    return sub_27646B8B8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_276471C7C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2764718B4(result);

    return sub_276471BD4(v4, a2);
  }

  return result;
}

uint64_t sub_276471CC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return TSK::CommandArchive::IsInitialized(*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_276471D1C(uint64_t *a1)
{
  if (a1 != &qword_2812F23E0 && a1[3])
  {
    v2 = MEMORY[0x277C973A0]();
    MEMORY[0x277C98580](v2, 0x10A1C40C24530F0);
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276471D80(uint64_t *a1)
{
  sub_276471D1C(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276471DC0(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSK::CommandArchive::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_276471E1C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_2763D4D98(a3, &v16) & 1) == 0)
  {
    v5 = (v16 + 1);
    v6 = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v16 + 2);
LABEL_6:
      v16 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v7 - 128));
    v16 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v14;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C97AF0](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_2764AF5A0(a3, v10, v5);
    }

    else
    {
      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_276471F64(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 5);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = TSK::CommandArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276472054(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSK::CommandArchive::ByteSizeLong(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_2764720E0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527428, 0);
  if (v4)
  {

    return sub_27646B8B8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_276472188(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276471DC0(result);

    return sub_2764720E0(v4, a2);
  }

  return result;
}

uint64_t sub_2764721D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return TSK::CommandArchive::IsInitialized(*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_276472228(uint64_t *a1)
{
  if (a1 != &qword_2812F2400)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C98580]();
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_27647228C(uint64_t *a1)
{
  sub_276472228(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_2764722CC(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSP::Reference::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_276472328(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_2763D4D98(a3, &v16) & 1) == 0)
  {
    v5 = (v16 + 1);
    v6 = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v16 + 2);
LABEL_6:
      v16 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v7 - 128));
    v16 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v14;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C97B90](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_2764ADCBC(a3, v10, v5);
    }

    else
    {
      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_276472470(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 5);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276472560(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSP::Reference::ByteSizeLong(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_2764725EC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527440, 0);
  if (v4)
  {

    return sub_276472694(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276472694(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C97B90](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v6, v8);
  }

  return result;
}

uint64_t *sub_27647273C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2764722CC(result);

    return sub_2764725EC(v4, a2);
  }

  return result;
}

uint64_t sub_276472788(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_2764727F4(uint64_t *a1)
{
  if (a1 != &qword_2812F2420 && a1[3])
  {
    v2 = MEMORY[0x277C97360]();
    MEMORY[0x277C98580](v2, 0x10A1C40DFBAE579);
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276472858(uint64_t *a1)
{
  sub_2764727F4(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276472898(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSD::DrawableSelectionTransformerArchive::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_2764728F4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_2763D4D98(a3, &v16) & 1) == 0)
  {
    v5 = (v16 + 1);
    v6 = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v16 + 2);
LABEL_6:
      v16 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v7 - 128));
    v16 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v14;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C97AE0](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_2764AFB50(a3, v10, v5);
    }

    else
    {
      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_276472A3C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 5);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = TSD::DrawableSelectionTransformerArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276472B2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSD::DrawableSelectionTransformerArchive::ByteSizeLong(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_276472BB8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527458, 0);
  if (v4)
  {

    return sub_276472C60(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276472C60(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    *(v3 + 16) |= 1u;
    if (!*(v3 + 24))
    {
      v5 = *(v3 + 8);
      if (v5)
      {
        v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v3 + 24) = MEMORY[0x277C97AE0](v5);
    }

    return MEMORY[0x2821E9D50]();
  }

  return result;
}

uint64_t *sub_276472D08(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276472898(result);

    return sub_276472BB8(v4, a2);
  }

  return result;
}

uint64_t sub_276472D54(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return MEMORY[0x2821EA120](*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_276472DA8(uint64_t *a1)
{
  if (a1 != &qword_2812F2440)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C98580]();
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276472E0C(uint64_t *a1)
{
  sub_276472DA8(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276472E4C(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSP::Reference::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_276472EA8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_2763D4D98(a3, &v16) & 1) == 0)
  {
    v5 = (v16 + 1);
    v6 = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v16 + 2);
LABEL_6:
      v16 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v7 - 128));
    v16 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v14;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C97B90](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_2764ADCBC(a3, v10, v5);
    }

    else
    {
      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_276472FF0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 5);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_2764730E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSP::Reference::ByteSizeLong(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_27647316C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527470, 0);
  if (v4)
  {

    return sub_276472694(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_276473214(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276472E4C(result);

    return sub_27647316C(v4, a2);
  }

  return result;
}

uint64_t sub_276473260(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_2764732CC(void *a1, uint64_t a2)
{
  *a1 = &unk_288526D28;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812EDA58, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = 0;
  return a1;
}

void *sub_276473358(void *a1)
{
  if (a1 != qword_2812F2460)
  {
    v2 = a1[6];
    if (v2)
    {
      v3 = sub_276472DA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C40D4912B22);
    }
  }

  sub_2763941F4(a1 + 1);
  sub_27647791C(a1 + 3);
  return a1;
}

void sub_2764733C8(void *a1)
{
  sub_276473358(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276473408(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = TSP::UUID::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if (v1[2])
  {
    result = sub_276472E4C(v1[6]);
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_2763D4FD4(v5);
  }

  return result;
}

google::protobuf::internal *sub_276473498(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v25))
    {
      return v25;
    }

    v5 = (v25 + 1);
    v6 = *v25;
    if ((*v25 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v25 + 2);
LABEL_6:
      v25 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v7 - 128));
    v25 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v23;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      v11 = v5 - 1;
      while (1)
      {
        v12 = (v11 + 1);
        v25 = (v11 + 1);
        v13 = *(a1 + 40);
        if (!v13)
        {
          goto LABEL_22;
        }

        v19 = *(a1 + 32);
        v14 = *v13;
        if (v19 < *v13)
        {
          *(a1 + 32) = v19 + 1;
          v16 = *&v13[2 * v19 + 2];
          goto LABEL_26;
        }

        if (v14 == *(a1 + 36))
        {
LABEL_22:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v13 = *(a1 + 40);
          v14 = *v13;
        }

        *v13 = v14 + 1;
        v15 = MEMORY[0x277C97B40](*(a1 + 24));
        LODWORD(v16) = v15;
        v17 = *(a1 + 32);
        v18 = *(a1 + 40) + 8 * v17;
        *(a1 + 32) = v17 + 1;
        *(v18 + 8) = v15;
        v12 = v25;
LABEL_26:
        v11 = sub_2764AE3C0(a3, v16, v12);
        v25 = v11;
        if (!v11)
        {
          return 0;
        }

        if (*a3 <= v11 || *v11 != 18)
        {
          goto LABEL_2;
        }
      }
    }

    if (v6 >> 3 == 1 && v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v20 = *(a1 + 48);
      if (!v20)
      {
        v21 = *(a1 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v20 = sub_276477004(v21);
        *(a1 + 48) = v20;
        v5 = v25;
      }

      v10 = sub_2764AFC20(a3, v20, v5);
      goto LABEL_37;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_37:
    v25 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v25;
}

unsigned __int8 *sub_2764736BC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 48);
    *a2 = 10;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = sub_276472FF0(v5, v7, a3);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
      v14 = *(v13 + 5);
      if (v14 > 0x7F)
      {
        a2[1] = v14 | 0x80;
        v16 = v14 >> 7;
        if (v14 >> 14)
        {
          v15 = a2 + 3;
          do
          {
            *(v15 - 1) = v16 | 0x80;
            v17 = v16 >> 7;
            ++v15;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
          *(v15 - 1) = v17;
        }

        else
        {
          a2[2] = v16;
          v15 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v14;
        v15 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276473878(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_2764730E0(*(a1 + 48));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v2 + v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = TSP::UUID::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v5;
    return v5;
  }
}

uint64_t sub_276473964(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527488, 0);
  if (v4)
  {

    return sub_276473A0C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276473A0C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_2764779A0(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 48);
    *(v3 + 16) |= 1u;
    v11 = *(v3 + 48);
    if (!v11)
    {
      v12 = *(v3 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = sub_276477004(v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 48);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = &qword_2812F2440;
    }

    return sub_276472694(v11, v13);
  }

  return result;
}

uint64_t *sub_276473B1C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276473408(result);

    return sub_276473964(v4, a2);
  }

  return result;
}

uint64_t sub_276473B68(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(a1 + 40) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v6 = *(a1 + 48);
  if ((*(v6 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(v6 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_276473C28(uint64_t *a1)
{
  if (a1 != &qword_2812F2498)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_276472DA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C40D4912B22);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276473C8C(uint64_t *a1)
{
  sub_276473C28(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276473CCC(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = sub_276472E4C(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_276473D28(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_2763D4D98(a3, &v15) & 1) == 0)
  {
    v5 = (v15 + 1);
    v6 = *v15;
    if ((*v15 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v15 + 2);
LABEL_6:
      v15 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v15, (v7 - 128));
    v15 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v13;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = sub_276477004(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_2764AFC20(a3, v10, v5);
    }

    else
    {
      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v15;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v15 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v15;
}

unsigned __int8 *sub_276473E70(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = sub_276472FF0(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276473F60(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_2764730E0(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_276473FEC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885274A0, 0);
  if (v4)
  {

    return sub_276474094(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276474094(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_276477004(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &qword_2812F2440;
    }

    return sub_276472694(v6, v8);
  }

  return result;
}

uint64_t *sub_27647413C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276473CCC(result);

    return sub_276473FEC(v4, a2);
  }

  return result;
}

uint64_t sub_276474188(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  if ((*(v2 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(v2 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_276474208(uint64_t *a1)
{
  if (a1 != &qword_2812F24B8)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C98580]();
    }

    v3 = a1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C98580]();
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276474284(uint64_t *a1)
{
  sub_276474208(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_2764742C4(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = TSP::Reference::Clear(result[3]);
    }

    if ((v2 & 2) != 0)
    {
      result = TSP::Reference::Clear(v1[4]);
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_276474334(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  while ((sub_2763D4D98(a3, &v19) & 1) == 0)
  {
    v5 = (v19 + 1);
    v6 = *v19;
    if ((*v19 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v19 + 2);
LABEL_6:
      v19 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v7 - 128));
    v19 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v17;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      *(a1 + 16) |= 2u;
      v11 = *(a1 + 32);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x277C97B90](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        goto LABEL_28;
      }
    }

    else
    {
      if (v6 >> 3 != 1 || v6 != 10)
      {
LABEL_12:
        if (v6)
        {
          v9 = (v6 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v6 - 1;
          return v19;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x277C97B90](v14);
        LODWORD(v11) = v15;
        *(a1 + 24) = v15;
LABEL_28:
        v5 = v19;
      }
    }

    v10 = sub_2764ADCBC(a3, v11, v5);
LABEL_30:
    v19 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v19;
}

unsigned __int8 *sub_2764744D4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 32);
    *a2 = 18;
    v13 = *(v12 + 5);
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v15 = v13 >> 7;
      if (v13 >> 14)
      {
        v14 = a2 + 3;
        do
        {
          *(v14 - 1) = v15 | 0x80;
          v16 = v15 >> 7;
          ++v14;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
        *(v14 - 1) = v16;
      }

      else
      {
        a2[2] = v15;
        v14 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v13;
      v14 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276474664(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_276474744(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885274B8, 0);
  if (v4)
  {

    return sub_2764747EC(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2764747EC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    v6 = MEMORY[0x277D80A18];
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 24);
      if (!v7)
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = MEMORY[0x277C97B90](v8);
        *(v3 + 24) = v7;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = v6;
      }

      result = TSP::Reference::MergeFrom(v7, v9);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v10 = *(v3 + 32);
      if (!v10)
      {
        v11 = *(v3 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = MEMORY[0x277C97B90](v11);
        *(v3 + 32) = v10;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = v6;
      }

      return TSP::Reference::MergeFrom(v10, v12);
    }
  }

  return result;
}

uint64_t *sub_2764748E8(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2764742C4(result);

    return sub_276474744(v4, a2);
  }

  return result;
}

uint64_t sub_276474934(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_2764749BC(uint64_t *a1)
{
  if (a1 != &qword_2812F24E0)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C98580]();
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276474A20(uint64_t *a1)
{
  sub_2764749BC(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276474A60(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSP::Reference::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_276474ABC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_2763D4D98(a3, &v16) & 1) == 0)
  {
    v5 = (v16 + 1);
    v6 = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v16 + 2);
LABEL_6:
      v16 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v7 - 128));
    v16 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v14;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C97B90](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_2764ADCBC(a3, v10, v5);
    }

    else
    {
      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v6 - 1;
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_276474C04(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 5);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276474CF4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSP::Reference::ByteSizeLong(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_276474D80(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885274D0, 0);
  if (v4)
  {

    return sub_276472694(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_276474E28(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276474A60(result);

    return sub_276474D80(v4, a2);
  }

  return result;
}

uint64_t sub_276474E74(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_276474EE4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276478450(a1, 1);
  sub_27644B99C(v2, a1);
  return v2;
}

void *sub_276474F70(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2764784DC(a1, 1);
  sub_27644C0F0(v2, a1);
  return v2;
}

uint64_t sub_276474FFC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276478568(a1, 1);
  sub_27644E000(v2, a1);
  return v2;
}

uint64_t sub_276475088(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2764785F4(a1, 1);
  sub_27644EE84(v2, a1);
  return v2;
}

void *sub_276475114(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276478680(a1, 1);
  sub_27644F5D8(v2, a1);
  return v2;
}

uint64_t sub_2764751A0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27647870C(a1);
}

void *sub_276475278(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276478818(a1);
}

void *sub_276475348(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27647891C(a1);
}

uint64_t sub_276475414(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276478A1C(a1);
}

uint64_t sub_2764754E8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276478B24(a1, 1);
  sub_2764528D0(v2, a1);
  return v2;
}

void *sub_276475574(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276478BB0(a1);
}

double sub_276475644(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276478CB4(a1, 1);
  *v2 = &unk_288525258;
  *(v2 + 8) = a1;
  result = 0.0;
  *(v2 + 16) = xmmword_2764F20B0;
  return result;
}

void *sub_2764756BC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276478D5C(a1);
}

uint64_t sub_276475788(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276478E5C(a1);
}

uint64_t sub_27647585C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276478F64(a1, 1);
  sub_2764557E8(v2, a1);
  return v2;
}

uint64_t sub_2764758E8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276478FF0(a1, 1);
  sub_276456834(v2, a1);
  return v2;
}

uint64_t sub_276475974(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27647907C(a1, 1);
  sub_2764577C0(v2, a1);
  return v2;
}

void *sub_276475A00(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276479108(a1, 1);
  sub_2764582FC(v2, a1);
  return v2;
}

uint64_t sub_276475A8C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276479194(a1, 1);
  sub_276458E3C(v2, a1);
  return v2;
}

uint64_t sub_276475B18(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276479220(a1, 1);
  sub_276459ED0(v2, a1);
  return v2;
}

uint64_t sub_276475BA4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2764792AC(a1);
}

uint64_t sub_276475C7C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2764793B8(a1);
}

uint64_t sub_276475D54(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2764794C4(a1, 1);
  sub_27645C604(v2, a1);
  return v2;
}

uint64_t sub_276475DE0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276479550(a1, 1);
  sub_27645E11C(v2, a1);
  return v2;
}

uint64_t sub_276475E6C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2764795DC(a1);
}

void *sub_276475F40(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2764796E4(a1);
}

uint64_t sub_27647600C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2764797E4(a1);
}

void *sub_2764760DC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2764798E8(a1);
}

void *sub_2764761A8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2764799E8(a1);
}

void *sub_276476274(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276479AE8(a1);
}

void *sub_276476344(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276479BEC(a1, 1);
  sub_276462E58(v2, a1);
  return v2;
}

uint64_t sub_2764763D0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276479C78(a1);
}

uint64_t sub_2764764A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276479D80(a1, 1);
  sub_276464A18(v2, a1);
  return v2;
}

uint64_t sub_276476530(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276479E0C(a1);
}

uint64_t sub_276476604(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276479F14(a1);
}

void *sub_2764766D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27647A01C(a1, 1);
  sub_276467594(v2, a1);
  return v2;
}

void *sub_276476764(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27647A0A8(a1, 1);
  sub_276469B20(v2, a1);
  return v2;
}

uint64_t sub_2764767F0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27647A134(a1, 1);
  sub_27646A384(v2, a1);
  return v2;
}

void *sub_27647687C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27647A1C0(a1);
}

uint64_t sub_276476948(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27647A2C0(a1, 1);
  sub_27646BA00(v2, a1);
  return v2;
}

uint64_t sub_2764769D4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27647A34C(a1, 1);
  sub_27646C464(v2, a1);
  return v2;
}

uint64_t sub_276476A60(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27647A3D8(a1, 1);
  sub_27646D590(v2, a1);
  return v2;
}

uint64_t sub_276476AEC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27647A464(a1, 1);
  sub_27646E978(v2, a1);
  return v2;
}

uint64_t sub_276476B78(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27647A4F0(a1, 1);
  sub_27646FC58(v2, a1);
  return v2;
}

uint64_t sub_276476C04(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27647A57C(a1);
}

void *sub_276476CD8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27647A684(a1);
}

void *sub_276476DA4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27647A784(a1);
}

void *sub_276476E70(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27647A884(a1);
}

void *sub_276476F3C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27647A984(a1);
}

void *sub_276477008(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27647AA84(a1);
}

void *sub_2764770D4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27647AB84(a1, 1);
  sub_2764732CC(v2, a1);
  return v2;
}

void *sub_276477160(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27647AC10(a1);
}

void *sub_27647722C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27647AD10(a1);
}

void *sub_2764772F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27647AE10(a1);
}

uint64_t sub_2764778D0(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 1)
  {
    v2 = *(result + 16) + 8;
    do
    {
      v3 = *v2;
      if (*(*v2 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
      }

      v2 += 8;
      --v1;
    }

    while (v1);
    *(result + 8) = 0;
  }

  return result;
}

void sub_27647791C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSP::UUID::~UUID(*v3);
          MEMORY[0x277C98580]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_2764779A0(uint64_t result, TSP::UUID **a2, TSP::UUID **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276477A50(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = MEMORY[0x277C97B40](v18);
      result = sub_276477A50(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276477A60(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_27644E078(*v3);
          MEMORY[0x277C98580](v5, 0x10A1C4014BB2387);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_276477AE4(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276477B94(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_276474FF8(v18);
      result = sub_276477B94(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276477BA4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_276450C70(*v3);
          MEMORY[0x277C98580](v5, 0x10A1C40CA074DDCLL);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_276477C28(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_276451DD8(*v3);
          MEMORY[0x277C98580](v5, 0x10A1C400941DAD4);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_276477CAC(uint64_t *a1, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_276477D5C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_276475274(v18);
      sub_276477D5C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

uint64_t sub_276477D6C(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276477E1C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_276475410(v18);
      result = sub_276477E1C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276477E2C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_276454D24(*v3);
          MEMORY[0x277C98580](v5, 0x10A1C400941DAD4);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_276477EB0(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276477F60(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_276475784(v18);
      result = sub_276477F60(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276477F70(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        v5 = *v3;
        if (*v3)
        {
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          MEMORY[0x277C98580](v5, 0x1012C40EC159624);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_27647800C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_276405638();
          MEMORY[0x277C98580](v5, 0x10A1C40290C9B23);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_2764780A0(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_276469B90(*v3);
          MEMORY[0x277C98580](v5, 0x10A1C407EE01FB0);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_276478124(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2764781D4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_276476760(v18);
      result = sub_2764781D4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2764781E4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_27646BA70(*v3);
          MEMORY[0x277C98580](v5, 0x10A1C40EA59D502);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_276478268(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_276478318(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_276476944(v18);
      result = sub_276478318(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276478328(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSP::Reference::~Reference(*v3);
          MEMORY[0x277C98580]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_2764783BC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSCH::ChartSelectionPathArchive::~ChartSelectionPathArchive(*v3);
          MEMORY[0x277C98580]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_276478450(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AFD24(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_2764784D8);
}

uint64_t sub_2764784DC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AFD54(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 192, sub_276478564);
}

uint64_t sub_276478568(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AFD84(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_2764785F0);
}

uint64_t sub_2764785F4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AFDB4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_27647867C);
}

uint64_t sub_276478680(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AFDE4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_276478708);
}

uint64_t sub_27647870C(uint64_t a1)
{
  v2 = sub_27647878C(a1, 1);
  *v2 = &unk_288524E38;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EDDE8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_27647878C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AFE14(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_276478814);
}

void *sub_276478818(uint64_t a1)
{
  v2 = sub_276478890(a1, 1);
  *v2 = &unk_288524EE8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EDDC0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276478890(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AFE44(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_276478918);
}

void *sub_27647891C(uint64_t a1)
{
  v2 = sub_276478990(a1, 1);
  *v2 = &unk_288524F98;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EDE50, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276478990(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AFE74(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_276478A18);
}

uint64_t sub_276478A1C(uint64_t a1)
{
  v2 = sub_276478A98(a1, 1);
  *v2 = &unk_288525048;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EDE28, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_276478A98(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AFEA4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_276478B20);
}

uint64_t sub_276478B24(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AFED4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, sub_276478BAC);
}

void *sub_276478BB0(uint64_t a1)
{
  v2 = sub_276478C28(a1, 1);
  *v2 = &unk_2885251A8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EDFB8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276478C28(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AFF04(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_276478CB0);
}

uint64_t sub_276478CB4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AFF34(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276478D3C);
}

void *sub_276478D5C(uint64_t a1)
{
  v2 = sub_276478DD0(a1, 1);
  *v2 = &unk_288525308;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EE080, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276478DD0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AFF64(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_276478E58);
}

uint64_t sub_276478E5C(uint64_t a1)
{
  v2 = sub_276478ED8(a1, 1);
  *v2 = &unk_2885253B8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EE058, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_276478ED8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AFF94(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_276478F60);
}

uint64_t sub_276478F64(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AFFC4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, sub_276478FEC);
}

uint64_t sub_276478FF0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AFFF4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, sub_276479078);
}

uint64_t sub_27647907C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0030(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_276479104);
}

uint64_t sub_276479108(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0060(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_276479190);
}

uint64_t sub_276479194(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0090(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, sub_27647921C);
}

uint64_t sub_276479220(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B00C0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, sub_2764792A8);
}

uint64_t sub_2764792AC(uint64_t a1)
{
  v2 = sub_27647932C(a1, 1);
  *v2 = &unk_288525888;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EDD60, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_27647932C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B00F0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_2764793B4);
}

uint64_t sub_2764793B8(uint64_t a1)
{
  v2 = sub_276479438(a1, 1);
  *v2 = &unk_288525938;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EDD38, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276479438(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0120(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_2764794C0);
}

uint64_t sub_2764794C4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0150(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 192, sub_27647954C);
}

uint64_t sub_276479550(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0180(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 192, sub_2764795D8);
}

uint64_t sub_2764795DC(uint64_t a1)
{
  v2 = sub_276479658(a1, 1);
  *v2 = &unk_288525B48;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EE0E0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276479658(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B01B0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_2764796E0);
}

void *sub_2764796E4(uint64_t a1)
{
  v2 = sub_276479758(a1, 1);
  *v2 = &unk_288525BF8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EE0C0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276479758(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B01E0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_2764797E0);
}

uint64_t sub_2764797E4(uint64_t a1)
{
  v2 = sub_27647985C(a1, 1);
  *v2 = &unk_288525CA8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EE1B0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_27647985C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0210(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_2764798E4);
}

void *sub_2764798E8(uint64_t a1)
{
  v2 = sub_27647995C(a1, 1);
  *v2 = &unk_288525D58;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EE170, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_27647995C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0240(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_2764799E4);
}

void *sub_2764799E8(uint64_t a1)
{
  v2 = sub_276479A5C(a1, 1);
  *v2 = &unk_288525E08;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EE128, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276479A5C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0270(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_276479AE4);
}

void *sub_276479AE8(uint64_t a1)
{
  v2 = sub_276479B60(a1, 1);
  *v2 = &unk_288525EB8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EE100, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276479B60(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B02A0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_276479BE8);
}

uint64_t sub_276479BEC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B02D0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, sub_276479C74);
}

uint64_t sub_276479C78(uint64_t a1)
{
  v2 = sub_276479CF4(a1, 1);
  *v2 = &unk_288526018;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EDBE8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276479CF4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0300(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_276479D7C);
}

uint64_t sub_276479D80(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0330(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 136, sub_276479E08);
}

uint64_t sub_276479E0C(uint64_t a1)
{
  v2 = sub_276479E88(a1, 1);
  *v2 = &unk_288526178;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EDC10, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276479E88(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B036C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_276479F10);
}

uint64_t sub_276479F14(uint64_t a1)
{
  v2 = sub_276479F90(a1, 1);
  *v2 = &unk_288526228;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EDA08, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_276479F90(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B039C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_27647A018);
}

uint64_t sub_27647A01C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B03CC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 328, sub_27647A0A4);
}

uint64_t sub_27647A0A8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0408(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_27647A130);
}

uint64_t sub_27647A134(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0438(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, sub_27647A1BC);
}

void *sub_27647A1C0(uint64_t a1)
{
  v2 = sub_27647A234(a1, 1);
  *v2 = &unk_2885264E8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EDD18, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_27647A234(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0468(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_27647A2BC);
}

uint64_t sub_27647A2C0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0498(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_27647A348);
}

uint64_t sub_27647A34C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B04C8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, sub_27647A3D4);
}

uint64_t sub_27647A3D8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B04F8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 112, sub_27647A460);
}

uint64_t sub_27647A464(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0534(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, sub_27647A4EC);
}

uint64_t sub_27647A4F0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0564(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, sub_27647A578);
}

uint64_t sub_27647A57C(uint64_t a1)
{
  v2 = sub_27647A5F8(a1, 1);
  *v2 = &unk_288526908;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EDF38, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_27647A5F8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0594(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_27647A680);
}

void *sub_27647A684(uint64_t a1)
{
  v2 = sub_27647A6F8(a1, 1);
  *v2 = &unk_2885269B8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EDCF8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_27647A6F8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B05C4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_27647A780);
}

void *sub_27647A784(uint64_t a1)
{
  v2 = sub_27647A7F8(a1, 1);
  *v2 = &unk_288526A68;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EDCD8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_27647A7F8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B05F4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_27647A880);
}

void *sub_27647A884(uint64_t a1)
{
  v2 = sub_27647A8F8(a1, 1);
  *v2 = &unk_288526B18;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EDAE0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_27647A8F8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0624(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_27647A980);
}

void *sub_27647A984(uint64_t a1)
{
  v2 = sub_27647A9F8(a1, 1);
  *v2 = &unk_288526BC8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EDA38, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_27647A9F8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0654(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_27647AA80);
}

void *sub_27647AA84(uint64_t a1)
{
  v2 = sub_27647AAF8(a1, 1);
  *v2 = &unk_288526C78;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EDAC0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_27647AAF8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0684(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_27647AB80);
}

uint64_t sub_27647AB84(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B06B4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_27647AC0C);
}

void *sub_27647AC10(uint64_t a1)
{
  v2 = sub_27647AC84(a1, 1);
  *v2 = &unk_288526DD8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EDA80, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_27647AC84(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B06E4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_27647AD0C);
}

void *sub_27647AD10(uint64_t a1)
{
  v2 = sub_27647AD84(a1, 1);
  *v2 = &unk_288526E88;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EDAA0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_27647AD84(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0714(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_27647AE0C);
}

void *sub_27647AE10(uint64_t a1)
{
  v2 = sub_27647AE84(a1, 1);
  *v2 = &unk_288526F38;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812ED9E8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_27647AE84(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764B0744(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_27647AF0C);
}

uint64_t sub_27647AF50(google::protobuf::UnknownFieldSet *this)
{

  return google::protobuf::UnknownFieldSet::AddVarint(this);
}

uint64_t sub_27647AF74(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHPreUFFArchives.pb.cc", a4);
  sub_27648DC98(&unk_2812F2AA8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F2AA8);
}

uint64_t sub_27647AFE4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHPreUFFArchives.pb.cc", a4);
  qword_2812F29E0 = 0;
  unk_2812F29E8 = 0;
  qword_2812F29D8 = &unk_288527BD8;
  dword_2812F29F0 = 0;
  if (atomic_load_explicit(dword_2812EE308, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  xmmword_2812F2A88 = 0u;
  unk_2812F2A98 = 0u;
  xmmword_2812F2A68 = 0u;
  unk_2812F2A78 = 0u;
  xmmword_2812F2A48 = 0u;
  unk_2812F2A58 = 0u;
  xmmword_2812F2A28 = 0u;
  unk_2812F2A38 = 0u;
  xmmword_2812F2A08 = 0u;
  unk_2812F2A18 = 0u;
  xmmword_2812F29F8 = 0u;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &qword_2812F29D8);
}

uint64_t sub_27647B0A8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHPreUFFArchives.pb.cc", a4);
  sub_276480870(&unk_2812F26C0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F26C0);
}

uint64_t sub_27647B118(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHPreUFFArchives.pb.cc", a4);
  qword_2812F26A0 = 0;
  unk_2812F26A8 = 0;
  qword_2812F2698 = &unk_288527708;
  qword_2812F26B0 = 0;
  dword_2812F26B8 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &qword_2812F2698);
}

uint64_t sub_27647B198(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHPreUFFArchives.pb.cc", a4);
  sub_27647B794(&unk_2812F2500, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F2500);
}

uint64_t sub_27647B208(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHPreUFFArchives.pb.cc", a4);
  sub_27647F5C4(&unk_2812F2650, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F2650);
}

uint64_t sub_27647B278(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHPreUFFArchives.pb.cc", a4);
  sub_276486F78(&unk_2812F28C8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F28C8);
}

uint64_t sub_27647B2E8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHPreUFFArchives.pb.cc", a4);
  qword_2812F2DC0 = 0;
  unk_2812F2DC8 = 0;
  qword_2812F2DB8 = &unk_288527DE8;
  qword_2812F2DD0 = 0;
  if (atomic_load_explicit(dword_2812EE418, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F2DD8 = MEMORY[0x277D80A90];
  unk_2812F2DE0 = 0u;
  unk_2812F2DF0 = 0u;
  unk_2812F2E00 = 0u;
  unk_2812F2E10 = 0u;
  unk_2812F2E20 = 0u;
  unk_2812F2E30 = 0u;
  unk_2812F2E40 = 0u;
  unk_2812F2E50 = 0u;
  unk_2812F2E60 = 0u;
  unk_2812F2E70 = 0u;
  unk_2812F2E80 = 0u;
  unk_2812F2E90 = 0u;
  unk_2812F2EA0 = 0u;
  unk_2812F2EB0 = 0u;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &qword_2812F2DB8);
}

uint64_t sub_27647B3D8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHPreUFFArchives.pb.cc", a4);
  qword_2812F2B18 = 0;
  unk_2812F2B20 = 0;
  qword_2812F2B10 = &unk_288527D38;
  qword_2812F2B28 = 0;
  dword_2812F2B30 = 0;
  if (atomic_load_explicit(dword_2812EE448, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  bzero(&unk_2812F2B38, 0x27CuLL);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &qword_2812F2B10);
}

uint64_t sub_27647B490(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHPreUFFArchives.pb.cc", a4);
  sub_276483744(&unk_2812F27C8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F27C8);
}

uint64_t sub_27647B500(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHPreUFFArchives.pb.cc", a4);
  sub_27648140C(&unk_2812F2728, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F2728);
}

uint64_t sub_27647B570(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHPreUFFArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F2620 = v4;
  qword_2812F2618 = &unk_2885275A8;
  if (atomic_load_explicit(dword_2812EE4F8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F2640 = 0u;
  unk_2812F2630 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F2618);
}

uint64_t sub_27647B628(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHPreUFFArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F29C0 = v4;
  qword_2812F29B8 = &unk_288527B28;
  if (atomic_load_explicit(dword_2812EE520, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F29D0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F29B8);
}

uint64_t sub_27647B6D8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHPreUFFArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F2980 = v4;
  qword_2812F2978 = &unk_288527A78;
  if (atomic_load_explicit(dword_2812EE540, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F29B0 = 0;
  unk_2812F29A0 = 0u;
  unk_2812F2990 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F2978);
}

uint64_t sub_27647B794(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885274F8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  *(a1 + 144) = a2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  if (atomic_load_explicit(dword_2812EE370, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 257) = 0u;
  return a1;
}

void sub_27647B87C(_Unwind_Exception *a1)
{
  sub_276478328(v6);
  sub_276478328(v5);
  sub_276478328(v4);
  sub_276478328(v3);
  sub_276478328(v2);
  sub_276478328(v1);
  _Unwind_Resume(a1);
}

void *sub_27647B8D0(void *a1)
{
  sub_27647B94C(a1);
  sub_2763941F4(a1 + 1);
  sub_276478328(a1 + 18);
  sub_276478328(a1 + 15);
  sub_276478328(a1 + 12);
  sub_276478328(a1 + 9);
  sub_276478328(a1 + 6);
  sub_276478328(a1 + 3);
  return a1;
}

void *sub_27647B94C(void *result)
{
  if (result != &unk_2812F2500)
  {
    v1 = result;
    if (result[21])
    {
      v2 = MEMORY[0x277C972D0]();
      MEMORY[0x277C98580](v2, 0x10A1C40DF356F3CLL);
    }

    v3 = v1[22];
    if (v3)
    {
      v4 = sub_27647F664(v3);
      MEMORY[0x277C98580](v4, 0x10A1C40D2FA43CALL);
    }

    v5 = v1[23];
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x277C98580]();
    }

    v6 = v1[24];
    if (v6)
    {
      v7 = sub_27647EC4C(v6);
      MEMORY[0x277C98580](v7, 0x10A1C404E50D5EBLL);
    }

    if (v1[25])
    {
      v8 = sub_2763FFD8C();
      MEMORY[0x277C98580](v8, 0x10A1C40DFBAE579);
    }

    if (v1[26])
    {
      v9 = MEMORY[0x277C97490]();
      MEMORY[0x277C98580](v9, 0x10A1C40D5D207CCLL);
    }

    if (v1[27])
    {
      v10 = MEMORY[0x277C97490]();
      MEMORY[0x277C98580](v10, 0x10A1C40D5D207CCLL);
    }

    v11 = v1[28];
    if (v11)
    {
      TSP::Reference::~Reference(v11);
      MEMORY[0x277C98580]();
    }

    v12 = v1[29];
    if (v12)
    {
      TSP::Reference::~Reference(v12);
      MEMORY[0x277C98580]();
    }

    v13 = v1[30];
    if (v13)
    {
      TSP::Point::~Point(v13);
      MEMORY[0x277C98580]();
    }

    result = v1[31];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27647BADC(void *a1)
{
  sub_27647B8D0(a1);

  JUMPOUT(0x277C98580);
}

void *sub_27647BB1C()
{
  if (atomic_load_explicit(dword_2812EE370, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812F2500;
}

uint64_t *sub_27647BB5C(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 14);
  if (v5 >= 1)
  {
    v6 = (v1[8] + 8);
    do
    {
      v7 = *v6++;
      result = TSP::Reference::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 14) = 0;
  }

  v8 = *(v1 + 20);
  if (v8 >= 1)
  {
    v9 = (v1[11] + 8);
    do
    {
      v10 = *v9++;
      result = TSP::Reference::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 20) = 0;
  }

  v11 = *(v1 + 26);
  if (v11 >= 1)
  {
    v12 = (v1[14] + 8);
    do
    {
      v13 = *v12++;
      result = TSP::Reference::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 26) = 0;
  }

  v14 = *(v1 + 32);
  if (v14 >= 1)
  {
    v15 = (v1[17] + 8);
    do
    {
      v16 = *v15++;
      result = TSP::Reference::Clear(v16);
      --v14;
    }

    while (v14);
    *(v1 + 32) = 0;
  }

  v17 = *(v1 + 38);
  if (v17 >= 1)
  {
    v18 = (v1[20] + 8);
    do
    {
      v19 = *v18++;
      result = TSP::Reference::Clear(v19);
      --v17;
    }

    while (v17);
    *(v1 + 38) = 0;
  }

  v20 = *(v1 + 4);
  if (!v20)
  {
    goto LABEL_35;
  }

  if (v20)
  {
    result = TSD::DrawableArchive::Clear(v1[21]);
    if ((v20 & 2) == 0)
    {
LABEL_28:
      if ((v20 & 4) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_48;
    }
  }

  else if ((v20 & 2) == 0)
  {
    goto LABEL_28;
  }

  result = sub_27647BD78(v1[22]);
  if ((v20 & 4) == 0)
  {
LABEL_29:
    if ((v20 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = TSP::Reference::Clear(v1[23]);
  if ((v20 & 8) == 0)
  {
LABEL_30:
    if ((v20 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = sub_27647BE10(v1[24]);
  if ((v20 & 0x10) == 0)
  {
LABEL_31:
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_32;
    }

LABEL_51:
    result = TSP::SparseReferenceArray::Clear(v1[26]);
    if ((v20 & 0x40) == 0)
    {
LABEL_33:
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    goto LABEL_52;
  }

LABEL_50:
  result = sub_2763FFDD0(v1[25]);
  if ((v20 & 0x20) != 0)
  {
    goto LABEL_51;
  }

LABEL_32:
  if ((v20 & 0x40) == 0)
  {
    goto LABEL_33;
  }

LABEL_52:
  result = TSP::SparseReferenceArray::Clear(v1[27]);
  if ((v20 & 0x80) != 0)
  {
LABEL_34:
    result = TSP::Reference::Clear(v1[28]);
  }

LABEL_35:
  if ((v20 & 0x700) == 0)
  {
    goto LABEL_40;
  }

  if ((v20 & 0x100) != 0)
  {
    result = TSP::Reference::Clear(v1[29]);
    if ((v20 & 0x200) == 0)
    {
LABEL_38:
      if ((v20 & 0x400) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  else if ((v20 & 0x200) == 0)
  {
    goto LABEL_38;
  }

  result = TSP::Point::Clear(v1[30]);
  if ((v20 & 0x400) != 0)
  {
LABEL_39:
    result = TSP::Reference::Clear(v1[31]);
  }

LABEL_40:
  if ((v20 & 0xF800) != 0)
  {
    v1[32] = 0;
    v1[33] = 0;
    *(v1 + 272) = 0;
  }

  v22 = *(v1 + 8);
  v21 = v1 + 1;
  *(v21 + 2) = 0;
  if (v22)
  {

    return sub_2763D4FD4(v21);
  }

  return result;
}

uint64_t *sub_27647BD78(uint64_t *result)
{
  v1 = result;
  *(result + 6) = 0;
  v2 = *(result + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = TSP::Reference::Clear(result[5]);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = TSP::Reference::Clear(v1[6]);
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = sub_27647F75C(v1[7]);
    }
  }

LABEL_6:
  if ((v2 & 0x18) != 0)
  {
    v1[8] = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

uint64_t *sub_27647BE10(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_12:
    result = sub_2763FFDD0(v1[4]);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_13;
  }

  result = TSP::Reference::Clear(result[3]);
  if ((v2 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  result = TSP::Reference::Clear(v1[5]);
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = TSP::Reference::Clear(v1[6]);
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_27647BEA8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v119 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v119) & 1) == 0)
  {
    while (2)
    {
      v7 = (v119 + 1);
      v8 = *v119;
      if (*v119 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v119, (v9 - 128));
          v119 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_201;
          }

          v7 = TagFallback;
          v8 = v15;
LABEL_7:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 10)
              {
                goto LABEL_182;
              }

              *(a1 + 16) |= 1u;
              v10 = *(a1 + 168);
              if (!v10)
              {
                v11 = *(a1 + 8);
                if (v11)
                {
                  v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
                }

                v12 = MEMORY[0x277C97AC0](v11);
                LODWORD(v10) = v12;
                *(a1 + 168) = v12;
                v7 = v119;
              }

              v13 = sub_2764B0774(a3, v10, v7);
              goto LABEL_130;
            case 2u:
              if (v8 != 18)
              {
                goto LABEL_182;
              }

              *(a1 + 16) |= 2u;
              v55 = *(a1 + 176);
              if (!v55)
              {
                v56 = *(a1 + 8);
                if (v56)
                {
                  v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
                }

                v55 = sub_27649DABC(v56);
                *(a1 + 176) = v55;
                v7 = v119;
              }

              v13 = sub_2764B0844(a3, v55, v7);
              goto LABEL_130;
            case 3u:
              if (v8 != 26)
              {
                goto LABEL_182;
              }

              *(a1 + 16) |= 4u;
              v16 = *(a1 + 184);
              if (v16)
              {
                goto LABEL_129;
              }

              v37 = *(a1 + 8);
              if (v37)
              {
                v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
              }

              v38 = MEMORY[0x277C97B90](v37);
              LODWORD(v16) = v38;
              *(a1 + 184) = v38;
              goto LABEL_128;
            case 4u:
              if (v8 != 32)
              {
                goto LABEL_182;
              }

              v42 = (v7 + 1);
              v43 = *v7;
              if ((v43 & 0x8000000000000000) == 0)
              {
                goto LABEL_72;
              }

              v44 = *v42;
              v45 = (v44 << 7) + v43;
              LODWORD(v43) = v45 - 128;
              if (v44 < 0)
              {
                v119 = google::protobuf::internal::VarintParseSlow64(v7, (v45 - 128));
                if (!v119)
                {
                  goto LABEL_201;
                }

                LODWORD(v43) = v110;
              }

              else
              {
                v42 = (v7 + 2);
LABEL_72:
                v119 = v42;
              }

              if (sub_2763FFBA0(v43))
              {
                *(a1 + 16) |= 0x800u;
                *(a1 + 256) = v43;
              }

              else
              {
                sub_2764ADF4C();
              }

              goto LABEL_131;
            case 5u:
              if (v8 != 42)
              {
                goto LABEL_182;
              }

              *(a1 + 16) |= 8u;
              v24 = *(a1 + 192);
              if (!v24)
              {
                v25 = *(a1 + 8);
                if (v25)
                {
                  v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
                }

                v24 = sub_27649D9E8(v25);
                *(a1 + 192) = v24;
                v7 = v119;
              }

              v13 = sub_2764B0914(a3, v24, v7);
              goto LABEL_130;
            case 6u:
              if (v8 != 50)
              {
                goto LABEL_182;
              }

              *(a1 + 16) |= 0x10u;
              v69 = *(a1 + 200);
              if (!v69)
              {
                v70 = *(a1 + 8);
                if (v70)
                {
                  v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
                }

                v69 = sub_276406958(v70);
                *(a1 + 200) = v69;
                v7 = v119;
              }

              v13 = sub_2764AF400(a3, v69, v7);
              goto LABEL_130;
            case 7u:
              if (v8 != 58)
              {
                goto LABEL_182;
              }

              v76 = v7 - 1;
              while (1)
              {
                v77 = (v76 + 1);
                v119 = (v76 + 1);
                v78 = *(a1 + 40);
                if (!v78)
                {
                  goto LABEL_136;
                }

                v84 = *(a1 + 32);
                v79 = *v78;
                if (v84 < *v78)
                {
                  *(a1 + 32) = v84 + 1;
                  v81 = *&v78[2 * v84 + 2];
                  goto LABEL_140;
                }

                if (v79 == *(a1 + 36))
                {
LABEL_136:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                  v78 = *(a1 + 40);
                  v79 = *v78;
                }

                *v78 = v79 + 1;
                v80 = MEMORY[0x277C97B90](*(a1 + 24));
                LODWORD(v81) = v80;
                v82 = *(a1 + 32);
                v83 = *(a1 + 40) + 8 * v82;
                *(a1 + 32) = v82 + 1;
                *(v83 + 8) = v80;
                v77 = v119;
LABEL_140:
                v76 = sub_2764ADCBC(a3, v81, v77);
                v119 = v76;
                if (!v76)
                {
                  goto LABEL_201;
                }

                if (*a3 <= v76 || *v76 != 58)
                {
                  goto LABEL_131;
                }
              }

            case 8u:
              if (v8 != 66)
              {
                goto LABEL_182;
              }

              v46 = v7 - 1;
              while (1)
              {
                v47 = (v46 + 1);
                v119 = (v46 + 1);
                v48 = *(a1 + 64);
                if (!v48)
                {
                  goto LABEL_78;
                }

                v54 = *(a1 + 56);
                v49 = *v48;
                if (v54 < *v48)
                {
                  *(a1 + 56) = v54 + 1;
                  v51 = *&v48[2 * v54 + 2];
                  goto LABEL_82;
                }

                if (v49 == *(a1 + 60))
                {
LABEL_78:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                  v48 = *(a1 + 64);
                  v49 = *v48;
                }

                *v48 = v49 + 1;
                v50 = MEMORY[0x277C97B90](*(a1 + 48));
                LODWORD(v51) = v50;
                v52 = *(a1 + 56);
                v53 = *(a1 + 64) + 8 * v52;
                *(a1 + 56) = v52 + 1;
                *(v53 + 8) = v50;
                v47 = v119;
LABEL_82:
                v46 = sub_2764ADCBC(a3, v51, v47);
                v119 = v46;
                if (!v46)
                {
                  goto LABEL_201;
                }

                if (*a3 <= v46 || *v46 != 66)
                {
                  goto LABEL_131;
                }
              }

            case 9u:
              if (v8 != 74)
              {
                goto LABEL_182;
              }

              v97 = v7 - 1;
              while (1)
              {
                v98 = (v97 + 1);
                v119 = (v97 + 1);
                v99 = *(a1 + 88);
                if (!v99)
                {
                  goto LABEL_167;
                }

                v105 = *(a1 + 80);
                v100 = *v99;
                if (v105 < *v99)
                {
                  *(a1 + 80) = v105 + 1;
                  v102 = *&v99[2 * v105 + 2];
                  goto LABEL_171;
                }

                if (v100 == *(a1 + 84))
                {
LABEL_167:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
                  v99 = *(a1 + 88);
                  v100 = *v99;
                }

                *v99 = v100 + 1;
                v101 = MEMORY[0x277C97B90](*(a1 + 72));
                LODWORD(v102) = v101;
                v103 = *(a1 + 80);
                v104 = *(a1 + 88) + 8 * v103;
                *(a1 + 80) = v103 + 1;
                *(v104 + 8) = v101;
                v98 = v119;
LABEL_171:
                v97 = sub_2764ADCBC(a3, v102, v98);
                v119 = v97;
                if (!v97)
                {
                  goto LABEL_201;
                }

                if (*a3 <= v97 || *v97 != 74)
                {
                  goto LABEL_131;
                }
              }

            case 0xAu:
              if (v8 != 82)
              {
                goto LABEL_182;
              }

              v28 = v7 - 1;
              while (1)
              {
                v29 = (v28 + 1);
                v119 = (v28 + 1);
                v30 = *(a1 + 112);
                if (!v30)
                {
                  goto LABEL_47;
                }

                v36 = *(a1 + 104);
                v31 = *v30;
                if (v36 < *v30)
                {
                  *(a1 + 104) = v36 + 1;
                  v33 = *&v30[2 * v36 + 2];
                  goto LABEL_51;
                }

                if (v31 == *(a1 + 108))
                {
LABEL_47:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
                  v30 = *(a1 + 112);
                  v31 = *v30;
                }

                *v30 = v31 + 1;
                v32 = MEMORY[0x277C97B90](*(a1 + 96));
                LODWORD(v33) = v32;
                v34 = *(a1 + 104);
                v35 = *(a1 + 112) + 8 * v34;
                *(a1 + 104) = v34 + 1;
                *(v35 + 8) = v32;
                v29 = v119;
LABEL_51:
                v28 = sub_2764ADCBC(a3, v33, v29);
                v119 = v28;
                if (!v28)
                {
                  goto LABEL_201;
                }

                if (*a3 <= v28 || *v28 != 82)
                {
                  goto LABEL_131;
                }
              }

            case 0xBu:
              if (v8 != 90)
              {
                goto LABEL_182;
              }

              v88 = v7 - 1;
              while (1)
              {
                v89 = (v88 + 1);
                v119 = (v88 + 1);
                v90 = *(a1 + 136);
                if (!v90)
                {
                  goto LABEL_154;
                }

                v96 = *(a1 + 128);
                v91 = *v90;
                if (v96 < *v90)
                {
                  *(a1 + 128) = v96 + 1;
                  v93 = *&v90[2 * v96 + 2];
                  goto LABEL_158;
                }

                if (v91 == *(a1 + 132))
                {
LABEL_154:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120));
                  v90 = *(a1 + 136);
                  v91 = *v90;
                }

                *v90 = v91 + 1;
                v92 = MEMORY[0x277C97B90](*(a1 + 120));
                LODWORD(v93) = v92;
                v94 = *(a1 + 128);
                v95 = *(a1 + 136) + 8 * v94;
                *(a1 + 128) = v94 + 1;
                *(v95 + 8) = v92;
                v89 = v119;
LABEL_158:
                v88 = sub_2764ADCBC(a3, v93, v89);
                v119 = v88;
                if (!v88)
                {
                  goto LABEL_201;
                }

                if (*a3 <= v88 || *v88 != 90)
                {
                  goto LABEL_131;
                }
              }

            case 0xCu:
              if (v8 != 98)
              {
                goto LABEL_182;
              }

              *(a1 + 16) |= 0x20u;
              v21 = *(a1 + 208);
              if (v21)
              {
                goto LABEL_43;
              }

              v22 = *(a1 + 8);
              if (v22)
              {
                v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = MEMORY[0x277C97B20](v22);
              LODWORD(v21) = v23;
              *(a1 + 208) = v23;
              goto LABEL_42;
            case 0xDu:
              if (v8 != 106)
              {
                goto LABEL_182;
              }

              *(a1 + 16) |= 0x40u;
              v21 = *(a1 + 216);
              if (v21)
              {
                goto LABEL_43;
              }

              v26 = *(a1 + 8);
              if (v26)
              {
                v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
              }

              v27 = MEMORY[0x277C97B20](v26);
              LODWORD(v21) = v27;
              *(a1 + 216) = v27;
LABEL_42:
              v7 = v119;
LABEL_43:
              v13 = sub_2764B09E4(a3, v21, v7);
              goto LABEL_130;
            case 0xEu:
              if (v8 != 114)
              {
                goto LABEL_182;
              }

              *(a1 + 16) |= 0x80u;
              v16 = *(a1 + 224);
              if (v16)
              {
                goto LABEL_129;
              }

              v74 = *(a1 + 8);
              if (v74)
              {
                v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
              }

              v75 = MEMORY[0x277C97B90](v74);
              LODWORD(v16) = v75;
              *(a1 + 224) = v75;
              goto LABEL_128;
            case 0xFu:
              if (v8 != 122)
              {
                goto LABEL_182;
              }

              *(a1 + 16) |= 0x100u;
              v16 = *(a1 + 232);
              if (v16)
              {
                goto LABEL_129;
              }

              v19 = *(a1 + 8);
              if (v19)
              {
                v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
              }

              v20 = MEMORY[0x277C97B90](v19);
              LODWORD(v16) = v20;
              *(a1 + 232) = v20;
              goto LABEL_128;
            case 0x10u:
              if (v8 != 130)
              {
                goto LABEL_182;
              }

              *(a1 + 16) |= 0x200u;
              v39 = *(a1 + 240);
              if (!v39)
              {
                v40 = *(a1 + 8);
                if (v40)
                {
                  v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
                }

                v41 = MEMORY[0x277C97B60](v40);
                LODWORD(v39) = v41;
                *(a1 + 240) = v41;
                v7 = v119;
              }

              v13 = sub_2764ABE6C(a3, v39, v7);
              goto LABEL_130;
            case 0x11u:
              if (v8 != 138)
              {
                goto LABEL_182;
              }

              *(a1 + 16) |= 0x400u;
              v16 = *(a1 + 248);
              if (v16)
              {
                goto LABEL_129;
              }

              v17 = *(a1 + 8);
              if (v17)
              {
                v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
              }

              v18 = MEMORY[0x277C97B90](v17);
              LODWORD(v16) = v18;
              *(a1 + 248) = v18;
LABEL_128:
              v7 = v119;
LABEL_129:
              v13 = sub_2764ADCBC(a3, v16, v7);
              goto LABEL_130;
            case 0x12u:
              if (v8 != 146)
              {
                goto LABEL_182;
              }

              v57 = v7 - 2;
              break;
            case 0x13u:
              if (v8 != 152)
              {
                goto LABEL_182;
              }

              v5 |= 0x1000u;
              v86 = (v7 + 1);
              LODWORD(v85) = *v7;
              if ((v85 & 0x80) == 0)
              {
                goto LABEL_150;
              }

              v87 = *v86;
              v85 = (v85 + (v87 << 7) - 128);
              if (v87 < 0)
              {
                v115 = google::protobuf::internal::VarintParseSlow64(v7, v85);
                v119 = v115;
                *(a1 + 260) = v116;
                if (!v115)
                {
                  goto LABEL_201;
                }
              }

              else
              {
                v86 = (v7 + 2);
LABEL_150:
                v119 = v86;
                *(a1 + 260) = v85;
              }

              goto LABEL_131;
            case 0x14u:
              if (v8 != 160)
              {
                goto LABEL_182;
              }

              v5 |= 0x2000u;
              v107 = (v7 + 1);
              LODWORD(v106) = *v7;
              if ((v106 & 0x80) == 0)
              {
                goto LABEL_181;
              }

              v108 = *v107;
              v106 = (v106 + (v108 << 7) - 128);
              if (v108 < 0)
              {
                v117 = google::protobuf::internal::VarintParseSlow64(v7, v106);
                v119 = v117;
                *(a1 + 264) = v118;
                if (!v117)
                {
                  goto LABEL_201;
                }
              }

              else
              {
                v107 = (v7 + 2);
LABEL_181:
                v119 = v107;
                *(a1 + 264) = v106;
              }

              goto LABEL_131;
            case 0x15u:
              if (v8 != 168)
              {
                goto LABEL_182;
              }

              v5 |= 0x4000u;
              v67 = (v7 + 1);
              LODWORD(v66) = *v7;
              if ((v66 & 0x80) == 0)
              {
                goto LABEL_111;
              }

              v68 = *v67;
              v66 = (v66 + (v68 << 7) - 128);
              if (v68 < 0)
              {
                v111 = google::protobuf::internal::VarintParseSlow64(v7, v66);
                v119 = v111;
                *(a1 + 268) = v112;
                if (!v111)
                {
                  goto LABEL_201;
                }
              }

              else
              {
                v67 = (v7 + 2);
LABEL_111:
                v119 = v67;
                *(a1 + 268) = v66;
              }

              goto LABEL_131;
            case 0x16u:
              if (v8 != 176)
              {
                goto LABEL_182;
              }

              v5 |= 0x8000u;
              v72 = (v7 + 1);
              v71 = *v7;
              if ((v71 & 0x8000000000000000) == 0)
              {
                goto LABEL_122;
              }

              v73 = *v72;
              v71 = (v73 << 7) + v71 - 128;
              if (v73 < 0)
              {
                v113 = google::protobuf::internal::VarintParseSlow64(v7, v71);
                v119 = v113;
                *(a1 + 272) = v114 != 0;
                if (!v113)
                {
                  goto LABEL_201;
                }
              }

              else
              {
                v72 = (v7 + 2);
LABEL_122:
                v119 = v72;
                *(a1 + 272) = v71 != 0;
              }

              goto LABEL_131;
            default:
LABEL_182:
              if (v8)
              {
                v109 = (v8 & 7) == 4;
              }

              else
              {
                v109 = 1;
              }

              if (v109)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_2763D4E10((a1 + 8));
              }

              v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_130:
              v119 = v13;
              if (!v13)
              {
LABEL_201:
                v119 = 0;
                goto LABEL_2;
              }

LABEL_131:
              if (sub_2763D4D98(a3, &v119))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v58 = (v57 + 2);
            v119 = (v57 + 2);
            v59 = *(a1 + 160);
            if (!v59)
            {
              goto LABEL_97;
            }

            v65 = *(a1 + 152);
            v60 = *v59;
            if (v65 < *v59)
            {
              *(a1 + 152) = v65 + 1;
              v62 = *&v59[2 * v65 + 2];
              goto LABEL_101;
            }

            if (v60 == *(a1 + 156))
            {
LABEL_97:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144));
              v59 = *(a1 + 160);
              v60 = *v59;
            }

            *v59 = v60 + 1;
            v61 = MEMORY[0x277C97B90](*(a1 + 144));
            LODWORD(v62) = v61;
            v63 = *(a1 + 152);
            v64 = *(a1 + 160) + 8 * v63;
            *(a1 + 152) = v63 + 1;
            *(v64 + 8) = v61;
            v58 = v119;
LABEL_101:
            v57 = sub_2764ADCBC(a3, v62, v58);
            v119 = v57;
            if (!v57)
            {
              goto LABEL_201;
            }

            if (*a3 <= v57 || *v57 != 402)
            {
              goto LABEL_131;
            }
          }
        }

        v7 = (v119 + 2);
      }

      break;
    }

    v119 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v119;
}

unsigned __int8 *sub_27647CA38(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v6 = *(a1 + 168);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSD::DrawableArchive::_InternalSerialize(v6, v8, this);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v12 = *(a1 + 176);
  *a2 = 18;
  v13 = *(v12 + 20);
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = a2 + 3;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      a2[2] = v15;
      v14 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v13;
    v14 = a2 + 2;
  }

  a2 = sub_27647FBAC(v12, v14, this);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_5;
    }

LABEL_38:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v24 = *(a1 + 256);
    *a2 = 32;
    if (v24 > 0x7F)
    {
      a2[1] = v24 | 0x80;
      v25 = v24 >> 7;
      if (v24 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v25 | 0x80;
          v26 = v25 >> 7;
          ++a2;
          v27 = v25 >> 14;
          v25 >>= 7;
        }

        while (v27);
        *(a2 - 1) = v26;
        if ((v5 & 8) != 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        a2[2] = v25;
        a2 += 3;
        if ((v5 & 8) != 0)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      a2[1] = v24;
      a2 += 2;
      if ((v5 & 8) != 0)
      {
        goto LABEL_49;
      }
    }

LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_59;
  }

LABEL_28:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v18 = *(a1 + 184);
  *a2 = 26;
  v19 = *(v18 + 5);
  if (v19 > 0x7F)
  {
    a2[1] = v19 | 0x80;
    v21 = v19 >> 7;
    if (v19 >> 14)
    {
      v20 = a2 + 3;
      do
      {
        *(v20 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        ++v20;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(v20 - 1) = v22;
    }

    else
    {
      a2[2] = v21;
      v20 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v19;
    v20 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v18, v20, this);
  if ((v5 & 0x800) != 0)
  {
    goto LABEL_38;
  }

LABEL_5:
  if ((v5 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_49:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v28 = *(a1 + 192);
  *a2 = 42;
  v29 = *(v28 + 20);
  if (v29 > 0x7F)
  {
    a2[1] = v29 | 0x80;
    v31 = v29 >> 7;
    if (v29 >> 14)
    {
      v30 = a2 + 3;
      do
      {
        *(v30 - 1) = v31 | 0x80;
        v32 = v31 >> 7;
        ++v30;
        v33 = v31 >> 14;
        v31 >>= 7;
      }

      while (v33);
      *(v30 - 1) = v32;
    }

    else
    {
      a2[2] = v31;
      v30 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v29;
    v30 = a2 + 2;
  }

  a2 = sub_27647EFC4(v28, v30, this);
  if ((v5 & 0x10) != 0)
  {
LABEL_59:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v34 = *(a1 + 200);
    *a2 = 50;
    v35 = *(v34 + 20);
    if (v35 > 0x7F)
    {
      a2[1] = v35 | 0x80;
      v37 = v35 >> 7;
      if (v35 >> 14)
      {
        v36 = a2 + 3;
        do
        {
          *(v36 - 1) = v37 | 0x80;
          v38 = v37 >> 7;
          ++v36;
          v39 = v37 >> 14;
          v37 >>= 7;
        }

        while (v39);
        *(v36 - 1) = v38;
      }

      else
      {
        a2[2] = v37;
        v36 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v35;
      v36 = a2 + 2;
    }

    a2 = sub_2763FFFEC(v34, v36, this);
  }

LABEL_69:
  v40 = *(a1 + 32);
  if (v40)
  {
    for (i = 0; i != v40; ++i)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v42 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 58;
      v43 = *(v42 + 5);
      if (v43 > 0x7F)
      {
        a2[1] = v43 | 0x80;
        v45 = v43 >> 7;
        if (v43 >> 14)
        {
          v44 = a2 + 3;
          do
          {
            *(v44 - 1) = v45 | 0x80;
            v46 = v45 >> 7;
            ++v44;
            v47 = v45 >> 14;
            v45 >>= 7;
          }

          while (v47);
          *(v44 - 1) = v46;
        }

        else
        {
          a2[2] = v45;
          v44 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v43;
        v44 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v42, v44, this);
    }
  }

  v48 = *(a1 + 56);
  if (v48)
  {
    for (j = 0; j != v48; ++j)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v50 = *(*(a1 + 64) + 8 * j + 8);
      *a2 = 66;
      v51 = *(v50 + 5);
      if (v51 > 0x7F)
      {
        a2[1] = v51 | 0x80;
        v53 = v51 >> 7;
        if (v51 >> 14)
        {
          v52 = a2 + 3;
          do
          {
            *(v52 - 1) = v53 | 0x80;
            v54 = v53 >> 7;
            ++v52;
            v55 = v53 >> 14;
            v53 >>= 7;
          }

          while (v55);
          *(v52 - 1) = v54;
        }

        else
        {
          a2[2] = v53;
          v52 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v51;
        v52 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v50, v52, this);
    }
  }

  v56 = *(a1 + 80);
  if (v56)
  {
    for (k = 0; k != v56; ++k)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v58 = *(*(a1 + 88) + 8 * k + 8);
      *a2 = 74;
      v59 = *(v58 + 5);
      if (v59 > 0x7F)
      {
        a2[1] = v59 | 0x80;
        v61 = v59 >> 7;
        if (v59 >> 14)
        {
          v60 = a2 + 3;
          do
          {
            *(v60 - 1) = v61 | 0x80;
            v62 = v61 >> 7;
            ++v60;
            v63 = v61 >> 14;
            v61 >>= 7;
          }

          while (v63);
          *(v60 - 1) = v62;
        }

        else
        {
          a2[2] = v61;
          v60 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v59;
        v60 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v58, v60, this);
    }
  }

  v64 = *(a1 + 104);
  if (v64)
  {
    for (m = 0; m != v64; ++m)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v66 = *(*(a1 + 112) + 8 * m + 8);
      *a2 = 82;
      v67 = *(v66 + 5);
      if (v67 > 0x7F)
      {
        a2[1] = v67 | 0x80;
        v69 = v67 >> 7;
        if (v67 >> 14)
        {
          v68 = a2 + 3;
          do
          {
            *(v68 - 1) = v69 | 0x80;
            v70 = v69 >> 7;
            ++v68;
            v71 = v69 >> 14;
            v69 >>= 7;
          }

          while (v71);
          *(v68 - 1) = v70;
        }

        else
        {
          a2[2] = v69;
          v68 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v67;
        v68 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v66, v68, this);
    }
  }

  v72 = *(a1 + 128);
  if (v72)
  {
    for (n = 0; n != v72; ++n)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v74 = *(*(a1 + 136) + 8 * n + 8);
      *a2 = 90;
      v75 = *(v74 + 5);
      if (v75 > 0x7F)
      {
        a2[1] = v75 | 0x80;
        v77 = v75 >> 7;
        if (v75 >> 14)
        {
          v76 = a2 + 3;
          do
          {
            *(v76 - 1) = v77 | 0x80;
            v78 = v77 >> 7;
            ++v76;
            v79 = v77 >> 14;
            v77 >>= 7;
          }

          while (v79);
          *(v76 - 1) = v78;
        }

        else
        {
          a2[2] = v77;
          v76 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v75;
        v76 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v74, v76, this);
    }
  }

  if ((v5 & 0x20) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v80 = *(a1 + 208);
    *a2 = 98;
    v81 = *(v80 + 5);
    if (v81 > 0x7F)
    {
      a2[1] = v81 | 0x80;
      v83 = v81 >> 7;
      if (v81 >> 14)
      {
        v82 = a2 + 3;
        do
        {
          *(v82 - 1) = v83 | 0x80;
          v84 = v83 >> 7;
          ++v82;
          v85 = v83 >> 14;
          v83 >>= 7;
        }

        while (v85);
        *(v82 - 1) = v84;
      }

      else
      {
        a2[2] = v83;
        v82 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v81;
      v82 = a2 + 2;
    }

    a2 = TSP::SparseReferenceArray::_InternalSerialize(v80, v82, this);
    if ((v5 & 0x40) == 0)
    {
LABEL_131:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_156;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_131;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v86 = *(a1 + 216);
  *a2 = 106;
  v87 = *(v86 + 5);
  if (v87 > 0x7F)
  {
    a2[1] = v87 | 0x80;
    v89 = v87 >> 7;
    if (v87 >> 14)
    {
      v88 = a2 + 3;
      do
      {
        *(v88 - 1) = v89 | 0x80;
        v90 = v89 >> 7;
        ++v88;
        v91 = v89 >> 14;
        v89 >>= 7;
      }

      while (v91);
      *(v88 - 1) = v90;
    }

    else
    {
      a2[2] = v89;
      v88 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v87;
    v88 = a2 + 2;
  }

  a2 = TSP::SparseReferenceArray::_InternalSerialize(v86, v88, this);
  if ((v5 & 0x80) == 0)
  {
LABEL_132:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_166;
  }

LABEL_156:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v92 = *(a1 + 224);
  *a2 = 114;
  v93 = *(v92 + 5);
  if (v93 > 0x7F)
  {
    a2[1] = v93 | 0x80;
    v95 = v93 >> 7;
    if (v93 >> 14)
    {
      v94 = a2 + 3;
      do
      {
        *(v94 - 1) = v95 | 0x80;
        v96 = v95 >> 7;
        ++v94;
        v97 = v95 >> 14;
        v95 >>= 7;
      }

      while (v97);
      *(v94 - 1) = v96;
    }

    else
    {
      a2[2] = v95;
      v94 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v93;
    v94 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v92, v94, this);
  if ((v5 & 0x100) == 0)
  {
LABEL_133:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_176;
  }

LABEL_166:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v98 = *(a1 + 232);
  *a2 = 122;
  v99 = *(v98 + 5);
  if (v99 > 0x7F)
  {
    a2[1] = v99 | 0x80;
    v101 = v99 >> 7;
    if (v99 >> 14)
    {
      v100 = a2 + 3;
      do
      {
        *(v100 - 1) = v101 | 0x80;
        v102 = v101 >> 7;
        ++v100;
        v103 = v101 >> 14;
        v101 >>= 7;
      }

      while (v103);
      *(v100 - 1) = v102;
    }

    else
    {
      a2[2] = v101;
      v100 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v99;
    v100 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v98, v100, this);
  if ((v5 & 0x200) == 0)
  {
LABEL_134:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_186;
  }

LABEL_176:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v104 = *(a1 + 240);
  *a2 = 386;
  v105 = *(v104 + 5);
  if (v105 > 0x7F)
  {
    a2[2] = v105 | 0x80;
    v107 = v105 >> 7;
    if (v105 >> 14)
    {
      v106 = a2 + 4;
      do
      {
        *(v106 - 1) = v107 | 0x80;
        v108 = v107 >> 7;
        ++v106;
        v109 = v107 >> 14;
        v107 >>= 7;
      }

      while (v109);
      *(v106 - 1) = v108;
    }

    else
    {
      a2[3] = v107;
      v106 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v105;
    v106 = a2 + 3;
  }

  a2 = TSP::Point::_InternalSerialize(v104, v106, this);
  if ((v5 & 0x400) != 0)
  {
LABEL_186:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v110 = *(a1 + 248);
    *a2 = 394;
    v111 = *(v110 + 5);
    if (v111 > 0x7F)
    {
      a2[2] = v111 | 0x80;
      v113 = v111 >> 7;
      if (v111 >> 14)
      {
        v112 = a2 + 4;
        do
        {
          *(v112 - 1) = v113 | 0x80;
          v114 = v113 >> 7;
          ++v112;
          v115 = v113 >> 14;
          v113 >>= 7;
        }

        while (v115);
        *(v112 - 1) = v114;
      }

      else
      {
        a2[3] = v113;
        v112 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v111;
      v112 = a2 + 3;
    }

    a2 = TSP::Reference::_InternalSerialize(v110, v112, this);
  }

LABEL_196:
  v116 = *(a1 + 152);
  if (v116)
  {
    for (ii = 0; ii != v116; ++ii)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v118 = *(*(a1 + 160) + 8 * ii + 8);
      *a2 = 402;
      v119 = *(v118 + 5);
      if (v119 > 0x7F)
      {
        a2[2] = v119 | 0x80;
        v121 = v119 >> 7;
        if (v119 >> 14)
        {
          v120 = a2 + 4;
          do
          {
            *(v120 - 1) = v121 | 0x80;
            v122 = v121 >> 7;
            ++v120;
            v123 = v121 >> 14;
            v121 >>= 7;
          }

          while (v123);
          *(v120 - 1) = v122;
        }

        else
        {
          a2[3] = v121;
          v120 = a2 + 4;
        }
      }

      else
      {
        a2[2] = v119;
        v120 = a2 + 3;
      }

      a2 = TSP::Reference::_InternalSerialize(v118, v120, this);
    }
  }

  if ((v5 & 0x1000) == 0)
  {
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_210;
    }

LABEL_228:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v131 = *(a1 + 264);
    *a2 = 416;
    if (v131 > 0x7F)
    {
      a2[2] = v131 | 0x80;
      v132 = v131 >> 7;
      if (v131 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v132 | 0x80;
          v133 = v132 >> 7;
          ++a2;
          v134 = v132 >> 14;
          v132 >>= 7;
        }

        while (v134);
        *(a2 - 1) = v133;
        if ((v5 & 0x4000) != 0)
        {
          goto LABEL_239;
        }
      }

      else
      {
        a2[3] = v132;
        a2 += 4;
        if ((v5 & 0x4000) != 0)
        {
          goto LABEL_239;
        }
      }
    }

    else
    {
      a2[2] = v131;
      a2 += 3;
      if ((v5 & 0x4000) != 0)
      {
        goto LABEL_239;
      }
    }

LABEL_211:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_215;
    }

    goto LABEL_212;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v127 = *(a1 + 260);
  *a2 = 408;
  if (v127 > 0x7F)
  {
    a2[2] = v127 | 0x80;
    v128 = v127 >> 7;
    if (v127 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v128 | 0x80;
        v129 = v128 >> 7;
        ++a2;
        v130 = v128 >> 14;
        v128 >>= 7;
      }

      while (v130);
      *(a2 - 1) = v129;
      if ((v5 & 0x2000) != 0)
      {
        goto LABEL_228;
      }
    }

    else
    {
      a2[3] = v128;
      a2 += 4;
      if ((v5 & 0x2000) != 0)
      {
        goto LABEL_228;
      }
    }
  }

  else
  {
    a2[2] = v127;
    a2 += 3;
    if ((v5 & 0x2000) != 0)
    {
      goto LABEL_228;
    }
  }

LABEL_210:
  if ((v5 & 0x4000) == 0)
  {
    goto LABEL_211;
  }

LABEL_239:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v135 = *(a1 + 268);
  *a2 = 424;
  if (v135 > 0x7F)
  {
    a2[2] = v135 | 0x80;
    v136 = v135 >> 7;
    if (v135 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v136 | 0x80;
        v137 = v136 >> 7;
        ++a2;
        v138 = v136 >> 14;
        v136 >>= 7;
      }

      while (v138);
      *(a2 - 1) = v137;
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_215;
      }
    }

    else
    {
      a2[3] = v136;
      a2 += 4;
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_215;
      }
    }
  }

  else
  {
    a2[2] = v135;
    a2 += 3;
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_215;
    }
  }

LABEL_212:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v124 = *(a1 + 272);
  *a2 = 432;
  a2[2] = v124;
  a2 += 3;
LABEL_215:
  v125 = *(a1 + 8);
  if ((v125 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v125 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27647D7E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = TSD::DrawableArchive::ByteSizeLong(*(a1 + 168));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = sub_27647FF9C(*(a1 + 176));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = sub_276400210(*(a1 + 200));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 0x800) == 0)
    {
      return v3;
    }
  }

  else if ((v2 & 0x800) == 0)
  {
    return v3;
  }

  v7 = *(a1 + 256);
  if (v7 < 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v8;
  return v3;
}

uint64_t sub_27647D8EC(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x813) != 0)
  {
    v11 = sub_27647D7E4(a1);
  }

  else
  {
    v2 = TSD::DrawableArchive::ByteSizeLong(*(a1 + 168));
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = sub_27647FF9C(*(a1 + 176));
    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    v6 = sub_276400210(*(a1 + 200));
    v7 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    v8 = *(a1 + 256);
    v9 = (9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6;
    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 10;
    }

    v11 = v2 + v4 + v6 + v3 + v5 + v7 + v10 + 4;
  }

  v12 = *(a1 + 32);
  v13 = v11 + v12;
  v14 = *(a1 + 40);
  if (v14)
  {
    v15 = (v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  if (v12)
  {
    v16 = 8 * v12;
    do
    {
      v17 = *v15++;
      v18 = TSP::Reference::ByteSizeLong(v17);
      v13 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6);
      v16 -= 8;
    }

    while (v16);
  }

  v19 = *(a1 + 56);
  v20 = v13 + v19;
  v21 = *(a1 + 64);
  if (v21)
  {
    v22 = (v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  if (v19)
  {
    v23 = 8 * v19;
    do
    {
      v24 = *v22++;
      v25 = TSP::Reference::ByteSizeLong(v24);
      v20 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6);
      v23 -= 8;
    }

    while (v23);
  }

  v26 = *(a1 + 80);
  v27 = v20 + v26;
  v28 = *(a1 + 88);
  if (v28)
  {
    v29 = (v28 + 8);
  }

  else
  {
    v29 = 0;
  }

  if (v26)
  {
    v30 = 8 * v26;
    do
    {
      v31 = *v29++;
      v32 = TSP::Reference::ByteSizeLong(v31);
      v27 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6);
      v30 -= 8;
    }

    while (v30);
  }

  v33 = *(a1 + 104);
  v34 = v27 + v33;
  v35 = *(a1 + 112);
  if (v35)
  {
    v36 = (v35 + 8);
  }

  else
  {
    v36 = 0;
  }

  if (v33)
  {
    v37 = 8 * v33;
    do
    {
      v38 = *v36++;
      v39 = TSP::Reference::ByteSizeLong(v38);
      v34 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6);
      v37 -= 8;
    }

    while (v37);
  }

  v40 = *(a1 + 128);
  v41 = v34 + v40;
  v42 = *(a1 + 136);
  if (v42)
  {
    v43 = (v42 + 8);
  }

  else
  {
    v43 = 0;
  }

  if (v40)
  {
    v44 = 8 * v40;
    do
    {
      v45 = *v43++;
      v46 = TSP::Reference::ByteSizeLong(v45);
      v41 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6);
      v44 -= 8;
    }

    while (v44);
  }

  v47 = *(a1 + 152);
  v48 = v41 + 2 * v47;
  v49 = *(a1 + 160);
  if (v49)
  {
    v50 = (v49 + 8);
  }

  else
  {
    v50 = 0;
  }

  if (v47)
  {
    v51 = 8 * v47;
    do
    {
      v52 = *v50++;
      v53 = TSP::Reference::ByteSizeLong(v52);
      v48 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6);
      v51 -= 8;
    }

    while (v51);
  }

  v54 = *(a1 + 16);
  if ((v54 & 0xC) != 0)
  {
    if ((v54 & 4) != 0)
    {
      v55 = TSP::Reference::ByteSizeLong(*(a1 + 184));
      v48 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v54 & 8) != 0)
    {
      v56 = sub_27647F354(*(a1 + 192));
      v48 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if ((v54 & 0xE0) != 0)
  {
    if ((v54 & 0x20) != 0)
    {
      v63 = TSP::SparseReferenceArray::ByteSizeLong(*(a1 + 208));
      v48 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v54 & 0x40) == 0)
      {
LABEL_51:
        if ((v54 & 0x80) == 0)
        {
          goto LABEL_53;
        }

        goto LABEL_52;
      }
    }

    else if ((v54 & 0x40) == 0)
    {
      goto LABEL_51;
    }

    v64 = TSP::SparseReferenceArray::ByteSizeLong(*(a1 + 216));
    v48 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v54 & 0x80) != 0)
    {
LABEL_52:
      v57 = TSP::Reference::ByteSizeLong(*(a1 + 224));
      v48 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_53:
  if ((v54 & 0x700) == 0)
  {
    goto LABEL_58;
  }

  if ((v54 & 0x100) != 0)
  {
    v65 = TSP::Reference::ByteSizeLong(*(a1 + 232));
    v48 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v54 & 0x200) == 0)
    {
LABEL_56:
      if ((v54 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }
  }

  else if ((v54 & 0x200) == 0)
  {
    goto LABEL_56;
  }

  v66 = TSP::Point::ByteSizeLong(*(a1 + 240));
  v48 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v54 & 0x400) != 0)
  {
LABEL_57:
    v58 = TSP::Reference::ByteSizeLong(*(a1 + 248));
    v48 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_58:
  if ((v54 & 0xF000) == 0)
  {
    goto LABEL_68;
  }

  if ((v54 & 0x1000) != 0)
  {
    v67 = *(a1 + 260);
    v68 = ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v67 >= 0)
    {
      v69 = v68;
    }

    else
    {
      v69 = 12;
    }

    v48 += v69;
    if ((v54 & 0x2000) == 0)
    {
LABEL_61:
      if ((v54 & 0x4000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_62;
    }
  }

  else if ((v54 & 0x2000) == 0)
  {
    goto LABEL_61;
  }

  v70 = *(a1 + 264);
  v71 = ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v70 >= 0)
  {
    v72 = v71;
  }

  else
  {
    v72 = 12;
  }

  v48 += v72;
  if ((v54 & 0x4000) != 0)
  {
LABEL_62:
    v59 = *(a1 + 268);
    v60 = ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v59 >= 0)
    {
      v61 = v60;
    }

    else
    {
      v61 = 12;
    }

    v48 += v61;
  }

LABEL_66:
  if ((v54 & 0x8000) != 0)
  {
    v48 += 3;
  }

LABEL_68:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v48;
    return v48;
  }
}