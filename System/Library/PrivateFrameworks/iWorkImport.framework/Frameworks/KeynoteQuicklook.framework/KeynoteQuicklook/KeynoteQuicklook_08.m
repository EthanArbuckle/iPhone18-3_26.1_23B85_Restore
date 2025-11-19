uint64_t sub_275E1EC60(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = TSS::StyleArchive::ByteSizeLong(*(a1 + 24));
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
      v6 = sub_275E1CFC0(*(a1 + 32));
      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v7 = TSP::DataReference::ByteSizeLong(*(a1 + 40));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) != 0)
    {
LABEL_8:
      v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_9:
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v3, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_275E1ED9C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D82A0, 0);
  if (v4)
  {

    return sub_275E1EE44(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E1EE44(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C8F060](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D80BD0];
      }

      result = TSS::StyleArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_27;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = sub_275E219FC(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = &unk_2812EBDF0;
    }

    result = sub_275E1D944(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_8:
      *(v3 + 48) = *(a2 + 48);
      goto LABEL_9;
    }

LABEL_27:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277C8EFD0](v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 40))
    {
      v14 = *(a2 + 40);
    }

    else
    {
      v14 = MEMORY[0x277D80A30];
    }

    result = TSP::DataReference::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t *sub_275E1EFA0(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E1E67C(result);

    return sub_275E1ED9C(v4, a2);
  }

  return result;
}

uint64_t sub_275E1EFEC(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSS::StyleArchive::IsInitialized(*(a1 + 24));
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 2) != 0)
    {
      result = sub_275E1E410(*(a1 + 32));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 4) == 0)
    {
      return 1;
    }

    result = TSP::DataReference::IsInitialized(*(a1 + 40));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t *sub_275E1F094(uint64_t *a1)
{
  if (a1 != &qword_2812EC170)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275E1F0F8(uint64_t *a1)
{
  sub_275E1F094(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E1F138()
{
  if (atomic_load_explicit(dword_2812EA280, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812EC170;
}

uint64_t *sub_275E1F178(uint64_t *result)
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

    return sub_275E224D0(v2);
  }

  return result;
}

google::protobuf::internal *sub_275E1F1D4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_275E221E8(a3, &v16) & 1) == 0)
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

        v12 = MEMORY[0x277C8F050](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_275E5B9DC(a3, v10, v5);
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
        sub_275E22260((a1 + 8));
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

unsigned __int8 *sub_275E1F31C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t sub_275E1F40C(uint64_t a1)
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

    return MEMORY[0x2821EADD8](a1 + 8, v2, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_275E1F498(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D82B8, 0);
  if (v4)
  {

    return sub_275DEEEF0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_275E1F540(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E1F178(result);

    return sub_275E1F498(v4, a2);
  }

  return result;
}

uint64_t sub_275E1F58C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return TSP::Reference::IsInitialized(*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275E1F5E4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E24700(a1, 1);
  sub_275DE4498(v2, a1);
  return v2;
}

uint64_t sub_275E1F670(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E2478C(a1, 1);
  sub_275DE609C(v2, a1);
  return v2;
}

void *sub_275E1F6FC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E24818(a1);
}

uint64_t sub_275E1F7C8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E24918(a1);
}

uint64_t sub_275E1F8A0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E24A24(a1);
}

uint64_t sub_275E1F970(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E24B28(a1, 1);
  sub_275DE92E4(v2, a1);
  return v2;
}

void *sub_275E1F9FC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E24BB4(a1, 1);
  sub_275DEA0D4(v2, a1);
  return v2;
}

uint64_t sub_275E1FA88(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E24C40(a1, 1);
  sub_275DEACE0(v2, a1);
  return v2;
}

uint64_t sub_275E1FB14(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E24CCC(a1, 1);
  sub_275DED580(v2, a1);
  return v2;
}

uint64_t sub_275E1FBA0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E24D58(a1);
}

void *sub_275E1FC70(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E24E5C(a1);
}

void *sub_275E1FD3C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E24F5C(a1, 1);
  sub_275DEF034(v2, a1);
  return v2;
}

void *sub_275E1FDC8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E24FE8(a1, 1);
  sub_275DEF9B0(v2, a1);
  return v2;
}

void *sub_275E1FE54(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E25074(a1, 1);
  sub_275DF04A4(v2, a1);
  return v2;
}

void *sub_275E1FEE0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E25100(a1, 1);
  sub_275DF0D04(v2, a1);
  return v2;
}

uint64_t sub_275E1FF6C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E2518C(a1, 1);
  sub_275DF13EC(v2, a1);
  return v2;
}

uint64_t sub_275E1FFF8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E25218(a1, 1);
  sub_275DF1B58(v2, a1);
  return v2;
}

void *sub_275E20084(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E252A4(a1, 1);
  sub_275DF693C(v2, a1);
  return v2;
}

uint64_t sub_275E20110(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E25330(a1, 1);
  sub_275DF7204(v2, a1);
  return v2;
}

uint64_t sub_275E2019C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275E253BC(a1, 1);
  *result = &unk_2884D6048;
  *(result + 8) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 1;
  return result;
}

uint64_t sub_275E20218(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E25464(a1, 1);
  sub_275DFB2C8(v2, a1);
  return v2;
}

void *sub_275E202A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E254F0(a1);
}

void *sub_275E20370(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E255F0(a1, 1);
  sub_275DFF4B4(v2, a1);
  return v2;
}

uint64_t sub_275E203FC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E2567C(a1, 1);
  sub_275E00180(v2, a1);
  return v2;
}

uint64_t sub_275E20488(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275E25708(a1, 1);
  *result = &unk_2884D63B8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

void *sub_275E204F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E257B0(a1, 1);
  sub_275E01804(v2, a1);
  return v2;
}

uint64_t sub_275E20584(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E2583C(a1, 1);
  sub_275E02064(v2, a1);
  return v2;
}

void *sub_275E20610(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E258C8(a1, 1);
  sub_275E03A04(v2, a1);
  return v2;
}

uint64_t sub_275E2069C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E25954(a1, 1);
  sub_275E0433C(v2, a1);
  return v2;
}

void *sub_275E20728(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E259E0(a1);
}

void *sub_275E207F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E25AE4(a1);
}

uint64_t sub_275E208C8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E25BE8(a1);
}

void *sub_275E20998(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E25CEC(a1);
}

uint64_t sub_275E20A64(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E25DEC(a1, 1);
  sub_275E08518(v2, a1);
  return v2;
}

void *sub_275E20AF0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E25E78(a1, 1);
  sub_275E0B488(v2, a1);
  return v2;
}

uint64_t sub_275E20B7C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E25F04(a1, 1);
  sub_275E0C440(v2, a1);
  return v2;
}

uint64_t sub_275E20C08(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E25F90(a1);
}

uint64_t sub_275E20CD8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275E26094(a1, 1);
  *result = &unk_2884D6CA8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_275E20D4C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E2613C(a1, 1);
  sub_275E0E0B8(v2, a1);
  return v2;
}

uint64_t sub_275E20DD8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E261C8(a1, 1);
  sub_275E0E9E0(v2, a1);
  return v2;
}

void *sub_275E20E64(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E26254(a1);
}

void *sub_275E20F34(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E26358(a1);
}

uint64_t sub_275E21000(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275E26458(a1, 1);
  *result = &unk_2884D7018;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_275E21074(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E26500(a1, 1);
  sub_275E1101C(v2, a1);
  return v2;
}

uint64_t sub_275E21100(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E2658C(a1, 1);
  sub_275E119AC(v2, a1);
  return v2;
}

void *sub_275E2118C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E26618(a1, 1);
  sub_275E12248(v2, a1);
  return v2;
}

uint64_t sub_275E21218(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E266A4(a1, 1);
  sub_275E12B2C(v2, a1);
  return v2;
}

void *sub_275E212A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E26730(a1);
}

void *sub_275E21370(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E26830(a1);
}

void *sub_275E2143C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E26930(a1, 1);
  sub_275E1443C(v2, a1);
  return v2;
}

void *sub_275E214C8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E269BC(a1);
}

uint64_t sub_275E21594(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E26ABC(a1, 1);
  sub_275E15710(v2, a1);
  return v2;
}

uint64_t sub_275E21620(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E26B48(a1);
}

uint64_t sub_275E216FC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E26C58(a1, 1);
  sub_275E17764(v2, a1);
  return v2;
}

uint64_t sub_275E21788(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E26CE4(a1);
}

void *sub_275E21858(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E26DE8(a1, 1);
  sub_275E19198(v2, a1);
  return v2;
}

void *sub_275E218E4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E26E74(a1, 1);
  sub_275E19CC8(v2, a1);
  return v2;
}

uint64_t sub_275E21970(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275E26F00(a1, 1);
  *result = &unk_2884D7A68;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_275E21A00(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275E26F8C(a1, 1);
  sub_275E1AB2C(v2, a1);
  return v2;
}

uint64_t sub_275E21A8C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E27018(a1);
}

void *sub_275E21B60(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275E27120(a1);
}

uint64_t sub_275E221E8(uint64_t a1, uint64_t *a2)
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

uint64_t *sub_275E22260(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  sub_275E222A8(v2);
  *a1 = v3 | 1;
  *v3 = v2;
  return v3 + 1;
}

double sub_275E222A8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v1 = sub_275E222EC(a1, 0);
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  return result;
}

uint64_t sub_275E222EC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5F87C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275E22374);
}

void sub_275E22374(uint64_t a1)
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

uint64_t sub_275E223D8(uint64_t result)
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

uint64_t *sub_275E22424(uint64_t *result)
{
  v1 = *(result + 2);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = result[2] + 8;
    do
    {
      result = (*v3 + 8);
      v4 = *result;
      *(*v3 + 16) = 0;
      if (v4)
      {
        result = sub_275E224D0(result);
      }

      v3 += 8;
      --v1;
    }

    while (v1);
    *(v2 + 2) = 0;
  }

  return result;
}

uint64_t sub_275E22484(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v3 = sub_275E22260(a1);
  }

  return MEMORY[0x2821EAB30](v3, a2);
}

uint64_t *sub_275E224D0(uint64_t *a1)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_275E22260(a1);
  }

  if (*result != result[1])
  {

    return google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

void sub_275E22520(void *a1)
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
          v5 = MEMORY[0x277C8EB90]();
          MEMORY[0x277C8F960](v5, 0x10A1C407EE01FB0);
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

uint64_t sub_275E225A4(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E22654(v13, v15);
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
      v22 = MEMORY[0x277C8F080](v18);
      result = sub_275E22654(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E22664(void *a1)
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
          MEMORY[0x277C8F960]();
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

uint64_t sub_275E226E8(uint64_t result, TSP::Reference **a2, TSP::Reference **a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E22798(v13, v15);
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
      v22 = MEMORY[0x277C8F050](v18);
      result = sub_275E22798(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E227A8(void *a1)
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
          v5 = sub_275DF0D74(*v3);
          MEMORY[0x277C8F960](v5, 0x10A1C407EE01FB0);
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

uint64_t sub_275E2282C(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E228DC(v13, v15);
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
      v22 = sub_275E1FEDC(v18);
      result = sub_275E228DC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E228EC(void *a1)
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
          v5 = sub_275DE7DD8(*v3);
          MEMORY[0x277C8F960](v5, 0x10A1C4006E45F86);
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

void sub_275E22970(void *a1)
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
          TSD::GuideArchive::~GuideArchive(*v3);
          MEMORY[0x277C8F960]();
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

void sub_275E229F4(void *a1)
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
          v5 = sub_275DF0514(*v3);
          MEMORY[0x277C8F960](v5, 0x10A1C407EE01FB0);
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

uint64_t sub_275E22A78(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E22B28(v13, v15);
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
      v22 = sub_275E1F7C4(v18);
      result = sub_275E22B28(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275E22B38(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E22BE8(v13, v15);
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
      v22 = MEMORY[0x277C8EF80](v18);
      result = sub_275E22BE8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275E22BF8(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E228DC(v13, v15);
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
      v22 = sub_275E1FE50(v18);
      result = sub_275E228DC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E22CA8(void *a1)
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

          MEMORY[0x277C8F960](v5, 0x1012C40EC159624);
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

std::string *sub_275E22D44(std::string *result, std::string **a2, const std::string **a3, unsigned int a4, unsigned int a5)
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
      v22 = sub_275D5EFD8(v18);
      result = std::string::operator=(v22, v21);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E22DF0(void *a1)
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
          TSP::Size::~Size(*v3);
          MEMORY[0x277C8F960]();
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

void sub_275E22E74(void *a1)
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
          TSP::DataReference::~DataReference(*v3);
          MEMORY[0x277C8F960]();
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

void sub_275E22EF8(void *a1)
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
          v5 = sub_275DF69D0(*v3);
          MEMORY[0x277C8F960](v5, 0x10A1C4000E43543);
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

void sub_275E22F7C(void *a1)
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
          MEMORY[0x277C8F960]();
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

void sub_275E23000(void *a1)
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
          v5 = sub_275E1A538(*v3);
          MEMORY[0x277C8F960](v5, 0x1081C4085BC40B3);
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

uint64_t sub_275E23084(uint64_t result, TSP::Size **a2, TSP::Size **a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E23134(v13, v15);
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
      v22 = MEMORY[0x277C8EFF0](v18);
      result = sub_275E23134(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275E23144(uint64_t result, TSP::DataReference **a2, TSP::DataReference **a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E231F4(v13, v15);
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
      v22 = MEMORY[0x277C8EFD0](v18);
      result = sub_275E231F4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275E23204(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E232B4(v13, v15);
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
      v22 = sub_275E20080(v18);
      result = sub_275E232B4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275E232C4(uint64_t result, TSP::UUID **a2, TSP::UUID **a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E23374(v13, v15);
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
      v22 = MEMORY[0x277C8F000](v18);
      result = sub_275E23374(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_275E23384(uint64_t *result, uint64_t **a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E23434(v13, v15);
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
      v22 = sub_275E2196C(v18);
      result = sub_275E23434(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E23444(void *a1)
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
          v5 = MEMORY[0x277C8EBD0]();
          MEMORY[0x277C8F960](v5, 0x10A1C4054BF9DFBLL);
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

uint64_t sub_275E234C8(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E23578(v13, v15);
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
      v22 = MEMORY[0x277C8F090](v18);
      result = sub_275E23578(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E23588(void *a1)
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
          v5 = MEMORY[0x277C8EA80]();
          MEMORY[0x277C8F960](v5, 0x10A1C40290C9B23);
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

uint64_t sub_275E2360C(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E236BC(v13, v15);
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
      v22 = MEMORY[0x277C8F040](v18);
      result = sub_275E236BC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E236CC(void *a1)
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
          v5 = sub_275E01874(*v3);
          MEMORY[0x277C8F960](v5, 0x10A1C407EE01FB0);
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

uint64_t sub_275E23750(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E23800(v13, v15);
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
      v22 = sub_275E204F4(v18);
      result = sub_275E23800(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E23810(void *a1)
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
          TSP::Range::~Range(*v3);
          MEMORY[0x277C8F960]();
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

void sub_275E23894(void *a1)
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
          v5 = MEMORY[0x277C8E7D0]();
          MEMORY[0x277C8F960](v5, 0x10A1C4042CF1500);
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

void sub_275E23918(void *a1)
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
          v5 = sub_275E07D64(*v3);
          MEMORY[0x277C8F960](v5, 0x10A1C40DFBAE579);
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

uint64_t sub_275E2399C(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E23A4C(v13, v15);
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
      v22 = MEMORY[0x277C8F030](v18);
      result = sub_275E23A4C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275E23A5C(uint64_t result, TSD::GeometryArchive **a2, TSD::GeometryArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E23B0C(v13, v15);
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
      v22 = MEMORY[0x277C8EFA0](v18);
      result = sub_275E23B0C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275E23B1C(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E23BCC(v13, v15);
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
      v22 = sub_275E20994(v18);
      result = sub_275E23BCC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E23BDC(void *a1)
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
          v5 = sub_275E0EA58(*v3);
          MEMORY[0x277C8F960](v5, 0x10A1C4014BB2387);
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

uint64_t sub_275E23C60(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E23D10(v13, v15);
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
      v22 = sub_275E20DD4(v18);
      result = sub_275E23D10(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E23D20(void *a1)
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
          v5 = sub_275E122B8(*v3);
          MEMORY[0x277C8F960](v5, 0x10A1C4042CF1500);
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

uint64_t sub_275E23DA4(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E23E54(v13, v15);
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
      v22 = sub_275E21188(v18);
      result = sub_275E23E54(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E23E64(void *a1)
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
          v5 = sub_275E13BD0(*v3);
          MEMORY[0x277C8F960](v5, 0x10A1C40DFBAE579);
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

uint64_t sub_275E23EE8(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E23F98(v13, v15);
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
      v22 = sub_275E2136C(v18);
      result = sub_275E23F98(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275E23FA8(void *a1)
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
          v5 = MEMORY[0x277C8EC10]();
          MEMORY[0x277C8F960](v5, 0x10A1C40C05B56FCLL);
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

void sub_275E2402C(void *a1)
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
          v5 = MEMORY[0x277C8EC90]();
          MEMORY[0x277C8F960](v5, 0x10A1C406130BDD3);
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

void sub_275E240B0(void *a1)
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
          v5 = MEMORY[0x277C8EC50]();
          MEMORY[0x277C8F960](v5, 0x10A1C40C05B56FCLL);
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

google::protobuf::internal *sub_275E24134(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *this;
  if ((*this & 0x80000000) == 0)
  {
    result = (this + 1);
    goto LABEL_5;
  }

  result = google::protobuf::internal::ReadSizeFallback(this, *this);
  if (result)
  {
    v5 = v7;
    while (1)
    {
LABEL_5:
      v8 = *(a1 + 8);
      v9 = v8 - result;
      if (v5 <= v8 - result)
      {
        v14 = a3[1];
        v15 = result + v5;
        v18 = *a3;
        v19 = v14;
        result = sub_275E24298(result, v15, &v18);
        if (v15 != result)
        {
          return 0;
        }

        return result;
      }

      v10 = a3[1];
      v18 = *a3;
      v19 = v10;
      result = sub_275E24298(result, v8, &v18);
      if (!result)
      {
        return result;
      }

      v11 = *(a1 + 8);
      v12 = result - v11;
      v13 = v5 - v9;
      if (v5 - v9 <= 16)
      {
        break;
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 = v5 - v9 - v12;
      result = (result + v12);
    }

    v22 = 0;
    v21 = 0;
    v16 = *v11;
    v17 = a3[1];
    v18 = *a3;
    v19 = v17;
    v20 = v16;
    if (sub_275E24298((&v20 + v12), &v20 + v13, &v18) != (&v20 + v13))
    {
      return 0;
    }

    return (*(a1 + 8) + v13);
  }

  return result;
}

unsigned __int8 *sub_275E24298(google::protobuf::internal *this, unint64_t a2, unsigned int **a3)
{
  v3 = this;
  if (this < a2)
  {
    do
    {
      v6 = *v3;
      if (v6 < 0)
      {
        v7 = (v3[1] << 7) + v6;
        v6 = (v7 - 128);
        if (v3[1] < 0)
        {
          v3 = google::protobuf::internal::VarintParseSlow64(v3, (v7 - 128));
          if (!v3)
          {
            return v3;
          }

          v6 = v8;
        }

        else
        {
          v3 += 2;
        }
      }

      else
      {
        ++v3;
      }

      if ((a3[1])(v6))
      {
        v9 = *a3;
        v10 = **a3;
        if (v10 == (*a3)[1])
        {
          v11 = v10 + 1;
          sub_275D98CF0(*a3, v10 + 1);
          *(*(v9 + 1) + 4 * v10) = v6;
        }

        else
        {
          *(*(v9 + 1) + 4 * v10) = v6;
          v11 = v10 + 1;
        }

        *v9 = v11;
      }

      else
      {
        v12 = a3[2];
        if (*v12)
        {
          v13 = ((*v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v13 = sub_275E22260(v12);
        }

        google::protobuf::UnknownFieldSet::AddVarint(v13);
      }
    }

    while (v3 < a2);
  }

  return v3;
}

uint64_t sub_275E243B8(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E24468(v13, v15);
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
      v22 = MEMORY[0x277C8F0A0](v18);
      result = sub_275E24468(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275E24478(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E24528(v13, v15);
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
      v22 = MEMORY[0x277C8F0C0](v18);
      result = sub_275E24528(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275E24538(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275E245E8(v13, v15);
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
      v22 = MEMORY[0x277C8F0B0](v18);
      result = sub_275E245E8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275E245F8(TSD::MovieArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSD::MovieArchive::default_instance(a1);
  if (atomic_load_explicit(dword_2812EA198, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &qword_2812EBC80);
}

uint64_t sub_275E2467C(TSD::FillArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSD::FillArchive::default_instance(a1);
  if (atomic_load_explicit(dword_2812EA280, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &qword_2812EC170);
}

uint64_t sub_275E24700(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5F8AC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 136, sub_275E24788);
}

uint64_t sub_275E2478C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5F8DC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, sub_275E24814);
}

void *sub_275E24818(uint64_t a1)
{
  v2 = sub_275E2488C(a1, 1);
  *v2 = &unk_2884D5498;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA828, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_275E2488C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5F918(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275E24914);
}

uint64_t sub_275E24918(uint64_t a1)
{
  v2 = sub_275E24998(a1, 1);
  *v2 = &unk_2884D5548;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA040, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 54) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_275E24998(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5F948(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, sub_275E24A20);
}

uint64_t sub_275E24A24(uint64_t a1)
{
  v2 = sub_275E24A9C(a1, 1);
  *v2 = &unk_2884D55F8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA070, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_275E24A9C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5F978(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E24B24);
}

uint64_t sub_275E24B28(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5F9A8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, sub_275E24BB0);
}

uint64_t sub_275E24BB4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5F9D8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275E24C3C);
}

uint64_t sub_275E24C40(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FA08(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 224, sub_275E24CC8);
}

uint64_t sub_275E24CCC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FA44(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_275E24D54);
}

uint64_t sub_275E24D58(uint64_t a1)
{
  v2 = sub_275E24DD0(a1, 1);
  *v2 = &unk_2884D5968;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA3B0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_275E24DD0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FA74(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E24E58);
}

void *sub_275E24E5C(uint64_t a1)
{
  v2 = sub_275E24ED0(a1, 1);
  *v2 = &unk_2884D5A18;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA320, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_275E24ED0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FAA4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275E24F58);
}

uint64_t sub_275E24F5C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FAD4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275E24FE4);
}

uint64_t sub_275E24FE8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FB04(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_275E25070);
}

uint64_t sub_275E25074(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FB34(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E250FC);
}

uint64_t sub_275E25100(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FB64(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E25188);
}

uint64_t sub_275E2518C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FB94(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275E25214);
}

uint64_t sub_275E25218(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FBC4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 464, sub_275E252A0);
}

uint64_t sub_275E252A4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FC00(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275E2532C);
}

uint64_t sub_275E25330(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FC30(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 296, sub_275E253B8);
}

uint64_t sub_275E253BC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FC6C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275E25444);
}

uint64_t sub_275E25464(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FC9C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 336, sub_275E254EC);
}

void *sub_275E254F0(uint64_t a1)
{
  v2 = sub_275E25564(a1, 1);
  *v2 = &unk_2884D61A8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA140, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_275E25564(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FCD8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275E255EC);
}

uint64_t sub_275E255F0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FD08(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, sub_275E25678);
}

uint64_t sub_275E2567C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FD38(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 160, sub_275E25704);
}

uint64_t sub_275E25708(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FD74(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_275E25790);
}

uint64_t sub_275E257B0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FDA4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E25838);
}

uint64_t sub_275E2583C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FDD4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 168, sub_275E258C4);
}

uint64_t sub_275E258C8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FE10(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275E25950);
}

uint64_t sub_275E25954(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FE40(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 120, sub_275E259DC);
}

void *sub_275E259E0(uint64_t a1)
{
  v2 = sub_275E25A58(a1, 1);
  *v2 = &unk_2884D6728;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA118, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_275E25A58(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FE7C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275E25AE0);
}

void *sub_275E25AE4(uint64_t a1)
{
  v2 = sub_275E25B5C(a1, 1);
  *v2 = &unk_2884D67D8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA770, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  *(v2 + 37) = 0;
  return v2;
}

uint64_t sub_275E25B5C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FEAC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275E25BE4);
}

uint64_t sub_275E25BE8(uint64_t a1)
{
  v2 = sub_275E25C60(a1, 1);
  *v2 = &unk_2884D6888;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA748, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_275E25C60(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FEDC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275E25CE8);
}

void *sub_275E25CEC(uint64_t a1)
{
  v2 = sub_275E25D60(a1, 1);
  *v2 = &unk_2884D6938;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA390, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_275E25D60(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FF0C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E25DE8);
}

uint64_t sub_275E25DEC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FF3C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 392, sub_275E25E74);
}

uint64_t sub_275E25E78(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FF78(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 112, sub_275E25F00);
}

uint64_t sub_275E25F04(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FFB4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, sub_275E25F8C);
}

uint64_t sub_275E25F90(uint64_t a1)
{
  v2 = sub_275E26008(a1, 1);
  *v2 = &unk_2884D6BF8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA568, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_275E26008(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E5FFF0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E26090);
}

uint64_t sub_275E26094(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60020(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275E2611C);
}

uint64_t sub_275E2613C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60050(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275E261C4);
}

uint64_t sub_275E261C8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60080(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_275E26250);
}

void *sub_275E26254(uint64_t a1)
{
  v2 = sub_275E262CC(a1, 1);
  *v2 = &unk_2884D6EB8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA528, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_275E262CC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E600B0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275E26354);
}

void *sub_275E26358(uint64_t a1)
{
  v2 = sub_275E263CC(a1, 1);
  *v2 = &unk_2884D6F68;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA4C0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_275E263CC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E600E0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E26454);
}

uint64_t sub_275E26458(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60110(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275E264E0);
}

uint64_t sub_275E26500(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60140(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_275E26588);
}

uint64_t sub_275E2658C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60170(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275E26614);
}

uint64_t sub_275E26618(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E601A0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275E266A0);
}

uint64_t sub_275E266A4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E601D0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_275E2672C);
}

void *sub_275E26730(uint64_t a1)
{
  v2 = sub_275E267A4(a1, 1);
  *v2 = &unk_2884D7388;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA728, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_275E267A4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60200(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275E2682C);
}

void *sub_275E26830(uint64_t a1)
{
  v2 = sub_275E268A4(a1, 1);
  *v2 = &unk_2884D7438;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA6A0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_275E268A4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60230(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E2692C);
}

uint64_t sub_275E26930(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60260(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, sub_275E269B8);
}

void *sub_275E269BC(uint64_t a1)
{
  v2 = sub_275E26A30(a1, 1);
  *v2 = &unk_2884D7598;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA3D0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_275E26A30(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E6029C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275E26AB8);
}

uint64_t sub_275E26ABC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E602CC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 136, sub_275E26B44);
}

uint64_t sub_275E26B48(uint64_t a1)
{
  v2 = sub_275E26BCC(a1, 1);
  *v2 = &unk_2884D76F8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA198, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 72) = 0;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_275E26BCC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E602FC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, sub_275E26C54);
}

uint64_t sub_275E26C58(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E6032C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, sub_275E26CE0);
}

uint64_t sub_275E26CE4(uint64_t a1)
{
  v2 = sub_275E26D5C(a1, 1);
  *v2 = &unk_2884D7858;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA1F8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_275E26D5C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E6035C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E26DE4);
}

uint64_t sub_275E26DE8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E6038C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, sub_275E26E70);
}

uint64_t sub_275E26E74(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E603BC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275E26EFC);
}

uint64_t sub_275E26F00(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E603EC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275E26F88);
}

uint64_t sub_275E26F8C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E6041C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 840, sub_275E27014);
}

uint64_t sub_275E27018(uint64_t a1)
{
  v2 = sub_275E27094(a1, 1);
  *v2 = &unk_2884D7BC8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA2A0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_275E27094(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60458(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275E2711C);
}

void *sub_275E27120(uint64_t a1)
{
  v2 = sub_275E27194(a1, 1);
  *v2 = &unk_2884D7C78;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812EA280, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_275E27194(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275E60488(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C8F160);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275E2721C);
}

uint64_t sub_275E2738C(google::protobuf::UnknownFieldSet *this)
{

  return google::protobuf::UnknownFieldSet::AddVarint(this);
}

uint64_t sub_275E273BC()
{
  google::protobuf::internal::AddDescriptors();
  if (atomic_load_explicit(dword_2812EA198, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812EC190 = 100;
  qword_2812EC198 = &qword_2812EBC80;
  sub_275E245F8(0x64, 11, 0);
  if (atomic_load_explicit(dword_2812EA280, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812EC1A0 = 200;
  qword_2812EC1A8 = &qword_2812EC170;

  return sub_275E2467C(0xC8, 11, 0);
}

void sub_275E276F4()
{
  v0 = TSULogCreateCategory();
  v1 = KNRecordingMovieSegmentTrimmerCat_log_t;
  KNRecordingMovieSegmentTrimmerCat_log_t = v0;
}

void sub_275E27734(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v57[0] = 0;
  v4 = objc_msgSend_statusOfValueForKey_error_(v3, a2, @"duration", v57);
  v7 = v57[0];
  if (v4 == 2)
  {
    memset(&v56, 0, sizeof(v56));
    v8 = *(a1 + 32);
    if (v8)
    {
      objc_msgSend_duration(v8, v5, v6);
    }

    memset(&v55, 0, sizeof(v55));
    CMTimeMakeWithSeconds(&time.start, *(*(a1 + 40) + 16), *MEMORY[0x277D80710]);
    CMTimeConvertScale(&v55, &time.start, v56.timescale, kCMTimeRoundingMethod_RoundAwayFromZero);
    if (KNRecordingMovieSegmentTrimmerCat_init_token != -1)
    {
      sub_275E604F4();
    }

    CMTimeMake(&rhs, 5, 100);
    lhs = v55;
    CMTimeAdd(&time.start, &lhs, &rhs);
    rhs = v56;
    if (CMTimeCompare(&time.start, &rhs) < 0)
    {
      v12 = objc_msgSend_context(*(a1 + 48), v9, v10);
      v13 = objc_alloc(MEMORY[0x277CE6400]);
      v15 = objc_msgSend_initWithAsset_presetName_(v13, v14, *(a1 + 32), *MEMORY[0x277CE5C78]);
      objc_msgSend_setOutputFileType_(v15, v16, *MEMORY[0x277CE5DA8]);
      v43 = objc_msgSend_temporaryDirectory(v12, v17, v18);
      v19 = MEMORY[0x277CCACA8];
      v22 = objc_msgSend_tsu_stringWithUUID(MEMORY[0x277CCACA8], v20, v21);
      v24 = objc_msgSend_stringWithFormat_(v19, v23, @"MovieRecording-%@.mov", v22);

      v27 = objc_msgSend_preferredFilenameExtension(*MEMORY[0x277CE1E40], v25, v26);
      v28 = MEMORY[0x277CBEBC0];
      v30 = objc_msgSend_stringByAppendingPathComponent_(v43, v29, v24);
      v32 = objc_msgSend_stringByAppendingPathExtension_(v30, v31, v27);
      v34 = objc_msgSend_tsu_fileURLWithPath_(v28, v33, v32);

      objc_msgSend_setOutputURL_(v15, v35, v34);
      objc_msgSend_setShouldOptimizeForNetworkUse_(v15, v36, 1);
      *&time.start.value = *MEMORY[0x277CC08F0];
      time.start.epoch = *(MEMORY[0x277CC08F0] + 16);
      rhs = v55;
      CMTimeRangeMake(&v52, &time.start, &rhs);
      time = v52;
      objc_msgSend_setTimeRange_(v15, v37, &time);
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = sub_275E27B34;
      v44[3] = &unk_27A699530;
      v45 = v15;
      v46 = v34;
      v38 = *(a1 + 40);
      v47 = v12;
      v48 = v38;
      v50 = v55;
      v49 = *(a1 + 56);
      v39 = v12;
      v40 = v34;
      v41 = v15;
      objc_msgSend_exportAsynchronouslyWithCompletionHandler_(v41, v42, v44);

      goto LABEL_14;
    }

    if (KNRecordingMovieSegmentTrimmerCat_init_token != -1)
    {
      sub_275E6051C();
    }

    v11 = *(*(a1 + 56) + 16);
  }

  else
  {
    if (KNRecordingMovieSegmentTrimmerCat_init_token != -1)
    {
      sub_275E604CC();
    }

    v11 = *(*(a1 + 56) + 16);
  }

  v11();
LABEL_14:
}

void sub_275E27AF4()
{
  v0 = TSULogCreateCategory();
  v1 = KNRecordingMovieSegmentTrimmerCat_log_t;
  KNRecordingMovieSegmentTrimmerCat_log_t = v0;
}

void sub_275E27B34(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_status(*(a1 + 32), a2, a3) == 3)
  {
    v6 = *(a1 + 40);
    v32 = 0;
    v7 = *MEMORY[0x277CBE838];
    v31 = 0;
    ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(v6, v4, &v32, v7, &v31);
    v9 = v32;
    v12 = v31;
    if (ResourceValue_forKey_error)
    {
      if (objc_msgSend_unsignedLongLongValue(v9, v10, v11))
      {
        if (KNRecordingMovieSegmentTrimmerCat_init_token != -1)
        {
          sub_275E60580();
        }

        v14 = objc_msgSend_dataFromURL_context_(MEMORY[0x277D80828], v13, *(a1 + 40), *(a1 + 48));
        v15 = [KNMovieSegment alloc];
        objc_msgSend_startTime(*(*(a1 + 56) + 8), v16, v17);
        started = objc_msgSend_initWithMovieData_startTime_(v15, v18, v14);

LABEL_7:
        v20 = 0;
LABEL_15:

        goto LABEL_16;
      }

      CMTimeMake(&time2, 5, 100);
      v29 = *(a1 + 72);
      if (CMTimeCompare(&v29, &time2) <= 0)
      {
        if (KNRecordingMovieSegmentTrimmerCat_init_token != -1)
        {
          sub_275E605D0();
        }

        v24 = [KNMovieSegment alloc];
        objc_msgSend_startTime(*(*(a1 + 56) + 8), v25, v26);
        started = objc_msgSend_initEmptySegmentWithStartTime_(v24, v27, v28);
        goto LABEL_7;
      }

      if (KNRecordingMovieSegmentTrimmerCat_init_token != -1)
      {
        sub_275E605A8();
      }

      v22 = objc_alloc(MEMORY[0x277CCA9B8]);
      v21 = objc_msgSend_initWithDomain_code_userInfo_(v22, v23, *MEMORY[0x277CCA050], 259, 0);
    }

    else
    {
      if (KNRecordingMovieSegmentTrimmerCat_init_token != -1)
      {
        sub_275E60558();
      }

      v21 = v12;
    }

    v20 = v21;
    started = 0;
    goto LABEL_15;
  }

  if (KNRecordingMovieSegmentTrimmerCat_init_token != -1)
  {
    sub_275E60544();
  }

  v20 = objc_msgSend_error(*(a1 + 32), v4, v5);
  started = 0;
LABEL_16:
  (*(*(a1 + 64) + 16))();
}

void sub_275E27D60()
{
  v0 = TSULogCreateCategory();
  v1 = KNRecordingMovieSegmentTrimmerCat_log_t;
  KNRecordingMovieSegmentTrimmerCat_log_t = v0;
}

void sub_275E27DA0()
{
  v0 = TSULogCreateCategory();
  v1 = KNRecordingMovieSegmentTrimmerCat_log_t;
  KNRecordingMovieSegmentTrimmerCat_log_t = v0;
}

void sub_275E27DE0()
{
  v0 = TSULogCreateCategory();
  v1 = KNRecordingMovieSegmentTrimmerCat_log_t;
  KNRecordingMovieSegmentTrimmerCat_log_t = v0;
}

void sub_275E27E20()
{
  v0 = TSULogCreateCategory();
  v1 = KNRecordingMovieSegmentTrimmerCat_log_t;
  KNRecordingMovieSegmentTrimmerCat_log_t = v0;
}

void sub_275E27E60()
{
  v0 = TSULogCreateCategory();
  v1 = KNRecordingMovieSegmentTrimmerCat_log_t;
  KNRecordingMovieSegmentTrimmerCat_log_t = v0;
}

void sub_275E27EA0()
{
  v0 = TSULogCreateCategory();
  v1 = KNRecordingMovieSegmentTrimmerCat_log_t;
  KNRecordingMovieSegmentTrimmerCat_log_t = v0;
}

void sub_275E27EE0()
{
  v0 = TSULogCreateCategory();
  v1 = KNRecordingMovieSegmentTrimmerCat_log_t;
  KNRecordingMovieSegmentTrimmerCat_log_t = v0;
}

double sub_275E29218(void *a1)
{
  objc_opt_class();
  v4 = objc_msgSend_info(a1, v2, v3);
  v7 = objc_msgSend_documentRoot(v4, v5, v6);
  v8 = TSUDynamicCast();

  v11 = objc_msgSend_show(v8, v9, v10);

  if (v11)
  {
    v14 = objc_msgSend_info(a1, v12, v13);
    IsVertical = objc_msgSend_textIsVertical(v14, v15, v16);
    v20 = objc_msgSend_show(v8, v18, v19);
    objc_msgSend_size(v20, v21, v22);
    v24 = v23;
    v26 = v25;

    if (IsVertical)
    {
      v24 = v26;
    }

    v29 = objc_msgSend_info(a1, v27, v28);
    v32 = objc_msgSend_stroke(v29, v30, v31);

    if (v32)
    {
      objc_msgSend_width(v32, v33, v34);
      v24 = v24 + v35 * -4.0;
    }
  }

  else
  {
    v24 = 4000.0;
  }

  return v24;
}

uint64_t sub_275E2934C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_layoutController(a1, a2, a3);
  v7 = objc_msgSend_canvas(v4, v5, v6);

  v10 = objc_msgSend_delegate(v7, v8, v9);
  v11 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    v14 = objc_msgSend_slideNumber(v11, v12, v13, &unk_28851BE40);
  }

  else
  {
    v15 = objc_msgSend_info(a1, v12, v13, &unk_28851BE40);
    v18 = objc_msgSend_abstractSlide(v15, v16, v17);

    v21 = objc_msgSend_slideNode(v18, v19, v20);
    v24 = objc_msgSend_owningDocument(v21, v22, v23);
    v27 = objc_msgSend_show(v24, v25, v26);

    v14 = 0x7FFFFFFFFFFFFFFFLL;
    if (v21 && v27)
    {
      v30 = objc_msgSend_slideTree(v27, v28, v29);
      v14 = objc_msgSend_slideNumberForSlideNode_(v30, v31, v21);
    }
  }

  return v14;
}

uint64_t sub_275E29490(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_info(a1, a2, a3);
  v6 = objc_msgSend_owningDocument(v3, v4, v5);
  v9 = objc_msgSend_show(v6, v7, v8);

  v12 = objc_msgSend_slideTree(v9, v10, v11);
  v15 = objc_msgSend_visibleSlideNodes(v12, v13, v14);
  v18 = objc_msgSend_count(v15, v16, v17);

  return v18;
}

void sub_275E295FC(uint64_t a1, const char *a2)
{
  v5[22] = *MEMORY[0x277D85DE8];
  v4[0] = @"KNTransitionEffectProperty";
  v4[1] = @"KNTransitionAttributesDirection";
  v5[0] = @"effect";
  v5[1] = @"direction";
  v4[2] = @"KNTransitionAttributesDuration";
  v4[3] = @"KNTransitionAttributesDelay";
  v5[2] = @"duration";
  v5[3] = @"delay";
  v4[4] = @"KNTransitionAttributesIsAutomatic";
  v4[5] = @"KNTransitionAttributesColor";
  v5[4] = @"hasAutomaticTrigger";
  v5[5] = @"color";
  v4[6] = @"com.apple.iWork.Keynote.BUKTwist.twist";
  v4[7] = @"com.apple.iWork.Keynote.BLTMosaicFlip.numberOfParticles";
  v5[6] = @"customTwist";
  v5[7] = @"customMosaicSize";
  v4[8] = @"com.apple.iWork.Keynote.BLTMosaicFlip.type";
  v4[9] = @"KNTransitionCustomAttributesBounce";
  v5[8] = @"customMosaicType";
  v5[9] = @"customBounce";
  v4[10] = @"KNTransitionCustomAttributesMotionBlur";
  v4[11] = @"KNTransitionCustomAttributesTimingCurve";
  v5[10] = @"customMotionBlur";
  v5[11] = @"customTimingCurve";
  v4[12] = @"KNTransitionCustomAttributesRandomNumberSeed";
  v4[13] = @"KNAnimationAttributesCustomEffectTimingCurve1";
  v5[12] = @"randomNumberSeed";
  v5[13] = @"customEffectTimingCurve1";
  v4[14] = @"KNAnimationAttributesCustomEffectTimingCurve2";
  v4[15] = @"KNAnimationAttributesCustomEffectTimingCurve3";
  v5[14] = @"customEffectTimingCurve2";
  v5[15] = @"customEffectTimingCurve3";
  v4[16] = @"KNAnimationAttributesCustomEffectTimingCurveThemeName1";
  v4[17] = @"KNAnimationAttributesCustomEffectTimingCurveThemeName2";
  v5[16] = @"customEffectTimingCurveThemeName1";
  v5[17] = @"customEffectTimingCurveThemeName2";
  v4[18] = @"KNAnimationAttributesCustomEffectTimingCurveThemeName3";
  v4[19] = @"KNTransitionCustomAttributesMagicMoveFadeUnmatchedObjects";
  v5[18] = @"customEffectTimingCurveThemeName3";
  v5[19] = @"customMagicMoveFadeUnmatchedObjects";
  v4[20] = @"KNTransitionCustomAttributesTextDelivery";
  v4[21] = @"KNTransitionCustomAttributesTravelDistance";
  v5[20] = @"customTextDelivery";
  v5[21] = @"customTravelDistance";
  v2 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v5, v4, 22);
  v3 = qword_280A3C598;
  qword_280A3C598 = v2;
}

void sub_275E2D0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_275E2D0F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275E2D134(uint64_t a1, const char *a2)
{
  v4 = a1 + 32;
  v3 = *(a1 + 32);
  v5 = *(*(*(v4 + 8) + 8) + 40);
  if (v5)
  {

    objc_msgSend_i_didLoadBuild_(v3, a2, v5);
  }

  else if (*(v3 + 64))
  {
    objc_opt_class();
    v8 = objc_msgSend_context(*(a1 + 32), v6, v7);
    v10 = objc_msgSend_objectWithUUID_(v8, v9, *(*(a1 + 32) + 64));
    v11 = TSUCheckedDynamicCast();
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (*(*(*(a1 + 40) + 8) + 40))
    {
      objc_msgSend_willModifyForUpgrade(*(a1 + 32), v14, v15);
      v17 = *(a1 + 32);
      v18 = *(*(*(a1 + 40) + 8) + 40);

      objc_msgSend_i_setBuildPointer_forUnarchive_(v17, v16, v18, 1);
    }
  }

  else
  {
    v19 = objc_msgSend_objectAndReturnError_(*(v3 + 136), a2, 0);

    if (!v19)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[KNBuildChunk(PersistenceAdditions) loadFromArchive:unarchiver:]_block_invoke_3");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildChunkPersistenceAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 107, 0, "invalid nil value for '%{public}s'", "[_buildReference objectAndReturnError:NULL]");

      v28 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v28, v26, v27);
    }
  }
}

void sub_275E33468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275E334C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275E334D8(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v8 = objc_msgSend_type(v13, v6, v7);
  if (objc_msgSend_isEqualToString_(v8, v9, @"com.apple.Keynote.recordingEventTrack-navigation"))
  {
    v11 = 40;
    v12 = 32;
  }

  else
  {
    if (!objc_msgSend_isEqualToString_(v8, v10, @"com.apple.iwork.Keynote.recordingEventTrack-movie"))
    {
      goto LABEL_6;
    }

    v11 = 56;
    v12 = 48;
  }

  objc_storeStrong((*(*(a1 + v12) + 8) + 40), a2);
  *(*(*(a1 + v11) + 8) + 24) = a3;
LABEL_6:
}

void sub_275E33B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

void sub_275E33BC8(uint64_t a1, void *a2, _BYTE *a3, double a4)
{
  v20 = a2;
  isInitialAmbientBuild = objc_msgSend_isInitialAmbientBuild(v20, v7, v8);
  v11 = v20;
  if ((isInitialAmbientBuild & 1) == 0)
  {
    if ((objc_msgSend_automatic(v20, v20, v10) & 1) == 0)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "+[KNRecording(KNRecordingMovieEventTrackUpgradeAdditions) p_correctedNavigationEventsFromNavigationEventTrack:]_block_invoke");
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNRecording+KNRecordingMovieEventTrackUpgradeAdditions.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 134, 0, "An initial animated build in the same event as implicit movies should be automatic.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    *(*(*(a1 + 40) + 8) + 24) = a4;
    *a3 = 1;
    v11 = v20;
  }
}

void sub_275E34148(uint64_t a1, void *a2, double a3, double a4)
{
  v48 = a2;
  v8 = objc_msgSend_rendererForAnimatedBuild_(*(a1 + 32), v7, v48);
  objc_opt_class();
  v11 = objc_msgSend_info(v8, v9, v10);
  v12 = TSUDynamicCast();

  if (v12)
  {
    v15 = objc_msgSend_buildType(v48, v13, v14);
    if (v15 == 2)
    {
      if (!objc_msgSend_containsObject_(*(a1 + 40), v16, v12))
      {
        goto LABEL_13;
      }

      v40 = *(a1 + 56) + a3;
      v41 = [KNRecordingMovieEvent alloc];
      started = objc_msgSend_initWithStartTime_movieInfo_movieSlideNodeUUID_didPlayAcrossSlides_movieEventType_movieEventValue_(v41, v42, v12, 0, 0, 2, v40, 0.0);
      objc_msgSend_addObject_(*(a1 + 48), v43, started);
      v44 = [KNRecordingMovieEvent alloc];
      v26 = objc_msgSend_initWithStartTime_movieInfo_movieSlideNodeUUID_didPlayAcrossSlides_movieEventType_movieEventValue_(v44, v45, v12, 0, 0, 4, v40, NAN);
      objc_msgSend_addObject_(*(a1 + 48), v46, v26);
      objc_msgSend_removeObject_(*(a1 + 40), v47, v12);
      goto LABEL_12;
    }

    if (v15 == 1 && (objc_msgSend_containsObject_(*(a1 + 40), v16, v12) & 1) == 0)
    {
      started = objc_msgSend_effectIdentifier(v48, v17, v18);
      if ((objc_msgSend_isEqualToString_(started, v20, *MEMORY[0x277D80138]) & 1) != 0 || (objc_msgSend_isEqualToString_(started, v21, *MEMORY[0x277D80158]) & 1) != 0 || objc_msgSend_isEqualToString_(started, v22, *MEMORY[0x277D80148]))
      {
        v23 = *(a1 + 56);
      }

      else
      {
        v23 = *(a1 + 56) + a4;
      }

      v24 = [KNRecordingMovieEvent alloc];
      v26 = objc_msgSend_initWithStartTime_movieInfo_movieSlideNodeUUID_didPlayAcrossSlides_movieEventType_movieEventValue_(v24, v25, v12, 0, 0, 3, v23, NAN);
      objc_msgSend_addObject_(*(a1 + 48), v27, v26);
      v28 = [KNRecordingMovieEvent alloc];
      objc_msgSend_startTime(v12, v29, v30);
      v33 = objc_msgSend_initWithStartTime_movieInfo_movieSlideNodeUUID_didPlayAcrossSlides_movieEventType_movieEventValue_(v28, v31, v12, 0, 0, 1, v23, v32);
      objc_msgSend_addObject_(*(a1 + 48), v34, v33);
      v35 = [KNRecordingMovieEvent alloc];
      v37 = objc_msgSend_initWithStartTime_movieInfo_movieSlideNodeUUID_didPlayAcrossSlides_movieEventType_movieEventValue_(v35, v36, v12, 0, 0, 2, v23, 1.0);
      objc_msgSend_addObject_(*(a1 + 48), v38, v37);
      objc_msgSend_addObject_(*(a1 + 40), v39, v12);

LABEL_12:
    }
  }

LABEL_13:
}

void sub_275E35508()
{
  v0 = objc_msgSend_initWithObjects_(objc_alloc(MEMORY[0x277CBEB98]), @"KNAnimationAttributesCustomEffectTimingCurveThemeName1", @"KNTransitionCustomAttributesBounce", @"KNTransitionCustomAttributesMagicMoveFadeUnmatchedObjects", @"com.apple.iWork.Keynote.BLTMosaicFlip.numberOfParticles", @"com.apple.iWork.Keynote.BLTMosaicFlip.type", @"KNTransitionCustomAttributesMotionBlur", @"KNTransitionCustomAttributesTextDelivery", @"KNTransitionCustomAttributesTimingCurve", @"KNTransitionCustomAttributesRandomNumberSeed", @"KNAnimationAttributesCustomEffectTimingCurve1", @"KNAnimationAttributesCustomEffectTimingCurve2", @"KNAnimationAttributesCustomEffectTimingCurve3", @"KNAnimationAttributesCustomEffectTimingCurveThemeName1", @"KNAnimationAttributesCustomEffectTimingCurveThemeName2", @"KNAnimationAttributesCustomEffectTimingCurveThemeName3", @"com.apple.iWork.Keynote.BUKTwist.twist", @"KNTransitionCustomAttributesTravelDistance", 0);
  v1 = qword_280A3C5A0;
  qword_280A3C5A0 = v0;
}

void sub_275E3787C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E378C0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E37904()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E38150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_275E38AE0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E38B24()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E38B68()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E38BAC()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E3918C(objc_class *a1)
{
  InstanceMethod = class_getInstanceMethod(a1, sel_matchesObjectPlaceholderGeometry);
  v3 = class_getInstanceMethod(a1, sel_swizzled_matchesObjectPlaceholderGeometry);
  v4 = class_getInstanceMethod(a1, sel_setMatchesObjectPlaceholderGeometry_);
  v5 = class_getInstanceMethod(a1, sel_swizzled_setMatchesObjectPlaceholderGeometry_);
  method_exchangeImplementations(InstanceMethod, v3);

  method_exchangeImplementations(v4, v5);
}

uint64_t sub_275E396C8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_animationFilter(a2, a2, a3);
  v6 = objc_msgSend_containsObject_(v3, v5, v4);

  return v6;
}

uint64_t sub_275E3A764(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = TSUDynamicCast();

  if (v4)
  {
    v7 = objc_msgSend_type(v4, v5, v6);
    v10 = objc_msgSend_type(*(a1 + 32), v8, v9);
    isEqual = objc_msgSend_isEqual_(v7, v11, v10);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

void sub_275E3C23C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E3C280()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E3CAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_275E3CF9C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E3CFE0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_275E3D068()
{
  v0 = [KNBuildChunkIdentifier alloc];
  inited = objc_msgSend_initEmptyIdentifier(v0, v1, v2);
  v4 = qword_280A3C5B8;
  qword_280A3C5B8 = inited;
}

uint64_t sub_275E3D8FC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.sos.pb.cc", a4);
  qword_2812EC1F8 = &unk_2884D8748;
  unk_2812EC200 = 0;
  xmmword_2812EC208 = 0u;
  unk_2812EC218 = 0u;
  if (atomic_load_explicit(dword_2812EA928, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  bzero(&unk_2812EC228, 0x3C3uLL);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4);
}

uint64_t sub_275E3D9B0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812EC5F8 = v4;
  qword_2812EC5F0 = &unk_2884D87F8;
  if (atomic_load_explicit(dword_2812EA970, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EC608 = 0;
  unk_2812EC610 = 0;
  word_2812EC618 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275E3DA64(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812EC1B8 = v4;
  qword_2812EC1B0 = &unk_2884D85E8;
  if (atomic_load_explicit(dword_2812EA998, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812EC1D0 = 0;
  qword_2812EC1C8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t sub_275E3DB18(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/KNArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812EC1E0 = v4;
  qword_2812EC1D8 = &unk_2884D8698;
  if (atomic_load_explicit(dword_2812EA9B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812EC1F0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5);
}

uint64_t *sub_275E3DBC8(uint64_t *a1)
{
  if (a1 != &qword_2812EC1B0)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_275DE6258(v2);
      MEMORY[0x277C8F960](v3, 0x10A1C40E6413DF5);
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275E3DC2C(uint64_t *a1)
{
  sub_275E3DBC8(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E3DC6C(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = sub_275DE629C(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 24) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_275E224D0(v2);
  }

  return result;
}

google::protobuf::internal *sub_275E3DCCC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v22) & 1) == 0)
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

            v16 = sub_275E1F66C(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_275E5B90C(a3, v16, v7);
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
            sub_275E22260((a1 + 8));
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
      if (sub_275E221E8(a3, &v22))
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

unsigned __int8 *sub_275E3DEB8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = sub_275DE6A84(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 32);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E3DFE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = sub_275DE7130(*(a1 + 24));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v3, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_275E3E078(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8898, 0);
  if (v4)
  {

    return sub_275E3E120(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E3E120(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
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

        v6 = sub_275E1F66C(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &unk_2812EAAD8;
      }

      result = sub_275DE748C(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return result;
}

uint64_t *sub_275E3E1D4(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E3DC6C(result);

    return sub_275E3E078(v4, a2);
  }

  return result;
}

uint64_t sub_275E3E220(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  result = sub_275DE7730(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_275E3E294(uint64_t *a1)
{
  if (a1 != &qword_2812EC1D8)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_275E3DBC8(v2);
      MEMORY[0x277C8F960](v3, 0x10A1C404E984866);
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275E3E2F8(uint64_t *a1)
{
  sub_275E3E294(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E3E338(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = sub_275E3DC6C(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_275E224D0(v2);
  }

  return result;
}

google::protobuf::internal *sub_275E3E394(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_275E221E8(a3, &v15) & 1) == 0)
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

        v10 = sub_275E4FBD8(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_275E60944(a3, v10, v5);
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
        sub_275E22260((a1 + 8));
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

unsigned __int8 *sub_275E3E4DC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = sub_275E3DEB8(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E3E5CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_275E3DFE8(*(a1 + 24));
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

uint64_t sub_275E3E658(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D88B0, 0);
  if (v4)
  {

    return sub_275E3E700(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E3E700(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = sub_275E4FBD8(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &qword_2812EC1B0;
    }

    return sub_275E3E120(v6, v8);
  }

  return result;
}

uint64_t *sub_275E3E7A8(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E3E338(result);

    return sub_275E3E658(v4, a2);
  }

  return result;
}

BOOL sub_275E3E7F4(uint64_t a1)
{
  result = 1;
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    v3 = *(v2 + 16);
    if ((v3 & 2) == 0 || (v3 & 1) != 0 && (sub_275DE7730(*(v2 + 24)) & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_275E3E878(uint64_t *a1)
{
  sub_275E3E8AC(a1);
  sub_275DE4968(a1 + 1);
  return a1;
}

uint64_t *sub_275E3E8AC(uint64_t *result)
{
  if (result != &qword_2812EC1F8)
  {
    v1 = result;
    if (result[6])
    {
      v2 = MEMORY[0x277C8EEB0]();
      MEMORY[0x277C8F960](v2, 0x10A1C40D4912B22);
    }

    if (v1[7])
    {
      v3 = MEMORY[0x277C8EEB0]();
      MEMORY[0x277C8F960](v3, 0x10A1C40D4912B22);
    }

    if (v1[8])
    {
      v4 = MEMORY[0x277C8EDB0]();
      MEMORY[0x277C8F960](v4, 0x10A1C404E50D5EBLL);
    }

    if (v1[9])
    {
      v5 = MEMORY[0x277C8EEF0]();
      MEMORY[0x277C8F960](v5, 0x10A1C40D4912B22);
    }

    if (v1[10])
    {
      v6 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v6, 0x10A1C40D4912B22);
    }

    if (v1[11])
    {
      v7 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v7, 0x10A1C40D4912B22);
    }

    if (v1[12])
    {
      v8 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v8, 0x10A1C40D4912B22);
    }

    if (v1[13])
    {
      v9 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v9, 0x10A1C40D4912B22);
    }

    if (v1[14])
    {
      v10 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v10, 0x10A1C40D4912B22);
    }

    if (v1[15])
    {
      v11 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v11, 0x10A1C40D4912B22);
    }

    if (v1[16])
    {
      v12 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v12, 0x10A1C40D4912B22);
    }

    if (v1[17])
    {
      v13 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v13, 0x10A1C40D4912B22);
    }

    if (v1[18])
    {
      v14 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v14, 0x10A1C40D4912B22);
    }

    if (v1[19])
    {
      v15 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v15, 0x10A1C40D4912B22);
    }

    if (v1[20])
    {
      v16 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v16, 0x10A1C40D4912B22);
    }

    if (v1[21])
    {
      v17 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v17, 0x10A1C40D4912B22);
    }

    if (v1[22])
    {
      v18 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v18, 0x10A1C40D4912B22);
    }

    if (v1[23])
    {
      v19 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v19, 0x10A1C40D4912B22);
    }

    if (v1[24])
    {
      v20 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v20, 0x10A1C40D4912B22);
    }

    if (v1[25])
    {
      v21 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v21, 0x10A1C40D4912B22);
    }

    if (v1[26])
    {
      v22 = MEMORY[0x277C8EEF0]();
      MEMORY[0x277C8F960](v22, 0x10A1C40D4912B22);
    }

    if (v1[27])
    {
      v23 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v23, 0x10A1C40D4912B22);
    }

    if (v1[28])
    {
      v24 = MEMORY[0x277C8EDF0]();
      MEMORY[0x277C8F960](v24, 0x10A1C40D4912B22);
    }

    if (v1[29])
    {
      v25 = MEMORY[0x277C8EEB0]();
      MEMORY[0x277C8F960](v25, 0x10A1C40D4912B22);
    }

    if (v1[30])
    {
      v26 = MEMORY[0x277C8EEB0]();
      MEMORY[0x277C8F960](v26, 0x10A1C40D4912B22);
    }

    if (v1[31])
    {
      v27 = MEMORY[0x277C8EEB0]();
      MEMORY[0x277C8F960](v27, 0x10A1C40D4912B22);
    }

    if (v1[32])
    {
      v28 = MEMORY[0x277C8EEB0]();
      MEMORY[0x277C8F960](v28, 0x10A1C40D4912B22);
    }

    if (v1[33])
    {
      v29 = MEMORY[0x277C8EE30]();
      MEMORY[0x277C8F960](v29, 0x10A1C40D4912B22);
    }

    if (v1[34])
    {
      v30 = MEMORY[0x277C8EE30]();
      MEMORY[0x277C8F960](v30, 0x10A1C40D4912B22);
    }

    if (v1[35])
    {
      v31 = MEMORY[0x277C8EE30]();
      MEMORY[0x277C8F960](v31, 0x10A1C40D4912B22);
    }

    if (v1[36])
    {
      v32 = MEMORY[0x277C8EE30]();
      MEMORY[0x277C8F960](v32, 0x10A1C40D4912B22);
    }

    if (v1[37])
    {
      v33 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v33, 0x10A1C40D4912B22);
    }

    if (v1[38])
    {
      v34 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v34, 0x10A1C40D4912B22);
    }

    if (v1[39])
    {
      v35 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v35, 0x10A1C40D4912B22);
    }

    if (v1[40])
    {
      v36 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v36, 0x10A1C40D4912B22);
    }

    if (v1[41])
    {
      v37 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v37, 0x10A1C40D4912B22);
    }

    if (v1[42])
    {
      v38 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v38, 0x10A1C40D4912B22);
    }

    if (v1[43])
    {
      v39 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v39, 0x10A1C40D4912B22);
    }

    if (v1[44])
    {
      v40 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v40, 0x10A1C40D4912B22);
    }

    if (v1[45])
    {
      v41 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v41, 0x10A1C40D4912B22);
    }

    if (v1[46])
    {
      v42 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v42, 0x10A1C40D4912B22);
    }

    if (v1[47])
    {
      v43 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v43, 0x10A1C40D4912B22);
    }

    if (v1[48])
    {
      v44 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v44, 0x10A1C40D4912B22);
    }

    if (v1[49])
    {
      v45 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v45, 0x10A1C40D4912B22);
    }

    if (v1[50])
    {
      v46 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v46, 0x10A1C40D4912B22);
    }

    if (v1[51])
    {
      v47 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v47, 0x10A1C40D4912B22);
    }

    if (v1[52])
    {
      v48 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v48, 0x10A1C40D4912B22);
    }

    if (v1[53])
    {
      v49 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v49, 0x10A1C40D4912B22);
    }

    if (v1[54])
    {
      v50 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v50, 0x10A1C40D4912B22);
    }

    if (v1[55])
    {
      v51 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v51, 0x10A1C40D4912B22);
    }

    if (v1[56])
    {
      v52 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v52, 0x10A1C40D4912B22);
    }

    if (v1[57])
    {
      v53 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v53, 0x10A1C40D4912B22);
    }

    if (v1[58])
    {
      v54 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v54, 0x10A1C40D4912B22);
    }

    if (v1[59])
    {
      v55 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v55, 0x10A1C40D4912B22);
    }

    if (v1[60])
    {
      v56 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v56, 0x10A1C40D4912B22);
    }

    if (v1[61])
    {
      v57 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v57, 0x10A1C40D4912B22);
    }

    if (v1[62])
    {
      v58 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v58, 0x10A1C40D4912B22);
    }

    if (v1[63])
    {
      v59 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v59, 0x10A1C40D4912B22);
    }

    if (v1[64])
    {
      v60 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v60, 0x10A1C40D4912B22);
    }

    if (v1[65])
    {
      v61 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v61, 0x10A1C40D4912B22);
    }

    if (v1[66])
    {
      v62 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v62, 0x10A1C40D4912B22);
    }

    if (v1[67])
    {
      v63 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v63, 0x10A1C40D4912B22);
    }

    if (v1[68])
    {
      v64 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v64, 0x10A1C40D4912B22);
    }

    if (v1[69])
    {
      v65 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v65, 0x10A1C40D4912B22);
    }

    if (v1[70])
    {
      v66 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v66, 0x10A1C40D4912B22);
    }

    if (v1[71])
    {
      v67 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v67, 0x10A1C40D4912B22);
    }

    if (v1[72])
    {
      v68 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v68, 0x10A1C40D4912B22);
    }

    if (v1[73])
    {
      v69 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v69, 0x10A1C40D4912B22);
    }

    if (v1[74])
    {
      v70 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v70, 0x10A1C40D4912B22);
    }

    if (v1[75])
    {
      v71 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v71, 0x10A1C40D4912B22);
    }

    if (v1[76])
    {
      v72 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v72, 0x10A1C40D4912B22);
    }

    if (v1[77])
    {
      v73 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v73, 0x10A1C40D4912B22);
    }

    if (v1[78])
    {
      v74 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v74, 0x10A1C40D4912B22);
    }

    if (v1[79])
    {
      v75 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v75, 0x10A1C40D4912B22);
    }

    if (v1[80])
    {
      v76 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v76, 0x10A1C40D4912B22);
    }

    if (v1[81])
    {
      v77 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v77, 0x10A1C40D4912B22);
    }

    if (v1[82])
    {
      v78 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v78, 0x10A1C40D4912B22);
    }

    if (v1[83])
    {
      v79 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v79, 0x10A1C40D4912B22);
    }

    if (v1[84])
    {
      v80 = MEMORY[0x277C8EDF0]();
      MEMORY[0x277C8F960](v80, 0x10A1C40D4912B22);
    }

    if (v1[85])
    {
      v81 = MEMORY[0x277C8EDF0]();
      MEMORY[0x277C8F960](v81, 0x10A1C40D4912B22);
    }

    if (v1[86])
    {
      v82 = MEMORY[0x277C8EDF0]();
      MEMORY[0x277C8F960](v82, 0x10A1C40D4912B22);
    }

    if (v1[87])
    {
      v83 = MEMORY[0x277C8EEF0]();
      MEMORY[0x277C8F960](v83, 0x10A1C40D4912B22);
    }

    if (v1[88])
    {
      v84 = MEMORY[0x277C8EDF0]();
      MEMORY[0x277C8F960](v84, 0x10A1C40D4912B22);
    }

    if (v1[89])
    {
      v85 = MEMORY[0x277C8EDF0]();
      MEMORY[0x277C8F960](v85, 0x10A1C40D4912B22);
    }

    if (v1[90])
    {
      v86 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v86, 0x10A1C40D4912B22);
    }

    if (v1[91])
    {
      v87 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v87, 0x10A1C40D4912B22);
    }

    if (v1[92])
    {
      v88 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v88, 0x10A1C40D4912B22);
    }

    if (v1[93])
    {
      v89 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v89, 0x10A1C40D4912B22);
    }

    if (v1[94])
    {
      v90 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v90, 0x10A1C40D4912B22);
    }

    if (v1[95])
    {
      v91 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v91, 0x10A1C40D4912B22);
    }

    if (v1[96])
    {
      v92 = MEMORY[0x277C8EE30]();
      MEMORY[0x277C8F960](v92, 0x10A1C40D4912B22);
    }

    if (v1[97])
    {
      v93 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v93, 0x10A1C40D4912B22);
    }

    if (v1[98])
    {
      v94 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v94, 0x10A1C40D4912B22);
    }

    if (v1[99])
    {
      v95 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v95, 0x10A1C40D4912B22);
    }

    if (v1[100])
    {
      v96 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v96, 0x10A1C40D4912B22);
    }

    if (v1[101])
    {
      v97 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v97, 0x10A1C40D4912B22);
    }

    if (v1[102])
    {
      v98 = MEMORY[0x277C8EEF0]();
      MEMORY[0x277C8F960](v98, 0x10A1C40D4912B22);
    }

    if (v1[103])
    {
      v99 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v99, 0x10A1C40D4912B22);
    }

    if (v1[104])
    {
      v100 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v100, 0x10A1C40D4912B22);
    }

    if (v1[105])
    {
      v101 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v101, 0x10A1C40D4912B22);
    }

    if (v1[106])
    {
      v102 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v102, 0x10A1C40D4912B22);
    }

    if (v1[107])
    {
      v103 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v103, 0x10A1C40D4912B22);
    }

    if (v1[108])
    {
      v104 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v104, 0x10A1C40D4912B22);
    }

    if (v1[109])
    {
      v105 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v105, 0x10A1C40D4912B22);
    }

    if (v1[110])
    {
      v106 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v106, 0x10A1C40D4912B22);
    }

    if (v1[111])
    {
      v107 = MEMORY[0x277C8EE70]();
      MEMORY[0x277C8F960](v107, 0x10A1C40D4912B22);
    }

    result = v1[112];
    if (result)
    {
      MEMORY[0x277C8EEF0]();

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275E3F170(uint64_t *a1)
{
  sub_275E3E878(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E3F1B0(uint64_t *result)
{
  v1 = result;
  v2 = result + 2;
  v3 = *(result + 4);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    result = TSSSOS::SpecStringArchive::Clear(result[6]);
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_167;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = TSSSOS::SpecStringArchive::Clear(v1[7]);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_168;
  }

LABEL_167:
  result = TSDSOS::SpecFillArchive::Clear(v1[8]);
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_169;
  }

LABEL_168:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[9]);
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_170:
    result = TSSSOS::SpecDoubleArchive::Clear(v1[11]);
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_171;
  }

LABEL_169:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[10]);
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_170;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_171:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[12]);
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = TSSSOS::SpecDoubleArchive::Clear(v1[13]);
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v3 & 0x100) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(v1[14]);
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_175;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(v1[15]);
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_176;
  }

LABEL_175:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[16]);
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_177;
  }

LABEL_176:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[17]);
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_178;
  }

LABEL_177:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[18]);
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_179;
  }

LABEL_178:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[19]);
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_179:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[20]);
  if ((v3 & 0x8000) != 0)
  {
LABEL_20:
    result = TSSSOS::SpecDoubleArchive::Clear(v1[21]);
  }

LABEL_21:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v3 & 0x10000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(v1[22]);
    if ((v3 & 0x20000) == 0)
    {
LABEL_24:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_183;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(v1[23]);
  if ((v3 & 0x40000) == 0)
  {
LABEL_25:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_184;
  }

LABEL_183:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[24]);
  if ((v3 & 0x80000) == 0)
  {
LABEL_26:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_185;
  }

LABEL_184:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[25]);
  if ((v3 & 0x100000) == 0)
  {
LABEL_27:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_186;
  }

LABEL_185:
  result = TSSSOS::SpecIntegerArchive::Clear(v1[26]);
  if ((v3 & 0x200000) == 0)
  {
LABEL_28:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_187;
  }

LABEL_186:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[27]);
  if ((v3 & 0x400000) == 0)
  {
LABEL_29:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_187:
  result = TSSSOS::SpecBoolArchive::Clear(v1[28]);
  if ((v3 & 0x800000) != 0)
  {
LABEL_30:
    result = TSSSOS::SpecStringArchive::Clear(v1[29]);
  }

LABEL_31:
  if (!HIBYTE(v3))
  {
    goto LABEL_40;
  }

  if ((v3 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecStringArchive::Clear(v1[30]);
    if ((v3 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_250;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  result = TSSSOS::SpecStringArchive::Clear(v1[31]);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_251;
  }

LABEL_250:
  result = TSSSOS::SpecStringArchive::Clear(v1[32]);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_252;
  }

LABEL_251:
  result = TSSSOS::SpecColorArchive::Clear(v1[33]);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_253;
  }

LABEL_252:
  result = TSSSOS::SpecColorArchive::Clear(v1[34]);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_254:
    result = TSSSOS::SpecColorArchive::Clear(v1[36]);
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_255;
  }

LABEL_253:
  result = TSSSOS::SpecColorArchive::Clear(v1[35]);
  if ((v3 & 0x40000000) != 0)
  {
    goto LABEL_254;
  }

LABEL_39:
  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_255:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[37]);
LABEL_40:
  v4 = *(v1 + 5);
  if (!v4)
  {
    goto LABEL_50;
  }

  if (v4)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(v1[38]);
    if ((v4 & 2) == 0)
    {
LABEL_43:
      if ((v4 & 4) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_191;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_43;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(v1[39]);
  if ((v4 & 4) == 0)
  {
LABEL_44:
    if ((v4 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_192;
  }

LABEL_191:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[40]);
  if ((v4 & 8) == 0)
  {
LABEL_45:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_193;
  }

LABEL_192:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[41]);
  if ((v4 & 0x10) == 0)
  {
LABEL_46:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_194;
  }

LABEL_193:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[42]);
  if ((v4 & 0x20) == 0)
  {
LABEL_47:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_195;
  }

LABEL_194:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[43]);
  if ((v4 & 0x40) == 0)
  {
LABEL_48:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_195:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[44]);
  if ((v4 & 0x80) != 0)
  {
LABEL_49:
    result = TSSSOS::SpecDoubleArchive::Clear(v1[45]);
  }

LABEL_50:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_60;
  }

  if ((v4 & 0x100) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(v1[46]);
    if ((v4 & 0x200) == 0)
    {
LABEL_53:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_199;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(v1[47]);
  if ((v4 & 0x400) == 0)
  {
LABEL_54:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_200;
  }

LABEL_199:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[48]);
  if ((v4 & 0x800) == 0)
  {
LABEL_55:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_201;
  }

LABEL_200:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[49]);
  if ((v4 & 0x1000) == 0)
  {
LABEL_56:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_202;
  }

LABEL_201:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[50]);
  if ((v4 & 0x2000) == 0)
  {
LABEL_57:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_203;
  }

LABEL_202:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[51]);
  if ((v4 & 0x4000) == 0)
  {
LABEL_58:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_203:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[52]);
  if ((v4 & 0x8000) != 0)
  {
LABEL_59:
    result = TSSSOS::SpecDoubleArchive::Clear(v1[53]);
  }

LABEL_60:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_70;
  }

  if ((v4 & 0x10000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(v1[54]);
    if ((v4 & 0x20000) == 0)
    {
LABEL_63:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_207;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_63;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(v1[55]);
  if ((v4 & 0x40000) == 0)
  {
LABEL_64:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_208;
  }

LABEL_207:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[56]);
  if ((v4 & 0x80000) == 0)
  {
LABEL_65:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_209;
  }

LABEL_208:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[57]);
  if ((v4 & 0x100000) == 0)
  {
LABEL_66:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_210;
  }

LABEL_209:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[58]);
  if ((v4 & 0x200000) == 0)
  {
LABEL_67:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_211;
  }

LABEL_210:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[59]);
  if ((v4 & 0x400000) == 0)
  {
LABEL_68:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_211:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[60]);
  if ((v4 & 0x800000) != 0)
  {
LABEL_69:
    result = TSSSOS::SpecDoubleArchive::Clear(v1[61]);
  }

LABEL_70:
  if (!HIBYTE(v4))
  {
    goto LABEL_79;
  }

  if ((v4 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(v1[62]);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_73:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_258;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_73;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(v1[63]);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_74:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_259;
  }

LABEL_258:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[64]);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_75:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_260;
  }

LABEL_259:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[65]);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_76:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_261;
  }

LABEL_260:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[66]);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_77:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_262:
    result = TSSSOS::SpecDoubleArchive::Clear(v1[68]);
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_263;
  }

LABEL_261:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[67]);
  if ((v4 & 0x40000000) != 0)
  {
    goto LABEL_262;
  }

LABEL_78:
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_79;
  }

LABEL_263:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[69]);
LABEL_79:
  v5 = *(v1 + 6);
  if (!v5)
  {
    goto LABEL_89;
  }

  if (v5)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(v1[70]);
    if ((v5 & 2) == 0)
    {
LABEL_82:
      if ((v5 & 4) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_215;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_82;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(v1[71]);
  if ((v5 & 4) == 0)
  {
LABEL_83:
    if ((v5 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_216;
  }

LABEL_215:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[72]);
  if ((v5 & 8) == 0)
  {
LABEL_84:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_217;
  }

LABEL_216:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[73]);
  if ((v5 & 0x10) == 0)
  {
LABEL_85:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_218;
  }

LABEL_217:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[74]);
  if ((v5 & 0x20) == 0)
  {
LABEL_86:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_219;
  }

LABEL_218:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[75]);
  if ((v5 & 0x40) == 0)
  {
LABEL_87:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_219:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[76]);
  if ((v5 & 0x80) != 0)
  {
LABEL_88:
    result = TSSSOS::SpecDoubleArchive::Clear(v1[77]);
  }

LABEL_89:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_99;
  }

  if ((v5 & 0x100) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(v1[78]);
    if ((v5 & 0x200) == 0)
    {
LABEL_92:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_223;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_92;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(v1[79]);
  if ((v5 & 0x400) == 0)
  {
LABEL_93:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_224;
  }

LABEL_223:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[80]);
  if ((v5 & 0x800) == 0)
  {
LABEL_94:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_225;
  }

LABEL_224:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[81]);
  if ((v5 & 0x1000) == 0)
  {
LABEL_95:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_226;
  }

LABEL_225:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[82]);
  if ((v5 & 0x2000) == 0)
  {
LABEL_96:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_227;
  }

LABEL_226:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[83]);
  if ((v5 & 0x4000) == 0)
  {
LABEL_97:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

LABEL_227:
  result = TSSSOS::SpecBoolArchive::Clear(v1[84]);
  if ((v5 & 0x8000) != 0)
  {
LABEL_98:
    result = TSSSOS::SpecBoolArchive::Clear(v1[85]);
  }

LABEL_99:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_109;
  }

  if ((v5 & 0x10000) != 0)
  {
    result = TSSSOS::SpecBoolArchive::Clear(v1[86]);
    if ((v5 & 0x20000) == 0)
    {
LABEL_102:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_231;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_102;
  }

  result = TSSSOS::SpecIntegerArchive::Clear(v1[87]);
  if ((v5 & 0x40000) == 0)
  {
LABEL_103:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_232;
  }

LABEL_231:
  result = TSSSOS::SpecBoolArchive::Clear(v1[88]);
  if ((v5 & 0x80000) == 0)
  {
LABEL_104:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_233;
  }

LABEL_232:
  result = TSSSOS::SpecBoolArchive::Clear(v1[89]);
  if ((v5 & 0x100000) == 0)
  {
LABEL_105:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_234;
  }

LABEL_233:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[90]);
  if ((v5 & 0x200000) == 0)
  {
LABEL_106:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_235;
  }

LABEL_234:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[91]);
  if ((v5 & 0x400000) == 0)
  {
LABEL_107:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

LABEL_235:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[92]);
  if ((v5 & 0x800000) != 0)
  {
LABEL_108:
    result = TSSSOS::SpecDoubleArchive::Clear(v1[93]);
  }

LABEL_109:
  if (!HIBYTE(v5))
  {
    goto LABEL_118;
  }

  if ((v5 & 0x1000000) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(v1[94]);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_112:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_113;
      }

      goto LABEL_266;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_112;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(v1[95]);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_113:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_267;
  }

LABEL_266:
  result = TSSSOS::SpecColorArchive::Clear(v1[96]);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_114:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_268;
  }

LABEL_267:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[97]);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_115:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_269;
  }

LABEL_268:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[98]);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_116:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_117;
    }

LABEL_270:
    result = TSSSOS::SpecDoubleArchive::Clear(v1[100]);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_271;
  }

LABEL_269:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[99]);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_270;
  }

LABEL_117:
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_118;
  }

LABEL_271:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[101]);
LABEL_118:
  v6 = *(v1 + 7);
  if (!v6)
  {
    goto LABEL_128;
  }

  if (v6)
  {
    result = TSSSOS::SpecIntegerArchive::Clear(v1[102]);
    if ((v6 & 2) == 0)
    {
LABEL_121:
      if ((v6 & 4) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_239;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_121;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(v1[103]);
  if ((v6 & 4) == 0)
  {
LABEL_122:
    if ((v6 & 8) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_240;
  }

LABEL_239:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[104]);
  if ((v6 & 8) == 0)
  {
LABEL_123:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_241;
  }

LABEL_240:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[105]);
  if ((v6 & 0x10) == 0)
  {
LABEL_124:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_242;
  }

LABEL_241:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[106]);
  if ((v6 & 0x20) == 0)
  {
LABEL_125:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_243;
  }

LABEL_242:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[107]);
  if ((v6 & 0x40) == 0)
  {
LABEL_126:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_243:
  result = TSSSOS::SpecDoubleArchive::Clear(v1[108]);
  if ((v6 & 0x80) != 0)
  {
LABEL_127:
    result = TSSSOS::SpecDoubleArchive::Clear(v1[109]);
  }

LABEL_128:
  if ((v6 & 0x700) == 0)
  {
    goto LABEL_133;
  }

  if ((v6 & 0x100) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(v1[110]);
    if ((v6 & 0x200) == 0)
    {
LABEL_131:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_132;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_131;
  }

  result = TSSSOS::SpecDoubleArchive::Clear(v1[111]);
  if ((v6 & 0x400) != 0)
  {
LABEL_132:
    result = TSSSOS::SpecIntegerArchive::Clear(v1[112]);
  }

LABEL_133:
  if ((v6 & 0xF800) != 0)
  {
    *(v1 + 908) = 0;
    *(v1 + 226) = 0;
  }

  if ((v6 & 0xFF0000) != 0)
  {
    *(v2 + 893) = 0;
  }

  if (HIBYTE(v6))
  {
    *(v2 + 901) = 0;
  }

  v7 = *(v1 + 8);
  if (v7)
  {
    *(v2 + 909) = 0;
  }

  if ((v7 & 0xFF00) != 0)
  {
    *(v2 + 917) = 0;
  }

  if ((v7 & 0xFF0000) != 0)
  {
    *(v2 + 925) = 0;
  }

  if (HIBYTE(v7))
  {
    *(v2 + 933) = 0;
  }

  v8 = *(v1 + 9);
  if (v8)
  {
    *(v2 + 941) = 0;
  }

  if ((v8 & 0xFF00) != 0)
  {
    *(v2 + 949) = 0;
  }

  if ((v8 & 0xFF0000) != 0)
  {
    *(v2 + 957) = 0;
  }

  if (HIBYTE(v8))
  {
    *(v2 + 965) = 0;
  }

  v9 = *(v1 + 10);
  if (v9)
  {
    *(v2 + 973) = 0;
  }

  if ((v9 & 0xFF00) != 0)
  {
    *(v2 + 981) = 0;
  }

  if ((v9 & 0x3F0000) != 0)
  {
    *(v1 + 1009) = 0;
    *(v1 + 1005) = 0;
  }

  *v2 = 0;
  v2[1] = 0;
  *(v2 + 6) = 0;
  v2[2] = 0;
  v11 = *(v1 + 8);
  v10 = v1 + 1;
  if (v11)
  {

    return sub_275E224D0(v10);
  }

  return result;
}

google::protobuf::internal *sub_275E3FA08(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v766 = a2;
  if ((sub_275E221E8(a3, &v766) & 1) == 0)
  {
    while (1)
    {
      v6 = (v766 + 1);
      LODWORD(v7) = *v766;
      if (*v766 < 0)
      {
        v7 = (v7 + (*v6 << 7) - 128);
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v766, v7);
          v766 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          goto LABEL_7;
        }

        v6 = (v766 + 2);
      }

      v766 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 10)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 1u;
          v553 = *(a1 + 48);
          if (v553)
          {
            goto LABEL_1292;
          }

          v608 = *(a1 + 8);
          if (v608)
          {
            v608 = *(v608 & 0xFFFFFFFFFFFFFFFELL);
          }

          v609 = MEMORY[0x277C8F140](v608);
          LODWORD(v553) = v609;
          *(a1 + 48) = v609;
          goto LABEL_1291;
        case 2u:
          if (v7 != 16)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x800u;
          v9 = (v6 + 1);
          v8 = *v6;
          if ((v8 & 0x8000000000000000) == 0)
          {
            goto LABEL_12;
          }

          v10 = *v9;
          v8 = (v10 << 7) + v8 - 128;
          if (v10 < 0)
          {
            v346 = google::protobuf::internal::VarintParseSlow64(v6, v8);
            v766 = v346;
            *(a1 + 904) = v347 != 0;
            if (!v346)
            {
              return 0;
            }
          }

          else
          {
            v9 = (v6 + 2);
LABEL_12:
            v766 = v9;
            *(a1 + 904) = v8 != 0;
          }

          goto LABEL_1306;
        case 3u:
          if (v7 != 26)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 2u;
          v553 = *(a1 + 56);
          if (v553)
          {
            goto LABEL_1292;
          }

          v759 = *(a1 + 8);
          if (v759)
          {
            v759 = *(v759 & 0xFFFFFFFFFFFFFFFELL);
          }

          v760 = MEMORY[0x277C8F140](v759);
          LODWORD(v553) = v760;
          *(a1 + 56) = v760;
          goto LABEL_1291;
        case 4u:
          if (v7 != 32)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x1000u;
          v322 = (v6 + 1);
          v321 = *v6;
          if ((v321 & 0x8000000000000000) == 0)
          {
            goto LABEL_534;
          }

          v323 = *v322;
          v321 = (v323 << 7) + v321 - 128;
          if (v323 < 0)
          {
            v538 = google::protobuf::internal::VarintParseSlow64(v6, v321);
            v766 = v538;
            *(a1 + 905) = v539 != 0;
            if (!v538)
            {
              return 0;
            }
          }

          else
          {
            v322 = (v6 + 2);
LABEL_534:
            v766 = v322;
            *(a1 + 905) = v321 != 0;
          }

          goto LABEL_1306;
        case 5u:
          if (v7 != 42)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 4u;
          v655 = *(a1 + 64);
          if (!v655)
          {
            v656 = *(a1 + 8);
            if (v656)
            {
              v656 = *(v656 & 0xFFFFFFFFFFFFFFFELL);
            }

            v657 = MEMORY[0x277C8F100](v656);
            LODWORD(v655) = v657;
            *(a1 + 64) = v657;
            v6 = v766;
          }

          v658 = sub_275E60AE4(a3, v655, v6);
          goto LABEL_1305;
        case 6u:
          if (v7 != 48)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x2000u;
          v139 = (v6 + 1);
          v138 = *v6;
          if ((v138 & 0x8000000000000000) == 0)
          {
            goto LABEL_229;
          }

          v140 = *v139;
          v138 = (v140 << 7) + v138 - 128;
          if (v140 < 0)
          {
            v416 = google::protobuf::internal::VarintParseSlow64(v6, v138);
            v766 = v416;
            *(a1 + 906) = v417 != 0;
            if (!v416)
            {
              return 0;
            }
          }

          else
          {
            v139 = (v6 + 2);
LABEL_229:
            v766 = v139;
            *(a1 + 906) = v138 != 0;
          }

          goto LABEL_1306;
        case 7u:
          if (v7 != 58)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 8u;
          v576 = *(a1 + 72);
          if (v576)
          {
            goto LABEL_1198;
          }

          v577 = *(a1 + 8);
          if (v577)
          {
            v577 = *(v577 & 0xFFFFFFFFFFFFFFFELL);
          }

          v578 = MEMORY[0x277C8F150](v577);
          LODWORD(v576) = v578;
          *(a1 + 72) = v578;
          goto LABEL_1197;
        case 8u:
          if (v7 != 64)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x4000u;
          v28 = (v6 + 1);
          v27 = *v6;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_44;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v340 = google::protobuf::internal::VarintParseSlow64(v6, v27);
            v766 = v340;
            *(a1 + 907) = v341 != 0;
            if (!v340)
            {
              return 0;
            }
          }

          else
          {
            v28 = (v6 + 2);
LABEL_44:
            v766 = v28;
            *(a1 + 907) = v27 != 0;
          }

          goto LABEL_1306;
        case 9u:
          if (v7 != 74)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x10u;
          v544 = *(a1 + 80);
          if (v544)
          {
            goto LABEL_1304;
          }

          v751 = *(a1 + 8);
          if (v751)
          {
            v751 = *(v751 & 0xFFFFFFFFFFFFFFFELL);
          }

          v752 = MEMORY[0x277C8F130](v751);
          LODWORD(v544) = v752;
          *(a1 + 80) = v752;
          goto LABEL_1303;
        case 0xAu:
          if (v7 != 80)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x8000u;
          v328 = (v6 + 1);
          v327 = *v6;
          if ((v327 & 0x8000000000000000) == 0)
          {
            goto LABEL_544;
          }

          v329 = *v328;
          v327 = (v329 << 7) + v327 - 128;
          if (v329 < 0)
          {
            v542 = google::protobuf::internal::VarintParseSlow64(v6, v327);
            v766 = v542;
            *(a1 + 908) = v543 != 0;
            if (!v542)
            {
              return 0;
            }
          }

          else
          {
            v328 = (v6 + 2);
LABEL_544:
            v766 = v328;
            *(a1 + 908) = v327 != 0;
          }

LABEL_1306:
          if (sub_275E221E8(a3, &v766))
          {
            return v766;
          }

          break;
        case 0xBu:
          if (v7 != 90)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x20u;
          v544 = *(a1 + 88);
          if (v544)
          {
            goto LABEL_1304;
          }

          v653 = *(a1 + 8);
          if (v653)
          {
            v653 = *(v653 & 0xFFFFFFFFFFFFFFFELL);
          }

          v654 = MEMORY[0x277C8F130](v653);
          LODWORD(v544) = v654;
          *(a1 + 88) = v654;
          goto LABEL_1303;
        case 0xCu:
          if (v7 != 96)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x10000u;
          v295 = (v6 + 1);
          v294 = *v6;
          if ((v294 & 0x8000000000000000) == 0)
          {
            goto LABEL_489;
          }

          v296 = *v295;
          v294 = (v296 << 7) + v294 - 128;
          if (v296 < 0)
          {
            v520 = google::protobuf::internal::VarintParseSlow64(v6, v294);
            v766 = v520;
            *(a1 + 909) = v521 != 0;
            if (!v520)
            {
              return 0;
            }
          }

          else
          {
            v295 = (v6 + 2);
LABEL_489:
            v766 = v295;
            *(a1 + 909) = v294 != 0;
          }

          goto LABEL_1306;
        case 0xDu:
          if (v7 != 106)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x40u;
          v544 = *(a1 + 96);
          if (v544)
          {
            goto LABEL_1304;
          }

          v564 = *(a1 + 8);
          if (v564)
          {
            v564 = *(v564 & 0xFFFFFFFFFFFFFFFELL);
          }

          v565 = MEMORY[0x277C8F130](v564);
          LODWORD(v544) = v565;
          *(a1 + 96) = v565;
          goto LABEL_1303;
        case 0xEu:
          if (v7 != 112)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x20000u;
          v244 = (v6 + 1);
          v243 = *v6;
          if ((v243 & 0x8000000000000000) == 0)
          {
            goto LABEL_404;
          }

          v245 = *v244;
          v243 = (v245 << 7) + v243 - 128;
          if (v245 < 0)
          {
            v486 = google::protobuf::internal::VarintParseSlow64(v6, v243);
            v766 = v486;
            *(a1 + 910) = v487 != 0;
            if (!v486)
            {
              return 0;
            }
          }

          else
          {
            v244 = (v6 + 2);
LABEL_404:
            v766 = v244;
            *(a1 + 910) = v243 != 0;
          }

          goto LABEL_1306;
        case 0xFu:
          if (v7 != 122)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x80u;
          v544 = *(a1 + 104);
          if (v544)
          {
            goto LABEL_1304;
          }

          v566 = *(a1 + 8);
          if (v566)
          {
            v566 = *(v566 & 0xFFFFFFFFFFFFFFFELL);
          }

          v567 = MEMORY[0x277C8F130](v566);
          LODWORD(v544) = v567;
          *(a1 + 104) = v567;
          goto LABEL_1303;
        case 0x10u:
          if (v7 != 128)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x40000u;
          v40 = (v6 + 1);
          v39 = *v6;
          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_64;
          }

          v41 = *v40;
          v39 = (v41 << 7) + v39 - 128;
          if (v41 < 0)
          {
            v350 = google::protobuf::internal::VarintParseSlow64(v6, v39);
            v766 = v350;
            *(a1 + 911) = v351 != 0;
            if (!v350)
            {
              return 0;
            }
          }

          else
          {
            v40 = (v6 + 2);
LABEL_64:
            v766 = v40;
            *(a1 + 911) = v39 != 0;
          }

          goto LABEL_1306;
        case 0x11u:
          if (v7 != 138)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x100u;
          v544 = *(a1 + 112);
          if (v544)
          {
            goto LABEL_1304;
          }

          v763 = *(a1 + 8);
          if (v763)
          {
            v763 = *(v763 & 0xFFFFFFFFFFFFFFFELL);
          }

          v764 = MEMORY[0x277C8F130](v763);
          LODWORD(v544) = v764;
          *(a1 + 112) = v764;
          goto LABEL_1303;
        case 0x12u:
          if (v7 != 144)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x80000u;
          v280 = (v6 + 1);
          v279 = *v6;
          if ((v279 & 0x8000000000000000) == 0)
          {
            goto LABEL_464;
          }

          v281 = *v280;
          v279 = (v281 << 7) + v279 - 128;
          if (v281 < 0)
          {
            v510 = google::protobuf::internal::VarintParseSlow64(v6, v279);
            v766 = v510;
            *(a1 + 912) = v511 != 0;
            if (!v510)
            {
              return 0;
            }
          }

          else
          {
            v280 = (v6 + 2);
LABEL_464:
            v766 = v280;
            *(a1 + 912) = v279 != 0;
          }

          goto LABEL_1306;
        case 0x13u:
          if (v7 != 154)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x200u;
          v544 = *(a1 + 120);
          if (v544)
          {
            goto LABEL_1304;
          }

          v547 = *(a1 + 8);
          if (v547)
          {
            v547 = *(v547 & 0xFFFFFFFFFFFFFFFELL);
          }

          v548 = MEMORY[0x277C8F130](v547);
          LODWORD(v544) = v548;
          *(a1 + 120) = v548;
          goto LABEL_1303;
        case 0x14u:
          if (v7 != 160)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x100000u;
          v16 = (v6 + 1);
          v15 = *v6;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if (v17 < 0)
          {
            v332 = google::protobuf::internal::VarintParseSlow64(v6, v15);
            v766 = v332;
            *(a1 + 913) = v333 != 0;
            if (!v332)
            {
              return 0;
            }
          }

          else
          {
            v16 = (v6 + 2);
LABEL_24:
            v766 = v16;
            *(a1 + 913) = v15 != 0;
          }

          goto LABEL_1306;
        case 0x15u:
          if (v7 != 170)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x400u;
          v544 = *(a1 + 128);
          if (v544)
          {
            goto LABEL_1304;
          }

          v719 = *(a1 + 8);
          if (v719)
          {
            v719 = *(v719 & 0xFFFFFFFFFFFFFFFELL);
          }

          v720 = MEMORY[0x277C8F130](v719);
          LODWORD(v544) = v720;
          *(a1 + 128) = v720;
          goto LABEL_1303;
        case 0x16u:
          if (v7 != 176)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x200000u;
          v214 = (v6 + 1);
          v213 = *v6;
          if ((v213 & 0x8000000000000000) == 0)
          {
            goto LABEL_354;
          }

          v215 = *v214;
          v213 = (v215 << 7) + v213 - 128;
          if (v215 < 0)
          {
            v466 = google::protobuf::internal::VarintParseSlow64(v6, v213);
            v766 = v466;
            *(a1 + 914) = v467 != 0;
            if (!v466)
            {
              return 0;
            }
          }

          else
          {
            v214 = (v6 + 2);
LABEL_354:
            v766 = v214;
            *(a1 + 914) = v213 != 0;
          }

          goto LABEL_1306;
        case 0x17u:
          if (v7 != 186)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x800u;
          v544 = *(a1 + 136);
          if (v544)
          {
            goto LABEL_1304;
          }

          v545 = *(a1 + 8);
          if (v545)
          {
            v545 = *(v545 & 0xFFFFFFFFFFFFFFFELL);
          }

          v546 = MEMORY[0x277C8F130](v545);
          LODWORD(v544) = v546;
          *(a1 + 136) = v546;
          goto LABEL_1303;
        case 0x18u:
          if (v7 != 192)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x400000u;
          v274 = (v6 + 1);
          v273 = *v6;
          if ((v273 & 0x8000000000000000) == 0)
          {
            goto LABEL_454;
          }

          v275 = *v274;
          v273 = (v275 << 7) + v273 - 128;
          if (v275 < 0)
          {
            v506 = google::protobuf::internal::VarintParseSlow64(v6, v273);
            v766 = v506;
            *(a1 + 915) = v507 != 0;
            if (!v506)
            {
              return 0;
            }
          }

          else
          {
            v274 = (v6 + 2);
LABEL_454:
            v766 = v274;
            *(a1 + 915) = v273 != 0;
          }

          goto LABEL_1306;
        case 0x19u:
          if (v7 != 202)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x1000u;
          v544 = *(a1 + 144);
          if (v544)
          {
            goto LABEL_1304;
          }

          v761 = *(a1 + 8);
          if (v761)
          {
            v761 = *(v761 & 0xFFFFFFFFFFFFFFFELL);
          }

          v762 = MEMORY[0x277C8F130](v761);
          LODWORD(v544) = v762;
          *(a1 + 144) = v762;
          goto LABEL_1303;
        case 0x1Au:
          if (v7 != 208)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x800000u;
          v271 = (v6 + 1);
          v270 = *v6;
          if ((v270 & 0x8000000000000000) == 0)
          {
            goto LABEL_449;
          }

          v272 = *v271;
          v270 = (v272 << 7) + v270 - 128;
          if (v272 < 0)
          {
            v504 = google::protobuf::internal::VarintParseSlow64(v6, v270);
            v766 = v504;
            *(a1 + 916) = v505 != 0;
            if (!v504)
            {
              return 0;
            }
          }

          else
          {
            v271 = (v6 + 2);
LABEL_449:
            v766 = v271;
            *(a1 + 916) = v270 != 0;
          }

          goto LABEL_1306;
        case 0x1Bu:
          if (v7 != 218)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x2000u;
          v544 = *(a1 + 152);
          if (v544)
          {
            goto LABEL_1304;
          }

          v729 = *(a1 + 8);
          if (v729)
          {
            v729 = *(v729 & 0xFFFFFFFFFFFFFFFELL);
          }

          v730 = MEMORY[0x277C8F130](v729);
          LODWORD(v544) = v730;
          *(a1 + 152) = v730;
          goto LABEL_1303;
        case 0x1Cu:
          if (v7 != 224)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x1000000u;
          v292 = (v6 + 1);
          v291 = *v6;
          if ((v291 & 0x8000000000000000) == 0)
          {
            goto LABEL_484;
          }

          v293 = *v292;
          v291 = (v293 << 7) + v291 - 128;
          if (v293 < 0)
          {
            v518 = google::protobuf::internal::VarintParseSlow64(v6, v291);
            v766 = v518;
            *(a1 + 917) = v519 != 0;
            if (!v518)
            {
              return 0;
            }
          }

          else
          {
            v292 = (v6 + 2);
LABEL_484:
            v766 = v292;
            *(a1 + 917) = v291 != 0;
          }

          goto LABEL_1306;
        case 0x1Du:
          if (v7 != 234)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x4000u;
          v544 = *(a1 + 160);
          if (v544)
          {
            goto LABEL_1304;
          }

          v687 = *(a1 + 8);
          if (v687)
          {
            v687 = *(v687 & 0xFFFFFFFFFFFFFFFELL);
          }

          v688 = MEMORY[0x277C8F130](v687);
          LODWORD(v544) = v688;
          *(a1 + 160) = v688;
          goto LABEL_1303;
        case 0x1Eu:
          if (v7 != 240)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x2000000u;
          v64 = (v6 + 1);
          v63 = *v6;
          if ((v63 & 0x8000000000000000) == 0)
          {
            goto LABEL_104;
          }

          v65 = *v64;
          v63 = (v65 << 7) + v63 - 128;
          if (v65 < 0)
          {
            v366 = google::protobuf::internal::VarintParseSlow64(v6, v63);
            v766 = v366;
            *(a1 + 918) = v367 != 0;
            if (!v366)
            {
              return 0;
            }
          }

          else
          {
            v64 = (v6 + 2);
LABEL_104:
            v766 = v64;
            *(a1 + 918) = v63 != 0;
          }

          goto LABEL_1306;
        case 0x1Fu:
          if (v7 != 250)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x8000u;
          v544 = *(a1 + 168);
          if (v544)
          {
            goto LABEL_1304;
          }

          v701 = *(a1 + 8);
          if (v701)
          {
            v701 = *(v701 & 0xFFFFFFFFFFFFFFFELL);
          }

          v702 = MEMORY[0x277C8F130](v701);
          LODWORD(v544) = v702;
          *(a1 + 168) = v702;
          goto LABEL_1303;
        case 0x20u:
          if (v7)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x4000000u;
          v232 = (v6 + 1);
          v231 = *v6;
          if ((v231 & 0x8000000000000000) == 0)
          {
            goto LABEL_384;
          }

          v233 = *v232;
          v231 = (v233 << 7) + v231 - 128;
          if (v233 < 0)
          {
            v478 = google::protobuf::internal::VarintParseSlow64(v6, v231);
            v766 = v478;
            *(a1 + 919) = v479 != 0;
            if (!v478)
            {
              return 0;
            }
          }

          else
          {
            v232 = (v6 + 2);
LABEL_384:
            v766 = v232;
            *(a1 + 919) = v231 != 0;
          }

          goto LABEL_1306;
        case 0x21u:
          if (v7 != 10)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x10000u;
          v544 = *(a1 + 176);
          if (v544)
          {
            goto LABEL_1304;
          }

          v549 = *(a1 + 8);
          if (v549)
          {
            v549 = *(v549 & 0xFFFFFFFFFFFFFFFELL);
          }

          v550 = MEMORY[0x277C8F130](v549);
          LODWORD(v544) = v550;
          *(a1 + 176) = v550;
          goto LABEL_1303;
        case 0x22u:
          if (v7 != 16)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x8000000u;
          v256 = (v6 + 1);
          v255 = *v6;
          if ((v255 & 0x8000000000000000) == 0)
          {
            goto LABEL_424;
          }

          v257 = *v256;
          v255 = (v257 << 7) + v255 - 128;
          if (v257 < 0)
          {
            v494 = google::protobuf::internal::VarintParseSlow64(v6, v255);
            v766 = v494;
            *(a1 + 920) = v495 != 0;
            if (!v494)
            {
              return 0;
            }
          }

          else
          {
            v256 = (v6 + 2);
LABEL_424:
            v766 = v256;
            *(a1 + 920) = v255 != 0;
          }

          goto LABEL_1306;
        case 0x23u:
          if (v7 != 26)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x20000u;
          v544 = *(a1 + 184);
          if (v544)
          {
            goto LABEL_1304;
          }

          v747 = *(a1 + 8);
          if (v747)
          {
            v747 = *(v747 & 0xFFFFFFFFFFFFFFFELL);
          }

          v748 = MEMORY[0x277C8F130](v747);
          LODWORD(v544) = v748;
          *(a1 + 184) = v748;
          goto LABEL_1303;
        case 0x24u:
          if (v7 != 32)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x10000000u;
          v13 = (v6 + 1);
          v12 = *v6;
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_19;
          }

          v14 = *v13;
          v12 = (v14 << 7) + v12 - 128;
          if (v14 < 0)
          {
            v330 = google::protobuf::internal::VarintParseSlow64(v6, v12);
            v766 = v330;
            *(a1 + 921) = v331 != 0;
            if (!v330)
            {
              return 0;
            }
          }

          else
          {
            v13 = (v6 + 2);
LABEL_19:
            v766 = v13;
            *(a1 + 921) = v12 != 0;
          }

          goto LABEL_1306;
        case 0x25u:
          if (v7 != 42)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x40000u;
          v544 = *(a1 + 192);
          if (v544)
          {
            goto LABEL_1304;
          }

          v558 = *(a1 + 8);
          if (v558)
          {
            v558 = *(v558 & 0xFFFFFFFFFFFFFFFELL);
          }

          v559 = MEMORY[0x277C8F130](v558);
          LODWORD(v544) = v559;
          *(a1 + 192) = v559;
          goto LABEL_1303;
        case 0x26u:
          if (v7 != 48)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x20000000u;
          v325 = (v6 + 1);
          v324 = *v6;
          if ((v324 & 0x8000000000000000) == 0)
          {
            goto LABEL_539;
          }

          v326 = *v325;
          v324 = (v326 << 7) + v324 - 128;
          if (v326 < 0)
          {
            v540 = google::protobuf::internal::VarintParseSlow64(v6, v324);
            v766 = v540;
            *(a1 + 922) = v541 != 0;
            if (!v540)
            {
              return 0;
            }
          }

          else
          {
            v325 = (v6 + 2);
LABEL_539:
            v766 = v325;
            *(a1 + 922) = v324 != 0;
          }

          goto LABEL_1306;
        case 0x27u:
          if (v7 != 58)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x80000u;
          v544 = *(a1 + 200);
          if (v544)
          {
            goto LABEL_1304;
          }

          v551 = *(a1 + 8);
          if (v551)
          {
            v551 = *(v551 & 0xFFFFFFFFFFFFFFFELL);
          }

          v552 = MEMORY[0x277C8F130](v551);
          LODWORD(v544) = v552;
          *(a1 + 200) = v552;
          goto LABEL_1303;
        case 0x28u:
          if (v7 != 64)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x40000000u;
          v19 = (v6 + 1);
          v18 = *v6;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_29;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if (v20 < 0)
          {
            v334 = google::protobuf::internal::VarintParseSlow64(v6, v18);
            v766 = v334;
            *(a1 + 923) = v335 != 0;
            if (!v334)
            {
              return 0;
            }
          }

          else
          {
            v19 = (v6 + 2);
LABEL_29:
            v766 = v19;
            *(a1 + 923) = v18 != 0;
          }

          goto LABEL_1306;
        case 0x29u:
          if (v7 != 74)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x100000u;
          v576 = *(a1 + 208);
          if (v576)
          {
            goto LABEL_1198;
          }

          v723 = *(a1 + 8);
          if (v723)
          {
            v723 = *(v723 & 0xFFFFFFFFFFFFFFFELL);
          }

          v724 = MEMORY[0x277C8F150](v723);
          LODWORD(v576) = v724;
          *(a1 + 208) = v724;
          goto LABEL_1197;
        case 0x2Au:
          if (v7 != 80)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x80000000;
          v238 = (v6 + 1);
          v237 = *v6;
          if ((v237 & 0x8000000000000000) == 0)
          {
            goto LABEL_394;
          }

          v239 = *v238;
          v237 = (v239 << 7) + v237 - 128;
          if (v239 < 0)
          {
            v482 = google::protobuf::internal::VarintParseSlow64(v6, v237);
            v766 = v482;
            *(a1 + 924) = v483 != 0;
            if (!v482)
            {
              return 0;
            }
          }

          else
          {
            v238 = (v6 + 2);
LABEL_394:
            v766 = v238;
            *(a1 + 924) = v237 != 0;
          }

          goto LABEL_1306;
        case 0x2Bu:
          if (v7 != 90)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x200000u;
          v544 = *(a1 + 216);
          if (v544)
          {
            goto LABEL_1304;
          }

          v755 = *(a1 + 8);
          if (v755)
          {
            v755 = *(v755 & 0xFFFFFFFFFFFFFFFELL);
          }

          v756 = MEMORY[0x277C8F130](v755);
          LODWORD(v544) = v756;
          *(a1 + 216) = v756;
          goto LABEL_1303;
        case 0x2Cu:
          if (v7 != 96)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 1u;
          v22 = (v6 + 1);
          v21 = *v6;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            v336 = google::protobuf::internal::VarintParseSlow64(v6, v21);
            v766 = v336;
            *(a1 + 925) = v337 != 0;
            if (!v336)
            {
              return 0;
            }
          }

          else
          {
            v22 = (v6 + 2);
LABEL_34:
            v766 = v22;
            *(a1 + 925) = v21 != 0;
          }

          goto LABEL_1306;
        case 0x2Du:
          if (v7 != 106)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x400000u;
          v636 = *(a1 + 224);
          if (v636)
          {
            goto LABEL_1191;
          }

          v661 = *(a1 + 8);
          if (v661)
          {
            v661 = *(v661 & 0xFFFFFFFFFFFFFFFELL);
          }

          v662 = MEMORY[0x277C8F110](v661);
          LODWORD(v636) = v662;
          *(a1 + 224) = v662;
          goto LABEL_1190;
        case 0x2Eu:
          if (v7 != 112)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 2u;
          v304 = (v6 + 1);
          v303 = *v6;
          if ((v303 & 0x8000000000000000) == 0)
          {
            goto LABEL_504;
          }

          v305 = *v304;
          v303 = (v305 << 7) + v303 - 128;
          if (v305 < 0)
          {
            v526 = google::protobuf::internal::VarintParseSlow64(v6, v303);
            v766 = v526;
            *(a1 + 926) = v527 != 0;
            if (!v526)
            {
              return 0;
            }
          }

          else
          {
            v304 = (v6 + 2);
LABEL_504:
            v766 = v304;
            *(a1 + 926) = v303 != 0;
          }

          goto LABEL_1306;
        case 0x2Fu:
          if (v7 != 122)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x800000u;
          v553 = *(a1 + 232);
          if (v553)
          {
            goto LABEL_1292;
          }

          v659 = *(a1 + 8);
          if (v659)
          {
            v659 = *(v659 & 0xFFFFFFFFFFFFFFFELL);
          }

          v660 = MEMORY[0x277C8F140](v659);
          LODWORD(v553) = v660;
          *(a1 + 232) = v660;
          goto LABEL_1291;
        case 0x30u:
          if (v7 != 128)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 4u;
          v85 = (v6 + 1);
          v84 = *v6;
          if ((v84 & 0x8000000000000000) == 0)
          {
            goto LABEL_139;
          }

          v86 = *v85;
          v84 = (v86 << 7) + v84 - 128;
          if (v86 < 0)
          {
            v380 = google::protobuf::internal::VarintParseSlow64(v6, v84);
            v766 = v380;
            *(a1 + 927) = v381 != 0;
            if (!v380)
            {
              return 0;
            }
          }

          else
          {
            v85 = (v6 + 2);
LABEL_139:
            v766 = v85;
            *(a1 + 927) = v84 != 0;
          }

          goto LABEL_1306;
        case 0x31u:
          if (v7 != 138)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x1000000u;
          v553 = *(a1 + 240);
          if (v553)
          {
            goto LABEL_1292;
          }

          v743 = *(a1 + 8);
          if (v743)
          {
            v743 = *(v743 & 0xFFFFFFFFFFFFFFFELL);
          }

          v744 = MEMORY[0x277C8F140](v743);
          LODWORD(v553) = v744;
          *(a1 + 240) = v744;
          goto LABEL_1291;
        case 0x32u:
          if (v7 != 144)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 8u;
          v100 = (v6 + 1);
          v99 = *v6;
          if ((v99 & 0x8000000000000000) == 0)
          {
            goto LABEL_164;
          }

          v101 = *v100;
          v99 = (v101 << 7) + v99 - 128;
          if (v101 < 0)
          {
            v390 = google::protobuf::internal::VarintParseSlow64(v6, v99);
            v766 = v390;
            *(a1 + 928) = v391 != 0;
            if (!v390)
            {
              return 0;
            }
          }

          else
          {
            v100 = (v6 + 2);
LABEL_164:
            v766 = v100;
            *(a1 + 928) = v99 != 0;
          }

          goto LABEL_1306;
        case 0x33u:
          if (v7 != 154)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x2000000u;
          v553 = *(a1 + 248);
          if (v553)
          {
            goto LABEL_1292;
          }

          v554 = *(a1 + 8);
          if (v554)
          {
            v554 = *(v554 & 0xFFFFFFFFFFFFFFFELL);
          }

          v555 = MEMORY[0x277C8F140](v554);
          LODWORD(v553) = v555;
          *(a1 + 248) = v555;
          goto LABEL_1291;
        case 0x34u:
          if (v7 != 160)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x10u;
          v31 = (v6 + 1);
          v30 = *v6;
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_49;
          }

          v32 = *v31;
          v30 = (v32 << 7) + v30 - 128;
          if (v32 < 0)
          {
            v342 = google::protobuf::internal::VarintParseSlow64(v6, v30);
            v766 = v342;
            *(a1 + 929) = v343 != 0;
            if (!v342)
            {
              return 0;
            }
          }

          else
          {
            v31 = (v6 + 2);
LABEL_49:
            v766 = v31;
            *(a1 + 929) = v30 != 0;
          }

          goto LABEL_1306;
        case 0x35u:
          if (v7 != 170)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x4000000u;
          v553 = *(a1 + 256);
          if (v553)
          {
            goto LABEL_1292;
          }

          v691 = *(a1 + 8);
          if (v691)
          {
            v691 = *(v691 & 0xFFFFFFFFFFFFFFFELL);
          }

          v692 = MEMORY[0x277C8F140](v691);
          LODWORD(v553) = v692;
          *(a1 + 256) = v692;
LABEL_1291:
          v6 = v766;
LABEL_1292:
          v658 = sub_275E60A14(a3, v553, v6);
          goto LABEL_1305;
        case 0x36u:
          if (v7 != 176)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x20u;
          v43 = (v6 + 1);
          v42 = *v6;
          if ((v42 & 0x8000000000000000) == 0)
          {
            goto LABEL_69;
          }

          v44 = *v43;
          v42 = (v44 << 7) + v42 - 128;
          if (v44 < 0)
          {
            v352 = google::protobuf::internal::VarintParseSlow64(v6, v42);
            v766 = v352;
            *(a1 + 930) = v353 != 0;
            if (!v352)
            {
              return 0;
            }
          }

          else
          {
            v43 = (v6 + 2);
LABEL_69:
            v766 = v43;
            *(a1 + 930) = v42 != 0;
          }

          goto LABEL_1306;
        case 0x37u:
          if (v7 != 186)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x8000000u;
          v593 = *(a1 + 264);
          if (v593)
          {
            goto LABEL_1285;
          }

          v671 = *(a1 + 8);
          if (v671)
          {
            v671 = *(v671 & 0xFFFFFFFFFFFFFFFELL);
          }

          v672 = MEMORY[0x277C8F120](v671);
          LODWORD(v593) = v672;
          *(a1 + 264) = v672;
          goto LABEL_1284;
        case 0x38u:
          if (v7 != 192)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x40u;
          v109 = (v6 + 1);
          v108 = *v6;
          if ((v108 & 0x8000000000000000) == 0)
          {
            goto LABEL_179;
          }

          v110 = *v109;
          v108 = (v110 << 7) + v108 - 128;
          if (v110 < 0)
          {
            v396 = google::protobuf::internal::VarintParseSlow64(v6, v108);
            v766 = v396;
            *(a1 + 931) = v397 != 0;
            if (!v396)
            {
              return 0;
            }
          }

          else
          {
            v109 = (v6 + 2);
LABEL_179:
            v766 = v109;
            *(a1 + 931) = v108 != 0;
          }

          goto LABEL_1306;
        case 0x39u:
          if (v7 != 202)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x10000000u;
          v593 = *(a1 + 272);
          if (v593)
          {
            goto LABEL_1285;
          }

          v757 = *(a1 + 8);
          if (v757)
          {
            v757 = *(v757 & 0xFFFFFFFFFFFFFFFELL);
          }

          v758 = MEMORY[0x277C8F120](v757);
          LODWORD(v593) = v758;
          *(a1 + 272) = v758;
          goto LABEL_1284;
        case 0x3Au:
          if (v7 != 208)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x80u;
          v121 = (v6 + 1);
          v120 = *v6;
          if ((v120 & 0x8000000000000000) == 0)
          {
            goto LABEL_199;
          }

          v122 = *v121;
          v120 = (v122 << 7) + v120 - 128;
          if (v122 < 0)
          {
            v404 = google::protobuf::internal::VarintParseSlow64(v6, v120);
            v766 = v404;
            *(a1 + 932) = v405 != 0;
            if (!v404)
            {
              return 0;
            }
          }

          else
          {
            v121 = (v6 + 2);
LABEL_199:
            v766 = v121;
            *(a1 + 932) = v120 != 0;
          }

          goto LABEL_1306;
        case 0x3Bu:
          if (v7 != 218)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x20000000u;
          v593 = *(a1 + 280);
          if (v593)
          {
            goto LABEL_1285;
          }

          v753 = *(a1 + 8);
          if (v753)
          {
            v753 = *(v753 & 0xFFFFFFFFFFFFFFFELL);
          }

          v754 = MEMORY[0x277C8F120](v753);
          LODWORD(v593) = v754;
          *(a1 + 280) = v754;
          goto LABEL_1284;
        case 0x3Cu:
          if (v7 != 224)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x100u;
          v316 = (v6 + 1);
          v315 = *v6;
          if ((v315 & 0x8000000000000000) == 0)
          {
            goto LABEL_524;
          }

          v317 = *v316;
          v315 = (v317 << 7) + v315 - 128;
          if (v317 < 0)
          {
            v534 = google::protobuf::internal::VarintParseSlow64(v6, v315);
            v766 = v534;
            *(a1 + 933) = v535 != 0;
            if (!v534)
            {
              return 0;
            }
          }

          else
          {
            v316 = (v6 + 2);
LABEL_524:
            v766 = v316;
            *(a1 + 933) = v315 != 0;
          }

          goto LABEL_1306;
        case 0x3Du:
          if (v7 != 234)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x40000000u;
          v593 = *(a1 + 288);
          if (v593)
          {
            goto LABEL_1285;
          }

          v594 = *(a1 + 8);
          if (v594)
          {
            v594 = *(v594 & 0xFFFFFFFFFFFFFFFELL);
          }

          v595 = MEMORY[0x277C8F120](v594);
          LODWORD(v593) = v595;
          *(a1 + 288) = v595;
          goto LABEL_1284;
        case 0x3Eu:
          if (v7 != 240)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x200u;
          v67 = (v6 + 1);
          v66 = *v6;
          if ((v66 & 0x8000000000000000) == 0)
          {
            goto LABEL_109;
          }

          v68 = *v67;
          v66 = (v68 << 7) + v66 - 128;
          if (v68 < 0)
          {
            v368 = google::protobuf::internal::VarintParseSlow64(v6, v66);
            v766 = v368;
            *(a1 + 934) = v369 != 0;
            if (!v368)
            {
              return 0;
            }
          }

          else
          {
            v67 = (v6 + 2);
LABEL_109:
            v766 = v67;
            *(a1 + 934) = v66 != 0;
          }

          goto LABEL_1306;
        case 0x3Fu:
          if (v7 != 250)
          {
            goto LABEL_1308;
          }

          *(a1 + 16) |= 0x80000000;
          v544 = *(a1 + 296);
          if (v544)
          {
            goto LABEL_1304;
          }

          v585 = *(a1 + 8);
          if (v585)
          {
            v585 = *(v585 & 0xFFFFFFFFFFFFFFFELL);
          }

          v586 = MEMORY[0x277C8F130](v585);
          LODWORD(v544) = v586;
          *(a1 + 296) = v586;
          goto LABEL_1303;
        case 0x40u:
          if (v7)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x400u;
          v313 = (v6 + 1);
          v312 = *v6;
          if ((v312 & 0x8000000000000000) == 0)
          {
            goto LABEL_519;
          }

          v314 = *v313;
          v312 = (v314 << 7) + v312 - 128;
          if (v314 < 0)
          {
            v532 = google::protobuf::internal::VarintParseSlow64(v6, v312);
            v766 = v532;
            *(a1 + 935) = v533 != 0;
            if (!v532)
            {
              return 0;
            }
          }

          else
          {
            v313 = (v6 + 2);
LABEL_519:
            v766 = v313;
            *(a1 + 935) = v312 != 0;
          }

          goto LABEL_1306;
        case 0x41u:
          if (v7 != 10)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 1u;
          v544 = *(a1 + 304);
          if (v544)
          {
            goto LABEL_1304;
          }

          v749 = *(a1 + 8);
          if (v749)
          {
            v749 = *(v749 & 0xFFFFFFFFFFFFFFFELL);
          }

          v750 = MEMORY[0x277C8F130](v749);
          LODWORD(v544) = v750;
          *(a1 + 304) = v750;
          goto LABEL_1303;
        case 0x42u:
          if (v7 != 16)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x800u;
          v25 = (v6 + 1);
          v24 = *v6;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            v338 = google::protobuf::internal::VarintParseSlow64(v6, v24);
            v766 = v338;
            *(a1 + 936) = v339 != 0;
            if (!v338)
            {
              return 0;
            }
          }

          else
          {
            v25 = (v6 + 2);
LABEL_39:
            v766 = v25;
            *(a1 + 936) = v24 != 0;
          }

          goto LABEL_1306;
        case 0x43u:
          if (v7 != 26)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 2u;
          v544 = *(a1 + 312);
          if (v544)
          {
            goto LABEL_1304;
          }

          v598 = *(a1 + 8);
          if (v598)
          {
            v598 = *(v598 & 0xFFFFFFFFFFFFFFFELL);
          }

          v599 = MEMORY[0x277C8F130](v598);
          LODWORD(v544) = v599;
          *(a1 + 312) = v599;
          goto LABEL_1303;
        case 0x44u:
          if (v7 != 32)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x1000u;
          v73 = (v6 + 1);
          v72 = *v6;
          if ((v72 & 0x8000000000000000) == 0)
          {
            goto LABEL_119;
          }

          v74 = *v73;
          v72 = (v74 << 7) + v72 - 128;
          if (v74 < 0)
          {
            v372 = google::protobuf::internal::VarintParseSlow64(v6, v72);
            v766 = v372;
            *(a1 + 937) = v373 != 0;
            if (!v372)
            {
              return 0;
            }
          }

          else
          {
            v73 = (v6 + 2);
LABEL_119:
            v766 = v73;
            *(a1 + 937) = v72 != 0;
          }

          goto LABEL_1306;
        case 0x45u:
          if (v7 != 42)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 4u;
          v544 = *(a1 + 320);
          if (v544)
          {
            goto LABEL_1304;
          }

          v681 = *(a1 + 8);
          if (v681)
          {
            v681 = *(v681 & 0xFFFFFFFFFFFFFFFELL);
          }

          v682 = MEMORY[0x277C8F130](v681);
          LODWORD(v544) = v682;
          *(a1 + 320) = v682;
          goto LABEL_1303;
        case 0x46u:
          if (v7 != 48)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x2000u;
          v283 = (v6 + 1);
          v282 = *v6;
          if ((v282 & 0x8000000000000000) == 0)
          {
            goto LABEL_469;
          }

          v284 = *v283;
          v282 = (v284 << 7) + v282 - 128;
          if (v284 < 0)
          {
            v512 = google::protobuf::internal::VarintParseSlow64(v6, v282);
            v766 = v512;
            *(a1 + 938) = v513 != 0;
            if (!v512)
            {
              return 0;
            }
          }

          else
          {
            v283 = (v6 + 2);
LABEL_469:
            v766 = v283;
            *(a1 + 938) = v282 != 0;
          }

          goto LABEL_1306;
        case 0x47u:
          if (v7 != 58)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 8u;
          v544 = *(a1 + 328);
          if (v544)
          {
            goto LABEL_1304;
          }

          v560 = *(a1 + 8);
          if (v560)
          {
            v560 = *(v560 & 0xFFFFFFFFFFFFFFFELL);
          }

          v561 = MEMORY[0x277C8F130](v560);
          LODWORD(v544) = v561;
          *(a1 + 328) = v561;
          goto LABEL_1303;
        case 0x48u:
          if (v7 != 64)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x4000u;
          v154 = (v6 + 1);
          v153 = *v6;
          if ((v153 & 0x8000000000000000) == 0)
          {
            goto LABEL_254;
          }

          v155 = *v154;
          v153 = (v155 << 7) + v153 - 128;
          if (v155 < 0)
          {
            v426 = google::protobuf::internal::VarintParseSlow64(v6, v153);
            v766 = v426;
            *(a1 + 939) = v427 != 0;
            if (!v426)
            {
              return 0;
            }
          }

          else
          {
            v154 = (v6 + 2);
LABEL_254:
            v766 = v154;
            *(a1 + 939) = v153 != 0;
          }

          goto LABEL_1306;
        case 0x49u:
          if (v7 != 74)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x10u;
          v544 = *(a1 + 336);
          if (v544)
          {
            goto LABEL_1304;
          }

          v741 = *(a1 + 8);
          if (v741)
          {
            v741 = *(v741 & 0xFFFFFFFFFFFFFFFELL);
          }

          v742 = MEMORY[0x277C8F130](v741);
          LODWORD(v544) = v742;
          *(a1 + 336) = v742;
          goto LABEL_1303;
        case 0x4Au:
          if (v7 != 80)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x8000u;
          v319 = (v6 + 1);
          v318 = *v6;
          if ((v318 & 0x8000000000000000) == 0)
          {
            goto LABEL_529;
          }

          v320 = *v319;
          v318 = (v320 << 7) + v318 - 128;
          if (v320 < 0)
          {
            v536 = google::protobuf::internal::VarintParseSlow64(v6, v318);
            v766 = v536;
            *(a1 + 940) = v537 != 0;
            if (!v536)
            {
              return 0;
            }
          }

          else
          {
            v319 = (v6 + 2);
LABEL_529:
            v766 = v319;
            *(a1 + 940) = v318 != 0;
          }

          goto LABEL_1306;
        case 0x4Bu:
          if (v7 != 90)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x20u;
          v544 = *(a1 + 344);
          if (v544)
          {
            goto LABEL_1304;
          }

          v651 = *(a1 + 8);
          if (v651)
          {
            v651 = *(v651 & 0xFFFFFFFFFFFFFFFELL);
          }

          v652 = MEMORY[0x277C8F130](v651);
          LODWORD(v544) = v652;
          *(a1 + 344) = v652;
          goto LABEL_1303;
        case 0x4Cu:
          if (v7 != 96)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x10000u;
          v34 = (v6 + 1);
          v33 = *v6;
          if ((v33 & 0x8000000000000000) == 0)
          {
            goto LABEL_54;
          }

          v35 = *v34;
          v33 = (v35 << 7) + v33 - 128;
          if (v35 < 0)
          {
            v344 = google::protobuf::internal::VarintParseSlow64(v6, v33);
            v766 = v344;
            *(a1 + 941) = v345 != 0;
            if (!v344)
            {
              return 0;
            }
          }

          else
          {
            v34 = (v6 + 2);
LABEL_54:
            v766 = v34;
            *(a1 + 941) = v33 != 0;
          }

          goto LABEL_1306;
        case 0x4Du:
          if (v7 != 106)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x40u;
          v544 = *(a1 + 352);
          if (v544)
          {
            goto LABEL_1304;
          }

          v745 = *(a1 + 8);
          if (v745)
          {
            v745 = *(v745 & 0xFFFFFFFFFFFFFFFELL);
          }

          v746 = MEMORY[0x277C8F130](v745);
          LODWORD(v544) = v746;
          *(a1 + 352) = v746;
          goto LABEL_1303;
        case 0x4Eu:
          if (v7 != 112)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x20000u;
          v205 = (v6 + 1);
          v204 = *v6;
          if ((v204 & 0x8000000000000000) == 0)
          {
            goto LABEL_339;
          }

          v206 = *v205;
          v204 = (v206 << 7) + v204 - 128;
          if (v206 < 0)
          {
            v460 = google::protobuf::internal::VarintParseSlow64(v6, v204);
            v766 = v460;
            *(a1 + 942) = v461 != 0;
            if (!v460)
            {
              return 0;
            }
          }

          else
          {
            v205 = (v6 + 2);
LABEL_339:
            v766 = v205;
            *(a1 + 942) = v204 != 0;
          }

          goto LABEL_1306;
        case 0x4Fu:
          if (v7 != 122)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x80u;
          v544 = *(a1 + 360);
          if (v544)
          {
            goto LABEL_1304;
          }

          v649 = *(a1 + 8);
          if (v649)
          {
            v649 = *(v649 & 0xFFFFFFFFFFFFFFFELL);
          }

          v650 = MEMORY[0x277C8F130](v649);
          LODWORD(v544) = v650;
          *(a1 + 360) = v650;
          goto LABEL_1303;
        case 0x50u:
          if (v7 != 128)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x40000u;
          v58 = (v6 + 1);
          v57 = *v6;
          if ((v57 & 0x8000000000000000) == 0)
          {
            goto LABEL_94;
          }

          v59 = *v58;
          v57 = (v59 << 7) + v57 - 128;
          if (v59 < 0)
          {
            v362 = google::protobuf::internal::VarintParseSlow64(v6, v57);
            v766 = v362;
            *(a1 + 943) = v363 != 0;
            if (!v362)
            {
              return 0;
            }
          }

          else
          {
            v58 = (v6 + 2);
LABEL_94:
            v766 = v58;
            *(a1 + 943) = v57 != 0;
          }

          goto LABEL_1306;
        case 0x51u:
          if (v7 != 138)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x100u;
          v544 = *(a1 + 368);
          if (v544)
          {
            goto LABEL_1304;
          }

          v737 = *(a1 + 8);
          if (v737)
          {
            v737 = *(v737 & 0xFFFFFFFFFFFFFFFELL);
          }

          v738 = MEMORY[0x277C8F130](v737);
          LODWORD(v544) = v738;
          *(a1 + 368) = v738;
          goto LABEL_1303;
        case 0x52u:
          if (v7 != 144)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x80000u;
          v37 = (v6 + 1);
          v36 = *v6;
          if ((v36 & 0x8000000000000000) == 0)
          {
            goto LABEL_59;
          }

          v38 = *v37;
          v36 = (v38 << 7) + v36 - 128;
          if (v38 < 0)
          {
            v348 = google::protobuf::internal::VarintParseSlow64(v6, v36);
            v766 = v348;
            *(a1 + 944) = v349 != 0;
            if (!v348)
            {
              return 0;
            }
          }

          else
          {
            v37 = (v6 + 2);
LABEL_59:
            v766 = v37;
            *(a1 + 944) = v36 != 0;
          }

          goto LABEL_1306;
        case 0x53u:
          if (v7 != 154)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x200u;
          v544 = *(a1 + 376);
          if (v544)
          {
            goto LABEL_1304;
          }

          v570 = *(a1 + 8);
          if (v570)
          {
            v570 = *(v570 & 0xFFFFFFFFFFFFFFFELL);
          }

          v571 = MEMORY[0x277C8F130](v570);
          LODWORD(v544) = v571;
          *(a1 + 376) = v571;
          goto LABEL_1303;
        case 0x54u:
          if (v7 != 160)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x100000u;
          v229 = (v6 + 1);
          v228 = *v6;
          if ((v228 & 0x8000000000000000) == 0)
          {
            goto LABEL_379;
          }

          v230 = *v229;
          v228 = (v230 << 7) + v228 - 128;
          if (v230 < 0)
          {
            v476 = google::protobuf::internal::VarintParseSlow64(v6, v228);
            v766 = v476;
            *(a1 + 945) = v477 != 0;
            if (!v476)
            {
              return 0;
            }
          }

          else
          {
            v229 = (v6 + 2);
LABEL_379:
            v766 = v229;
            *(a1 + 945) = v228 != 0;
          }

          goto LABEL_1306;
        case 0x55u:
          if (v7 != 170)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x400u;
          v544 = *(a1 + 384);
          if (v544)
          {
            goto LABEL_1304;
          }

          v717 = *(a1 + 8);
          if (v717)
          {
            v717 = *(v717 & 0xFFFFFFFFFFFFFFFELL);
          }

          v718 = MEMORY[0x277C8F130](v717);
          LODWORD(v544) = v718;
          *(a1 + 384) = v718;
          goto LABEL_1303;
        case 0x56u:
          if (v7 != 176)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x200000u;
          v199 = (v6 + 1);
          v198 = *v6;
          if ((v198 & 0x8000000000000000) == 0)
          {
            goto LABEL_329;
          }

          v200 = *v199;
          v198 = (v200 << 7) + v198 - 128;
          if (v200 < 0)
          {
            v456 = google::protobuf::internal::VarintParseSlow64(v6, v198);
            v766 = v456;
            *(a1 + 946) = v457 != 0;
            if (!v456)
            {
              return 0;
            }
          }

          else
          {
            v199 = (v6 + 2);
LABEL_329:
            v766 = v199;
            *(a1 + 946) = v198 != 0;
          }

          goto LABEL_1306;
        case 0x57u:
          if (v7 != 186)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x800u;
          v544 = *(a1 + 392);
          if (v544)
          {
            goto LABEL_1304;
          }

          v574 = *(a1 + 8);
          if (v574)
          {
            v574 = *(v574 & 0xFFFFFFFFFFFFFFFELL);
          }

          v575 = MEMORY[0x277C8F130](v574);
          LODWORD(v544) = v575;
          *(a1 + 392) = v575;
          goto LABEL_1303;
        case 0x58u:
          if (v7 != 192)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x400000u;
          v124 = (v6 + 1);
          v123 = *v6;
          if ((v123 & 0x8000000000000000) == 0)
          {
            goto LABEL_204;
          }

          v125 = *v124;
          v123 = (v125 << 7) + v123 - 128;
          if (v125 < 0)
          {
            v406 = google::protobuf::internal::VarintParseSlow64(v6, v123);
            v766 = v406;
            *(a1 + 947) = v407 != 0;
            if (!v406)
            {
              return 0;
            }
          }

          else
          {
            v124 = (v6 + 2);
LABEL_204:
            v766 = v124;
            *(a1 + 947) = v123 != 0;
          }

          goto LABEL_1306;
        case 0x59u:
          if (v7 != 202)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x1000u;
          v544 = *(a1 + 400);
          if (v544)
          {
            goto LABEL_1304;
          }

          v739 = *(a1 + 8);
          if (v739)
          {
            v739 = *(v739 & 0xFFFFFFFFFFFFFFFELL);
          }

          v740 = MEMORY[0x277C8F130](v739);
          LODWORD(v544) = v740;
          *(a1 + 400) = v740;
          goto LABEL_1303;
        case 0x5Au:
          if (v7 != 208)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x800000u;
          v307 = (v6 + 1);
          v306 = *v6;
          if ((v306 & 0x8000000000000000) == 0)
          {
            goto LABEL_509;
          }

          v308 = *v307;
          v306 = (v308 << 7) + v306 - 128;
          if (v308 < 0)
          {
            v528 = google::protobuf::internal::VarintParseSlow64(v6, v306);
            v766 = v528;
            *(a1 + 948) = v529 != 0;
            if (!v528)
            {
              return 0;
            }
          }

          else
          {
            v307 = (v6 + 2);
LABEL_509:
            v766 = v307;
            *(a1 + 948) = v306 != 0;
          }

          goto LABEL_1306;
        case 0x5Bu:
          if (v7 != 218)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x2000u;
          v544 = *(a1 + 408);
          if (v544)
          {
            goto LABEL_1304;
          }

          v556 = *(a1 + 8);
          if (v556)
          {
            v556 = *(v556 & 0xFFFFFFFFFFFFFFFELL);
          }

          v557 = MEMORY[0x277C8F130](v556);
          LODWORD(v544) = v557;
          *(a1 + 408) = v557;
          goto LABEL_1303;
        case 0x5Cu:
          if (v7 != 224)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x1000000u;
          v49 = (v6 + 1);
          v48 = *v6;
          if ((v48 & 0x8000000000000000) == 0)
          {
            goto LABEL_79;
          }

          v50 = *v49;
          v48 = (v50 << 7) + v48 - 128;
          if (v50 < 0)
          {
            v356 = google::protobuf::internal::VarintParseSlow64(v6, v48);
            v766 = v356;
            *(a1 + 949) = v357 != 0;
            if (!v356)
            {
              return 0;
            }
          }

          else
          {
            v49 = (v6 + 2);
LABEL_79:
            v766 = v49;
            *(a1 + 949) = v48 != 0;
          }

          goto LABEL_1306;
        case 0x5Du:
          if (v7 != 234)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x4000u;
          v544 = *(a1 + 416);
          if (v544)
          {
            goto LABEL_1304;
          }

          v709 = *(a1 + 8);
          if (v709)
          {
            v709 = *(v709 & 0xFFFFFFFFFFFFFFFELL);
          }

          v710 = MEMORY[0x277C8F130](v709);
          LODWORD(v544) = v710;
          *(a1 + 416) = v710;
          goto LABEL_1303;
        case 0x5Eu:
          if (v7 != 240)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x2000000u;
          v115 = (v6 + 1);
          v114 = *v6;
          if ((v114 & 0x8000000000000000) == 0)
          {
            goto LABEL_189;
          }

          v116 = *v115;
          v114 = (v116 << 7) + v114 - 128;
          if (v116 < 0)
          {
            v400 = google::protobuf::internal::VarintParseSlow64(v6, v114);
            v766 = v400;
            *(a1 + 950) = v401 != 0;
            if (!v400)
            {
              return 0;
            }
          }

          else
          {
            v115 = (v6 + 2);
LABEL_189:
            v766 = v115;
            *(a1 + 950) = v114 != 0;
          }

          goto LABEL_1306;
        case 0x5Fu:
          if (v7 != 250)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x8000u;
          v544 = *(a1 + 424);
          if (v544)
          {
            goto LABEL_1304;
          }

          v663 = *(a1 + 8);
          if (v663)
          {
            v663 = *(v663 & 0xFFFFFFFFFFFFFFFELL);
          }

          v664 = MEMORY[0x277C8F130](v663);
          LODWORD(v544) = v664;
          *(a1 + 424) = v664;
          goto LABEL_1303;
        case 0x60u:
          if (v7)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x4000000u;
          v46 = (v6 + 1);
          v45 = *v6;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_74;
          }

          v47 = *v46;
          v45 = (v47 << 7) + v45 - 128;
          if (v47 < 0)
          {
            v354 = google::protobuf::internal::VarintParseSlow64(v6, v45);
            v766 = v354;
            *(a1 + 951) = v355 != 0;
            if (!v354)
            {
              return 0;
            }
          }

          else
          {
            v46 = (v6 + 2);
LABEL_74:
            v766 = v46;
            *(a1 + 951) = v45 != 0;
          }

          goto LABEL_1306;
        case 0x61u:
          if (v7 != 10)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x10000u;
          v544 = *(a1 + 432);
          if (v544)
          {
            goto LABEL_1304;
          }

          v591 = *(a1 + 8);
          if (v591)
          {
            v591 = *(v591 & 0xFFFFFFFFFFFFFFFELL);
          }

          v592 = MEMORY[0x277C8F130](v591);
          LODWORD(v544) = v592;
          *(a1 + 432) = v592;
          goto LABEL_1303;
        case 0x62u:
          if (v7 != 16)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x8000000u;
          v259 = (v6 + 1);
          v258 = *v6;
          if ((v258 & 0x8000000000000000) == 0)
          {
            goto LABEL_429;
          }

          v260 = *v259;
          v258 = (v260 << 7) + v258 - 128;
          if (v260 < 0)
          {
            v496 = google::protobuf::internal::VarintParseSlow64(v6, v258);
            v766 = v496;
            *(a1 + 952) = v497 != 0;
            if (!v496)
            {
              return 0;
            }
          }

          else
          {
            v259 = (v6 + 2);
LABEL_429:
            v766 = v259;
            *(a1 + 952) = v258 != 0;
          }

          goto LABEL_1306;
        case 0x63u:
          if (v7 != 26)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x20000u;
          v544 = *(a1 + 440);
          if (v544)
          {
            goto LABEL_1304;
          }

          v725 = *(a1 + 8);
          if (v725)
          {
            v725 = *(v725 & 0xFFFFFFFFFFFFFFFELL);
          }

          v726 = MEMORY[0x277C8F130](v725);
          LODWORD(v544) = v726;
          *(a1 + 440) = v726;
          goto LABEL_1303;
        case 0x64u:
          if (v7 != 32)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x10000000u;
          v79 = (v6 + 1);
          v78 = *v6;
          if ((v78 & 0x8000000000000000) == 0)
          {
            goto LABEL_129;
          }

          v80 = *v79;
          v78 = (v80 << 7) + v78 - 128;
          if (v80 < 0)
          {
            v376 = google::protobuf::internal::VarintParseSlow64(v6, v78);
            v766 = v376;
            *(a1 + 953) = v377 != 0;
            if (!v376)
            {
              return 0;
            }
          }

          else
          {
            v79 = (v6 + 2);
LABEL_129:
            v766 = v79;
            *(a1 + 953) = v78 != 0;
          }

          goto LABEL_1306;
        case 0x65u:
          if (v7 != 42)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x40000u;
          v544 = *(a1 + 448);
          if (v544)
          {
            goto LABEL_1304;
          }

          v587 = *(a1 + 8);
          if (v587)
          {
            v587 = *(v587 & 0xFFFFFFFFFFFFFFFELL);
          }

          v588 = MEMORY[0x277C8F130](v587);
          LODWORD(v544) = v588;
          *(a1 + 448) = v588;
          goto LABEL_1303;
        case 0x66u:
          if (v7 != 48)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x20000000u;
          v55 = (v6 + 1);
          v54 = *v6;
          if ((v54 & 0x8000000000000000) == 0)
          {
            goto LABEL_89;
          }

          v56 = *v55;
          v54 = (v56 << 7) + v54 - 128;
          if (v56 < 0)
          {
            v360 = google::protobuf::internal::VarintParseSlow64(v6, v54);
            v766 = v360;
            *(a1 + 954) = v361 != 0;
            if (!v360)
            {
              return 0;
            }
          }

          else
          {
            v55 = (v6 + 2);
LABEL_89:
            v766 = v55;
            *(a1 + 954) = v54 != 0;
          }

          goto LABEL_1306;
        case 0x67u:
          if (v7 != 58)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x80000u;
          v544 = *(a1 + 456);
          if (v544)
          {
            goto LABEL_1304;
          }

          v673 = *(a1 + 8);
          if (v673)
          {
            v673 = *(v673 & 0xFFFFFFFFFFFFFFFELL);
          }

          v674 = MEMORY[0x277C8F130](v673);
          LODWORD(v544) = v674;
          *(a1 + 456) = v674;
          goto LABEL_1303;
        case 0x68u:
          if (v7 != 64)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x40000000u;
          v52 = (v6 + 1);
          v51 = *v6;
          if ((v51 & 0x8000000000000000) == 0)
          {
            goto LABEL_84;
          }

          v53 = *v52;
          v51 = (v53 << 7) + v51 - 128;
          if (v53 < 0)
          {
            v358 = google::protobuf::internal::VarintParseSlow64(v6, v51);
            v766 = v358;
            *(a1 + 955) = v359 != 0;
            if (!v358)
            {
              return 0;
            }
          }

          else
          {
            v52 = (v6 + 2);
LABEL_84:
            v766 = v52;
            *(a1 + 955) = v51 != 0;
          }

          goto LABEL_1306;
        case 0x69u:
          if (v7 != 74)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x100000u;
          v544 = *(a1 + 464);
          if (v544)
          {
            goto LABEL_1304;
          }

          v735 = *(a1 + 8);
          if (v735)
          {
            v735 = *(v735 & 0xFFFFFFFFFFFFFFFELL);
          }

          v736 = MEMORY[0x277C8F130](v735);
          LODWORD(v544) = v736;
          *(a1 + 464) = v736;
          goto LABEL_1303;
        case 0x6Au:
          if (v7 != 80)
          {
            goto LABEL_1308;
          }

          *(a1 + 32) |= 0x80000000;
          v61 = (v6 + 1);
          v60 = *v6;
          if ((v60 & 0x8000000000000000) == 0)
          {
            goto LABEL_99;
          }

          v62 = *v61;
          v60 = (v62 << 7) + v60 - 128;
          if (v62 < 0)
          {
            v364 = google::protobuf::internal::VarintParseSlow64(v6, v60);
            v766 = v364;
            *(a1 + 956) = v365 != 0;
            if (!v364)
            {
              return 0;
            }
          }

          else
          {
            v61 = (v6 + 2);
LABEL_99:
            v766 = v61;
            *(a1 + 956) = v60 != 0;
          }

          goto LABEL_1306;
        case 0x6Bu:
          if (v7 != 90)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x200000u;
          v544 = *(a1 + 472);
          if (v544)
          {
            goto LABEL_1304;
          }

          v562 = *(a1 + 8);
          if (v562)
          {
            v562 = *(v562 & 0xFFFFFFFFFFFFFFFELL);
          }

          v563 = MEMORY[0x277C8F130](v562);
          LODWORD(v544) = v563;
          *(a1 + 472) = v563;
          goto LABEL_1303;
        case 0x6Cu:
          if (v7 != 96)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 1u;
          v289 = (v6 + 1);
          v288 = *v6;
          if ((v288 & 0x8000000000000000) == 0)
          {
            goto LABEL_479;
          }

          v290 = *v289;
          v288 = (v290 << 7) + v288 - 128;
          if (v290 < 0)
          {
            v516 = google::protobuf::internal::VarintParseSlow64(v6, v288);
            v766 = v516;
            *(a1 + 957) = v517 != 0;
            if (!v516)
            {
              return 0;
            }
          }

          else
          {
            v289 = (v6 + 2);
LABEL_479:
            v766 = v289;
            *(a1 + 957) = v288 != 0;
          }

          goto LABEL_1306;
        case 0x6Du:
          if (v7 != 106)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x400000u;
          v544 = *(a1 + 480);
          if (v544)
          {
            goto LABEL_1304;
          }

          v589 = *(a1 + 8);
          if (v589)
          {
            v589 = *(v589 & 0xFFFFFFFFFFFFFFFELL);
          }

          v590 = MEMORY[0x277C8F130](v589);
          LODWORD(v544) = v590;
          *(a1 + 480) = v590;
          goto LABEL_1303;
        case 0x6Eu:
          if (v7 != 112)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 2u;
          v298 = (v6 + 1);
          v297 = *v6;
          if ((v297 & 0x8000000000000000) == 0)
          {
            goto LABEL_494;
          }

          v299 = *v298;
          v297 = (v299 << 7) + v297 - 128;
          if (v299 < 0)
          {
            v522 = google::protobuf::internal::VarintParseSlow64(v6, v297);
            v766 = v522;
            *(a1 + 958) = v523 != 0;
            if (!v522)
            {
              return 0;
            }
          }

          else
          {
            v298 = (v6 + 2);
LABEL_494:
            v766 = v298;
            *(a1 + 958) = v297 != 0;
          }

          goto LABEL_1306;
        case 0x6Fu:
          if (v7 != 122)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x800000u;
          v544 = *(a1 + 488);
          if (v544)
          {
            goto LABEL_1304;
          }

          v579 = *(a1 + 8);
          if (v579)
          {
            v579 = *(v579 & 0xFFFFFFFFFFFFFFFELL);
          }

          v580 = MEMORY[0x277C8F130](v579);
          LODWORD(v544) = v580;
          *(a1 + 488) = v580;
          goto LABEL_1303;
        case 0x70u:
          if (v7 != 128)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 4u;
          v130 = (v6 + 1);
          v129 = *v6;
          if ((v129 & 0x8000000000000000) == 0)
          {
            goto LABEL_214;
          }

          v131 = *v130;
          v129 = (v131 << 7) + v129 - 128;
          if (v131 < 0)
          {
            v410 = google::protobuf::internal::VarintParseSlow64(v6, v129);
            v766 = v410;
            *(a1 + 959) = v411 != 0;
            if (!v410)
            {
              return 0;
            }
          }

          else
          {
            v130 = (v6 + 2);
LABEL_214:
            v766 = v130;
            *(a1 + 959) = v129 != 0;
          }

          goto LABEL_1306;
        case 0x71u:
          if (v7 != 138)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x1000000u;
          v544 = *(a1 + 496);
          if (v544)
          {
            goto LABEL_1304;
          }

          v679 = *(a1 + 8);
          if (v679)
          {
            v679 = *(v679 & 0xFFFFFFFFFFFFFFFELL);
          }

          v680 = MEMORY[0x277C8F130](v679);
          LODWORD(v544) = v680;
          *(a1 + 496) = v680;
          goto LABEL_1303;
        case 0x72u:
          if (v7 != 144)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 8u;
          v94 = (v6 + 1);
          v93 = *v6;
          if ((v93 & 0x8000000000000000) == 0)
          {
            goto LABEL_154;
          }

          v95 = *v94;
          v93 = (v95 << 7) + v93 - 128;
          if (v95 < 0)
          {
            v386 = google::protobuf::internal::VarintParseSlow64(v6, v93);
            v766 = v386;
            *(a1 + 960) = v387 != 0;
            if (!v386)
            {
              return 0;
            }
          }

          else
          {
            v94 = (v6 + 2);
LABEL_154:
            v766 = v94;
            *(a1 + 960) = v93 != 0;
          }

          goto LABEL_1306;
        case 0x73u:
          if (v7 != 154)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x2000000u;
          v544 = *(a1 + 504);
          if (v544)
          {
            goto LABEL_1304;
          }

          v568 = *(a1 + 8);
          if (v568)
          {
            v568 = *(v568 & 0xFFFFFFFFFFFFFFFELL);
          }

          v569 = MEMORY[0x277C8F130](v568);
          LODWORD(v544) = v569;
          *(a1 + 504) = v569;
          goto LABEL_1303;
        case 0x74u:
          if (v7 != 160)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x10u;
          v310 = (v6 + 1);
          v309 = *v6;
          if ((v309 & 0x8000000000000000) == 0)
          {
            goto LABEL_514;
          }

          v311 = *v310;
          v309 = (v311 << 7) + v309 - 128;
          if (v311 < 0)
          {
            v530 = google::protobuf::internal::VarintParseSlow64(v6, v309);
            v766 = v530;
            *(a1 + 961) = v531 != 0;
            if (!v530)
            {
              return 0;
            }
          }

          else
          {
            v310 = (v6 + 2);
LABEL_514:
            v766 = v310;
            *(a1 + 961) = v309 != 0;
          }

          goto LABEL_1306;
        case 0x75u:
          if (v7 != 170)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x4000000u;
          v544 = *(a1 + 512);
          if (v544)
          {
            goto LABEL_1304;
          }

          v713 = *(a1 + 8);
          if (v713)
          {
            v713 = *(v713 & 0xFFFFFFFFFFFFFFFELL);
          }

          v714 = MEMORY[0x277C8F130](v713);
          LODWORD(v544) = v714;
          *(a1 + 512) = v714;
          goto LABEL_1303;
        case 0x76u:
          if (v7 != 176)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x20u;
          v268 = (v6 + 1);
          v267 = *v6;
          if ((v267 & 0x8000000000000000) == 0)
          {
            goto LABEL_444;
          }

          v269 = *v268;
          v267 = (v269 << 7) + v267 - 128;
          if (v269 < 0)
          {
            v502 = google::protobuf::internal::VarintParseSlow64(v6, v267);
            v766 = v502;
            *(a1 + 962) = v503 != 0;
            if (!v502)
            {
              return 0;
            }
          }

          else
          {
            v268 = (v6 + 2);
LABEL_444:
            v766 = v268;
            *(a1 + 962) = v267 != 0;
          }

          goto LABEL_1306;
        case 0x77u:
          if (v7 != 186)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x8000000u;
          v544 = *(a1 + 520);
          if (v544)
          {
            goto LABEL_1304;
          }

          v677 = *(a1 + 8);
          if (v677)
          {
            v677 = *(v677 & 0xFFFFFFFFFFFFFFFELL);
          }

          v678 = MEMORY[0x277C8F130](v677);
          LODWORD(v544) = v678;
          *(a1 + 520) = v678;
          goto LABEL_1303;
        case 0x78u:
          if (v7 != 192)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x40u;
          v76 = (v6 + 1);
          v75 = *v6;
          if ((v75 & 0x8000000000000000) == 0)
          {
            goto LABEL_124;
          }

          v77 = *v76;
          v75 = (v77 << 7) + v75 - 128;
          if (v77 < 0)
          {
            v374 = google::protobuf::internal::VarintParseSlow64(v6, v75);
            v766 = v374;
            *(a1 + 963) = v375 != 0;
            if (!v374)
            {
              return 0;
            }
          }

          else
          {
            v76 = (v6 + 2);
LABEL_124:
            v766 = v76;
            *(a1 + 963) = v75 != 0;
          }

          goto LABEL_1306;
        case 0x79u:
          if (v7 != 202)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x10000000u;
          v544 = *(a1 + 528);
          if (v544)
          {
            goto LABEL_1304;
          }

          v731 = *(a1 + 8);
          if (v731)
          {
            v731 = *(v731 & 0xFFFFFFFFFFFFFFFELL);
          }

          v732 = MEMORY[0x277C8F130](v731);
          LODWORD(v544) = v732;
          *(a1 + 528) = v732;
          goto LABEL_1303;
        case 0x7Au:
          if (v7 != 208)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x80u;
          v301 = (v6 + 1);
          v300 = *v6;
          if ((v300 & 0x8000000000000000) == 0)
          {
            goto LABEL_499;
          }

          v302 = *v301;
          v300 = (v302 << 7) + v300 - 128;
          if (v302 < 0)
          {
            v524 = google::protobuf::internal::VarintParseSlow64(v6, v300);
            v766 = v524;
            *(a1 + 964) = v525 != 0;
            if (!v524)
            {
              return 0;
            }
          }

          else
          {
            v301 = (v6 + 2);
LABEL_499:
            v766 = v301;
            *(a1 + 964) = v300 != 0;
          }

          goto LABEL_1306;
        case 0x7Bu:
          if (v7 != 218)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x20000000u;
          v544 = *(a1 + 536);
          if (v544)
          {
            goto LABEL_1304;
          }

          v705 = *(a1 + 8);
          if (v705)
          {
            v705 = *(v705 & 0xFFFFFFFFFFFFFFFELL);
          }

          v706 = MEMORY[0x277C8F130](v705);
          LODWORD(v544) = v706;
          *(a1 + 536) = v706;
          goto LABEL_1303;
        case 0x7Cu:
          if (v7 != 224)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x100u;
          v277 = (v6 + 1);
          v276 = *v6;
          if ((v276 & 0x8000000000000000) == 0)
          {
            goto LABEL_459;
          }

          v278 = *v277;
          v276 = (v278 << 7) + v276 - 128;
          if (v278 < 0)
          {
            v508 = google::protobuf::internal::VarintParseSlow64(v6, v276);
            v766 = v508;
            *(a1 + 965) = v509 != 0;
            if (!v508)
            {
              return 0;
            }
          }

          else
          {
            v277 = (v6 + 2);
LABEL_459:
            v766 = v277;
            *(a1 + 965) = v276 != 0;
          }

          goto LABEL_1306;
        case 0x7Du:
          if (v7 != 234)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x40000000u;
          v544 = *(a1 + 544);
          if (v544)
          {
            goto LABEL_1304;
          }

          v581 = *(a1 + 8);
          if (v581)
          {
            v581 = *(v581 & 0xFFFFFFFFFFFFFFFELL);
          }

          v582 = MEMORY[0x277C8F130](v581);
          LODWORD(v544) = v582;
          *(a1 + 544) = v582;
          goto LABEL_1303;
        case 0x7Eu:
          if (v7 != 240)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x200u;
          v265 = (v6 + 1);
          v264 = *v6;
          if ((v264 & 0x8000000000000000) == 0)
          {
            goto LABEL_439;
          }

          v266 = *v265;
          v264 = (v266 << 7) + v264 - 128;
          if (v266 < 0)
          {
            v500 = google::protobuf::internal::VarintParseSlow64(v6, v264);
            v766 = v500;
            *(a1 + 966) = v501 != 0;
            if (!v500)
            {
              return 0;
            }
          }

          else
          {
            v265 = (v6 + 2);
LABEL_439:
            v766 = v265;
            *(a1 + 966) = v264 != 0;
          }

          goto LABEL_1306;
        case 0x7Fu:
          if (v7 != 250)
          {
            goto LABEL_1308;
          }

          *(a1 + 20) |= 0x80000000;
          v544 = *(a1 + 552);
          if (v544)
          {
            goto LABEL_1304;
          }

          v703 = *(a1 + 8);
          if (v703)
          {
            v703 = *(v703 & 0xFFFFFFFFFFFFFFFELL);
          }

          v704 = MEMORY[0x277C8F130](v703);
          LODWORD(v544) = v704;
          *(a1 + 552) = v704;
          goto LABEL_1303;
        case 0x80u:
          if (v7)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x400u;
          v172 = (v6 + 1);
          v171 = *v6;
          if ((v171 & 0x8000000000000000) == 0)
          {
            goto LABEL_284;
          }

          v173 = *v172;
          v171 = (v173 << 7) + v171 - 128;
          if (v173 < 0)
          {
            v438 = google::protobuf::internal::VarintParseSlow64(v6, v171);
            v766 = v438;
            *(a1 + 967) = v439 != 0;
            if (!v438)
            {
              return 0;
            }
          }

          else
          {
            v172 = (v6 + 2);
LABEL_284:
            v766 = v172;
            *(a1 + 967) = v171 != 0;
          }

          goto LABEL_1306;
        case 0x81u:
          if (v7 != 10)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 1u;
          v544 = *(a1 + 560);
          if (v544)
          {
            goto LABEL_1304;
          }

          v602 = *(a1 + 8);
          if (v602)
          {
            v602 = *(v602 & 0xFFFFFFFFFFFFFFFELL);
          }

          v603 = MEMORY[0x277C8F130](v602);
          LODWORD(v544) = v603;
          *(a1 + 560) = v603;
          goto LABEL_1303;
        case 0x82u:
          if (v7 != 16)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x800u;
          v235 = (v6 + 1);
          v234 = *v6;
          if ((v234 & 0x8000000000000000) == 0)
          {
            goto LABEL_389;
          }

          v236 = *v235;
          v234 = (v236 << 7) + v234 - 128;
          if (v236 < 0)
          {
            v480 = google::protobuf::internal::VarintParseSlow64(v6, v234);
            v766 = v480;
            *(a1 + 968) = v481 != 0;
            if (!v480)
            {
              return 0;
            }
          }

          else
          {
            v235 = (v6 + 2);
LABEL_389:
            v766 = v235;
            *(a1 + 968) = v234 != 0;
          }

          goto LABEL_1306;
        case 0x83u:
          if (v7 != 26)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 2u;
          v544 = *(a1 + 568);
          if (v544)
          {
            goto LABEL_1304;
          }

          v667 = *(a1 + 8);
          if (v667)
          {
            v667 = *(v667 & 0xFFFFFFFFFFFFFFFELL);
          }

          v668 = MEMORY[0x277C8F130](v667);
          LODWORD(v544) = v668;
          *(a1 + 568) = v668;
          goto LABEL_1303;
        case 0x84u:
          if (v7 != 32)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x1000u;
          v88 = (v6 + 1);
          v87 = *v6;
          if ((v87 & 0x8000000000000000) == 0)
          {
            goto LABEL_144;
          }

          v89 = *v88;
          v87 = (v89 << 7) + v87 - 128;
          if (v89 < 0)
          {
            v382 = google::protobuf::internal::VarintParseSlow64(v6, v87);
            v766 = v382;
            *(a1 + 969) = v383 != 0;
            if (!v382)
            {
              return 0;
            }
          }

          else
          {
            v88 = (v6 + 2);
LABEL_144:
            v766 = v88;
            *(a1 + 969) = v87 != 0;
          }

          goto LABEL_1306;
        case 0x85u:
          if (v7 != 42)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 4u;
          v544 = *(a1 + 576);
          if (v544)
          {
            goto LABEL_1304;
          }

          v693 = *(a1 + 8);
          if (v693)
          {
            v693 = *(v693 & 0xFFFFFFFFFFFFFFFELL);
          }

          v694 = MEMORY[0x277C8F130](v693);
          LODWORD(v544) = v694;
          *(a1 + 576) = v694;
          goto LABEL_1303;
        case 0x86u:
          if (v7 != 48)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x2000u;
          v286 = (v6 + 1);
          v285 = *v6;
          if ((v285 & 0x8000000000000000) == 0)
          {
            goto LABEL_474;
          }

          v287 = *v286;
          v285 = (v287 << 7) + v285 - 128;
          if (v287 < 0)
          {
            v514 = google::protobuf::internal::VarintParseSlow64(v6, v285);
            v766 = v514;
            *(a1 + 970) = v515 != 0;
            if (!v514)
            {
              return 0;
            }
          }

          else
          {
            v286 = (v6 + 2);
LABEL_474:
            v766 = v286;
            *(a1 + 970) = v285 != 0;
          }

          goto LABEL_1306;
        case 0x87u:
          if (v7 != 58)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 8u;
          v544 = *(a1 + 584);
          if (v544)
          {
            goto LABEL_1304;
          }

          v665 = *(a1 + 8);
          if (v665)
          {
            v665 = *(v665 & 0xFFFFFFFFFFFFFFFELL);
          }

          v666 = MEMORY[0x277C8F130](v665);
          LODWORD(v544) = v666;
          *(a1 + 584) = v666;
          goto LABEL_1303;
        case 0x88u:
          if (v7 != 64)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x4000u;
          v211 = (v6 + 1);
          v210 = *v6;
          if ((v210 & 0x8000000000000000) == 0)
          {
            goto LABEL_349;
          }

          v212 = *v211;
          v210 = (v212 << 7) + v210 - 128;
          if (v212 < 0)
          {
            v464 = google::protobuf::internal::VarintParseSlow64(v6, v210);
            v766 = v464;
            *(a1 + 971) = v465 != 0;
            if (!v464)
            {
              return 0;
            }
          }

          else
          {
            v211 = (v6 + 2);
LABEL_349:
            v766 = v211;
            *(a1 + 971) = v210 != 0;
          }

          goto LABEL_1306;
        case 0x89u:
          if (v7 != 74)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x10u;
          v544 = *(a1 + 592);
          if (v544)
          {
            goto LABEL_1304;
          }

          v606 = *(a1 + 8);
          if (v606)
          {
            v606 = *(v606 & 0xFFFFFFFFFFFFFFFELL);
          }

          v607 = MEMORY[0x277C8F130](v606);
          LODWORD(v544) = v607;
          *(a1 + 592) = v607;
          goto LABEL_1303;
        case 0x8Au:
          if (v7 != 80)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x8000u;
          v250 = (v6 + 1);
          v249 = *v6;
          if ((v249 & 0x8000000000000000) == 0)
          {
            goto LABEL_414;
          }

          v251 = *v250;
          v249 = (v251 << 7) + v249 - 128;
          if (v251 < 0)
          {
            v490 = google::protobuf::internal::VarintParseSlow64(v6, v249);
            v766 = v490;
            *(a1 + 972) = v491 != 0;
            if (!v490)
            {
              return 0;
            }
          }

          else
          {
            v250 = (v6 + 2);
LABEL_414:
            v766 = v250;
            *(a1 + 972) = v249 != 0;
          }

          goto LABEL_1306;
        case 0x8Bu:
          if (v7 != 90)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x20u;
          v544 = *(a1 + 600);
          if (v544)
          {
            goto LABEL_1304;
          }

          v583 = *(a1 + 8);
          if (v583)
          {
            v583 = *(v583 & 0xFFFFFFFFFFFFFFFELL);
          }

          v584 = MEMORY[0x277C8F130](v583);
          LODWORD(v544) = v584;
          *(a1 + 600) = v584;
          goto LABEL_1303;
        case 0x8Cu:
          if (v7 != 96)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x10000u;
          v70 = (v6 + 1);
          v69 = *v6;
          if ((v69 & 0x8000000000000000) == 0)
          {
            goto LABEL_114;
          }

          v71 = *v70;
          v69 = (v71 << 7) + v69 - 128;
          if (v71 < 0)
          {
            v370 = google::protobuf::internal::VarintParseSlow64(v6, v69);
            v766 = v370;
            *(a1 + 973) = v371 != 0;
            if (!v370)
            {
              return 0;
            }
          }

          else
          {
            v70 = (v6 + 2);
LABEL_114:
            v766 = v70;
            *(a1 + 973) = v69 != 0;
          }

          goto LABEL_1306;
        case 0x8Du:
          if (v7 != 106)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x40u;
          v544 = *(a1 + 608);
          if (v544)
          {
            goto LABEL_1304;
          }

          v600 = *(a1 + 8);
          if (v600)
          {
            v600 = *(v600 & 0xFFFFFFFFFFFFFFFELL);
          }

          v601 = MEMORY[0x277C8F130](v600);
          LODWORD(v544) = v601;
          *(a1 + 608) = v601;
          goto LABEL_1303;
        case 0x8Eu:
          if (v7 != 112)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x20000u;
          v97 = (v6 + 1);
          v96 = *v6;
          if ((v96 & 0x8000000000000000) == 0)
          {
            goto LABEL_159;
          }

          v98 = *v97;
          v96 = (v98 << 7) + v96 - 128;
          if (v98 < 0)
          {
            v388 = google::protobuf::internal::VarintParseSlow64(v6, v96);
            v766 = v388;
            *(a1 + 974) = v389 != 0;
            if (!v388)
            {
              return 0;
            }
          }

          else
          {
            v97 = (v6 + 2);
LABEL_159:
            v766 = v97;
            *(a1 + 974) = v96 != 0;
          }

          goto LABEL_1306;
        case 0x8Fu:
          if (v7 != 122)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x80u;
          v544 = *(a1 + 616);
          if (v544)
          {
            goto LABEL_1304;
          }

          v727 = *(a1 + 8);
          if (v727)
          {
            v727 = *(v727 & 0xFFFFFFFFFFFFFFFELL);
          }

          v728 = MEMORY[0x277C8F130](v727);
          LODWORD(v544) = v728;
          *(a1 + 616) = v728;
          goto LABEL_1303;
        case 0x90u:
          if (v7 != 128)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x40000u;
          v106 = (v6 + 1);
          v105 = *v6;
          if ((v105 & 0x8000000000000000) == 0)
          {
            goto LABEL_174;
          }

          v107 = *v106;
          v105 = (v107 << 7) + v105 - 128;
          if (v107 < 0)
          {
            v394 = google::protobuf::internal::VarintParseSlow64(v6, v105);
            v766 = v394;
            *(a1 + 975) = v395 != 0;
            if (!v394)
            {
              return 0;
            }
          }

          else
          {
            v106 = (v6 + 2);
LABEL_174:
            v766 = v106;
            *(a1 + 975) = v105 != 0;
          }

          goto LABEL_1306;
        case 0x91u:
          if (v7 != 138)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x100u;
          v544 = *(a1 + 624);
          if (v544)
          {
            goto LABEL_1304;
          }

          v675 = *(a1 + 8);
          if (v675)
          {
            v675 = *(v675 & 0xFFFFFFFFFFFFFFFELL);
          }

          v676 = MEMORY[0x277C8F130](v675);
          LODWORD(v544) = v676;
          *(a1 + 624) = v676;
          goto LABEL_1303;
        case 0x92u:
          if (v7 != 144)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x80000u;
          v262 = (v6 + 1);
          v261 = *v6;
          if ((v261 & 0x8000000000000000) == 0)
          {
            goto LABEL_434;
          }

          v263 = *v262;
          v261 = (v263 << 7) + v261 - 128;
          if (v263 < 0)
          {
            v498 = google::protobuf::internal::VarintParseSlow64(v6, v261);
            v766 = v498;
            *(a1 + 976) = v499 != 0;
            if (!v498)
            {
              return 0;
            }
          }

          else
          {
            v262 = (v6 + 2);
LABEL_434:
            v766 = v262;
            *(a1 + 976) = v261 != 0;
          }

          goto LABEL_1306;
        case 0x93u:
          if (v7 != 154)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x200u;
          v544 = *(a1 + 632);
          if (v544)
          {
            goto LABEL_1304;
          }

          v669 = *(a1 + 8);
          if (v669)
          {
            v669 = *(v669 & 0xFFFFFFFFFFFFFFFELL);
          }

          v670 = MEMORY[0x277C8F130](v669);
          LODWORD(v544) = v670;
          *(a1 + 632) = v670;
          goto LABEL_1303;
        case 0x94u:
          if (v7 != 160)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x100000u;
          v241 = (v6 + 1);
          v240 = *v6;
          if ((v240 & 0x8000000000000000) == 0)
          {
            goto LABEL_399;
          }

          v242 = *v241;
          v240 = (v242 << 7) + v240 - 128;
          if (v242 < 0)
          {
            v484 = google::protobuf::internal::VarintParseSlow64(v6, v240);
            v766 = v484;
            *(a1 + 977) = v485 != 0;
            if (!v484)
            {
              return 0;
            }
          }

          else
          {
            v241 = (v6 + 2);
LABEL_399:
            v766 = v241;
            *(a1 + 977) = v240 != 0;
          }

          goto LABEL_1306;
        case 0x95u:
          if (v7 != 170)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x400u;
          v544 = *(a1 + 640);
          if (v544)
          {
            goto LABEL_1304;
          }

          v733 = *(a1 + 8);
          if (v733)
          {
            v733 = *(v733 & 0xFFFFFFFFFFFFFFFELL);
          }

          v734 = MEMORY[0x277C8F130](v733);
          LODWORD(v544) = v734;
          *(a1 + 640) = v734;
          goto LABEL_1303;
        case 0x96u:
          if (v7 != 176)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x200000u;
          v253 = (v6 + 1);
          v252 = *v6;
          if ((v252 & 0x8000000000000000) == 0)
          {
            goto LABEL_419;
          }

          v254 = *v253;
          v252 = (v254 << 7) + v252 - 128;
          if (v254 < 0)
          {
            v492 = google::protobuf::internal::VarintParseSlow64(v6, v252);
            v766 = v492;
            *(a1 + 978) = v493 != 0;
            if (!v492)
            {
              return 0;
            }
          }

          else
          {
            v253 = (v6 + 2);
LABEL_419:
            v766 = v253;
            *(a1 + 978) = v252 != 0;
          }

          goto LABEL_1306;
        case 0x97u:
          if (v7 != 186)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x800u;
          v544 = *(a1 + 648);
          if (v544)
          {
            goto LABEL_1304;
          }

          v572 = *(a1 + 8);
          if (v572)
          {
            v572 = *(v572 & 0xFFFFFFFFFFFFFFFELL);
          }

          v573 = MEMORY[0x277C8F130](v572);
          LODWORD(v544) = v573;
          *(a1 + 648) = v573;
          goto LABEL_1303;
        case 0x98u:
          if (v7 != 192)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x400000u;
          v220 = (v6 + 1);
          v219 = *v6;
          if ((v219 & 0x8000000000000000) == 0)
          {
            goto LABEL_364;
          }

          v221 = *v220;
          v219 = (v221 << 7) + v219 - 128;
          if (v221 < 0)
          {
            v470 = google::protobuf::internal::VarintParseSlow64(v6, v219);
            v766 = v470;
            *(a1 + 979) = v471 != 0;
            if (!v470)
            {
              return 0;
            }
          }

          else
          {
            v220 = (v6 + 2);
LABEL_364:
            v766 = v220;
            *(a1 + 979) = v219 != 0;
          }

          goto LABEL_1306;
        case 0x99u:
          if (v7 != 202)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x1000u;
          v544 = *(a1 + 656);
          if (v544)
          {
            goto LABEL_1304;
          }

          v689 = *(a1 + 8);
          if (v689)
          {
            v689 = *(v689 & 0xFFFFFFFFFFFFFFFELL);
          }

          v690 = MEMORY[0x277C8F130](v689);
          LODWORD(v544) = v690;
          *(a1 + 656) = v690;
          goto LABEL_1303;
        case 0x9Au:
          if (v7 != 208)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x800000u;
          v247 = (v6 + 1);
          v246 = *v6;
          if ((v246 & 0x8000000000000000) == 0)
          {
            goto LABEL_409;
          }

          v248 = *v247;
          v246 = (v248 << 7) + v246 - 128;
          if (v248 < 0)
          {
            v488 = google::protobuf::internal::VarintParseSlow64(v6, v246);
            v766 = v488;
            *(a1 + 980) = v489 != 0;
            if (!v488)
            {
              return 0;
            }
          }

          else
          {
            v247 = (v6 + 2);
LABEL_409:
            v766 = v247;
            *(a1 + 980) = v246 != 0;
          }

          goto LABEL_1306;
        case 0x9Bu:
          if (v7 != 218)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x2000u;
          v544 = *(a1 + 664);
          if (v544)
          {
            goto LABEL_1304;
          }

          v647 = *(a1 + 8);
          if (v647)
          {
            v647 = *(v647 & 0xFFFFFFFFFFFFFFFELL);
          }

          v648 = MEMORY[0x277C8F130](v647);
          LODWORD(v544) = v648;
          *(a1 + 664) = v648;
          goto LABEL_1303;
        case 0x9Cu:
          if (v7 != 224)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x1000000u;
          v217 = (v6 + 1);
          v216 = *v6;
          if ((v216 & 0x8000000000000000) == 0)
          {
            goto LABEL_359;
          }

          v218 = *v217;
          v216 = (v218 << 7) + v216 - 128;
          if (v218 < 0)
          {
            v468 = google::protobuf::internal::VarintParseSlow64(v6, v216);
            v766 = v468;
            *(a1 + 981) = v469 != 0;
            if (!v468)
            {
              return 0;
            }
          }

          else
          {
            v217 = (v6 + 2);
LABEL_359:
            v766 = v217;
            *(a1 + 981) = v216 != 0;
          }

          goto LABEL_1306;
        case 0x9Du:
          if (v7 != 234)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x4000u;
          v636 = *(a1 + 672);
          if (v636)
          {
            goto LABEL_1191;
          }

          v721 = *(a1 + 8);
          if (v721)
          {
            v721 = *(v721 & 0xFFFFFFFFFFFFFFFELL);
          }

          v722 = MEMORY[0x277C8F110](v721);
          LODWORD(v636) = v722;
          *(a1 + 672) = v722;
          goto LABEL_1190;
        case 0x9Eu:
          if (v7 != 240)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x2000000u;
          v175 = (v6 + 1);
          v174 = *v6;
          if ((v174 & 0x8000000000000000) == 0)
          {
            goto LABEL_289;
          }

          v176 = *v175;
          v174 = (v176 << 7) + v174 - 128;
          if (v176 < 0)
          {
            v440 = google::protobuf::internal::VarintParseSlow64(v6, v174);
            v766 = v440;
            *(a1 + 982) = v441 != 0;
            if (!v440)
            {
              return 0;
            }
          }

          else
          {
            v175 = (v6 + 2);
LABEL_289:
            v766 = v175;
            *(a1 + 982) = v174 != 0;
          }

          goto LABEL_1306;
        case 0x9Fu:
          if (v7 != 250)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x8000u;
          v636 = *(a1 + 680);
          if (v636)
          {
            goto LABEL_1191;
          }

          v643 = *(a1 + 8);
          if (v643)
          {
            v643 = *(v643 & 0xFFFFFFFFFFFFFFFELL);
          }

          v644 = MEMORY[0x277C8F110](v643);
          LODWORD(v636) = v644;
          *(a1 + 680) = v644;
          goto LABEL_1190;
        case 0xA0u:
          if (v7)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x4000000u;
          v91 = (v6 + 1);
          v90 = *v6;
          if ((v90 & 0x8000000000000000) == 0)
          {
            goto LABEL_149;
          }

          v92 = *v91;
          v90 = (v92 << 7) + v90 - 128;
          if (v92 < 0)
          {
            v384 = google::protobuf::internal::VarintParseSlow64(v6, v90);
            v766 = v384;
            *(a1 + 983) = v385 != 0;
            if (!v384)
            {
              return 0;
            }
          }

          else
          {
            v91 = (v6 + 2);
LABEL_149:
            v766 = v91;
            *(a1 + 983) = v90 != 0;
          }

          goto LABEL_1306;
        case 0xA1u:
          if (v7 != 10)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x10000u;
          v636 = *(a1 + 688);
          if (v636)
          {
            goto LABEL_1191;
          }

          v685 = *(a1 + 8);
          if (v685)
          {
            v685 = *(v685 & 0xFFFFFFFFFFFFFFFELL);
          }

          v686 = MEMORY[0x277C8F110](v685);
          LODWORD(v636) = v686;
          *(a1 + 688) = v686;
          goto LABEL_1190;
        case 0xA2u:
          if (v7 != 16)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x8000000u;
          v226 = (v6 + 1);
          v225 = *v6;
          if ((v225 & 0x8000000000000000) == 0)
          {
            goto LABEL_374;
          }

          v227 = *v226;
          v225 = (v227 << 7) + v225 - 128;
          if (v227 < 0)
          {
            v474 = google::protobuf::internal::VarintParseSlow64(v6, v225);
            v766 = v474;
            *(a1 + 984) = v475 != 0;
            if (!v474)
            {
              return 0;
            }
          }

          else
          {
            v226 = (v6 + 2);
LABEL_374:
            v766 = v226;
            *(a1 + 984) = v225 != 0;
          }

          goto LABEL_1306;
        case 0xA3u:
          if (v7 != 26)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x20000u;
          v576 = *(a1 + 696);
          if (v576)
          {
            goto LABEL_1198;
          }

          v715 = *(a1 + 8);
          if (v715)
          {
            v715 = *(v715 & 0xFFFFFFFFFFFFFFFELL);
          }

          v716 = MEMORY[0x277C8F150](v715);
          LODWORD(v576) = v716;
          *(a1 + 696) = v716;
          goto LABEL_1197;
        case 0xA4u:
          if (v7 != 32)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x10000000u;
          v82 = (v6 + 1);
          v81 = *v6;
          if ((v81 & 0x8000000000000000) == 0)
          {
            goto LABEL_134;
          }

          v83 = *v82;
          v81 = (v83 << 7) + v81 - 128;
          if (v83 < 0)
          {
            v378 = google::protobuf::internal::VarintParseSlow64(v6, v81);
            v766 = v378;
            *(a1 + 985) = v379 != 0;
            if (!v378)
            {
              return 0;
            }
          }

          else
          {
            v82 = (v6 + 2);
LABEL_134:
            v766 = v82;
            *(a1 + 985) = v81 != 0;
          }

          goto LABEL_1306;
        case 0xA5u:
          if (v7 != 42)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x40000u;
          v636 = *(a1 + 704);
          if (v636)
          {
            goto LABEL_1191;
          }

          v707 = *(a1 + 8);
          if (v707)
          {
            v707 = *(v707 & 0xFFFFFFFFFFFFFFFELL);
          }

          v708 = MEMORY[0x277C8F110](v707);
          LODWORD(v636) = v708;
          *(a1 + 704) = v708;
          goto LABEL_1190;
        case 0xA6u:
          if (v7 != 48)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x20000000u;
          v133 = (v6 + 1);
          v132 = *v6;
          if ((v132 & 0x8000000000000000) == 0)
          {
            goto LABEL_219;
          }

          v134 = *v133;
          v132 = (v134 << 7) + v132 - 128;
          if (v134 < 0)
          {
            v412 = google::protobuf::internal::VarintParseSlow64(v6, v132);
            v766 = v412;
            *(a1 + 986) = v413 != 0;
            if (!v412)
            {
              return 0;
            }
          }

          else
          {
            v133 = (v6 + 2);
LABEL_219:
            v766 = v133;
            *(a1 + 986) = v132 != 0;
          }

          goto LABEL_1306;
        case 0xA7u:
          if (v7 != 58)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x80000u;
          v636 = *(a1 + 712);
          if (v636)
          {
            goto LABEL_1191;
          }

          v637 = *(a1 + 8);
          if (v637)
          {
            v637 = *(v637 & 0xFFFFFFFFFFFFFFFELL);
          }

          v638 = MEMORY[0x277C8F110](v637);
          LODWORD(v636) = v638;
          *(a1 + 712) = v638;
LABEL_1190:
          v6 = v766;
LABEL_1191:
          v658 = sub_275E60D54(a3, v636, v6);
          goto LABEL_1305;
        case 0xA8u:
          if (v7 != 64)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x40000000u;
          v223 = (v6 + 1);
          v222 = *v6;
          if ((v222 & 0x8000000000000000) == 0)
          {
            goto LABEL_369;
          }

          v224 = *v223;
          v222 = (v224 << 7) + v222 - 128;
          if (v224 < 0)
          {
            v472 = google::protobuf::internal::VarintParseSlow64(v6, v222);
            v766 = v472;
            *(a1 + 987) = v473 != 0;
            if (!v472)
            {
              return 0;
            }
          }

          else
          {
            v223 = (v6 + 2);
LABEL_369:
            v766 = v223;
            *(a1 + 987) = v222 != 0;
          }

          goto LABEL_1306;
        case 0xA9u:
          if (v7 != 74)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x100000u;
          v544 = *(a1 + 720);
          if (v544)
          {
            goto LABEL_1304;
          }

          v695 = *(a1 + 8);
          if (v695)
          {
            v695 = *(v695 & 0xFFFFFFFFFFFFFFFELL);
          }

          v696 = MEMORY[0x277C8F130](v695);
          LODWORD(v544) = v696;
          *(a1 + 720) = v696;
          goto LABEL_1303;
        case 0xAAu:
          if (v7 != 80)
          {
            goto LABEL_1308;
          }

          *(a1 + 36) |= 0x80000000;
          v118 = (v6 + 1);
          v117 = *v6;
          if ((v117 & 0x8000000000000000) == 0)
          {
            goto LABEL_194;
          }

          v119 = *v118;
          v117 = (v119 << 7) + v117 - 128;
          if (v119 < 0)
          {
            v402 = google::protobuf::internal::VarintParseSlow64(v6, v117);
            v766 = v402;
            *(a1 + 988) = v403 != 0;
            if (!v402)
            {
              return 0;
            }
          }

          else
          {
            v118 = (v6 + 2);
LABEL_194:
            v766 = v118;
            *(a1 + 988) = v117 != 0;
          }

          goto LABEL_1306;
        case 0xABu:
          if (v7 != 90)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x200000u;
          v544 = *(a1 + 728);
          if (v544)
          {
            goto LABEL_1304;
          }

          v697 = *(a1 + 8);
          if (v697)
          {
            v697 = *(v697 & 0xFFFFFFFFFFFFFFFELL);
          }

          v698 = MEMORY[0x277C8F130](v697);
          LODWORD(v544) = v698;
          *(a1 + 728) = v698;
          goto LABEL_1303;
        case 0xACu:
          if (v7 != 96)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 1u;
          v103 = (v6 + 1);
          v102 = *v6;
          if ((v102 & 0x8000000000000000) == 0)
          {
            goto LABEL_169;
          }

          v104 = *v103;
          v102 = (v104 << 7) + v102 - 128;
          if (v104 < 0)
          {
            v392 = google::protobuf::internal::VarintParseSlow64(v6, v102);
            v766 = v392;
            *(a1 + 989) = v393 != 0;
            if (!v392)
            {
              return 0;
            }
          }

          else
          {
            v103 = (v6 + 2);
LABEL_169:
            v766 = v103;
            *(a1 + 989) = v102 != 0;
          }

          goto LABEL_1306;
        case 0xADu:
          if (v7 != 106)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x400000u;
          v544 = *(a1 + 736);
          if (v544)
          {
            goto LABEL_1304;
          }

          v630 = *(a1 + 8);
          if (v630)
          {
            v630 = *(v630 & 0xFFFFFFFFFFFFFFFELL);
          }

          v631 = MEMORY[0x277C8F130](v630);
          LODWORD(v544) = v631;
          *(a1 + 736) = v631;
          goto LABEL_1303;
        case 0xAEu:
          if (v7 != 112)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 2u;
          v160 = (v6 + 1);
          v159 = *v6;
          if ((v159 & 0x8000000000000000) == 0)
          {
            goto LABEL_264;
          }

          v161 = *v160;
          v159 = (v161 << 7) + v159 - 128;
          if (v161 < 0)
          {
            v430 = google::protobuf::internal::VarintParseSlow64(v6, v159);
            v766 = v430;
            *(a1 + 990) = v431 != 0;
            if (!v430)
            {
              return 0;
            }
          }

          else
          {
            v160 = (v6 + 2);
LABEL_264:
            v766 = v160;
            *(a1 + 990) = v159 != 0;
          }

          goto LABEL_1306;
        case 0xAFu:
          if (v7 != 122)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x800000u;
          v544 = *(a1 + 744);
          if (v544)
          {
            goto LABEL_1304;
          }

          v634 = *(a1 + 8);
          if (v634)
          {
            v634 = *(v634 & 0xFFFFFFFFFFFFFFFELL);
          }

          v635 = MEMORY[0x277C8F130](v634);
          LODWORD(v544) = v635;
          *(a1 + 744) = v635;
          goto LABEL_1303;
        case 0xB0u:
          if (v7 != 128)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 4u;
          v169 = (v6 + 1);
          v168 = *v6;
          if ((v168 & 0x8000000000000000) == 0)
          {
            goto LABEL_279;
          }

          v170 = *v169;
          v168 = (v170 << 7) + v168 - 128;
          if (v170 < 0)
          {
            v436 = google::protobuf::internal::VarintParseSlow64(v6, v168);
            v766 = v436;
            *(a1 + 991) = v437 != 0;
            if (!v436)
            {
              return 0;
            }
          }

          else
          {
            v169 = (v6 + 2);
LABEL_279:
            v766 = v169;
            *(a1 + 991) = v168 != 0;
          }

          goto LABEL_1306;
        case 0xB1u:
          if (v7 != 138)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x1000000u;
          v544 = *(a1 + 752);
          if (v544)
          {
            goto LABEL_1304;
          }

          v711 = *(a1 + 8);
          if (v711)
          {
            v711 = *(v711 & 0xFFFFFFFFFFFFFFFELL);
          }

          v712 = MEMORY[0x277C8F130](v711);
          LODWORD(v544) = v712;
          *(a1 + 752) = v712;
          goto LABEL_1303;
        case 0xB2u:
          if (v7 != 144)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 8u;
          v112 = (v6 + 1);
          v111 = *v6;
          if ((v111 & 0x8000000000000000) == 0)
          {
            goto LABEL_184;
          }

          v113 = *v112;
          v111 = (v113 << 7) + v111 - 128;
          if (v113 < 0)
          {
            v398 = google::protobuf::internal::VarintParseSlow64(v6, v111);
            v766 = v398;
            *(a1 + 992) = v399 != 0;
            if (!v398)
            {
              return 0;
            }
          }

          else
          {
            v112 = (v6 + 2);
LABEL_184:
            v766 = v112;
            *(a1 + 992) = v111 != 0;
          }

          goto LABEL_1306;
        case 0xB3u:
          if (v7 != 154)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x2000000u;
          v544 = *(a1 + 760);
          if (v544)
          {
            goto LABEL_1304;
          }

          v596 = *(a1 + 8);
          if (v596)
          {
            v596 = *(v596 & 0xFFFFFFFFFFFFFFFELL);
          }

          v597 = MEMORY[0x277C8F130](v596);
          LODWORD(v544) = v597;
          *(a1 + 760) = v597;
          goto LABEL_1303;
        case 0xB4u:
          if (v7 != 160)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x10u;
          v178 = (v6 + 1);
          v177 = *v6;
          if ((v177 & 0x8000000000000000) == 0)
          {
            goto LABEL_294;
          }

          v179 = *v178;
          v177 = (v179 << 7) + v177 - 128;
          if (v179 < 0)
          {
            v442 = google::protobuf::internal::VarintParseSlow64(v6, v177);
            v766 = v442;
            *(a1 + 993) = v443 != 0;
            if (!v442)
            {
              return 0;
            }
          }

          else
          {
            v178 = (v6 + 2);
LABEL_294:
            v766 = v178;
            *(a1 + 993) = v177 != 0;
          }

          goto LABEL_1306;
        case 0xB5u:
          if (v7 != 170)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x4000000u;
          v593 = *(a1 + 768);
          if (v593)
          {
            goto LABEL_1285;
          }

          v645 = *(a1 + 8);
          if (v645)
          {
            v645 = *(v645 & 0xFFFFFFFFFFFFFFFELL);
          }

          v646 = MEMORY[0x277C8F120](v645);
          LODWORD(v593) = v646;
          *(a1 + 768) = v646;
LABEL_1284:
          v6 = v766;
LABEL_1285:
          v658 = sub_275E60E24(a3, v593, v6);
          goto LABEL_1305;
        case 0xB6u:
          if (v7 != 176)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x20u;
          v202 = (v6 + 1);
          v201 = *v6;
          if ((v201 & 0x8000000000000000) == 0)
          {
            goto LABEL_334;
          }

          v203 = *v202;
          v201 = (v203 << 7) + v201 - 128;
          if (v203 < 0)
          {
            v458 = google::protobuf::internal::VarintParseSlow64(v6, v201);
            v766 = v458;
            *(a1 + 994) = v459 != 0;
            if (!v458)
            {
              return 0;
            }
          }

          else
          {
            v202 = (v6 + 2);
LABEL_334:
            v766 = v202;
            *(a1 + 994) = v201 != 0;
          }

          goto LABEL_1306;
        case 0xB7u:
          if (v7 != 186)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x8000000u;
          v544 = *(a1 + 776);
          if (v544)
          {
            goto LABEL_1304;
          }

          v639 = *(a1 + 8);
          if (v639)
          {
            v639 = *(v639 & 0xFFFFFFFFFFFFFFFELL);
          }

          v640 = MEMORY[0x277C8F130](v639);
          LODWORD(v544) = v640;
          *(a1 + 776) = v640;
          goto LABEL_1303;
        case 0xB8u:
          if (v7 != 192)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x40u;
          v190 = (v6 + 1);
          v189 = *v6;
          if ((v189 & 0x8000000000000000) == 0)
          {
            goto LABEL_314;
          }

          v191 = *v190;
          v189 = (v191 << 7) + v189 - 128;
          if (v191 < 0)
          {
            v450 = google::protobuf::internal::VarintParseSlow64(v6, v189);
            v766 = v450;
            *(a1 + 995) = v451 != 0;
            if (!v450)
            {
              return 0;
            }
          }

          else
          {
            v190 = (v6 + 2);
LABEL_314:
            v766 = v190;
            *(a1 + 995) = v189 != 0;
          }

          goto LABEL_1306;
        case 0xB9u:
          if (v7 != 202)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x10000000u;
          v544 = *(a1 + 784);
          if (v544)
          {
            goto LABEL_1304;
          }

          v632 = *(a1 + 8);
          if (v632)
          {
            v632 = *(v632 & 0xFFFFFFFFFFFFFFFELL);
          }

          v633 = MEMORY[0x277C8F130](v632);
          LODWORD(v544) = v633;
          *(a1 + 784) = v633;
          goto LABEL_1303;
        case 0xBAu:
          if (v7 != 208)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x80u;
          v208 = (v6 + 1);
          v207 = *v6;
          if ((v207 & 0x8000000000000000) == 0)
          {
            goto LABEL_344;
          }

          v209 = *v208;
          v207 = (v209 << 7) + v207 - 128;
          if (v209 < 0)
          {
            v462 = google::protobuf::internal::VarintParseSlow64(v6, v207);
            v766 = v462;
            *(a1 + 996) = v463 != 0;
            if (!v462)
            {
              return 0;
            }
          }

          else
          {
            v208 = (v6 + 2);
LABEL_344:
            v766 = v208;
            *(a1 + 996) = v207 != 0;
          }

          goto LABEL_1306;
        case 0xBBu:
          if (v7 != 218)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x20000000u;
          v544 = *(a1 + 792);
          if (v544)
          {
            goto LABEL_1304;
          }

          v628 = *(a1 + 8);
          if (v628)
          {
            v628 = *(v628 & 0xFFFFFFFFFFFFFFFELL);
          }

          v629 = MEMORY[0x277C8F130](v628);
          LODWORD(v544) = v629;
          *(a1 + 792) = v629;
          goto LABEL_1303;
        case 0xBCu:
          if (v7 != 224)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x100u;
          v145 = (v6 + 1);
          v144 = *v6;
          if ((v144 & 0x8000000000000000) == 0)
          {
            goto LABEL_239;
          }

          v146 = *v145;
          v144 = (v146 << 7) + v144 - 128;
          if (v146 < 0)
          {
            v420 = google::protobuf::internal::VarintParseSlow64(v6, v144);
            v766 = v420;
            *(a1 + 997) = v421 != 0;
            if (!v420)
            {
              return 0;
            }
          }

          else
          {
            v145 = (v6 + 2);
LABEL_239:
            v766 = v145;
            *(a1 + 997) = v144 != 0;
          }

          goto LABEL_1306;
        case 0xBDu:
          if (v7 != 234)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x40000000u;
          v544 = *(a1 + 800);
          if (v544)
          {
            goto LABEL_1304;
          }

          v604 = *(a1 + 8);
          if (v604)
          {
            v604 = *(v604 & 0xFFFFFFFFFFFFFFFELL);
          }

          v605 = MEMORY[0x277C8F130](v604);
          LODWORD(v544) = v605;
          *(a1 + 800) = v605;
          goto LABEL_1303;
        case 0xBEu:
          if (v7 != 240)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x200u;
          v142 = (v6 + 1);
          v141 = *v6;
          if ((v141 & 0x8000000000000000) == 0)
          {
            goto LABEL_234;
          }

          v143 = *v142;
          v141 = (v143 << 7) + v141 - 128;
          if (v143 < 0)
          {
            v418 = google::protobuf::internal::VarintParseSlow64(v6, v141);
            v766 = v418;
            *(a1 + 998) = v419 != 0;
            if (!v418)
            {
              return 0;
            }
          }

          else
          {
            v142 = (v6 + 2);
LABEL_234:
            v766 = v142;
            *(a1 + 998) = v141 != 0;
          }

          goto LABEL_1306;
        case 0xBFu:
          if (v7 != 250)
          {
            goto LABEL_1308;
          }

          *(a1 + 24) |= 0x80000000;
          v544 = *(a1 + 808);
          if (v544)
          {
            goto LABEL_1304;
          }

          v641 = *(a1 + 8);
          if (v641)
          {
            v641 = *(v641 & 0xFFFFFFFFFFFFFFFELL);
          }

          v642 = MEMORY[0x277C8F130](v641);
          LODWORD(v544) = v642;
          *(a1 + 808) = v642;
          goto LABEL_1303;
        case 0xC0u:
          if (v7)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x400u;
          v193 = (v6 + 1);
          v192 = *v6;
          if ((v192 & 0x8000000000000000) == 0)
          {
            goto LABEL_319;
          }

          v194 = *v193;
          v192 = (v194 << 7) + v192 - 128;
          if (v194 < 0)
          {
            v452 = google::protobuf::internal::VarintParseSlow64(v6, v192);
            v766 = v452;
            *(a1 + 999) = v453 != 0;
            if (!v452)
            {
              return 0;
            }
          }

          else
          {
            v193 = (v6 + 2);
LABEL_319:
            v766 = v193;
            *(a1 + 999) = v192 != 0;
          }

          goto LABEL_1306;
        case 0xC1u:
          if (v7 != 10)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 1u;
          v576 = *(a1 + 816);
          if (v576)
          {
            goto LABEL_1198;
          }

          v699 = *(a1 + 8);
          if (v699)
          {
            v699 = *(v699 & 0xFFFFFFFFFFFFFFFELL);
          }

          v700 = MEMORY[0x277C8F150](v699);
          LODWORD(v576) = v700;
          *(a1 + 816) = v700;
          goto LABEL_1197;
        case 0xC2u:
          if (v7 != 16)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x800u;
          v187 = (v6 + 1);
          v186 = *v6;
          if ((v186 & 0x8000000000000000) == 0)
          {
            goto LABEL_309;
          }

          v188 = *v187;
          v186 = (v188 << 7) + v186 - 128;
          if (v188 < 0)
          {
            v448 = google::protobuf::internal::VarintParseSlow64(v6, v186);
            v766 = v448;
            *(a1 + 1000) = v449 != 0;
            if (!v448)
            {
              return 0;
            }
          }

          else
          {
            v187 = (v6 + 2);
LABEL_309:
            v766 = v187;
            *(a1 + 1000) = v186 != 0;
          }

          goto LABEL_1306;
        case 0xC3u:
          if (v7 != 26)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 2u;
          v544 = *(a1 + 824);
          if (v544)
          {
            goto LABEL_1304;
          }

          v624 = *(a1 + 8);
          if (v624)
          {
            v624 = *(v624 & 0xFFFFFFFFFFFFFFFELL);
          }

          v625 = MEMORY[0x277C8F130](v624);
          LODWORD(v544) = v625;
          *(a1 + 824) = v625;
          goto LABEL_1303;
        case 0xC4u:
          if (v7 != 32)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x1000u;
          v163 = (v6 + 1);
          v162 = *v6;
          if ((v162 & 0x8000000000000000) == 0)
          {
            goto LABEL_269;
          }

          v164 = *v163;
          v162 = (v164 << 7) + v162 - 128;
          if (v164 < 0)
          {
            v432 = google::protobuf::internal::VarintParseSlow64(v6, v162);
            v766 = v432;
            *(a1 + 1001) = v433 != 0;
            if (!v432)
            {
              return 0;
            }
          }

          else
          {
            v163 = (v6 + 2);
LABEL_269:
            v766 = v163;
            *(a1 + 1001) = v162 != 0;
          }

          goto LABEL_1306;
        case 0xC5u:
          if (v7 != 42)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 4u;
          v544 = *(a1 + 832);
          if (v544)
          {
            goto LABEL_1304;
          }

          v683 = *(a1 + 8);
          if (v683)
          {
            v683 = *(v683 & 0xFFFFFFFFFFFFFFFELL);
          }

          v684 = MEMORY[0x277C8F130](v683);
          LODWORD(v544) = v684;
          *(a1 + 832) = v684;
          goto LABEL_1303;
        case 0xC6u:
          if (v7 != 48)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x2000u;
          v181 = (v6 + 1);
          v180 = *v6;
          if ((v180 & 0x8000000000000000) == 0)
          {
            goto LABEL_299;
          }

          v182 = *v181;
          v180 = (v182 << 7) + v180 - 128;
          if (v182 < 0)
          {
            v444 = google::protobuf::internal::VarintParseSlow64(v6, v180);
            v766 = v444;
            *(a1 + 1002) = v445 != 0;
            if (!v444)
            {
              return 0;
            }
          }

          else
          {
            v181 = (v6 + 2);
LABEL_299:
            v766 = v181;
            *(a1 + 1002) = v180 != 0;
          }

          goto LABEL_1306;
        case 0xC7u:
          if (v7 != 58)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 8u;
          v544 = *(a1 + 840);
          if (v544)
          {
            goto LABEL_1304;
          }

          v614 = *(a1 + 8);
          if (v614)
          {
            v614 = *(v614 & 0xFFFFFFFFFFFFFFFELL);
          }

          v615 = MEMORY[0x277C8F130](v614);
          LODWORD(v544) = v615;
          *(a1 + 840) = v615;
          goto LABEL_1303;
        case 0xC8u:
          if (v7 != 64)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x4000u;
          v136 = (v6 + 1);
          v135 = *v6;
          if ((v135 & 0x8000000000000000) == 0)
          {
            goto LABEL_224;
          }

          v137 = *v136;
          v135 = (v137 << 7) + v135 - 128;
          if (v137 < 0)
          {
            v414 = google::protobuf::internal::VarintParseSlow64(v6, v135);
            v766 = v414;
            *(a1 + 1003) = v415 != 0;
            if (!v414)
            {
              return 0;
            }
          }

          else
          {
            v136 = (v6 + 2);
LABEL_224:
            v766 = v136;
            *(a1 + 1003) = v135 != 0;
          }

          goto LABEL_1306;
        case 0xC9u:
          if (v7 != 74)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x10u;
          v544 = *(a1 + 848);
          if (v544)
          {
            goto LABEL_1304;
          }

          v618 = *(a1 + 8);
          if (v618)
          {
            v618 = *(v618 & 0xFFFFFFFFFFFFFFFELL);
          }

          v619 = MEMORY[0x277C8F130](v618);
          LODWORD(v544) = v619;
          *(a1 + 848) = v619;
          goto LABEL_1303;
        case 0xCAu:
          if (v7 != 80)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x8000u;
          v127 = (v6 + 1);
          v126 = *v6;
          if ((v126 & 0x8000000000000000) == 0)
          {
            goto LABEL_209;
          }

          v128 = *v127;
          v126 = (v128 << 7) + v126 - 128;
          if (v128 < 0)
          {
            v408 = google::protobuf::internal::VarintParseSlow64(v6, v126);
            v766 = v408;
            *(a1 + 1004) = v409 != 0;
            if (!v408)
            {
              return 0;
            }
          }

          else
          {
            v127 = (v6 + 2);
LABEL_209:
            v766 = v127;
            *(a1 + 1004) = v126 != 0;
          }

          goto LABEL_1306;
        case 0xCBu:
          if (v7 != 90)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x20u;
          v544 = *(a1 + 856);
          if (v544)
          {
            goto LABEL_1304;
          }

          v626 = *(a1 + 8);
          if (v626)
          {
            v626 = *(v626 & 0xFFFFFFFFFFFFFFFELL);
          }

          v627 = MEMORY[0x277C8F130](v626);
          LODWORD(v544) = v627;
          *(a1 + 856) = v627;
          goto LABEL_1303;
        case 0xCCu:
          if (v7 != 96)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x10000u;
          v196 = (v6 + 1);
          v195 = *v6;
          if ((v195 & 0x8000000000000000) == 0)
          {
            goto LABEL_324;
          }

          v197 = *v196;
          v195 = (v197 << 7) + v195 - 128;
          if (v197 < 0)
          {
            v454 = google::protobuf::internal::VarintParseSlow64(v6, v195);
            v766 = v454;
            *(a1 + 1005) = v455 != 0;
            if (!v454)
            {
              return 0;
            }
          }

          else
          {
            v196 = (v6 + 2);
LABEL_324:
            v766 = v196;
            *(a1 + 1005) = v195 != 0;
          }

          goto LABEL_1306;
        case 0xCDu:
          if (v7 != 106)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x40u;
          v544 = *(a1 + 864);
          if (v544)
          {
            goto LABEL_1304;
          }

          v616 = *(a1 + 8);
          if (v616)
          {
            v616 = *(v616 & 0xFFFFFFFFFFFFFFFELL);
          }

          v617 = MEMORY[0x277C8F130](v616);
          LODWORD(v544) = v617;
          *(a1 + 864) = v617;
          goto LABEL_1303;
        case 0xCEu:
          if (v7 != 112)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x20000u;
          v151 = (v6 + 1);
          v150 = *v6;
          if ((v150 & 0x8000000000000000) == 0)
          {
            goto LABEL_249;
          }

          v152 = *v151;
          v150 = (v152 << 7) + v150 - 128;
          if (v152 < 0)
          {
            v424 = google::protobuf::internal::VarintParseSlow64(v6, v150);
            v766 = v424;
            *(a1 + 1006) = v425 != 0;
            if (!v424)
            {
              return 0;
            }
          }

          else
          {
            v151 = (v6 + 2);
LABEL_249:
            v766 = v151;
            *(a1 + 1006) = v150 != 0;
          }

          goto LABEL_1306;
        case 0xCFu:
          if (v7 != 122)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x80u;
          v544 = *(a1 + 872);
          if (v544)
          {
            goto LABEL_1304;
          }

          v620 = *(a1 + 8);
          if (v620)
          {
            v620 = *(v620 & 0xFFFFFFFFFFFFFFFELL);
          }

          v621 = MEMORY[0x277C8F130](v620);
          LODWORD(v544) = v621;
          *(a1 + 872) = v621;
          goto LABEL_1303;
        case 0xD0u:
          if (v7 != 128)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x40000u;
          v157 = (v6 + 1);
          v156 = *v6;
          if ((v156 & 0x8000000000000000) == 0)
          {
            goto LABEL_259;
          }

          v158 = *v157;
          v156 = (v158 << 7) + v156 - 128;
          if (v158 < 0)
          {
            v428 = google::protobuf::internal::VarintParseSlow64(v6, v156);
            v766 = v428;
            *(a1 + 1007) = v429 != 0;
            if (!v428)
            {
              return 0;
            }
          }

          else
          {
            v157 = (v6 + 2);
LABEL_259:
            v766 = v157;
            *(a1 + 1007) = v156 != 0;
          }

          goto LABEL_1306;
        case 0xD1u:
          if (v7 != 138)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x100u;
          v544 = *(a1 + 880);
          if (v544)
          {
            goto LABEL_1304;
          }

          v622 = *(a1 + 8);
          if (v622)
          {
            v622 = *(v622 & 0xFFFFFFFFFFFFFFFELL);
          }

          v623 = MEMORY[0x277C8F130](v622);
          LODWORD(v544) = v623;
          *(a1 + 880) = v623;
          goto LABEL_1303;
        case 0xD2u:
          if (v7 != 144)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x80000u;
          v184 = (v6 + 1);
          v183 = *v6;
          if ((v183 & 0x8000000000000000) == 0)
          {
            goto LABEL_304;
          }

          v185 = *v184;
          v183 = (v185 << 7) + v183 - 128;
          if (v185 < 0)
          {
            v446 = google::protobuf::internal::VarintParseSlow64(v6, v183);
            v766 = v446;
            *(a1 + 1008) = v447 != 0;
            if (!v446)
            {
              return 0;
            }
          }

          else
          {
            v184 = (v6 + 2);
LABEL_304:
            v766 = v184;
            *(a1 + 1008) = v183 != 0;
          }

          goto LABEL_1306;
        case 0xD3u:
          if (v7 != 154)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x200u;
          v544 = *(a1 + 888);
          if (v544)
          {
            goto LABEL_1304;
          }

          v612 = *(a1 + 8);
          if (v612)
          {
            v612 = *(v612 & 0xFFFFFFFFFFFFFFFELL);
          }

          v613 = MEMORY[0x277C8F130](v612);
          LODWORD(v544) = v613;
          *(a1 + 888) = v613;
LABEL_1303:
          v6 = v766;
LABEL_1304:
          v658 = sub_275E60C84(a3, v544, v6);
          goto LABEL_1305;
        case 0xD4u:
          if (v7 != 160)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x100000u;
          v148 = (v6 + 1);
          v147 = *v6;
          if ((v147 & 0x8000000000000000) == 0)
          {
            goto LABEL_244;
          }

          v149 = *v148;
          v147 = (v149 << 7) + v147 - 128;
          if (v149 < 0)
          {
            v422 = google::protobuf::internal::VarintParseSlow64(v6, v147);
            v766 = v422;
            *(a1 + 1009) = v423 != 0;
            if (!v422)
            {
              return 0;
            }
          }

          else
          {
            v148 = (v6 + 2);
LABEL_244:
            v766 = v148;
            *(a1 + 1009) = v147 != 0;
          }

          goto LABEL_1306;
        case 0xD5u:
          if (v7 != 170)
          {
            goto LABEL_1308;
          }

          *(a1 + 28) |= 0x400u;
          v576 = *(a1 + 896);
          if (v576)
          {
            goto LABEL_1198;
          }

          v610 = *(a1 + 8);
          if (v610)
          {
            v610 = *(v610 & 0xFFFFFFFFFFFFFFFELL);
          }

          v611 = MEMORY[0x277C8F150](v610);
          LODWORD(v576) = v611;
          *(a1 + 896) = v611;
LABEL_1197:
          v6 = v766;
LABEL_1198:
          v658 = sub_275E60BB4(a3, v576, v6);
LABEL_1305:
          v766 = v658;
          if (v658)
          {
            goto LABEL_1306;
          }

          return 0;
        case 0xD6u:
          if (v7 != 176)
          {
            goto LABEL_1308;
          }

          *(a1 + 40) |= 0x200000u;
          v166 = (v6 + 1);
          v165 = *v6;
          if ((v165 & 0x8000000000000000) == 0)
          {
            goto LABEL_274;
          }

          v167 = *v166;
          v165 = (v167 << 7) + v165 - 128;
          if (v167 < 0)
          {
            v434 = google::protobuf::internal::VarintParseSlow64(v6, v165);
            v766 = v434;
            *(a1 + 1010) = v435 != 0;
            if (!v434)
            {
              return 0;
            }
          }

          else
          {
            v166 = (v6 + 2);
LABEL_274:
            v766 = v166;
            *(a1 + 1010) = v165 != 0;
          }

          goto LABEL_1306;
        default:
LABEL_1308:
          v765 = sub_275E60FC4(v7, a3, (a1 + 8), &v766);
          if (!v765)
          {
            return v766;
          }

          if (v765 == 1)
          {
            return 0;
          }

          goto LABEL_1306;
      }
    }
  }

  return v766;
}