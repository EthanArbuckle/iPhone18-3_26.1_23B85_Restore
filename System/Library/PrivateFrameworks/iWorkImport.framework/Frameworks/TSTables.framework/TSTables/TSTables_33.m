uint64_t sub_22156A1AC(uint64_t result, TSCE::UuidReferencesArchive_TableWithUuidRef **a2, TSCE::UuidReferencesArchive_TableWithUuidRef **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156A25C(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferencesArchive_TableWithUuidRef>(v18);
      result = sub_22156A25C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156A26C(void *a1)
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
          TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::~OwnerIDMapArchive_OwnerIDMapArchiveEntry(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156A2F0(uint64_t result, TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry **a2, TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156A3A0(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry>(v18);
      result = sub_22156A3A0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156A3B0(void *a1)
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
          TSCE::FormulaOwnerInfoArchive::~FormulaOwnerInfoArchive(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156A434(uint64_t result, TSCE::FormulaOwnerInfoArchive **a2, TSCE::FormulaOwnerInfoArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156A4E4(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaOwnerInfoArchive>(v18);
      result = sub_22156A4E4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156A4F4(void *a1)
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
          TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::~RemoteDataValueMapArchive_RemoteDataMapEntry(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156A578(uint64_t result, TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry **a2, TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156A628(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry>(v18);
      result = sub_22156A628(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156A638(void *a1)
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
          TSCE::StockArchive_AttributeEntry::~StockArchive_AttributeEntry(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156A6BC(uint64_t result, TSCE::StockArchive_AttributeEntry **a2, TSCE::StockArchive_AttributeEntry **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156A76C(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::StockArchive_AttributeEntry>(v18);
      result = sub_22156A76C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156A77C(void *a1)
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
          TSCE::StockArchive::~StockArchive(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156A800(uint64_t result, TSCE::StockArchive **a2, TSCE::StockArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156A8B0(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::StockArchive>(v18);
      result = sub_22156A8B0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156A8C0(void *a1)
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
          TSCE::NameTrackedReferencePair::~NameTrackedReferencePair(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156A944(uint64_t result, TSCE::NameTrackedReferencePair **a2, TSCE::NameTrackedReferencePair **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156A9F4(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::NameTrackedReferencePair>(v18);
      result = sub_22156A9F4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156AA04(void *a1)
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
          TSCE::NamesByTrackedReferenceArchive::~NamesByTrackedReferenceArchive(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156AA88(uint64_t result, TSCE::NamesByTrackedReferenceArchive **a2, TSCE::NamesByTrackedReferenceArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156AB38(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::NamesByTrackedReferenceArchive>(v18);
      result = sub_22156AB38(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156AB48(void *a1)
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
          TSCE::UuidSetStoreArchive_UuidSet::~UuidSetStoreArchive_UuidSet(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156ABCC(uint64_t result, TSCE::UuidSetStoreArchive_UuidSet **a2, TSCE::UuidSetStoreArchive_UuidSet **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156AC7C(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidSetStoreArchive_UuidSet>(v18);
      result = sub_22156AC7C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156AC8C(void *a1)
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
          TSCE::UuidReferenceMapArchive_CellRefsForUuid::~UuidReferenceMapArchive_CellRefsForUuid(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156AD10(uint64_t result, TSCE::UuidReferenceMapArchive_CellRefsForUuid **a2, TSCE::UuidReferenceMapArchive_CellRefsForUuid **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156ADC0(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferenceMapArchive_CellRefsForUuid>(v18);
      result = sub_22156ADC0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156ADD0(void *a1)
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
          TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::~GroupByNodeMapArchive_CellRefsForGroupNode(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156AE54(uint64_t result, TSCE::GroupByNodeMapArchive_CellRefsForGroupNode **a2, TSCE::GroupByNodeMapArchive_CellRefsForGroupNode **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156AF04(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::GroupByNodeMapArchive_CellRefsForGroupNode>(v18);
      result = sub_22156AF04(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156AF14(void *a1)
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
          TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::~GroupByNodeMapArchive_GroupNodesForGroupBy(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156AF98(uint64_t result, TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy **a2, TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156B048(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy>(v18);
      result = sub_22156B048(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156B058(void *a1)
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
          TSCE::ASTNodeArrayArchive_ASTUidTract::~ASTNodeArrayArchive_ASTUidTract(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156B0DC(uint64_t result, TSCE::ASTNodeArrayArchive_ASTUidTract **a2, TSCE::ASTNodeArrayArchive_ASTUidTract **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156B18C(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidTract>(v18);
      result = sub_22156B18C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_22156B19C(uint64_t result, TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive **a2, TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156B24C(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive>(v18);
      result = sub_22156B24C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_22156B25C(uint64_t result, TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive **a2, TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156B30C(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive>(v18);
      result = sub_22156B30C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156B31C(void *a1)
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

          MEMORY[0x223DA1450](v5, 0x1012C40EC159624);
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

std::string *sub_22156B3B8(std::string *result, std::string **a2, const std::string **a3, unsigned int a4, unsigned int a5)
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
      v22 = sub_2215670A8(v18);
      result = std::string::operator=(v22, v21);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156B464(void *a1)
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
          TSCE::ASTNodeArrayArchive_ASTNodeArchive::~ASTNodeArrayArchive_ASTNodeArchive(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156B4E8(uint64_t result, TSCE::ASTNodeArrayArchive_ASTNodeArchive **a2, TSCE::ASTNodeArrayArchive_ASTNodeArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156B598(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTNodeArchive>(v18);
      result = sub_22156B598(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156B5A8(void *a1)
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
          TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::~RewriteTableUIDInfoArchive_TableUIDMapEntryArchive(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156B62C(uint64_t result, TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive **a2, TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156B6DC(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive>(v18);
      result = sub_22156B6DC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_22156B6EC(uint64_t result, TSCE::GroupByChangeArchive_GroupingColumnChangeArchive **a2, TSCE::GroupByChangeArchive_GroupingColumnChangeArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156B79C(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::GroupByChangeArchive_GroupingColumnChangeArchive>(v18);
      result = sub_22156B79C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156B7AC(void *a1)
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
          TSCE::IndexedUidsArchive_IndexedUid::~IndexedUidsArchive_IndexedUid(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156B830(uint64_t result, TSCE::IndexedUidsArchive_IndexedUid **a2, TSCE::IndexedUidsArchive_IndexedUid **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156B8E0(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::IndexedUidsArchive_IndexedUid>(v18);
      result = sub_22156B8E0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156B8F0(void *a1)
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
          TSCE::RewriteRangeEntryArchive::~RewriteRangeEntryArchive(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156B974(uint64_t result, TSCE::RewriteRangeEntryArchive **a2, TSCE::RewriteRangeEntryArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156BA24(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RewriteRangeEntryArchive>(v18);
      result = sub_22156BA24(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156BA34(void *a1)
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
          TSCE::ExpandedCellRefObjectPairArchive::~ExpandedCellRefObjectPairArchive(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156BAB8(uint64_t result, TSCE::ExpandedCellRefObjectPairArchive **a2, TSCE::ExpandedCellRefObjectPairArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156BB68(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ExpandedCellRefObjectPairArchive>(v18);
      result = sub_22156BB68(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156BB78(void *a1)
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
          TSCE::FormulaAtCoordArchive::~FormulaAtCoordArchive(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156BBFC(uint64_t result, TSCE::FormulaAtCoordArchive **a2, TSCE::FormulaAtCoordArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156BCAC(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaAtCoordArchive>(v18);
      result = sub_22156BCAC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156BCBC(void *a1)
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
          TSCE::FormulaCoordPairsByOwnerArchive::~FormulaCoordPairsByOwnerArchive(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156BD40(uint64_t result, TSCE::FormulaCoordPairsByOwnerArchive **a2, TSCE::FormulaCoordPairsByOwnerArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156BDF0(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaCoordPairsByOwnerArchive>(v18);
      result = sub_22156BDF0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_22156BE00(void *a1)
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
          TSCE::TrackedReferenceArchive::~TrackedReferenceArchive(*v3);
          MEMORY[0x223DA1450]();
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

void sub_22156BE84(void *a1)
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
          TSCE::ExpandedTrackedReferenceArchive::~ExpandedTrackedReferenceArchive(*v3);
          MEMORY[0x223DA1450]();
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

uint64_t sub_22156BF08(uint64_t result, TSCE::TrackedReferenceArchive **a2, TSCE::TrackedReferenceArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156BFB8(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::TrackedReferenceArchive>(v18);
      result = sub_22156BFB8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_22156BFC8(uint64_t result, TSCE::ExpandedTrackedReferenceArchive **a2, TSCE::ExpandedTrackedReferenceArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_22156C078(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ExpandedTrackedReferenceArchive>(v18);
      result = sub_22156C078(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void *sub_22156C088(uint64_t a1)
{
  v2 = sub_22156C0FC(a1, 1);
  *v2 = &unk_2834AA2C0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_CellReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_22156C0FC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF2A0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::CellReferenceArchive::~CellReferenceArchive);
}

uint64_t sub_22156C188(uint64_t a1)
{
  v2 = sub_22156C200(a1, 1);
  *v2 = &unk_2834AA370;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_InternalCellReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_22156C200(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF2D0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::InternalCellReferenceArchive::~InternalCellReferenceArchive);
}

uint64_t sub_22156C28C(uint64_t a1)
{
  v2 = sub_22156C304(a1, 1);
  *v2 = &unk_2834AA420;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_RelativeCellRefArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_22156C304(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF300(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::RelativeCellRefArchive::~RelativeCellRefArchive);
}

void *sub_22156C390(uint64_t a1)
{
  v2 = sub_22156C408(a1, 1);
  *v2 = &unk_2834AA4D0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_RangeReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_22156C408(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF330(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::RangeReferenceArchive::~RangeReferenceArchive);
}

uint64_t sub_22156C494(uint64_t a1)
{
  v2 = sub_22156C50C(a1, 1);
  *v2 = &unk_2834AA580;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_InternalRangeReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_22156C50C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF360(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::InternalRangeReferenceArchive::~InternalRangeReferenceArchive);
}

uint64_t sub_22156C598(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF390(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_22156C620);
}

uint64_t sub_22156C640(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF3C0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::IndexSetArchive::~IndexSetArchive);
}

uint64_t sub_22156C6CC(uint64_t a1)
{
  v2 = sub_22156C744(a1, 1);
  *v2 = &unk_2834AA790;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_CellCoordSetArchive_ColumnEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_22156C744(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF3F0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::CellCoordSetArchive_ColumnEntry::~CellCoordSetArchive_ColumnEntry);
}

uint64_t sub_22156C7D0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF420(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::CellCoordSetArchive::~CellCoordSetArchive);
}

uint64_t sub_22156C85C(uint64_t a1)
{
  v2 = sub_22156C8D4(a1, 1);
  *v2 = &unk_2834AA8F0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_InternalCellRefSetArchive_OwnerEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_22156C8D4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF450(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::InternalCellRefSetArchive_OwnerEntry::~InternalCellRefSetArchive_OwnerEntry);
}

uint64_t sub_22156C960(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF480(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::InternalCellRefSetArchive::~InternalCellRefSetArchive);
}

uint64_t sub_22156C9EC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF4B0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_22156CA74);
}

void *sub_22156CA94(uint64_t a1)
{
  v2 = sub_22156CB08(a1, 1);
  *v2 = &unk_2834AAB00;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_CellRectArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_22156CB08(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF4E0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::CellRectArchive::~CellRectArchive);
}

void *sub_22156CB94(uint64_t a1)
{
  v2 = sub_22156CC08(a1, 1);
  *v2 = &unk_2834AABB0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_CellRefSetArchive_OwnerEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_22156CC08(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF510(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::CellRefSetArchive_OwnerEntry::~CellRefSetArchive_OwnerEntry);
}

uint64_t sub_22156CC94(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF540(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::CellRefSetArchive::~CellRefSetArchive);
}

uint64_t sub_22156CD20(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF570(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCE::UidCoordSetArchive_ColumnEntry::~UidCoordSetArchive_ColumnEntry);
}

uint64_t sub_22156CDAC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF5A0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::UidCoordSetArchive::~UidCoordSetArchive);
}

void *sub_22156CE38(uint64_t a1)
{
  v2 = sub_22156CEAC(a1, 1);
  *v2 = &unk_2834AAE70;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_UidCellRefSetArchive_OwnerEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_22156CEAC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF5D0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::UidCellRefSetArchive_OwnerEntry::~UidCellRefSetArchive_OwnerEntry);
}

uint64_t sub_22156CF38(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF600(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::UidCellRefSetArchive::~UidCellRefSetArchive);
}

uint64_t sub_22156CFC4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF630(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, TSCE::ReferencesToDirtyArchive::~ReferencesToDirtyArchive);
}

uint64_t sub_22156D050(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF660(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_22156D0D8);
}

uint64_t sub_22156D0F8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF690(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_22156D180);
}

uint64_t sub_22156D1A0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF6C0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 152, TSCE::CoordMapperArchive::~CoordMapperArchive);
}

uint64_t sub_22156D22C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF6FC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::ReferenceArchive::~ReferenceArchive);
}

uint64_t sub_22156D2B8(uint64_t a1)
{
  v2 = sub_22156D330(a1, 1);
  *v2 = &unk_2834AB340;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_EdgeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_22156D330(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF72C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::EdgeArchive::~EdgeArchive);
}

uint64_t sub_22156D3BC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF75C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, TSCE::EdgesArchive::~EdgesArchive);
}

uint64_t sub_22156D448(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF78C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, TSCE::ExpandedEdgesArchive::~ExpandedEdgesArchive);
}

uint64_t sub_22156D4D4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF7BC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TSCE::CellRecordArchive::~CellRecordArchive);
}

uint64_t sub_22156D560(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF7EC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCE::CellDependenciesArchive::~CellDependenciesArchive);
}

uint64_t sub_22156D5EC(uint64_t a1)
{
  v2 = sub_22156D668(a1, 1);
  *v2 = &unk_2834AB6B0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_CellRecordExpandedArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_22156D668(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF81C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCE::CellRecordExpandedArchive::~CellRecordExpandedArchive);
}

uint64_t sub_22156D6F4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF84C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::CellDependenciesExpandedArchive::~CellDependenciesExpandedArchive);
}

uint64_t sub_22156D780(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF87C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSCE::CellRecordTileArchive::~CellRecordTileArchive);
}

uint64_t sub_22156D80C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF8AC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::CellDependenciesTiledArchive::~CellDependenciesTiledArchive);
}

uint64_t sub_22156D898(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF8DC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 328, TSCE::VolatileDependenciesArchive::~VolatileDependenciesArchive);
}

uint64_t sub_22156D924(uint64_t a1)
{
  v2 = sub_22156D9A4(a1, 1);
  *v2 = &unk_2834ABA20;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_VolatileDependenciesExpandedArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_22156D9A4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF918(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSCE::VolatileDependenciesExpandedArchive::~VolatileDependenciesExpandedArchive);
}

uint64_t sub_22156DA30(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF948(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSCE::RTreeInternalNodeContentsArchive::~RTreeInternalNodeContentsArchive);
}

uint64_t sub_22156DABC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF978(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSCE::RTreeLeafNodeContentsArchive::~RTreeLeafNodeContentsArchive);
}

uint64_t sub_22156DB48(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF9A8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TSCE::RTreeNodeArchive::~RTreeNodeArchive);
}

uint64_t sub_22156DBD4(uint64_t a1)
{
  v2 = sub_22156DC54(a1, 1);
  *v2 = &unk_2834ABCE0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_RTreeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_22156DC54(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FF9D8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSCE::RTreeArchive::~RTreeArchive);
}

void *sub_22156DCE0(uint64_t a1)
{
  v2 = sub_22156DD58(a1, 1);
  *v2 = &unk_2834ABD90;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_RangeBackDependencyArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_22156DD58(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFA08(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::RangeBackDependencyArchive::~RangeBackDependencyArchive);
}

uint64_t sub_22156DDE4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFA38(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::RangeDependenciesArchive::~RangeDependenciesArchive);
}

void *sub_22156DE70(uint64_t a1)
{
  v2 = sub_22156DEE4(a1, 1);
  *v2 = &unk_2834ABEF0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_RangePrecedentsTileArchive_FromToRangeArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_22156DEE4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFA68(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::RangePrecedentsTileArchive_FromToRangeArchive::~RangePrecedentsTileArchive_FromToRangeArchive);
}

uint64_t sub_22156DF70(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFA98(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCE::RangePrecedentsTileArchive::~RangePrecedentsTileArchive);
}

uint64_t sub_22156DFFC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFAC8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::RangeDependenciesTiledArchive::~RangeDependenciesTiledArchive);
}

uint64_t sub_22156E088(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFAF8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::~SpanningDependenciesArchive_ReferringColumnToLocalCells);
}

uint64_t sub_22156E114(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFB28(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::~SpanningDependenciesArchive_ReferringColumnToRemoteCells);
}

uint64_t sub_22156E1A0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFB58(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 144, TSCE::SpanningDependenciesArchive::~SpanningDependenciesArchive);
}

uint64_t sub_22156E22C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFB88(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_22156E2B4);
}

uint64_t sub_22156E2D4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFBB8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::~SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext);
}

uint64_t sub_22156E360(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFBE8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::~SpanningDependenciesExpandedArchive_CellCoordRefersToExtents);
}

uint64_t sub_22156E3EC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFC18(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSCE::SpanningDependenciesExpandedArchive::~SpanningDependenciesExpandedArchive);
}

uint64_t sub_22156E478(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFC48(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::WholeOwnerDependenciesArchive::~WholeOwnerDependenciesArchive);
}

void *sub_22156E504(uint64_t a1)
{
  v2 = sub_22156E578(a1, 1);
  *v2 = &unk_2834AC680;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_WholeOwnerDependenciesExpandedArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_22156E578(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFC78(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSCE::WholeOwnerDependenciesExpandedArchive::~WholeOwnerDependenciesExpandedArchive);
}

uint64_t sub_22156E604(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFCA8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::ErrorArchive_ErrorDictionaryEntry::~ErrorArchive_ErrorDictionaryEntry);
}

uint64_t sub_22156E690(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFCD8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCE::ErrorArchive::~ErrorArchive);
}

uint64_t sub_22156E71C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFD08(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::WarningArchive_WarningDictionaryEntry::~WarningArchive_WarningDictionaryEntry);
}

uint64_t sub_22156E7A8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFD38(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSCE::WarningArchive::~WarningArchive);
}

uint64_t sub_22156E834(uint64_t a1)
{
  v2 = sub_22156E8AC(a1, 1);
  *v2 = &unk_2834AC9F0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_CellErrorsArchive_ErrorForCell_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_22156E8AC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFD68(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::CellErrorsArchive_ErrorForCell::~CellErrorsArchive_ErrorForCell);
}

uint64_t sub_22156E938(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFD98(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSCE::CellErrorsArchive_EnhancedErrorForCell::~CellErrorsArchive_EnhancedErrorForCell);
}

uint64_t sub_22156E9C4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFDC8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSCE::CellErrorsArchive::~CellErrorsArchive);
}

void *sub_22156EA50(uint64_t a1)
{
  v2 = sub_22156EAC4(a1, 1);
  *v2 = &unk_2834ACC00;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_CellSpillSizesArchive_SpillForCell_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_22156EAC4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFDF8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::CellSpillSizesArchive_SpillForCell::~CellSpillSizesArchive_SpillForCell);
}

uint64_t sub_22156EB50(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFE28(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::CellSpillSizesArchive::~CellSpillSizesArchive);
}

void *sub_22156EBDC(uint64_t a1)
{
  v2 = sub_22156EC50(a1, 1);
  *v2 = &unk_2834ACD60;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_UuidReferencesArchive_TableRef_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_22156EC50(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFE58(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::UuidReferencesArchive_TableRef::~UuidReferencesArchive_TableRef);
}

void *sub_22156ECDC(uint64_t a1)
{
  v2 = sub_22156ED50(a1, 1);
  *v2 = &unk_2834ACE10;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_UuidReferencesArchive_UuidRef_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_22156ED50(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFE88(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::UuidReferencesArchive_UuidRef::~UuidReferencesArchive_UuidRef);
}

uint64_t sub_22156EDDC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFEB8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCE::UuidReferencesArchive_TableWithUuidRef::~UuidReferencesArchive_TableWithUuidRef);
}

uint64_t sub_22156EE68(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFEE8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSCE::UuidReferencesArchive::~UuidReferencesArchive);
}

uint64_t sub_22156EEF4(uint64_t a1)
{
  v2 = sub_22156EF88(a1, 1);
  *v2 = &unk_2834AD020;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_FormulaOwnerDependenciesArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 136) = 0;
  *(v2 + 120) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_22156EF88(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFF18(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 144, TSCE::FormulaOwnerDependenciesArchive::~FormulaOwnerDependenciesArchive);
}

uint64_t sub_22156F014(uint64_t a1)
{
  v2 = sub_22156F09C(a1, 1);
  *v2 = &unk_2834AD0D0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_FormulaOwnerInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 88) = 0;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_22156F09C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFF48(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, TSCE::FormulaOwnerInfoArchive::~FormulaOwnerInfoArchive);
}

uint64_t sub_22156F128(uint64_t a1)
{
  v2 = sub_22156F1A0(a1, 1);
  *v2 = &unk_2834AD180;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SubFormulaOwnerIDArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_22156F1A0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFF78(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::SubFormulaOwnerIDArchive::~SubFormulaOwnerIDArchive);
}

uint64_t sub_22156F22C(uint64_t a1)
{
  v2 = sub_22156F2A4(a1, 1);
  *v2 = &unk_2834AD230;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_OwnerIDMapArchive_OwnerIDMapArchiveEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_22156F2A4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFFA8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::~OwnerIDMapArchive_OwnerIDMapArchiveEntry);
}

uint64_t sub_22156F330(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2216FFFD8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSCE::OwnerIDMapArchive::~OwnerIDMapArchive);
}

uint64_t sub_22156F3BC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700008(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::UidLookupListArchive::~UidLookupListArchive);
}

uint64_t sub_22156F448(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700038(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 136, TSCE::DependencyTrackerArchive::~DependencyTrackerArchive);
}

uint64_t sub_22156F4D4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700074(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::RemoteDataSpecifierArchive::~RemoteDataSpecifierArchive);
}

void *sub_22156F560(uint64_t a1)
{
  v2 = sub_22156F5D4(a1, 1);
  *v2 = &unk_2834AD5A0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_RemoteDataValueMapArchive_RemoteDataMapEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_22156F5D4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217000A4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::~RemoteDataValueMapArchive_RemoteDataMapEntry);
}

uint64_t sub_22156F660(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217000D4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::RemoteDataValueMapArchive::~RemoteDataValueMapArchive);
}

uint64_t sub_22156F6EC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700104(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::StockArchive_AttributeEntry::~StockArchive_AttributeEntry);
}

uint64_t sub_22156F778(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700134(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSCE::StockArchive::~StockArchive);
}

uint64_t sub_22156F804(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700164(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCE::RemoteDataStoreArchive::~RemoteDataStoreArchive);
}

uint64_t sub_22156F890(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700194(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::NameTrackedReferencePair::~NameTrackedReferencePair);
}

uint64_t sub_22156F91C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217001C4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCE::NamesByTrackedReferenceArchive::~NamesByTrackedReferenceArchive);
}

uint64_t sub_22156F9A8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217001F4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCE::NamedReferenceManagerArchive::~NamedReferenceManagerArchive);
}

uint64_t sub_22156FA34(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700224(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCE::UuidSetStoreArchive_UuidSet::~UuidSetStoreArchive_UuidSet);
}

uint64_t sub_22156FAC0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700254(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::UuidSetStoreArchive::~UuidSetStoreArchive);
}

uint64_t sub_22156FB4C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700284(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSCE::UuidReferenceMapArchive_CellRefsForUuid::~UuidReferenceMapArchive_CellRefsForUuid);
}

uint64_t sub_22156FBD8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217002B4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::UuidReferenceMapArchive::~UuidReferenceMapArchive);
}

void *sub_22156FC64(uint64_t a1)
{
  v2 = sub_22156FCD8(a1, 1);
  *v2 = &unk_2834ADDE0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_GroupByNodeMapArchive_CellRefsForGroupNode_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_22156FCD8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217002E4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::~GroupByNodeMapArchive_CellRefsForGroupNode);
}

uint64_t sub_22156FD64(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700314(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::~GroupByNodeMapArchive_GroupNodesForGroupBy);
}

uint64_t sub_22156FDF0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700344(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::GroupByNodeMapArchive::~GroupByNodeMapArchive);
}

uint64_t sub_22156FE7C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700374(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 184, TSCE::CalculationEngineArchive::~CalculationEngineArchive);
}

uint64_t sub_22156FF08(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217003B0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_22156FF90);
}

uint64_t sub_22156FFB0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217003E0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::CategoryReferenceArchive_CatRefUidList::~CategoryReferenceArchive_CatRefUidList);
}

uint64_t sub_22157003C(uint64_t a1)
{
  v2 = sub_2215700C4(a1, 1);
  *v2 = &unk_2834AE200;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_CategoryReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 88) = 0;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2215700C4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700410(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, TSCE::CategoryReferenceArchive::~CategoryReferenceArchive);
}

uint64_t sub_221570150(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700440(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_2215701D8);
}

uint64_t sub_2215701F8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700470(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::~ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive);
}

uint64_t sub_221570284(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217004A0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_22157030C);
}

uint64_t sub_22157032C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217004D0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_2215703B4);
}

uint64_t sub_2215703D4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700500(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::ASTNodeArrayArchive_ASTUidList::~ASTNodeArrayArchive_ASTUidList);
}

uint64_t sub_221570460(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700530(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCE::ASTNodeArrayArchive_ASTUidTract::~ASTNodeArrayArchive_ASTUidTract);
}

uint64_t sub_2215704EC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700560(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_221570574);
}

uint64_t sub_221570594(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700590(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSCE::ASTNodeArrayArchive_ASTUidTractList::~ASTNodeArrayArchive_ASTUidTractList);
}

uint64_t sub_221570620(uint64_t a1)
{
  v2 = sub_221570698(a1, 1);
  *v2 = &unk_2834AE830;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTUidCoordinateArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_221570698(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217005C0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::~ASTNodeArrayArchive_ASTUidCoordinateArchive);
}

uint64_t sub_221570724(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217005F0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_2215707AC);
}

void *sub_2215707CC(uint64_t a1)
{
  v2 = sub_221570840(a1, 1);
  *v2 = &unk_2834AE990;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ASTNodeArrayArchive_ASTCategoryReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_221570840(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700620(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::~ASTNodeArrayArchive_ASTCategoryReferenceArchive);
}

uint64_t sub_2215708CC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700650(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_221570954);
}

uint64_t sub_221570974(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700680(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_2215709FC);
}

uint64_t sub_221570A1C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217006B0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 128, TSCE::ASTNodeArrayArchive_ASTColonTractArchive::~ASTNodeArrayArchive_ASTColonTractArchive);
}

uint64_t sub_221570AA8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217006EC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::~ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive);
}

uint64_t sub_221570B34(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170071C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::~ASTNodeArrayArchive_ASTLambdaIdentsListArchive);
}

uint64_t sub_221570BC0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170074C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 296, TSCE::ASTNodeArrayArchive_ASTNodeArchive::~ASTNodeArrayArchive_ASTNodeArchive);
}

uint64_t sub_221570C4C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700788(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::ASTNodeArrayArchive::~ASTNodeArrayArchive);
}

uint64_t sub_221570CD8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217007B8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_221570D60);
}

uint64_t sub_221570D80(uint64_t a1)
{
  v2 = sub_221570E04(a1, 1);
  *v2 = &unk_2834AEFC0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_FormulaArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 72) = 0;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_221570E04(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217007E8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TSCE::FormulaArchive::~FormulaArchive);
}

void *sub_221570E90(uint64_t a1)
{
  v2 = sub_221570F04(a1, 1);
  *v2 = &unk_2834AF070;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_FunctorArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_221570F04(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700818(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::FunctorArchive::~FunctorArchive);
}

uint64_t sub_221570F90(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700848(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, TSCE::FormatStructArchive::~FormatStructArchive);
}

uint64_t sub_22157101C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700878(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_2215710A4);
}

uint64_t sub_2215710C4(uint64_t a1)
{
  v2 = sub_22157113C(a1, 1);
  *v2 = &unk_2834AF280;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_TableTransposeInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_22157113C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217008A8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::TableTransposeInfoArchive::~TableTransposeInfoArchive);
}

double sub_2215711C8(uint64_t a1)
{
  v2 = sub_221571234(a1, 1);
  *v2 = &unk_2834AF330;
  *(v2 + 8) = a1;
  result = 0.0;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  *(v2 + 32) = 0;
  *(v2 + 40) = a1;
  *(v2 + 48) = 0;
  *(v2 + 56) = a1;
  *(v2 + 64) = 0;
  *(v2 + 72) = a1;
  *(v2 + 80) = 0;
  return result;
}

uint64_t sub_221571234(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217008D8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, TSCE::MergeOriginMovedArchive::~MergeOriginMovedArchive);
}

uint64_t sub_2215712C0(uint64_t a1)
{
  v2 = sub_221571358(a1, 1);
  *v2 = &unk_2834AF3E0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_OwnerUIDMapperArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 152) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_221571358(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700908(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 168, TSCE::OwnerUIDMapperArchive::~OwnerUIDMapperArchive);
}

void *sub_2215713E4(uint64_t a1)
{
  v2 = sub_221571458(a1, 1);
  *v2 = &unk_2834AF490;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_RewriteTableUIDInfoArchive_TableUIDMapEntryArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_221571458(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700944(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::~RewriteTableUIDInfoArchive_TableUIDMapEntryArchive);
}

uint64_t sub_2215714E4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700974(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::RewriteTableUIDInfoArchive::~RewriteTableUIDInfoArchive);
}

uint64_t sub_221571570(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217009A4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_2215715F8);
}

uint64_t sub_221571618(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2217009D4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 112, TSCE::GroupByChangeArchive::~GroupByChangeArchive);
}

void *sub_2215716A4(uint64_t a1)
{
  v2 = sub_221571718(a1, 1);
  *v2 = &unk_2834AF750;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_RewriteGroupNodeUIDInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_221571718(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700A04(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::RewriteGroupNodeUIDInfoArchive::~RewriteGroupNodeUIDInfoArchive);
}

uint64_t sub_2215717A4(uint64_t a1)
{
  v2 = sub_22157181C(a1, 1);
  *v2 = &unk_2834AF800;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_IndexedUidsArchive_IndexedUid_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_22157181C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700A34(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::IndexedUidsArchive_IndexedUid::~IndexedUidsArchive_IndexedUid);
}

uint64_t sub_2215718A8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700A64(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::IndexedUidsArchive::~IndexedUidsArchive);
}

uint64_t sub_221571934(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700A94(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSCE::RewriteRangeEntryArchive::~RewriteRangeEntryArchive);
}

uint64_t sub_2215719C0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700AC4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 112, TSCE::ColumnOrRowUuidsInfoArchive::~ColumnOrRowUuidsInfoArchive);
}

void *sub_221571A4C(uint64_t a1)
{
  v2 = sub_221571AC4(a1, 1);
  *v2 = &unk_2834AFAC0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_RegionInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_221571AC4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700AF4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::RegionInfoArchive::~RegionInfoArchive);
}

uint64_t sub_221571B50(uint64_t a1)
{
  v2 = sub_221571BD0(a1, 1);
  *v2 = &unk_2834AFB70;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_RegionMovedInfoArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_221571BD0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700B24(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSCE::RegionMovedInfoArchive::~RegionMovedInfoArchive);
}

uint64_t sub_221571C5C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700B54(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_221571CE4);
}

void *sub_221571D04(uint64_t a1)
{
  v2 = sub_221571D78(a1, 1);
  *v2 = &unk_2834AFCD0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_HauntedOwnerArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_221571D78(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700B84(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSCE::HauntedOwnerArchive::~HauntedOwnerArchive);
}

void *sub_221571E04(uint64_t a1)
{
  v2 = sub_221571E78(a1, 1);
  *v2 = &unk_2834AFD80;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpillOwnerArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_221571E78(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700BB4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSCE::SpillOwnerArchive::~SpillOwnerArchive);
}

uint64_t sub_221571F04(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700BE4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_221571F8C);
}

uint64_t sub_221571FAC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700C14(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::CellCoordinateVectorArchive::~CellCoordinateVectorArchive);
}

void *sub_221572038(uint64_t a1)
{
  v2 = sub_2215720AC(a1, 1);
  *v2 = &unk_2834AFF90;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ExpandedCellRefObjectPairArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_2215720AC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700C44(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::ExpandedCellRefObjectPairArchive::~ExpandedCellRefObjectPairArchive);
}

uint64_t sub_221572138(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700C74(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::ExpandedCellRefObjectMapArchive::~ExpandedCellRefObjectMapArchive);
}

uint64_t sub_2215721C4(uint64_t a1)
{
  v2 = sub_22157223C(a1, 1);
  *v2 = &unk_2834B00F0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_FormulaAtCoordArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_22157223C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700CA4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::FormulaAtCoordArchive::~FormulaAtCoordArchive);
}

uint64_t sub_2215722C8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700CD4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSCE::FormulaCoordPairsByOwnerArchive::~FormulaCoordPairsByOwnerArchive);
}

uint64_t sub_221572354(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700D04(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::FormulasForUndoArchive::~FormulasForUndoArchive);
}

void *sub_2215723E0(uint64_t a1)
{
  v2 = sub_221572454(a1, 1);
  *v2 = &unk_2834B0300;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_FormulaRewriteCommandArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_221572454(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700D34(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::FormulaRewriteCommandArchive::~FormulaRewriteCommandArchive);
}

uint64_t sub_2215724E0(uint64_t a1)
{
  v2 = sub_221572558(a1, 1);
  *v2 = &unk_2834B03B0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_TrackedReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_221572558(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700D64(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::TrackedReferenceArchive::~TrackedReferenceArchive);
}

void *sub_2215725E4(uint64_t a1)
{
  v2 = sub_221572658(a1, 1);
  *v2 = &unk_2834B0460;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ExpandedTrackedReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_221572658(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700D94(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::ExpandedTrackedReferenceArchive::~ExpandedTrackedReferenceArchive);
}

uint64_t sub_2215726E4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700DC4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, TSCE::TrackedReferenceStoreArchive::~TrackedReferenceStoreArchive);
}

uint64_t sub_221572770(uint64_t a1)
{
  v2 = sub_2215727F0(a1, 1);
  *v2 = &unk_2834B05C0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ViewTractRefArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2215727F0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700DF4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSCE::ViewTractRefArchive::~ViewTractRefArchive);
}

uint64_t sub_22157287C(uint64_t a1)
{
  v2 = sub_2215728F4(a1, 1);
  *v2 = &unk_2834B0670;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_BooleanCellValueArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_2215728F4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700E24(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSCE::BooleanCellValueArchive::~BooleanCellValueArchive);
}

uint64_t sub_221572980(uint64_t a1)
{
  v2 = sub_2215729F8(a1, 1);
  *v2 = &unk_2834B0720;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_DateCellValueArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_2215729F8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700E54(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::DateCellValueArchive::~DateCellValueArchive);
}

uint64_t sub_221572A84(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700E84(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSCE::NumberCellValueArchive::~NumberCellValueArchive);
}

uint64_t sub_221572B10(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700EB4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::StringCellValueArchive::~StringCellValueArchive);
}

uint64_t sub_221572B9C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700EE4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSCE::ErrorCellValueArchive::~ErrorCellValueArchive);
}

uint64_t sub_221572C28(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_221700F14(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSCE::CellValueArchive::~CellValueArchive);
}

uint64_t sub_221572E48(google::protobuf::UnknownFieldSet *this)
{

  return google::protobuf::UnknownFieldSet::AddVarint(this);
}

void sub_221572E80(TSCEASTRewriter *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *v9 = &unk_2834B18F0;
  v9[25] = a4;
  v9[26] = a5;
  v9[27] = a6;
}

void sub_221572EDC(TSCEASTRewriter *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, uint64_t a4)
{
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *v5 = &unk_2834B18F0;
  v5[25] = 0;
  v5[26] = 0;
  v5[27] = a4;
}

void sub_221572F28(TSCEASTIteratorBase *a1, TSCEASTElement *a2)
{
  v4 = sub_221089E8C(a1);

  if (v4)
  {
    v9 = TSCEASTElement::mutableUndoTractList(a2, a1);
    v10 = (*(*a2 + 152))(a2, a1);
    v12 = v11;
    v13 = (*(*a2 + 160))(a2, a1);
    objc_msgSend_addToIncludedUidsTractColumnUid_rowUid_(v9, v14, v10, v12, v13, v14);
    v15._flags = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
    TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v9, &v15);
  }

  TSCEASTIteratorBase::createReferenceError(a1, v5, v6, v7, v8);
}

void sub_2215730B0(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  v4 = TSCEASTElement::refFlags(a2, a1);
  *&v21.var3 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, a1, v5, v6, v7);
  HIBYTE(v21.var2) = (v4 >> 4) & 3;
  if ((v4 & 1) == 0)
  {
    if (*&TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID == 0)
    {
      v12 = 0;
    }

    else
    {
      v11 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      v12 = v11->var0.var0._tableUID._lower != *(a1 + 200) || v11->var0.var0._tableUID._upper != *(a1 + 208);
    }

    if (TSCERelativeCellCoordinate::offsetBy(&v21.var3, *(a1 + 216), *(a1 + 220), (v4 >> 4) & 1, (v4 >> 5) & 1))
    {
      tableUID = 0;
      if (v12)
      {
        tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
      }

      *&v21.var0 = tableUID;
      v20 = (*(*a2 + 96))(a2, a1);
      TSCEASTIteratorBase::createRelativeCoordReference(a1, &v21, &v21.var3, (&v21.var2 + 7), v20);
    }

LABEL_15:
    sub_221572F28(a1, a2);
  }

  v13 = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v8, v9, v10);
  v15 = v14;
  v21.var0 = v13;
  v21.var1 = v14;
  if (!TSCERelativeCellCoordinate::offsetBy(&v21.var3, *(a1 + 216), *(a1 + 220), (v4 >> 4) & 1, (v4 >> 5) & 1))
  {
    goto LABEL_15;
  }

  v16 = (*(*a2 + 96))(a2, a1);
  v17 = *(a1 + 200);
  if (v17)
  {
    if (v17 != v13)
    {
      goto LABEL_20;
    }

    v18 = *(a1 + 208);
  }

  else
  {
    v18 = *(a1 + 208);
    if (!v18 || v13)
    {
      goto LABEL_20;
    }
  }

  if (v18 == v15)
  {
    *&v21.var0 = 0uLL;
  }

LABEL_20:
  TSCEASTIteratorBase::createRelativeCoordReference(a1, &v21, &v21.var3, (&v21.var2 + 7), v16);
}

TSCEASTColonTractElement *sub_221573328(const char **a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4, a5);
  v12 = objc_msgSend_tableUID(v7, v8, v9, v10, v11);
  v16 = a1[25];
  if (v16)
  {
    if (v16 != v12)
    {
      goto LABEL_8;
    }

    v17 = a1[26];
  }

  else
  {
    v17 = a1[26];
    if (!v17 || v12)
    {
      goto LABEL_8;
    }
  }

  if (v17 == v13)
  {
    objc_msgSend_setTableUID_(v7, v13, 0, 0, v15);
  }

LABEL_8:
  objc_msgSend_adjustRelativeIndexesBy_(v7, v13, (a1 + 27), v14, v15);
  TSCEASTColonTractElement::setRelativeTractRef(this, v7, 0, a1, 1);

  return this;
}

void sub_2215733E8(TSCEASTRewriter *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void TSCECellRefSet::TSCECellRefSet(TSCECellRefSet *this, const TSCECellRefSet *a2)
{
  this->_coordsForOwnerUid.__tree_.__size_ = 0;
  this->_coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  this->_coordsForOwnerUid.__tree_.__begin_node_ = &this->_coordsForOwnerUid.__tree_.__end_node_;
  if (this != a2)
  {
    sub_221575854(this, a2->_coordsForOwnerUid.__tree_.__begin_node_, &a2->_coordsForOwnerUid.__tree_.__end_node_.__left_);
  }
}

uint64_t **TSCECellRefSet::operator=(uint64_t **a1, uint64_t **a2)
{
  if (a1 != a2)
  {
    sub_221575854(a1, *a2, a2 + 1);
  }

  return a1;
}

TSCECellCoordSet *TSCECellRefSet::addCellRef(TSCECellRefSet *this, const TSCECellRef *a2)
{
  tableUID = a2->_tableUID;
  p_tableUID = &tableUID;
  v3 = sub_221575BB0(this, &tableUID._lower);
  p_tableUID = a2->coordinate;
  return TSCECellCoordSet::addCellCoord((v3 + 48), &p_tableUID);
}

void TSCECellRefSet::addCellRefs(TSCECellRefSet *this, const TSCECellRefSet *a2)
{
  p_end_node = &a2->_coordsForOwnerUid.__tree_.__end_node_;
  begin_node = a2->_coordsForOwnerUid.__tree_.__begin_node_;
  if (a2->_coordsForOwnerUid.__tree_.__begin_node_ != &a2->_coordsForOwnerUid.__tree_.__end_node_)
  {
    do
    {
      v5 = sub_221575BB0(this, begin_node + 4);
      TSCECellCoordSet::addCellCoords((v5 + 48), (begin_node + 48));
      v6 = *(begin_node + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = v6->__left_;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(begin_node + 2);
          v8 = v7->__left_ == begin_node;
          begin_node = v7;
        }

        while (!v8);
      }

      begin_node = v7;
    }

    while (v7 != p_end_node);
  }
}

uint64_t TSCECellRefSet::removeCellRef(TSCECellRefSet *this, const TSCECellRef *a2)
{
  tableUID = a2->_tableUID;
  result = sub_22112C8D0(this, &tableUID._lower);
  if (&this->_coordsForOwnerUid.__tree_.__end_node_ != result)
  {
    v5 = result;
    tableUID._lower = a2->coordinate;
    TSCECellCoordSet::removeCellCoord((result + 48), &tableUID);
    result = TSCECellCoordSet::isEmpty((v5 + 48));
    if (result)
    {
      tableUID = a2->_tableUID;
      return TSCECellRefSet::removeAllCellRefsForOwner(this, &tableUID);
    }
  }

  return result;
}

void TSCECellRefSet::removeCellRefs(TSCECellRefSet *this, TSCECellRefSet *a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_22157498C;
  v2[3] = &unk_278466FC8;
  v2[4] = this;
  TSCECellRefSet::enumerateOwnersUsingBlock(a2, v2);
}

void TSCECellRefSet::enumerateOwnersUsingBlock(void *a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v6 = *a1;
  v4 = a1 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      v10 = *(v5 + 2);
      v3[2](v3, &v10, v5 + 6, &v11);
      if (v11)
      {
        break;
      }

      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v4);
  }
}

void sub_22157498C(uint64_t a1, unint64_t *a2, TSCECellCoordSet *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_22112C8D0(v4, a2);
  if ((v4 + 8) != v5)
  {
    v6 = (v5 + 6);

    TSCECellCoordSet::removeCellCoords(v6, a3);
  }
}

TSCECellRefSet *TSCECellRefSet::popAnyCellRef@<X0>(TSCECellRefSet *this@<X0>, uint64_t a2@<X8>)
{
  result = TSCECellRefSet::anyCellRef(this, a2);
  if ((*a2 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && *(a2 + 8) != 0)
  {

    return TSCECellRefSet::removeCellRef(this, a2);
  }

  return result;
}

TSCECellRefSet *TSCECellRefSet::anyCellRef@<X0>(TSCECellRefSet *this@<X0>, TSCECellRefSet **a2@<X8>)
{
  *a2 = 0x7FFF7FFFFFFFLL;
  a2[1] = 0;
  a2[2] = 0;
  p_end_node = &this->_coordsForOwnerUid.__tree_.__end_node_;
  begin_node = this->_coordsForOwnerUid.__tree_.__begin_node_;
  if (this->_coordsForOwnerUid.__tree_.__begin_node_ != &this->_coordsForOwnerUid.__tree_.__end_node_)
  {
    while (1)
    {
      *(a2 + 1) = *(begin_node + 2);
      this = TSCECellCoordSet::isEmpty((begin_node + 48));
      if ((this & 1) == 0)
      {
        break;
      }

      v5 = *(begin_node + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = v5->__left_;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(begin_node + 2);
          v7 = v6->__left_ == begin_node;
          begin_node = v6;
        }

        while (!v7);
      }

      begin_node = v6;
      if (v6 == p_end_node)
      {
        return this;
      }
    }

    this = TSCECellCoordSet::anyCellCoord((begin_node + 48));
    *a2 = this;
  }

  return this;
}

void TSCECellRefSet::clear(TSCECellRefSet *this)
{
  p_end_node = &this->_coordsForOwnerUid.__tree_.__end_node_;
  sub_22107C800(this, this->_coordsForOwnerUid.__tree_.__end_node_.__left_);
  this->_coordsForOwnerUid.__tree_.__begin_node_ = p_end_node;
  this->_coordsForOwnerUid.__tree_.__size_ = 0;
  p_end_node->__left_ = 0;
}

uint64_t TSCECellRefSet::containsCellInOwner(TSCECellRefSet *this, const TSUCellCoord *a2, const TSKUIDStruct *a3)
{
  v5 = sub_22112C8D0(this, &a3->_lower);
  if (&this->_coordsForOwnerUid.__tree_.__end_node_ == v5)
  {
    return 0;
  }

  v6 = &v5[2];

  return TSCECellCoordSet::containsCellCoord(v6, a2);
}

uint64_t TSCECellRefSet::containsCellRef(TSCECellRefSet *this, const TSCECellRef *a2)
{
  coordinate = a2->coordinate;
  tableUID = a2->_tableUID;
  v3 = sub_22112C8D0(this, &tableUID._lower);
  if (&this->_coordsForOwnerUid.__tree_.__end_node_ == v3)
  {
    return 0;
  }

  else
  {
    return TSCECellCoordSet::containsCellCoord(&v3[6], &coordinate);
  }
}

void TSCECellRefSet::intersectWith(TSCECellRefSet *this, const TSCECellRefSet *a2)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  p_end_node = &this->_coordsForOwnerUid.__tree_.__end_node_;
  begin_node = this->_coordsForOwnerUid.__tree_.__begin_node_;
  if (this->_coordsForOwnerUid.__tree_.__begin_node_ != &this->_coordsForOwnerUid.__tree_.__end_node_)
  {
    v6 = &a2->_coordsForOwnerUid.__tree_.__end_node_;
    do
    {
      v10 = sub_22112C8D0(a2, begin_node + 4);
      if (v6 == v10 || (TSCECellCoordSet::intersectWith((begin_node + 48), &v10[6], v7, v8, v9), TSCECellCoordSet::isEmpty((begin_node + 48))))
      {
        sub_221083454(&v16, begin_node + 2);
      }

      v11 = *(begin_node + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = v11->__left_;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(begin_node + 2);
          v13 = v12->__left_ == begin_node;
          begin_node = v12;
        }

        while (!v13);
      }

      begin_node = v12;
    }

    while (v12 != p_end_node);
    v14 = v16;
    v15 = v17;
    if (v16 != v17)
    {
      do
      {
        TSCECellRefSet::removeAllCellRefsForOwner(this, v14++);
      }

      while (v14 != v15);
      v14 = v16;
    }

    if (v14)
    {
      v17 = v14;
      operator delete(v14);
    }
  }
}

void sub_221574D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TSCECellRefSet::intersectWith(TSCECellRefSet *this, TSUCellRect *a2, const TSKUIDStruct *a3)
{
  p_end_node = &this->_coordsForOwnerUid.__tree_.__end_node_;
  if (&this->_coordsForOwnerUid.__tree_.__end_node_ == sub_22112C8D0(this, &a3->_lower) || (TSUCellRect::isValid(a2) & 1) == 0)
  {
    sub_22107C800(this, this->_coordsForOwnerUid.__tree_.__end_node_.__left_);
    this->_coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
    this->_coordsForOwnerUid.__tree_.__size_ = 0;
    this->_coordsForOwnerUid.__tree_.__begin_node_ = p_end_node;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    begin_node = this->_coordsForOwnerUid.__tree_.__begin_node_;
    if (this->_coordsForOwnerUid.__tree_.__begin_node_ != p_end_node)
    {
      do
      {
        if (*(begin_node + 4) != a3->_lower || *(begin_node + 5) != a3->_upper || (TSCECellCoordSet::intersectWith((begin_node + 48), a2), TSCECellCoordSet::isEmpty((begin_node + 48))))
        {
          sub_221083454(&v13, begin_node + 2);
        }

        v8 = *(begin_node + 1);
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = v8->__left_;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = *(begin_node + 2);
            v10 = v9->__left_ == begin_node;
            begin_node = v9;
          }

          while (!v10);
        }

        begin_node = v9;
      }

      while (v9 != p_end_node);
      v11 = v13;
      v12 = v14;
      if (v13 != v14)
      {
        do
        {
          TSCECellRefSet::removeAllCellRefsForOwner(this, v11++);
        }

        while (v11 != v12);
        v11 = v13;
      }

      if (v11)
      {
        v14 = v11;
        operator delete(v11);
      }
    }
  }
}

void sub_221574E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TSCECellRefSet::count(TSCECellRefSet *this)
{
  p_end_node = &this->_coordsForOwnerUid.__tree_.__end_node_;
  begin_node = this->_coordsForOwnerUid.__tree_.__begin_node_;
  if (this->_coordsForOwnerUid.__tree_.__begin_node_ == &this->_coordsForOwnerUid.__tree_.__end_node_)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = TSCECellCoordSet::count((begin_node + 48));
    v5 = *(begin_node + 1);
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = v5->__left_;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = *(begin_node + 2);
        v7 = v6->__left_ == begin_node;
        begin_node = v6;
      }

      while (!v7);
    }

    v3 += v4;
    begin_node = v6;
  }

  while (v6 != p_end_node);
  return v3;
}

uint64_t TSCECellRefSet::isEmpty(TSCECellRefSet *this)
{
  p_end_node = &this->_coordsForOwnerUid.__tree_.__end_node_;
  begin_node = this->_coordsForOwnerUid.__tree_.__begin_node_;
  v3 = 1;
  if (this->_coordsForOwnerUid.__tree_.__begin_node_ != &this->_coordsForOwnerUid.__tree_.__end_node_)
  {
    while (1)
    {
      isEmpty = TSCECellCoordSet::isEmpty((begin_node + 48));
      if (!isEmpty)
      {
        break;
      }

      v5 = *(begin_node + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = v5->__left_;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(begin_node + 2);
          v7 = v6->__left_ == begin_node;
          begin_node = v6;
        }

        while (!v7);
      }

      v3 = isEmpty & v3;
      begin_node = v6;
      if (v6 == p_end_node)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void TSCECellRefSet::enumerateCellRefsUsingBlock(void *a1, void *a2)
{
  v3 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x4812000000;
  v23 = sub_221575190;
  v24 = nullsub_83;
  v25 = &unk_22188E88F;
  v27 = 0;
  v28 = 0;
  v26 = 0x7FFF7FFFFFFFLL;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v6 = *a1;
  v4 = a1 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      *(v21 + 7) = *(v5 + 2);
      v7 = objc_autoreleasePoolPush();
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = sub_2215751A8;
      v12[3] = &unk_278462BE8;
      v14 = &v20;
      v13 = v3;
      v15 = &v16;
      TSCECellCoordSet::enumerateCoordsUsingBlock(v5 + 6, v12);
      v8 = *(v17 + 24);

      objc_autoreleasePoolPop(v7);
      if (v8)
      {
        break;
      }

      v9 = v5[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v5[2];
          v11 = *v10 == v5;
          v5 = v10;
        }

        while (!v11);
      }

      v5 = v10;
    }

    while (v10 != v4);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
}

void sub_221575158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

__n128 sub_221575190(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  return result;
}

uint64_t sub_2215751A8(void *a1, void *a2, _BYTE *a3)
{
  *(*(a1[5] + 8) + 48) = *a2;
  result = (*(a1[4] + 16))();
  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

TSCECellRefSet *TSCECellRefSet::allOwnerUIDs@<X0>(TSCECellRefSet *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  p_end_node = &this->_coordsForOwnerUid.__tree_.__end_node_;
  begin_node = this->_coordsForOwnerUid.__tree_.__begin_node_;
  if (this->_coordsForOwnerUid.__tree_.__begin_node_ != &this->_coordsForOwnerUid.__tree_.__end_node_)
  {
    do
    {
      this = sub_2210C2B00(a2, begin_node + 4);
      v5 = begin_node[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = v5->__left_;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = begin_node[2];
          v7 = v6->__left_ == begin_node;
          begin_node = &v6->__left_;
        }

        while (!v7);
      }

      begin_node = &v6->__left_;
    }

    while (v6 != p_end_node);
  }

  return this;
}

void TSCECellRefSet::subsetForOwnerUID(TSCECellRefSet *this@<X0>, const TSKUIDStruct *a2@<X1>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  v6 = sub_22112C8D0(this, &a2->_lower);
  if (&this->_coordsForOwnerUid.__tree_.__end_node_ != v6)
  {
    v7 = sub_221575BB0(a3, &a2->_lower);
    TSCECellCoordSet::addCellCoords((v7 + 48), &v6[6]);
  }
}

TSCECellRefSet *TSCECellRefSet::coordsForOwnerUID@<X0>(TSCECellRefSet *this@<X0>, const TSKUIDStruct *a2@<X1>, void *a3@<X8>)
{
  a3[3] = 0;
  a3[2] = a3 + 3;
  a3[4] = 0;
  *a3 = 0;
  a3[1] = 0;
  result = sub_22112C8D0(this, &a2->_lower);
  if (&this->_coordsForOwnerUid.__tree_.__end_node_ != result)
  {
    return TSCECellCoordSet::operator=(a3, &result[2]);
  }

  return result;
}

void TSCECellRefSet::encodeToArchive(TSCECellRefSet *this, TSCE::CellRefSetArchive *a2)
{
  p_end_node = &this->_coordsForOwnerUid.__tree_.__end_node_;
  begin_node = this->_coordsForOwnerUid.__tree_.__begin_node_;
  if (this->_coordsForOwnerUid.__tree_.__begin_node_ != &this->_coordsForOwnerUid.__tree_.__end_node_)
  {
    while (1)
    {
      v18 = *(begin_node + 2);
      v5 = *(a2 + 4);
      if (!v5)
      {
        goto LABEL_7;
      }

      v6 = *(a2 + 6);
      v7 = *v5;
      if (v6 >= *v5)
      {
        break;
      }

      *(a2 + 6) = v6 + 1;
      v8 = *&v5[2 * v6 + 2];
LABEL_9:
      *(v8 + 16) |= 1u;
      v11 = *(v8 + 24);
      if (!v11)
      {
        v12 = *(v8 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x223DA0360](v12);
        *(v8 + 24) = v11;
      }

      TSKUIDStruct::saveToMessage(&v18, v11);
      *(v8 + 16) |= 2u;
      v13 = *(v8 + 32);
      if (!v13)
      {
        v14 = *(v8 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v14);
        *(v8 + 32) = v13;
      }

      TSCECellCoordSet::encodeToArchive((begin_node + 48), v13);
      v15 = *(begin_node + 1);
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = v15->__left_;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = *(begin_node + 2);
          v17 = v16->__left_ == begin_node;
          begin_node = v16;
        }

        while (!v17);
      }

      begin_node = v16;
      if (v16 == p_end_node)
      {
        return;
      }
    }

    if (v7 == *(a2 + 7))
    {
LABEL_7:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16));
      v5 = *(a2 + 4);
      v7 = *v5;
    }

    *v5 = v7 + 1;
    v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellRefSetArchive_OwnerEntry>(*(a2 + 2));
    v9 = *(a2 + 6);
    v10 = *(a2 + 4) + 8 * v9;
    *(a2 + 6) = v9 + 1;
    *(v10 + 8) = v8;
    goto LABEL_9;
  }
}

void TSCECellRefSet::encodeToArchive(TSCECellRefSet *this, TSCE::InternalCellRefSetArchive *a2, TSCEDependencyTracker *a3)
{
  v8 = a3;
  if (v8)
  {
    begin_node = this->_coordsForOwnerUid.__tree_.__begin_node_;
    p_end_node = &this->_coordsForOwnerUid.__tree_.__end_node_;
    v10 = begin_node;
    if (begin_node != p_end_node)
    {
      while (1)
      {
        v36 = *&v10[4].__left_;
        v12 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(v8, v5, &v36, v6, v7);
        v13 = *(a2 + 4);
        if (!v13)
        {
          goto LABEL_8;
        }

        v14 = *(a2 + 6);
        v15 = *v13;
        if (v14 >= *v13)
        {
          break;
        }

        *(a2 + 6) = v14 + 1;
        v16 = *&v13[2 * v14 + 2];
LABEL_10:
        v19 = *(v16 + 16);
        *(v16 + 32) = v12;
        *(v16 + 16) = v19 | 3;
        v20 = *(v16 + 24);
        if (!v20)
        {
          v21 = *(v16 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordSetArchive>(v21);
          *(v16 + 24) = v20;
        }

        TSCECellCoordSet::encodeToArchive(&v10[6], v20);
        left = v10[1].__left_;
        if (left)
        {
          do
          {
            v23 = left;
            left = left->__left_;
          }

          while (left);
        }

        else
        {
          do
          {
            v23 = v10[2].__left_;
            v24 = v23->__left_ == v10;
            v10 = v23;
          }

          while (!v24);
        }

        v10 = v23;
        if (v23 == p_end_node)
        {
          goto LABEL_22;
        }
      }

      if (v15 == *(a2 + 7))
      {
LABEL_8:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16));
        v13 = *(a2 + 4);
        v15 = *v13;
      }

      *v13 = v15 + 1;
      v16 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive_OwnerEntry>(*(a2 + 2));
      v17 = *(a2 + 6);
      v18 = *(a2 + 4) + 8 * v17;
      *(a2 + 6) = v17 + 1;
      *(v18 + 8) = v16;
      goto LABEL_10;
    }
  }

  else
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "void TSCECellRefSet::encodeToArchive(TSCE::InternalCellRefSetArchive &, TSCEDependencyTracker *__strong) const", v6, v7);
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCECellRefSet.mm", v28, v29);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v31, v26, v30, 249, 0, "invalid nil value for '%{public}s'", "depTracker");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

LABEL_22:
}

void TSCECellRefSet::loadFromArchive(TSCECellRefSet *this, const TSCE::CellRefSetArchive *a2)
{
  p_end_node = &this->_coordsForOwnerUid.__tree_.__end_node_;
  sub_22107C800(this, this->_coordsForOwnerUid.__tree_.__end_node_.__left_);
  this->_coordsForOwnerUid.__tree_.__begin_node_ = p_end_node;
  this->_coordsForOwnerUid.__tree_.__size_ = 0;
  p_end_node->__left_ = 0;
  v6 = *(a2 + 6);
  if (v6 >= 1)
  {
    v7 = MEMORY[0x277D809E0];
    v8 = 8;
    do
    {
      v9 = *(*(a2 + 4) + v8);
      v14 = 0;
      v15 = 0;
      if (*(v9 + 24))
      {
        v10 = *(v9 + 24);
      }

      else
      {
        v10 = v7;
      }

      v14 = TSKUIDStruct::loadFromMessage(v10, v5);
      v15 = v11;
      v16 = &v14;
      v12 = sub_221575BB0(this, &v14);
      if (*(v9 + 32))
      {
        v13 = *(v9 + 32);
      }

      else
      {
        v13 = &TSCE::_CellCoordSetArchive_default_instance_;
      }

      TSCECellCoordSet::loadFromArchive((v12 + 48), v13);
      v8 += 8;
      --v6;
    }

    while (v6);
  }
}

uint64_t **sub_221575854(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_2212692E8(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 2) = *(v9 + 2);
          TSCECellCoordSet::operator=((v8 + 6), (v9 + 6));
          v10 = sub_221279938(v5, &v16, v15 + 2);
          sub_2210BBE8C(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_2212692E8(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_2215759E0(&v13);
  }

  if (a2 != a3)
  {
    sub_221575A38();
  }

  return result;
}

uint64_t sub_2215759E0(uint64_t a1)
{
  sub_22107C800(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_22107C800(*a1, v2);
  }

  return a1;
}

void sub_221575A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char **a10, uint64_t a11)
{
  if (a10)
  {
    sub_221575B50(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_221575B34(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_221575B50(v3, v2);
  _Unwind_Resume(a1);
}

void sub_221575B50(uint64_t a1, char **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_22107C860((a2 + 8), a2[9]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_221575BB0(uint64_t a1, unint64_t *a2)
{
  v2 = *sub_22112C810(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t TSCECellRefSet::removeAllCellRefsForOwner(TSCECellRefSet *this, const TSKUIDStruct *a2)
{
  v3 = sub_22112C8D0(this, &a2->_lower);
  if (&this->_coordsForOwnerUid.__tree_.__end_node_ == v3)
  {
    return 0;
  }

  sub_221575CA4(this, v3);
  return 1;
}

uint64_t *sub_221575CA4(uint64_t **a1, uint64_t a2)
{
  v3 = sub_22112C950(a1, a2);
  sub_22107C860(a2 + 64, *(a2 + 72));
  operator delete(a2);
  return v3;
}

uint64_t sub_221575CE4(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1065353216;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 1;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 1065353216;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 1065353216;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  pthread_mutexattr_init(&v3);
  pthread_mutexattr_settype(&v3, 0);
  pthread_mutex_init(a1, &v3);
  return a1;
}

void sub_221575DC4(_Unwind_Exception *a1)
{
  v7 = v6;
  v9 = *v7;
  if (*v7)
  {
    *(v2 + 240) = v9;
    operator delete(v9);
  }

  sub_2210BDEC0(v5);
  sub_2210BDEC0(v4);
  sub_2210BDEC0(v3);
  sub_2210BDEC0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_221575E08(uint64_t a1)
{
  sub_221575E6C(a1);
  pthread_mutex_destroy(a1);
  v2 = *(a1 + 232);
  if (v2)
  {
    *(a1 + 240) = v2;
    operator delete(v2);
  }

  sub_2210BDEC0(a1 + 192);
  sub_2210BDEC0(a1 + 152);
  sub_2210BDEC0(a1 + 104);
  sub_2210BDEC0(a1 + 64);
  return a1;
}

uint64_t sub_221575E6C(uint64_t a1)
{
  pthread_mutex_lock(a1);
  for (i = *(a1 + 80); i; i = *i)
  {
    v3 = i[3];
    v4 = v3->var0;
    objc_msgSend_willClose(v4, v5, v6, v7, v8);

    TSCETableResolverWrapper::~TSCETableResolverWrapper(v3);
    MEMORY[0x223DA1450]();
  }

  sub_2210BE918((a1 + 64));
  sub_2210BE918((a1 + 104));
  sub_2210BE918((a1 + 152));
  sub_2210BE918((a1 + 192));
  sub_221576494(a1);

  return pthread_mutex_unlock(a1);
}

void sub_221575F38(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v17 = v5;
  if (v5)
  {
    pthread_mutex_lock(a1);
    v6 = *(a1 + 120);
    if (v6)
    {
      v7 = 0;
      do
      {
        v8 = *(a3 + 16);
        if (v7 >= v8)
        {
          v9 = (v7 - *a3) >> 4;
          if ((v9 + 1) >> 60)
          {
            sub_22107C148();
          }

          v10 = v8 - *a3;
          v11 = v10 >> 3;
          if (v10 >> 3 <= (v9 + 1))
          {
            v11 = v9 + 1;
          }

          if (v10 >= 0x7FFFFFFFFFFFFFF0)
          {
            v12 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          if (v12)
          {
            sub_221086F74(a3, v12);
          }

          v13 = (16 * v9);
          *v13 = *(v6 + 1);
          v7 = (16 * v9 + 16);
          v14 = *(a3 + 8) - *a3;
          v15 = 16 * v9 - v14;
          memcpy(v13 - v14, *a3, v14);
          v16 = *a3;
          *a3 = v15;
          *(a3 + 8) = v7;
          *(a3 + 16) = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          *v7++ = *(v6 + 1);
        }

        *(a3 + 8) = v7;
        v6 = *v6;
      }

      while (v6);
    }

    pthread_mutex_unlock(a1);
  }
}

void sub_221576074(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2215760A0(pthread_mutex_t *a1, int a2)
{
  v7 = a2;
  if (a2 == 0xFFFF)
  {
    return 0;
  }

  if ((a1[2].__opaque[8] & 1) == 0)
  {
    v5 = sub_2210C3024(&a1[2].__opaque[16], &v7);
    if (v5)
    {
      return v5[3];
    }

    return 0;
  }

  pthread_mutex_lock(a1);
  v3 = sub_2210C3024(&a1[1].__sig, &v7);
  if (v3)
  {
    v4 = v3[3];
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_unlock(a1);
  return v4;
}

uint64_t sub_221576130(pthread_mutex_t *a1, void *a2)
{
  if (*a2 == 0)
  {
    return 0;
  }

  if ((a1[2].__opaque[8] & 1) == 0)
  {
    v6 = sub_221119F90(&a1[3].__sig, a2);
    if (v6)
    {
      return v6[4];
    }

    return 0;
  }

  pthread_mutex_lock(a1);
  v4 = sub_221119F90(&a1[1].__opaque[32], a2);
  if (v4)
  {
    v5 = v4[4];
  }

  else
  {
    v5 = 0;
  }

  pthread_mutex_unlock(a1);
  return v5;
}

void **sub_2215761B8(pthread_mutex_t *a1, int a2)
{
  v2 = sub_2215760A0(a1, a2);
  if (v2)
  {
    v2 = objc_msgSend_referenceResolverObject(*v2, v3, v4, v5, v6);
  }

  return v2;
}

id sub_2215761F0(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v6 = *(a1 + 80);
  if (v6)
  {
    v7 = objc_msgSend_referenceResolverObject(**(v6 + 24), v2, v3, v4, v5);
  }

  else
  {
    v7 = 0;
  }

  pthread_mutex_unlock(a1);

  return v7;
}

void sub_221576264(uint64_t a1, void *a2, __int16 a3)
{
  v3 = a3;
  if (a2)
  {
    operator new();
  }
}

pthread_mutex_t *sub_221576348(pthread_mutex_t *result, int a2, void *a3)
{
  v20 = a2;
  if (a2 != 0xFFFF)
  {
    v4 = result;
    pthread_mutex_lock(result);
    v5 = sub_2210C3024(&v4[1].__sig, &v20);
    if (v5)
    {
      v6 = v5;
      v8 = *&v4[3].__opaque[40];
      v7 = *&v4[3].__opaque[48];
      if (v8 >= v7)
      {
        v10 = *&v4[3].__opaque[32];
        v11 = (v8 - v10) >> 3;
        if ((v11 + 1) >> 61)
        {
          sub_22107C148();
        }

        v12 = v7 - v10;
        v13 = v12 >> 2;
        if (v12 >> 2 <= (v11 + 1))
        {
          v13 = v11 + 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          sub_221122DC8(&v4[3].__opaque[32], v14);
        }

        *(8 * v11) = v5[3];
        v9 = 8 * v11 + 8;
        v15 = *&v4[3].__opaque[32];
        v16 = *&v4[3].__opaque[40] - v15;
        v17 = (8 * v11 - v16);
        memcpy(v17, v15, v16);
        v18 = *&v4[3].__opaque[32];
        *&v4[3].__opaque[32] = v17;
        *&v4[3].__opaque[40] = v9;
        *&v4[3].__opaque[48] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v8 = v5[3];
        v9 = (v8 + 1);
      }

      *&v4[3].__opaque[40] = v9;
      sub_2210CDD3C(&v4[1].__sig, v6);
      v4[2].__opaque[8] = 1;
    }

    v19 = sub_2210875C4(&v4[1].__opaque[32], a3);
    if (v19)
    {
      sub_2210CDD3C(&v4[1].__opaque[32], v19);
      v4[2].__opaque[8] = 1;
    }

    return pthread_mutex_unlock(v4);
  }

  return result;
}

TSCETableResolverWrapper *sub_221576494(TSCETableResolverWrapper *result)
{
  v1 = result;
  var0 = result[29].var0;
  v3 = result[30].var0;
  if (var0 != v3)
  {
    do
    {
      result = *var0;
      if (*var0)
      {
        TSCETableResolverWrapper::~TSCETableResolverWrapper(result);
        result = MEMORY[0x223DA1450]();
      }

      ++var0;
    }

    while (var0 != v3);
    var0 = v1[29].var0;
  }

  v1[30].var0 = var0;
  return result;
}

pthread_mutex_t *sub_221576500(pthread_mutex_t *result)
{
  if (result[2].__opaque[8] == 1)
  {
    v2 = result;
    pthread_mutex_lock(result);
    if (v2[2].__opaque[8] == 1)
    {
      v2[2].__opaque[8] = 0;
      *&v2[2].__opaque[48] = *&v2[1].__opaque[24];
      sub_221576A08(&v2[2].__opaque[16], *&v2[1].__opaque[8], 0);
      *&v2[3].__opaque[24] = *v2[2].__opaque;
      sub_221576BA8(&v2[3].__sig, *&v2[1].__opaque[48], 0);
    }

    sub_221576494(v2);

    return pthread_mutex_unlock(v2);
  }

  return result;
}

uint64_t **sub_221576590(void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *sub_2215767CC(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void sub_221576A08(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 8);
        *(v8 + 8) = v9;
        v8[3] = a2[3];
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_2211DC0DC(a1, v9, v8 + 8);
        sub_2210BD408(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_221576B1C();
  }
}

void sub_221576AE8(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_221576BA8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        *(v8 + 1) = *(a2 + 1);
        v8[4] = a2[4];
        v9 = *v8;
        v10 = v8[3] ^ v8[2];
        v8[1] = v10;
        v11 = sub_2211F2A14(a1, v10, v8 + 2);
        sub_2210BD408(a1, v8, v11);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_221576CC4();
  }
}

void sub_221576C90(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void sub_2215782D4(uint64_t a1, const char *a2)
{
  v3 = *a2;
  objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(*(a1 + 32), a2, *(a1 + 40), *a2, 1);
  if ((objc_msgSend_hasFormula(*(a1 + 40), v4, v5, v6, v7) & 1) == 0)
  {
    v12 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableModel(FormulaOwner) registerWithCalcEngineForDocumentLoad:ownerKind:]_block_invoke", v10, v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v14, v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v30, v16, 144, 0, "can't translate a non-formula cell");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
  }

  v31 = objc_msgSend_formulaObject(*(a1 + 40), v8, v9, v10, v11);
  v25 = objc_msgSend_copyBySettingTranslationFlags_(v31, v22, 6, v23, v24);
  objc_msgSend_setFormulaObject_(*(a1 + 40), v26, v25, v27, v28);
  objc_msgSend_setCell_atBaseCellCoord_ignoreFormula_clearImportWarnings_(*(a1 + 32), v29, *(a1 + 40), v3, 1, 0);
}

void sub_22157A24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 + 8);
  v8 = objc_msgSend_tableResolverForTableID_(*(a1 + 32), a2, v7, a4, a5);
  v13 = v8;
  if (v8 && objc_msgSend_resolverIsATable(v8, v9, v10, v11, v12))
  {
    objc_msgSend_resetDependenciesForCell_calcEngine_(v13, v9, a2, *(a1 + 32), v12);
    sub_2212DFCE8((*(*(a1 + 40) + 8) + 48), a2);
  }

  else if (v7 != 0xFFFF && objc_msgSend_ownerKindForOwnerID_(*(a1 + 32), v9, v7, v11, v12) <= 1)
  {
    v19[0] = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(*(a1 + 32), v14, v7, v15, v16);
    v19[1] = v17;
    objc_msgSend_removeFormulaAt_inOwner_(*(a1 + 32), v17, a2, v19, v18);
    sub_2212DFCE8((*(*(a1 + 40) + 8) + 48), a2);
  }
}

void sub_22157B818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, uint64_t a26, uint64_t a27, void *a28, void *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_22107C860(&a63, a64);
  if (__p)
  {
    a67 = __p;
    operator delete(__p);
  }

  sub_221087B80(&STACK[0x2B0]);
  sub_221087B80(&STACK[0x2E0]);
  sub_22107C800(v70 - 224, *(v70 - 216));

  sub_22107C800(v70 - 184, *(v70 - 176));
  _Unwind_Resume(a1);
}

void sub_22157BC44(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v12 = objc_msgSend_cellAtCellID_(*(a1 + 32), a2, *a2, a4, a5);
  v13 = v12;
  if (!v12)
  {
    v14 = [TSTCell alloc];
    v13 = objc_msgSend_initWithLocale_(v14, v15, *(a1 + 80), v16, v17);
    objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(*(a1 + 40), v18, v13, v7, 1);
  }

  if (objc_msgSend_hasFormula(v13, v8, v9, v10, v11))
  {
    v23 = objc_msgSend_formulaObject(v13, v19, v20, v21, v22);
    isSpillFormulaForOriginCell = objc_msgSend_isSpillFormulaForOriginCell_(v23, v24, a1 + 104, v25, v26);

    if (isSpillFormulaForOriginCell)
    {
      if (!v12)
      {
        v54 = objc_msgSend_cellAtCellID_(*(a1 + 32), v28, v7, v30, v31);
        if (v54)
        {
          v55 = MEMORY[0x277D81150];
          v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSTTableModel(FormulaOwner) spillArrayValue:primaryCell:withContext:hasWarnings:didBeginOrEndWithTextCell:propagateCheckboxes:]_block_invoke", v30, v31);
          v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTable_FormulaOwner.mm", v58, v59);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v61, v56, v60, 1440, 0, "TODO_SPF: rdar://121891505: Race condition we need to figure out a better answer for - double-checking, atm.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64, v65);
          v53 = v54;

          if ((objc_msgSend_hasFormula(v53, v66, v67, v68, v69) & 1) == 0)
          {

LABEL_9:
            v13 = v53;
            TSCECellRefSet::addCellRef((*(*(a1 + 72) + 8) + 48), a2);
            goto LABEL_10;
          }

          v74 = objc_msgSend_formulaObject(v53, v70, v71, v72, v73);
          v78 = objc_msgSend_isSpillFormulaForOriginCell_(v74, v75, a1 + 104, v76, v77);

          v13 = v53;
          if (!v78)
          {
            goto LABEL_9;
          }
        }
      }

      objc_msgSend_clearValue(v13, v28, v29, v30, v31);
      objc_msgSend_setFormulaObject_(v13, v32, 0, v33, v34);
      objc_msgSend_setCell_atCellID_(*(a1 + 32), v35, v13, v7, v36);
      objc_msgSend_addCellRefToClearError_(*(a1 + 40), v37, a2, v38, v39);
      memset(v80, 0, sizeof(v80));
      v43 = *(a1 + 48);
      if (v43)
      {
        objc_msgSend_cellUIDForCellID_(v43, v40, v7, v41, v42);
      }

      objc_msgSend_addCellUID_(*(a1 + 56), v40, v80, v41, v42);
      objc_msgSend_addCellUID_(*(a1 + 64), v44, v80, v45, v46);
      v47 = *(a1 + 88);
      objc_msgSend_spillChangedPrecedentForTableUID_spillOrigin_(TSCESpillOwner, v48, *(a1 + 96), a1 + 104, v49);
      objc_msgSend_markCellRefAsDirty_(v47, v50, v79, v51, v52);
      v53 = v13;
      goto LABEL_9;
    }
  }

LABEL_10:
}

void *sub_22157C3EC(void *a1, unsigned int *a2)
{
  v2 = *a2 + 16 * *(a2 + 2);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 + 16 * *(a2 + 2);
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  v8 = *a2;
  while (1)
  {
    v9 = v7[1];
    if (v9 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v5)
    {
      goto LABEL_23;
    }

LABEL_22:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v10 = v7[2];
  v12 = v10 == v8;
  v11 = (v8 ^ v10) & 0x101FFFF00000000;
  v12 = v12 && v11 == 0;
  if (!v12)
  {
    goto LABEL_22;
  }

  return v7;
}

void sub_22157C654(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

void *sub_22157C668(void *a1, unsigned int *a2)
{
  v2 = *a2 + 16 * *(a2 + 2);
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 + 16 * *(a2 + 2);
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  v8 = *a2;
  while (1)
  {
    v9 = v7[1];
    if (v9 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v5)
    {
      goto LABEL_23;
    }

LABEL_22:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  v10 = v7[2];
  v12 = v10 == v8;
  v11 = (v8 ^ v10) & 0x101FFFF00000000;
  v12 = v12 && v11 == 0;
  if (!v12)
  {
    goto LABEL_22;
  }

  return v7;
}

void sub_22157C8D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

uint64_t TSCEAnyRef::TSCEAnyRef(uint64_t a1, __int16 a2, TSKUIDStruct *a3)
{
  *a1 = a2;
  v6.coordinate = 0;
  v6._tableUID = *a3;
  TSCERangeRef::TSCERangeRef(&v7, &v6);
  tableUID = v7._tableUID;
  *(a1 + 8) = v7.range;
  *(a1 + 24) = tableUID;
  *(a1 + 40) = 0;
  *(a1 + 72) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return a1;
}

{
  *a1 = a2;
  v6.coordinate = 0;
  v6._tableUID = *a3;
  TSCERangeRef::TSCERangeRef(&v7, &v6);
  tableUID = v7._tableUID;
  *(a1 + 8) = v7.range;
  *(a1 + 24) = tableUID;
  *(a1 + 40) = 0;
  *(a1 + 72) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return a1;
}

uint64_t TSCEAnyRef::TSCEAnyRef(uint64_t a1, __int16 a2, TSKUIDStruct *a3, _OWORD *a4)
{
  *a1 = a2;
  v8.coordinate = 0;
  v8._tableUID = *a3;
  TSCERangeRef::TSCERangeRef(&v9, &v8);
  tableUID = v9._tableUID;
  *(a1 + 8) = v9.range;
  *(a1 + 24) = tableUID;
  *(a1 + 40) = 0;
  *(a1 + 48) = *a4;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

{
  *a1 = a2;
  v8.coordinate = 0;
  v8._tableUID = *a3;
  TSCERangeRef::TSCERangeRef(&v9, &v8);
  tableUID = v9._tableUID;
  *(a1 + 8) = v9.range;
  *(a1 + 24) = tableUID;
  *(a1 + 40) = 0;
  *(a1 + 48) = *a4;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

id TSCEAnyRef::description(TSCEAnyRef *this)
{
  refType = this->_refType;
  v3 = &stru_2834BADA0;
  if (refType <= 2)
  {
    if (this->_refType)
    {
      if (refType == 1)
      {
        v10 = TSCERangeRef::description(&this->_spanningRef.rangeRef);
      }

      else
      {
        if (refType != 2)
        {
          goto LABEL_21;
        }

        v10 = TSCESpanningRangeRef::description(&this->_spanningRef);
      }
    }

    else
    {
      v28.coordinate = this->_spanningRef.rangeRef.range._topLeft;
      v28._tableUID = this->_spanningRef.rangeRef._tableUID;
      v10 = TSCECellRef::description(&v28);
    }

    goto LABEL_20;
  }

  if (this->_refType > 0xDu)
  {
    if (refType == 14)
    {
      v11 = MEMORY[0x277CCACA8];
      v6 = TSKUIDStruct::description(&this->_spanningRef.rangeRef._tableUID);
      v12 = TSKUIDStruct::description(&this->_uuidValue);
      v3 = objc_msgSend_stringWithFormat_(v11, v13, @"%@::%@", v14, v15, v6, v12);

      goto LABEL_18;
    }

    if (refType != 15)
    {
      goto LABEL_21;
    }

    v10 = TSKUIDStruct::description(&this->_spanningRef.rangeRef._tableUID);
LABEL_20:
    v3 = v10;
    goto LABEL_21;
  }

  if (refType == 3 || refType == 10)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = TSKUIDStruct::description(&this->_spanningRef.rangeRef._tableUID);
    v3 = objc_msgSend_stringWithFormat_(v5, v7, @"tableUID: %@", v8, v9, v6);
LABEL_18:
  }

LABEL_21:
  v16 = MEMORY[0x277CCACA8];
  v17 = sub_2216941D4();
  v21 = objc_msgSend_stringWithFormat_(v16, v18, @"%@ %@", v19, v20, v17, v3);

  if (this->_couldBeIntersection)
  {
    v25 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%@ couldBeIntersection:YES", v23, v24, v21);

    v21 = v25;
  }

  if (this->_isExplicitIntersection)
  {
    v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"%@ isExplicitIntersection:YES", v23, v24, v21);

    v21 = v26;
  }

  return v21;
}

BOOL TSCEAnyRef::operator==(void *a1, void *a2)
{
  v2 = *a1;
  if (v2 != *a2)
  {
    return 0;
  }

  v3 = 1;
  if (v2 <= 0xF)
  {
    if (((1 << v2) & 7) != 0)
    {
      return TSCESpanningRangeRef::operator==((a1 + 1), (a2 + 1));
    }

    if (((1 << v2) & 0x8408) != 0)
    {
      if (a1[3] == a2[3])
      {
        v4 = a1[4];
        v5 = a2[4];
        return v4 == v5;
      }
    }

    else
    {
      if (v2 != 14)
      {
        return v3;
      }

      if (a1[3] == a2[3] && a1[4] == a2[4] && a1[6] == a2[6])
      {
        v4 = a1[7];
        v5 = a2[7];
        return v4 == v5;
      }
    }

    return 0;
  }

  return v3;
}

unint64_t TSCEAnyRef::hash(TSCEAnyRef *this)
{
  v1 = 0;
  refType = this->_refType;
  if (refType <= 0xF)
  {
    if (((1 << refType) & 7) != 0)
    {
      v3 = this->_spanningRef.rangeRef.range._topLeft.row ^ (this->_spanningRef.rangeRef.range._topLeft.column << 8) ^ this->_spanningRef.rangeRef.range._bottomRight.row ^ this->_spanningRef.rangeRef._tableUID._lower ^ this->_spanningRef.rangeRef._tableUID._upper ^ (this->_spanningRef.rangeRef.range._bottomRight.column << 8);
      rangeContext = this->_spanningRef.rangeContext;
    }

    else
    {
      if (((1 << refType) & 0x8408) != 0)
      {
        return this->_spanningRef.rangeRef._tableUID._upper ^ this->_spanningRef.rangeRef._tableUID._lower;
      }

      if (refType != 14)
      {
        return v1;
      }

      v3 = this->_uuidValue._upper ^ this->_uuidValue._lower;
      rangeContext = this->_spanningRef.rangeRef._tableUID._lower ^ this->_spanningRef.rangeRef._tableUID._upper;
    }

    return v3 ^ rangeContext;
  }

  return v1;
}

BOOL TSCEAnyRef::isRangeValid(TSCEAnyRef *this)
{
  refType = this->_refType;
  if (refType == 16)
  {
    return 0;
  }

  if (refType == 1)
  {
    topLeft = this->_spanningRef.rangeRef.range._topLeft;
    bottomRight = this->_spanningRef.rangeRef.range._bottomRight;
    v8 = HIDWORD(*&bottomRight);
    v9 = *&topLeft & 0xFFFF00000000;
    if (topLeft.row == 0x7FFFFFFFLL || v9 == 0x7FFF00000000)
    {
      v11 = *&bottomRight & 0xFFFF00000000;
    }

    else
    {
      v11 = *&bottomRight & 0xFFFF00000000;
      if (bottomRight.row != 0x7FFFFFFF && v11 != 0x7FFF00000000 && topLeft.column <= bottomRight.column && topLeft.row <= bottomRight.row)
      {
        return 1;
      }
    }

    if (topLeft.row != 0x7FFFFFFFLL && v9 == 0x7FFF00000000 && v11 == 0x7FFF00000000)
    {
      v12 = 0;
      if (bottomRight.row != 0x7FFFFFFF && topLeft.row <= bottomRight.row)
      {
        return 1;
      }
    }

    else
    {
      v13 = bottomRight.row == 0x7FFFFFFF;
      if (v11 == 0x7FFF00000000)
      {
        v13 = 0;
      }

      if (v9 == 0x7FFF00000000)
      {
        v13 = 0;
      }

      v12 = topLeft.row == 0x7FFFFFFFLL && v13;
    }

    return topLeft.column <= v8 && v12;
  }

  if (this->_refType)
  {
    return 1;
  }

  v2 = this->_spanningRef.rangeRef.range._topLeft;
  v4 = v2.row == 0x7FFFFFFF;
  v3 = *&v2 & 0xFFFF00000000;
  v4 = v4 || v3 == 0x7FFF00000000;
  return !v4;
}

uint64_t TSCEAnyRef::containedTableUID(TSCEAnyRef *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = &v11;
  v11 = 0;
  v12 = &v11;
  v13 = 0x4012000000;
  v14 = sub_22157D07C;
  v15 = nullsub_84;
  v16 = &unk_22188E88F;
  tableUID = 0;
  refType = this->_refType;
  if (refType <= 9)
  {
    if (refType >= 4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (refType - 14 < 2 || refType == 10)
  {
LABEL_8:
    tableUID = this->_spanningRef.rangeRef._tableUID;
    v5 = &v11;
    goto LABEL_9;
  }

  if (refType == 18)
  {
    refSet = this->_refSet;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_22157D08C;
    v10[3] = &unk_278461420;
    v10[4] = &v11;
    objc_msgSend_forallRefs_(refSet, a2, v10, a4, a5);
    v5 = v12;
  }

LABEL_9:
  v8 = v5[6];
  _Block_object_dispose(&v11, 8);
  return v8;
}

void sub_22157D064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_22157D07C(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_22157D08C(uint64_t a1, TSCEAnyRef *this, _BYTE *a3)
{
  result = TSCEAnyRef::containedTableUID(this);
  v6 = *(*(a1 + 32) + 8);
  *(v6 + 48) = result;
  *(v6 + 56) = v7;
  *a3 = 1;
  return result;
}

void TSCEAnyRef::forallRefs(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_autoreleasePoolPush();
  if (*a1 == 18)
  {
    objc_msgSend_forallRefs_(*(a1 + 72), v4, v3, v5, v6);
  }

  else
  {
    v8 = 0;
    v3[2](v3, a1, &v8);
  }

  objc_autoreleasePoolPop(v7);
}

uint64_t sub_22157E0F4(void *a1)
{
  v1 = objc_getAssociatedObject(a1, "TSTStrokeAssociatedObject");
  v6 = objc_msgSend_dontClearBackground(v1, v2, v3, v4, v5);

  return v6;
}

BOOL sub_22157E134(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_pattern(a1, a2, a3, a4, a5);
  if (v10)
  {
    v11 = objc_msgSend_pattern(a1, v6, v7, v8, v9);
    v16 = objc_msgSend_patternType(v11, v12, v13, v14, v15) == 2;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

BOOL sub_22157E19C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_msgSend_pattern(a1, a2, a3, a4, a5);
  if (v10)
  {
    v11 = objc_msgSend_pattern(a1, v6, v7, v8, v9);
    v16 = objc_msgSend_patternType(v11, v12, v13, v14, v15) == 1;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

BOOL sub_22157E204(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v17 = 0;
  if (objc_msgSend_isEqual_(a1, v5, v4, v6, v7))
  {
    v12 = objc_msgSend_dontClearBackground(a1, v8, v9, v10, v11);
    if (v12 == objc_msgSend_dontClearBackground(v4, v13, v14, v15, v16))
    {
      v17 = 1;
    }
  }

  return v17;
}

id sub_22157E26C(objc_class *a1, double a2)
{
  v3 = [a1 alloc];
  v8 = objc_msgSend_blackColor(MEMORY[0x277D81180], v4, v5, v6, v7);
  v13 = objc_msgSend_emptyPattern(MEMORY[0x277D803C8], v9, v10, v11, v12);
  v15 = objc_msgSend_initWithColor_width_cap_join_pattern_(v3, v14, v8, 0, 0, v13, a2);

  return v15;
}

id sub_22157E308(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22157E3A8;
  block[3] = &unk_278462558;
  block[4] = a1;
  if (qword_27CFB6058 != -1)
  {
    dispatch_once(&qword_27CFB6058, block);
  }

  v1 = qword_27CFB6060;

  return v1;
}

void sub_22157E3A8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_emptyStrokeWithWidth_(*(a1 + 32), a2, a3, a4, a5, 0.0);
  v6 = qword_27CFB6060;
  qword_27CFB6060 = v5;
}

id sub_22157E3E8(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22157E488;
  block[3] = &unk_278462558;
  block[4] = a1;
  if (qword_27CFB6068 != -1)
  {
    dispatch_once(&qword_27CFB6068, block);
  }

  v1 = qword_27CFB6070;

  return v1;
}

void sub_22157E488(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_emptyStrokeWithWidth_(*(a1 + 32), a2, a3, a4, a5, 0.0);
  v6 = qword_27CFB6070;
  qword_27CFB6070 = v5;
}

id sub_22157E4C8(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22157E568;
  block[3] = &unk_278462558;
  block[4] = a1;
  if (qword_27CFB6078 != -1)
  {
    dispatch_once(&qword_27CFB6078, block);
  }

  v1 = qword_27CFB6080;

  return v1;
}

void sub_22157E568(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_emptyStrokeWithWidth_(*(a1 + 32), a2, a3, a4, a5, -1.0);
  v6 = qword_27CFB6080;
  qword_27CFB6080 = v5;
}

id sub_22157E5C8(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_mutableCopy(a1, a2, a3, a4, a5);
  objc_msgSend_width(v5, v6, v7, v8, v9);
  v15 = v14;
  v16 = 1.0;
  if (v15 >= 1.0)
  {
    objc_msgSend_width(v5, v10, v11, v12, v13);
    v16 = floor(v17) + 1.0;
  }

  objc_msgSend_setWidth_(v5, v10, v11, v12, v13, v16);
  v22 = objc_msgSend_copy(v5, v18, v19, v20, v21);

  return v22;
}

id sub_22157E640(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = objc_msgSend_mutableCopy(a1, a2, a3, a4, a5);
  objc_msgSend_setWidth_(v7, v8, v9, v10, v11, a6);
  v16 = objc_msgSend_copy(v7, v12, v13, v14, v15);

  return v16;
}

void sub_22157E69C(id object, uint64_t a2, int a3)
{
  if (a3)
  {
    value = objc_alloc_init(TSTStrokeAssociatedObject);
    objc_msgSend_setDontClearBackground_(value, v4, 1, v5, v6);
    objc_setAssociatedObject(object, "TSTStrokeAssociatedObject", value, 1);
  }

  else
  {

    objc_setAssociatedObject(object, "TSTStrokeAssociatedObject", 0, 1);
  }
}

uint64_t sub_22157EFF8(void *a1, uint64_t a2)
{
  v3 = a1;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8 = objc_msgSend_length(v3, v4, v5, v6, v7);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_221587ED4;
  v12[3] = &unk_278467040;
  v12[4] = v17;
  v12[5] = &v13;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v3, v9, 0, v8, 2, v12);
  v10 = v14[3];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(v17, 8);

  return v10;
}

void sub_22157F0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_22157FC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  __p = (v27 - 112);
  sub_22107C2C0(&__p);

  _Unwind_Resume(a1);
}

void sub_221580C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v17 = *(v15 - 104);
  if (v17)
  {
    *(v15 - 96) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_221580D44(void *a1, uint64_t a2)
{
  v3 = a1;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8 = objc_msgSend_length(v3, v4, v5, v6, v7);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_221587F10;
  v12[3] = &unk_278467040;
  v12[4] = v17;
  v12[5] = &v13;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(v3, v9, 0, v8, 2, v12);
  v10 = v14[3];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(v17, 8);

  return v10;
}

void sub_221580E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 64), 8);

  _Unwind_Resume(a1);
}

void sub_2215812A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221582C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  a26 = &a35;
  sub_22107C2C0(&a26);

  _Unwind_Resume(a1);
}

void sub_22158328C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, void *a21, void *a22)
{
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void sub_221583FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v21 = *(v19 - 112);
  if (v21)
  {
    *(v19 - 104) = v21;
    operator delete(v21);
  }

  _Unwind_Resume(a1);
}

void sub_2215872B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, void *a37)
{
  v43 = *(v41 - 120);
  if (v43)
  {
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_221587ED4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v7 = *(*(result + 32) + 8);
  v8 = *(v7 + 24);
  if (v8)
  {
    *(v7 + 24) = v8 - 1;
    *(*(*(result + 40) + 8) + 24) += a4;
  }

  else
  {
    *a7 = 1;
  }

  return result;
}

uint64_t sub_221587F10(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v7 = *(*(result + 32) + 8);
  v8 = *(v7 + 24);
  v9 = v8 >= a4;
  v10 = v8 - a4;
  if (v9)
  {
    *(v7 + 24) = v10;
    ++*(*(*(result + 40) + 8) + 24);
  }

  else
  {
    *a7 = 1;
  }

  return result;
}

void *sub_221587F64(void *a1, id *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_221587FB0(a1, a2);
    v5 = result;
  }

  else
  {
    result = *a2;
    *v3 = result;
    v5 = v3 + 1;
  }

  a1[1] = v5;
  return result;
}

uint64_t sub_221587FB0(void *a1, id *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_22107C148();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v11[4] = a1;
  if (v7)
  {
    sub_22107C1F0(a1, v7);
  }

  v8 = (8 * v2);
  v11[0] = 0;
  v11[1] = v8;
  v11[3] = 0;
  *v8 = *a2;
  v11[2] = v8 + 1;
  sub_22107C098(a1, v11);
  v9 = a1[1];
  sub_22107C26C(v11);
  return v9;
}

void sub_221588078(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_221588158(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_221589234(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1 = a1 + 48;
  *v1 = v2 | 3;
  *&v3.f64[0] = 0x8000000080000000;
  *&v3.f64[1] = 0x8000000080000000;
  *(v1 + 8) = vnegq_f64(v3);
  *(v1 + 24) = 0;
  return TSUIndexSet::operator=();
}

void sub_221589260(void *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v3 & 0xFFFF00000000;
  v6 = v4 & 0xFFFF00000000;
  v7 = v3 == 0x7FFFFFFFLL || v5 == 0x7FFF00000000;
  if (v7 || (v4 != 0x7FFFFFFF ? (v8 = v6 == 0x7FFF00000000) : (v8 = 1), v8 || (WORD2(v3) <= WORD2(v4) ? (v9 = v3 > v4) : (v9 = 1), v9)))
  {
    if (v3 != 0x7FFFFFFFLL && v5 == 0x7FFF00000000 && v6 == 0x7FFF00000000)
    {
      if (v4 == 0x7FFFFFFF || v3 > v4)
      {
        return;
      }
    }

    else if (v3 != 0x7FFFFFFFLL || v5 == 0x7FFF00000000 || v6 == 0x7FFF00000000 || v4 != 0x7FFFFFFF || WORD2(v3) > WORD2(v4))
    {
      return;
    }
  }

  v12 = sub_221589394(v3, v4, a1[5], a1[6]);
  if (v13 == 0x7FFFFFFF || v12 == 0x7FFFFFFFLL)
  {
    v15.length = 0;
  }

  else
  {
    v15.length = v13 - v12 + 1;
  }

  v15.location = v12;
  TSUIndexRange::TSUIndexRange(&v16, v15);
  if (v16._begin <= 0x7FFFFFFF && v16._end <= 0x7FFFFFFF)
  {
    TSUIndexSet::addIndexesInRange((*(a1[4] + 8) + 48), &v16);
  }
}

uint64_t sub_221589394(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  result = 0x7FFF7FFFFFFFLL;
  v6 = HIDWORD(a1);
  v7 = a1 & 0xFFFF00000000;
  if (a1 == 0x7FFFFFFFLL || v7 == 0x7FFF00000000)
  {
    v8 = a2 & 0xFFFF00000000;
  }

  else
  {
    v8 = a2 & 0xFFFF00000000;
    if (a2 != 0x7FFFFFFF && v8 != 0x7FFF00000000 && WORD2(a1) <= WORD2(a2) && a1 <= a2)
    {
      goto LABEL_18;
    }
  }

  if (v8 == 0x7FFF00000000 || a1 != 0x7FFFFFFFLL || v7 == 0x7FFF00000000)
  {
    if (v7 != 0x7FFF00000000 || v8 != 0x7FFF00000000 || a2 == 0x7FFFFFFFLL || a1 == 0x7FFFFFFFLL)
    {
      return result;
    }
  }

  else if (a2 != 0x7FFFFFFF)
  {
    return result;
  }

LABEL_18:
  v9 = HIDWORD(a3);
  v10 = a3 & 0xFFFF00000000;
  if (a3 == 0x7FFFFFFFLL || v10 == 0x7FFF00000000)
  {
    v11 = a4 & 0xFFFF00000000;
    goto LABEL_26;
  }

  v11 = a4 & 0xFFFF00000000;
  if (a4 == 0x7FFFFFFF || v11 == 0x7FFF00000000 || WORD2(a3) > WORD2(a4) || a3 > a4)
  {
LABEL_26:
    if (v11 == 0x7FFF00000000 || a3 != 0x7FFFFFFFLL || v10 == 0x7FFF00000000)
    {
      if (v10 != 0x7FFF00000000 || v11 != 0x7FFF00000000 || a4 == 0x7FFFFFFFLL || a3 == 0x7FFFFFFFLL)
      {
        return result;
      }
    }

    else if (a4 != 0x7FFFFFFF)
    {
      return result;
    }
  }

  if (a1 != 0x7FFFFFFFLL && v7 == 0x7FFF00000000 && (a2 & 0xFFFF00000000) == 0x7FFF00000000 && a2 != 0x7FFFFFFFLL)
  {
    a2 &= 0xFFFF03E7FFFFFFFFLL;
    LOWORD(v6) = 0;
  }

  if (a3 != 0x7FFFFFFFLL && v10 == 0x7FFF00000000 && (a4 & 0xFFFF00000000) == 0x7FFF00000000 && a4 != 0x7FFFFFFFLL)
  {
    a4 &= 0xFFFF03E7FFFFFFFFLL;
    LOWORD(v9) = 0;
  }

  if (a1 == 0x7FFFFFFFLL && v6 != 0x7FFF && (a2 & 0xFFFF00000000) != 0x7FFF00000000 && a2 == 0x7FFFFFFFLL)
  {
    a2 = a2 & 0xFFFFFFFF00000000 | 0xF423F;
    LODWORD(a1) = 0;
  }

  if (a3 == 0x7FFFFFFFLL && v9 != 0x7FFF && (a4 & 0xFFFF00000000) != 0x7FFF00000000 && a4 == 0x7FFFFFFFLL)
  {
    a4 = a4 & 0xFFFFFFFF00000000 | 0xF423F;
    LODWORD(a3) = 0;
  }

  if (v6 <= v9)
  {
    v6 = v9;
  }

  else
  {
    v6 = v6;
  }

  if (a1 <= a3)
  {
    a1 = a3;
  }

  else
  {
    a1 = a1;
  }

  v12 = HIDWORD(a2);
  if (WORD2(a2) >= WORD2(a4))
  {
    v12 = HIDWORD(a4);
  }

  if (a2 >= a4)
  {
    LODWORD(a2) = a4;
  }

  if (v6 != 0x7FFF && a1 != 0x7FFFFFFF && a2 != 0x7FFFFFFF && v12 != 0x7FFFLL && v12 >= v6 && a1 <= a2)
  {
    return a1 | (v6 << 32);
  }

  return result;
}

void sub_221589850(void *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v3 & 0xFFFF00000000;
  v6 = v4 & 0xFFFF00000000;
  v7 = v3 == 0x7FFFFFFFLL || v5 == 0x7FFF00000000;
  if (v7 || (v4 != 0x7FFFFFFF ? (v8 = v6 == 0x7FFF00000000) : (v8 = 1), v8 || (WORD2(v3) <= WORD2(v4) ? (v9 = v3 > v4) : (v9 = 1), v9)))
  {
    if (v3 != 0x7FFFFFFFLL && v5 == 0x7FFF00000000 && v6 == 0x7FFF00000000)
    {
      if (v4 == 0x7FFFFFFF || v3 > v4)
      {
        return;
      }
    }

    else if (v3 != 0x7FFFFFFFLL || v5 == 0x7FFF00000000 || v6 == 0x7FFF00000000 || v4 != 0x7FFFFFFF || WORD2(v3) > WORD2(v4))
    {
      return;
    }
  }

  v13 = (sub_221589394(v3, v4, a1[5], a1[6]) >> 32);
  if (v12 == 0x7FFF || v13 == 0x7FFF)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12 - v13 + 1;
  }

  v19.location = v13;
  v19.length = v15;
  TSUIndexRange::TSUIndexRange(&v18, v19);
  if (v18._begin <= 0x7FFFFFFF && v18._end <= 0x7FFFFFFF)
  {
    v16 = *(a1[4] + 8);
    v20.location = v13;
    v20.length = v15;
    TSUIndexRange::TSUIndexRange(&v17, v20);
    TSUIndexSet::addIndexesInRange((v16 + 48), &v17);
  }
}

uint64_t sub_22158AA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 & 0xFFFF00000000;
  v5 = a2 & 0xFFFF00000000;
  if (a1 != 0x7FFFFFFFLL && v4 == 0x7FFF00000000 && v5 == 0x7FFF00000000)
  {
    v6 = 0;
    v7 = a2 != 0x7FFFFFFF;
  }

  else
  {
    v7 = 0;
    if (a1 != 0x7FFFFFFFLL || v4 == 0x7FFF00000000)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      if (v5 != 0x7FFF00000000)
      {
        v7 = 0;
        v6 = a2 == 0x7FFFFFFF;
      }
    }
  }

  v8 = a3 & 0xFFFF00000000;
  v9 = a4 & 0xFFFF00000000;
  v10 = a3;
  if (a3 != 0x7FFFFFFFLL && v8 == 0x7FFF00000000 && v9 == 0x7FFF00000000)
  {
    v11 = 0;
    v12 = a4 != 0x7FFFFFFF;
  }

  else
  {
    v12 = 0;
    if (a3 != 0x7FFFFFFFLL || v8 == 0x7FFF00000000)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      if (v9 != 0x7FFF00000000)
      {
        v12 = 0;
        v11 = a4 == 0x7FFFFFFF;
      }
    }
  }

  if (!v7)
  {
    if (v6)
    {
      LODWORD(a1) = 0;
      LODWORD(a2) = 999999;
    }

    if (!v12)
    {
      goto LABEL_21;
    }

LABEL_27:
    v8 = 0;
    v9 = 0x3E700000000;
    goto LABEL_28;
  }

  v4 = 0;
  v5 = 0x3E700000000;
  if (v12)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (v11)
  {
    LODWORD(a3) = 0;
    LODWORD(a4) = 999999;
  }

  v10 = a3;
LABEL_28:
  v13 = 0x7FFF7FFFFFFFLL;
  v14 = 0x7FFF00000000;
  v15 = 0x7FFFFFFFLL;
  if (a1 <= a4 && a3 <= a2)
  {
    v16 = HIDWORD(v4);
    v15 = 0x7FFFFFFFLL;
    if (HIDWORD(v4) <= HIDWORD(v9))
    {
      v17 = HIDWORD(v5);
      v18 = HIDWORD(v8);
      if (HIDWORD(v8) <= HIDWORD(v5))
      {
        v14 = 0x7FFF00000000;
        v15 = 0x7FFFFFFFLL;
        if (a1 != 0x7FFFFFFFLL && v4 != 0x7FFF00000000)
        {
          v15 = 0x7FFFFFFFLL;
          if (a2 != 0x7FFFFFFFLL && v5 != 0x7FFF00000000)
          {
            v15 = 0x7FFFFFFFLL;
            if (v17 >= v16 && a1 <= a2)
            {
              v15 = 0x7FFFFFFFLL;
              if (v10 != 0x7FFFFFFF && v8 != 0x7FFF00000000)
              {
                v15 = 0x7FFFFFFFLL;
                if (a4 != 0x7FFFFFFFLL && v9 != 0x7FFF00000000)
                {
                  v15 = 0x7FFFFFFFLL;
                  if (v18 <= HIDWORD(v9) && a3 <= a4)
                  {
                    if (v16 <= v17)
                    {
                      if (v16 <= v18)
                      {
                        v19 = HIDWORD(v8);
                      }

                      else
                      {
                        v19 = HIDWORD(v4);
                      }

                      if (a1 <= a3)
                      {
                        v20 = a3;
                      }

                      else
                      {
                        v20 = a1;
                      }

                      v13 = v20 | (v19 << 32);
                    }

                    if (v7 && v12)
                    {
                      v14 = 0x7FFF00000000;
                    }

                    else
                    {
                      v14 = v13 & 0xFFFF00000000;
                    }

                    if (v6 && v11)
                    {
                      v15 = 0x7FFFFFFFLL;
                    }

                    else
                    {
                      v15 = v13;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v14 | v15;
}

void sub_22158AFBC(_Unwind_Exception *a1)
{
  TSUIndexSet::~TSUIndexSet(v1 + 1);
  TSUIndexSet::~TSUIndexSet(v1);
  _Unwind_Resume(a1);
}

void sub_22158C4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, TSUIndexSet *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, TSUIndexSet *a14)
{
  TSUIndexSet::~TSUIndexSet((v15 - 152));
  TSUIndexSet::~TSUIndexSet((v15 - 184));

  _Unwind_Resume(a1);
}

void sub_22158DD88(uint64_t a1, uint64_t a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22158DE34;
  v7[3] = &unk_278467090;
  v10 = a2;
  v3 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  objc_msgSend_enumerateIndexesUsingBlock_(v3, v4, v7, v5, v6);
}

TSCECellCoordSet *sub_22158DE34(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 | (*(a1 + 56) << 32);
  v7 = objc_msgSend_summaryCellCoordForViewCellCoord_(*(a1 + 32), a2, v6, a4, a5);
  result = objc_msgSend_baseCellCoordForViewCellCoord_(*(a1 + 32), v8, v6, v9, v10);
  v12 = result;
  if (v7 != 0x7FFFFFFF && (v7 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v14 = *(*(a1 + 40) + 8);
    v17 = v7;
    result = TSCECellCoordSet::addCellCoord((v14 + 48), &v17);
  }

  if (v12.row != 0x7FFFFFFF && (*&v12 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v16 = *(*(a1 + 48) + 8);
    v17 = v12;
    return TSCECellCoordSet::addCellCoord((v16 + 48), &v17);
  }

  return result;
}

void sub_22158DEF0(uint64_t a1, uint64_t a2)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22158E004;
  v12[3] = &unk_2784670E0;
  v15 = a2;
  v17 = *(a1 + 80);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v18 = *(a1 + 81);
  v5 = *(a1 + 48);
  v16 = *(a1 + 72);
  v11 = *(a1 + 56);
  v6 = *(&v11 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v14 = v11;
  v13 = v7;
  objc_msgSend_enumerateIndexesUsingBlock_(v3, v8, v12, v9, v10);
}

void sub_22158E004(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v40._tableUID._lower = 0;
  v40._tableUID._upper = 0;
  v40.coordinate = 0x7FFF7FFFFFFFLL;
  v7 = *(a1 + 64);
  if (*(a1 + 80) != 1 || (*(a1 + 81) & objc_msgSend_hidingActionForRowAtIndex_(*(a1 + 32), a2, v7, a4, a5)) == 0 && (*(a1 + 81) & objc_msgSend_hidingActionForColumnAtIndex_(*(a1 + 32), v8, v5, v9, v10)) == 0)
  {
    memset(v39, 0, sizeof(v39));
    v11 = *(a1 + 40);
    if (v11)
    {
      objc_msgSend_cellUIDForCellID_(v11, a2, v7 | (v5 << 32), a4, a5);
    }

    v14 = objc_msgSend_valueForCellUID_outGeometricPrecedent_fetchRichTextAttributesIfPlainText_(*(a1 + 48), a2, v39, &v40, 0);
    v15 = *(a1 + 72);
    if (v15)
    {
      if ((TSCECellRefSet::containsCellRef(v15, &v40) & 1) == 0)
      {
        v19 = MEMORY[0x277D81150];
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTTableResolver valuesForViewTractRef:hidingActionMask:outError:outGeometricPrecedents:forceHidingOfPivotFiltered:]_block_invoke_4", v17, v18);
        v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableResolver.mm", v22, v23);
        v38._lower = objc_msgSend_tableUID(*(a1 + 40), v25, v26, v27, v28);
        v38._upper = v29;
        v30 = TSKUIDStruct::description(&v38);
        v31 = TSCECellRef::description(&v40);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v32, v20, v24, 1386, 0, "%@: Should have had all precedents already, but missing: %@", v30, v31);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35, v36);
      }

      TSCECellRefSet::addCellRef(*(a1 + 72), &v40);
    }

    v37 = *(a1 + 56);
    LODWORD(v38._lower) = v5;
    HIDWORD(v38._lower) = v7;
    objc_msgSend_setValue_atCoord_(v37, v12, v14, &v38, v13);
  }
}

void sub_22158E200(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v16 = a3;
  v10 = objc_msgSend_asErrorValue(v16, v6, v7, v8, v9);
  v15 = v10;
  if (v10)
  {
    **(a1 + 32) = objc_msgSend_error(v10, v11, v12, v13, v14);
  }

  *a4 = 1;
}

void sub_22158E638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, TSUIndexSet *a6, TSUIndexSet *a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, id a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, id a35)
{
  TSUIndexSet::~TSUIndexSet(&a18);

  _Block_object_dispose((v40 - 136), 8);
  _Unwind_Resume(a1);
}