uint64_t sub_276EA735C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54418(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_276EA73E4);
}

uint64_t sub_276EA7404(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54448(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 184, TSWP::ParagraphStylePropertiesArchive::~ParagraphStylePropertiesArchive);
}

uint64_t sub_276EA7490(uint64_t a1)
{
  v2 = sub_276EA750C(a1, 1);
  *v2 = &unk_2886009F0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ParagraphStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_276EA750C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54484(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSWP::ParagraphStyleArchive::~ParagraphStyleArchive);
}

uint64_t sub_276EA7598(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F544B4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_276EA7620);
}

uint64_t sub_276EA7640(uint64_t a1)
{
  v2 = sub_276EA76B8(a1, 1);
  *v2 = &unk_288600B50;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ListStyleArchive_LabelImage_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_276EA76B8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F544E4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::ListStyleArchive_LabelImage::~ListStyleArchive_LabelImage);
}

uint64_t sub_276EA7744(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54514(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 224, TSWP::ListStyleArchive::~ListStyleArchive);
}

uint64_t sub_276EA77D0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54550(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::TextStylePresetArchive::~TextStylePresetArchive);
}

uint64_t sub_276EA785C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54580(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276EA78E4);
}

uint64_t sub_276EA7904(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F545B0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276EA798C);
}

uint64_t sub_276EA79AC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F545E0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSWP::ColumnsArchive_NonEqualColumnsArchive::~ColumnsArchive_NonEqualColumnsArchive);
}

void *sub_276EA7A38(uint64_t a1)
{
  v2 = sub_276EA7AAC(a1, 1);
  *v2 = &unk_288600F70;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ColumnsArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276EA7AAC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54610(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::ColumnsArchive::~ColumnsArchive);
}

uint64_t sub_276EA7B38(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54640(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_276EA7BC0);
}

uint64_t sub_276EA7BE0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54670(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSWP::ColumnStylePropertiesArchive::~ColumnStylePropertiesArchive);
}

uint64_t sub_276EA7C6C(uint64_t a1)
{
  v2 = sub_276EA7CE4(a1, 1);
  *v2 = &unk_288601180;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ColumnStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_276EA7CE4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F546A0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::ColumnStyleArchive::~ColumnStyleArchive);
}

uint64_t sub_276EA7D70(uint64_t a1)
{
  v2 = sub_276EA7DF0(a1, 1);
  *v2 = &unk_288601230;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ShapeStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 54) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276EA7DF0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F546D0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSWP::ShapeStylePropertiesArchive::~ShapeStylePropertiesArchive);
}

uint64_t sub_276EA7E7C(uint64_t a1)
{
  v2 = sub_276EA7EF4(a1, 1);
  *v2 = &unk_2886012E0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ShapeStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_276EA7EF4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54700(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::ShapeStyleArchive::~ShapeStyleArchive);
}

uint64_t sub_276EA7F80(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54730(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 216, TSWP::ThemePresetsArchive::~ThemePresetsArchive);
}

uint64_t sub_276EA800C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F5476C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::TextPresetDisplayItemArchive::~TextPresetDisplayItemArchive);
}

uint64_t sub_276EA8098(uint64_t a1)
{
  v2 = sub_276EA8110(a1, 1);
  *v2 = &unk_2886014F0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_TOCEntryStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_276EA8110(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F5479C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::TOCEntryStylePropertiesArchive::~TOCEntryStylePropertiesArchive);
}

void *sub_276EA819C(uint64_t a1)
{
  v2 = sub_276EA8210(a1, 1);
  *v2 = &unk_2886015A0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_TOCEntryStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276EA8210(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F547CC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::TOCEntryStyleArchive::~TOCEntryStyleArchive);
}

uint64_t sub_276EA829C(uint64_t a1)
{
  v2 = sub_276EA8314(a1, 1);
  *v2 = &unk_288601650;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_TOCSettingsArchive_TOCEntryData_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_276EA8314(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F547FC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::TOCSettingsArchive_TOCEntryData::~TOCSettingsArchive_TOCEntryData);
}

uint64_t sub_276EA83A0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F5482C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSWP::TOCSettingsArchive::~TOCSettingsArchive);
}

uint64_t sub_276EA842C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F5485C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TSWP::TOCEntryInstanceArchive::~TOCEntryInstanceArchive);
}

uint64_t sub_276EA84B8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F5488C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_276EA8540);
}

uint64_t sub_276EA8560(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F548BC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::UndoTransaction_TextTransaction::~UndoTransaction_TextTransaction);
}

void *sub_276EA85EC(uint64_t a1)
{
  v2 = sub_276EA8660(a1, 1);
  *v2 = &unk_2886019C0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_UndoTransaction_CharIndexTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276EA8660(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F548EC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::UndoTransaction_CharIndexTransaction::~UndoTransaction_CharIndexTransaction);
}

uint64_t sub_276EA86EC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F5491C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276EA8774);
}

uint64_t sub_276EA8794(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F5494C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::UndoTransaction_AttributeIndexTransaction::~UndoTransaction_AttributeIndexTransaction);
}

uint64_t sub_276EA8820(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F5497C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::UndoTransaction_InsertAttributeTransaction::~UndoTransaction_InsertAttributeTransaction);
}

uint64_t sub_276EA88AC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F549AC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276EA8934);
}

uint64_t sub_276EA8954(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F549DC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_276EA89DC);
}

uint64_t sub_276EA89FC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54A0C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_276EA8A84);
}

uint64_t sub_276EA8AA4(uint64_t a1)
{
  v2 = sub_276EA8B1C(a1, 1);
  *v2 = &unk_288601E90;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_UndoTransaction_ObjectDOLCTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_276EA8B1C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54A3C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::UndoTransaction_ObjectDOLCTransaction::~UndoTransaction_ObjectDOLCTransaction);
}

uint64_t sub_276EA8BA8(uint64_t a1)
{
  v2 = sub_276EA8C20(a1, 1);
  *v2 = &unk_288601F40;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_UndoTransaction_CTDateTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_276EA8C20(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54A6C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::UndoTransaction_CTDateTransaction::~UndoTransaction_CTDateTransaction);
}

uint64_t sub_276EA8CAC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54A9C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 120, TSWP::UndoTransaction_UnionTransaction::~UndoTransaction_UnionTransaction);
}

uint64_t sub_276EA8D38(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54AD8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, TSWP::UndoTransaction_StorageAction::~UndoTransaction_StorageAction);
}

uint64_t sub_276EA8DC4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54B08(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, TSWP::UndoTransaction_StorageActionGroup::~UndoTransaction_StorageActionGroup);
}

uint64_t sub_276EA8E50(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54B38(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TSWP::UndoTransaction::~UndoTransaction);
}

void *sub_276EA8EDC(uint64_t a1)
{
  v2 = sub_276EA8F50(a1, 1);
  *v2 = &unk_2886022B0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_UndoTransactionWrapperArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EA8F50(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54B68(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWP::UndoTransactionWrapperArchive::~UndoTransactionWrapperArchive);
}

uint64_t sub_276EA8FDC(uint64_t a1)
{
  v2 = sub_276EA905C(a1, 1);
  *v2 = &unk_288602360;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ShapeInfoArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276EA905C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54B98(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSWP::ShapeInfoArchive::~ShapeInfoArchive);
}

void *sub_276EA90E8(uint64_t a1)
{
  v2 = sub_276EA915C(a1, 1);
  *v2 = &unk_288602410;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_CommentInfoArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276EA915C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54BC8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::CommentInfoArchive::~CommentInfoArchive);
}

uint64_t sub_276EA91E8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54BF8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, TSWP::TOCInfoArchive::~TOCInfoArchive);
}

void *sub_276EA9274(uint64_t a1)
{
  v2 = sub_276EA92E8(a1, 1);
  *v2 = &unk_288602570;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_TOCLayoutHintArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EA92E8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54C28(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWP::TOCLayoutHintArchive::~TOCLayoutHintArchive);
}

uint64_t sub_276EA9374(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54C58(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_276EA93FC);
}

uint64_t sub_276EA941C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54C88(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::TextualAttachmentArchive::~TextualAttachmentArchive);
}

uint64_t sub_276EA94A8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54CB8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::TSWPTOCPageNumberAttachmentArchive::~TSWPTOCPageNumberAttachmentArchive);
}

uint64_t sub_276EA9534(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54CE8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_276EA95BC);
}

void *sub_276EA95DC(uint64_t a1)
{
  v2 = sub_276EA9654(a1, 1);
  *v2 = &unk_2886028E0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_DrawableAttachmentArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276EA9654(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54D18(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::DrawableAttachmentArchive::~DrawableAttachmentArchive);
}

void *sub_276EA96E0(uint64_t a1)
{
  v2 = sub_276EA9754(a1, 1);
  *v2 = &unk_288602990;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_TOCAttachmentArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EA9754(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54D48(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWP::TOCAttachmentArchive::~TOCAttachmentArchive);
}

uint64_t sub_276EA97E0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54D78(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::FootnoteReferenceAttachmentArchive::~FootnoteReferenceAttachmentArchive);
}

uint64_t sub_276EA986C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54DA8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSWP::NumberAttachmentArchive::~NumberAttachmentArchive);
}

void *sub_276EA98F8(uint64_t a1)
{
  v2 = sub_276EA9974(a1, 1);
  *v2 = &unk_288602BA0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = MEMORY[0x277D80A90];
  return v2;
}

uint64_t sub_276EA9974(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54DD8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWP::SmartFieldArchive::~SmartFieldArchive);
}

uint64_t sub_276EA9A00(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54E08(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::HyperlinkFieldArchive::~HyperlinkFieldArchive);
}

uint64_t sub_276EA9A8C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54E38(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::PlaceholderSmartFieldArchive::~PlaceholderSmartFieldArchive);
}

uint64_t sub_276EA9B18(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54E68(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::UnsupportedHyperlinkFieldArchive::~UnsupportedHyperlinkFieldArchive);
}

uint64_t sub_276EA9BA4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54E98(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSWP::BibliographySmartFieldArchive::~BibliographySmartFieldArchive);
}

uint64_t sub_276EA9C30(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54EC8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, TSWP::CitationRecordArchive::~CitationRecordArchive);
}

uint64_t sub_276EA9CBC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54EF8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSWP::CitationSmartFieldArchive::~CitationSmartFieldArchive);
}

uint64_t sub_276EA9D48(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54F28(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TSWP::DateTimeSmartFieldArchive::~DateTimeSmartFieldArchive);
}

uint64_t sub_276EA9DD4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54F58(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::BookmarkFieldArchive::~BookmarkFieldArchive);
}

uint64_t sub_276EA9E60(uint64_t a1)
{
  v2 = sub_276EA9ED8(a1, 1);
  *v2 = &unk_2886031D0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_FilenameSmartFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_276EA9ED8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54F88(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::FilenameSmartFieldArchive::~FilenameSmartFieldArchive);
}

uint64_t sub_276EA9F64(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54FB8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSWP::MergeFieldTypeArchive::~MergeFieldTypeArchive);
}

uint64_t sub_276EA9FF0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F54FE8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, TSWP::MergeSmartFieldArchive::~MergeSmartFieldArchive);
}

uint64_t sub_276EAA07C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F55018(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::TOCSmartFieldArchive_TOCEntry::~TOCSmartFieldArchive_TOCEntry);
}

uint64_t sub_276EAA108(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F55048(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSWP::TOCSmartFieldArchive::~TOCSmartFieldArchive);
}

uint64_t sub_276EAA194(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F55078(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::RubyFieldArchive::~RubyFieldArchive);
}

void *sub_276EAA220(uint64_t a1)
{
  v2 = sub_276EAA294(a1, 1);
  *v2 = &unk_2886035F0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_TateChuYokoFieldArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EAA294(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F550A8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWP::TateChuYokoFieldArchive::~TateChuYokoFieldArchive);
}

uint64_t sub_276EAA320(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F550D8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSWP::ChangeArchive::~ChangeArchive);
}

uint64_t sub_276EAA3AC(uint64_t a1)
{
  v2 = sub_276EAA424(a1, 1);
  *v2 = &unk_288603750;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ChangeSessionArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_276EAA424(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F55108(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::ChangeSessionArchive::~ChangeSessionArchive);
}

void *sub_276EAA4B0(uint64_t a1)
{
  v2 = sub_276EAA524(a1, 1);
  *v2 = &unk_288603800;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SectionPlaceholderArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EAA524(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F55138(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWP::SectionPlaceholderArchive::~SectionPlaceholderArchive);
}

uint64_t sub_276EAA5B0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F55168(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_276EAA638);
}

uint64_t sub_276EAA658(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F55198(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_276EAA6E0);
}

uint64_t sub_276EAA700(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F551C8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSWP::FlowInfoArchive::~FlowInfoArchive);
}

uint64_t sub_276EAA78C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F551F8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSWP::FlowInfoContainerArchive::~FlowInfoContainerArchive);
}

uint64_t sub_276EAA818(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F55228(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, sub_276EAA8A0);
}

uint64_t sub_276EAA8C0(uint64_t a1)
{
  v2 = sub_276EAA93C(a1, 1);
  *v2 = &unk_288603C20;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_DropCapStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_276EAA93C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F55258(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSWP::DropCapStylePropertiesArchive::~DropCapStylePropertiesArchive);
}

uint64_t sub_276EAA9C8(uint64_t a1)
{
  v2 = sub_276EAAA44(a1, 1);
  *v2 = &unk_288603CD0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_DropCapStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_276EAAA44(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F55288(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSWP::DropCapStyleArchive::~DropCapStyleArchive);
}

void *sub_276EAAAD0(uint64_t a1)
{
  v2 = sub_276EAAB44(a1, 1);
  *v2 = &unk_288603D80;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_CollaboratorTextCursorSubselectionArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276EAAB44(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F552B8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWP::CollaboratorTextCursorSubselectionArchive::~CollaboratorTextCursorSubselectionArchive);
}

uint64_t sub_276EAAD38(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_276EA4A1C(v1, va);
}

uint64_t sub_276EAAD98(google::protobuf::UnknownFieldSet *this)
{

  return google::protobuf::UnknownFieldSet::AddVarint(this);
}

uint64_t *sub_276EAADB0()
{

  return sub_276EA4A94((v0 + 8));
}

uint64_t sub_276EAADC8@<X0>(google::protobuf::internal *this@<X2>, const char *a2@<X8>)
{

  return google::protobuf::internal::VarintParseSlow64(this, a2);
}

uint64_t sub_276EAAE34()
{

  return google::protobuf::internal::UnknownFieldParse();
}

uint64_t sub_276EAAE4C()
{
  google::protobuf::internal::AddDescriptors();
  if (atomic_load_explicit(scc_info_ThemePresetsArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TSWP::ThemePresetsArchive::extension = 110;
  qword_2812DEA28 = &TSWP::_ThemePresetsArchive_default_instance_;
  sub_276EA6664(0x6E, 11, 0);
  sub_276DA9454(byte_2812E0018, "");
  v0 = __cxa_atexit(MEMORY[0x277D82640], byte_2812E0018, &dword_276D10000);
  TSWP::EquationInfoArchive::equation_source_old = 100;
  qword_2812DEA38 = byte_2812E0018;
  TSD::ImageArchive::default_instance(v0);
  google::protobuf::internal::ExtensionSet::RegisterExtension();
  if (atomic_load_explicit(scc_info_CharacterStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TSWP::EquationInfoArchive::equation_text_properties = 101;
  qword_2812DEA48 = &TSWP::_CharacterStylePropertiesArchive_default_instance_;
  v1 = sub_276EA66E8(0x65, 11, 0);
  TSWP::EquationInfoArchive::equation_depth = 102;
  TSD::ImageArchive::default_instance(v1);
  google::protobuf::internal::ExtensionSet::RegisterExtension();
  sub_276DA9454(byte_2812E0030, "");
  v2 = __cxa_atexit(MEMORY[0x277D82640], byte_2812E0030, &dword_276D10000);
  TSWP::EquationInfoArchive::equation_source_text = 103;
  qword_2812DEA60 = byte_2812E0030;
  TSD::ImageArchive::default_instance(v2);
  google::protobuf::internal::ExtensionSet::RegisterExtension();
  if (atomic_load_explicit(scc_info_CollaboratorTextCursorSubselectionArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TSWP::CollaboratorTextCursorSubselectionArchive::text_cursor_subselection = 100;
  qword_2812DEA70 = &TSWP::_CollaboratorTextCursorSubselectionArchive_default_instance_;
  sub_276EA676C(0x64, 11, 0);
  if (atomic_load_explicit(scc_info_PaddingArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TSWP::padding = 100;
  qword_2812DEA80 = &TSWP::_PaddingArchive_default_instance_;

  return sub_276EA67F0(0x64, 11, 0);
}

uint64_t sub_276EADEC0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  qword_2812DEFB8 = 0;
  unk_2812DEFC0 = 0;
  TSWPSOS::_CharacterStylePropertyChangeSetArchive_default_instance_ = &unk_288605EA0;
  dword_2812DEFC8 = 0;
  if (atomic_load_explicit(scc_info_CharacterStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  xmmword_2812DF0C0 = 0u;
  unk_2812DF0D0 = 0u;
  xmmword_2812DF0A0 = 0u;
  unk_2812DF0B0 = 0u;
  xmmword_2812DF080 = 0u;
  unk_2812DF090 = 0u;
  xmmword_2812DF060 = 0u;
  unk_2812DF070 = 0u;
  xmmword_2812DF040 = 0u;
  unk_2812DF050 = 0u;
  xmmword_2812DF020 = 0u;
  unk_2812DF030 = 0u;
  xmmword_2812DF000 = 0u;
  unk_2812DF010 = 0u;
  xmmword_2812DEFE0 = 0u;
  unk_2812DEFF0 = 0u;
  xmmword_2812DEFD0 = 0u;
  qword_2812DF0DF = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWPSOS::_CharacterStylePropertyChangeSetArchive_default_instance_);
}

uint64_t sub_276EADF98(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF0F0 = v4;
  TSWPSOS::_ColumnStylePropertyChangeSetArchive_default_instance_ = &unk_288605F50;
  if (atomic_load_explicit(scc_info_ColumnStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812DF150 = 0;
  unk_2812DF140 = 0u;
  unk_2812DF130 = 0u;
  unk_2812DF120 = 0u;
  unk_2812DF110 = 0u;
  unk_2812DF100 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_ColumnStylePropertyChangeSetArchive_default_instance_);
}

uint64_t sub_276EAE060(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF160 = v4;
  TSWPSOS::_DropCapSpecificStylePropertyChangeSetArchive_default_instance_ = &unk_288606000;
  if (atomic_load_explicit(scc_info_DropCapSpecificStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DF170 = 0;
  unk_2812DF178 = 0;
  *(&qword_2812DF180 + 7) = 0;
  qword_2812DF180 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_DropCapSpecificStylePropertyChangeSetArchive_default_instance_);
}

uint64_t sub_276EAE118(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF198 = v4;
  TSWPSOS::_DropCapStylePropertyChangeSetArchive_default_instance_ = &unk_2886060B0;
  if (atomic_load_explicit(scc_info_DropCapStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812DF1C7 = 0;
  unk_2812DF1B8 = 0u;
  unk_2812DF1A8 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_DropCapStylePropertyChangeSetArchive_default_instance_);
}

uint64_t sub_276EAE1D4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF1D8 = v4;
  TSWPSOS::_ListStylePropertyChangeSetArchive_default_instance_ = &unk_288606160;
  if (atomic_load_explicit(scc_info_ListStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812DF255 = 0;
  unk_2812DF248 = 0u;
  unk_2812DF238 = 0u;
  unk_2812DF228 = 0u;
  unk_2812DF218 = 0u;
  unk_2812DF208 = 0u;
  unk_2812DF1F8 = 0u;
  unk_2812DF1E8 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_ListStylePropertyChangeSetArchive_default_instance_);
}

uint64_t sub_276EAE2A4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  qword_2812DF268 = 0;
  unk_2812DF270 = 0;
  TSWPSOS::_ParagraphSpecificStylePropertyChangeSetArchive_default_instance_ = &unk_288606210;
  dword_2812DF278 = 0;
  if (atomic_load_explicit(scc_info_ParagraphSpecificStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  xmmword_2812DF350 = 0u;
  unk_2812DF360 = 0u;
  xmmword_2812DF330 = 0u;
  unk_2812DF340 = 0u;
  xmmword_2812DF310 = 0u;
  unk_2812DF320 = 0u;
  xmmword_2812DF2F0 = 0u;
  unk_2812DF300 = 0u;
  xmmword_2812DF2D0 = 0u;
  unk_2812DF2E0 = 0u;
  xmmword_2812DF2B0 = 0u;
  unk_2812DF2C0 = 0u;
  xmmword_2812DF280 = 0u;
  xmmword_2812DF290 = 0u;
  unk_2812DF2A0 = 0u;
  unk_2812DF36F = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWPSOS::_ParagraphSpecificStylePropertyChangeSetArchive_default_instance_);
}

uint64_t sub_276EAE378(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  qword_2812DF380 = 0;
  unk_2812DF388 = 0;
  TSWPSOS::_ParagraphStylePropertyChangeSetArchive_default_instance_ = &unk_2886062C0;
  dword_2812DF390 = 0;
  if (atomic_load_explicit(scc_info_ParagraphStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  xmmword_2812DF468 = 0u;
  unk_2812DF478 = 0u;
  xmmword_2812DF448 = 0u;
  unk_2812DF458 = 0u;
  xmmword_2812DF428 = 0u;
  unk_2812DF438 = 0u;
  xmmword_2812DF408 = 0u;
  unk_2812DF418 = 0u;
  xmmword_2812DF3E8 = 0u;
  unk_2812DF3F8 = 0u;
  xmmword_2812DF3C8 = 0u;
  unk_2812DF3D8 = 0u;
  xmmword_2812DF398 = 0u;
  xmmword_2812DF3A8 = 0u;
  unk_2812DF3B8 = 0u;
  unk_2812DF483 = 0u;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWPSOS::_ParagraphStylePropertyChangeSetArchive_default_instance_);
}

uint64_t sub_276EAE44C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF4A0 = v4;
  TSWPSOS::_ShapeStylePropertyChangeSetArchive_default_instance_ = &unk_288606370;
  if (atomic_load_explicit(scc_info_ShapeStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812DF4DE = 0u;
  unk_2812DF4D0 = 0u;
  unk_2812DF4C0 = 0u;
  unk_2812DF4B0 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_ShapeStylePropertyChangeSetArchive_default_instance_);
}

uint64_t sub_276EAE50C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DED98 = v4;
  TSWPSOS::_SpecCharacterStyleArchive_default_instance_ = &unk_2886052F0;
  if (atomic_load_explicit(scc_info_SpecCharacterStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DEDA8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecCharacterStyleArchive_default_instance_);
}

uint64_t sub_276EAE5BC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEDB8 = v4;
  TSWPSOS::_SpecColumnsArchive_default_instance_ = &unk_2886053A0;
  if (atomic_load_explicit(scc_info_SpecColumnsArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DEDC8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecColumnsArchive_default_instance_);
}

uint64_t sub_276EAE66C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEDD8 = v4;
  TSWPSOS::_SpecDropCapArchive_default_instance_ = &unk_288605450;
  if (atomic_load_explicit(scc_info_SpecDropCapArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DEDE8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecDropCapArchive_default_instance_);
}

uint64_t sub_276EAE71C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEDF8 = v4;
  TSWPSOS::_SpecFontFeaturesArchive_default_instance_ = &unk_288605500;
  if (atomic_load_explicit(scc_info_SpecFontFeaturesArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DEE08 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecFontFeaturesArchive_default_instance_);
}

uint64_t sub_276EAE7CC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEE18 = v4;
  TSWPSOS::_SpecLineSpacingArchive_default_instance_ = &unk_2886055B0;
  if (atomic_load_explicit(scc_info_SpecLineSpacingArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DEE28 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecLineSpacingArchive_default_instance_);
}

uint64_t sub_276EAE87C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEE38 = v4;
  TSWPSOS::_SpecListStyleArchive_default_instance_ = &unk_288605660;
  if (atomic_load_explicit(scc_info_SpecListStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DEE48 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecListStyleArchive_default_instance_);
}

uint64_t sub_276EAE92C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEE58 = v4;
  TSWPSOS::_SpecListStyleBoolArrayArchive_default_instance_ = &unk_288605710;
  if (atomic_load_explicit(scc_info_SpecListStyleBoolArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DEE68 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecListStyleBoolArrayArchive_default_instance_);
}

uint64_t sub_276EAE9DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEE78 = v4;
  TSWPSOS::_SpecListStyleFloatArrayArchive_default_instance_ = &unk_2886057C0;
  if (atomic_load_explicit(scc_info_SpecListStyleFloatArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DEE88 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecListStyleFloatArrayArchive_default_instance_);
}

uint64_t sub_276EAEA8C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEE98 = v4;
  TSWPSOS::_SpecListStyleImageDataArrayArchive_default_instance_ = &unk_288605870;
  if (atomic_load_explicit(scc_info_SpecListStyleImageDataArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DEEA8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecListStyleImageDataArrayArchive_default_instance_);
}

uint64_t sub_276EAEB3C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEEB8 = v4;
  TSWPSOS::_SpecListStyleListLabelGeometryArrayArchive_default_instance_ = &unk_288605920;
  if (atomic_load_explicit(scc_info_SpecListStyleListLabelGeometryArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DEEC8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecListStyleListLabelGeometryArrayArchive_default_instance_);
}

uint64_t sub_276EAEBEC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEED8 = v4;
  TSWPSOS::_SpecListStyleListLabelTypeArrayArchive_default_instance_ = &unk_2886059D0;
  if (atomic_load_explicit(scc_info_SpecListStyleListLabelTypeArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DEEE8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecListStyleListLabelTypeArrayArchive_default_instance_);
}

uint64_t sub_276EAEC9C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEEF8 = v4;
  TSWPSOS::_SpecListStyleListNumberTypeArrayArchive_default_instance_ = &unk_288605A80;
  if (atomic_load_explicit(scc_info_SpecListStyleListNumberTypeArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DEF08 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecListStyleListNumberTypeArrayArchive_default_instance_);
}

uint64_t sub_276EAED4C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEF18 = v4;
  TSWPSOS::_SpecListStyleStringArrayArchive_default_instance_ = &unk_288605B30;
  if (atomic_load_explicit(scc_info_SpecListStyleStringArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DEF28 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecListStyleStringArrayArchive_default_instance_);
}

uint64_t sub_276EAEDFC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEF38 = v4;
  TSWPSOS::_SpecPaddingArchive_default_instance_ = &unk_288605BE0;
  if (atomic_load_explicit(scc_info_SpecPaddingArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DEF48 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecPaddingArchive_default_instance_);
}

uint64_t sub_276EAEEAC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEF58 = v4;
  TSWPSOS::_SpecParagraphStyleArchive_default_instance_ = &unk_288605C90;
  if (atomic_load_explicit(scc_info_SpecParagraphStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DEF68 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecParagraphStyleArchive_default_instance_);
}

uint64_t sub_276EAEF5C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEF78 = v4;
  TSWPSOS::_SpecRuleOffsetArchive_default_instance_ = &unk_288605D40;
  if (atomic_load_explicit(scc_info_SpecRuleOffsetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DEF88 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecRuleOffsetArchive_default_instance_);
}

uint64_t sub_276EAF00C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  *algn_2812DEA90 = v4;
  TSWPSOS::_SpecSetCharacterStyleArchive_default_instance_ = &unk_288604740;
  if (atomic_load_explicit(scc_info_SpecSetCharacterStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812DEAA8 = 0;
  qword_2812DEAA0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecSetCharacterStyleArchive_default_instance_);
}

uint64_t sub_276EAF0C0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEAB8 = v4;
  TSWPSOS::_SpecSetColumnsArchive_default_instance_ = &unk_2886047F0;
  if (atomic_load_explicit(scc_info_SpecSetColumnsArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812DEAD0 = 0;
  qword_2812DEAC8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecSetColumnsArchive_default_instance_);
}

uint64_t sub_276EAF174(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEAE0 = v4;
  TSWPSOS::_SpecSetDropCapArchive_default_instance_ = &unk_2886048A0;
  if (atomic_load_explicit(scc_info_SpecSetDropCapArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812DEAF8 = 0;
  qword_2812DEAF0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecSetDropCapArchive_default_instance_);
}

uint64_t sub_276EAF228(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  TSWPSOS::SpecSetFontFeaturesArchive::SpecSetFontFeaturesArchive(&TSWPSOS::_SpecSetFontFeaturesArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWPSOS::_SpecSetFontFeaturesArchive_default_instance_);
}

uint64_t sub_276EAF298(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEB40 = v4;
  TSWPSOS::_SpecSetLineSpacingArchive_default_instance_ = &unk_288604A00;
  if (atomic_load_explicit(scc_info_SpecSetLineSpacingArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812DEB58 = 0;
  qword_2812DEB50 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecSetLineSpacingArchive_default_instance_);
}

uint64_t sub_276EAF34C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEB68 = v4;
  TSWPSOS::_SpecSetListStyleArchive_default_instance_ = &unk_288604AB0;
  if (atomic_load_explicit(scc_info_SpecSetListStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812DEB80 = 0;
  qword_2812DEB78 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecSetListStyleArchive_default_instance_);
}

uint64_t sub_276EAF400(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  qword_2812DEB90 = 0;
  unk_2812DEB98 = 0;
  TSWPSOS::_SpecSetListStyleBoolArrayArchive_default_instance_ = &unk_288604B60;
  qword_2812DEBA0 = 0;
  unk_2812DEBA8 = 0;
  word_2812DEBB0 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWPSOS::_SpecSetListStyleBoolArrayArchive_default_instance_);
}

uint64_t sub_276EAF480(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  qword_2812DEBC0 = 0;
  unk_2812DEBC8 = 0;
  TSWPSOS::_SpecSetListStyleFloatArrayArchive_default_instance_ = &unk_288604C10;
  qword_2812DEBD0 = 0;
  unk_2812DEBD8 = 0;
  word_2812DEBE0 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWPSOS::_SpecSetListStyleFloatArrayArchive_default_instance_);
}

uint64_t sub_276EAF500(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  TSWPSOS::SpecSetListStyleImageDataArrayArchive::SpecSetListStyleImageDataArrayArchive(&TSWPSOS::_SpecSetListStyleImageDataArrayArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWPSOS::_SpecSetListStyleImageDataArrayArchive_default_instance_);
}

uint64_t sub_276EAF570(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::SpecSetListStyleListLabelGeometryArrayArchive(&TSWPSOS::_SpecSetListStyleListLabelGeometryArrayArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWPSOS::_SpecSetListStyleListLabelGeometryArrayArchive_default_instance_);
}

uint64_t sub_276EAF5E0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  qword_2812DEC60 = 0;
  unk_2812DEC68 = 0;
  TSWPSOS::_SpecSetListStyleListLabelTypeArrayArchive_default_instance_ = &unk_288604E20;
  qword_2812DEC70 = 0;
  unk_2812DEC78 = 0;
  word_2812DEC80 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWPSOS::_SpecSetListStyleListLabelTypeArrayArchive_default_instance_);
}

uint64_t sub_276EAF660(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  qword_2812DEC90 = 0;
  unk_2812DEC98 = 0;
  TSWPSOS::_SpecSetListStyleListNumberTypeArrayArchive_default_instance_ = &unk_288604ED0;
  qword_2812DECA0 = 0;
  unk_2812DECA8 = 0;
  word_2812DECB0 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWPSOS::_SpecSetListStyleListNumberTypeArrayArchive_default_instance_);
}

uint64_t sub_276EAF6E0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  TSWPSOS::SpecSetListStyleStringArrayArchive::SpecSetListStyleStringArrayArchive(&TSWPSOS::_SpecSetListStyleStringArrayArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSWPSOS::_SpecSetListStyleStringArrayArchive_default_instance_);
}

uint64_t sub_276EAF750(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DECF8 = v4;
  TSWPSOS::_SpecSetPaddingArchive_default_instance_ = &unk_288605030;
  if (atomic_load_explicit(scc_info_SpecSetPaddingArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812DED10 = 0;
  qword_2812DED08 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecSetPaddingArchive_default_instance_);
}

uint64_t sub_276EAF804(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DED20 = v4;
  TSWPSOS::_SpecSetParagraphStyleArchive_default_instance_ = &unk_2886050E0;
  if (atomic_load_explicit(scc_info_SpecSetParagraphStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812DED38 = 0;
  qword_2812DED30 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecSetParagraphStyleArchive_default_instance_);
}

uint64_t sub_276EAF8B8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DED48 = v4;
  TSWPSOS::_SpecSetRuleOffsetArchive_default_instance_ = &unk_288605190;
  if (atomic_load_explicit(scc_info_SpecSetRuleOffsetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812DED60 = 0;
  qword_2812DED58 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecSetRuleOffsetArchive_default_instance_);
}

uint64_t sub_276EAF96C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  *algn_2812DED70 = v4;
  TSWPSOS::_SpecSetTabsArchive_default_instance_ = &unk_288605240;
  if (atomic_load_explicit(scc_info_SpecSetTabsArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812DED88 = 0;
  qword_2812DED80 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecSetTabsArchive_default_instance_);
}

uint64_t sub_276EAFA20(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DEF98 = v4;
  TSWPSOS::_SpecTabsArchive_default_instance_ = &unk_288605DF0;
  if (atomic_load_explicit(scc_info_SpecTabsArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DEFA8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_SpecTabsArchive_default_instance_);
}

uint64_t sub_276EAFAD0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF530 = v4;
  TSWPSOS::_StyleDiffArchive_default_instance_ = &unk_2886064D0;
  if (atomic_load_explicit(scc_info_StyleDiffArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812DF550 = 0u;
  unk_2812DF540 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_StyleDiffArchive_default_instance_);
}

uint64_t sub_276EAFB88(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSWPArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812DF4F8 = v4;
  TSWPSOS::_TOCEntryStylePropertyChangeSetArchive_default_instance_ = &unk_288606420;
  if (atomic_load_explicit(scc_info_TOCEntryStylePropertyChangeSetArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812DF508 = 0;
  unk_2812DF510 = 0;
  word_2812DF520 = 0;
  qword_2812DF518 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSWPSOS::_TOCEntryStylePropertyChangeSetArchive_default_instance_);
}

TSP::Reference *TSWPSOS::SpecSetCharacterStyleArchive::clear_character_style(TSWPSOS::SpecSetCharacterStyleArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWPSOS::SpecSetCharacterStyleArchive *TSWPSOS::SpecSetCharacterStyleArchive::SpecSetCharacterStyleArchive(TSWPSOS::SpecSetCharacterStyleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288604740;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetCharacterStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288604740;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetCharacterStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecSetCharacterStyleArchive *TSWPSOS::SpecSetCharacterStyleArchive::SpecSetCharacterStyleArchive(TSWPSOS::SpecSetCharacterStyleArchive *this, const TSWPSOS::SpecSetCharacterStyleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288604740;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276EA4CDC(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 32) = *(a2 + 32);
  return this;
}

void TSWPSOS::SpecSetCharacterStyleArchive::~SpecSetCharacterStyleArchive(TSWPSOS::SpecSetCharacterStyleArchive *this)
{
  if (this != &TSWPSOS::_SpecSetCharacterStyleArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecSetCharacterStyleArchive::~SpecSetCharacterStyleArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecSetCharacterStyleArchive::default_instance(TSWPSOS::SpecSetCharacterStyleArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetCharacterStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecSetCharacterStyleArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecSetCharacterStyleArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::Reference::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_276EA4D28(v2);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::SpecSetCharacterStyleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v23) & 1) == 0)
  {
    while (1)
    {
      v7 = (v23 + 1);
      v8 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v9 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
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

            v18 = MEMORY[0x277CA3250](v17);
            LODWORD(v16) = v18;
            *(a1 + 24) = v18;
            v7 = v23;
          }

          v12 = sub_276F4F9E8(a3, v16, v7);
        }

        else
        {
LABEL_12:
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
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v23 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v23 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v21 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v23 = v21;
      *(a1 + 32) = v22 != 0;
      if (!v21)
      {
LABEL_37:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_276EA4A1C(a3, &v23))
      {
        goto LABEL_2;
      }
    }

    v7 = (v23 + 2);
LABEL_6:
    v23 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

unsigned __int8 *TSWPSOS::SpecSetCharacterStyleArchive::_InternalSerialize(TSWPSOS::SpecSetCharacterStyleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
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

    v12 = *(this + 32);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecSetCharacterStyleArchive::ByteSizeLong(TSWPSOS::SpecSetCharacterStyleArchive *this)
{
  v2 = *(this + 4);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSWPSOS::SpecSetCharacterStyleArchive::MergeFrom(TSWPSOS::SpecSetCharacterStyleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecSetCharacterStyleArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecSetCharacterStyleArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecSetCharacterStyleArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
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

        v6 = MEMORY[0x277CA3250](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      this = TSP::Reference::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetCharacterStyleArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetCharacterStyleArchive::Clear(this);

    return TSWPSOS::SpecSetCharacterStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetCharacterStyleArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecSetCharacterStyleArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetCharacterStyleArchive::Clear(this);

    return TSWPSOS::SpecSetCharacterStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWPSOS::SpecSetCharacterStyleArchive::IsInitialized(TSWPSOS::SpecSetCharacterStyleArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSWPSOS::SpecSetCharacterStyleArchive::InternalSwap(TSWPSOS::SpecSetCharacterStyleArchive *this, TSWPSOS::SpecSetCharacterStyleArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  return result;
}

uint64_t *TSWPSOS::SpecSetColumnsArchive::clear_columns(TSWPSOS::SpecSetColumnsArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSWP::ColumnsArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWPSOS::SpecSetColumnsArchive *TSWPSOS::SpecSetColumnsArchive::SpecSetColumnsArchive(TSWPSOS::SpecSetColumnsArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886047F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetColumnsArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2886047F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetColumnsArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecSetColumnsArchive *TSWPSOS::SpecSetColumnsArchive::SpecSetColumnsArchive(TSWPSOS::SpecSetColumnsArchive *this, const TSWPSOS::SpecSetColumnsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886047F0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276EA4CDC(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 32) = *(a2 + 32);
  return this;
}

void TSWPSOS::SpecSetColumnsArchive::~SpecSetColumnsArchive(TSWPSOS::SpecSetColumnsArchive *this)
{
  if (this != &TSWPSOS::_SpecSetColumnsArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWP::ColumnsArchive::~ColumnsArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecSetColumnsArchive::~SpecSetColumnsArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecSetColumnsArchive::default_instance(TSWPSOS::SpecSetColumnsArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetColumnsArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecSetColumnsArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecSetColumnsArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWP::ColumnsArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_276EA4D28(v2);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::SpecSetColumnsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v22) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
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

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnsArchive>(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_276F51E94(a3, v16, v7);
        }

        else
        {
LABEL_12:
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
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21 != 0;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_276EA4A1C(a3, &v22))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *TSWPSOS::SpecSetColumnsArchive::_InternalSerialize(TSWPSOS::SpecSetColumnsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
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

    a2 = TSWP::ColumnsArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 32);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecSetColumnsArchive::ByteSizeLong(TSWPSOS::SpecSetColumnsArchive *this)
{
  v2 = *(this + 4);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = TSWP::ColumnsArchive::ByteSizeLong(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

void TSWPSOS::SpecSetColumnsArchive::MergeFrom(TSWPSOS::SpecSetColumnsArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSWPSOS::SpecSetColumnsArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSWPSOS::SpecSetColumnsArchive::MergeFrom(TSWPSOS::SpecSetColumnsArchive *this, const TSWPSOS::SpecSetColumnsArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_276EA4CDC(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(this + 4) |= 1u;
      v6 = *(this + 3);
      if (!v6)
      {
        v7 = *(this + 1);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnsArchive>(v7);
        *(this + 3) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSWP::_ColumnsArchive_default_instance_;
      }

      TSWP::ColumnsArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(this + 32) = *(a2 + 32);
    }

    *(this + 4) |= v5;
  }
}

void TSWPSOS::SpecSetColumnsArchive::CopyFrom(TSWPSOS::SpecSetColumnsArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSWPSOS::SpecSetColumnsArchive::Clear(this);

    TSWPSOS::SpecSetColumnsArchive::MergeFrom(this, a2);
  }
}

void TSWPSOS::SpecSetColumnsArchive::CopyFrom(TSWPSOS::SpecSetColumnsArchive *this, const TSWPSOS::SpecSetColumnsArchive *a2)
{
  if (a2 != this)
  {
    TSWPSOS::SpecSetColumnsArchive::Clear(this);

    TSWPSOS::SpecSetColumnsArchive::MergeFrom(this, a2);
  }
}

BOOL TSWPSOS::SpecSetColumnsArchive::IsInitialized(TSWPSOS::SpecSetColumnsArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  result = TSWP::ColumnsArchive::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSWPSOS::SpecSetColumnsArchive::InternalSwap(TSWPSOS::SpecSetColumnsArchive *this, TSWPSOS::SpecSetColumnsArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  return result;
}

uint64_t *TSWPSOS::SpecSetDropCapArchive::clear_drop_cap(TSWPSOS::SpecSetDropCapArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSWP::DropCapArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWPSOS::SpecSetDropCapArchive *TSWPSOS::SpecSetDropCapArchive::SpecSetDropCapArchive(TSWPSOS::SpecSetDropCapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886048A0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetDropCapArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2886048A0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetDropCapArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecSetDropCapArchive *TSWPSOS::SpecSetDropCapArchive::SpecSetDropCapArchive(TSWPSOS::SpecSetDropCapArchive *this, const TSWPSOS::SpecSetDropCapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886048A0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276EA4CDC(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 32) = *(a2 + 32);
  return this;
}

void TSWPSOS::SpecSetDropCapArchive::~SpecSetDropCapArchive(TSWPSOS::SpecSetDropCapArchive *this)
{
  if (this != &TSWPSOS::_SpecSetDropCapArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWP::DropCapArchive::~DropCapArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecSetDropCapArchive::~SpecSetDropCapArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecSetDropCapArchive::default_instance(TSWPSOS::SpecSetDropCapArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetDropCapArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecSetDropCapArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecSetDropCapArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWP::DropCapArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_276EA4D28(v2);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::SpecSetDropCapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v22) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
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

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSWP::DropCapArchive>(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_276F53B84(a3, v16, v7);
        }

        else
        {
LABEL_12:
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
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21 != 0;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_276EA4A1C(a3, &v22))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *TSWPSOS::SpecSetDropCapArchive::_InternalSerialize(TSWPSOS::SpecSetDropCapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
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

    a2 = TSWP::DropCapArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 32);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecSetDropCapArchive::ByteSizeLong(TSWPSOS::SpecSetDropCapArchive *this)
{
  v2 = *(this + 4);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = TSWP::DropCapArchive::ByteSizeLong(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSWPSOS::SpecSetDropCapArchive::MergeFrom(TSWPSOS::SpecSetDropCapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecSetDropCapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecSetDropCapArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecSetDropCapArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::DropCapArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSWP::_DropCapArchive_default_instance_;
      }

      this = TSWP::DropCapArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetDropCapArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetDropCapArchive::Clear(this);

    return TSWPSOS::SpecSetDropCapArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetDropCapArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecSetDropCapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetDropCapArchive::Clear(this);

    return TSWPSOS::SpecSetDropCapArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetDropCapArchive::InternalSwap(TSWPSOS::SpecSetDropCapArchive *this, TSWPSOS::SpecSetDropCapArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  return result;
}

uint64_t *TSWPSOS::SpecSetFontFeaturesArchive::clear_font_features(uint64_t *this)
{
  v1 = *(this + 8);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSWP::FontFeatureArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSWPSOS::SpecSetFontFeaturesArchive *TSWPSOS::SpecSetFontFeaturesArchive::SpecSetFontFeaturesArchive(TSWPSOS::SpecSetFontFeaturesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288604950;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_SpecSetFontFeaturesArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 24) = 0;
  return this;
}

TSWPSOS::SpecSetFontFeaturesArchive *TSWPSOS::SpecSetFontFeaturesArchive::SpecSetFontFeaturesArchive(TSWPSOS::SpecSetFontFeaturesArchive *this, const TSWPSOS::SpecSetFontFeaturesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288604950;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_276EA5674(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_276EA4CDC(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 24) = *(a2 + 24);
  return this;
}

void TSWPSOS::SpecSetFontFeaturesArchive::~SpecSetFontFeaturesArchive(TSWPSOS::SpecSetFontFeaturesArchive *this)
{
  sub_276E4E808(this + 1);
  sub_276EA55DC(this + 3);
}

{
  TSWPSOS::SpecSetFontFeaturesArchive::~SpecSetFontFeaturesArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWPSOS::SpecSetFontFeaturesArchive::default_instance(TSWPSOS::SpecSetFontFeaturesArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetFontFeaturesArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecSetFontFeaturesArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecSetFontFeaturesArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSWP::FontFeatureArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_276EA4D28(v5);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::SpecSetFontFeaturesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v33) & 1) == 0)
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
        goto LABEL_52;
      }

      v7 = TagFallback;
      v8 = v28;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v17 = (v7 + 1);
        v16 = *v7;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v7 + 2);
LABEL_30:
          v33 = v17;
          *(a1 + 49) = v16 != 0;
          goto LABEL_31;
        }

        v31 = google::protobuf::internal::VarintParseSlow64(v7, v16);
        v33 = v31;
        *(a1 + 49) = v32 != 0;
        if (!v31)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v10 != 2)
        {
          if (v10 != 1 || v8 != 10)
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
              sub_276EA4A94((a1 + 8));
            }

            v33 = google::protobuf::internal::UnknownFieldParse();
            if (!v33)
            {
LABEL_52:
              v33 = 0;
              goto LABEL_2;
            }

            goto LABEL_31;
          }

          v19 = (v7 - 1);
          while (2)
          {
            v20 = (v19 + 1);
            v33 = (v19 + 1);
            v21 = *(a1 + 40);
            if (!v21)
            {
LABEL_35:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v21 = *(a1 + 40);
              v22 = *v21;
              goto LABEL_36;
            }

            v26 = *(a1 + 32);
            v22 = *v21;
            if (v26 >= *v21)
            {
              if (v22 == *(a1 + 36))
              {
                goto LABEL_35;
              }

LABEL_36:
              *v21 = v22 + 1;
              v23 = google::protobuf::Arena::CreateMaybeMessage<TSWP::FontFeatureArchive>(*(a1 + 24));
              v24 = *(a1 + 32);
              v25 = *(a1 + 40) + 8 * v24;
              *(a1 + 32) = v24 + 1;
              *(v25 + 8) = v23;
              v20 = v33;
            }

            else
            {
              *(a1 + 32) = v26 + 1;
              v23 = *&v21[2 * v26 + 2];
            }

            v19 = sub_276F51194(a3, v23, v20);
            v33 = v19;
            if (!v19)
            {
              goto LABEL_52;
            }

            if (*a3 <= v19 || *v19 != 10)
            {
              goto LABEL_31;
            }

            continue;
          }
        }

        if (v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 1u;
        v14 = (v7 + 1);
        v13 = *v7;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v15 = *v14;
        v13 = (v15 << 7) + v13 - 128;
        if ((v15 & 0x80000000) == 0)
        {
          v14 = (v7 + 2);
LABEL_25:
          v33 = v14;
          *(a1 + 48) = v13 != 0;
          goto LABEL_31;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v7, v13);
        v33 = v29;
        *(a1 + 48) = v30 != 0;
        if (!v29)
        {
          goto LABEL_52;
        }
      }

LABEL_31:
      if (sub_276EA4A1C(a3, &v33))
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

unsigned __int8 *TSWPSOS::SpecSetFontFeaturesArchive::_InternalSerialize(TSWPSOS::SpecSetFontFeaturesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSWP::FontFeatureArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 4);
  if (v13)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 48);
    *a2 = 16;
    a2[1] = v14;
    a2 += 2;
  }

  if ((v13 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v15 = *(this + 49);
    *a2 = 24;
    a2[1] = v15;
    a2 += 2;
  }

  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecSetFontFeaturesArchive::ByteSizeLong(TSWPSOS::SpecSetFontFeaturesArchive *this)
{
  v2 = *(this + 4);
  v3 = *(this + 8);
  v4 = (v2 & 2) + v3;
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
      v9 = TSWP::FontFeatureArchive::ByteSizeLong(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
    v2 = *(this + 4);
  }

  v10 = v4 + 2 * (v2 & 1u);
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v10, this + 20);
  }

  else
  {
    *(this + 5) = v10;
    return v4 + 2 * (v2 & 1u);
  }
}

uint64_t TSWPSOS::SpecSetFontFeaturesArchive::MergeFrom(TSWPSOS::SpecSetFontFeaturesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecSetFontFeaturesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecSetFontFeaturesArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecSetFontFeaturesArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_276EA5674(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      *(v3 + 48) = *(a2 + 48);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 49) = *(a2 + 49);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetFontFeaturesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetFontFeaturesArchive::Clear(this);

    return TSWPSOS::SpecSetFontFeaturesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetFontFeaturesArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecSetFontFeaturesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetFontFeaturesArchive::Clear(this);

    return TSWPSOS::SpecSetFontFeaturesArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWPSOS::SpecSetFontFeaturesArchive::IsInitialized(TSWPSOS::SpecSetFontFeaturesArchive *this)
{
  if ((*(this + 16) & 2) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v4 = v3 - 1;
    IsInitialized = TSWP::FontFeatureArchive::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
  }

  while (IsInitialized);
  return v1;
}

__n128 TSWPSOS::SpecSetFontFeaturesArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276E4FC00(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  LOWORD(v5) = this[3].n128_u16[0];
  this[3].n128_u16[0] = a2[3].n128_u16[0];
  a2[3].n128_u16[0] = v5;
  return result;
}

uint64_t *TSWPSOS::SpecSetLineSpacingArchive::clear_line_spacing(TSWPSOS::SpecSetLineSpacingArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSWP::LineSpacingArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWPSOS::SpecSetLineSpacingArchive *TSWPSOS::SpecSetLineSpacingArchive::SpecSetLineSpacingArchive(TSWPSOS::SpecSetLineSpacingArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288604A00;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetLineSpacingArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288604A00;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetLineSpacingArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecSetLineSpacingArchive *TSWPSOS::SpecSetLineSpacingArchive::SpecSetLineSpacingArchive(TSWPSOS::SpecSetLineSpacingArchive *this, const TSWPSOS::SpecSetLineSpacingArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288604A00;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276EA4CDC(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 32) = *(a2 + 32);
  return this;
}

void TSWPSOS::SpecSetLineSpacingArchive::~SpecSetLineSpacingArchive(TSWPSOS::SpecSetLineSpacingArchive *this)
{
  if (this != &TSWPSOS::_SpecSetLineSpacingArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWP::LineSpacingArchive::~LineSpacingArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecSetLineSpacingArchive::~SpecSetLineSpacingArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecSetLineSpacingArchive::default_instance(TSWPSOS::SpecSetLineSpacingArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetLineSpacingArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecSetLineSpacingArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecSetLineSpacingArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWP::LineSpacingArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_276EA4D28(v2);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::SpecSetLineSpacingArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v22) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
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

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSWP::LineSpacingArchive>(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_276F51674(a3, v16, v7);
        }

        else
        {
LABEL_12:
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
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21 != 0;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_276EA4A1C(a3, &v22))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *TSWPSOS::SpecSetLineSpacingArchive::_InternalSerialize(TSWPSOS::SpecSetLineSpacingArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
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

    a2 = TSWP::LineSpacingArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 32);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecSetLineSpacingArchive::ByteSizeLong(TSWPSOS::SpecSetLineSpacingArchive *this)
{
  v2 = *(this + 4);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = TSWP::LineSpacingArchive::ByteSizeLong(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSWPSOS::SpecSetLineSpacingArchive::MergeFrom(TSWPSOS::SpecSetLineSpacingArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecSetLineSpacingArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecSetLineSpacingArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecSetLineSpacingArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::LineSpacingArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSWP::_LineSpacingArchive_default_instance_;
      }

      this = TSWP::LineSpacingArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetLineSpacingArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetLineSpacingArchive::Clear(this);

    return TSWPSOS::SpecSetLineSpacingArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetLineSpacingArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecSetLineSpacingArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetLineSpacingArchive::Clear(this);

    return TSWPSOS::SpecSetLineSpacingArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetLineSpacingArchive::InternalSwap(TSWPSOS::SpecSetLineSpacingArchive *this, TSWPSOS::SpecSetLineSpacingArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  return result;
}

TSP::Reference *TSWPSOS::SpecSetListStyleArchive::clear_list_style(TSWPSOS::SpecSetListStyleArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWPSOS::SpecSetListStyleArchive *TSWPSOS::SpecSetListStyleArchive::SpecSetListStyleArchive(TSWPSOS::SpecSetListStyleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288604AB0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetListStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288604AB0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetListStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecSetListStyleArchive *TSWPSOS::SpecSetListStyleArchive::SpecSetListStyleArchive(TSWPSOS::SpecSetListStyleArchive *this, const TSWPSOS::SpecSetListStyleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288604AB0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276EA4CDC(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 32) = *(a2 + 32);
  return this;
}

void TSWPSOS::SpecSetListStyleArchive::~SpecSetListStyleArchive(TSWPSOS::SpecSetListStyleArchive *this)
{
  if (this != &TSWPSOS::_SpecSetListStyleArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecSetListStyleArchive::~SpecSetListStyleArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecSetListStyleArchive::default_instance(TSWPSOS::SpecSetListStyleArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetListStyleArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecSetListStyleArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecSetListStyleArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::Reference::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_276EA4D28(v2);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::SpecSetListStyleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v23) & 1) == 0)
  {
    while (1)
    {
      v7 = (v23 + 1);
      v8 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v9 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
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

            v18 = MEMORY[0x277CA3250](v17);
            LODWORD(v16) = v18;
            *(a1 + 24) = v18;
            v7 = v23;
          }

          v12 = sub_276F4F9E8(a3, v16, v7);
        }

        else
        {
LABEL_12:
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
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v23 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v23 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v21 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v23 = v21;
      *(a1 + 32) = v22 != 0;
      if (!v21)
      {
LABEL_37:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_276EA4A1C(a3, &v23))
      {
        goto LABEL_2;
      }
    }

    v7 = (v23 + 2);
LABEL_6:
    v23 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

unsigned __int8 *TSWPSOS::SpecSetListStyleArchive::_InternalSerialize(TSWPSOS::SpecSetListStyleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
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

    v12 = *(this + 32);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecSetListStyleArchive::ByteSizeLong(TSWPSOS::SpecSetListStyleArchive *this)
{
  v2 = *(this + 4);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSWPSOS::SpecSetListStyleArchive::MergeFrom(TSWPSOS::SpecSetListStyleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecSetListStyleArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecSetListStyleArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecSetListStyleArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
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

        v6 = MEMORY[0x277CA3250](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      this = TSP::Reference::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetListStyleArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetListStyleArchive::Clear(this);

    return TSWPSOS::SpecSetListStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetListStyleArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecSetListStyleArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetListStyleArchive::Clear(this);

    return TSWPSOS::SpecSetListStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWPSOS::SpecSetListStyleArchive::IsInitialized(TSWPSOS::SpecSetListStyleArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSWPSOS::SpecSetListStyleArchive::InternalSwap(TSWPSOS::SpecSetListStyleArchive *this, TSWPSOS::SpecSetListStyleArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  return result;
}

uint64_t TSWPSOS::SpecSetListStyleBoolArrayArchive::SpecSetListStyleBoolArrayArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288604B60;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = 0;
  return result;
}

{
  *result = &unk_288604B60;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = 0;
  return result;
}

TSWPSOS::SpecSetListStyleBoolArrayArchive *TSWPSOS::SpecSetListStyleBoolArrayArchive::SpecSetListStyleBoolArrayArchive(TSWPSOS::SpecSetListStyleBoolArrayArchive *this, const TSWPSOS::SpecSetListStyleBoolArrayArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288604B60;
  *(this + 4) = *(a2 + 4);
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  v5 = *(a2 + 6);
  if (v5)
  {
    sub_276D4D368(this + 6, v5);
    v6 = *(this + 4);
    *(this + 6) += *(a2 + 6);
    memcpy(v6, *(a2 + 4), *(a2 + 6));
  }

  v7 = *(a2 + 1);
  if (v7)
  {
    sub_276EA4CDC(v4, (v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 20) = *(a2 + 20);
  return this;
}

void sub_276EB387C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    sub_276F57848(v1);
  }

  _Unwind_Resume(exception_object);
}

void TSWPSOS::SpecSetListStyleBoolArrayArchive::~SpecSetListStyleBoolArrayArchive(TSWPSOS::SpecSetListStyleBoolArrayArchive *this)
{
  sub_276E4E808(this + 1);
  if (*(this + 7) >= 1)
  {
    v2 = *(this + 4);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }
}

{
  TSWPSOS::SpecSetListStyleBoolArrayArchive::~SpecSetListStyleBoolArrayArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecSetListStyleBoolArrayArchive::default_instance(TSWPSOS::SpecSetListStyleBoolArrayArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetListStyleBoolArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecSetListStyleBoolArrayArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecSetListStyleBoolArrayArchive::Clear(TSWPSOS::SpecSetListStyleBoolArrayArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 4) = 0;
  *(result + 16) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWPSOS::SpecSetListStyleBoolArrayArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  v5 = 0;
  if (sub_276EA4A1C(a3, &v30))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (v30 + 1);
    v8 = *v30;
    if ((*v30 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v30 + 2);
LABEL_6:
      v30 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v9 - 128));
    v30 = TagFallback;
    if (!TagFallback)
    {
      goto LABEL_53;
    }

    v7 = TagFallback;
    v8 = v23;
LABEL_7:
    v10 = v8 >> 3;
    if (v8 >> 3 != 3)
    {
      break;
    }

    if (v8 != 24)
    {
      goto LABEL_42;
    }

    v5 |= 2u;
    v20 = (v7 + 1);
    v19 = *v7;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_33;
    }

    v21 = *v20;
    v19 = (v21 << 7) + v19 - 128;
    if ((v21 & 0x80000000) == 0)
    {
      v20 = (v7 + 2);
LABEL_33:
      v30 = v20;
      *(a1 + 41) = v19 != 0;
      goto LABEL_50;
    }

    v26 = google::protobuf::internal::VarintParseSlow64(v7, v19);
    v30 = v26;
    *(a1 + 41) = v27 != 0;
    if (!v26)
    {
      goto LABEL_53;
    }

LABEL_50:
    if (sub_276EA4A1C(a3, &v30))
    {
      goto LABEL_2;
    }
  }

  if (v10 == 2)
  {
    if (v8 != 16)
    {
      goto LABEL_42;
    }

    v5 |= 1u;
    v17 = (v7 + 1);
    v16 = *v7;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    v18 = *v17;
    v16 = (v18 << 7) + v16 - 128;
    if ((v18 & 0x80000000) == 0)
    {
      v17 = (v7 + 2);
LABEL_28:
      v30 = v17;
      *(a1 + 40) = v16 != 0;
      goto LABEL_50;
    }

    v24 = google::protobuf::internal::VarintParseSlow64(v7, v16);
    v30 = v24;
    *(a1 + 40) = v25 != 0;
    if (!v24)
    {
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  if (v10 != 1)
  {
    goto LABEL_42;
  }

  if (v8 != 8)
  {
    if (v8 == 10)
    {
      v28 = google::protobuf::internal::PackedBoolParser();
      goto LABEL_49;
    }

LABEL_42:
    if (v8)
    {
      v29 = (v8 & 7) == 4;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      *(a3 + 80) = v8 - 1;
      goto LABEL_2;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_276EA4A94((a1 + 8));
    }

    v28 = google::protobuf::internal::UnknownFieldParse();
LABEL_49:
    v30 = v28;
    if (!v28)
    {
      goto LABEL_53;
    }

    goto LABEL_50;
  }

  v11 = v7 - 1;
  while (1)
  {
    v30 = (v11 + 1);
    v12 = v11[1];
    if ((v12 & 0x8000000000000000) != 0)
    {
      v12 = (v11[2] << 7) + v12 - 128;
      if (v11[2] < 0)
      {
        v11 = google::protobuf::internal::VarintParseSlow64((v11 + 1), v12);
      }

      else
      {
        v11 += 3;
      }
    }

    else
    {
      v11 += 2;
    }

    v30 = v11;
    v13 = v12 != 0;
    v14 = *(a1 + 24);
    if (v14 == *(a1 + 28))
    {
      v15 = v14 + 1;
      sub_276D4D368((a1 + 24), v14 + 1);
      *(*(a1 + 32) + v14) = v13;
      v11 = v30;
    }

    else
    {
      *(*(a1 + 32) + v14) = v13;
      v15 = v14 + 1;
    }

    *(a1 + 24) = v15;
    if (!v11)
    {
      break;
    }

    if (*a3 <= v11 || *v11 != 8)
    {
      goto LABEL_50;
    }
  }

LABEL_53:
  v30 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

unsigned __int8 *TSWPSOS::SpecSetListStyleBoolArrayArchive::_InternalSerialize(TSWPSOS::SpecSetListStyleBoolArrayArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 6);
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 4) + i);
      *a2 = 8;
      a2[1] = v7;
      a2 += 2;
    }
  }

  v8 = *(this + 4);
  if (v8)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 40);
    *a2 = 16;
    a2[1] = v9;
    a2 += 2;
  }

  if ((v8 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 41);
    *a2 = 24;
    a2[1] = v10;
    a2 += 2;
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecSetListStyleBoolArrayArchive::ByteSizeLong(TSWPSOS::SpecSetListStyleBoolArrayArchive *this)
{
  v1 = *(this + 4);
  v2 = (v1 & 2) + 2 * *(this + 6);
  v3 = 2 * (v1 & 1);
  v4 = v2 + v3;
  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v4, this + 20);
  }

  *(this + 5) = v4;
  return v2 + v3;
}

uint64_t TSWPSOS::SpecSetListStyleBoolArrayArchive::MergeFrom(TSWPSOS::SpecSetListStyleBoolArrayArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecSetListStyleBoolArrayArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecSetListStyleBoolArrayArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecSetListStyleBoolArrayArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(v3 + 24);
    sub_276D4D368((v3 + 24), v6 + v5);
    v7 = *(v3 + 32);
    *(v3 + 24) += *(a2 + 6);
    this = memcpy((v7 + v6), *(a2 + 4), *(a2 + 6));
  }

  v8 = *(a2 + 4);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      *(v3 + 40) = *(a2 + 40);
    }

    if ((v8 & 2) != 0)
    {
      *(v3 + 41) = *(a2 + 41);
    }

    *(v3 + 16) |= v8;
  }

  return this;
}

TSWPSOS::SpecSetListStyleBoolArrayArchive *TSWPSOS::SpecSetListStyleBoolArrayArchive::CopyFrom(TSWPSOS::SpecSetListStyleBoolArrayArchive *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 4) = 0;
    *(v5 + 16) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_276EA4D28(v5);
    }

    return TSWPSOS::SpecSetListStyleBoolArrayArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

const TSWPSOS::SpecSetListStyleBoolArrayArchive *TSWPSOS::SpecSetListStyleBoolArrayArchive::CopyFrom(const TSWPSOS::SpecSetListStyleBoolArrayArchive *this, const TSWPSOS::SpecSetListStyleBoolArrayArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 4) = 0;
    *(v5 + 16) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_276EA4D28(v5);
    }

    return TSWPSOS::SpecSetListStyleBoolArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSWPSOS::SpecSetListStyleBoolArrayArchive::InternalSwap(TSWPSOS::SpecSetListStyleBoolArrayArchive *this, TSWPSOS::SpecSetListStyleBoolArrayArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  LOWORD(v5) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v5;
  return result;
}

uint64_t TSWPSOS::SpecSetListStyleFloatArrayArchive::SpecSetListStyleFloatArrayArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288604C10;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = 0;
  return result;
}

{
  *result = &unk_288604C10;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = 0;
  return result;
}

TSWPSOS::SpecSetListStyleFloatArrayArchive *TSWPSOS::SpecSetListStyleFloatArrayArchive::SpecSetListStyleFloatArrayArchive(TSWPSOS::SpecSetListStyleFloatArrayArchive *this, const TSWPSOS::SpecSetListStyleFloatArrayArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288604C10;
  *(this + 4) = *(a2 + 4);
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  v5 = *(a2 + 6);
  if (v5)
  {
    sub_276D4D210(this + 6, v5);
    v6 = *(this + 4);
    *(this + 6) += *(a2 + 6);
    memcpy(v6, *(a2 + 4), 4 * *(a2 + 6));
  }

  v7 = *(a2 + 1);
  if (v7)
  {
    sub_276EA4CDC(v4, (v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 20) = *(a2 + 20);
  return this;
}

void sub_276EB41C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    sub_276F57848(v1);
  }

  _Unwind_Resume(exception_object);
}

void TSWPSOS::SpecSetListStyleFloatArrayArchive::~SpecSetListStyleFloatArrayArchive(TSWPSOS::SpecSetListStyleFloatArrayArchive *this)
{
  sub_276E4E808(this + 1);
  if (*(this + 7) >= 1)
  {
    v2 = *(this + 4);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }
}

{
  TSWPSOS::SpecSetListStyleFloatArrayArchive::~SpecSetListStyleFloatArrayArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecSetListStyleFloatArrayArchive::default_instance(TSWPSOS::SpecSetListStyleFloatArrayArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetListStyleFloatArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecSetListStyleFloatArrayArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecSetListStyleFloatArrayArchive::Clear(TSWPSOS::SpecSetListStyleFloatArrayArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 4) = 0;
  *(result + 16) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWPSOS::SpecSetListStyleFloatArrayArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v29) & 1) == 0)
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
        goto LABEL_47;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_36;
        }

        v5 |= 2u;
        v19 = (v7 + 1);
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_27;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_27:
          v29 = v19;
          *(a1 + 41) = v18 != 0;
          goto LABEL_44;
        }

        v25 = google::protobuf::internal::VarintParseSlow64(v7, v18);
        v29 = v25;
        *(a1 + 41) = v26 != 0;
        if (!v25)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v10 != 2)
        {
          if (v10 != 1)
          {
            goto LABEL_36;
          }

          if (v8 == 13)
          {
            v11 = v7 - 1;
            v12 = *(a1 + 24);
            do
            {
              v13 = (v11 + 1);
              v29 = (v11 + 1);
              v14 = *(v11 + 1);
              if (v12 == *(a1 + 28))
              {
                sub_276D4D210((a1 + 24), v12 + 1);
                *(*(a1 + 32) + 4 * v12) = v14;
                v13 = v29;
              }

              else
              {
                *(*(a1 + 32) + 4 * v12) = v14;
              }

              *(a1 + 24) = ++v12;
              v11 = v13 + 4;
              v29 = (v13 + 4);
            }

            while (*a3 > v13 + 4 && *v11 == 13);
            goto LABEL_44;
          }

          if (v8 == 10)
          {
            v27 = MEMORY[0x277CA34C0](a1 + 24, v7, a3);
          }

          else
          {
LABEL_36:
            if (v8)
            {
              v28 = (v8 & 7) == 4;
            }

            else
            {
              v28 = 1;
            }

            if (v28)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_276EA4A94((a1 + 8));
            }

            v27 = google::protobuf::internal::UnknownFieldParse();
          }

          v29 = v27;
          if (!v27)
          {
LABEL_47:
            v29 = 0;
            goto LABEL_2;
          }

          goto LABEL_44;
        }

        if (v8 != 16)
        {
          goto LABEL_36;
        }

        v5 |= 1u;
        v16 = (v7 + 1);
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_22;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v7 + 2);
LABEL_22:
          v29 = v16;
          *(a1 + 40) = v15 != 0;
          goto LABEL_44;
        }

        v23 = google::protobuf::internal::VarintParseSlow64(v7, v15);
        v29 = v23;
        *(a1 + 40) = v24 != 0;
        if (!v23)
        {
          goto LABEL_47;
        }
      }

LABEL_44:
      if (sub_276EA4A1C(a3, &v29))
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

unsigned __int8 *TSWPSOS::SpecSetListStyleFloatArrayArchive::_InternalSerialize(TSWPSOS::SpecSetListStyleFloatArrayArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 6);
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = 4 * v5;
    do
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 4) + v6);
      *a2 = 13;
      *(a2 + 1) = v8;
      a2 += 5;
      v6 += 4;
    }

    while (v7 != v6);
  }

  v9 = *(this + 4);
  if (v9)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 40);
    *a2 = 16;
    a2[1] = v10;
    a2 += 2;
  }

  if ((v9 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v11 = *(this + 41);
    *a2 = 24;
    a2[1] = v11;
    a2 += 2;
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

unint64_t TSWPSOS::SpecSetListStyleFloatArrayArchive::ByteSizeLong(TSWPSOS::SpecSetListStyleFloatArrayArchive *this)
{
  v1 = *(this + 4);
  v2 = (v1 & 2) + *(this + 6) + 4 * *(this + 6);
  v3 = 2 * (v1 & 1);
  v4 = v2 + v3;
  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v4, this + 20);
  }

  *(this + 5) = v4;
  return v2 + v3;
}

uint64_t TSWPSOS::SpecSetListStyleFloatArrayArchive::MergeFrom(TSWPSOS::SpecSetListStyleFloatArrayArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecSetListStyleFloatArrayArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecSetListStyleFloatArrayArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecSetListStyleFloatArrayArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(v3 + 24);
    sub_276D4D210((v3 + 24), v6 + v5);
    v7 = *(v3 + 32);
    *(v3 + 24) += *(a2 + 6);
    this = memcpy((v7 + 4 * v6), *(a2 + 4), 4 * *(a2 + 6));
  }

  v8 = *(a2 + 4);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      *(v3 + 40) = *(a2 + 40);
    }

    if ((v8 & 2) != 0)
    {
      *(v3 + 41) = *(a2 + 41);
    }

    *(v3 + 16) |= v8;
  }

  return this;
}

TSWPSOS::SpecSetListStyleFloatArrayArchive *TSWPSOS::SpecSetListStyleFloatArrayArchive::CopyFrom(TSWPSOS::SpecSetListStyleFloatArrayArchive *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 4) = 0;
    *(v5 + 16) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_276EA4D28(v5);
    }

    return TSWPSOS::SpecSetListStyleFloatArrayArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

const TSWPSOS::SpecSetListStyleFloatArrayArchive *TSWPSOS::SpecSetListStyleFloatArrayArchive::CopyFrom(const TSWPSOS::SpecSetListStyleFloatArrayArchive *this, const TSWPSOS::SpecSetListStyleFloatArrayArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 4) = 0;
    *(v5 + 16) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_276EA4D28(v5);
    }

    return TSWPSOS::SpecSetListStyleFloatArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSWPSOS::SpecSetListStyleFloatArrayArchive::InternalSwap(TSWPSOS::SpecSetListStyleFloatArrayArchive *this, TSWPSOS::SpecSetListStyleFloatArrayArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  LOWORD(v5) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v5;
  return result;
}

uint64_t *TSWPSOS::SpecSetListStyleImageDataArrayArchive::clear_list_style_image_data_array(uint64_t *this)
{
  v1 = *(this + 8);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSWP::ListStyleArchive_LabelImage::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSWPSOS::SpecSetListStyleImageDataArrayArchive *TSWPSOS::SpecSetListStyleImageDataArrayArchive::SpecSetListStyleImageDataArrayArchive(TSWPSOS::SpecSetListStyleImageDataArrayArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288604CC0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_SpecSetListStyleImageDataArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 24) = 0;
  return this;
}

TSWPSOS::SpecSetListStyleImageDataArrayArchive *TSWPSOS::SpecSetListStyleImageDataArrayArchive::SpecSetListStyleImageDataArrayArchive(TSWPSOS::SpecSetListStyleImageDataArrayArchive *this, const TSWPSOS::SpecSetListStyleImageDataArrayArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288604CC0;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_276EA5D4C(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_276EA4CDC(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 24) = *(a2 + 24);
  return this;
}

void TSWPSOS::SpecSetListStyleImageDataArrayArchive::~SpecSetListStyleImageDataArrayArchive(TSWPSOS::SpecSetListStyleImageDataArrayArchive *this)
{
  sub_276E4E808(this + 1);
  sub_276EA5984(this + 3);
}

{
  TSWPSOS::SpecSetListStyleImageDataArrayArchive::~SpecSetListStyleImageDataArrayArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWPSOS::SpecSetListStyleImageDataArrayArchive::default_instance(TSWPSOS::SpecSetListStyleImageDataArrayArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetListStyleImageDataArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecSetListStyleImageDataArrayArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecSetListStyleImageDataArrayArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSWP::ListStyleArchive_LabelImage::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_276EA4D28(v5);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::SpecSetListStyleImageDataArrayArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v33) & 1) == 0)
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
        goto LABEL_52;
      }

      v7 = TagFallback;
      v8 = v28;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v17 = (v7 + 1);
        v16 = *v7;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v7 + 2);
LABEL_30:
          v33 = v17;
          *(a1 + 49) = v16 != 0;
          goto LABEL_31;
        }

        v31 = google::protobuf::internal::VarintParseSlow64(v7, v16);
        v33 = v31;
        *(a1 + 49) = v32 != 0;
        if (!v31)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v10 != 2)
        {
          if (v10 != 1 || v8 != 10)
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
              sub_276EA4A94((a1 + 8));
            }

            v33 = google::protobuf::internal::UnknownFieldParse();
            if (!v33)
            {
LABEL_52:
              v33 = 0;
              goto LABEL_2;
            }

            goto LABEL_31;
          }

          v19 = (v7 - 1);
          while (2)
          {
            v20 = (v19 + 1);
            v33 = (v19 + 1);
            v21 = *(a1 + 40);
            if (!v21)
            {
LABEL_35:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v21 = *(a1 + 40);
              v22 = *v21;
              goto LABEL_36;
            }

            v26 = *(a1 + 32);
            v22 = *v21;
            if (v26 >= *v21)
            {
              if (v22 == *(a1 + 36))
              {
                goto LABEL_35;
              }

LABEL_36:
              *v21 = v22 + 1;
              v23 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ListStyleArchive_LabelImage>(*(a1 + 24));
              v24 = *(a1 + 32);
              v25 = *(a1 + 40) + 8 * v24;
              *(a1 + 32) = v24 + 1;
              *(v25 + 8) = v23;
              v20 = v33;
            }

            else
            {
              *(a1 + 32) = v26 + 1;
              v23 = *&v21[2 * v26 + 2];
            }

            v19 = sub_276F51B54(a3, v23, v20);
            v33 = v19;
            if (!v19)
            {
              goto LABEL_52;
            }

            if (*a3 <= v19 || *v19 != 10)
            {
              goto LABEL_31;
            }

            continue;
          }
        }

        if (v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 1u;
        v14 = (v7 + 1);
        v13 = *v7;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v15 = *v14;
        v13 = (v15 << 7) + v13 - 128;
        if ((v15 & 0x80000000) == 0)
        {
          v14 = (v7 + 2);
LABEL_25:
          v33 = v14;
          *(a1 + 48) = v13 != 0;
          goto LABEL_31;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v7, v13);
        v33 = v29;
        *(a1 + 48) = v30 != 0;
        if (!v29)
        {
          goto LABEL_52;
        }
      }

LABEL_31:
      if (sub_276EA4A1C(a3, &v33))
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

unsigned __int8 *TSWPSOS::SpecSetListStyleImageDataArrayArchive::_InternalSerialize(TSWPSOS::SpecSetListStyleImageDataArrayArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSWP::ListStyleArchive_LabelImage::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 4);
  if (v13)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 48);
    *a2 = 16;
    a2[1] = v14;
    a2 += 2;
  }

  if ((v13 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v15 = *(this + 49);
    *a2 = 24;
    a2[1] = v15;
    a2 += 2;
  }

  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecSetListStyleImageDataArrayArchive::ByteSizeLong(TSWPSOS::SpecSetListStyleImageDataArrayArchive *this)
{
  v2 = *(this + 4);
  v3 = *(this + 8);
  v4 = (v2 & 2) + v3;
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
      v9 = TSWP::ListStyleArchive_LabelImage::ByteSizeLong(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
    v2 = *(this + 4);
  }

  v10 = v4 + 2 * (v2 & 1u);
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v10, this + 20);
  }

  else
  {
    *(this + 5) = v10;
    return v4 + 2 * (v2 & 1u);
  }
}

uint64_t TSWPSOS::SpecSetListStyleImageDataArrayArchive::MergeFrom(TSWPSOS::SpecSetListStyleImageDataArrayArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecSetListStyleImageDataArrayArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecSetListStyleImageDataArrayArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecSetListStyleImageDataArrayArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_276EA5D4C(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      *(v3 + 48) = *(a2 + 48);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 49) = *(a2 + 49);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetListStyleImageDataArrayArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetListStyleImageDataArrayArchive::Clear(this);

    return TSWPSOS::SpecSetListStyleImageDataArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetListStyleImageDataArrayArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecSetListStyleImageDataArrayArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetListStyleImageDataArrayArchive::Clear(this);

    return TSWPSOS::SpecSetListStyleImageDataArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWPSOS::SpecSetListStyleImageDataArrayArchive::IsInitialized(TSWPSOS::SpecSetListStyleImageDataArrayArchive *this)
{
  if ((*(this + 16) & 2) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v4 = v3 - 1;
    IsInitialized = TSWP::ListStyleArchive_LabelImage::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v1;
}

__n128 TSWPSOS::SpecSetListStyleImageDataArrayArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276E4FC00(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  LOWORD(v5) = this[3].n128_u16[0];
  this[3].n128_u16[0] = a2[3].n128_u16[0];
  a2[3].n128_u16[0] = v5;
  return result;
}

uint64_t *TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::clear_list_style_list_label_geometry_array(uint64_t *this)
{
  v1 = *(this + 8);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSWP::ListStyleArchive_LabelGeometry::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive *TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::SpecSetListStyleListLabelGeometryArrayArchive(TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288604D70;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_SpecSetListStyleListLabelGeometryArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 24) = 0;
  return this;
}

TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive *TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::SpecSetListStyleListLabelGeometryArrayArchive(TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive *this, const TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288604D70;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_276EA5C8C(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_276EA4CDC(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 24) = *(a2 + 24);
  return this;
}

void TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::~SpecSetListStyleListLabelGeometryArrayArchive(TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive *this)
{
  sub_276E4E808(this + 1);
  sub_276EA58EC(this + 3);
}

{
  TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::~SpecSetListStyleListLabelGeometryArrayArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::default_instance(TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetListStyleListLabelGeometryArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecSetListStyleListLabelGeometryArrayArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSWP::ListStyleArchive_LabelGeometry::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_276EA4D28(v5);
  }

  return this;
}

google::protobuf::internal *TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v33) & 1) == 0)
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
        goto LABEL_52;
      }

      v7 = TagFallback;
      v8 = v28;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v17 = (v7 + 1);
        v16 = *v7;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v7 + 2);
LABEL_30:
          v33 = v17;
          *(a1 + 49) = v16 != 0;
          goto LABEL_31;
        }

        v31 = google::protobuf::internal::VarintParseSlow64(v7, v16);
        v33 = v31;
        *(a1 + 49) = v32 != 0;
        if (!v31)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v10 != 2)
        {
          if (v10 != 1 || v8 != 10)
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
              sub_276EA4A94((a1 + 8));
            }

            v33 = google::protobuf::internal::UnknownFieldParse();
            if (!v33)
            {
LABEL_52:
              v33 = 0;
              goto LABEL_2;
            }

            goto LABEL_31;
          }

          v19 = (v7 - 1);
          while (2)
          {
            v20 = (v19 + 1);
            v33 = (v19 + 1);
            v21 = *(a1 + 40);
            if (!v21)
            {
LABEL_35:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v21 = *(a1 + 40);
              v22 = *v21;
              goto LABEL_36;
            }

            v26 = *(a1 + 32);
            v22 = *v21;
            if (v26 >= *v21)
            {
              if (v22 == *(a1 + 36))
              {
                goto LABEL_35;
              }

LABEL_36:
              *v21 = v22 + 1;
              v23 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ListStyleArchive_LabelGeometry>(*(a1 + 24));
              v24 = *(a1 + 32);
              v25 = *(a1 + 40) + 8 * v24;
              *(a1 + 32) = v24 + 1;
              *(v25 + 8) = v23;
              v20 = v33;
            }

            else
            {
              *(a1 + 32) = v26 + 1;
              v23 = *&v21[2 * v26 + 2];
            }

            v19 = sub_276F51A84(a3, v23, v20);
            v33 = v19;
            if (!v19)
            {
              goto LABEL_52;
            }

            if (*a3 <= v19 || *v19 != 10)
            {
              goto LABEL_31;
            }

            continue;
          }
        }

        if (v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 1u;
        v14 = (v7 + 1);
        v13 = *v7;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v15 = *v14;
        v13 = (v15 << 7) + v13 - 128;
        if ((v15 & 0x80000000) == 0)
        {
          v14 = (v7 + 2);
LABEL_25:
          v33 = v14;
          *(a1 + 48) = v13 != 0;
          goto LABEL_31;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v7, v13);
        v33 = v29;
        *(a1 + 48) = v30 != 0;
        if (!v29)
        {
          goto LABEL_52;
        }
      }

LABEL_31:
      if (sub_276EA4A1C(a3, &v33))
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

unsigned __int8 *TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::_InternalSerialize(TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSWP::ListStyleArchive_LabelGeometry::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 4);
  if (v13)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 48);
    *a2 = 16;
    a2[1] = v14;
    a2 += 2;
  }

  if ((v13 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v15 = *(this + 49);
    *a2 = 24;
    a2[1] = v15;
    a2 += 2;
  }

  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::ByteSizeLong(TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive *this)
{
  v2 = *(this + 4);
  v3 = *(this + 8);
  v4 = (v2 & 2) + v3;
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
      v9 = TSWP::ListStyleArchive_LabelGeometry::ByteSizeLong(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
    v2 = *(this + 4);
  }

  v10 = v4 + 2 * (v2 & 1u);
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v10, this + 20);
  }

  else
  {
    *(this + 5) = v10;
    return v4 + 2 * (v2 & 1u);
  }
}

uint64_t TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::MergeFrom(TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_276EA5C8C(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      *(v3 + 48) = *(a2 + 48);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 49) = *(a2 + 49);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::Clear(this);

    return TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::CopyFrom(uint64_t *this, const TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::Clear(this);

    return TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSWPSOS::SpecSetListStyleListLabelGeometryArrayArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276E4FC00(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  LOWORD(v5) = this[3].n128_u16[0];
  this[3].n128_u16[0] = a2[3].n128_u16[0];
  a2[3].n128_u16[0] = v5;
  return result;
}

uint64_t TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::SpecSetListStyleListLabelTypeArrayArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288604E20;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = 0;
  return result;
}

{
  *result = &unk_288604E20;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = 0;
  return result;
}

TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive *TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::SpecSetListStyleListLabelTypeArrayArchive(TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive *this, const TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288604E20;
  *(this + 4) = *(a2 + 4);
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  v5 = *(a2 + 6);
  if (v5)
  {
    sub_276D4D210(this + 6, v5);
    v6 = *(this + 4);
    *(this + 6) += *(a2 + 6);
    memcpy(v6, *(a2 + 4), 4 * *(a2 + 6));
  }

  v7 = *(a2 + 1);
  if (v7)
  {
    sub_276EA4CDC(v4, (v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 20) = *(a2 + 20);
  return this;
}

void sub_276EB6168(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    sub_276F57848(v1);
  }

  _Unwind_Resume(exception_object);
}

void TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::~SpecSetListStyleListLabelTypeArrayArchive(TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive *this)
{
  sub_276E4E808(this + 1);
  if (*(this + 7) >= 1)
  {
    v2 = *(this + 4);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }
}

{
  TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::~SpecSetListStyleListLabelTypeArrayArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::default_instance(TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetListStyleListLabelTypeArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecSetListStyleListLabelTypeArrayArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::Clear(TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 4) = 0;
  *(result + 16) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v34 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v34) & 1) == 0)
  {
    while (1)
    {
      v7 = (v34 + 1);
      v8 = *v34;
      if ((*v34 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = *v7;
      v10 = v8 + (v9 << 7);
      v8 = v10 - 128;
      if ((v9 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v34, (v10 - 128));
      v34 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_56;
      }

      v7 = TagFallback;
      v8 = v27;
LABEL_7:
      v11 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_45;
        }

        v5 |= 2u;
        v24 = (v7 + 1);
        v23 = *v7;
        if ((v23 & 0x8000000000000000) != 0)
        {
          v25 = *v24;
          v23 = (v25 << 7) + v23 - 128;
          if (v25 < 0)
          {
            v30 = google::protobuf::internal::VarintParseSlow64(v7, v23);
            v34 = v30;
            *(a1 + 41) = v31 != 0;
            if (!v30)
            {
              goto LABEL_56;
            }

            goto LABEL_53;
          }

          v24 = (v7 + 2);
        }

        v34 = v24;
        *(a1 + 41) = v23 != 0;
      }

      else
      {
        if (v11 != 2)
        {
          if (v11 != 1)
          {
            goto LABEL_45;
          }

          if (v8 == 8)
          {
            v12 = (v7 - 1);
            while (1)
            {
              v34 = (v12 + 1);
              v13 = *(v12 + 1);
              v14 = (v12 + 2);
              if ((v13 & 0x8000000000000000) != 0)
              {
                v15 = *v14;
                v16 = (v15 << 7) + v13;
                v13 = (v16 - 128);
                if (v15 < 0)
                {
                  v34 = google::protobuf::internal::VarintParseSlow64((v12 + 1), (v16 - 128));
                  if (!v34)
                  {
                    goto LABEL_56;
                  }

                  v13 = v19;
                  goto LABEL_16;
                }

                v14 = (v12 + 3);
              }

              v34 = v14;
LABEL_16:
              if (TSWP::ListStyleArchive_LabelType_IsValid(v13))
              {
                v17 = *(a1 + 24);
                if (v17 == *(a1 + 28))
                {
                  v18 = v17 + 1;
                  sub_276D4D210((a1 + 24), v17 + 1);
                  *(*(a1 + 32) + 4 * v17) = v13;
                }

                else
                {
                  *(*(a1 + 32) + 4 * v17) = v13;
                  v18 = v17 + 1;
                }

                *(a1 + 24) = v18;
              }

              else
              {
                sub_276F5785C((a1 + 8));
              }

              v12 = v34;
              if (*a3 <= v34 || *v34 != 8)
              {
                goto LABEL_53;
              }
            }
          }

          if (v8 == 10)
          {
            *&v35 = a1 + 24;
            *(&v35 + 1) = TSWP::ListStyleArchive_LabelType_IsValid;
            v36 = a1 + 8;
            v37 = 1;
            v32 = sub_276EA5A08(a3, v7, &v35);
          }

          else
          {
LABEL_45:
            if (v8)
            {
              v33 = (v8 & 7) == 4;
            }

            else
            {
              v33 = 1;
            }

            if (v33)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_276EA4A94((a1 + 8));
            }

            v32 = google::protobuf::internal::UnknownFieldParse();
          }

          v34 = v32;
          if (!v32)
          {
LABEL_56:
            v34 = 0;
            goto LABEL_2;
          }

          goto LABEL_53;
        }

        if (v8 != 16)
        {
          goto LABEL_45;
        }

        v5 |= 1u;
        v21 = (v7 + 1);
        v20 = *v7;
        if ((v20 & 0x8000000000000000) != 0)
        {
          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if (v22 < 0)
          {
            v28 = google::protobuf::internal::VarintParseSlow64(v7, v20);
            v34 = v28;
            *(a1 + 40) = v29 != 0;
            if (!v28)
            {
              goto LABEL_56;
            }

            goto LABEL_53;
          }

          v21 = (v7 + 2);
        }

        v34 = v21;
        *(a1 + 40) = v20 != 0;
      }

LABEL_53:
      if (sub_276EA4A1C(a3, &v34))
      {
        goto LABEL_2;
      }
    }

    v7 = (v34 + 2);
LABEL_6:
    v34 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v34;
}

unsigned __int8 *TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::_InternalSerialize(TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 6);
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 4) + 4 * i);
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
        }

        else
        {
          a2[2] = v8;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v7;
        a2 += 2;
      }
    }
  }

  v11 = *(this + 4);
  if (v11)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 40);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  if ((v11 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 41);
    *a2 = 24;
    a2[1] = v13;
    a2 += 2;
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::ByteSizeLong(TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive *this)
{
  v1 = *(this + 4);
  v2 = *(this + 6);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(this + 4) + 4 * v3);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v4 += v6;
      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = 0;
  }

  v7 = (v1 & 2) + v2 + 2 * (v1 & 1) + v4;
  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v7, this + 20);
  }

  *(this + 5) = v7;
  return (v1 & 2) + v2 + 2 * (v1 & 1) + v4;
}

uint64_t TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::MergeFrom(TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(v3 + 24);
    sub_276D4D210((v3 + 24), v6 + v5);
    v7 = *(v3 + 32);
    *(v3 + 24) += *(a2 + 6);
    this = memcpy((v7 + 4 * v6), *(a2 + 4), 4 * *(a2 + 6));
  }

  v8 = *(a2 + 4);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      *(v3 + 40) = *(a2 + 40);
    }

    if ((v8 & 2) != 0)
    {
      *(v3 + 41) = *(a2 + 41);
    }

    *(v3 + 16) |= v8;
  }

  return this;
}

TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive *TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::CopyFrom(TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 4) = 0;
    *(v5 + 16) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_276EA4D28(v5);
    }

    return TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

const TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive *TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::CopyFrom(const TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive *this, const TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 4) = 0;
    *(v5 + 16) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_276EA4D28(v5);
    }

    return TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive::InternalSwap(TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive *this, TSWPSOS::SpecSetListStyleListLabelTypeArrayArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  LOWORD(v5) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v5;
  return result;
}

uint64_t TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::SpecSetListStyleListNumberTypeArrayArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288604ED0;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = 0;
  return result;
}

{
  *result = &unk_288604ED0;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = 0;
  return result;
}

TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive *TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::SpecSetListStyleListNumberTypeArrayArchive(TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive *this, const TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288604ED0;
  *(this + 4) = *(a2 + 4);
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  v5 = *(a2 + 6);
  if (v5)
  {
    sub_276D4D210(this + 6, v5);
    v6 = *(this + 4);
    *(this + 6) += *(a2 + 6);
    memcpy(v6, *(a2 + 4), 4 * *(a2 + 6));
  }

  v7 = *(a2 + 1);
  if (v7)
  {
    sub_276EA4CDC(v4, (v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 20) = *(a2 + 20);
  return this;
}

void sub_276EB6BA4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    sub_276F57848(v1);
  }

  _Unwind_Resume(exception_object);
}

void TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::~SpecSetListStyleListNumberTypeArrayArchive(TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive *this)
{
  sub_276E4E808(this + 1);
  if (*(this + 7) >= 1)
  {
    v2 = *(this + 4);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }
}

{
  TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::~SpecSetListStyleListNumberTypeArrayArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::default_instance(TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetListStyleListNumberTypeArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecSetListStyleListNumberTypeArrayArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::Clear(TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 4) = 0;
  *(result + 16) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v34 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v34) & 1) == 0)
  {
    while (1)
    {
      v7 = (v34 + 1);
      v8 = *v34;
      if ((*v34 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = *v7;
      v10 = v8 + (v9 << 7);
      v8 = v10 - 128;
      if ((v9 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v34, (v10 - 128));
      v34 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_56;
      }

      v7 = TagFallback;
      v8 = v27;
LABEL_7:
      v11 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_45;
        }

        v5 |= 2u;
        v24 = (v7 + 1);
        v23 = *v7;
        if ((v23 & 0x8000000000000000) != 0)
        {
          v25 = *v24;
          v23 = (v25 << 7) + v23 - 128;
          if (v25 < 0)
          {
            v30 = google::protobuf::internal::VarintParseSlow64(v7, v23);
            v34 = v30;
            *(a1 + 41) = v31 != 0;
            if (!v30)
            {
              goto LABEL_56;
            }

            goto LABEL_53;
          }

          v24 = (v7 + 2);
        }

        v34 = v24;
        *(a1 + 41) = v23 != 0;
      }

      else
      {
        if (v11 != 2)
        {
          if (v11 != 1)
          {
            goto LABEL_45;
          }

          if (v8 == 8)
          {
            v12 = (v7 - 1);
            while (1)
            {
              v34 = (v12 + 1);
              v13 = *(v12 + 1);
              v14 = (v12 + 2);
              if ((v13 & 0x8000000000000000) != 0)
              {
                v15 = *v14;
                v16 = (v15 << 7) + v13;
                v13 = (v16 - 128);
                if (v15 < 0)
                {
                  v34 = google::protobuf::internal::VarintParseSlow64((v12 + 1), (v16 - 128));
                  if (!v34)
                  {
                    goto LABEL_56;
                  }

                  v13 = v19;
                  goto LABEL_16;
                }

                v14 = (v12 + 3);
              }

              v34 = v14;
LABEL_16:
              if (TSWP::ListStyleArchive_NumberType_IsValid(v13))
              {
                v17 = *(a1 + 24);
                if (v17 == *(a1 + 28))
                {
                  v18 = v17 + 1;
                  sub_276D4D210((a1 + 24), v17 + 1);
                  *(*(a1 + 32) + 4 * v17) = v13;
                }

                else
                {
                  *(*(a1 + 32) + 4 * v17) = v13;
                  v18 = v17 + 1;
                }

                *(a1 + 24) = v18;
              }

              else
              {
                sub_276F5785C((a1 + 8));
              }

              v12 = v34;
              if (*a3 <= v34 || *v34 != 8)
              {
                goto LABEL_53;
              }
            }
          }

          if (v8 == 10)
          {
            *&v35 = a1 + 24;
            *(&v35 + 1) = TSWP::ListStyleArchive_NumberType_IsValid;
            v36 = a1 + 8;
            v37 = 1;
            v32 = sub_276EA5A08(a3, v7, &v35);
          }

          else
          {
LABEL_45:
            if (v8)
            {
              v33 = (v8 & 7) == 4;
            }

            else
            {
              v33 = 1;
            }

            if (v33)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_276EA4A94((a1 + 8));
            }

            v32 = google::protobuf::internal::UnknownFieldParse();
          }

          v34 = v32;
          if (!v32)
          {
LABEL_56:
            v34 = 0;
            goto LABEL_2;
          }

          goto LABEL_53;
        }

        if (v8 != 16)
        {
          goto LABEL_45;
        }

        v5 |= 1u;
        v21 = (v7 + 1);
        v20 = *v7;
        if ((v20 & 0x8000000000000000) != 0)
        {
          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if (v22 < 0)
          {
            v28 = google::protobuf::internal::VarintParseSlow64(v7, v20);
            v34 = v28;
            *(a1 + 40) = v29 != 0;
            if (!v28)
            {
              goto LABEL_56;
            }

            goto LABEL_53;
          }

          v21 = (v7 + 2);
        }

        v34 = v21;
        *(a1 + 40) = v20 != 0;
      }

LABEL_53:
      if (sub_276EA4A1C(a3, &v34))
      {
        goto LABEL_2;
      }
    }

    v7 = (v34 + 2);
LABEL_6:
    v34 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v34;
}

unsigned __int8 *TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::_InternalSerialize(TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 6);
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 4) + 4 * i);
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
        }

        else
        {
          a2[2] = v8;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v7;
        a2 += 2;
      }
    }
  }

  v11 = *(this + 4);
  if (v11)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 40);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  if ((v11 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 41);
    *a2 = 24;
    a2[1] = v13;
    a2 += 2;
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::ByteSizeLong(TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive *this)
{
  v1 = *(this + 4);
  v2 = *(this + 6);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(this + 4) + 4 * v3);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v4 += v6;
      ++v3;
    }

    while (v2 != v3);
  }

  else
  {
    v4 = 0;
  }

  v7 = (v1 & 2) + v2 + 2 * (v1 & 1) + v4;
  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v7, this + 20);
  }

  *(this + 5) = v7;
  return (v1 & 2) + v2 + 2 * (v1 & 1) + v4;
}

uint64_t TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::MergeFrom(TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(v3 + 24);
    sub_276D4D210((v3 + 24), v6 + v5);
    v7 = *(v3 + 32);
    *(v3 + 24) += *(a2 + 6);
    this = memcpy((v7 + 4 * v6), *(a2 + 4), 4 * *(a2 + 6));
  }

  v8 = *(a2 + 4);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      *(v3 + 40) = *(a2 + 40);
    }

    if ((v8 & 2) != 0)
    {
      *(v3 + 41) = *(a2 + 41);
    }

    *(v3 + 16) |= v8;
  }

  return this;
}

TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive *TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::CopyFrom(TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 4) = 0;
    *(v5 + 16) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_276EA4D28(v5);
    }

    return TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

const TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive *TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::CopyFrom(const TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive *this, const TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 4) = 0;
    *(v5 + 16) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_276EA4D28(v5);
    }

    return TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive::InternalSwap(TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive *this, TSWPSOS::SpecSetListStyleListNumberTypeArrayArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  LOWORD(v5) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v5;
  return result;
}

TSWPSOS::SpecSetListStyleStringArrayArchive *TSWPSOS::SpecSetListStyleStringArrayArchive::SpecSetListStyleStringArrayArchive(TSWPSOS::SpecSetListStyleStringArrayArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288604F80;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_SpecSetListStyleStringArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 24) = 0;
  return this;
}

TSWPSOS::SpecSetListStyleStringArrayArchive *TSWPSOS::SpecSetListStyleStringArrayArchive::SpecSetListStyleStringArrayArchive(TSWPSOS::SpecSetListStyleStringArrayArchive *this, const TSWPSOS::SpecSetListStyleStringArrayArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288604F80;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_276EA5460(this + 1, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_276EA4CDC(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 24) = *(a2 + 24);
  return this;
}

void TSWPSOS::SpecSetListStyleStringArrayArchive::~SpecSetListStyleStringArrayArchive(TSWPSOS::SpecSetListStyleStringArrayArchive *this)
{
  sub_276E4E808(this + 1);
  sub_276EA53C4(this + 3);
}

{
  TSWPSOS::SpecSetListStyleStringArrayArchive::~SpecSetListStyleStringArrayArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWPSOS::SpecSetListStyleStringArrayArchive::default_instance(TSWPSOS::SpecSetListStyleStringArrayArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetListStyleStringArrayArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecSetListStyleStringArrayArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecSetListStyleStringArrayArchive::Clear(TSWPSOS::SpecSetListStyleStringArrayArchive *this)
{
  result = sub_276EA4C0C(this + 24);
  v4 = *(this + 8);
  v3 = this + 8;
  *(v3 + 20) = 0;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return result;
}

google::protobuf::internal *TSWPSOS::SpecSetListStyleStringArrayArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v32 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v32) & 1) == 0)
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
      v8 = v27;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v17 = (v7 + 1);
        v16 = *v7;
        if ((v16 & 0x8000000000000000) != 0)
        {
          v18 = *v17;
          v16 = (v18 << 7) + v16 - 128;
          if (v18 < 0)
          {
            v30 = google::protobuf::internal::VarintParseSlow64(v7, v16);
            v32 = v30;
            *(a1 + 49) = v31 != 0;
            if (!v30)
            {
              goto LABEL_51;
            }

            goto LABEL_48;
          }

          v17 = (v7 + 2);
        }

        v32 = v17;
        *(a1 + 49) = v16 != 0;
      }

      else
      {
        if (v10 != 2)
        {
          if (v10 != 1 || v8 != 10)
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
              sub_276EA4A94((a1 + 8));
            }

            v32 = google::protobuf::internal::UnknownFieldParse();
            if (!v32)
            {
LABEL_51:
              v32 = 0;
              goto LABEL_2;
            }

            goto LABEL_48;
          }

          v19 = v7 - 1;
          while (2)
          {
            v32 = (v19 + 1);
            v20 = *(a1 + 40);
            if (!v20)
            {
              goto LABEL_37;
            }

            v21 = *(a1 + 32);
            v22 = *v20;
            if (v21 < *v20)
            {
              *(a1 + 32) = v21 + 1;
              goto LABEL_39;
            }

            if (v22 == *(a1 + 36))
            {
LABEL_37:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v20 = *(a1 + 40);
              v22 = *v20;
            }

            *v20 = v22 + 1;
            v23 = sub_276D34D8C(*(a1 + 24));
            v24 = *(a1 + 32);
            v25 = *(a1 + 40) + 8 * v24;
            *(a1 + 32) = v24 + 1;
            *(v25 + 8) = v23;
LABEL_39:
            v19 = google::protobuf::internal::InlineGreedyStringParser();
            v32 = v19;
            if (!v19)
            {
              goto LABEL_51;
            }

            if (*a3 <= v19 || *v19 != 10)
            {
              goto LABEL_48;
            }

            continue;
          }
        }

        if (v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 1u;
        v14 = (v7 + 1);
        v13 = *v7;
        if ((v13 & 0x8000000000000000) != 0)
        {
          v15 = *v14;
          v13 = (v15 << 7) + v13 - 128;
          if (v15 < 0)
          {
            v28 = google::protobuf::internal::VarintParseSlow64(v7, v13);
            v32 = v28;
            *(a1 + 48) = v29 != 0;
            if (!v28)
            {
              goto LABEL_51;
            }

            goto LABEL_48;
          }

          v14 = (v7 + 2);
        }

        v32 = v14;
        *(a1 + 48) = v13 != 0;
      }

LABEL_48:
      if (sub_276EA4A1C(a3, &v32))
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

unsigned __int8 *TSWPSOS::SpecSetListStyleStringArrayArchive::_InternalSerialize(TSWPSOS::SpecSetListStyleStringArrayArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 8);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      a2 = sub_276E57174(a3, 1, *(*(this + 5) + v7), a2);
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v8 = *(this + 4);
  if (v8)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 48);
    *a2 = 16;
    a2[1] = v9;
    a2 += 2;
  }

  if ((v8 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 49);
    *a2 = 24;
    a2[1] = v10;
    a2 += 2;
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWPSOS::SpecSetListStyleStringArrayArchive::ByteSizeLong(TSWPSOS::SpecSetListStyleStringArrayArchive *this)
{
  v1 = *(this + 4);
  v2 = *(this + 8);
  v3 = (v1 & 2) + v2;
  if (v2 >= 1)
  {
    v4 = (*(this + 5) + 8);
    do
    {
      v5 = *v4++;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      --v2;
    }

    while (v2);
  }

  v8 = v3 + 2 * (v1 & 1);
  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v8, this + 20);
  }

  *(this + 5) = v8;
  return v3 + 2 * (v1 & 1);
}

uint64_t TSWPSOS::SpecSetListStyleStringArrayArchive::MergeFrom(TSWPSOS::SpecSetListStyleStringArrayArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWPSOS::SpecSetListStyleStringArrayArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWPSOS::SpecSetListStyleStringArrayArchive::MergeFrom(uint64_t this, const TSWPSOS::SpecSetListStyleStringArrayArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_276EA5460((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      *(v3 + 48) = *(a2 + 48);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 49) = *(a2 + 49);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

TSWPSOS::SpecSetListStyleStringArrayArchive *TSWPSOS::SpecSetListStyleStringArrayArchive::CopyFrom(TSWPSOS::SpecSetListStyleStringArrayArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetListStyleStringArrayArchive::Clear(this);

    return TSWPSOS::SpecSetListStyleStringArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSWPSOS::SpecSetListStyleStringArrayArchive *TSWPSOS::SpecSetListStyleStringArrayArchive::CopyFrom(TSWPSOS::SpecSetListStyleStringArrayArchive *this, const TSWPSOS::SpecSetListStyleStringArrayArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWPSOS::SpecSetListStyleStringArrayArchive::Clear(this);

    return TSWPSOS::SpecSetListStyleStringArrayArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSWPSOS::SpecSetListStyleStringArrayArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276E4FC00(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  LOWORD(v5) = this[3].n128_u16[0];
  this[3].n128_u16[0] = a2[3].n128_u16[0];
  a2[3].n128_u16[0] = v5;
  return result;
}

uint64_t *TSWPSOS::SpecSetPaddingArchive::clear_padding(TSWPSOS::SpecSetPaddingArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSWP::PaddingArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWPSOS::SpecSetPaddingArchive *TSWPSOS::SpecSetPaddingArchive::SpecSetPaddingArchive(TSWPSOS::SpecSetPaddingArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288605030;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetPaddingArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288605030;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetPaddingArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

TSWPSOS::SpecSetPaddingArchive *TSWPSOS::SpecSetPaddingArchive::SpecSetPaddingArchive(TSWPSOS::SpecSetPaddingArchive *this, const TSWPSOS::SpecSetPaddingArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288605030;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276EA4CDC(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 32) = *(a2 + 32);
  return this;
}

void TSWPSOS::SpecSetPaddingArchive::~SpecSetPaddingArchive(TSWPSOS::SpecSetPaddingArchive *this)
{
  if (this != &TSWPSOS::_SpecSetPaddingArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWP::PaddingArchive::~PaddingArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWPSOS::SpecSetPaddingArchive::~SpecSetPaddingArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWPSOS::SpecSetPaddingArchive::default_instance(TSWPSOS::SpecSetPaddingArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetPaddingArchive_TSWPArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWPSOS::_SpecSetPaddingArchive_default_instance_;
}

uint64_t *TSWPSOS::SpecSetPaddingArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSWP::PaddingArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_276EA4D28(v2);
  }

  return this;
}