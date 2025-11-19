void TSP::SupportMetadata::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::SupportMetadata::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *TSP::SupportMetadata::MergeFrom(std::string *this, const TSP::SupportMetadata *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 5);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4[1], *(a2 + 8));
    this = sub_10004A9A8(v4 + 1, v8, v7 + 8, v6, *v4[1].__r_.__value_.__r.__words[2] - LODWORD(v4[1].__r_.__value_.__r.__words[1]));
    v9 = LODWORD(v4[1].__r_.__value_.__r.__words[1]) + v6;
    LODWORD(v4[1].__r_.__value_.__r.__words[1]) = v9;
    v10 = v4[1].__r_.__value_.__r.__words[2];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  if (*(a2 + 16))
  {
    v11 = *(a2 + 48);
    LODWORD(v4->__r_.__value_.__r.__words[2]) |= 1u;
    v4[2].__r_.__value_.__s.__data_[0] = v11;
  }

  return this;
}

void TSP::SupportMetadata::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::SupportMetadata::Clear(this, a2, a3);

    TSP::SupportMetadata::MergeFrom(this, a2);
  }
}

BOOL TSP::SupportMetadata::IsInitialized(TSP::SupportMetadata *this)
{
  v1 = *(this + 8);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(this + 5) + 8 * v1--);
  }

  while ((*(v3 + 16) & 1) != 0);
  return v2 < 1;
}

uint64_t TSP::SupportMetadata::GetMetadata(TSP::SupportMetadata *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[54];
  v2 = off_1001E92E8[55];
  return result;
}

void *sub_100048230(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10004AA68(a1, 1);
  TSP::ArchiveInfo::ArchiveInfo(v2, a1);
  return v2;
}

void *sub_1000482BC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10004AAF4(a1, 1);
  TSP::MessageInfo::MessageInfo(v2, a1);
  return v2;
}

void *sub_100048348(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10004AB80(a1, 1);
  TSP::FieldInfo::FieldInfo(v2, a1);
  return v2;
}

void *sub_1000483D4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_10004AC0C(a1, 1);
  *result = off_1001C7E78;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  *(result + 9) = 0;
  return result;
}

void *sub_100048468(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10004AC98(a1, 1);
  TSP::ComponentInfo::ComponentInfo(v2, a1);
  return v2;
}

void *sub_1000484F4(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_10004AD24(this, 1);
  *result = off_1001C7FD8;
  result[1] = this;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_10004856C(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_10004ADCC(this, 1);
  *result = off_1001C8088;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  *(result + 8) = 0;
  return result;
}

void *sub_1000485E0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10004AE74(a1, 1);
  TSP::ComponentDataReference::ComponentDataReference(v2, a1);
  return v2;
}

void *sub_10004866C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_10004AF00(a1);
}

void *sub_100048738(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10004B000(a1, 1);
  TSP::FeatureInfo::FeatureInfo(v2, a1);
  return v2;
}

void *sub_1000487C4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10004B08C(a1, 1);
  TSP::PackageMetadata::PackageMetadata(v2, a1);
  return v2;
}

void *sub_100048850(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10004B118(a1, 1);
  TSP::DocumentRevision::DocumentRevision(v2, a1);
  return v2;
}

void *sub_1000488DC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10004B1A4(a1, 1);
  TSP::PasteboardMetadata::PasteboardMetadata(v2, a1);
  return v2;
}

void *sub_100048968(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10004B230(a1, 1);
  TSP::DataInfo::DataInfo(v2, a1);
  return v2;
}

void *sub_1000489F4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_10004B2BC(a1);
}

void *sub_100048AC0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10004B3BC(a1, 1);
  TSP::DataMetadataMap::DataMetadataMap(v2, a1);
  return v2;
}

void *sub_100048B4C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_10004B448(a1);
}

void *sub_100048C18(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10004B548(a1, 1);
  TSP::EncryptionInfo::EncryptionInfo(v2, a1);
  return v2;
}

void *sub_100048CA4(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_10004B5D4(this, 1);
  *result = off_1001C88C8;
  result[1] = this;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_100048D18(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10004B67C(a1, 1);
  TSP::ViewStateMetadata::ViewStateMetadata(v2, a1);
  return v2;
}

void *sub_100048DA4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10004B708(a1, 1);
  TSP::ObjectSerializationMetadata::ObjectSerializationMetadata(v2, a1);
  return v2;
}

void *sub_100048E30(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10004B794(a1, 1);
  TSP::ObjectSerializationDirectory_Entry::ObjectSerializationDirectory_Entry(v2, a1);
  return v2;
}

void *sub_100048EBC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10004B820(a1, 1);
  TSP::ObjectSerializationDirectory::ObjectSerializationDirectory(v2, a1);
  return v2;
}

void *sub_100048F48(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10004B8AC(a1, 1);
  TSP::DataPropertiesEntryV1::DataPropertiesEntryV1(v2, a1);
  return v2;
}

void *sub_100048FD4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10004B938(a1, 1);
  TSP::DataPropertiesV1::DataPropertiesV1(v2, a1);
  return v2;
}

void *sub_100049060(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_10004B9C4(a1);
}

void *sub_100049130(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10004BAC8(a1, 1);
  TSP::SupportMetadata_DataCollaborationProperties::SupportMetadata_DataCollaborationProperties(v2, a1);
  return v2;
}

void *sub_1000491BC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_10004BB54(a1, 1);
  TSP::SupportMetadata::SupportMetadata(v2, a1);
  return v2;
}

google::protobuf::UnknownFieldSet *sub_100049414(google::protobuf::UnknownFieldSet *result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 2);
  if (v3 >= 1)
  {
    v4 = result;
    v5 = *(result + 2) + 8;
    do
    {
      result = (*v5 + 8);
      v6 = *result;
      *(*v5 + 16) = 0;
      if (v6)
      {
        result = sub_1000315EC(result, a2, a3);
      }

      v5 += 8;
      --v3;
    }

    while (v3);
    *(v4 + 2) = 0;
  }

  return result;
}

void sub_100049474(void *a1)
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
          TSP::MessageInfo::~MessageInfo(*v3);
          operator delete();
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

google::protobuf::Arena **sub_1000494F8(google::protobuf::Arena **result, google::protobuf::Arena ***a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_1000495A8(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::MessageInfo>(v18);
      result = sub_1000495A8(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_1000495B8(void *a1)
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
          TSP::FieldInfo::~FieldInfo(*v3);
          operator delete();
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

void sub_10004963C(void *a1)
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
          TSP::FieldPath::~FieldPath(*v3);
          operator delete();
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

unsigned __int8 *sub_1000496C0(google::protobuf::io::EpsCopyOutputStream *this, int a2, int *a3, unsigned int a4, unsigned __int8 *a5, uint64_t (*a6)(void))
{
  if (*this <= a5)
  {
    a5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a5);
  }

  v11 = sub_1000497D4(this, a2, a4, a5);
  v12 = *(a3 + 1);
  v13 = &v12[*a3];
  do
  {
    if (*this <= v11)
    {
      v11 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v11);
    }

    v14 = *v12++;
    v15 = a6(v14);
    if (v15 > 0x7F)
    {
      *v11 = v15 | 0x80;
      v16 = v15 >> 7;
      if (v15 >> 14)
      {
        v11 += 2;
        do
        {
          *(v11 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++v11;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(v11 - 1) = v17;
      }

      else
      {
        v11[1] = v16;
        v11 += 2;
      }
    }

    else
    {
      *v11++ = v15;
    }
  }

  while (v12 < v13);
  return v11;
}

_BYTE *sub_1000497D4(uint64_t a1, int a2, unsigned int a3, _BYTE *a4)
{
  v4 = 8 * a2;
  if ((8 * a2) > 0x7F)
  {
    *a4 = v4 | 0x82;
    v6 = v4 >> 7;
    if (v4 >> 14)
    {
      v5 = a4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      a4[1] = v6;
      v5 = a4 + 2;
    }
  }

  else
  {
    *a4 = v4 | 2;
    v5 = a4 + 1;
  }

  if (a3 >= 0x80)
  {
    do
    {
      *v5++ = a3 | 0x80;
      v9 = a3 >> 7;
      v11 = a3 >> 14;
      a3 >>= 7;
    }

    while (v11);
  }

  else
  {
    LOBYTE(v9) = a3;
  }

  *v5 = v9;
  return v5 + 1;
}

unsigned __int8 *sub_100049868(google::protobuf::io::EpsCopyOutputStream *this, int a2, int *a3, unsigned int a4, unsigned __int8 *a5, uint64_t (*a6)(uint64_t))
{
  if (*this <= a5)
  {
    a5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a5);
  }

  v11 = sub_1000497D4(this, a2, a4, a5);
  v12 = *(a3 + 1);
  v13 = &v12[*a3];
  do
  {
    if (*this <= v11)
    {
      v11 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v11);
    }

    v14 = *v12++;
    v15 = a6(v14);
    if (v15 > 0x7F)
    {
      *v11 = v15 | 0x80;
      v16 = v15 >> 7;
      if (v15 >> 14)
      {
        v11 += 2;
        do
        {
          *(v11 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++v11;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(v11 - 1) = v17;
      }

      else
      {
        v11[1] = v16;
        v11 += 2;
      }
    }

    else
    {
      *v11++ = v15;
    }
  }

  while (v12 < v13);
  return v11;
}

google::protobuf::Arena **sub_10004997C(google::protobuf::Arena **result, google::protobuf::Arena ***a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_100049A2C(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::FieldInfo>(v18);
      result = sub_100049A2C(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_100049A3C(uint64_t *result, TSP::FieldPath **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_100049AEC(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::FieldPath>(v18);
      result = sub_100049AEC(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_100049AFC(void *a1)
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
          sub_10002F4C4((*v3 + 8));
          operator delete();
        }

        v3 += 2;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_100049B94(void *a1)
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
          TSP::ComponentDataReference::~ComponentDataReference(*v3);
          operator delete();
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

void sub_100049C18(void *a1)
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
          TSP::ObjectUUIDMapEntry::~ObjectUUIDMapEntry(*v3);
          operator delete();
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

void sub_100049C9C(void *a1)
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
          TSP::FeatureInfo::~FeatureInfo(*v3);
          operator delete();
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

uint64_t *sub_100049D20(uint64_t *result, TSP::ComponentExternalReference **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_100049DD0(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::ComponentExternalReference>(v18);
      result = sub_100049DD0(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_100049DE0(uint64_t *result, TSP::ComponentDataReference **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_100049E90(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::ComponentDataReference>(v18);
      result = sub_100049E90(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_100049EA0(uint64_t *result, TSP::ObjectUUIDMapEntry **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_100049F50(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::ObjectUUIDMapEntry>(v18);
      result = sub_100049F50(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

std::string *sub_100049F60(std::string *result, std::string **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_10004A010(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = v9->__words[0];
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::FeatureInfo>(v18);
      result = sub_10004A010(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_10004A020(void *a1)
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
          sub_10002F4C4((*v3 + 8));
          operator delete();
        }

        v3 += 2;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_10004A0B8(uint64_t *result, TSP::ComponentDataReference_ObjectReference **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_10004A168(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::ComponentDataReference_ObjectReference>(v18);
      result = sub_10004A168(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_10004A178(void *a1)
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
          TSP::ComponentInfo::~ComponentInfo(*v3);
          operator delete();
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

void sub_10004A1FC(void *a1)
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
          TSP::DataInfo::~DataInfo(*v3);
          operator delete();
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

google::protobuf::Arena **sub_10004A280(google::protobuf::Arena **result, google::protobuf::Arena ***a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_10004A330(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::ComponentInfo>(v18);
      result = sub_10004A330(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_10004A340(uint64_t *a1, TSP::DataInfo **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      sub_10004A3F0(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataInfo>(v18);
      sub_10004A3F0(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_10004A400(void *a1)
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
          TSP::DataMetadataMap_DataMetadataMapEntry::~DataMetadataMap_DataMetadataMapEntry(*v3);
          operator delete();
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

uint64_t *sub_10004A484(uint64_t *result, TSP::DataMetadataMap_DataMetadataMapEntry **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_10004A534(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataMetadataMap_DataMetadataMapEntry>(v18);
      result = sub_10004A534(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_10004A544(void *a1)
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
          sub_10002F4C4((*v3 + 8));
          operator delete();
        }

        v3 += 2;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_10004A5DC(uint64_t *result, TSP::EncryptionBlockInfo **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_10004A68C(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::EncryptionBlockInfo>(v18);
      result = sub_10004A68C(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_10004A69C(void *a1)
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
          TSP::ObjectSerializationDirectory_Entry::~ObjectSerializationDirectory_Entry(*v3);
          operator delete();
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

std::string *sub_10004A720(std::string *result, std::string **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_10004A7D0(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = v9->__words[0];
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::ObjectSerializationDirectory_Entry>(v18);
      result = sub_10004A7D0(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_10004A7E0(void *a1)
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
          TSP::DataPropertiesEntryV1::~DataPropertiesEntryV1(*v3);
          operator delete();
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

google::protobuf::Arena **sub_10004A864(google::protobuf::Arena **result, google::protobuf::Arena ***a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_10004A914(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataPropertiesEntryV1>(v18);
      result = sub_10004A914(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_10004A924(void *a1)
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
          TSP::SupportMetadata_DataCollaborationProperties::~SupportMetadata_DataCollaborationProperties(*v3);
          operator delete();
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

std::string *sub_10004A9A8(std::string *result, std::string **a2, uint64_t a3, unsigned int a4, unsigned int a5)
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
      result = sub_10004AA58(v13, v15, a3);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = v9->__words[0];
    v19 = (a3 + 8 * a5);
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::SupportMetadata_DataCollaborationProperties>(v18);
      result = sub_10004AA58(v21, v22, v23);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void *sub_10004AA68(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100156F94(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x40uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x40uLL, TSP::ArchiveInfo::~ArchiveInfo);
}

void *sub_10004AAF4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100156FC4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0xD8uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xD8uLL, TSP::MessageInfo::~MessageInfo);
}

void *sub_10004AB80(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100157000(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x80uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x80uLL, TSP::FieldInfo::~FieldInfo);
}

void *sub_10004AC0C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_10015703C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, TSP::FieldPath::~FieldPath);
}

void *sub_10004AC98(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_10015706C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x138uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x138uLL, TSP::ComponentInfo::~ComponentInfo);
}

void *sub_10004AD24(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001570A8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, sub_10004ADAC);
}

void *sub_10004ADCC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001570D8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, sub_10004AE54);
}

void *sub_10004AE74(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100157108(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x38uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, TSP::ComponentDataReference::~ComponentDataReference);
}

void *sub_10004AF00(google::protobuf::Arena *a1)
{
  v2 = sub_10004AF74(a1, 1);
  *v2 = off_1001C81E8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ObjectUUIDMapEntry_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ObjectUUIDMapEntry_TSPArchiveMessages_2eproto);
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

void *sub_10004AF74(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100157138(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, TSP::ObjectUUIDMapEntry::~ObjectUUIDMapEntry);
}

void *sub_10004B000(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100157168(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x50uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, TSP::FeatureInfo::~FeatureInfo);
}

void *sub_10004B08C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100157198(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0xD0uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xD0uLL, TSP::PackageMetadata::~PackageMetadata);
}

void *sub_10004B118(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001571D4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, TSP::DocumentRevision::~DocumentRevision);
}

void *sub_10004B1A4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100157204(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x78uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x78uLL, TSP::PasteboardMetadata::~PasteboardMetadata);
}

void *sub_10004B230(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100157240(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0xA0uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xA0uLL, TSP::DataInfo::~DataInfo);
}

void *sub_10004B2BC(google::protobuf::Arena *a1)
{
  v2 = sub_10004B330(a1, 1);
  *v2 = off_1001C8608;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_DataMetadataMap_DataMetadataMapEntry_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DataMetadataMap_DataMetadataMapEntry_TSPArchiveMessages_2eproto);
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

void *sub_10004B330(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_10015727C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, TSP::DataMetadataMap_DataMetadataMapEntry::~DataMetadataMap_DataMetadataMapEntry);
}

void *sub_10004B3BC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001572AC(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, TSP::DataMetadataMap::~DataMetadataMap);
}

void *sub_10004B448(google::protobuf::Arena *a1)
{
  v2 = sub_10004B4BC(a1, 1);
  *v2 = off_1001C8768;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_DataMetadata_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DataMetadata_TSPArchiveMessages_2eproto);
  }

  v2[3] = 0;
  return v2;
}

void *sub_10004B4BC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001572DC(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, TSP::DataMetadata::~DataMetadata);
}

void *sub_10004B548(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_10015730C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x40uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x40uLL, TSP::EncryptionInfo::~EncryptionInfo);
}

void *sub_10004B5D4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_10015733C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, sub_10004B65C);
}

void *sub_10004B67C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_10015736C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x70uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x70uLL, TSP::ViewStateMetadata::~ViewStateMetadata);
}

void *sub_10004B708(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001573A8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x98uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x98uLL, TSP::ObjectSerializationMetadata::~ObjectSerializationMetadata);
}

void *sub_10004B794(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001573E4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, TSP::ObjectSerializationDirectory_Entry::~ObjectSerializationDirectory_Entry);
}

void *sub_10004B820(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100157414(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, TSP::ObjectSerializationDirectory::~ObjectSerializationDirectory);
}

void *sub_10004B8AC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100157444(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x50uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, TSP::DataPropertiesEntryV1::~DataPropertiesEntryV1);
}

void *sub_10004B938(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100157474(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, TSP::DataPropertiesV1::~DataPropertiesV1);
}

void *sub_10004B9C4(google::protobuf::Arena *a1)
{
  v2 = sub_10004BA3C(a1, 1);
  *v2 = off_1001C8D98;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_DocumentMetadata_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DocumentMetadata_TSPArchiveMessages_2eproto);
  }

  *(v2 + 32) = 0;
  v2[3] = 0;
  return v2;
}

void *sub_10004BA3C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001574A4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, TSP::DocumentMetadata::~DocumentMetadata);
}

void *sub_10004BAC8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_1001574D4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, TSP::SupportMetadata_DataCollaborationProperties::~SupportMetadata_DataCollaborationProperties);
}

void *sub_10004BB54(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_100157504(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x38uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, TSP::SupportMetadata::~SupportMetadata);
}

uint64_t *sub_10004BC48(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  v2 = *result;
  return result;
}

void sub_10004BDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004BE0C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004BE24(void *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    if (v7)
    {
      v14 = *(*(a1[4] + 8) + 40);
      if (a2)
      {
        if (!v14)
        {
          v15 = [NSData tsp_dataFromDispatchData:v7];
          v16 = a1[5];
LABEL_12:
          v17 = *(v16 + 8);
          v18 = *(v17 + 40);
          *(v17 + 40) = v15;

          goto LABEL_16;
        }
      }

      else if (!v14)
      {
        v19 = objc_alloc_init(NSMutableData);
        v20 = *(a1[4] + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        v14 = *(*(a1[4] + 8) + 40);
      }

      [v14 tsp_appendDispatchData:v7];
      goto LABEL_16;
    }

    v15 = objc_alloc_init(NSMutableData);
    v16 = a1[4];
    goto LABEL_12;
  }

  v9 = *(a1[5] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  v11 = *(a1[4] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;

  if (TSUDefaultCat_init_token != -1)
  {
    sub_100157534();
  }

  v13 = TSUDefaultCat_log_t;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v22 = a1[6];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = [v8 domain];
    v28 = 138544386;
    v29 = v24;
    v30 = 2114;
    v31 = v26;
    v32 = 2114;
    v33 = v27;
    v34 = 2048;
    v35 = [v8 code];
    v36 = 2112;
    v37 = v8;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Error creating NSData for %{public}@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", &v28, 0x34u);
  }

LABEL_16:
}

void sub_10004C0C4(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10004C300(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10004C3B8(uint64_t a1)
{
  [*(*(a1 + 32) + 24) didFinishProcessing];
  [*(*(a1 + 32) + 16) close];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;
}

void sub_10004C4B4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  if (!v1)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_1001575F0();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100157604();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Already closed", v5, v6, v7, v8, v9, v10, v11, "[TSPCompressionComponentWriteChannel writeData:]_block_invoke");
    v12 = [NSString stringWithUTF8String:"[TSPCompressionComponentWriteChannel writeData:]_block_invoke"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPCompressionComponentWriteChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:44 isFatal:1 description:"Already closed"];

    TSUCrashBreakpoint();
    abort();
  }

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 1;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004C718;
  v15[3] = &unk_1001C92E8;
  v17 = v18;
  v3 = v1;
  v16 = v3;
  [*(*(a1 + 32) + 24) setHandler:v15];
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_10004C844;
  applier[3] = &unk_1001C9310;
  v4 = *(a1 + 40);
  applier[4] = *(a1 + 32);
  dispatch_data_apply(v4, applier);

  _Block_object_dispose(v18, 8);
}

void sub_10004C6D4(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

uint64_t sub_10004C718(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    if (v10)
    {
      if (TSUPersistenceSerializationCat_init_token != -1)
      {
        sub_100157698();
      }

      v12 = TSUPersistenceSerializationCat_log_t;
      if (os_log_type_enabled(TSUPersistenceSerializationCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_1001576AC(v12, v11);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    else
    {
      [*(a1 + 32) writeData:v9];
    }
  }

  v13 = *(*(*(a1 + 40) + 8) + 24);

  return v13;
}

void sub_10004C800(id a1)
{
  TSUPersistenceSerializationCat_log_t = TSULogCreateCategory("TSUPersistenceSerializationCat");

  _objc_release_x1();
}

uint64_t TSP::ObjectStateIdentifier::dataState(TSP::ObjectStateIdentifier *this)
{
  if ((*this & 1) == 0)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_1001577A0();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_1001577B4();
    }

    v2 = [NSString stringWithUTF8String:"int64_t TSP::ObjectStateIdentifier::dataState() const"];
    v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPObjectStateIdentifier.mm"];
    [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:30 isFatal:0 description:"Asked for data state when we have none"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return *(this + 1);
}

void sub_10004C9C8(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

id TSP::ObjectStateIdentifier::fileState(TSP::ObjectStateIdentifier *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100157848();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015785C();
    }

    v2 = [NSString stringWithUTF8String:"NSString *TSP::ObjectStateIdentifier::fileState() const"];
    v3 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPObjectStateIdentifier.mm"];
    [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:45 isFatal:0 description:"Asked for file state when we have none"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v4 = *(this + 3);

  return v4;
}

void sub_10004CB34(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10004CD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v14 = v11;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004CDC0(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else if (!a2)
  {
    goto LABEL_5;
  }

  v7 = v6;
  dispatch_semaphore_signal(*(a1 + 32));
  v6 = v7;
LABEL_5:
}

void sub_10004CF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10004CF78(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004CF90(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }

  else if (v9)
  {
    [*(*(*(a1 + 32) + 8) + 40) tsp_appendDispatchData:v9];
  }
}

void sub_10004D420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_10004D458(uint64_t a1, const void *a2, uint64_t a3, size_t a4)
{
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_10004CF78;
  v15[4] = sub_10004CF88;
  v16 = *(a1 + 32);
  v8 = *(a1 + 40);
  destructor[0] = _NSConcreteStackBlock;
  destructor[1] = 3221225472;
  destructor[2] = sub_10004D5CC;
  destructor[3] = &unk_1001C93F0;
  destructor[4] = v15;
  v9 = dispatch_data_create(a2, a4, v8, destructor);
  concat = dispatch_data_create_concat(*(*(*(a1 + 56) + 8) + 40), v9);
  v11 = *(*(a1 + 56) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = concat;

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, v9, a3, a2, a4);
  }

  _Block_object_dispose(v15, 8);
}

void sub_10004D5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_10004D5CC(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10004D814(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10004D858(id a1)
{
  TSUDefaultCat_log_t = TSULogCreateCategory("TSUDefaultCat");

  _objc_release_x1();
}

void sub_10004DAA4(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

id sub_10004DB80(uint64_t a1)
{
  dispatch_suspend(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (!v3)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100157A34();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100157A48();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Already closed", v6, v7, v8, v9, v10, v11, v12, "[TSPComponentWriteChannelAdapter writeData:]_block_invoke");
    v13 = [NSString stringWithUTF8String:"[TSPComponentWriteChannelAdapter writeData:]_block_invoke"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/NSData_TSPersistence.mm"];
    [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:265 isFatal:1 description:"Already closed"];

    TSUCrashBreakpoint();
    abort();
  }

  v4 = *(a1 + 40);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10004DD60;
  v15[3] = &unk_1001C6B58;
  v15[4] = v2;
  return [v3 writeData:v4 handler:v15];
}

void sub_10004DD1C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10004DD60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v7 = *(*(a1 + 32) + 24);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, a3, v8);
  }

  if (a2)
  {
    dispatch_resume(*(*(a1 + 32) + 8));
  }
}

void sub_10004E180(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10004E57C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10004E834(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10004EAEC(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10004EDA4(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10004F05C(id a1)
{
  TSUAssertCat_log_t = TSULogCreateCategory("TSUAssertCat");

  _objc_release_x1();
}

void sub_10004F5AC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::CFUUIDArchive::CFUUIDArchive(TSP::_CFUUIDArchive_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_CFUUIDArchive_default_instance_, v4);
}

void sub_10004F61C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::_Color_default_instance_ = off_1001CA000;
  unk_1001EC220 = 0;
  xmmword_1001EC228 = 0u;
  unk_1001EC238 = 0u;
  qword_1001EC248 = 0;
  qword_1001EC250 = 0x100000001;
  dword_1001EC258 = 1065353216;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_Color_default_instance_, v4);
}

void sub_10004F6AC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::_DataAttributes_default_instance_[0] = off_1001CADC0;
  unk_1001EC6C8 = 0;
  google::protobuf::internal::ExtensionSet::ExtensionSet(&unk_1001EC6D0, 0);
  dword_1001EC6E8 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_DataAttributes_default_instance_, v4);
}

void sub_10004F73C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  qword_1001EC0A0 = 0;
  unk_1001EC0A8 = 0;
  TSP::_DataReference_default_instance_ = off_1001C9920;
  qword_1001EC0B0 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_DataReference_default_instance_, v4);
}

void sub_10004F7B8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  qword_1001EC1D0 = 0;
  unk_1001EC1D8 = 0;
  TSP::_Date_default_instance_ = off_1001C9EA0;
  qword_1001EC1E0 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_Date_default_instance_, v4);
}

void sub_10004F834(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_1001EC960 = v5;
  TSP::_FieldOptions_default_instance_[0] = off_1001CB760;
  dword_1001EC970 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_FieldOptions_default_instance_, v4);
}

void sub_10004F8B8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::IndexSet::IndexSet(&TSP::_IndexSet_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_IndexSet_default_instance_, v4);
}

void sub_10004F928(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::LargeArray::LargeArray(&TSP::_LargeArray_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_LargeArray_default_instance_, v4);
}

void sub_10004F998(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::LargeArraySegment::LargeArraySegment(TSP::_LargeArraySegment_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_LargeArraySegment_default_instance_, v4);
}

void sub_10004FA08(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_1001EC900 = v5;
  TSP::_LargeLazyObjectArray_default_instance_[0] = off_1001CB550;
  if (atomic_load_explicit(scc_info_LargeLazyObjectArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeLazyObjectArray_TSPMessages_2eproto);
  }

  qword_1001EC910 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_LargeLazyObjectArray_default_instance_, v4);
}

void sub_10004FAB8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::LargeLazyObjectArraySegment::LargeLazyObjectArraySegment(TSP::_LargeLazyObjectArraySegment_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_LargeLazyObjectArraySegment_default_instance_, v4);
}

void sub_10004FB28(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_1001EC8C0 = v5;
  TSP::_LargeNumberArray_default_instance_[0] = off_1001CB3F0;
  if (atomic_load_explicit(scc_info_LargeNumberArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeNumberArray_TSPMessages_2eproto);
  }

  qword_1001EC8D0 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_LargeNumberArray_default_instance_, v4);
}

void sub_10004FBD8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::LargeNumberArraySegment::LargeNumberArraySegment(TSP::_LargeNumberArraySegment_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_LargeNumberArraySegment_default_instance_, v4);
}

void sub_10004FC48(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_1001EC920 = v5;
  TSP::_LargeObjectArray_default_instance_[0] = off_1001CB600;
  if (atomic_load_explicit(scc_info_LargeObjectArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeObjectArray_TSPMessages_2eproto);
  }

  qword_1001EC930 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_LargeObjectArray_default_instance_, v4);
}

void sub_10004FCF8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::LargeObjectArraySegment::LargeObjectArraySegment(TSP::_LargeObjectArraySegment_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_LargeObjectArraySegment_default_instance_, v4);
}

void sub_10004FD68(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_1001EC8E0 = v5;
  TSP::_LargeStringArray_default_instance_[0] = off_1001CB4A0;
  if (atomic_load_explicit(scc_info_LargeStringArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeStringArray_TSPMessages_2eproto);
  }

  qword_1001EC8F0 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_LargeStringArray_default_instance_, v4);
}

void sub_10004FE18(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::LargeStringArraySegment::LargeStringArraySegment(TSP::_LargeStringArraySegment_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_LargeStringArraySegment_default_instance_, v4);
}

void sub_10004FE88(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  *algn_1001EC750 = v5;
  TSP::_LargeStringArraySegment_OptionalElement_default_instance_ = off_1001CAFD0;
  if (atomic_load_explicit(scc_info_LargeStringArraySegment_OptionalElement_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeStringArraySegment_OptionalElement_TSPMessages_2eproto);
  }

  qword_1001EC760 = &google::protobuf::internal::fixed_address_empty_string;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_LargeStringArraySegment_OptionalElement_default_instance_, v4);
}

void sub_10004FF40(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_1001EC940 = v5;
  TSP::_LargeUUIDArray_default_instance_[0] = off_1001CB6B0;
  if (atomic_load_explicit(scc_info_LargeUUIDArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_LargeUUIDArray_TSPMessages_2eproto);
  }

  qword_1001EC950 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_LargeUUIDArray_default_instance_, v4);
}

void sub_10004FFF0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::LargeUUIDArraySegment::LargeUUIDArraySegment(TSP::_LargeUUIDArraySegment_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_LargeUUIDArraySegment_default_instance_, v4);
}

void sub_100050060(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::ObjectCollection::ObjectCollection(&TSP::_ObjectCollection_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_ObjectCollection_default_instance_, v4);
}

void sub_1000500D0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::ObjectContainer::ObjectContainer(&TSP::_ObjectContainer_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_ObjectContainer_default_instance_, v4);
}

void sub_100050140(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::PasteboardObject::PasteboardObject(&TSP::_PasteboardObject_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_PasteboardObject_default_instance_, v4);
}

void sub_1000501B0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::Path::Path(&TSP::_Path_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_Path_default_instance_, v4);
}

void sub_100050220(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::Path_Element::Path_Element(&TSP::_Path_Element_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_Path_Element_default_instance_, v4);
}

void sub_100050290(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  qword_1001EC120 = 0;
  unk_1001EC128 = 0;
  TSP::_Point_default_instance_ = off_1001C9B30;
  qword_1001EC130 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_Point_default_instance_, v4);
}

void sub_10005030C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  qword_1001EC140 = 0;
  unk_1001EC148 = 0;
  TSP::_Pose3D_default_instance_ = off_1001C9BE0;
  qword_1001EC150 = 0;
  dword_1001EC158 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_Pose3D_default_instance_, v4);
}

void sub_10005038C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  qword_1001EC1B0 = 0;
  unk_1001EC1B8 = 0;
  TSP::_Range_default_instance_ = off_1001C9DF0;
  qword_1001EC1C0 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_Range_default_instance_, v4);
}

void sub_100050408(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_1001EC168 = v5;
  TSP::_Rect_default_instance_[0] = off_1001C9C90;
  if (atomic_load_explicit(scc_info_Rect_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Rect_TSPMessages_2eproto);
  }

  qword_1001EC178 = 0;
  unk_1001EC180 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_Rect_default_instance_, v4);
}

void sub_1000504B8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  qword_1001EC078 = 0;
  unk_1001EC080 = 0;
  TSP::_Reference_default_instance_ = off_1001C9870;
  qword_1001EC088 = 0;
  *(&qword_1001EC088 + 5) = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_Reference_default_instance_, v4);
}

void sub_100050538(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::ReferenceDictionary::ReferenceDictionary(&TSP::_ReferenceDictionary_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_ReferenceDictionary_default_instance_, v4);
}

void sub_1000505A8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  *algn_1001EC2D0 = v5;
  TSP::_ReferenceDictionary_Entry_default_instance_ = off_1001CA210;
  if (atomic_load_explicit(scc_info_ReferenceDictionary_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ReferenceDictionary_Entry_TSPMessages_2eproto);
  }

  qword_1001EC2E0 = 0;
  unk_1001EC2E8 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_ReferenceDictionary_Entry_default_instance_, v4);
}

void sub_100050658(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  qword_1001EC190 = 0;
  unk_1001EC198 = 0;
  TSP::_Size_default_instance_ = off_1001C9D40;
  qword_1001EC1A0 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_Size_default_instance_, v4);
}

void sub_1000506D4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::SparseReferenceArray::SparseReferenceArray(&TSP::_SparseReferenceArray_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_SparseReferenceArray_default_instance_, v4);
}

void sub_100050744(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_1001EC0C0 = v5;
  TSP::_SparseReferenceArray_Entry_default_instance_[0] = off_1001C99D0;
  if (atomic_load_explicit(scc_info_SparseReferenceArray_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseReferenceArray_Entry_TSPMessages_2eproto);
  }

  dword_1001EC0D8 = 0;
  qword_1001EC0D0 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_SparseReferenceArray_Entry_default_instance_, v4);
}

void sub_1000507F8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::SparseUUIDArray::SparseUUIDArray(&TSP::_SparseUUIDArray_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_SparseUUIDArray_default_instance_, v4);
}

void sub_100050868(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  *algn_1001EC4B0 = v5;
  TSP::_SparseUUIDArray_Entry_default_instance_ = off_1001CA840;
  if (atomic_load_explicit(scc_info_SparseUUIDArray_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseUUIDArray_Entry_TSPMessages_2eproto);
  }

  dword_1001EC4C8 = 0;
  qword_1001EC4C0 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_SparseUUIDArray_Entry_default_instance_, v4);
}

void sub_10005091C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::SparseUUIDPathArray::SparseUUIDPathArray(&TSP::_SparseUUIDPathArray_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_SparseUUIDPathArray_default_instance_, v4);
}

void sub_10005098C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_1001EC540 = v5;
  TSP::_SparseUUIDPathArray_Entry_default_instance_[0] = off_1001CAA50;
  if (atomic_load_explicit(scc_info_SparseUUIDPathArray_Entry_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseUUIDPathArray_Entry_TSPMessages_2eproto);
  }

  dword_1001EC558 = 0;
  qword_1001EC550 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_SparseUUIDPathArray_Entry_default_instance_, v4);
}

void sub_100050A40(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  qword_1001EC328 = 0;
  unk_1001EC330 = 0;
  TSP::_UUID_default_instance_ = off_1001CA370;
  qword_1001EC338 = 0;
  unk_1001EC340 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_UUID_default_instance_, v4);
}

void sub_100050ABC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  *&v5 = 0;
  unk_1001EC440 = v5;
  TSP::_UUIDCoordArchive_default_instance_[0] = off_1001CA6E0;
  if (atomic_load_explicit(scc_info_UUIDCoordArchive_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UUIDCoordArchive_TSPMessages_2eproto);
  }

  qword_1001EC450 = 0;
  unk_1001EC458 = 0;

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, TSP::_UUIDCoordArchive_default_instance_, v4);
}

void sub_100050B6C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::UUIDMapArchive::UUIDMapArchive(&TSP::_UUIDMapArchive_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_UUIDMapArchive_default_instance_, v4);
}

void sub_100050BDC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::UUIDMultiMapArchive::UUIDMultiMapArchive(&TSP::_UUIDMultiMapArchive_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_UUIDMultiMapArchive_default_instance_, v4);
}

void sub_100050C4C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::UUIDPath::UUIDPath(&TSP::_UUIDPath_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_UUIDPath_default_instance_, v4);
}

void sub_100050CBC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::UUIDRectArchive::UUIDRectArchive(&TSP::_UUIDRectArchive_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_UUIDRectArchive_default_instance_, v4);
}

void sub_100050D2C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 0x2DFD70, "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/messages/src/TSPMessages.pb.cc", a4);
  TSP::UUIDSetArchive::UUIDSetArchive(&TSP::_UUIDSetArchive_default_instance_, 0);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &TSP::_UUIDSetArchive_default_instance_, v4);
}

void TSP::Reference::~Reference(TSP::Reference *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::Reference::Clear(TSP::Reference *this, uint64_t a2, uint64_t a3)
{
  if ((*(this + 16) & 7) != 0)
  {
    *(this + 29) = 0;
    *(this + 3) = 0;
  }

  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::Reference::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v32 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v32, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v32 + 1);
      v9 = *v32;
      if ((*v32 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v32, (v10 - 128));
      v32 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_47;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        if (v9 != 24)
        {
          goto LABEL_13;
        }

        v6 |= 4u;
        v20 = (v8 + 1);
        v19 = *v8;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = (v8 + 2);
LABEL_30:
          v32 = v20;
          *(a1 + 36) = v19 != 0;
          goto LABEL_35;
        }

        v30 = google::protobuf::internal::VarintParseSlow64(v8, v19);
        v32 = v30;
        *(a1 + 36) = v31 != 0;
        if (!v30)
        {
          goto LABEL_47;
        }
      }

      else if (v11 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_13;
        }

        v6 |= 2u;
        v17 = (v8 + 1);
        LODWORD(v16) = *v8;
        if ((v16 & 0x80) == 0)
        {
          goto LABEL_25;
        }

        v18 = *v17;
        v16 = v16 + (v18 << 7) - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v8 + 2);
LABEL_25:
          v32 = v17;
          *(a1 + 32) = v16;
          goto LABEL_35;
        }

        v26 = google::protobuf::internal::VarintParseSlow64(v8, v16);
        v32 = v26;
        *(a1 + 32) = v27;
        if (!v26)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v11 != 1 || v9 != 8)
        {
LABEL_13:
          if (v9)
          {
            v13 = (v9 & 7) == 4;
          }

          else
          {
            v13 = 1;
          }

          if (v13)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v14 = *(a1 + 8);
          if (v14)
          {
            v15 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v15 = sub_100031428((a1 + 8), v5, v8);
            v8 = v32;
          }

          v32 = google::protobuf::internal::UnknownFieldParse(v9, v15, v8);
          if (!v32)
          {
LABEL_47:
            v32 = 0;
            goto LABEL_2;
          }

          goto LABEL_35;
        }

        v6 |= 1u;
        v23 = (v8 + 1);
        v22 = *v8;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_34;
        }

        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if ((v24 & 0x80000000) == 0)
        {
          v23 = (v8 + 2);
LABEL_34:
          v32 = v23;
          *(a1 + 24) = v22;
          goto LABEL_35;
        }

        v28 = google::protobuf::internal::VarintParseSlow64(v8, v22);
        v32 = v28;
        *(a1 + 24) = v29;
        if (!v28)
        {
          goto LABEL_47;
        }
      }

LABEL_35:
      if (sub_1000313B0(a3, &v32, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v32 + 2);
LABEL_6:
    v32 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v32;
}

const google::protobuf::UnknownFieldSet *TSP::Reference::_InternalSerialize(TSP::Reference *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 3);
    *a2 = 8;
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v11 = v10 >> 7;
      if (v10 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v11 | 0x80;
          v12 = v11 >> 7;
          ++a2;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
        *(a2 - 1) = v12;
        if ((v6 & 2) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        a2[2] = v11;
        a2 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      a2[1] = v10;
      a2 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_20:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 8);
  *a2 = 16;
  if (v14 > 0x7F)
  {
    a2[1] = v14 | 0x80;
    v15 = v14 >> 7;
    if (v14 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++a2;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(a2 - 1) = v16;
      if ((v6 & 4) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      a2[2] = v15;
      a2 += 3;
      if ((v6 & 4) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    a2[1] = v14;
    a2 += 2;
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 36);
  *a2 = 24;
  a2[1] = v7;
  a2 += 2;
LABEL_7:
  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::Reference::ByteSizeLong(TSP::Reference *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = (((9 * (__clz(*(this + 3) | 1) ^ 0x3F) + 73) >> 6) + 1);
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 6) != 0)
  {
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3 < 0)
      {
        v4 = 11;
      }

      else
      {
        v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 = (v2 + v4);
    }

    v2 = (v2 + ((v1 >> 1) & 2));
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 5);
  }

  *(this + 5) = v2;
  return v2;
}

void TSP::Reference::MergeFrom(TSP::Reference *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::Reference::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::Reference::MergeFrom(void *this, const TSP::Reference *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 7) != 0)
  {
    if (v6)
    {
      v4[3] = *(a2 + 3);
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
LABEL_8:
          *(v4 + 4) |= v6;
          return this;
        }

LABEL_7:
        *(v4 + 36) = *(a2 + 36);
        goto LABEL_8;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v4 + 8) = *(a2 + 8);
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

void TSP::Reference::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::Reference::Clear(this, a2, a3);

    TSP::Reference::MergeFrom(this, a2);
  }
}

uint64_t TSP::Reference::GetMetadata(TSP::Reference *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = *off_1001E9950;
  v2 = off_1001E9950[1];
  return result;
}

void TSP::DataReference::~DataReference(TSP::DataReference *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::DataReference::Clear(TSP::DataReference *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  *(result + 2) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::DataReference::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v20, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v20 + 1);
      v8 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v9 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_28;
      }

      v7 = TagFallback;
      v8 = v5;
LABEL_6:
      if (v8 == 8)
      {
        v14 = (v7 + 1);
        v13 = *v7;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        v15 = *v14;
        v13 = (v15 << 7) + v13 - 128;
        if ((v15 & 0x80000000) == 0)
        {
          v14 = (v7 + 2);
LABEL_18:
          v20 = v14;
          *(a1 + 24) = v13;
          v6 = 1;
          goto LABEL_19;
        }

        v17 = google::protobuf::internal::VarintParseSlow64(v7, v13);
        v20 = v17;
        *(a1 + 24) = v18;
        v6 = 1;
        if (!v17)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v8)
        {
          v10 = (v8 & 7) == 4;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_27;
        }

        v11 = *(a1 + 8);
        if (v11)
        {
          v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v12 = sub_100031428((a1 + 8), v5, v7);
          v7 = v20;
        }

        v20 = google::protobuf::internal::UnknownFieldParse(v8, v12, v7);
        if (!v20)
        {
LABEL_28:
          v20 = 0;
          goto LABEL_27;
        }
      }

LABEL_19:
      if (sub_1000313B0(a3, &v20, *(a3 + 92)))
      {
        goto LABEL_27;
      }
    }

    v7 = (v20 + 2);
LABEL_5:
    v20 = v7;
    goto LABEL_6;
  }

LABEL_27:
  *(a1 + 16) |= v6;
  return v20;
}

const google::protobuf::UnknownFieldSet *TSP::DataReference::_InternalSerialize(TSP::DataReference *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 8;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      if (v6 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v7 | 0x80;
          v8 = v7 >> 7;
          ++a2;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
        *(a2 - 1) = v8;
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::DataReference::ByteSizeLong(TSP::DataReference *this)
{
  if (*(this + 16))
  {
    v1 = (((9 * (__clz(*(this + 3) | 1) ^ 0x3F) + 73) >> 6) + 1);
  }

  else
  {
    v1 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v1, this + 5);
  }

  *(this + 5) = v1;
  return v1;
}

void TSP::DataReference::MergeFrom(TSP::DataReference *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::DataReference::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::DataReference::MergeFrom(void *this, const TSP::DataReference *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  if (*(a2 + 16))
  {
    v6 = *(a2 + 3);
    *(v4 + 4) |= 1u;
    v4[3] = v6;
  }

  return this;
}

void TSP::DataReference::CopyFrom(char **this, char **lpsrc, uint64_t a3)
{
  if (lpsrc != this)
  {
    v7 = *(this + 8);
    v6 = (this + 1);
    *(v6 + 2) = 0;
    *(v6 + 2) = 0;
    if (v7)
    {
      sub_1000315EC(v6, lpsrc, a3);
    }

    TSP::DataReference::MergeFrom(this, lpsrc);
  }
}

uint64_t TSP::DataReference::GetMetadata(TSP::DataReference *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[2];
  v2 = off_1001E9950[3];
  return result;
}

void TSP::SparseReferenceArray_Entry::~SparseReferenceArray_Entry(TSP::SparseReferenceArray_Entry *this)
{
  if (this != TSP::_SparseReferenceArray_Entry_default_instance_)
  {
    v1 = *(this + 3);
    if (v1)
    {
      sub_10002F4C4((v1 + 8));
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::SparseReferenceArray_Entry::~SparseReferenceArray_Entry(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::SparseReferenceArray_Entry::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  if (*(this + 16))
  {
    this = TSP::Reference::Clear(*(this + 3), a2, a3);
  }

  v5 = *(v3 + 8);
  v4 = v3 + 8;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1000315EC(v4, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::SparseReferenceArray_Entry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v24, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v24 + 1);
      v9 = *v24;
      if ((*v24 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v10 - 128));
      v24 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_39;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 == 18)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v17);
            *(a1 + 24) = v16;
            v8 = v24;
          }

          v15 = sub_100155104(a3, v16, v8);
        }

        else
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(a1 + 8);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_100031428((a1 + 8), v5, v8);
            v8 = v24;
          }

          v15 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8);
        }

        v24 = v15;
        if (!v15)
        {
          goto LABEL_39;
        }

        goto LABEL_31;
      }

      if (v9 >> 3 != 1 || v9 != 8)
      {
        goto LABEL_12;
      }

      v6 |= 2u;
      v18 = (v8 + 1);
      LODWORD(v19) = *v8;
      if ((*v8 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v20 = *v18;
      v19 = (v19 + (v20 << 7) - 128);
      if ((v20 & 0x80000000) == 0)
      {
        v18 = (v8 + 2);
LABEL_30:
        v24 = v18;
        *(a1 + 32) = v19;
        goto LABEL_31;
      }

      v22 = google::protobuf::internal::VarintParseSlow32(v8, v19);
      v24 = v22;
      *(a1 + 32) = v23;
      if (!v22)
      {
LABEL_39:
        v24 = 0;
        goto LABEL_2;
      }

LABEL_31:
      if (sub_1000313B0(a3, &v24, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v24 + 2);
LABEL_6:
    v24 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v24;
}

const google::protobuf::UnknownFieldSet *TSP::SparseReferenceArray_Entry::_InternalSerialize(TSP::SparseReferenceArray_Entry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 8);
    *a2 = 8;
    if (v7 <= 0x7F)
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v13 = v8 >> 7;
        ++a2;
        v14 = v8 >> 14;
        v8 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[2] = v8;
    a2 += 3;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 3);
  *a2 = 18;
  v10 = *(v9 + 5);
  if (v10 > 0x7F)
  {
    a2[1] = v10 | 0x80;
    v12 = v10 >> 7;
    if (v10 >> 14)
    {
      v11 = a2 + 3;
      do
      {
        *(v11 - 1) = v12 | 0x80;
        v15 = v12 >> 7;
        ++v11;
        v16 = v12 >> 14;
        v12 >>= 7;
      }

      while (v16);
      *(v11 - 1) = v15;
    }

    else
    {
      a2[2] = v12;
      v11 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v10;
    v11 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v9, v11, a3, a4);
LABEL_24:
  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::SparseReferenceArray_Entry::RequiredFieldsByteSizeFallback(TSP::SparseReferenceArray_Entry *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(this + 3));
    result = &v4[((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1];
    if ((*(this + 4) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

char *TSP::SparseReferenceArray_Entry::ByteSizeLong(TSP::Reference **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TSP::SparseReferenceArray_Entry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(this[3]);
    v3 = &v2[((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 2 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6)];
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v3, this + 5);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

void TSP::SparseReferenceArray_Entry::MergeFrom(TSP::SparseReferenceArray_Entry *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::SparseReferenceArray_Entry::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::SparseReferenceArray_Entry::MergeFrom(void *this, const TSP::SparseReferenceArray_Entry *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      *(v4 + 4) |= 1u;
      v7 = v4[3];
      if (!v7)
      {
        v8 = v4[1];
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v8);
        v4[3] = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = &TSP::_Reference_default_instance_;
      }

      this = TSP::Reference::MergeFrom(v7, v9, a3);
    }

    if ((v6 & 2) != 0)
    {
      *(v4 + 8) = *(a2 + 8);
    }

    *(v4 + 4) |= v6;
  }

  return this;
}

void TSP::SparseReferenceArray_Entry::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::SparseReferenceArray_Entry::Clear(this, a2, a3);

    TSP::SparseReferenceArray_Entry::MergeFrom(this, a2);
  }
}

uint64_t TSP::SparseReferenceArray_Entry::IsInitialized(TSP::SparseReferenceArray_Entry *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return *(*(this + 3) + 16) & 1;
  }
}

uint64_t TSP::SparseReferenceArray_Entry::GetMetadata(TSP::SparseReferenceArray_Entry *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[4];
  v2 = off_1001E9950[5];
  return result;
}

uint64_t TSP::SparseReferenceArray::SparseReferenceArray(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001C9A80;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_SparseReferenceArray_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SparseReferenceArray_TSPMessages_2eproto);
  }

  *(a1 + 48) = 0;
  return a1;
}

void TSP::SparseReferenceArray::~SparseReferenceArray(TSP::SparseReferenceArray *this)
{
  sub_10002F4C4(this + 1);
  sub_10006A088(this + 3);
}

{
  TSP::SparseReferenceArray::~SparseReferenceArray(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::SparseReferenceArray::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    v5 = (*(this + 5) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::SparseReferenceArray_Entry::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 32) = 0;
  }

  v8 = *(v3 + 8);
  v7 = v3 + 8;
  *(v7 + 40) = 0;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1000315EC(v7, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::SparseReferenceArray::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v29, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v29 + 1);
      v9 = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v10 - 128));
      v29 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_46;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 != 18)
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(a1 + 8);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_100031428((a1 + 8), v5, v8);
            v8 = v29;
          }

          v29 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8);
          if (!v29)
          {
LABEL_46:
            v29 = 0;
            goto LABEL_2;
          }

          goto LABEL_38;
        }

        v15 = (v8 - 1);
        while (2)
        {
          v16 = (v15 + 1);
          v29 = (v15 + 1);
          v17 = *(a1 + 40);
          if (!v17)
          {
            v18 = *(a1 + 36);
            goto LABEL_24;
          }

          v22 = *(a1 + 32);
          v18 = *v17;
          if (v22 >= *v17)
          {
            if (v18 == *(a1 + 36))
            {
LABEL_24:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v18 + 1);
              v17 = *(a1 + 40);
              v18 = *v17;
            }

            *v17 = v18 + 1;
            v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::SparseReferenceArray_Entry>(*(a1 + 24));
            v20 = *(a1 + 32);
            v21 = *(a1 + 40) + 8 * v20;
            *(a1 + 32) = v20 + 1;
            *(v21 + 8) = v19;
            v16 = v29;
          }

          else
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v17[2 * v22 + 2];
          }

          v15 = sub_100157AE8(a3, v19, v16);
          v29 = v15;
          if (!v15)
          {
            goto LABEL_46;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_38;
          }

          continue;
        }
      }

      if (v9 >> 3 != 1 || v9 != 8)
      {
        goto LABEL_12;
      }

      v23 = (v8 + 1);
      LODWORD(v24) = *v8;
      if ((*v8 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      v25 = *v23;
      v24 = (v24 + (v25 << 7) - 128);
      if ((v25 & 0x80000000) == 0)
      {
        v23 = (v8 + 2);
LABEL_37:
        v29 = v23;
        *(a1 + 48) = v24;
        v6 = 1;
        goto LABEL_38;
      }

      v27 = google::protobuf::internal::VarintParseSlow32(v8, v24);
      v29 = v27;
      *(a1 + 48) = v28;
      v6 = 1;
      if (!v27)
      {
        goto LABEL_46;
      }

LABEL_38:
      if (sub_1000313B0(a3, &v29, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v29 + 2);
LABEL_6:
    v29 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v29;
}

const google::protobuf::UnknownFieldSet *TSP::SparseReferenceArray::_InternalSerialize(TSP::SparseReferenceArray *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 12);
    *a2 = 8;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      if (v6 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v7 | 0x80;
          v8 = v7 >> 7;
          ++a2;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
        *(a2 - 1) = v8;
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  v10 = *(this + 8);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v12 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSP::SparseReferenceArray_Entry::_InternalSerialize(v12, v14, a3, a4);
    }
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v18 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::SparseReferenceArray::ByteSizeLong(TSP::SparseReferenceArray *this)
{
  if (*(this + 16))
  {
    v2 = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 8);
  v4 = (v2 + v3);
  v5 = *(this + 5);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = TSP::SparseReferenceArray_Entry::ByteSizeLong(v8);
      v4 = (v4 + v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6));
      v7 -= 8;
    }

    while (v7);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v4, this + 5);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

void TSP::SparseReferenceArray::MergeFrom(TSP::SparseReferenceArray *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::SparseReferenceArray::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::SparseReferenceArray::MergeFrom(void *this, const TSP::SparseReferenceArray *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 5);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 3), *(a2 + 8));
    this = sub_10006A10C(v4 + 3, v8, v7 + 8, v6, *v4[5] - *(v4 + 8));
    v9 = *(v4 + 8) + v6;
    *(v4 + 8) = v9;
    v10 = v4[5];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  if (*(a2 + 16))
  {
    v11 = *(a2 + 12);
    *(v4 + 4) |= 1u;
    *(v4 + 12) = v11;
  }

  return this;
}

void TSP::SparseReferenceArray::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::SparseReferenceArray::Clear(this, a2, a3);

    TSP::SparseReferenceArray::MergeFrom(this, a2);
  }
}

BOOL TSP::SparseReferenceArray::IsInitialized(TSP::SparseReferenceArray *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  v3 = *(this + 5);
  do
  {
    result = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(v3 + 8 * v2);
    if ((~*(v4 + 16) & 3) != 0)
    {
      break;
    }

    --v2;
  }

  while ((*(*(v4 + 24) + 16) & 1) != 0);
  return result;
}

uint64_t TSP::SparseReferenceArray::GetMetadata(TSP::SparseReferenceArray *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[6];
  v2 = off_1001E9950[7];
  return result;
}

void TSP::Point::~Point(TSP::Point *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::Point::Clear(TSP::Point *this, uint64_t a2, uint64_t a3)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
  }

  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::Point::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v19, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v19 + 1);
      v9 = *v19;
      if ((*v19 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v10 - 128));
      v19 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_30;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 == 21)
        {
          v16 = *v8;
          v15 = (v8 + 4);
          v6 |= 2u;
          *(a1 + 28) = v16;
LABEL_23:
          v19 = v15;
          goto LABEL_24;
        }
      }

      else if (v9 >> 3 == 1 && v9 == 13)
      {
        v17 = *v8;
        v15 = (v8 + 4);
        v6 |= 1u;
        *(a1 + 24) = v17;
        goto LABEL_23;
      }

      if (v9)
      {
        v12 = (v9 & 7) == 4;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        *(a3 + 80) = v9 - 1;
        goto LABEL_2;
      }

      v13 = *(a1 + 8);
      if (v13)
      {
        v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v14 = sub_100031428((a1 + 8), v5, v8);
        v8 = v19;
      }

      v19 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8);
      if (!v19)
      {
LABEL_30:
        v19 = 0;
        goto LABEL_2;
      }

LABEL_24:
      if (sub_1000313B0(a3, &v19, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v19 + 2);
LABEL_6:
    v19 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v19;
}

const google::protobuf::UnknownFieldSet *TSP::Point::_InternalSerialize(TSP::Point *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 13;
    *(a2 + 1) = v7;
    a2 += 5;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 7);
    *a2 = 21;
    *(a2 + 1) = v8;
    a2 += 5;
  }

  v9 = *(this + 1);
  if ((v9 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v9 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::Point::ByteSizeLong(TSP::Point *this)
{
  v1 = *(this + 4);
  v2 = 5;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 5;
  }

  if ((~v1 & 3) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 10;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v3, this + 5);
  }

  *(this + 5) = v3;
  return v3;
}

void TSP::Point::MergeFrom(TSP::Point *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::Point::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::Point::MergeFrom(void *this, const TSP::Point *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      v4[6] = *(a2 + 6);
    }

    if ((v6 & 2) != 0)
    {
      v4[7] = *(a2 + 7);
    }

    v4[4] |= v6;
  }

  return this;
}

void TSP::Point::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::Point::Clear(this, a2, a3);

    TSP::Point::MergeFrom(this, a2);
  }
}

uint64_t TSP::Point::GetMetadata(TSP::Point *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[8];
  v2 = off_1001E9950[9];
  return result;
}

void TSP::Pose3D::~Pose3D(TSP::Pose3D *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::Pose3D::Clear(TSP::Pose3D *this, uint64_t a2, uint64_t a3)
{
  if ((*(this + 16) & 7) != 0)
  {
    *(this + 8) = 0;
    *(this + 3) = 0;
  }

  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::Pose3D::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v21, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v21 + 1);
      v9 = *v21;
      if ((*v21 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v10 - 128));
      v21 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_33;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        if (v9 == 29)
        {
          v18 = *v8;
          v16 = (v8 + 4);
          v6 |= 4u;
          *(a1 + 32) = v18;
          goto LABEL_26;
        }
      }

      else if (v11 == 2)
      {
        if (v9 == 21)
        {
          v17 = *v8;
          v16 = (v8 + 4);
          v6 |= 2u;
          *(a1 + 28) = v17;
LABEL_26:
          v21 = v16;
          goto LABEL_27;
        }
      }

      else if (v11 == 1 && v9 == 13)
      {
        v19 = *v8;
        v16 = (v8 + 4);
        v6 |= 1u;
        *(a1 + 24) = v19;
        goto LABEL_26;
      }

      if (v9)
      {
        v13 = (v9 & 7) == 4;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        *(a3 + 80) = v9 - 1;
        goto LABEL_2;
      }

      v14 = *(a1 + 8);
      if (v14)
      {
        v15 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v15 = sub_100031428((a1 + 8), v5, v8);
        v8 = v21;
      }

      v21 = google::protobuf::internal::UnknownFieldParse(v9, v15, v8);
      if (!v21)
      {
LABEL_33:
        v21 = 0;
        goto LABEL_2;
      }

LABEL_27:
      if (sub_1000313B0(a3, &v21, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v21 + 2);
LABEL_6:
    v21 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v21;
}

const google::protobuf::UnknownFieldSet *TSP::Pose3D::_InternalSerialize(TSP::Pose3D *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 13;
    *(a2 + 1) = v7;
    a2 += 5;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 7);
  *a2 = 21;
  *(a2 + 1) = v8;
  a2 += 5;
  if ((v6 & 4) != 0)
  {
LABEL_11:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 8);
    *a2 = 29;
    *(a2 + 1) = v9;
    a2 += 5;
  }

LABEL_14:
  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::Pose3D::ByteSizeLong(TSP::Pose3D *this)
{
  v1 = *(this + 4);
  v2 = 5;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 5;
  }

  if ((v1 & 4) != 0)
  {
    v2 += 5;
  }

  if ((~v1 & 7) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 15;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v3, this + 5);
  }

  *(this + 5) = v3;
  return v3;
}

void TSP::Pose3D::MergeFrom(TSP::Pose3D *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::Pose3D::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::Pose3D::MergeFrom(void *this, const TSP::Pose3D *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 7) != 0)
  {
    if (v6)
    {
      v4[6] = *(a2 + 6);
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
LABEL_8:
          v4[4] |= v6;
          return this;
        }

LABEL_7:
        v4[8] = *(a2 + 8);
        goto LABEL_8;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    v4[7] = *(a2 + 7);
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

void TSP::Pose3D::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::Pose3D::Clear(this, a2, a3);

    TSP::Pose3D::MergeFrom(this, a2);
  }
}

uint64_t TSP::Pose3D::GetMetadata(TSP::Pose3D *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[10];
  v2 = off_1001E9950[11];
  return result;
}

void TSP::Rect::~Rect(TSP::Rect *this)
{
  if (this != TSP::_Rect_default_instance_)
  {
    v1 = *(this + 3);
    if (v1)
    {
      sub_10002F4C4((v1 + 8));
      operator delete();
    }

    v2 = *(this + 4);
    if (v2)
    {
      sub_10002F4C4((v2 + 8));
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::Rect::~Rect(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::Rect::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 4);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      this = TSP::Point::Clear(*(this + 3), a2, a3);
    }

    if ((v4 & 2) != 0)
    {
      this = TSP::Size::Clear(*(v3 + 32), a2, a3);
    }
  }

  v6 = *(v3 + 8);
  v5 = v3 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1000315EC(v5, a2, a3);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TSP::Size::Clear(TSP::Size *this, uint64_t a2, uint64_t a3)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
  }

  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::Rect::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  for (i = *(a3 + 92); (sub_1000313B0(a3, &v21, i) & 1) == 0; i = *(a3 + 92))
  {
    v7 = (v21 + 1);
    v8 = *v21;
    if ((*v21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v21 + 2);
LABEL_6:
      v21 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v9 - 128));
    v21 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
LABEL_7:
    if (v8 >> 3 == 2)
    {
      if (v8 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 32);
        if (!v15)
        {
          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::Arena::CreateMaybeMessage<TSP::Size>(v16);
          *(a1 + 32) = v15;
          v7 = v21;
        }

        v14 = sub_100157C88(a3, v15, v7);
        goto LABEL_30;
      }
    }

    else if (v8 >> 3 == 1 && v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v17 = *(a1 + 24);
      if (!v17)
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = google::protobuf::Arena::CreateMaybeMessage<TSP::Point>(v18);
        *(a1 + 24) = v17;
        v7 = v21;
      }

      v14 = sub_100157BB8(a3, v17, v7);
      goto LABEL_30;
    }

    if (v8)
    {
      v11 = (v8 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      *(a3 + 80) = v8 - 1;
      return v21;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_100031428((a1 + 8), v6, v7);
      v7 = v21;
    }

    v14 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7);
LABEL_30:
    v21 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v21;
}

const google::protobuf::UnknownFieldSet *TSP::Rect::_InternalSerialize(TSP::Rect *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSP::Point::_InternalSerialize(v7, v9, a3, a4);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 4);
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

    a2 = TSP::Size::_InternalSerialize(v13, v15, a3, a4);
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSP::Rect::RequiredFieldsByteSizeFallback(TSP::Rect *this)
{
  v2 = *(this + 4);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = TSP::Point::ByteSizeLong(*(this + 3));
  v3 = &v4[((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1];
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Size::ByteSizeLong(*(this + 4));
    v3 += &v5[((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1];
  }

  return v3;
}

char *TSP::Rect::ByteSizeLong(TSP::Point **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TSP::Rect::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::Point::ByteSizeLong(this[3]);
    v3 = TSP::Size::ByteSizeLong(this[4]);
    v4 = &v3[v2 + 2 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6)];
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v4, this + 5);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

void TSP::Rect::MergeFrom(TSP::Rect *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::Rect::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::Rect::MergeFrom(void *this, const TSP::Rect *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      *(v4 + 4) |= 1u;
      v7 = v4[3];
      if (!v7)
      {
        v8 = v4[1];
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = google::protobuf::Arena::CreateMaybeMessage<TSP::Point>(v8);
        v4[3] = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = &TSP::_Point_default_instance_;
      }

      this = TSP::Point::MergeFrom(v7, v9, a3);
    }

    if ((v6 & 2) != 0)
    {
      *(v4 + 4) |= 2u;
      v10 = v4[4];
      if (!v10)
      {
        v11 = v4[1];
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSP::Size>(v11);
        v4[4] = v10;
      }

      if (*(a2 + 4))
      {
        v12 = *(a2 + 4);
      }

      else
      {
        v12 = &TSP::_Size_default_instance_;
      }

      return TSP::Size::MergeFrom(v10, v12, a3);
    }
  }

  return this;
}

void *TSP::Size::MergeFrom(void *this, const TSP::Size *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      v4[6] = *(a2 + 6);
    }

    if ((v6 & 2) != 0)
    {
      v4[7] = *(a2 + 7);
    }

    v4[4] |= v6;
  }

  return this;
}

void TSP::Rect::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::Rect::Clear(this, a2, a3);

    TSP::Rect::MergeFrom(this, a2);
  }
}

uint64_t TSP::Rect::GetMetadata(TSP::Rect *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[12];
  v2 = off_1001E9950[13];
  return result;
}

void TSP::Size::~Size(TSP::Size *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::internal *TSP::Size::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v19, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v19 + 1);
      v9 = *v19;
      if ((*v19 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v10 - 128));
      v19 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_30;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 == 21)
        {
          v16 = *v8;
          v15 = (v8 + 4);
          v6 |= 2u;
          *(a1 + 28) = v16;
LABEL_23:
          v19 = v15;
          goto LABEL_24;
        }
      }

      else if (v9 >> 3 == 1 && v9 == 13)
      {
        v17 = *v8;
        v15 = (v8 + 4);
        v6 |= 1u;
        *(a1 + 24) = v17;
        goto LABEL_23;
      }

      if (v9)
      {
        v12 = (v9 & 7) == 4;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        *(a3 + 80) = v9 - 1;
        goto LABEL_2;
      }

      v13 = *(a1 + 8);
      if (v13)
      {
        v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v14 = sub_100031428((a1 + 8), v5, v8);
        v8 = v19;
      }

      v19 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8);
      if (!v19)
      {
LABEL_30:
        v19 = 0;
        goto LABEL_2;
      }

LABEL_24:
      if (sub_1000313B0(a3, &v19, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v19 + 2);
LABEL_6:
    v19 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v19;
}

const google::protobuf::UnknownFieldSet *TSP::Size::_InternalSerialize(TSP::Size *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 13;
    *(a2 + 1) = v7;
    a2 += 5;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 7);
    *a2 = 21;
    *(a2 + 1) = v8;
    a2 += 5;
  }

  v9 = *(this + 1);
  if ((v9 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v9 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::Size::ByteSizeLong(TSP::Size *this)
{
  v1 = *(this + 4);
  v2 = 5;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 5;
  }

  if ((~v1 & 3) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 10;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v3, this + 5);
  }

  *(this + 5) = v3;
  return v3;
}

void TSP::Size::MergeFrom(TSP::Size *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::Size::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void TSP::Size::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::Size::Clear(this, a2, a3);

    TSP::Size::MergeFrom(this, a2);
  }
}

uint64_t TSP::Size::GetMetadata(TSP::Size *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[14];
  v2 = off_1001E9950[15];
  return result;
}

void TSP::Range::~Range(TSP::Range *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::Range::Clear(TSP::Range *this, uint64_t a2, uint64_t a3)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
  }

  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::Range::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v26, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v26 + 1);
      v9 = *v26;
      if ((*v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v10 - 128));
      v26 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_39;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_12;
        }

        v6 |= 2u;
        v15 = (v8 + 1);
        LODWORD(v16) = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        v17 = *v15;
        v16 = (v16 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v15 = (v8 + 2);
LABEL_24:
          v26 = v15;
          *(a1 + 28) = v16;
          goto LABEL_29;
        }

        v22 = google::protobuf::internal::VarintParseSlow32(v8, v16);
        v26 = v22;
        *(a1 + 28) = v23;
        if (!v22)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v9 >> 3 != 1 || v9 != 8)
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(a1 + 8);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_100031428((a1 + 8), v5, v8);
            v8 = v26;
          }

          v26 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8);
          if (!v26)
          {
LABEL_39:
            v26 = 0;
            goto LABEL_2;
          }

          goto LABEL_29;
        }

        v6 |= 1u;
        v18 = (v8 + 1);
        LODWORD(v19) = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v20 = *v18;
        v19 = (v19 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v18 = (v8 + 2);
LABEL_28:
          v26 = v18;
          *(a1 + 24) = v19;
          goto LABEL_29;
        }

        v24 = google::protobuf::internal::VarintParseSlow32(v8, v19);
        v26 = v24;
        *(a1 + 24) = v25;
        if (!v24)
        {
          goto LABEL_39;
        }
      }

LABEL_29:
      if (sub_1000313B0(a3, &v26, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v26 + 2);
LABEL_6:
    v26 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v26;
}

const google::protobuf::UnknownFieldSet *TSP::Range::_InternalSerialize(TSP::Range *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 8;
    if (v7 <= 0x7F)
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v11 = v8 >> 7;
        ++a2;
        v12 = v8 >> 14;
        v8 >>= 7;
      }

      while (v12);
      *(a2 - 1) = v11;
      if ((v6 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v8;
    a2 += 3;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 7);
  *a2 = 16;
  if (v9 > 0x7F)
  {
    a2[1] = v9 | 0x80;
    v10 = v9 >> 7;
    if (v9 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v10 | 0x80;
        v13 = v10 >> 7;
        ++a2;
        v14 = v10 >> 14;
        v10 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
    }

    else
    {
      a2[2] = v10;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v9;
    a2 += 2;
  }

LABEL_23:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSP::Range::RequiredFieldsByteSizeFallback(TSP::Range *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

char *TSP::Range::ByteSizeLong(TSP::Range *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v2 = TSP::Range::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = (((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 2);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 5);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

void TSP::Range::MergeFrom(TSP::Range *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::Range::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::Range::MergeFrom(void *this, const TSP::Range *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      v4[6] = *(a2 + 6);
    }

    if ((v6 & 2) != 0)
    {
      v4[7] = *(a2 + 7);
    }

    v4[4] |= v6;
  }

  return this;
}

void TSP::Range::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::Range::Clear(this, a2, a3);

    TSP::Range::MergeFrom(this, a2);
  }
}

uint64_t TSP::Range::GetMetadata(TSP::Range *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[16];
  v2 = off_1001E9950[17];
  return result;
}

void TSP::Date::~Date(TSP::Date *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::Date::Clear(TSP::Date *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  *(result + 2) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::Date::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v15, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v15 + 1);
      v8 = *v15;
      if ((*v15 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v15, (v9 - 128));
      v15 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_23;
      }

      v7 = TagFallback;
      v8 = v5;
LABEL_6:
      if (v8 == 9)
      {
        *(a1 + 24) = *v7;
        v15 = (v7 + 8);
        v6 = 1;
      }

      else
      {
        if (v8)
        {
          v10 = (v8 & 7) == 4;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_22;
        }

        v11 = *(a1 + 8);
        if (v11)
        {
          v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v12 = sub_100031428((a1 + 8), v5, v7);
          v7 = v15;
        }

        v15 = google::protobuf::internal::UnknownFieldParse(v8, v12, v7);
        if (!v15)
        {
LABEL_23:
          v15 = 0;
          goto LABEL_22;
        }
      }

      if (sub_1000313B0(a3, &v15, *(a3 + 92)))
      {
        goto LABEL_22;
      }
    }

    v7 = (v15 + 2);
LABEL_5:
    v15 = v7;
    goto LABEL_6;
  }

LABEL_22:
  *(a1 + 16) |= v6;
  return v15;
}

const google::protobuf::UnknownFieldSet *TSP::Date::_InternalSerialize(TSP::Date *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 += 9;
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::Date::ByteSizeLong(TSP::Date *this)
{
  if (*(this + 16))
  {
    v1 = 9;
  }

  else
  {
    v1 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v1, this + 5);
  }

  *(this + 5) = v1;
  return v1;
}

void TSP::Date::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::Date::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

double TSP::Date::MergeFrom(google::protobuf::Arena **this, const TSP::Date *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  if (*(a2 + 16))
  {
    result = *(a2 + 3);
    *(this + 4) |= 1u;
    *(this + 3) = result;
  }

  return result;
}

void TSP::Date::CopyFrom(char **this, char **lpsrc, uint64_t a3)
{
  if (lpsrc != this)
  {
    v7 = *(this + 8);
    v6 = (this + 1);
    *(v6 + 2) = 0;
    *(v6 + 2) = 0;
    if (v7)
    {
      sub_1000315EC(v6, lpsrc, a3);
    }

    TSP::Date::MergeFrom(this, lpsrc);
  }
}

uint64_t TSP::Date::GetMetadata(TSP::Date *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[18];
  v2 = off_1001E9950[19];
  return result;
}

uint64_t TSP::IndexSet::IndexSet(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001C9F50;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_IndexSet_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_IndexSet_TSPMessages_2eproto);
  }

  return a1;
}

void TSP::IndexSet::~IndexSet(TSP::IndexSet *this)
{
  sub_10002F4C4(this + 1);
  sub_10006A1CC(this + 2);
}

{
  TSP::IndexSet::~IndexSet(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::IndexSet::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 6);
  if (v4 >= 1)
  {
    v5 = (*(this + 4) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::Range::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 24) = 0;
  }

  v8 = *(v3 + 8);
  v7 = (v3 + 8);
  if (v8)
  {

    return sub_1000315EC(v7, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::IndexSet::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  if ((sub_1000313B0(a3, &v22, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v22 + 1);
      v7 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v8 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v5;
LABEL_6:
      if (v7 == 10)
      {
        v12 = (v6 - 1);
        while (1)
        {
          v13 = (v12 + 1);
          v22 = (v12 + 1);
          v14 = *(a1 + 32);
          if (!v14)
          {
            break;
          }

          v19 = *(a1 + 24);
          v15 = *v14;
          if (v19 < *v14)
          {
            *(a1 + 24) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
            goto LABEL_23;
          }

          if (v15 == *(a1 + 28))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v14 = v15 + 1;
          v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::Range>(*(a1 + 16));
          v17 = *(a1 + 24);
          v18 = *(a1 + 32) + 8 * v17;
          *(a1 + 24) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v22;
LABEL_23:
          v12 = sub_100157D58(a3, v16, v13);
          v22 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_14;
          }
        }

        v15 = *(a1 + 28);
LABEL_19:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v15 + 1);
        v14 = *(a1 + 32);
        v15 = *v14;
        goto LABEL_20;
      }

      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v22;
      }

      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v11 = sub_100031428((a1 + 8), v5, v6);
        v6 = v22;
      }

      v22 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6);
      if (!v22)
      {
        return 0;
      }

LABEL_14:
      if (sub_1000313B0(a3, &v22, *(a3 + 92)))
      {
        return v22;
      }
    }

    v6 = (v22 + 2);
LABEL_5:
    v22 = v6;
    goto LABEL_6;
  }

  return v22;
}

const google::protobuf::UnknownFieldSet *TSP::IndexSet::_InternalSerialize(TSP::IndexSet *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = TSP::Range::_InternalSerialize(v8, v10, a3, a4);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::IndexSet::ByteSizeLong(TSP::IndexSet *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::Range::ByteSizeLong(v6);
      v2 = (v2 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6));
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 10);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

void TSP::IndexSet::MergeFrom(TSP::IndexSet *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::IndexSet::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::IndexSet::MergeFrom(void *this, const TSP::IndexSet *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 2), v6);
    this = sub_10006A264(v4 + 2, v8, v7 + 8, v6, *v4[4] - *(v4 + 6));
    v9 = *(v4 + 6) + v6;
    *(v4 + 6) = v9;
    v10 = v4[4];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  return this;
}

void TSP::IndexSet::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::IndexSet::Clear(this, a2, a3);

    TSP::IndexSet::MergeFrom(this, a2);
  }
}

BOOL TSP::IndexSet::IsInitialized(TSP::IndexSet *this)
{
  v1 = *(this + 6);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(this + 4) + 8 * v1--);
  }

  while ((~*(v3 + 16) & 3) == 0);
  return v2 < 1;
}

uint64_t TSP::IndexSet::GetMetadata(TSP::IndexSet *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[20];
  v2 = off_1001E9950[21];
  return result;
}

void TSP::Color::~Color(TSP::Color *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::Color::Clear(TSP::Color *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 4);
  if (v3)
  {
    *(this + 40) = 0u;
    *(this + 24) = 0u;
  }

  if ((v3 & 0x700) != 0)
  {
    *(this + 7) = 0x100000001;
    *(this + 16) = 1065353216;
  }

  v5 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v5)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::Color::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v33, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v33 + 1);
      v9 = *v33;
      if ((*v33 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v33, (v10 - 128));
      v33 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_77;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 6)
      {
        if (v9 >> 3 <= 3)
        {
          if (v11 == 1)
          {
            if (v9 == 8)
            {
              v22 = (v8 + 1);
              v21 = *v8;
              if ((v21 & 0x8000000000000000) == 0)
              {
                goto LABEL_43;
              }

              v23 = *v22;
              v21 = (v23 << 7) + v21 - 128;
              if (v23 < 0)
              {
                v33 = google::protobuf::internal::VarintParseSlow64(v8, v21);
                if (!v33)
                {
                  goto LABEL_77;
                }
              }

              else
              {
                v22 = (v8 + 2);
LABEL_43:
                v33 = v22;
              }

              if ((v21 - 1) > 2)
              {
                sub_1001584E4((a1 + 8));
              }

              else
              {
                *(a1 + 16) |= 0x200u;
                *(a1 + 60) = v21;
              }

              goto LABEL_59;
            }
          }

          else if (v11 == 3 && v9 == 29)
          {
            v19 = *v8;
            v12 = (v8 + 4);
            v6 |= 1u;
            *(a1 + 24) = v19;
            goto LABEL_58;
          }
        }

        else if (v11 == 4)
        {
          if (v9 == 37)
          {
            v27 = *v8;
            v12 = (v8 + 4);
            v6 |= 2u;
            *(a1 + 28) = v27;
            goto LABEL_58;
          }
        }

        else if (v11 == 5)
        {
          if (v9 == 45)
          {
            v24 = *v8;
            v12 = (v8 + 4);
            v6 |= 4u;
            *(a1 + 32) = v24;
            goto LABEL_58;
          }
        }

        else if (v11 == 6 && v9 == 53)
        {
          v14 = *v8;
          v12 = (v8 + 4);
          v6 |= 0x400u;
          *(a1 + 64) = v14;
          goto LABEL_58;
        }
      }

      else if (v9 >> 3 > 9)
      {
        if (v11 == 10)
        {
          if (v9 == 85)
          {
            v29 = *v8;
            v12 = (v8 + 4);
            v6 |= 0x40u;
            *(a1 + 48) = v29;
            goto LABEL_58;
          }
        }

        else if (v11 == 11)
        {
          if (v9 == 93)
          {
            v26 = *v8;
            v12 = (v8 + 4);
            v6 |= 0x80u;
            *(a1 + 52) = v26;
            goto LABEL_58;
          }
        }

        else if (v11 == 12 && v9 == 96)
        {
          v16 = (v8 + 1);
          v15 = *v8;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if (v17 < 0)
          {
            v33 = google::protobuf::internal::VarintParseSlow64(v8, v15);
            if (!v33)
            {
              goto LABEL_77;
            }
          }

          else
          {
            v16 = (v8 + 2);
LABEL_27:
            v33 = v16;
          }

          if ((v15 - 1) > 1)
          {
            sub_1001584A8((a1 + 8));
          }

          else
          {
            *(a1 + 16) |= 0x100u;
            *(a1 + 56) = v15;
          }

          goto LABEL_59;
        }
      }

      else if (v11 == 7)
      {
        if (v9 == 61)
        {
          v28 = *v8;
          v12 = (v8 + 4);
          v6 |= 8u;
          *(a1 + 36) = v28;
          goto LABEL_58;
        }
      }

      else if (v11 == 8)
      {
        if (v9 == 69)
        {
          v25 = *v8;
          v12 = (v8 + 4);
          v6 |= 0x10u;
          *(a1 + 40) = v25;
          goto LABEL_58;
        }
      }

      else if (v11 == 9 && v9 == 77)
      {
        v13 = *v8;
        v12 = (v8 + 4);
        v6 |= 0x20u;
        *(a1 + 44) = v13;
LABEL_58:
        v33 = v12;
        goto LABEL_59;
      }

      if (v9)
      {
        v30 = (v9 & 7) == 4;
      }

      else
      {
        v30 = 1;
      }

      if (v30)
      {
        *(a3 + 80) = v9 - 1;
        goto LABEL_2;
      }

      v31 = *(a1 + 8);
      if (v31)
      {
        v32 = ((v31 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v32 = sub_100031428((a1 + 8), v5, v8);
        v8 = v33;
      }

      v33 = google::protobuf::internal::UnknownFieldParse(v9, v32, v8);
      if (!v33)
      {
LABEL_77:
        v33 = 0;
        goto LABEL_2;
      }

LABEL_59:
      if (sub_1000313B0(a3, &v33, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v33 + 2);
LABEL_6:
    v33 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v33;
}

const google::protobuf::UnknownFieldSet *TSP::Color::_InternalSerialize(TSP::Color *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 15);
    *a2 = 8;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      if (v7 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++a2;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(a2 - 1) = v9;
        if (v6)
        {
          goto LABEL_24;
        }
      }

      else
      {
        a2[2] = v8;
        a2 += 3;
        if (v6)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
      if (v6)
      {
        goto LABEL_24;
      }
    }

LABEL_3:
    if ((v6 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_27;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_24:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v11 = *(this + 6);
  *a2 = 29;
  *(a2 + 1) = v11;
  a2 += 5;
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 7);
  *a2 = 37;
  *(a2 + 1) = v12;
  a2 += 5;
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_30:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 8);
  *a2 = 45;
  *(a2 + 1) = v13;
  a2 += 5;
  if ((v6 & 0x400) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_33:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 16);
  *a2 = 53;
  *(a2 + 1) = v14;
  a2 += 5;
  if ((v6 & 8) == 0)
  {
LABEL_7:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_36:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v15 = *(this + 9);
  *a2 = 61;
  *(a2 + 1) = v15;
  a2 += 5;
  if ((v6 & 0x10) == 0)
  {
LABEL_8:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_39:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 10);
  *a2 = 69;
  *(a2 + 1) = v16;
  a2 += 5;
  if ((v6 & 0x20) == 0)
  {
LABEL_9:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_42:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(this + 11);
  *a2 = 77;
  *(a2 + 1) = v17;
  a2 += 5;
  if ((v6 & 0x40) == 0)
  {
LABEL_10:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_48;
  }

LABEL_45:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 12);
  *a2 = 85;
  *(a2 + 1) = v18;
  a2 += 5;
  if ((v6 & 0x80) == 0)
  {
LABEL_11:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_51;
  }

LABEL_48:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 13);
  *a2 = 93;
  *(a2 + 1) = v19;
  a2 += 5;
  if ((v6 & 0x100) != 0)
  {
LABEL_51:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 14);
    *a2 = 96;
    if (v20 > 0x7F)
    {
      a2[1] = v20 | 0x80;
      v21 = v20 >> 7;
      if (v20 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v21 | 0x80;
          v22 = v21 >> 7;
          ++a2;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
        *(a2 - 1) = v22;
      }

      else
      {
        a2[2] = v21;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v20;
      a2 += 2;
    }
  }

LABEL_60:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v24 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::Color::ByteSizeLong(TSP::Color *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x200) != 0)
  {
    v3 = *(this + 15);
    if (v3 < 0)
    {
      v2 = 11;
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 4))
  {
    if (v1)
    {
      v2 += 5;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 0x10) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 0x20) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 0x40) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 0x80) != 0)
    {
      v2 += 5;
    }
  }

  if ((v1 & 0x100) != 0)
  {
    v4 = *(this + 14);
    if (v4 < 0)
    {
      v5 = 11;
    }

    else
    {
      v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v5;
  }

  if ((v1 & 0x400) != 0)
  {
    v6 = (v2 + 5);
  }

  else
  {
    v6 = v2;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v6, this + 5);
  }

  *(this + 5) = v6;
  return v6;
}

void TSP::Color::MergeFrom(TSP::Color *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::Color::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::Color::MergeFrom(void *this, const TSP::Color *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if (v6)
  {
    if (v6)
    {
      v4[6] = *(a2 + 6);
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_23;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    v4[7] = *(a2 + 7);
    if ((v6 & 4) == 0)
    {
LABEL_7:
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

LABEL_23:
    v4[8] = *(a2 + 8);
    if ((v6 & 8) == 0)
    {
LABEL_8:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }

LABEL_24:
    v4[9] = *(a2 + 9);
    if ((v6 & 0x10) == 0)
    {
LABEL_9:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

LABEL_25:
    v4[10] = *(a2 + 10);
    if ((v6 & 0x20) == 0)
    {
LABEL_10:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_27;
    }

LABEL_26:
    v4[11] = *(a2 + 11);
    if ((v6 & 0x40) == 0)
    {
LABEL_11:
      if ((v6 & 0x80) == 0)
      {
LABEL_13:
        v4[4] |= v6;
        goto LABEL_14;
      }

LABEL_12:
      v4[13] = *(a2 + 13);
      goto LABEL_13;
    }

LABEL_27:
    v4[12] = *(a2 + 12);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v6 & 0x700) == 0)
  {
    return this;
  }

  if ((v6 & 0x100) == 0)
  {
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_17;
    }

LABEL_30:
    v4[15] = *(a2 + 15);
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v4[14] = *(a2 + 14);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  if ((v6 & 0x400) != 0)
  {
LABEL_18:
    v4[16] = *(a2 + 16);
  }

LABEL_19:
  v4[4] |= v6;
  return this;
}

void TSP::Color::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::Color::Clear(this, a2, a3);

    TSP::Color::MergeFrom(this, a2);
  }
}

uint64_t TSP::Color::GetMetadata(TSP::Color *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[22];
  v2 = off_1001E9950[23];
  return result;
}

uint64_t TSP::Path_Element::Path_Element(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001CA0B0;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_Path_Element_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Path_Element_TSPMessages_2eproto);
  }

  *(a1 + 48) = 1;
  return a1;
}

void TSP::Path_Element::~Path_Element(TSP::Path_Element *this)
{
  sub_10002F4C4(this + 1);
  sub_10006A1CC(this + 3);
}

{
  TSP::Path_Element::~Path_Element(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::Path_Element::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    v5 = (*(this + 5) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::Point::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 32) = 0;
  }

  v8 = *(v3 + 8);
  v7 = v3 + 8;
  *(v7 + 40) = 1;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1000315EC(v7, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::Path_Element::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_1000313B0(a3, &v27, i))
    {
      return v27;
    }

    v7 = (v27 + 1);
    v8 = *v27;
    if ((*v27 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v27 + 2);
LABEL_6:
      v27 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v9 - 128));
    v27 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
LABEL_7:
    if (v8 >> 3 == 2)
    {
      if (v8 != 18)
      {
        goto LABEL_12;
      }

      v14 = (v7 - 1);
      while (1)
      {
        v15 = (v14 + 1);
        v27 = (v14 + 1);
        v16 = *(a1 + 40);
        if (!v16)
        {
          break;
        }

        v21 = *(a1 + 32);
        v17 = *v16;
        if (v21 < *v16)
        {
          *(a1 + 32) = v21 + 1;
          v18 = *&v16[2 * v21 + 2];
          goto LABEL_28;
        }

        if (v17 == *(a1 + 36))
        {
          goto LABEL_24;
        }

LABEL_25:
        *v16 = v17 + 1;
        v18 = google::protobuf::Arena::CreateMaybeMessage<TSP::Point>(*(a1 + 24));
        v19 = *(a1 + 32);
        v20 = *(a1 + 40) + 8 * v19;
        *(a1 + 32) = v19 + 1;
        *(v20 + 8) = v18;
        v15 = v27;
LABEL_28:
        v14 = sub_100157BB8(a3, v18, v15);
        v27 = v14;
        if (!v14)
        {
          return 0;
        }

        if (*a3 <= v14 || *v14 != 18)
        {
          goto LABEL_40;
        }
      }

      v17 = *(a1 + 36);
LABEL_24:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v17 + 1);
      v16 = *(a1 + 40);
      v17 = *v16;
      goto LABEL_25;
    }

    if (v8 >> 3 == 1 && v8 == 8)
    {
      v23 = (v7 + 1);
      v22 = *v7;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if (v24 < 0)
      {
        v27 = google::protobuf::internal::VarintParseSlow64(v7, v22);
        if (!v27)
        {
          return 0;
        }
      }

      else
      {
        v23 = (v7 + 2);
LABEL_37:
        v27 = v23;
      }

      if ((v22 - 1) > 4)
      {
        sub_1001584E4((a1 + 8));
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 48) = v22;
      }

      continue;
    }

LABEL_12:
    if (!v8 || (v8 & 7) == 4)
    {
      break;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_100031428((a1 + 8), v6, v7);
      v7 = v27;
    }

    v27 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7);
    if (!v27)
    {
      return 0;
    }

LABEL_40:
    ;
  }

  *(a3 + 80) = v8 - 1;
  return v27;
}

const google::protobuf::UnknownFieldSet *TSP::Path_Element::_InternalSerialize(TSP::Path_Element *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 12);
    *a2 = 8;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      if (v6 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v7 | 0x80;
          v8 = v7 >> 7;
          ++a2;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
        *(a2 - 1) = v8;
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  v10 = *(this + 8);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v12 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSP::Point::_InternalSerialize(v12, v14, a3, a4);
    }
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v18 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::Path_Element::ByteSizeLong(TSP::Path_Element *this)
{
  if (*(this + 16))
  {
    v3 = *(this + 12);
    if (v3 < 0)
    {
      v2 = 11;
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 8);
  v5 = (v2 + v4);
  v6 = *(this + 5);
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
      v10 = TSP::Point::ByteSizeLong(v9);
      v5 = (v5 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6));
      v8 -= 8;
    }

    while (v8);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 5);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

void TSP::Path_Element::MergeFrom(TSP::Path_Element *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::Path_Element::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::Path_Element::MergeFrom(void *this, const TSP::Path_Element *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 5);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 3), *(a2 + 8));
    this = sub_10006A324(v4 + 3, v8, v7 + 8, v6, *v4[5] - *(v4 + 8));
    v9 = *(v4 + 8) + v6;
    *(v4 + 8) = v9;
    v10 = v4[5];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  if (*(a2 + 16))
  {
    v11 = *(a2 + 12);
    *(v4 + 4) |= 1u;
    *(v4 + 12) = v11;
  }

  return this;
}

void TSP::Path_Element::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::Path_Element::Clear(this, a2, a3);

    TSP::Path_Element::MergeFrom(this, a2);
  }
}

BOOL TSP::Path_Element::IsInitialized(TSP::Path_Element *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  v3 = *(this + 5);
  do
  {
    result = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(v3 + 8 * v2--);
  }

  while ((~*(v4 + 16) & 3) == 0);
  return result;
}

uint64_t TSP::Path_Element::GetMetadata(TSP::Path_Element *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[24];
  v2 = off_1001E9950[25];
  return result;
}

uint64_t TSP::Path::Path(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001CA160;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_Path_TSPMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Path_TSPMessages_2eproto);
  }

  return a1;
}

void TSP::Path::~Path(TSP::Path *this)
{
  sub_10002F4C4(this + 1);
  sub_10006A3E4(this + 2);
}

{
  TSP::Path::~Path(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::Path::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 6);
  if (v4 >= 1)
  {
    v5 = (*(this + 4) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::Path_Element::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 24) = 0;
  }

  v8 = *(v3 + 8);
  v7 = (v3 + 8);
  if (v8)
  {

    return sub_1000315EC(v7, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::Path::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  if ((sub_1000313B0(a3, &v22, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v22 + 1);
      v7 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v8 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v5;
LABEL_6:
      if (v7 == 10)
      {
        v12 = (v6 - 1);
        while (1)
        {
          v13 = (v12 + 1);
          v22 = (v12 + 1);
          v14 = *(a1 + 32);
          if (!v14)
          {
            break;
          }

          v19 = *(a1 + 24);
          v15 = *v14;
          if (v19 < *v14)
          {
            *(a1 + 24) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
            goto LABEL_23;
          }

          if (v15 == *(a1 + 28))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v14 = v15 + 1;
          v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::Path_Element>(*(a1 + 16));
          v17 = *(a1 + 24);
          v18 = *(a1 + 32) + 8 * v17;
          *(a1 + 24) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v22;
LABEL_23:
          v12 = sub_100157E28(a3, v16, v13);
          v22 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_14;
          }
        }

        v15 = *(a1 + 28);
LABEL_19:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v15 + 1);
        v14 = *(a1 + 32);
        v15 = *v14;
        goto LABEL_20;
      }

      if (v7)
      {
        v9 = (v7 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 80) = v7 - 1;
        return v22;
      }

      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v11 = sub_100031428((a1 + 8), v5, v6);
        v6 = v22;
      }

      v22 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6);
      if (!v22)
      {
        return 0;
      }

LABEL_14:
      if (sub_1000313B0(a3, &v22, *(a3 + 92)))
      {
        return v22;
      }
    }

    v6 = (v22 + 2);
LABEL_5:
    v22 = v6;
    goto LABEL_6;
  }

  return v22;
}

const google::protobuf::UnknownFieldSet *TSP::Path::_InternalSerialize(TSP::Path *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = TSP::Path_Element::_InternalSerialize(v8, v10, a3, a4);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::Path::ByteSizeLong(TSP::Path *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::Path_Element::ByteSizeLong(v6);
      v2 = (v2 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6));
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 10);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

void TSP::Path::MergeFrom(TSP::Path *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::Path::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::Path::MergeFrom(void *this, const TSP::Path *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 2), v6);
    this = sub_10006A468(v4 + 2, v8, v7 + 8, v6, *v4[4] - *(v4 + 6));
    v9 = *(v4 + 6) + v6;
    *(v4 + 6) = v9;
    v10 = v4[4];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  return this;
}

void TSP::Path::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::Path::Clear(this, a2, a3);

    TSP::Path::MergeFrom(this, a2);
  }
}

uint64_t TSP::Path::GetMetadata(TSP::Path *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  result = off_1001E9950[26];
  v2 = off_1001E9950[27];
  return result;
}

void TSP::ReferenceDictionary_Entry::~ReferenceDictionary_Entry(TSP::ReferenceDictionary_Entry *this)
{
  if (this != &TSP::_ReferenceDictionary_Entry_default_instance_)
  {
    v1 = *(this + 3);
    if (v1)
    {
      sub_10002F4C4((v1 + 8));
      operator delete();
    }

    v2 = *(this + 4);
    if (v2)
    {
      sub_10002F4C4((v2 + 8));
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::ReferenceDictionary_Entry::~ReferenceDictionary_Entry(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::ReferenceDictionary_Entry::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 4);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      this = TSP::Reference::Clear(*(this + 3), a2, a3);
    }

    if ((v4 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v3 + 32), a2, a3);
    }
  }

  v6 = *(v3 + 8);
  v5 = v3 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1000315EC(v5, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::ReferenceDictionary_Entry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  for (i = *(a3 + 92); (sub_1000313B0(a3, &v20, i) & 1) == 0; i = *(a3 + 92))
  {
    v7 = (v20 + 1);
    v8 = *v20;
    if ((*v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v20 + 2);
LABEL_6:
      v20 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v9 - 128));
    v20 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
LABEL_7:
    if (v8 >> 3 == 2)
    {
      if (v8 == 18)
      {
        *(a1 + 16) |= 2u;
        v15 = *(a1 + 32);
        if (!v15)
        {
          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v16);
          *(a1 + 32) = v15;
LABEL_28:
          v7 = v20;
        }

LABEL_29:
        v14 = sub_100155104(a3, v15, v7);
        goto LABEL_30;
      }
    }

    else if (v8 >> 3 == 1 && v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v15 = *(a1 + 24);
      if (!v15)
      {
        v17 = *(a1 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v17);
        *(a1 + 24) = v15;
        goto LABEL_28;
      }

      goto LABEL_29;
    }

    if (v8)
    {
      v11 = (v8 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      *(a3 + 80) = v8 - 1;
      return v20;
    }

    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_100031428((a1 + 8), v6, v7);
      v7 = v20;
    }

    v14 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7);
LABEL_30:
    v20 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v20;
}

const google::protobuf::UnknownFieldSet *TSP::ReferenceDictionary_Entry::_InternalSerialize(TSP::ReferenceDictionary_Entry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v7, v9, a3, a4);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 4);
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

    a2 = TSP::Reference::_InternalSerialize(v13, v15, a3, a4);
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSP::ReferenceDictionary_Entry::RequiredFieldsByteSizeFallback(TSP::ReferenceDictionary_Entry *this)
{
  v2 = *(this + 4);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = TSP::Reference::ByteSizeLong(*(this + 3));
  v3 = &v4[((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1];
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += &v5[((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1];
  }

  return v3;
}

char *TSP::ReferenceDictionary_Entry::ByteSizeLong(TSP::Reference **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TSP::ReferenceDictionary_Entry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(this[3]);
    v3 = TSP::Reference::ByteSizeLong(this[4]);
    v4 = &v3[v2 + 2 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6)];
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v4, this + 5);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

void TSP::ReferenceDictionary_Entry::MergeFrom(TSP::ReferenceDictionary_Entry *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::ReferenceDictionary_Entry::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::ReferenceDictionary_Entry::MergeFrom(void *this, const TSP::ReferenceDictionary_Entry *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      *(v4 + 4) |= 1u;
      v7 = v4[3];
      if (!v7)
      {
        v8 = v4[1];
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v8);
        v4[3] = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = &TSP::_Reference_default_instance_;
      }

      this = TSP::Reference::MergeFrom(v7, v9, a3);
    }

    if ((v6 & 2) != 0)
    {
      *(v4 + 4) |= 2u;
      v10 = v4[4];
      if (!v10)
      {
        v11 = v4[1];
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v11);
        v4[4] = v10;
      }

      if (*(a2 + 4))
      {
        v12 = *(a2 + 4);
      }

      else
      {
        v12 = &TSP::_Reference_default_instance_;
      }

      return TSP::Reference::MergeFrom(v10, v12, a3);
    }
  }

  return this;
}

void TSP::ReferenceDictionary_Entry::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::ReferenceDictionary_Entry::Clear(this, a2, a3);

    TSP::ReferenceDictionary_Entry::MergeFrom(this, a2);
  }
}

uint64_t TSP::ReferenceDictionary_Entry::IsInitialized(TSP::ReferenceDictionary_Entry *this)
{
  if (~*(this + 4) & 3) == 0 && (*(*(this + 3) + 16))
  {
    return *(*(this + 4) + 16) & 1;
  }

  else
  {
    return 0;
  }
}