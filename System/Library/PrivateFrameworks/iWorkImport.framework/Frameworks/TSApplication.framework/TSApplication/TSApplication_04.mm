uint64_t TSA::Object3DInfoSetValueCommandArchive::RequiredFieldsByteSizeFallback(TSA::Object3DInfoSetValueCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
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
    v5 = TSP::UUIDPath::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(this + 14);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v7;
  }

  return v3;
}

uint64_t TSA::Object3DInfoSetValueCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if ((~*(this + 4) & 0x13) != 0)
  {
    v9 = TSA::Object3DInfoSetValueCommandArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSK::CommandArchive::ByteSizeLong(this[3]);
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = TSP::UUIDPath::ByteSizeLong(this[4]);
    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    v6 = *(this + 14);
    v7 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    if (v6 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 10;
    }

    v9 = v2 + v4 + v3 + v5 + v8 + 3;
  }

  v10 = *(this + 4);
  if ((v10 & 0xC) != 0)
  {
    if ((v10 & 4) != 0)
    {
      v11 = TSA::Object3DInfoSetValueCommandArchive_PropertyValue::ByteSizeLong(this[5]);
      v9 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v10 & 8) != 0)
    {
      v12 = TSA::Object3DInfoSetValueCommandArchive_PropertyValue::ByteSizeLong(this[6]);
      v9 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v9, this + 20);
  }

  else
  {
    *(this + 5) = v9;
    return v9;
  }
}

uint64_t TSA::Object3DInfoSetValueCommandArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::Object3DInfoSetValueCommandArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::Object3DInfoSetValueCommandArchive::MergeFrom(uint64_t this, const TSA::Object3DInfoSetValueCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x1F) != 0)
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

        v6 = MEMORY[0x277C950D0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80718];
      }

      this = TSK::CommandArchive::MergeFrom(v6, v8);
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

        v9 = MEMORY[0x277C951A0](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = MEMORY[0x277D80A10];
      }

      this = TSP::UUIDPath::MergeFrom(v9, v11);
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

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSA::Object3DInfoSetValueCommandArchive_PropertyValue>(v13);
        *(v3 + 40) = v12;
      }

      if (*(a2 + 5))
      {
        v14 = *(a2 + 5);
      }

      else
      {
        v14 = &TSA::_Object3DInfoSetValueCommandArchive_PropertyValue_default_instance_;
      }

      this = TSA::Object3DInfoSetValueCommandArchive_PropertyValue::MergeFrom(v12, v14);
      if ((v5 & 8) == 0)
      {
LABEL_24:
        if ((v5 & 0x10) == 0)
        {
LABEL_26:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_25:
        *(v3 + 56) = *(a2 + 14);
        goto LABEL_26;
      }
    }

    else if ((v5 & 8) == 0)
    {
      goto LABEL_24;
    }

    *(v3 + 16) |= 8u;
    v15 = *(v3 + 48);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSA::Object3DInfoSetValueCommandArchive_PropertyValue>(v16);
      *(v3 + 48) = v15;
    }

    if (*(a2 + 6))
    {
      v17 = *(a2 + 6);
    }

    else
    {
      v17 = &TSA::_Object3DInfoSetValueCommandArchive_PropertyValue_default_instance_;
    }

    this = TSA::Object3DInfoSetValueCommandArchive_PropertyValue::MergeFrom(v15, v17);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  return this;
}

uint64_t *TSA::Object3DInfoSetValueCommandArchive::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::Object3DInfoSetValueCommandArchive::Clear(result);

    return TSA::Object3DInfoSetValueCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::Object3DInfoSetValueCommandArchive::CopyFrom(uint64_t *this, const TSA::Object3DInfoSetValueCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::Object3DInfoSetValueCommandArchive::Clear(this);

    return TSA::Object3DInfoSetValueCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::Object3DInfoSetValueCommandArchive::IsInitialized(TSA::Object3DInfoSetValueCommandArchive *this)
{
  if ((~*(this + 4) & 0x13) != 0)
  {
    return 0;
  }

  result = TSK::CommandArchive::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSP::UUIDPath::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSA::Object3DInfoSetValueCommandArchive::InternalSwap(TSA::Object3DInfoSetValueCommandArchive *this, TSA::Object3DInfoSetValueCommandArchive *a2)
{
  sub_2760D9190(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  v8 = *(this + 6);
  result = *(a2 + 40);
  *(this + 40) = result;
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  LODWORD(v7) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v7;
  return result;
}

TSA::DocumentArchive *sub_2760F9720(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FC3F8(a1, 1);
  TSA::DocumentArchive::DocumentArchive(v2, a1);
  return v2;
}

double sub_2760F97AC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FC484(a1, 1);
  *v2 = &unk_28850FAD0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = a1;
  result = 0.0;
  *(v2 + 40) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = 0;
  *(v2 + 64) = a1;
  *(v2 + 72) = 0;
  return result;
}

TSA::ThemePresetsArchive *sub_2760F9860(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FC510(a1, 1);
  TSA::ThemePresetsArchive::ThemePresetsArchive(v2, a1);
  return v2;
}

TSA::ShortcutControllerArchive_ShortcutMapEntry *sub_2760F98EC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FC59C(a1, 1);
  TSA::ShortcutControllerArchive_ShortcutMapEntry::ShortcutControllerArchive_ShortcutMapEntry(v2, a1);
  return v2;
}

TSA::ShortcutControllerArchive *sub_2760F9978(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FC628(a1, 1);
  TSA::ShortcutControllerArchive::ShortcutControllerArchive(v2, a1);
  return v2;
}

uint64_t sub_2760F9A04(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2760FC6B4(a1);
}

TSA::ShortcutCommandArchive *sub_2760F9AD4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FC7B8(a1, 1);
  TSA::ShortcutCommandArchive::ShortcutCommandArchive(v2, a1);
  return v2;
}

void *sub_2760F9B60(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2760FC844(a1);
}

uint64_t sub_2760F9C30(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2760FC948(a1);
}

uint64_t sub_2760F9D04(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2760FCA50(a1);
}

void *sub_2760F9DD8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2760FCB58(a1);
}

TSA::ChangeDocumentLocaleCommandArchive *sub_2760F9EA8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FCC5C(a1, 1);
  TSA::ChangeDocumentLocaleCommandArchive::ChangeDocumentLocaleCommandArchive(v2, a1);
  return v2;
}

TSA::InducedVerifyObjectsWithServerCommandArchive *sub_2760F9F34(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FCCE8(a1, 1);
  TSA::InducedVerifyObjectsWithServerCommandArchive::InducedVerifyObjectsWithServerCommandArchive(v2, a1);
  return v2;
}

TSA::InducedVerifyTransformHistoryWithServerCommandArchive *sub_2760F9FC0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FCD74(a1, 1);
  TSA::InducedVerifyTransformHistoryWithServerCommandArchive::InducedVerifyTransformHistoryWithServerCommandArchive(v2, a1);
  return v2;
}

void *sub_2760FA04C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2760FCE00(a1);
}

TSA::RemoteDataChangeCommandArchive *sub_2760FA118(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FCF00(a1, 1);
  TSA::RemoteDataChangeCommandArchive::RemoteDataChangeCommandArchive(v2, a1);
  return v2;
}

uint64_t sub_2760FA1A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2760FCF8C(a1, 1);
  *result = &unk_288510520;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_2760FA218(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2760FD034(a1);
}

TSA::GalleryInfoInsertItemsCommandArchive *sub_2760FA2F0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FD140(a1, 1);
  TSA::GalleryInfoInsertItemsCommandArchive::GalleryInfoInsertItemsCommandArchive(v2, a1);
  return v2;
}

void *sub_2760FA37C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2760FD1CC(a1);
}

TSA::GalleryItemSetGeometryCommand *sub_2760FA448(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FD2CC(a1, 1);
  TSA::GalleryItemSetGeometryCommand::GalleryItemSetGeometryCommand(v2, a1);
  return v2;
}

TSA::GalleryItem *sub_2760FA4D4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FD358(a1, 1);
  TSA::GalleryItem::GalleryItem(v2, a1);
  return v2;
}

TSA::GalleryInfo *sub_2760FA560(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FD3E4(a1, 1);
  TSA::GalleryInfo::GalleryInfo(v2, a1);
  return v2;
}

void *sub_2760FA5EC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2760FD470(a1);
}

TSA::GalleryItemSelection *sub_2760FA6BC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FD574(a1, 1);
  TSA::GalleryItemSelection::GalleryItemSelection(v2, a1);
  return v2;
}

void *sub_2760FA748(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2760FD600(a1);
}

TSA::GalleryItemSelectionTransformerHelper *sub_2760FA814(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FD700(a1, 1);
  TSA::GalleryItemSelectionTransformerHelper::GalleryItemSelectionTransformerHelper(v2, a1);
  return v2;
}

TSA::GalleryItemSetValueCommand_PropertyValue *sub_2760FA8A0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FD78C(a1, 1);
  TSA::GalleryItemSetValueCommand_PropertyValue::GalleryItemSetValueCommand_PropertyValue(v2, a1);
  return v2;
}

uint64_t sub_2760FA92C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2760FD818(a1);
}

TSA::CollaboratorGalleryItemCursor *sub_2760FAA04(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FD924(a1, 1);
  TSA::CollaboratorGalleryItemCursor::CollaboratorGalleryItemCursor(v2, a1);
  return v2;
}

TSA::WebVideoInfo *sub_2760FAA90(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FD9B0(a1, 1);
  TSA::WebVideoInfo::WebVideoInfo(v2, a1);
  return v2;
}

void *sub_2760FAB1C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2760FDA3C(a1, 1);
  *result = &unk_288510F70;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSA::CaptionInfoArchive *sub_2760FAB8C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FDAE4(a1, 1);
  TSA::CaptionInfoArchive::CaptionInfoArchive(v2, a1);
  return v2;
}

TSA::TitlePlacementCommandArchive *sub_2760FAC18(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FDB70(a1, 1);
  TSA::TitlePlacementCommandArchive::TitlePlacementCommandArchive(v2, a1);
  return v2;
}

uint64_t sub_2760FACA4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2760FDBFC(a1);
}

uint64_t sub_2760FAD7C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2760FDD08(a1);
}

void *sub_2760FAE60(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2760FDE20(a1, 1);
  *result = &unk_2885112E0;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSA::Object3DInfoSetValueCommandArchive *sub_2760FAED0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FDEC8(a1, 1);
  TSA::Object3DInfoSetValueCommandArchive::Object3DInfoSetValueCommandArchive(v2, a1);
  return v2;
}

uint64_t sub_2760FB2F0(uint64_t a1, uint64_t *a2)
{
  if (*a2 >= *a1)
  {
    v5 = *a2 - *(a1 + 8);
    if (*(a1 + 28) == v5)
    {
      if (v5 >= 1 && !*(a1 + 16))
      {
        *a2 = 0;
      }

      v2 = 1;
    }

    else
    {
      *a2 = google::protobuf::internal::EpsCopyInputStream::DoneFallback(a1);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_2760FB368(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = (v4 - 8);
  }

  v4 = *(v4 - 8);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  if (v4)
  {
    sub_2760FB46C(v4);
  }

  else
  {
    v8 = operator new(4 * v6 + 8);
  }

  *v8 = v4;
  v9 = v8 + 1;
  a1[1] = v6;
  *(a1 + 1) = v9;
  v10 = *a1;
  if (v10 >= 1)
  {
    memcpy(v9, v5 + 1, 4 * v10);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

void sub_2760FB46C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_27610E3C8(a1);
  }

  JUMPOUT(0x277C95210);
}

void *sub_2760FB4C0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2760FB504(a1, 0);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_2760FB504(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E404(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_2760FB58C);
}

void sub_2760FB58C(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t *sub_2760FB5A0(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  sub_2760FB5E8(v2);
  *a1 = v3 | 1;
  *v3 = v2;
  return v3 + 1;
}

double sub_2760FB5E8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v1 = sub_2760FB62C(a1, 0);
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  return result;
}

uint64_t sub_2760FB62C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E440(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_2760FB6B4);
}

void sub_2760FB6B4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  if (v3 != v4)
  {
    google::protobuf::UnknownFieldSet::ClearFallback(v5);
    v3 = *v5;
  }

  if (v3)
  {
    *(a1 + 16) = v3;

    operator delete(v3);
  }
}

uint64_t sub_2760FB718(uint64_t result)
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

void sub_2760FB764(void *a1)
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
          v5 = MEMORY[0x277C94FA0]();
          MEMORY[0x277C95910](v5, 0x10A1C407EE01FB0);
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

uint64_t sub_2760FB7E8(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v3 = sub_2760FB5A0(a1);
  }

  return MEMORY[0x2821EAB30](v3, a2);
}

uint64_t *sub_2760FB834(uint64_t *a1)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_2760FB5A0(a1);
  }

  if (*result != result[1])
  {

    return google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_2760FB884(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_2760FB934(v13, v15);
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
      v22 = MEMORY[0x277C951F0](v18);
      result = sub_2760FB934(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_2760FB944(uint64_t *a1, uint64_t *a2)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_2760FB5A0(a1);
  }

  v4 = *result;
  *result = *a2;
  *a2 = v4;
  v5 = result[1];
  result[1] = a2[1];
  a2[1] = v5;
  v6 = result[2];
  result[2] = a2[2];
  a2[2] = v6;
  return result;
}

uint64_t sub_2760FB9AC(uint64_t result, TSP::Reference **a2, TSP::Reference **a3, unsigned int a4, unsigned int a5)
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
      result = sub_2760FFEF4(v13, v15);
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
      v22 = MEMORY[0x277C951B0](v18);
      result = sub_2760FFEF4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2760FBA5C(void *a1)
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
          TSA::ShortcutControllerArchive_ShortcutMapEntry::~ShortcutControllerArchive_ShortcutMapEntry(*v3);
          MEMORY[0x277C95910]();
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

uint64_t sub_2760FBAE0(uint64_t result, TSA::ShortcutControllerArchive_ShortcutMapEntry **a2, TSA::ShortcutControllerArchive_ShortcutMapEntry **a3, unsigned int a4, unsigned int a5)
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
      result = sub_2760FBB90(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSA::ShortcutControllerArchive_ShortcutMapEntry>(v18);
      result = sub_2760FBB90(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2760FBBA0(void *a1)
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

          MEMORY[0x277C95910](v5, 0x1012C40EC159624);
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

uint64_t sub_2760FBC3C(uint64_t result, TSP::UUID **a2, TSP::UUID **a3, unsigned int a4, unsigned int a5)
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
      result = sub_2760FFF04(v13, v15);
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
      v22 = MEMORY[0x277C95170](v18);
      result = sub_2760FFF04(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

std::string *sub_2760FBCEC(std::string *result, std::string **a2, const std::string **a3, unsigned int a4, unsigned int a5)
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
      result = std::string::operator=(v15, v13);
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
      v22 = sub_2760FB4C0(v18);
      result = std::string::operator=(v22, v21);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2760FBD98(void *a1)
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
          v5 = MEMORY[0x277C94B90]();
          MEMORY[0x277C95910](v5, 0x10A1C40A7520D6ALL);
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

uint64_t sub_2760FBE1C(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_2760FBECC(v13, v15);
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
      v22 = MEMORY[0x277C95110](v18);
      result = sub_2760FBECC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2760FBEDC(void *a1)
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
          v5 = MEMORY[0x277C94EB0]();
          MEMORY[0x277C95910](v5, 0x10A1C4092FDCA28);
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

uint64_t sub_2760FBF60(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_2760FC010(v13, v15);
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
      v22 = MEMORY[0x277C951C0](v18);
      result = sub_2760FC010(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2760FC020(void *a1)
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
          v5 = MEMORY[0x277C94E10]();
          MEMORY[0x277C95910](v5, 0x10A1C40290C9B23);
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

uint64_t sub_2760FC0A4(uint64_t result, TSP::UUIDPath **a2, TSP::UUIDPath **a3, unsigned int a4, unsigned int a5)
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
      result = sub_2760FC154(v13, v15);
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
      v22 = MEMORY[0x277C951A0](v18);
      result = sub_2760FC154(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_2760FC164(TSS::ThemeArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSS::ThemeArchive::default_instance(a1);
  if (atomic_load_explicit(scc_info_ThemePresetsArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &TSA::_ThemePresetsArchive_default_instance_);
}

uint64_t sub_2760FC1E8(TSD::ImageArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSD::ImageArchive::default_instance(a1);
  if (atomic_load_explicit(scc_info_GalleryInfo_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &TSA::_GalleryInfo_default_instance_);
}

uint64_t sub_2760FC26C(TSCK::CollaboratorCursorArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSCK::CollaboratorCursorArchive::default_instance(a1);
  if (atomic_load_explicit(scc_info_CollaboratorGalleryItemCursor_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &TSA::_CollaboratorGalleryItemCursor_default_instance_);
}

uint64_t sub_2760FC2F0(TSD::ImageArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSD::ImageArchive::default_instance(a1);
  if (atomic_load_explicit(scc_info_WebVideoInfo_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &TSA::_WebVideoInfo_default_instance_);
}

uint64_t sub_2760FC374(TSD::MovieArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSD::MovieArchive::default_instance(a1);
  if (atomic_load_explicit(scc_info_Object3DInfo_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &TSA::_Object3DInfo_default_instance_);
}

uint64_t sub_2760FC3F8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E470(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 144, TSA::DocumentArchive::~DocumentArchive);
}

uint64_t sub_2760FC484(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E4AC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TSA::FunctionBrowserStateArchive::~FunctionBrowserStateArchive);
}

uint64_t sub_2760FC510(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E4E8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSA::ThemePresetsArchive::~ThemePresetsArchive);
}

uint64_t sub_2760FC59C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E518(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSA::ShortcutControllerArchive_ShortcutMapEntry::~ShortcutControllerArchive_ShortcutMapEntry);
}

uint64_t sub_2760FC628(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E548(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSA::ShortcutControllerArchive::~ShortcutControllerArchive);
}

uint64_t sub_2760FC6B4(uint64_t a1)
{
  v2 = sub_2760FC72C(a1, 1);
  *v2 = &unk_28850FD90;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_PropagatePresetCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_2760FC72C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E578(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSA::PropagatePresetCommandArchive::~PropagatePresetCommandArchive);
}

uint64_t sub_2760FC7B8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E5A8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSA::ShortcutCommandArchive::~ShortcutCommandArchive);
}

void *sub_2760FC844(uint64_t a1)
{
  v2 = sub_2760FC8BC(a1, 1);
  *v2 = &unk_28850FEF0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_AddCustomFormatCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_2760FC8BC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E5D8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSA::AddCustomFormatCommandArchive::~AddCustomFormatCommandArchive);
}

uint64_t sub_2760FC948(uint64_t a1)
{
  v2 = sub_2760FC9C4(a1, 1);
  *v2 = &unk_28850FFA0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_UpdateCustomFormatCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2760FC9C4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E608(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSA::UpdateCustomFormatCommandArchive::~UpdateCustomFormatCommandArchive);
}

uint64_t sub_2760FCA50(uint64_t a1)
{
  v2 = sub_2760FCACC(a1, 1);
  *v2 = &unk_288510050;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ReplaceCustomFormatCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2760FCACC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E638(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSA::ReplaceCustomFormatCommandArchive::~ReplaceCustomFormatCommandArchive);
}

void *sub_2760FCB58(uint64_t a1)
{
  v2 = sub_2760FCBD0(a1, 1);
  *v2 = &unk_288510100;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_NeedsMediaCompatibilityUpgradeCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 30) = 0;
  v2[3] = 0;
  return v2;
}

uint64_t sub_2760FCBD0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E668(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSA::NeedsMediaCompatibilityUpgradeCommandArchive::~NeedsMediaCompatibilityUpgradeCommandArchive);
}

uint64_t sub_2760FCC5C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E698(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSA::ChangeDocumentLocaleCommandArchive::~ChangeDocumentLocaleCommandArchive);
}

uint64_t sub_2760FCCE8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E6C8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, TSA::InducedVerifyObjectsWithServerCommandArchive::~InducedVerifyObjectsWithServerCommandArchive);
}

uint64_t sub_2760FCD74(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E6F8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSA::InducedVerifyTransformHistoryWithServerCommandArchive::~InducedVerifyTransformHistoryWithServerCommandArchive);
}

void *sub_2760FCE00(uint64_t a1)
{
  v2 = sub_2760FCE74(a1, 1);
  *v2 = &unk_2885103C0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_StyleUpdatePropertyMapCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_2760FCE74(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E728(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSA::StyleUpdatePropertyMapCommandArchive::~StyleUpdatePropertyMapCommandArchive);
}

uint64_t sub_2760FCF00(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E758(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSA::RemoteDataChangeCommandArchive::~RemoteDataChangeCommandArchive);
}

uint64_t sub_2760FCF8C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E788(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_2760FD014);
}

uint64_t sub_2760FD034(uint64_t a1)
{
  v2 = sub_2760FD0B4(a1, 1);
  *v2 = &unk_2885105D0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_GalleryInfoSetValueCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2760FD0B4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E7B8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSA::GalleryInfoSetValueCommandArchive::~GalleryInfoSetValueCommandArchive);
}

uint64_t sub_2760FD140(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E7E8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSA::GalleryInfoInsertItemsCommandArchive::~GalleryInfoInsertItemsCommandArchive);
}

void *sub_2760FD1CC(uint64_t a1)
{
  v2 = sub_2760FD240(a1, 1);
  *v2 = &unk_288510730;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_GalleryInfoRemoveItemsCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_2760FD240(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E818(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSA::GalleryInfoRemoveItemsCommandArchive::~GalleryInfoRemoveItemsCommandArchive);
}

uint64_t sub_2760FD2CC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E848(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSA::GalleryItemSetGeometryCommand::~GalleryItemSetGeometryCommand);
}

uint64_t sub_2760FD358(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E878(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, TSA::GalleryItem::~GalleryItem);
}

uint64_t sub_2760FD3E4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E8A8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSA::GalleryInfo::~GalleryInfo);
}

void *sub_2760FD470(uint64_t a1)
{
  v2 = sub_2760FD4E8(a1, 1);
  *v2 = &unk_2885109F0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_GallerySelectionTransformer_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_2760FD4E8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E8D8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSA::GallerySelectionTransformer::~GallerySelectionTransformer);
}

uint64_t sub_2760FD574(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E908(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSA::GalleryItemSelection::~GalleryItemSelection);
}

void *sub_2760FD600(uint64_t a1)
{
  v2 = sub_2760FD674(a1, 1);
  *v2 = &unk_288510B50;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_GalleryItemSelectionTransformer_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_2760FD674(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E938(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSA::GalleryItemSelectionTransformer::~GalleryItemSelectionTransformer);
}

uint64_t sub_2760FD700(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E968(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSA::GalleryItemSelectionTransformerHelper::~GalleryItemSelectionTransformerHelper);
}

uint64_t sub_2760FD78C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E998(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSA::GalleryItemSetValueCommand_PropertyValue::~GalleryItemSetValueCommand_PropertyValue);
}

uint64_t sub_2760FD818(uint64_t a1)
{
  v2 = sub_2760FD898(a1, 1);
  *v2 = &unk_288510D60;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_GalleryItemSetValueCommand_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2760FD898(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E9C8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSA::GalleryItemSetValueCommand::~GalleryItemSetValueCommand);
}

uint64_t sub_2760FD924(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610E9F8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSA::CollaboratorGalleryItemCursor::~CollaboratorGalleryItemCursor);
}

uint64_t sub_2760FD9B0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610EA28(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSA::WebVideoInfo::~WebVideoInfo);
}

uint64_t sub_2760FDA3C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610EA58(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_2760FDAC4);
}

uint64_t sub_2760FDAE4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610EA88(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSA::CaptionInfoArchive::~CaptionInfoArchive);
}

uint64_t sub_2760FDB70(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610EAB8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSA::TitlePlacementCommandArchive::~TitlePlacementCommandArchive);
}

uint64_t sub_2760FDBFC(uint64_t a1)
{
  v2 = sub_2760FDC7C(a1, 1);
  *v2 = &unk_288511180;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_Object3DInfo_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 50) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2760FDC7C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610EAE8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSA::Object3DInfo::~Object3DInfo);
}

uint64_t sub_2760FDD08(uint64_t a1)
{
  v2 = sub_2760FDD94(a1, 1);
  *v2 = &unk_288511230;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_Object3DInfoCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 104) = 0;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2760FDD94(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610EB18(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 112, TSA::Object3DInfoCommandArchive::~Object3DInfoCommandArchive);
}

uint64_t sub_2760FDE20(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610EB54(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_2760FDEA8);
}

uint64_t sub_2760FDEC8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610EB84(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSA::Object3DInfoSetValueCommandArchive::~Object3DInfoSetValueCommandArchive);
}

uint64_t sub_2760FDFF0()
{
  google::protobuf::internal::AddDescriptors();
  if (atomic_load_explicit(scc_info_ThemePresetsArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TSA::ThemePresetsArchive::extension = 210;
  qword_2812F4060 = &TSA::_ThemePresetsArchive_default_instance_;
  sub_2760FC164(0xD2, 11, 0);
  if (atomic_load_explicit(scc_info_GalleryInfo_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TSA::GalleryInfo::gallery_info = 200;
  qword_2812F4070 = &TSA::_GalleryInfo_default_instance_;
  sub_2760FC1E8(0xC8, 11, 0);
  if (atomic_load_explicit(scc_info_CollaboratorGalleryItemCursor_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TSA::CollaboratorGalleryItemCursor::gallery_item_cursor = 400;
  qword_2812F4080 = &TSA::_CollaboratorGalleryItemCursor_default_instance_;
  sub_2760FC26C(0x190, 11, 0);
  if (atomic_load_explicit(scc_info_WebVideoInfo_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TSA::WebVideoInfo::web_video_info = 300;
  qword_2812F4090 = &TSA::_WebVideoInfo_default_instance_;
  sub_2760FC2F0(0x12C, 11, 0);
  if (atomic_load_explicit(scc_info_Object3DInfo_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TSA::Object3DInfo::object_3D_info = 200;
  qword_2812F40A0 = &TSA::_Object3DInfo_default_instance_;

  return sub_2760FC374(0xC8, 11, 0);
}

uint64_t sub_2760FE198(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.sos.pb.cc", a4);
  sub_2760FF288(&unk_2812F4108, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F4108);
}

uint64_t sub_2760FE208(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSAArchives.sos.pb.cc", a4);
  sub_2760FE278(qword_2812F40A8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, qword_2812F40A8);
}

void *sub_2760FE278(void *a1, uint64_t a2)
{
  *a1 = &unk_288511808;
  a1[1] = a2;
  a1[2] = 0;
  a1[3] = a2;
  a1[6] = a2;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  if (atomic_load_explicit(dword_2812F3540, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[9] = 0;
  a1[10] = 0;
  *(a1 + 86) = 0;
  return a1;
}

void sub_2760FE304(_Unwind_Exception *a1)
{
  sub_2760FFE70(v2);
  sub_2760FFDEC(v1);
  _Unwind_Resume(a1);
}

void *sub_2760FE328(void *a1)
{
  if (a1 != qword_2812F40A8 && a1[9])
  {
    v2 = MEMORY[0x277C94A60]();
    MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
  }

  sub_2760D7438(a1 + 1);
  sub_2760FFE70(a1 + 6);
  sub_2760FFDEC(a1 + 3);
  return a1;
}

void sub_2760FE3A4(void *a1)
{
  sub_2760FE328(a1);

  JUMPOUT(0x277C95910);
}

uint64_t *sub_2760FE3E4(uint64_t *result)
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
      result = TSP::UUID::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 14) = 0;
  }

  v8 = *(v1 + 4);
  if (v8)
  {
    result = TSK::CommandArchive::Clear(v1[9]);
  }

  if ((v8 & 0x1E) != 0)
  {
    *(v1 + 86) = 0;
    v1[10] = 0;
  }

  v10 = *(v1 + 8);
  v9 = v1 + 1;
  *(v9 + 2) = 0;
  if (v10)
  {

    return sub_2760FB834(v9);
  }

  return result;
}

google::protobuf::internal *sub_2760FE4AC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v52 = a2;
  v5 = 0;
  if ((sub_2760FB2F0(a3, &v52) & 1) == 0)
  {
    while (1)
    {
      v7 = (v52 + 1);
      v8 = *v52;
      if ((*v52 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v52, (v9 - 128));
      v52 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_87;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_70;
          }

          *(a1 + 16) |= 1u;
          v23 = *(a1 + 72);
          if (!v23)
          {
            v24 = *(a1 + 8);
            if (v24)
            {
              v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
            }

            v25 = MEMORY[0x277C950D0](v24);
            LODWORD(v23) = v25;
            *(a1 + 72) = v25;
            v7 = v52;
          }

          v26 = sub_27610EBB4(a3, v23, v7);
          goto LABEL_77;
        }

        if (v10 != 2)
        {
          if (v10 != 3 || v8 != 24)
          {
            goto LABEL_70;
          }

          v5 |= 8u;
          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if ((v17 & 0x80000000) == 0)
          {
            v16 = (v7 + 2);
LABEL_26:
            v52 = v16;
            *(a1 + 92) = v15 != 0;
            goto LABEL_78;
          }

          v50 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v52 = v50;
          *(a1 + 92) = v51 != 0;
          if (!v50)
          {
LABEL_87:
            v52 = 0;
            goto LABEL_2;
          }

          goto LABEL_78;
        }

        if (v8 != 18)
        {
          goto LABEL_70;
        }

        v36 = v7 - 1;
        while (2)
        {
          v37 = (v36 + 1);
          v52 = (v36 + 1);
          v38 = *(a1 + 40);
          if (!v38)
          {
LABEL_60:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v38 = *(a1 + 40);
            v39 = *v38;
            goto LABEL_61;
          }

          v44 = *(a1 + 32);
          v39 = *v38;
          if (v44 >= *v38)
          {
            if (v39 == *(a1 + 36))
            {
              goto LABEL_60;
            }

LABEL_61:
            *v38 = v39 + 1;
            v40 = MEMORY[0x277C951B0](*(a1 + 24));
            LODWORD(v41) = v40;
            v42 = *(a1 + 32);
            v43 = *(a1 + 40) + 8 * v42;
            *(a1 + 32) = v42 + 1;
            *(v43 + 8) = v40;
            v37 = v52;
          }

          else
          {
            *(a1 + 32) = v44 + 1;
            v41 = *&v38[2 * v44 + 2];
          }

          v36 = sub_27610EC84(a3, v41, v37);
          v52 = v36;
          if (!v36)
          {
            goto LABEL_87;
          }

          if (*a3 <= v36 || *v36 != 18)
          {
            goto LABEL_78;
          }

          continue;
        }
      }

      if (v8 >> 3 > 5)
      {
        if (v10 != 6)
        {
          if (v10 != 7 || v8 != 56)
          {
            goto LABEL_70;
          }

          v5 |= 0x10u;
          v19 = (v7 + 1);
          v18 = *v7;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_33;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if ((v20 & 0x80000000) == 0)
          {
            v19 = (v7 + 2);
LABEL_33:
            v52 = v19;
            *(a1 + 93) = v18 != 0;
            goto LABEL_78;
          }

          v48 = google::protobuf::internal::VarintParseSlow64(v7, v18);
          v52 = v48;
          *(a1 + 93) = v49 != 0;
          if (!v48)
          {
            goto LABEL_87;
          }

          goto LABEL_78;
        }

        if (v8 == 50)
        {
          v27 = v7 - 1;
          while (1)
          {
            v28 = (v27 + 1);
            v52 = (v27 + 1);
            v29 = *(a1 + 64);
            if (!v29)
            {
              goto LABEL_47;
            }

            v35 = *(a1 + 56);
            v30 = *v29;
            if (v35 < *v29)
            {
              *(a1 + 56) = v35 + 1;
              v32 = *&v29[2 * v35 + 2];
              goto LABEL_51;
            }

            if (v30 == *(a1 + 60))
            {
LABEL_47:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v29 = *(a1 + 64);
              v30 = *v29;
            }

            *v29 = v30 + 1;
            v31 = MEMORY[0x277C95170](*(a1 + 48));
            LODWORD(v32) = v31;
            v33 = *(a1 + 56);
            v34 = *(a1 + 64) + 8 * v33;
            *(a1 + 56) = v33 + 1;
            *(v34 + 8) = v31;
            v28 = v52;
LABEL_51:
            v27 = sub_27610ED54(a3, v32, v28);
            v52 = v27;
            if (!v27)
            {
              goto LABEL_87;
            }

            if (*a3 <= v27 || *v27 != 50)
            {
              goto LABEL_78;
            }
          }
        }

LABEL_70:
        if (v8)
        {
          v45 = (v8 & 7) == 4;
        }

        else
        {
          v45 = 1;
        }

        if (v45)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2760FB5A0((a1 + 8));
        }

        v26 = google::protobuf::internal::UnknownFieldParse();
LABEL_77:
        v52 = v26;
        if (!v26)
        {
          goto LABEL_87;
        }

        goto LABEL_78;
      }

      if (v10 == 4)
      {
        if (v8 != 33)
        {
          goto LABEL_70;
        }

        v5 |= 2u;
        *(a1 + 80) = *v7;
        v52 = (v7 + 8);
      }

      else
      {
        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_70;
        }

        v5 |= 4u;
        v12 = (v7 + 1);
        LODWORD(v11) = *v7;
        if ((v11 & 0x80) == 0)
        {
          goto LABEL_15;
        }

        v13 = *v12;
        v11 = (v11 + (v13 << 7) - 128);
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_15:
          v52 = v12;
          *(a1 + 88) = v11;
          goto LABEL_78;
        }

        v46 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v52 = v46;
        *(a1 + 88) = v47;
        if (!v46)
        {
          goto LABEL_87;
        }
      }

LABEL_78:
      if (sub_2760FB2F0(a3, &v52))
      {
        goto LABEL_2;
      }
    }

    v7 = (v52 + 2);
LABEL_6:
    v52 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v52;
}

unsigned __int8 *sub_2760FE944(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 72);
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

    a2 = TSK::CommandArchive::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
      v15 = *(v14 + 5);
      if (v15 > 0x7F)
      {
        a2[1] = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v16 = a2 + 3;
          do
          {
            *(v16 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++v16;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(v16 - 1) = v18;
        }

        else
        {
          a2[2] = v17;
          v16 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v15;
        v16 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v14, v16, a3);
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(a1 + 92);
    *a2 = 24;
    a2[1] = v20;
    a2 += 2;
    if ((v5 & 2) == 0)
    {
LABEL_26:
      if ((v5 & 4) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_26;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(a1 + 80);
  *a2 = 33;
  *(a2 + 1) = v21;
  a2 += 9;
  if ((v5 & 4) != 0)
  {
LABEL_34:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v22 = *(a1 + 88);
    *a2 = 40;
    if (v22 > 0x7F)
    {
      a2[1] = v22 | 0x80;
      v23 = v22 >> 7;
      if (v22 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v23 | 0x80;
          v24 = v23 >> 7;
          ++a2;
          v25 = v23 >> 14;
          v23 >>= 7;
        }

        while (v25);
        *(a2 - 1) = v24;
      }

      else
      {
        a2[2] = v23;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v22;
      a2 += 2;
    }
  }

LABEL_43:
  v26 = *(a1 + 56);
  if (v26)
  {
    for (j = 0; j != v26; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v28 = *(*(a1 + 64) + 8 * j + 8);
      *a2 = 50;
      v29 = *(v28 + 5);
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

      a2 = TSP::UUID::_InternalSerialize(v28, v30, a3);
    }
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v34 = *(a1 + 93);
    *a2 = 56;
    a2[1] = v34;
    a2 += 2;
  }

  v35 = *(a1 + 8);
  if ((v35 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v35 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_2760FECE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(a1 + 72));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 2) != 0)
  {
    result = v3 + 9;
  }

  else
  {
    result = v3;
  }

  if ((v2 & 4) != 0)
  {
    v6 = *(a1 + 88);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v7;
  }

  return result;
}

uint64_t sub_2760FED7C(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    v7 = sub_2760FECE0(a1);
  }

  else
  {
    v2 = TSK::CommandArchive::ByteSizeLong(*(a1 + 72));
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = *(a1 + 88);
    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    if (v4 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 10;
    }

    v7 = v2 + v3 + v6 + 11;
  }

  v8 = *(a1 + 32);
  v9 = v7 + v8;
  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = TSP::Reference::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 56);
  v16 = v9 + v15;
  v17 = *(a1 + 64);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = TSP::UUID::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  if ((*(a1 + 16) & 0x18) != 0)
  {
    v22 = v16 + ((*(a1 + 16) >> 2) & 2) + ((*(a1 + 16) >> 3) & 2);
  }

  else
  {
    v22 = v16;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v22, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v22;
    return v22;
  }
}

uint64_t sub_2760FEF10(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288511958, 0);
  if (v4)
  {

    return sub_2760FEFB8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2760FEFB8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2760FB7E8((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_2760FB9AC(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    result = sub_2760FBC3C(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 16);
  if ((v15 & 0x1F) != 0)
  {
    if (v15)
    {
      *(v3 + 16) |= 1u;
      v16 = *(v3 + 72);
      if (!v16)
      {
        v17 = *(v3 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x277C950D0](v17);
        *(v3 + 72) = v16;
      }

      if (*(a2 + 72))
      {
        v18 = *(a2 + 72);
      }

      else
      {
        v18 = MEMORY[0x277D80718];
      }

      result = TSK::CommandArchive::MergeFrom(v16, v18);
      if ((v15 & 2) == 0)
      {
LABEL_12:
        if ((v15 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_27;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(v3 + 80) = *(a2 + 80);
    if ((v15 & 4) == 0)
    {
LABEL_13:
      if ((v15 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }

LABEL_27:
    *(v3 + 88) = *(a2 + 88);
    if ((v15 & 8) == 0)
    {
LABEL_14:
      if ((v15 & 0x10) == 0)
      {
LABEL_16:
        *(v3 + 16) |= v15;
        return result;
      }

LABEL_15:
      *(v3 + 93) = *(a2 + 93);
      goto LABEL_16;
    }

LABEL_28:
    *(v3 + 92) = *(a2 + 92);
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t *sub_2760FF15C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2760FE3E4(result);

    return sub_2760FEF10(v4, a2);
  }

  return result;
}

uint64_t sub_2760FF1A8(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 56);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::UUID::IsInitialized(*(*(a1 + 64) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSK::CommandArchive::IsInitialized(*(a1 + 72));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_2760FF288(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885118B8;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812F3520, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_2760FF318(uint64_t a1)
{
  if (a1 != &unk_2812F4108)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x277C95910]();
    }
  }

  sub_2760D7438((a1 + 8));
  sub_2760FFE70((a1 + 24));
  return a1;
}

void sub_2760FF388(uint64_t a1)
{
  sub_2760FF318(a1);

  JUMPOUT(0x277C95910);
}

uint64_t *sub_2760FF3C8(uint64_t *result)
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
    result = TSP::UUID::Clear(v1[6]);
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 48) = 0;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_2760FB834(v5);
  }

  return result;
}

google::protobuf::internal *sub_2760FF45C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v5 = 0;
  if ((sub_2760FB2F0(a3, &v33) & 1) == 0)
  {
    while (1)
    {
      v7 = (v33 + 1);
      v8 = *v33;
      if ((*v33 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v33, (v9 - 128));
      v33 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_51;
      }

      v7 = TagFallback;
      v8 = v30;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 != 3)
      {
        if (v10 != 2)
        {
          if (v10 == 1 && v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v26 = *(a1 + 48);
            if (!v26)
            {
              v27 = *(a1 + 8);
              if (v27)
              {
                v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
              }

              v28 = MEMORY[0x277C95170](v27);
              LODWORD(v26) = v28;
              *(a1 + 48) = v28;
              v7 = v33;
            }

            v13 = sub_27610ED54(a3, v26, v7);
          }

          else
          {
LABEL_13:
            if (v8)
            {
              v12 = (v8 & 7) == 4;
            }

            else
            {
              v12 = 1;
            }

            if (v12)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_2760FB5A0((a1 + 8));
            }

            v13 = google::protobuf::internal::UnknownFieldParse();
          }

          v33 = v13;
          if (!v13)
          {
            goto LABEL_51;
          }

          goto LABEL_44;
        }

        if (v8 != 18)
        {
          goto LABEL_13;
        }

        v14 = v7 - 1;
        while (2)
        {
          v15 = (v14 + 1);
          v33 = (v14 + 1);
          v16 = *(a1 + 40);
          if (!v16)
          {
LABEL_23:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v16 = *(a1 + 40);
            v17 = *v16;
            goto LABEL_24;
          }

          v22 = *(a1 + 32);
          v17 = *v16;
          if (v22 >= *v16)
          {
            if (v17 == *(a1 + 36))
            {
              goto LABEL_23;
            }

LABEL_24:
            *v16 = v17 + 1;
            v18 = MEMORY[0x277C95170](*(a1 + 24));
            LODWORD(v19) = v18;
            v20 = *(a1 + 32);
            v21 = *(a1 + 40) + 8 * v20;
            *(a1 + 32) = v20 + 1;
            *(v21 + 8) = v18;
            v15 = v33;
          }

          else
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v16[2 * v22 + 2];
          }

          v14 = sub_27610ED54(a3, v19, v15);
          v33 = v14;
          if (!v14)
          {
            goto LABEL_51;
          }

          if (*a3 <= v14 || *v14 != 18)
          {
            goto LABEL_44;
          }

          continue;
        }
      }

      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v24 = (v7 + 1);
      v23 = *v7;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = (v7 + 2);
LABEL_37:
        v33 = v24;
        *(a1 + 56) = v23 != 0;
        goto LABEL_44;
      }

      v31 = google::protobuf::internal::VarintParseSlow64(v7, v23);
      v33 = v31;
      *(a1 + 56) = v32 != 0;
      if (!v31)
      {
LABEL_51:
        v33 = 0;
        goto LABEL_2;
      }

LABEL_44:
      if (sub_2760FB2F0(a3, &v33))
      {
        goto LABEL_2;
      }
    }

    v7 = (v33 + 2);
LABEL_6:
    v33 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v33;
}

unsigned __int8 *sub_2760FF718(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 48);
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

    a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
      v15 = *(v14 + 5);
      if (v15 > 0x7F)
      {
        a2[1] = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v16 = a2 + 3;
          do
          {
            *(v16 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++v16;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(v16 - 1) = v18;
        }

        else
        {
          a2[2] = v17;
          v16 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v15;
        v16 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v14, v16, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(a1 + 56);
    *a2 = 24;
    a2[1] = v20;
    a2 += 2;
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_2760FF908(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
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
      v7 = TSP::UUID::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = TSP::UUID::ByteSizeLong(*(a1 + 48));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v8 & 2;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v2, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_2760FFA04(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288511970, 0);
  if (v4)
  {

    return sub_2760FFAAC(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2760FFAAC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2760FB7E8((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_2760FBC3C(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      *(v3 + 16) |= 1u;
      v11 = *(v3 + 48);
      if (!v11)
      {
        v12 = *(v3 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C95170](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = MEMORY[0x277D809E0];
      }

      result = TSP::UUID::MergeFrom(v11, v13);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 56) = *(a2 + 56);
    }

    *(v3 + 16) |= v10;
  }

  return result;
}

uint64_t *sub_2760FFBBC(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2760FF3C8(result);

    return sub_2760FFA04(v4, a2);
  }

  return result;
}

uint64_t sub_2760FFC08(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_2760FFCA8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FFF14(a1, 1);
  sub_2760FE278(v2, a1);
  return v2;
}

uint64_t sub_2760FFD34(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2760FFFA0(a1, 1);
  sub_2760FF288(v2, a1);
  return v2;
}

void sub_2760FFDEC(void *a1)
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
          MEMORY[0x277C95910]();
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

void sub_2760FFE70(void *a1)
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
          MEMORY[0x277C95910]();
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

uint64_t sub_2760FFF14(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610EE24(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, sub_2760FFF9C);
}

uint64_t sub_2760FFFA0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610EE5C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_276100028);
}

void sub_276100F20(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_276101020(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276101D38(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

uint64_t sub_276102334(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_msgSend_name(v3, v4, v5, v6);
    isEqualToString = objc_msgSend_isEqualToString_(v7, v8, *(a1 + 32), v9);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

void sub_276102800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_276102864(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_276102874(uint64_t a1, void *a2)
{
  v18 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  objc_msgSend_setCurrentItem_(v3, v4, *(a1 + 32), v5);
  v9 = objc_msgSend_layoutController(v3, v6, v7, v8);
  objc_msgSend_validateLayoutWithDependencies_(v9, v10, v3, v11);

  objc_msgSend_imageRect(v3, v12, v13, v14);
  TSUCeilSize();
  TSUSizeMax();
  v15 = *(*(a1 + 40) + 8);
  *(v15 + 48) = v16;
  *(v15 + 56) = v17;
}

void sub_276103C84(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a2;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_setParentInfo_(*(*(&v12 + 1) + 8 * v9++), v5, *(a1 + 32), v6, v12);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v12, v16, 16);
    }

    while (v7);
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 200);
  *(v10 + 200) = v3;
}

void sub_276103DB4(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_storeStrong((*(a1 + 32) + 216), a2);
  v4 = objc_opt_class();
  objc_msgSend_i_configureCaptionStorage_(v4, v5, *(*(a1 + 32) + 216), v6);
}

uint64_t sub_276103E44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (!*(v5 + 200))
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSAGalleryInfo loadFromArchive:unarchiver:]_block_invoke_3", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryInfo.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 915, 0, "invalid nil value for '%{public}s'", "_items");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
    v5 = *(a1 + 32);
    if (!*(v5 + 200))
    {
      *(v5 + 200) = MEMORY[0x277CBEBF8];

      v5 = *(a1 + 32);
    }
  }

  v15 = *(v5 + 216);
  if (!v15)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSAGalleryInfo loadFromArchive:unarchiver:]_block_invoke_3", a4);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAGalleryInfo.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 920, 0, "invalid nil value for '%{public}s'", "_captionStorage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
    v5 = *(a1 + 32);
    v15 = *(v5 + 216);
    if (!v15)
    {
      v25 = objc_opt_class();
      v29 = objc_msgSend_context(*(a1 + 40), v26, v27, v28);
      v32 = objc_msgSend_i_newCaptionStorageWithContext_(v25, v30, v29, v31);
      v33 = *(a1 + 32);
      v34 = *(v33 + 216);
      *(v33 + 216) = v32;

      v5 = *(a1 + 32);
      v15 = *(v5 + 216);
    }
  }

  return objc_msgSend_setParentInfo_(v15, a2, v5, a4);
}

id sub_276104478(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 40) |= 1u;
  v4 = *(v3 + 48);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x277C95070](v5);
    *(v3 + 48) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TSAGalleryInfo;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

uint64_t sub_2761048E0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSACommandArchives.sos.pb.cc", a4);
  sub_276106170(&unk_2812F41C8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F41C8);
}

uint64_t sub_276104950(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSACommandArchives.sos.pb.cc", a4);
  sub_276104D20(&unk_2812F4148, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F4148);
}

uint64_t sub_2761049C0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSACommandArchives.sos.pb.cc", a4);
  sub_276105748(&unk_2812F4188, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F4188);
}

uint64_t sub_276104A30(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSACommandArchives.sos.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F4210 = v4;
  qword_2812F4208 = &unk_288511BA8;
  if (atomic_load_explicit(dword_2812F3660, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F4220 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F4208);
}

uint64_t sub_276104AE0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSACommandArchives.sos.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F4230 = v4;
  qword_2812F4228 = &unk_288511C58;
  if (atomic_load_explicit(dword_2812F3680, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F4240 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F4228);
}

uint64_t sub_276104B90(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSACommandArchives.sos.pb.cc", a4);
  sub_276107798(&unk_2812F4248, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F4248);
}

uint64_t sub_276104C00(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSACommandArchives.sos.pb.cc", a4);
  sub_2761080B0(&unk_2812F4288, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F4288);
}

uint64_t sub_276104C70(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSACommandArchives.sos.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F42D0 = v4;
  qword_2812F42C8 = &unk_288511E68;
  if (atomic_load_explicit(dword_2812F36F0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F42E0 = 0;
  unk_2812F42E8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F42C8);
}

uint64_t sub_276104D20(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288511998;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812F3610, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_276104DB0(uint64_t a1)
{
  if (a1 != &unk_2812F4148 && *(a1 + 48))
  {
    v2 = MEMORY[0x277C94A60]();
    MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
  }

  sub_2760D7438((a1 + 8));
  sub_2761098D4((a1 + 24));
  return a1;
}

void sub_276104E20(uint64_t a1)
{
  sub_276104DB0(a1);

  JUMPOUT(0x277C95910);
}

uint64_t *sub_276104E60(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = sub_2760FF3C8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if (v1[2])
  {
    result = TSK::CommandArchive::Clear(v1[6]);
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 48) = 0;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_2760FB834(v5);
  }

  return result;
}

google::protobuf::internal *sub_276104EF4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v32 = a2;
  v5 = 0;
  if ((sub_2760FB2F0(a3, &v32) & 1) == 0)
  {
    while (1)
    {
      v7 = (v32 + 1);
      v8 = *v32;
      if ((*v32 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v32, (v9 - 128));
      v32 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_51;
      }

      v7 = TagFallback;
      v8 = v29;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 != 3)
      {
        if (v10 != 2)
        {
          if (v10 == 1 && v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v25 = *(a1 + 48);
            if (!v25)
            {
              v26 = *(a1 + 8);
              if (v26)
              {
                v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
              }

              v27 = MEMORY[0x277C950D0](v26);
              LODWORD(v25) = v27;
              *(a1 + 48) = v27;
              v7 = v32;
            }

            v13 = sub_27610EBB4(a3, v25, v7);
          }

          else
          {
LABEL_13:
            if (v8)
            {
              v12 = (v8 & 7) == 4;
            }

            else
            {
              v12 = 1;
            }

            if (v12)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_2760FB5A0((a1 + 8));
            }

            v13 = google::protobuf::internal::UnknownFieldParse();
          }

          v32 = v13;
          if (!v13)
          {
            goto LABEL_51;
          }

          goto LABEL_44;
        }

        if (v8 != 18)
        {
          goto LABEL_13;
        }

        v14 = (v7 - 1);
        while (2)
        {
          v15 = (v14 + 1);
          v32 = (v14 + 1);
          v16 = *(a1 + 40);
          if (!v16)
          {
LABEL_23:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v16 = *(a1 + 40);
            v17 = *v16;
            goto LABEL_24;
          }

          v21 = *(a1 + 32);
          v17 = *v16;
          if (v21 >= *v16)
          {
            if (v17 == *(a1 + 36))
            {
              goto LABEL_23;
            }

LABEL_24:
            *v16 = v17 + 1;
            v18 = sub_2760FFD30(*(a1 + 24));
            v19 = *(a1 + 32);
            v20 = *(a1 + 40) + 8 * v19;
            *(a1 + 32) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = v32;
          }

          else
          {
            *(a1 + 32) = v21 + 1;
            v18 = *&v16[2 * v21 + 2];
          }

          v14 = sub_27610EE94(a3, v18, v15);
          v32 = v14;
          if (!v14)
          {
            goto LABEL_51;
          }

          if (*a3 <= v14 || *v14 != 18)
          {
            goto LABEL_44;
          }

          continue;
        }
      }

      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v23 = (v7 + 1);
      v22 = *v7;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = (v7 + 2);
LABEL_37:
        v32 = v23;
        *(a1 + 56) = v22 != 0;
        goto LABEL_44;
      }

      v30 = google::protobuf::internal::VarintParseSlow64(v7, v22);
      v32 = v30;
      *(a1 + 56) = v31 != 0;
      if (!v30)
      {
LABEL_51:
        v32 = 0;
        goto LABEL_2;
      }

LABEL_44:
      if (sub_2760FB2F0(a3, &v32))
      {
        goto LABEL_2;
      }
    }

    v7 = (v32 + 2);
LABEL_6:
    v32 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v32;
}

unsigned __int8 *sub_2761051B0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 48);
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

    a2 = TSK::CommandArchive::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
      v15 = *(v14 + 20);
      if (v15 > 0x7F)
      {
        a2[1] = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v16 = a2 + 3;
          do
          {
            *(v16 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++v16;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(v16 - 1) = v18;
        }

        else
        {
          a2[2] = v17;
          v16 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v15;
        v16 = a2 + 2;
      }

      a2 = sub_2760FF718(v14, v16, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(a1 + 56);
    *a2 = 24;
    a2[1] = v20;
    a2 += 2;
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_2761053A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSK::CommandArchive::ByteSizeLong(*(a1 + 48));
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
      v10 = sub_2760FF908(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(a1 + 16) & 2;
  v12 = v5 + v11;
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v12, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v12;
    return v5 + v11;
  }
}

uint64_t sub_276105494(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288511F08, 0);
  if (v4)
  {

    return sub_27610553C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27610553C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2760FB7E8((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_276109958(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      *(v3 + 16) |= 1u;
      v11 = *(v3 + 48);
      if (!v11)
      {
        v12 = *(v3 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C950D0](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = MEMORY[0x277D80718];
      }

      result = TSK::CommandArchive::MergeFrom(v11, v13);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 56) = *(a2 + 56);
    }

    *(v3 + 16) |= v10;
  }

  return result;
}

uint64_t *sub_27610564C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276104E60(result);

    return sub_276105494(v4, a2);
  }

  return result;
}

uint64_t sub_276105698(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    v5 = sub_2760FFC08(*(*(a1 + 40) + 8 * v3));
    v3 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSK::CommandArchive::IsInitialized(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_276105748(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288511A48;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812F3638, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_2761057D8(uint64_t a1)
{
  if (a1 != &unk_2812F4188 && *(a1 + 48))
  {
    v2 = MEMORY[0x277C94A60]();
    MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
  }

  sub_2760D7438((a1 + 8));
  sub_2760FFE70((a1 + 24));
  return a1;
}

void sub_276105848(uint64_t a1)
{
  sub_2761057D8(a1);

  JUMPOUT(0x277C95910);
}

uint64_t *sub_276105888(uint64_t *result)
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
    result = TSK::CommandArchive::Clear(v1[6]);
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 48) = 0;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_2760FB834(v5);
  }

  return result;
}

google::protobuf::internal *sub_27610591C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v5 = 0;
  if ((sub_2760FB2F0(a3, &v33) & 1) == 0)
  {
    while (1)
    {
      v7 = (v33 + 1);
      v8 = *v33;
      if ((*v33 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v33, (v9 - 128));
      v33 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_51;
      }

      v7 = TagFallback;
      v8 = v30;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 != 3)
      {
        if (v10 != 2)
        {
          if (v10 == 1 && v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v26 = *(a1 + 48);
            if (!v26)
            {
              v27 = *(a1 + 8);
              if (v27)
              {
                v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
              }

              v28 = MEMORY[0x277C950D0](v27);
              LODWORD(v26) = v28;
              *(a1 + 48) = v28;
              v7 = v33;
            }

            v13 = sub_27610EBB4(a3, v26, v7);
          }

          else
          {
LABEL_13:
            if (v8)
            {
              v12 = (v8 & 7) == 4;
            }

            else
            {
              v12 = 1;
            }

            if (v12)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_2760FB5A0((a1 + 8));
            }

            v13 = google::protobuf::internal::UnknownFieldParse();
          }

          v33 = v13;
          if (!v13)
          {
            goto LABEL_51;
          }

          goto LABEL_44;
        }

        if (v8 != 18)
        {
          goto LABEL_13;
        }

        v14 = v7 - 1;
        while (2)
        {
          v15 = (v14 + 1);
          v33 = (v14 + 1);
          v16 = *(a1 + 40);
          if (!v16)
          {
LABEL_23:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v16 = *(a1 + 40);
            v17 = *v16;
            goto LABEL_24;
          }

          v22 = *(a1 + 32);
          v17 = *v16;
          if (v22 >= *v16)
          {
            if (v17 == *(a1 + 36))
            {
              goto LABEL_23;
            }

LABEL_24:
            *v16 = v17 + 1;
            v18 = MEMORY[0x277C95170](*(a1 + 24));
            LODWORD(v19) = v18;
            v20 = *(a1 + 32);
            v21 = *(a1 + 40) + 8 * v20;
            *(a1 + 32) = v20 + 1;
            *(v21 + 8) = v18;
            v15 = v33;
          }

          else
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v16[2 * v22 + 2];
          }

          v14 = sub_27610ED54(a3, v19, v15);
          v33 = v14;
          if (!v14)
          {
            goto LABEL_51;
          }

          if (*a3 <= v14 || *v14 != 18)
          {
            goto LABEL_44;
          }

          continue;
        }
      }

      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v24 = (v7 + 1);
      v23 = *v7;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = (v7 + 2);
LABEL_37:
        v33 = v24;
        *(a1 + 56) = v23 != 0;
        goto LABEL_44;
      }

      v31 = google::protobuf::internal::VarintParseSlow64(v7, v23);
      v33 = v31;
      *(a1 + 56) = v32 != 0;
      if (!v31)
      {
LABEL_51:
        v33 = 0;
        goto LABEL_2;
      }

LABEL_44:
      if (sub_2760FB2F0(a3, &v33))
      {
        goto LABEL_2;
      }
    }

    v7 = (v33 + 2);
LABEL_6:
    v33 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v33;
}

unsigned __int8 *sub_276105BD8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 48);
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

    a2 = TSK::CommandArchive::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
      v15 = *(v14 + 5);
      if (v15 > 0x7F)
      {
        a2[1] = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v16 = a2 + 3;
          do
          {
            *(v16 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++v16;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(v16 - 1) = v18;
        }

        else
        {
          a2[2] = v17;
          v16 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v15;
        v16 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v14, v16, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(a1 + 56);
    *a2 = 24;
    a2[1] = v20;
    a2 += 2;
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_276105DC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSK::CommandArchive::ByteSizeLong(*(a1 + 48));
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

  v11 = *(a1 + 16) & 2;
  v12 = v5 + v11;
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v12, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v12;
    return v5 + v11;
  }
}

uint64_t sub_276105EBC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288511F20, 0);
  if (v4)
  {

    return sub_276105F64(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276105F64(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2760FB7E8((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_2760FBC3C(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      *(v3 + 16) |= 1u;
      v11 = *(v3 + 48);
      if (!v11)
      {
        v12 = *(v3 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C950D0](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = MEMORY[0x277D80718];
      }

      result = TSK::CommandArchive::MergeFrom(v11, v13);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 56) = *(a2 + 56);
    }

    *(v3 + 16) |= v10;
  }

  return result;
}

uint64_t *sub_276106074(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276105888(result);

    return sub_276105EBC(v4, a2);
  }

  return result;
}

uint64_t sub_2761060C0(uint64_t a1)
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

  result = TSK::CommandArchive::IsInitialized(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_276106170(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288511AF8;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812F35E8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_276106200(uint64_t a1)
{
  if (a1 != &unk_2812F41C8 && *(a1 + 48))
  {
    v2 = MEMORY[0x277C94A60]();
    MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
  }

  sub_2760D7438((a1 + 8));
  sub_2760FFE70((a1 + 24));
  return a1;
}

void sub_276106270(uint64_t a1)
{
  sub_276106200(a1);

  JUMPOUT(0x277C95910);
}

uint64_t *sub_2761062B0(uint64_t *result)
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
    result = TSK::CommandArchive::Clear(v1[6]);
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 24) = 0;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_2760FB834(v5);
  }

  return result;
}

google::protobuf::internal *sub_276106344(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v38 = a2;
  v5 = 0;
  if ((sub_2760FB2F0(a3, &v38) & 1) == 0)
  {
    while (1)
    {
      v7 = (v38 + 1);
      v8 = *v38;
      if ((*v38 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v38, (v9 - 128));
      v38 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_61;
      }

      v7 = TagFallback;
      v8 = v33;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_44;
          }

          *(a1 + 16) |= 1u;
          v24 = *(a1 + 48);
          if (!v24)
          {
            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = MEMORY[0x277C950D0](v25);
            LODWORD(v24) = v26;
            *(a1 + 48) = v26;
            v7 = v38;
          }

          v27 = sub_27610EBB4(a3, v24, v7);
LABEL_51:
          v38 = v27;
          if (!v27)
          {
            goto LABEL_61;
          }

          goto LABEL_52;
        }

        if (v10 != 2 || v8 != 18)
        {
LABEL_44:
          if (v8)
          {
            v31 = (v8 & 7) == 4;
          }

          else
          {
            v31 = 1;
          }

          if (v31)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2760FB5A0((a1 + 8));
          }

          v27 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_51;
        }

        v12 = v7 - 1;
        while (2)
        {
          v13 = (v12 + 1);
          v38 = (v12 + 1);
          v14 = *(a1 + 40);
          if (!v14)
          {
LABEL_16:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v14 = *(a1 + 40);
            v15 = *v14;
            goto LABEL_17;
          }

          v20 = *(a1 + 32);
          v15 = *v14;
          if (v20 >= *v14)
          {
            if (v15 == *(a1 + 36))
            {
              goto LABEL_16;
            }

LABEL_17:
            *v14 = v15 + 1;
            v16 = MEMORY[0x277C95170](*(a1 + 24));
            LODWORD(v17) = v16;
            v18 = *(a1 + 32);
            v19 = *(a1 + 40) + 8 * v18;
            *(a1 + 32) = v18 + 1;
            *(v19 + 8) = v16;
            v13 = v38;
          }

          else
          {
            *(a1 + 32) = v20 + 1;
            v17 = *&v14[2 * v20 + 2];
          }

          v12 = sub_27610ED54(a3, v17, v13);
          v38 = v12;
          if (!v12)
          {
            goto LABEL_61;
          }

          if (*a3 <= v12 || *v12 != 18)
          {
            goto LABEL_52;
          }

          continue;
        }
      }

      if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_44;
        }

        v5 |= 2u;
        v29 = (v7 + 1);
        v28 = *v7;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_43;
        }

        v30 = *v29;
        v28 = (v30 << 7) + v28 - 128;
        if ((v30 & 0x80000000) == 0)
        {
          v29 = (v7 + 2);
LABEL_43:
          v38 = v29;
          *(a1 + 56) = v28 != 0;
          goto LABEL_52;
        }

        v36 = google::protobuf::internal::VarintParseSlow64(v7, v28);
        v38 = v36;
        *(a1 + 56) = v37 != 0;
        if (!v36)
        {
LABEL_61:
          v38 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 4 || v8 != 32)
        {
          goto LABEL_44;
        }

        v5 |= 4u;
        v22 = (v7 + 1);
        v21 = *v7;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_32;
        }

        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if ((v23 & 0x80000000) == 0)
        {
          v22 = (v7 + 2);
LABEL_32:
          v38 = v22;
          *(a1 + 57) = v21 != 0;
          goto LABEL_52;
        }

        v34 = google::protobuf::internal::VarintParseSlow64(v7, v21);
        v38 = v34;
        *(a1 + 57) = v35 != 0;
        if (!v34)
        {
          goto LABEL_61;
        }
      }

LABEL_52:
      if (sub_2760FB2F0(a3, &v38))
      {
        goto LABEL_2;
      }
    }

    v7 = (v38 + 2);
LABEL_6:
    v38 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v38;
}

unsigned __int8 *sub_27610667C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 48);
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

    a2 = TSK::CommandArchive::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
      v15 = *(v14 + 5);
      if (v15 > 0x7F)
      {
        a2[1] = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v16 = a2 + 3;
          do
          {
            *(v16 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++v16;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(v16 - 1) = v18;
        }

        else
        {
          a2[2] = v17;
          v16 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v15;
        v16 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v14, v16, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(a1 + 56);
    *a2 = 24;
    a2[1] = v20;
    a2 += 2;
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v21 = *(a1 + 57);
    *a2 = 32;
    a2[1] = v21;
    a2 += 2;
  }

  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v22 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_2761068A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(a1 + 48));
    v2 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v1 = *(a1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return v2 + ((v1 >> 1) & 2);
}

uint64_t sub_27610690C(uint64_t a1)
{
  if ((~*(a1 + 16) & 5) != 0)
  {
    v3 = sub_2761068A0(a1);
  }

  else
  {
    v2 = TSK::CommandArchive::ByteSizeLong(*(a1 + 48));
    v3 = v2 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  v4 = *(a1 + 32);
  v5 = v3 + v4;
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

  v11 = *(a1 + 16) & 2;
  v12 = v5 + v11;
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v12, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v12;
    return v5 + v11;
  }
}

uint64_t sub_276106A0C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288511F38, 0);
  if (v4)
  {

    return sub_276106AB4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276106AB4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2760FB7E8((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_2760FBC3C(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if ((v10 & 7) != 0)
  {
    if (v10)
    {
      *(v3 + 16) |= 1u;
      v11 = *(v3 + 48);
      if (!v11)
      {
        v12 = *(v3 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C950D0](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = MEMORY[0x277D80718];
      }

      result = TSK::CommandArchive::MergeFrom(v11, v13);
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
LABEL_11:
          *(v3 + 16) |= v10;
          return result;
        }

LABEL_10:
        *(v3 + 57) = *(a2 + 57);
        goto LABEL_11;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 56) = *(a2 + 56);
    if ((v10 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t *sub_276106BDC(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2761062B0(result);

    return sub_276106A0C(v4, a2);
  }

  return result;
}

uint64_t sub_276106C28(uint64_t a1)
{
  if ((~*(a1 + 16) & 5) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSK::CommandArchive::IsInitialized(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_276106CE0(uint64_t *a1)
{
  if (a1 != &qword_2812F4208 && a1[3])
  {
    v2 = MEMORY[0x277C94A60]();
    MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
  }

  sub_2760D7438(a1 + 1);
  return a1;
}

void sub_276106D44(uint64_t *a1)
{
  sub_276106CE0(a1);

  JUMPOUT(0x277C95910);
}

uint64_t *sub_276106D84(uint64_t *result)
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

    return sub_2760FB834(v2);
  }

  return result;
}

google::protobuf::internal *sub_276106DE0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_2760FB2F0(a3, &v16) & 1) == 0)
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

        v12 = MEMORY[0x277C950D0](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_27610EBB4(a3, v10, v5);
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
        sub_2760FB5A0((a1 + 8));
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

unsigned __int8 *sub_276106F28(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_276107018(uint64_t a1)
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

    return MEMORY[0x2821EADD8](a1 + 8, v2, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_2761070A4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288511F50, 0);
  if (v4)
  {

    return sub_27610714C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27610714C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2760FB7E8((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = MEMORY[0x277C950D0](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D80718];
    }

    return TSK::CommandArchive::MergeFrom(v6, v8);
  }

  return result;
}

uint64_t *sub_2761071F4(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276106D84(result);

    return sub_2761070A4(v4, a2);
  }

  return result;
}

uint64_t sub_276107240(uint64_t a1)
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

uint64_t *sub_276107290(uint64_t *a1)
{
  if (a1 != &qword_2812F4228 && a1[3])
  {
    v2 = MEMORY[0x277C94A60]();
    MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
  }

  sub_2760D7438(a1 + 1);
  return a1;
}

void sub_2761072F4(uint64_t *a1)
{
  sub_276107290(a1);

  JUMPOUT(0x277C95910);
}

uint64_t *sub_276107334(uint64_t *result)
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

    return sub_2760FB834(v2);
  }

  return result;
}

google::protobuf::internal *sub_276107390(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_2760FB2F0(a3, &v16) & 1) == 0)
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

        v12 = MEMORY[0x277C950D0](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_27610EBB4(a3, v10, v5);
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
        sub_2760FB5A0((a1 + 8));
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

unsigned __int8 *sub_2761074D8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_2761075C8(uint64_t a1)
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

    return MEMORY[0x2821EADD8](a1 + 8, v2, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_276107654(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288511F68, 0);
  if (v4)
  {

    return sub_27610714C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_2761076FC(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276107334(result);

    return sub_276107654(v4, a2);
  }

  return result;
}

uint64_t sub_276107748(uint64_t a1)
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

uint64_t sub_276107798(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288511D08;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812F36A0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_276107828(uint64_t a1)
{
  if (a1 != &unk_2812F4248 && *(a1 + 48))
  {
    v2 = MEMORY[0x277C94A60]();
    MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
  }

  sub_2760D7438((a1 + 8));
  sub_2760FFE70((a1 + 24));
  return a1;
}

void sub_276107898(uint64_t a1)
{
  sub_276107828(a1);

  JUMPOUT(0x277C95910);
}

uint64_t *sub_2761078D8(uint64_t *result)
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
    result = TSK::CommandArchive::Clear(v1[6]);
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 48) = 0;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_2760FB834(v5);
  }

  return result;
}

google::protobuf::internal *sub_27610796C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v5 = 0;
  if ((sub_2760FB2F0(a3, &v33) & 1) == 0)
  {
    while (1)
    {
      v7 = (v33 + 1);
      v8 = *v33;
      if ((*v33 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v33, (v9 - 128));
      v33 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_51;
      }

      v7 = TagFallback;
      v8 = v30;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 != 3)
      {
        if (v10 != 2)
        {
          if (v10 == 1 && v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v26 = *(a1 + 48);
            if (!v26)
            {
              v27 = *(a1 + 8);
              if (v27)
              {
                v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
              }

              v28 = MEMORY[0x277C950D0](v27);
              LODWORD(v26) = v28;
              *(a1 + 48) = v28;
              v7 = v33;
            }

            v13 = sub_27610EBB4(a3, v26, v7);
          }

          else
          {
LABEL_13:
            if (v8)
            {
              v12 = (v8 & 7) == 4;
            }

            else
            {
              v12 = 1;
            }

            if (v12)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_2760FB5A0((a1 + 8));
            }

            v13 = google::protobuf::internal::UnknownFieldParse();
          }

          v33 = v13;
          if (!v13)
          {
            goto LABEL_51;
          }

          goto LABEL_44;
        }

        if (v8 != 18)
        {
          goto LABEL_13;
        }

        v14 = v7 - 1;
        while (2)
        {
          v15 = (v14 + 1);
          v33 = (v14 + 1);
          v16 = *(a1 + 40);
          if (!v16)
          {
LABEL_23:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v16 = *(a1 + 40);
            v17 = *v16;
            goto LABEL_24;
          }

          v22 = *(a1 + 32);
          v17 = *v16;
          if (v22 >= *v16)
          {
            if (v17 == *(a1 + 36))
            {
              goto LABEL_23;
            }

LABEL_24:
            *v16 = v17 + 1;
            v18 = MEMORY[0x277C95170](*(a1 + 24));
            LODWORD(v19) = v18;
            v20 = *(a1 + 32);
            v21 = *(a1 + 40) + 8 * v20;
            *(a1 + 32) = v20 + 1;
            *(v21 + 8) = v18;
            v15 = v33;
          }

          else
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v16[2 * v22 + 2];
          }

          v14 = sub_27610ED54(a3, v19, v15);
          v33 = v14;
          if (!v14)
          {
            goto LABEL_51;
          }

          if (*a3 <= v14 || *v14 != 18)
          {
            goto LABEL_44;
          }

          continue;
        }
      }

      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v24 = (v7 + 1);
      v23 = *v7;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = (v7 + 2);
LABEL_37:
        v33 = v24;
        *(a1 + 56) = v23 != 0;
        goto LABEL_44;
      }

      v31 = google::protobuf::internal::VarintParseSlow64(v7, v23);
      v33 = v31;
      *(a1 + 56) = v32 != 0;
      if (!v31)
      {
LABEL_51:
        v33 = 0;
        goto LABEL_2;
      }

LABEL_44:
      if (sub_2760FB2F0(a3, &v33))
      {
        goto LABEL_2;
      }
    }

    v7 = (v33 + 2);
LABEL_6:
    v33 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v33;
}

unsigned __int8 *sub_276107C28(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 48);
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

    a2 = TSK::CommandArchive::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
      v15 = *(v14 + 5);
      if (v15 > 0x7F)
      {
        a2[1] = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v16 = a2 + 3;
          do
          {
            *(v16 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++v16;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(v16 - 1) = v18;
        }

        else
        {
          a2[2] = v17;
          v16 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v15;
        v16 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v14, v16, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(a1 + 56);
    *a2 = 24;
    a2[1] = v20;
    a2 += 2;
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_276107E18(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSK::CommandArchive::ByteSizeLong(*(a1 + 48));
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

  v11 = *(a1 + 16) & 2;
  v12 = v5 + v11;
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v12, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v12;
    return v5 + v11;
  }
}

uint64_t sub_276107F0C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288511F80, 0);
  if (v4)
  {

    return sub_276105F64(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_276107FB4(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2761078D8(result);

    return sub_276107F0C(v4, a2);
  }

  return result;
}

uint64_t sub_276108000(uint64_t a1)
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

  result = TSK::CommandArchive::IsInitialized(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_2761080B0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288511DB8;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812F36C8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_276108140(uint64_t a1)
{
  if (a1 != &unk_2812F4288 && *(a1 + 48))
  {
    v2 = MEMORY[0x277C94A60]();
    MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
  }

  sub_2760D7438((a1 + 8));
  sub_2760FFE70((a1 + 24));
  return a1;
}

void sub_2761081B0(uint64_t a1)
{
  sub_276108140(a1);

  JUMPOUT(0x277C95910);
}

uint64_t *sub_2761081F0(uint64_t *result)
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
    result = TSK::CommandArchive::Clear(v1[6]);
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 48) = 0;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_2760FB834(v5);
  }

  return result;
}

google::protobuf::internal *sub_276108284(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v5 = 0;
  if ((sub_2760FB2F0(a3, &v33) & 1) == 0)
  {
    while (1)
    {
      v7 = (v33 + 1);
      v8 = *v33;
      if ((*v33 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v33, (v9 - 128));
      v33 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_51;
      }

      v7 = TagFallback;
      v8 = v30;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 != 3)
      {
        if (v10 != 2)
        {
          if (v10 == 1 && v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v26 = *(a1 + 48);
            if (!v26)
            {
              v27 = *(a1 + 8);
              if (v27)
              {
                v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
              }

              v28 = MEMORY[0x277C950D0](v27);
              LODWORD(v26) = v28;
              *(a1 + 48) = v28;
              v7 = v33;
            }

            v13 = sub_27610EBB4(a3, v26, v7);
          }

          else
          {
LABEL_13:
            if (v8)
            {
              v12 = (v8 & 7) == 4;
            }

            else
            {
              v12 = 1;
            }

            if (v12)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_2760FB5A0((a1 + 8));
            }

            v13 = google::protobuf::internal::UnknownFieldParse();
          }

          v33 = v13;
          if (!v13)
          {
            goto LABEL_51;
          }

          goto LABEL_44;
        }

        if (v8 != 18)
        {
          goto LABEL_13;
        }

        v14 = v7 - 1;
        while (2)
        {
          v15 = (v14 + 1);
          v33 = (v14 + 1);
          v16 = *(a1 + 40);
          if (!v16)
          {
LABEL_23:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v16 = *(a1 + 40);
            v17 = *v16;
            goto LABEL_24;
          }

          v22 = *(a1 + 32);
          v17 = *v16;
          if (v22 >= *v16)
          {
            if (v17 == *(a1 + 36))
            {
              goto LABEL_23;
            }

LABEL_24:
            *v16 = v17 + 1;
            v18 = MEMORY[0x277C95170](*(a1 + 24));
            LODWORD(v19) = v18;
            v20 = *(a1 + 32);
            v21 = *(a1 + 40) + 8 * v20;
            *(a1 + 32) = v20 + 1;
            *(v21 + 8) = v18;
            v15 = v33;
          }

          else
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v16[2 * v22 + 2];
          }

          v14 = sub_27610ED54(a3, v19, v15);
          v33 = v14;
          if (!v14)
          {
            goto LABEL_51;
          }

          if (*a3 <= v14 || *v14 != 18)
          {
            goto LABEL_44;
          }

          continue;
        }
      }

      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v24 = (v7 + 1);
      v23 = *v7;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = (v7 + 2);
LABEL_37:
        v33 = v24;
        *(a1 + 56) = v23 != 0;
        goto LABEL_44;
      }

      v31 = google::protobuf::internal::VarintParseSlow64(v7, v23);
      v33 = v31;
      *(a1 + 56) = v32 != 0;
      if (!v31)
      {
LABEL_51:
        v33 = 0;
        goto LABEL_2;
      }

LABEL_44:
      if (sub_2760FB2F0(a3, &v33))
      {
        goto LABEL_2;
      }
    }

    v7 = (v33 + 2);
LABEL_6:
    v33 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v33;
}

unsigned __int8 *sub_276108540(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 48);
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

    a2 = TSK::CommandArchive::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
      v15 = *(v14 + 5);
      if (v15 > 0x7F)
      {
        a2[1] = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v16 = a2 + 3;
          do
          {
            *(v16 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++v16;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(v16 - 1) = v18;
        }

        else
        {
          a2[2] = v17;
          v16 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v15;
        v16 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v14, v16, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(a1 + 56);
    *a2 = 24;
    a2[1] = v20;
    a2 += 2;
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_276108730(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSK::CommandArchive::ByteSizeLong(*(a1 + 48));
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

  v11 = *(a1 + 16) & 2;
  v12 = v5 + v11;
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v12, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v12;
    return v5 + v11;
  }
}

uint64_t sub_276108824(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288511F98, 0);
  if (v4)
  {

    return sub_276105F64(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_2761088CC(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2761081F0(result);

    return sub_276108824(v4, a2);
  }

  return result;
}

uint64_t sub_276108918(uint64_t a1)
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

  result = TSK::CommandArchive::IsInitialized(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_2761089C8(uint64_t *a1)
{
  if (a1 != &qword_2812F42C8 && a1[3])
  {
    v2 = MEMORY[0x277C94A60]();
    MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
  }

  sub_2760D7438(a1 + 1);
  return a1;
}

void sub_276108A2C(uint64_t *a1)
{
  sub_2761089C8(a1);

  JUMPOUT(0x277C95910);
}

uint64_t *sub_276108A6C(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = TSK::CommandArchive::Clear(result[3]);
  }

  if ((v2 & 6) != 0)
  {
    v1[4] = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2760FB834(v3);
  }

  return result;
}

google::protobuf::internal *sub_276108AD4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  v5 = 0;
  if ((sub_2760FB2F0(a3, &v29) & 1) == 0)
  {
    while (1)
    {
      v7 = (v29 + 1);
      v8 = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v9 - 128));
      v29 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_45;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_13;
        }

        v5 |= 4u;
        v18 = (v7 + 1);
        LODWORD(v17) = *v7;
        if ((v17 & 0x80) == 0)
        {
          goto LABEL_29;
        }

        v19 = *v18;
        v17 = (v17 + (v19 << 7) - 128);
        if ((v19 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_29:
          v29 = v18;
          *(a1 + 36) = v17;
          goto LABEL_36;
        }

        v27 = google::protobuf::internal::VarintParseSlow64(v7, v17);
        v29 = v27;
        *(a1 + 36) = v28;
        if (!v27)
        {
LABEL_45:
          v29 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 2)
        {
          if (v10 == 1 && v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v20 = *(a1 + 24);
            if (!v20)
            {
              v21 = *(a1 + 8);
              if (v21)
              {
                v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
              }

              v22 = MEMORY[0x277C950D0](v21);
              LODWORD(v20) = v22;
              *(a1 + 24) = v22;
              v7 = v29;
            }

            v13 = sub_27610EBB4(a3, v20, v7);
          }

          else
          {
LABEL_13:
            if (v8)
            {
              v12 = (v8 & 7) == 4;
            }

            else
            {
              v12 = 1;
            }

            if (v12)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_2760FB5A0((a1 + 8));
            }

            v13 = google::protobuf::internal::UnknownFieldParse();
          }

          v29 = v13;
          if (!v13)
          {
            goto LABEL_45;
          }

          goto LABEL_36;
        }

        if (v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v15 = (v7 + 1);
        LODWORD(v14) = *v7;
        if ((v14 & 0x80) == 0)
        {
          goto LABEL_24;
        }

        v16 = *v15;
        v14 = (v14 + (v16 << 7) - 128);
        if ((v16 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_24:
          v29 = v15;
          *(a1 + 32) = v14;
          goto LABEL_36;
        }

        v25 = google::protobuf::internal::VarintParseSlow64(v7, v14);
        v29 = v25;
        *(a1 + 32) = v26;
        if (!v25)
        {
          goto LABEL_45;
        }
      }

LABEL_36:
      if (sub_2760FB2F0(a3, &v29))
      {
        goto LABEL_2;
      }
    }

    v7 = (v29 + 2);
LABEL_6:
    v29 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

unsigned __int8 *sub_276108D0C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 24);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v11 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v11 | 0x80;
          v14 = v11 >> 7;
          ++v9;
          v15 = v11 >> 14;
          v11 >>= 7;
        }

        while (v15);
        *(v9 - 1) = v14;
      }

      else
      {
        a2[2] = v11;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSK::CommandArchive::_InternalSerialize(v7, v9, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_4;
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

  v16 = *(a1 + 32);
  *a2 = 16;
  if (v16 > 0x7F)
  {
    a2[1] = v16 | 0x80;
    v17 = v16 >> 7;
    if (v16 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v17 | 0x80;
        v18 = v17 >> 7;
        ++a2;
        v19 = v17 >> 14;
        v17 >>= 7;
      }

      while (v19);
      *(a2 - 1) = v18;
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      a2[2] = v17;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    a2[1] = v16;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(a1 + 36);
  *a2 = 24;
  if (v6 > 0x7F)
  {
    a2[1] = v6 | 0x80;
    v10 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v10 | 0x80;
        v12 = v10 >> 7;
        ++a2;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
    }

    else
    {
      a2[2] = v10;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
  }

LABEL_34:
  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v20 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_276108F24(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  v5 = *(a1 + 32);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
LABEL_9:
  if ((v2 & 4) != 0)
  {
    v7 = *(a1 + 36);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
  }

  return result;
}

uint64_t sub_276108FEC(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    v10 = sub_276108F24(a1);
  }

  else
  {
    v2 = TSK::CommandArchive::ByteSizeLong(*(a1 + 24));
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = 10;
    v5 = *(a1 + 32);
    v6 = *(a1 + 36);
    v7 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    if (v5 >= 0)
    {
      v4 = v7;
    }

    v8 = 10;
    v9 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    if (v6 >= 0)
    {
      v8 = v9;
    }

    v10 = v2 + v3 + v4 + v8 + 3;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v10, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v10;
    return v10;
  }
}

uint64_t sub_2761090DC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288511FB0, 0);
  if (v4)
  {

    return sub_276109184(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276109184(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2760FB7E8((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 7) != 0)
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

        v6 = MEMORY[0x277C950D0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D80718];
      }

      result = TSK::CommandArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 16) |= v5;
          return result;
        }

LABEL_7:
        *(v3 + 36) = *(a2 + 36);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 32);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t *sub_276109250(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276108A6C(result);

    return sub_2761090DC(v4, a2);
  }

  return result;
}

uint64_t sub_27610929C(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    return 0;
  }

  else
  {
    return TSK::CommandArchive::IsInitialized(*(a1 + 24));
  }
}

uint64_t sub_2761092F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276109A18(a1, 1);
  sub_276104D20(v2, a1);
  return v2;
}

uint64_t sub_276109384(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276109AA4(a1, 1);
  sub_276105748(v2, a1);
  return v2;
}

uint64_t sub_276109410(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276109B30(a1, 1);
  sub_276106170(v2, a1);
  return v2;
}

void *sub_27610949C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276109BBC(a1);
}

void *sub_276109568(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276109CBC(a1);
}

uint64_t sub_276109634(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276109DBC(a1, 1);
  sub_276107798(v2, a1);
  return v2;
}

uint64_t sub_2761096C0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276109E48(a1, 1);
  sub_2761080B0(v2, a1);
  return v2;
}

void *sub_27610974C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276109ED4(a1);
}

void sub_2761098D4(void *a1)
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
          v5 = sub_2760FF384(*v3);
          MEMORY[0x277C95910](v5, 0x10A1C40ECB4175FLL);
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

uint64_t sub_276109958(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_276109A08(v13, v15);
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
      v22 = sub_2760FFD30(v18);
      result = sub_276109A08(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_276109A18(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610EF64(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_276109AA0);
}

uint64_t sub_276109AA4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610EF94(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_276109B2C);
}

uint64_t sub_276109B30(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610EFC4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_276109BB8);
}

void *sub_276109BBC(uint64_t a1)
{
  v2 = sub_276109C30(a1, 1);
  *v2 = &unk_288511BA8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812F3660, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276109C30(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610EFF4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276109CB8);
}

void *sub_276109CBC(uint64_t a1)
{
  v2 = sub_276109D30(a1, 1);
  *v2 = &unk_288511C58;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812F3680, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276109D30(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610F024(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276109DB8);
}

uint64_t sub_276109DBC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610F054(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_276109E44);
}

uint64_t sub_276109E48(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610F084(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_276109ED0);
}

void *sub_276109ED4(uint64_t a1)
{
  v2 = sub_276109F48(a1, 1);
  *v2 = &unk_288511E68;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812F36F0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276109F48(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27610F0B4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C95210);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_276109FD0);
}

uint64_t sub_27610A324()
{
  qword_280A428D0 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_27610BEAC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_info(*(a1 + 32), a2, a3, a4);
  if (objc_msgSend_isInlineWithText(v4, v5, v6, v7))
  {
    v8 = objc_opt_class();
    canPartitionInline = objc_msgSend_canPartitionInline(v8, v9, v10, v11);
  }

  else
  {
    canPartitionInline = 0;
  }

  return canPartitionInline;
}

uint64_t sub_27610C164()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_27610F1A0();
  swift_endAccess();
  result = swift_endAccess();
  static OS_os_log.tsaObject3D = v0;
  return result;
}

uint64_t *OS_os_log.tsaObject3D.unsafeMutableAddressor()
{
  if (qword_280A42498 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsaObject3D;
}

uint64_t (*static OS_os_log.tsaObject3D.modify())()
{
  if (qword_280A42498 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_27610C32C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_27610F1A0();
  swift_endAccess();
  result = swift_endAccess();
  static OS_os_log.tsaObject3DRenderableManager = v0;
  return result;
}

uint64_t *OS_os_log.tsaObject3DRenderableManager.unsafeMutableAddressor()
{
  if (qword_280A424A0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsaObject3DRenderableManager;
}

uint64_t (*static OS_os_log.tsaObject3DRenderableManager.modify())()
{
  if (qword_280A424A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_27610C4F0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_27610F1A0();
  swift_endAccess();
  result = swift_endAccess();
  static OS_os_log.tsaObject3DSceneKitRenderable = v0;
  return result;
}

uint64_t *OS_os_log.tsaObject3DSceneKitRenderable.unsafeMutableAddressor()
{
  if (qword_280A424A8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.tsaObject3DSceneKitRenderable;
}

id sub_27610C608(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;

  return v3;
}

void sub_27610C694(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static OS_os_log.tsaObject3DSceneKitRenderable.modify())()
{
  if (qword_280A424A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_27610C788(objc_class *a1)
{
  v11 = NSStringFromClass(a1);
  TSUSetCrashReporterInfo();

  v2 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "+[TSABaseApplicationDelegate tsa_sharedPropertiesProvider]", v4, "+[TSABaseApplicationDelegate tsa_sharedPropertiesProvider]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSABaseApplicationDelegate.m", 138, v11);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSABaseApplicationDelegate.m", v7);
  v9 = NSStringFromClass(a1);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v10, v5, v8, 138, 1, "Unexpected properties provider class: %{public}@", v9);

  TSUCrashBreakpoint();
  abort();
}

void sub_27610C85C(objc_class *a1)
{
  v11 = NSStringFromClass(a1);
  TSUSetCrashReporterInfo();

  v2 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "+[TSABaseApplicationDelegate tsa_sharedICloudPreferences]", v4, "+[TSABaseApplicationDelegate tsa_sharedICloudPreferences]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSABaseApplicationDelegate.m", 149, v11);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSABaseApplicationDelegate.m", v7);
  v9 = NSStringFromClass(a1);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v10, v5, v8, 149, 1, "Unexpected shared iCloud preferences class: %{public}@", v9);

  TSUCrashBreakpoint();
  abort();
}

void sub_27610C980()
{
  if (__cxa_guard_acquire(&qword_280A424D8))
  {
    qword_280A424D0 = sel_prepareNewDocumentWithTemplateIdentifier_bundle_documentLocale_;

    __cxa_guard_release(&qword_280A424D8);
  }
}

void sub_27610CA5C()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[TSAObject3DInfo setAspectRatioLocked:]", v2, "[TSAObject3DInfo setAspectRatioLocked:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAObject3DInfo.m", 147);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSAObject3DInfo.m", v5);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v7, v3, v6, 147, 1, "Aspect ratio cannot be changed for 3D objects.");

  TSUCrashBreakpoint();
  abort();
}

void sub_27610CBB4(void *a1, uint64_t a2)
{
  objc_begin_catch(a1);
  if (*MEMORY[0x277D81408] != -1)
  {
    dispatch_once(MEMORY[0x277D81408], &unk_28850F830);
  }

  *(*(*(a2 + 48) + 8) + 24) = 0;

  objc_end_catch();
}

uint64_t sub_27610CD24(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::DocumentArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27610CDF4(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSWP::TextPresetDisplayItemArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27610CEC4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSA::ShortcutControllerArchive_ShortcutMapEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_27610CF94(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::CustomFormatArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27610D064(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::FormatStructArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27610D134(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::FormattingSymbolsArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27610D204(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::OperationStorageEntry::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27610D2D4(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSWP::StyleUpdatePropertyMapCommandArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27610D3A4(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSCE::RemoteDataValueMapArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27610D474(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSCE::StockArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27610D544(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::UUIDPath::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27610D614(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSA::GalleryInfoSetValueCommandArchive_PropertyValue::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_27610D6E4(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::ContainerInsertChildrenCommandArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27610D7B4(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::ContainerRemoveChildrenCommandArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27610D884(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Point::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27610D954(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::DataReference::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27610DA24(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::ImageAdjustmentsArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27610DAF4(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::DrawableSelectionTransformerArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27610DBC4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSA::GalleryItemSelectionTransformerHelper::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27610DC94(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSA::GalleryItemSetValueCommand_PropertyValue::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_27610DD64(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::Attribution::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27610DE34(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSWP::ShapeInfoArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27610DF04(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::InfoCommandArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27610DFD4(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Pose3D::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27610E0A4(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Rect::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27610E174(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Path::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27610E244(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSA::Object3DInfoSetValueCommandArchive_PropertyValue::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_27610E314()
{
  sub_2760FDFD0();
  if (v1)
  {
    v2 = sub_2760FDFC4(v1);
  }

  else
  {
    v2 = sub_2760FB5A0(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_27610E350()
{
  sub_2760FDFD0();
  if (v1)
  {
    v2 = sub_2760FDFC4(v1);
  }

  else
  {
    v2 = sub_2760FB5A0(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_27610E38C()
{
  sub_2760FDFD0();
  if (v1)
  {
    v2 = sub_2760FDFC4(v1);
  }

  else
  {
    v2 = sub_2760FB5A0(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_27610EBB4(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::CommandArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27610EC84(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Reference::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27610ED54(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::UUID::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27610EE94(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_2760FF45C(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

void sub_27610F0F0(uint64_t a1)
{
  TSUSetCrashReporterInfo();
  v2 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "+[TSATemporaryDocumentSupportManager baseDirectoryURL]", v4, "+[TSATemporaryDocumentSupportManager baseDirectoryURL]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSATemporaryDocumentSupportManager.m", 32, a1);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/application/common/TSATemporaryDocumentSupportManager.m", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v9, v5, v8, 32, 1, "Failed to retrieve the application support directory with error: %@", a1);

  TSUCrashBreakpoint();
  abort();
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t __C()
{
  return MEMORY[0x2821E9620]();
}

{
  return MEMORY[0x2821E9628]();
}

uint64_t String()
{
  return MEMORY[0x2821EB0C0]();
}

{
  return MEMORY[0x2821EB0C8]();
}

{
  return MEMORY[0x2821EB0D0]();
}

{
  return MEMORY[0x2821EB0E8]();
}

{
  return MEMORY[0x2821EB0F0]();
}

{
  return MEMORY[0x2821EB0F8]();
}

{
  return MEMORY[0x2821EB100]();
}

{
  return MEMORY[0x2821EB108]();
}

{
  return MEMORY[0x2821EB110]();
}

{
  return MEMORY[0x2821EB118]();
}

{
  return MEMORY[0x2821EB128]();
}

{
  return MEMORY[0x2821EB130]();
}

uint64_t google::protobuf::internal::ArenaStringPtr::Set()
{
  return MEMORY[0x2821EAD00]();
}

{
  return MEMORY[0x2821EAD08]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}