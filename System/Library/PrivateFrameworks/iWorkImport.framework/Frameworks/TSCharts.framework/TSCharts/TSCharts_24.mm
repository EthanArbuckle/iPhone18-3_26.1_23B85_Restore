google::protobuf::internal *sub_276454790(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  while ((sub_2763D4D98(a3, &v20) & 1) == 0)
  {
    v5 = (v20 + 1);
    v6 = *v20;
    if ((*v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v20 + 2);
LABEL_6:
      v20 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
    v20 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v18;
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

        v13 = MEMORY[0x277C97BD0](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v20;
      }

      v10 = sub_2764AECB0(a3, v11, v5);
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
          return v20;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x277C97BC0](v15);
        LODWORD(v14) = v16;
        *(a1 + 24) = v16;
        v5 = v20;
      }

      v10 = sub_2764AEBE0(a3, v14, v5);
    }

LABEL_30:
    v20 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v20;
}

unsigned __int8 *sub_27645493C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    v7 = *(v6 + 6);
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

    a2 = TSWP::CharacterStylePropertiesArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 32);
    *a2 = 18;
    v13 = *(v12 + 6);
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

    a2 = TSWP::ParagraphStylePropertiesArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276454ACC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = TSWP::CharacterStylePropertiesArchive::ByteSizeLong(*(a1 + 24));
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
    v5 = TSWP::ParagraphStylePropertiesArchive::ByteSizeLong(*(a1 + 32));
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

uint64_t sub_276454BAC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885270F8, 0);
  if (v4)
  {

    return sub_276451C04(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_276454C54(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276454720(result);

    return sub_276454BAC(v4, a2);
  }

  return result;
}

uint64_t sub_276454CA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSWP::CharacterStylePropertiesArchive::IsInitialized(*(a1 + 24));
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

  result = TSWP::ParagraphStylePropertiesArchive::IsInitialized(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_276454D24(uint64_t *a1)
{
  if (a1 != &qword_2812F1920)
  {
    v2 = a1[3];
    if (v2)
    {
      sub_2763941F4((v2 + 8));
      MEMORY[0x277C98580](v2, 0x1081C404FE48876);
    }

    v3 = a1[4];
    if (v3)
    {
      v4 = sub_27645465C(v3);
      MEMORY[0x277C98580](v4, 0x10A1C40DFBAE579);
    }

    v5 = a1[5];
    if (v5)
    {
      v6 = sub_27645465C(v5);
      MEMORY[0x277C98580](v6, 0x10A1C40DFBAE579);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276454DCC(uint64_t *a1)
{
  sub_276454D24(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276454E0C(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = sub_276454074(result[3]);
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

    result = sub_276454720(v1[4]);
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = sub_276454720(v1[5]);
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 10) = 0;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_276454E98(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v26) & 1) == 0)
  {
    while (1)
    {
      v7 = (v26 + 1);
      v8 = *v26;
      if ((*v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v9 - 128));
      v26 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_53;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_38;
          }

          *(a1 + 16) |= 2u;
          v15 = *(a1 + 32);
          if (!v15)
          {
            v20 = *(a1 + 8);
            if (v20)
            {
              v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = sub_2764756B8(v20);
            *(a1 + 32) = v15;
LABEL_36:
            v7 = v26;
          }
        }

        else
        {
          if (v10 != 4 || v8 != 34)
          {
            goto LABEL_38;
          }

          *(a1 + 16) |= 4u;
          v15 = *(a1 + 40);
          if (!v15)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = sub_2764756B8(v16);
            *(a1 + 40) = v15;
            goto LABEL_36;
          }
        }

        v19 = sub_2764AF0C0(a3, v15, v7);
        goto LABEL_45;
      }

      if (v10 == 1)
      {
        if (v8 == 10)
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

            v17 = sub_276475640(v18);
            *(a1 + 24) = v17;
            v7 = v26;
          }

          v19 = sub_2764AEFF0(a3, v17, v7);
          goto LABEL_45;
        }

LABEL_38:
        if (v8)
        {
          v21 = (v8 & 7) == 4;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v19 = google::protobuf::internal::UnknownFieldParse();
LABEL_45:
        v26 = v19;
        if (!v19)
        {
          goto LABEL_53;
        }

        goto LABEL_46;
      }

      if (v10 != 2 || v8 != 16)
      {
        goto LABEL_38;
      }

      v5 |= 8u;
      v12 = (v7 + 1);
      LODWORD(v13) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      v14 = *v12;
      v13 = (v13 + (v14 << 7) - 128);
      if ((v14 & 0x80000000) == 0)
      {
        v12 = (v7 + 2);
LABEL_17:
        v26 = v12;
        *(a1 + 48) = v13;
        goto LABEL_46;
      }

      v24 = google::protobuf::internal::VarintParseSlow32(v7, v13);
      v26 = v24;
      *(a1 + 48) = v25;
      if (!v24)
      {
LABEL_53:
        v26 = 0;
        goto LABEL_2;
      }

LABEL_46:
      if (sub_2763D4D98(a3, &v26))
      {
        goto LABEL_2;
      }
    }

    v7 = (v26 + 2);
LABEL_6:
    v26 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

unsigned __int8 *sub_276455120(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 48);
    *a2 = 16;
    if (v12 > 0x7F)
    {
      a2[1] = v12 | 0x80;
      v13 = v12 >> 7;
      if (v12 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++a2;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(a2 - 1) = v14;
        if ((v5 & 2) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
        if ((v5 & 2) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
      if ((v5 & 2) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_37;
  }

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

  a2 = sub_2764542A8(v6, v8, a3);
  if ((v5 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  if ((v5 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(a1 + 32);
  *a2 = 26;
  v17 = *(v16 + 20);
  if (v17 > 0x7F)
  {
    a2[1] = v17 | 0x80;
    v19 = v17 >> 7;
    if (v17 >> 14)
    {
      v18 = a2 + 3;
      do
      {
        *(v18 - 1) = v19 | 0x80;
        v20 = v19 >> 7;
        ++v18;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
      *(v18 - 1) = v20;
    }

    else
    {
      a2[2] = v19;
      v18 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v17;
    v18 = a2 + 2;
  }

  a2 = sub_27645493C(v16, v18, a3);
  if ((v5 & 4) != 0)
  {
LABEL_37:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v22 = *(a1 + 40);
    *a2 = 34;
    v23 = *(v22 + 20);
    if (v23 > 0x7F)
    {
      a2[1] = v23 | 0x80;
      v25 = v23 >> 7;
      if (v23 >> 14)
      {
        v24 = a2 + 3;
        do
        {
          *(v24 - 1) = v25 | 0x80;
          v26 = v25 >> 7;
          ++v24;
          v27 = v25 >> 14;
          v25 >>= 7;
        }

        while (v27);
        *(v24 - 1) = v26;
      }

      else
      {
        a2[2] = v25;
        v24 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v23;
      v24 = a2 + 2;
    }

    a2 = sub_27645493C(v22, v24, a3);
  }

LABEL_47:
  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v28 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_2764553E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = sub_276454420(*(a1 + 24));
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
    v5 = sub_276454ACC(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = sub_276454ACC(*(a1 + 40));
  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
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

uint64_t sub_276455520(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527110, 0);
  if (v4)
  {

    return sub_2764555C8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2764555C8(uint64_t result, uint64_t a2)
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

        v6 = sub_276475640(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &qword_2812F18D8;
      }

      result = sub_276454564(v6, v8);
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

        v9 = sub_2764756B8(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = &qword_2812F18F8;
      }

      result = sub_276451C04(v9, v11);
      if ((v5 & 4) == 0)
      {
LABEL_15:
        if ((v5 & 8) == 0)
        {
LABEL_17:
          *(v3 + 16) |= v5;
          return result;
        }

LABEL_16:
        *(v3 + 48) = *(a2 + 48);
        goto LABEL_17;
      }
    }

    else if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = sub_2764756B8(v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 40))
    {
      v14 = *(a2 + 40);
    }

    else
    {
      v14 = &qword_2812F18F8;
    }

    result = sub_276451C04(v12, v14);
    if ((v5 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t *sub_276455718(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276454E0C(result);

    return sub_276455520(v4, a2);
  }

  return result;
}

uint64_t sub_276455764(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_276454CA0(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = sub_276454CA0(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_2764557E8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288525468;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812EE028, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 48) = MEMORY[0x277D80A90];
  *(a1 + 56) = v3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return a1;
}

uint64_t *sub_276455884(uint64_t *a1)
{
  sub_2764558C4(a1);
  sub_2763941F4(a1 + 1);
  sub_276477E2C(a1 + 3);
  return a1;
}

TSP::Reference *sub_2764558C4(TSP::Reference *result)
{
  v1 = result;
  v2 = *(result + 6);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 7);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C98580](v4, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812F1958)
  {
    v5 = *(v1 + 8);
    if (v5)
    {
      v6 = sub_276466CA8(v5);
      MEMORY[0x277C98580](v6, 0x10A1C4025A55CD8);
    }

    result = *(v1 + 9);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_2764559C4(uint64_t *a1)
{
  sub_276455884(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276455A04(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = sub_276454E0C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 4);
  if ((v5 & 0xF) == 0)
  {
    goto LABEL_11;
  }

  if (v5)
  {
    v8 = v1[6] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_19:
  v9 = v1[7] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
    if ((v5 & 4) != 0)
    {
      goto LABEL_23;
    }

LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *v9 = 0;
  *(v9 + 23) = 0;
  if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_23:
  result = sub_27644C464(v1[8]);
  if ((v5 & 8) != 0)
  {
LABEL_10:
    result = TSP::Reference::Clear(v1[9]);
  }

LABEL_11:
  v7 = *(v1 + 8);
  v6 = v1 + 1;
  *(v6 + 36) = 0;
  *(v6 + 2) = 0;
  if (v7)
  {

    return sub_2763D4FD4(v6);
  }

  return result;
}

google::protobuf::internal *sub_276455B1C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v39) & 1) == 0)
  {
    while (1)
    {
      v7 = (v39 + 1);
      v8 = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v9 - 128));
      v39 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_76;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_61;
          }

          *(a1 + 16) |= 4u;
          v25 = *(a1 + 64);
          if (!v25)
          {
            v26 = *(a1 + 8);
            if (v26)
            {
              v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
            }

            v25 = sub_276476600(v26);
            *(a1 + 64) = v25;
            v7 = v39;
          }

          v27 = sub_2764AE490(a3, v25, v7);
          goto LABEL_68;
        }

        if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_61;
          }

          *(a1 + 16) |= 8u;
          v31 = *(a1 + 72);
          if (!v31)
          {
            v32 = *(a1 + 8);
            if (v32)
            {
              v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
            }

            v33 = MEMORY[0x277C97B90](v32);
            LODWORD(v31) = v33;
            *(a1 + 72) = v33;
            v7 = v39;
          }

          v27 = sub_2764ADCBC(a3, v31, v7);
          goto LABEL_68;
        }

        if (v10 != 3 || v8 != 26)
        {
          goto LABEL_61;
        }

        *(a1 + 16) |= 1u;
LABEL_49:
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v27 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_68;
      }

      if (v8 >> 3 <= 5)
      {
        if (v10 != 4)
        {
          if (v10 == 5 && v8 == 42)
          {
            v11 = (v7 - 1);
            while (1)
            {
              v12 = (v11 + 1);
              v39 = (v11 + 1);
              v13 = *(a1 + 40);
              if (!v13)
              {
                goto LABEL_14;
              }

              v18 = *(a1 + 32);
              v14 = *v13;
              if (v18 < *v13)
              {
                *(a1 + 32) = v18 + 1;
                v15 = *&v13[2 * v18 + 2];
                goto LABEL_18;
              }

              if (v14 == *(a1 + 36))
              {
LABEL_14:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                v13 = *(a1 + 40);
                v14 = *v13;
              }

              *v13 = v14 + 1;
              v15 = sub_276475784(*(a1 + 24));
              v16 = *(a1 + 32);
              v17 = *(a1 + 40) + 8 * v16;
              *(a1 + 32) = v16 + 1;
              *(v17 + 8) = v15;
              v12 = v39;
LABEL_18:
              v11 = sub_2764AF190(a3, v15, v12);
              v39 = v11;
              if (!v11)
              {
                goto LABEL_76;
              }

              if (*a3 <= v11 || *v11 != 42)
              {
                goto LABEL_69;
              }
            }
          }

LABEL_61:
          if (v8)
          {
            v34 = (v8 & 7) == 4;
          }

          else
          {
            v34 = 1;
          }

          if (v34)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v27 = google::protobuf::internal::UnknownFieldParse();
LABEL_68:
          v39 = v27;
          if (!v27)
          {
            goto LABEL_76;
          }

          goto LABEL_69;
        }

        if (v8 != 34)
        {
          goto LABEL_61;
        }

        *(a1 + 16) |= 2u;
        goto LABEL_49;
      }

      if (v10 == 6)
      {
        if (v8 != 48)
        {
          goto LABEL_61;
        }

        v5 |= 0x10u;
        v29 = (v7 + 1);
        v28 = *v7;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

        v30 = *v29;
        v28 = (v30 << 7) + v28 - 128;
        if ((v30 & 0x80000000) == 0)
        {
          v29 = (v7 + 2);
LABEL_54:
          v39 = v29;
          *(a1 + 80) = v28 != 0;
          goto LABEL_69;
        }

        v35 = google::protobuf::internal::VarintParseSlow64(v7, v28);
        v39 = v35;
        *(a1 + 80) = v36 != 0;
        if (!v35)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v10 != 7 || v8 != 56)
        {
          goto LABEL_61;
        }

        v5 |= 0x20u;
        v21 = (v7 + 1);
        v20 = *v7;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_38;
        }

        v22 = *v21;
        v20 = (v22 << 7) + v20 - 128;
        if ((v22 & 0x80000000) == 0)
        {
          v21 = (v7 + 2);
LABEL_38:
          v39 = v21;
          *(a1 + 81) = v20 != 0;
          goto LABEL_69;
        }

        v37 = google::protobuf::internal::VarintParseSlow64(v7, v20);
        v39 = v37;
        *(a1 + 81) = v38 != 0;
        if (!v37)
        {
LABEL_76:
          v39 = 0;
          goto LABEL_2;
        }
      }

LABEL_69:
      if (sub_2763D4D98(a3, &v39))
      {
        goto LABEL_2;
      }
    }

    v7 = (v39 + 2);
LABEL_6:
    v39 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v39;
}

unsigned __int8 *sub_276455F3C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v19 = *(a1 + 64);
    *v4 = 10;
    v20 = *(v19 + 20);
    if (v20 > 0x7F)
    {
      v4[1] = v20 | 0x80;
      v22 = v20 >> 7;
      if (v20 >> 14)
      {
        v21 = v4 + 3;
        do
        {
          *(v21 - 1) = v22 | 0x80;
          v23 = v22 >> 7;
          ++v21;
          v24 = v22 >> 14;
          v22 >>= 7;
        }

        while (v24);
        *(v21 - 1) = v23;
      }

      else
      {
        v4[2] = v22;
        v21 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v20;
      v21 = v4 + 2;
    }

    v4 = sub_2764670A4(v19, v21, a3);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(a1 + 72);
  *v4 = 18;
  v26 = *(v25 + 5);
  if (v26 > 0x7F)
  {
    v4[1] = v26 | 0x80;
    v28 = v26 >> 7;
    if (v26 >> 14)
    {
      v27 = v4 + 3;
      do
      {
        *(v27 - 1) = v28 | 0x80;
        v29 = v28 >> 7;
        ++v27;
        v30 = v28 >> 14;
        v28 >>= 7;
      }

      while (v30);
      *(v27 - 1) = v29;
    }

    else
    {
      v4[2] = v28;
      v27 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v26;
    v27 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v25, v27, a3);
  if ((v6 & 1) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_48:
  v4 = sub_2763DD938(a3, 3, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
LABEL_5:
    v4 = sub_2763DD938(a3, 4, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_6:
  v7 = *(a1 + 32);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 42;
      v10 = *(v9 + 20);
      if (v10 > 0x7F)
      {
        v4[1] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 3;
          do
          {
            *(v11 - 1) = v12 | 0x80;
            v13 = v12 >> 7;
            ++v11;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
          *(v11 - 1) = v13;
        }

        else
        {
          v4[2] = v12;
          v11 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v10;
        v11 = v4 + 2;
      }

      v4 = sub_276455120(v9, v11, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v15 = *(a1 + 80);
    *v4 = 48;
    v4[1] = v15;
    v4 += 2;
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v16 = *(a1 + 81);
    *v4 = 56;
    v4[1] = v16;
    v4 += 2;
  }

  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v17 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276456258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 4) != 0)
  {
    v4 = sub_276467344(*(a1 + 64));
    v2 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v1 = *(a1 + 16);
  }

  else
  {
    v2 = 0;
  }

  return v2 + ((v1 >> 3) & 2) + ((v1 >> 4) & 2);
}

uint64_t sub_2764562D0(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x34) != 0)
  {
    v3 = sub_276456258(a1);
  }

  else
  {
    v2 = sub_276467344(*(a1 + 64));
    v3 = v2 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 5;
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
      v10 = sub_2764553E0(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(a1 + 16);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      v12 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      v5 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v11 & 2) != 0)
    {
      v15 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      v16 = *(v15 + 23);
      v17 = *(v15 + 8);
      if ((v16 & 0x80u) == 0)
      {
        v17 = v16;
      }

      v5 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if ((v11 & 8) != 0)
  {
    v18 = TSP::Reference::ByteSizeLong(*(a1 + 72));
    v5 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t sub_27645648C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527128, 0);
  if (v4)
  {

    return sub_276456534(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276456534(uint64_t result, uint64_t a2)
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
    result = sub_276477EB0(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if ((v10 & 0x3F) != 0)
  {
    if (v10)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_18;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 16) |= 2u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }

LABEL_18:
    *(v3 + 16) |= 4u;
    v11 = *(v3 + 64);
    if (!v11)
    {
      v12 = *(v3 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = sub_276476600(v12);
      *(v3 + 64) = v11;
    }

    if (*(a2 + 64))
    {
      v13 = *(a2 + 64);
    }

    else
    {
      v13 = &qword_2812F1FA8;
    }

    result = sub_27644DC54(v11, v13);
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_34;
    }

LABEL_26:
    *(v3 + 16) |= 8u;
    v14 = *(v3 + 72);
    if (!v14)
    {
      v15 = *(v3 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C97B90](v15);
      *(v3 + 72) = v14;
    }

    if (*(a2 + 72))
    {
      v16 = *(a2 + 72);
    }

    else
    {
      v16 = MEMORY[0x277D80A18];
    }

    result = TSP::Reference::MergeFrom(v14, v16);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
LABEL_14:
        *(v3 + 16) |= v10;
        return result;
      }

LABEL_13:
      *(v3 + 81) = *(a2 + 81);
      goto LABEL_14;
    }

LABEL_34:
    *(v3 + 80) = *(a2 + 80);
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t *sub_27645671C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276455A04(result);

    return sub_27645648C(v4, a2);
  }

  return result;
}

uint64_t sub_276456768(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x34) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_276455764(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    result = sub_27644DF5C(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 8) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 72));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_276456834(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288525518;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812EDB88, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 24) = MEMORY[0x277D80A90];
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return a1;
}

uint64_t *sub_2764568B0(uint64_t *a1)
{
  sub_2764568E4(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

TSP::Reference *sub_2764568E4(TSP::Reference *result)
{
  v1 = result;
  v2 = *(result + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812F19B0)
  {
    v3 = *(v1 + 4);
    if (v3)
    {
      v4 = sub_276466CA8(v3);
      MEMORY[0x277C98580](v4, 0x10A1C4025A55CD8);
    }

    v5 = *(v1 + 5);
    if (v5)
    {
      TSCH::ChartFillSetArchive::~ChartFillSetArchive(v5);
      MEMORY[0x277C98580]();
    }

    v6 = *(v1 + 6);
    if (v6)
    {
      TSCH::ChartFillSetArchive::~ChartFillSetArchive(v6);
      MEMORY[0x277C98580]();
    }

    result = *(v1 + 7);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_2764569E4(uint64_t *a1)
{
  sub_2764568B0(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276456A24(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    v5 = result[3] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_17:
    result = TSCH::ChartFillSetArchive::Clear(v1[5]);
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_18;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  result = sub_27644C464(result[4]);
  if ((v2 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_18:
  result = TSCH::ChartFillSetArchive::Clear(v1[6]);
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = TSP::Reference::Clear(v1[7]);
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 14) = 0;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_276456AF4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  while ((sub_2763D4D98(a3, &v28) & 1) == 0)
  {
    v5 = (v28 + 1);
    v6 = *v28;
    if (*v28 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v7 - 128));
        v28 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v25;
        goto LABEL_7;
      }

      v5 = (v28 + 2);
    }

    v28 = v5;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 3)
    {
      if (v8 == 4)
      {
        if (v6 != 34)
        {
          goto LABEL_50;
        }

        *(a1 + 16) |= 8u;
        v10 = *(a1 + 48);
        if (!v10)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartFillSetArchive>(v18);
          *(a1 + 48) = v10;
LABEL_39:
          v5 = v28;
        }

LABEL_40:
        v15 = sub_2764AF260(a3, v10, v5);
        goto LABEL_57;
      }

      if (v8 == 5)
      {
        if (v6 != 42)
        {
          goto LABEL_50;
        }

        *(a1 + 16) |= 1u;
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v15 = google::protobuf::internal::InlineGreedyStringParser();
      }

      else
      {
        if (v8 != 6 || v6 != 50)
        {
          goto LABEL_50;
        }

        *(a1 + 16) |= 0x10u;
        v12 = *(a1 + 56);
        if (!v12)
        {
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x277C97B90](v13);
          LODWORD(v12) = v14;
          *(a1 + 56) = v14;
          v5 = v28;
        }

        v15 = sub_2764ADCBC(a3, v12, v5);
      }

LABEL_57:
      v28 = v15;
      if (!v15)
      {
        return 0;
      }
    }

    else
    {
      if (v8 == 1)
      {
        if (v6 != 10)
        {
          goto LABEL_50;
        }

        *(a1 + 16) |= 2u;
        v16 = *(a1 + 32);
        if (!v16)
        {
          v17 = *(a1 + 8);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v16 = sub_276476600(v17);
          *(a1 + 32) = v16;
          v5 = v28;
        }

        v15 = sub_2764AE490(a3, v16, v5);
        goto LABEL_57;
      }

      if (v8 != 2)
      {
        if (v8 != 3 || v6 != 26)
        {
LABEL_50:
          if (v6)
          {
            v23 = (v6 & 7) == 4;
          }

          else
          {
            v23 = 1;
          }

          if (v23)
          {
            *(a3 + 80) = v6 - 1;
            return v28;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v15 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_57;
        }

        *(a1 + 16) |= 4u;
        v10 = *(a1 + 40);
        if (!v10)
        {
          v11 = *(a1 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartFillSetArchive>(v11);
          *(a1 + 40) = v10;
          goto LABEL_39;
        }

        goto LABEL_40;
      }

      if (v6 != 16)
      {
        goto LABEL_50;
      }

      v19 = (v5 + 1);
      v20 = *v5;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_45;
      }

      v21 = *v19;
      v22 = (v21 << 7) + v20;
      LODWORD(v20) = v22 - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v19 = (v5 + 2);
LABEL_45:
        v28 = v19;
        goto LABEL_46;
      }

      v28 = google::protobuf::internal::VarintParseSlow64(v5, (v22 - 128));
      if (!v28)
      {
        return 0;
      }

      LODWORD(v20) = v26;
LABEL_46:
      if (sub_2763FFBA0(v20))
      {
        *(a1 + 16) |= 0x20u;
        *(a1 + 64) = v20;
      }

      else
      {
        sub_2764AFCF0();
      }
    }
  }

  return v28;
}

unsigned __int8 *sub_276456E24(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 2) == 0)
  {
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_3;
    }

LABEL_18:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(a1 + 64);
    *v4 = 16;
    if (v13 > 0x7F)
    {
      v4[1] = v13 | 0x80;
      v14 = v13 >> 7;
      if (v13 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v14 | 0x80;
          v15 = v14 >> 7;
          ++v4;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
        *(v4 - 1) = v15;
        if ((v6 & 4) != 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v4[2] = v14;
        v4 += 3;
        if ((v6 & 4) != 0)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v4[1] = v13;
      v4 += 2;
      if ((v6 & 4) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

  if (*a3 <= a2)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(a1 + 32);
  *v4 = 10;
  v8 = *(v7 + 20);
  if (v8 > 0x7F)
  {
    v4[1] = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = v4 + 3;
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
      v4[2] = v10;
      v9 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v8;
    v9 = v4 + 2;
  }

  v4 = sub_2764670A4(v7, v9, a3);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_29:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(a1 + 40);
  *v4 = 26;
  v18 = *(v17 + 5);
  if (v18 > 0x7F)
  {
    v4[1] = v18 | 0x80;
    v20 = v18 >> 7;
    if (v18 >> 14)
    {
      v19 = v4 + 3;
      do
      {
        *(v19 - 1) = v20 | 0x80;
        v21 = v20 >> 7;
        ++v19;
        v22 = v20 >> 14;
        v20 >>= 7;
      }

      while (v22);
      *(v19 - 1) = v21;
    }

    else
    {
      v4[2] = v20;
      v19 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v18;
    v19 = v4 + 2;
  }

  v4 = TSCH::ChartFillSetArchive::_InternalSerialize(v17, v19, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_39:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v23 = *(a1 + 48);
  *v4 = 34;
  v24 = *(v23 + 5);
  if (v24 > 0x7F)
  {
    v4[1] = v24 | 0x80;
    v26 = v24 >> 7;
    if (v24 >> 14)
    {
      v25 = v4 + 3;
      do
      {
        *(v25 - 1) = v26 | 0x80;
        v27 = v26 >> 7;
        ++v25;
        v28 = v26 >> 14;
        v26 >>= 7;
      }

      while (v28);
      *(v25 - 1) = v27;
    }

    else
    {
      v4[2] = v26;
      v25 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v24;
    v25 = v4 + 2;
  }

  v4 = TSCH::ChartFillSetArchive::_InternalSerialize(v23, v25, a3);
  if ((v6 & 1) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_50;
  }

LABEL_49:
  v4 = sub_2763DD938(a3, 5, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_60;
  }

LABEL_50:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(a1 + 56);
  *v4 = 50;
  v30 = *(v29 + 5);
  if (v30 > 0x7F)
  {
    v4[1] = v30 | 0x80;
    v32 = v30 >> 7;
    if (v30 >> 14)
    {
      v31 = v4 + 3;
      do
      {
        *(v31 - 1) = v32 | 0x80;
        v33 = v32 >> 7;
        ++v31;
        v34 = v32 >> 14;
        v32 >>= 7;
      }

      while (v34);
      *(v31 - 1) = v33;
    }

    else
    {
      v4[2] = v32;
      v31 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v30;
    v31 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v29, v31, a3);
LABEL_60:
  v35 = *(a1 + 8);
  if ((v35 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v35 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_2764571B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    v4 = sub_276467344(*(a1 + 32));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 4) != 0)
  {
LABEL_5:
    v5 = TSCH::ChartFillSetArchive::ByteSizeLong(*(a1 + 40));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    v6 = *(a1 + 64);
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

uint64_t sub_276457284(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x26) != 0)
  {
    v9 = sub_2764571B8(a1);
  }

  else
  {
    v2 = sub_276467344(*(a1 + 32));
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = TSCH::ChartFillSetArchive::ByteSizeLong(*(a1 + 40));
    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    v6 = *(a1 + 64);
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

  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v9 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v10 & 0x18) != 0)
  {
    if ((v10 & 8) != 0)
    {
      v14 = TSCH::ChartFillSetArchive::ByteSizeLong(*(a1 + 48));
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v10 & 0x10) != 0)
    {
      v15 = TSP::Reference::ByteSizeLong(*(a1 + 56));
      v9 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v9;
    return v9;
  }
}

uint64_t sub_276457438(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527140, 0);
  if (v4)
  {

    return sub_2764574E0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2764574E0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0x3F) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v6 = *(v3 + 32);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = sub_276476600(v7);
        *(v3 + 32) = v6;
      }

      if (*(a2 + 32))
      {
        v8 = *(a2 + 32);
      }

      else
      {
        v8 = &qword_2812F1FA8;
      }

      result = sub_27644DC54(v6, v8);
    }

    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v9 = *(v3 + 40);
      if (!v9)
      {
        v10 = *(v3 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartFillSetArchive>(v10);
        *(v3 + 40) = v9;
      }

      if (*(a2 + 40))
      {
        v11 = *(a2 + 40);
      }

      else
      {
        v11 = &TSCH::_ChartFillSetArchive_default_instance_;
      }

      result = TSCH::ChartFillSetArchive::MergeFrom(v9, v11);
      if ((v5 & 8) == 0)
      {
LABEL_17:
        if ((v5 & 0x10) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_38;
      }
    }

    else if ((v5 & 8) == 0)
    {
      goto LABEL_17;
    }

    *(v3 + 16) |= 8u;
    v12 = *(v3 + 48);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartFillSetArchive>(v13);
      *(v3 + 48) = v12;
    }

    if (*(a2 + 48))
    {
      v14 = *(a2 + 48);
    }

    else
    {
      v14 = &TSCH::_ChartFillSetArchive_default_instance_;
    }

    result = TSCH::ChartFillSetArchive::MergeFrom(v12, v14);
    if ((v5 & 0x10) == 0)
    {
LABEL_18:
      if ((v5 & 0x20) == 0)
      {
LABEL_20:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_19:
      *(v3 + 64) = *(a2 + 64);
      goto LABEL_20;
    }

LABEL_38:
    *(v3 + 16) |= 0x10u;
    v15 = *(v3 + 56);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x277C97B90](v16);
      *(v3 + 56) = v15;
    }

    if (*(a2 + 56))
    {
      v17 = *(a2 + 56);
    }

    else
    {
      v17 = MEMORY[0x277D80A18];
    }

    result = TSP::Reference::MergeFrom(v15, v17);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  return result;
}

uint64_t *sub_2764576B4(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276456A24(result);

    return sub_276457438(v4, a2);
  }

  return result;
}

uint64_t sub_276457700(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x26) != 0)
  {
    return 0;
  }

  result = sub_27644DF5C(*(a1 + 32));
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 4) != 0)
    {
      result = TSCH::ChartFillSetArchive::IsInitialized(*(a1 + 40));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 8) != 0)
    {
      result = TSCH::ChartFillSetArchive::IsInitialized(*(a1 + 48));
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

    result = TSP::Reference::IsInitialized(*(a1 + 56));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2764577C0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885255C8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812EE190, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 24) = MEMORY[0x277D80A90];
  *(a1 + 32) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_276457838(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  v4 = *(a1 + 32);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x277C98580](v4, 0x1012C40EC159624);
  }

  if (a1 != &unk_2812F19F8)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = sub_276466CA8(v5);
      MEMORY[0x277C98580](v6, 0x10A1C4025A55CD8);
    }
  }

  sub_2763941F4((a1 + 8));
  return a1;
}

void sub_27645790C(uint64_t a1)
{
  sub_276457838(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27645794C(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v5 = result[3] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  v6 = result[4] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = sub_27644C464(result[5]);
    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 10) = 0;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_276457A20(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v23) & 1) == 0)
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
        goto LABEL_46;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_31;
          }

          *(a1 + 16) |= 1u;
        }

        else
        {
          if (v10 != 4 || v8 != 34)
          {
            goto LABEL_31;
          }

          *(a1 + 16) |= 2u;
        }

        google::protobuf::internal::ArenaStringPtr::Mutable();
        v17 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_38;
      }

      if (v10 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 4u;
          v15 = *(a1 + 40);
          if (!v15)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = sub_276476600(v16);
            *(a1 + 40) = v15;
            v7 = v23;
          }

          v17 = sub_2764AE490(a3, v15, v7);
          goto LABEL_38;
        }

LABEL_31:
        if (v8)
        {
          v18 = (v8 & 7) == 4;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v17 = google::protobuf::internal::UnknownFieldParse();
LABEL_38:
        v23 = v17;
        if (!v17)
        {
          goto LABEL_46;
        }

        goto LABEL_39;
      }

      if (v10 != 2 || v8 != 16)
      {
        goto LABEL_31;
      }

      v5 |= 8u;
      v12 = (v7 + 1);
      LODWORD(v13) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      v14 = *v12;
      v13 = (v13 + (v14 << 7) - 128);
      if ((v14 & 0x80000000) == 0)
      {
        v12 = (v7 + 2);
LABEL_17:
        v23 = v12;
        *(a1 + 48) = v13;
        goto LABEL_39;
      }

      v21 = google::protobuf::internal::VarintParseSlow32(v7, v13);
      v23 = v21;
      *(a1 + 48) = v22;
      if (!v21)
      {
LABEL_46:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_39:
      if (sub_2763D4D98(a3, &v23))
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

unsigned __int8 *sub_276457C8C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 4) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_18:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v15 = *(a1 + 48);
    *v4 = 16;
    if (v15 > 0x7F)
    {
      v4[1] = v15 | 0x80;
      v16 = v15 >> 7;
      if (v15 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++v4;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(v4 - 1) = v17;
        if (v6)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v4[2] = v16;
        v4 += 3;
        if (v6)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v4[1] = v15;
      v4 += 2;
      if (v6)
      {
        goto LABEL_29;
      }
    }

LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*a3 <= a2)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(a1 + 40);
  *v4 = 10;
  v10 = *(v9 + 20);
  if (v10 > 0x7F)
  {
    v4[1] = v10 | 0x80;
    v12 = v10 >> 7;
    if (v10 >> 14)
    {
      v11 = v4 + 3;
      do
      {
        *(v11 - 1) = v12 | 0x80;
        v13 = v12 >> 7;
        ++v11;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
      *(v11 - 1) = v13;
    }

    else
    {
      v4[2] = v12;
      v11 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v10;
    v11 = v4 + 2;
  }

  v4 = sub_2764670A4(v9, v11, a3);
  if ((v6 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  if ((v6 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_29:
  v4 = sub_2763DD938(a3, 3, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
LABEL_5:
    v4 = sub_2763DD938(a3, 4, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_6:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276457E6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) == 0)
  {
    v3 = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v7 = sub_276467344(*(a1 + 40));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
    goto LABEL_8;
  }

  v4 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((v2 & 8) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t sub_276457F3C(uint64_t a1)
{
  if ((~*(a1 + 16) & 0xE) != 0)
  {
    v8 = sub_276457E6C(a1);
  }

  else
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = sub_276467344(v2);
    v8 = v6 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  if (*(a1 + 16))
  {
    v9 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v10 = *(v9 + 23);
    v11 = *(v9 + 8);
    if ((v10 & 0x80u) == 0)
    {
      v11 = v10;
    }

    v8 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v8;
    return v8;
  }
}

uint64_t sub_276458084(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527158, 0);
  if (v4)
  {

    return sub_27645812C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27645812C(uint64_t result, uint64_t a2)
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
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
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

LABEL_13:
    *(v3 + 16) |= 4u;
    v6 = *(v3 + 40);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_276476600(v7);
      *(v3 + 40) = v6;
    }

    if (*(a2 + 40))
    {
      v8 = *(a2 + 40);
    }

    else
    {
      v8 = &qword_2812F1FA8;
    }

    result = sub_27644DC54(v6, v8);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t *sub_276458258(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27645794C(result);

    return sub_276458084(v4, a2);
  }

  return result;
}

uint64_t sub_2764582A4(uint64_t a1)
{
  if ((~*(a1 + 16) & 0xE) != 0)
  {
    return 0;
  }

  else
  {
    return sub_27644DF5C(*(a1 + 40));
  }
}

void *sub_2764582FC(void *a1, uint64_t a2)
{
  *a1 = &unk_288525678;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812EDFE0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  a1[3] = MEMORY[0x277D80A90];
  a1[4] = v3;
  a1[5] = 0;
  *(a1 + 45) = 0;
  return a1;
}

void *sub_276458374(void *a1)
{
  v2 = a1[3];
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  v4 = a1[4];
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x277C98580](v4, 0x1012C40EC159624);
  }

  if (a1 != qword_2812F1A30)
  {
    v5 = a1[5];
    if (v5)
    {
      v6 = sub_276466CA8(v5);
      MEMORY[0x277C98580](v6, 0x10A1C4025A55CD8);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276458448(void *a1)
{
  sub_276458374(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276458488(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  v5 = result[3] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v6 = result[4] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = sub_27644C464(result[5]);
    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ((v2 & 0x18) != 0)
  {
    *(v1 + 52) = 0;
    *(v1 + 12) = 0;
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

google::protobuf::internal *sub_276458568(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v28) & 1) == 0)
  {
    while (1)
    {
      v7 = (v28 + 1);
      v8 = *v28;
      if ((*v28 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v9 - 128));
      v28 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_54;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 4u;
            v19 = *(a1 + 40);
            if (!v19)
            {
              v20 = *(a1 + 8);
              if (v20)
              {
                v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
              }

              v19 = sub_276476600(v20);
              *(a1 + 40) = v19;
              v7 = v28;
            }

            v18 = sub_2764AE490(a3, v19, v7);
            goto LABEL_44;
          }

LABEL_37:
          if (v8)
          {
            v21 = (v8 & 7) == 4;
          }

          else
          {
            v21 = 1;
          }

          if (v21)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v18 = google::protobuf::internal::UnknownFieldParse();
LABEL_44:
          v28 = v18;
          if (!v18)
          {
            goto LABEL_54;
          }

          goto LABEL_45;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_37;
        }

        v5 |= 8u;
        v15 = (v7 + 1);
        LODWORD(v16) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v17 = *v15;
        v16 = (v16 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_25:
          v28 = v15;
          *(a1 + 48) = v16;
          goto LABEL_45;
        }

        v26 = google::protobuf::internal::VarintParseSlow32(v7, v16);
        v28 = v26;
        *(a1 + 48) = v27;
        if (!v26)
        {
LABEL_54:
          v28 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_37;
          }

          *(a1 + 16) |= 1u;
LABEL_30:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v18 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_44;
        }

        if (v10 == 4)
        {
          if (v8 != 34)
          {
            goto LABEL_37;
          }

          *(a1 + 16) |= 2u;
          goto LABEL_30;
        }

        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_37;
        }

        v5 |= 0x10u;
        v12 = (v7 + 1);
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_15:
          v28 = v12;
          *(a1 + 52) = v11 != 0;
          goto LABEL_45;
        }

        v24 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v28 = v24;
        *(a1 + 52) = v25 != 0;
        if (!v24)
        {
          goto LABEL_54;
        }
      }

LABEL_45:
      if (sub_2763D4D98(a3, &v28))
      {
        goto LABEL_2;
      }
    }

    v7 = (v28 + 2);
LABEL_6:
    v28 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v28;
}

unsigned __int8 *sub_276458848(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 4) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(a1 + 48);
    *v4 = 16;
    if (v13 > 0x7F)
    {
      v4[1] = v13 | 0x80;
      v14 = v13 >> 7;
      if (v13 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v14 | 0x80;
          v15 = v14 >> 7;
          ++v4;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
        *(v4 - 1) = v15;
        if (v6)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v4[2] = v14;
        v4 += 3;
        if (v6)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v4[1] = v13;
      v4 += 2;
      if (v6)
      {
        goto LABEL_28;
      }
    }

LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

  if (*a3 <= a2)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(a1 + 40);
  *v4 = 10;
  v8 = *(v7 + 20);
  if (v8 > 0x7F)
  {
    v4[1] = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = v4 + 3;
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
      v4[2] = v10;
      v9 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v8;
    v9 = v4 + 2;
  }

  v4 = sub_2764670A4(v7, v9, a3);
  if ((v6 & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v6 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_28:
  v4 = sub_2763DD938(a3, 3, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

LABEL_29:
  v4 = sub_2763DD938(a3, 4, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_33;
  }

LABEL_30:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(a1 + 52);
  *v4 = 40;
  v4[1] = v17;
  v4 += 2;
LABEL_33:
  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276458A64(uint64_t a1)
{
  if ((~*(a1 + 16) & 0xE) != 0)
  {
    v8 = sub_276457E6C(a1);
  }

  else
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = sub_276467344(v2);
    v8 = v6 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(a1 + 48) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v8 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v8 + ((*(a1 + 16) >> 3) & 2);
    return v8 + ((v9 >> 3) & 2);
  }
}

uint64_t sub_276458BB4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527170, 0);
  if (v4)
  {

    return sub_276458C5C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276458C5C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0x1F) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }

LABEL_14:
    *(v3 + 16) |= 4u;
    v6 = *(v3 + 40);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_276476600(v7);
      *(v3 + 40) = v6;
    }

    if (*(a2 + 40))
    {
      v8 = *(a2 + 40);
    }

    else
    {
      v8 = &qword_2812F1FA8;
    }

    result = sub_27644DC54(v6, v8);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
LABEL_10:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_9:
      *(v3 + 52) = *(a2 + 52);
      goto LABEL_10;
    }

LABEL_22:
    *(v3 + 48) = *(a2 + 48);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t *sub_276458D98(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276458488(result);

    return sub_276458BB4(v4, a2);
  }

  return result;
}

uint64_t sub_276458DE4(uint64_t a1)
{
  if ((~*(a1 + 16) & 0xE) != 0)
  {
    return 0;
  }

  else
  {
    return sub_27644DF5C(*(a1 + 40));
  }
}

uint64_t sub_276458E3C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288525728;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 48) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(dword_2812EDB28, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  return a1;
}

void sub_276458ECC(_Unwind_Exception *a1)
{
  sub_276477F70(v2);
  sub_27647791C(v1);
  _Unwind_Resume(a1);
}

void *sub_276458EF0(void *a1)
{
  sub_276458F3C(a1);
  sub_2763941F4(a1 + 1);
  sub_276477F70(a1 + 6);
  sub_27647791C(a1 + 3);
  return a1;
}

void *sub_276458F3C(void *result)
{
  if (result != &unk_2812F1A68)
  {
    v1 = result;
    v2 = result[9];
    if (v2)
    {
      v3 = sub_276466CA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4025A55CD8);
    }

    v4 = v1[10];
    if (v4)
    {
      TSP::UUID::~UUID(v4);
      MEMORY[0x277C98580]();
    }

    v5 = v1[11];
    if (v5)
    {
      TSP::UUID::~UUID(v5);
      MEMORY[0x277C98580]();
    }

    result = v1[12];
    if (result)
    {
      TSP::UUID::~UUID(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_276458FF4(void *a1)
{
  sub_276458EF0(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276459034(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      TSP::UUID::Clear(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  result = sub_2764778D0(a1 + 48);
  v6 = *(a1 + 16);
  if ((v6 & 0xF) == 0)
  {
    goto LABEL_11;
  }

  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = TSP::UUID::Clear(*(a1 + 80));
    if ((v6 & 4) == 0)
    {
LABEL_9:
      if ((v6 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_17;
  }

  result = sub_27644C464(*(a1 + 72));
  if ((v6 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_17:
  result = TSP::UUID::Clear(*(a1 + 88));
  if ((v6 & 8) != 0)
  {
LABEL_10:
    result = TSP::UUID::Clear(*(a1 + 96));
  }

LABEL_11:
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_2763D4FD4(v7);
  }

  return result;
}

google::protobuf::internal *sub_276459108(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v40 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v40))
    {
      return v40;
    }

    v5 = (v40 + 1);
    v6 = *v40;
    if ((*v40 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v40 + 2);
LABEL_6:
      v40 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v40, (v7 - 128));
    v40 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v38;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 3)
    {
      if (v8 == 1)
      {
        if (v6 == 10)
        {
          *(a1 + 16) |= 1u;
          v22 = *(a1 + 72);
          if (!v22)
          {
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v22 = sub_276476600(v23);
            *(a1 + 72) = v22;
            v5 = v40;
          }

          v24 = sub_2764AE490(a3, v22, v5);
          goto LABEL_73;
        }

        goto LABEL_66;
      }

      if (v8 != 2)
      {
        if (v8 != 3 || v6 != 26)
        {
          goto LABEL_66;
        }

        v10 = v5 - 1;
LABEL_16:
        v11 = (v10 + 1);
        v40 = (v10 + 1);
        v12 = *(a1 + 40);
        if (!v12)
        {
LABEL_17:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v12 = *(a1 + 40);
          v13 = *v12;
          goto LABEL_18;
        }

        v18 = *(a1 + 32);
        v13 = *v12;
        if (v18 >= *v12)
        {
          if (v13 == *(a1 + 36))
          {
            goto LABEL_17;
          }

LABEL_18:
          *v12 = v13 + 1;
          v14 = MEMORY[0x277C97B40](*(a1 + 24));
          LODWORD(v15) = v14;
          v16 = *(a1 + 32);
          v17 = *(a1 + 40) + 8 * v16;
          *(a1 + 32) = v16 + 1;
          *(v17 + 8) = v14;
          v11 = v40;
        }

        else
        {
          *(a1 + 32) = v18 + 1;
          v15 = *&v12[2 * v18 + 2];
        }

        v10 = sub_2764AE3C0(a3, v15, v11);
        v40 = v10;
        if (!v10)
        {
          return 0;
        }

        if (*a3 <= v10 || *v10 != 26)
        {
          continue;
        }

        goto LABEL_16;
      }

      if (v6 != 18)
      {
        goto LABEL_66;
      }

      *(a1 + 16) |= 2u;
      v19 = *(a1 + 80);
      if (!v19)
      {
        v32 = *(a1 + 8);
        if (v32)
        {
          v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
        }

        v33 = MEMORY[0x277C97B40](v32);
        LODWORD(v19) = v33;
        *(a1 + 80) = v33;
LABEL_64:
        v5 = v40;
        goto LABEL_65;
      }

      goto LABEL_65;
    }

    if (v8 == 4)
    {
      break;
    }

    if (v8 == 5)
    {
      if (v6 != 42)
      {
        goto LABEL_66;
      }

      *(a1 + 16) |= 4u;
      v19 = *(a1 + 88);
      if (!v19)
      {
        v34 = *(a1 + 8);
        if (v34)
        {
          v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = MEMORY[0x277C97B40](v34);
        LODWORD(v19) = v35;
        *(a1 + 88) = v35;
        goto LABEL_64;
      }
    }

    else
    {
      if (v8 != 6 || v6 != 50)
      {
        goto LABEL_66;
      }

      *(a1 + 16) |= 8u;
      v19 = *(a1 + 96);
      if (!v19)
      {
        v20 = *(a1 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = MEMORY[0x277C97B40](v20);
        LODWORD(v19) = v21;
        *(a1 + 96) = v21;
        goto LABEL_64;
      }
    }

LABEL_65:
    v24 = sub_2764AE3C0(a3, v19, v5);
LABEL_73:
    v40 = v24;
    if (!v24)
    {
      return 0;
    }
  }

  if (v6 == 34)
  {
    v25 = v5 - 1;
    while (1)
    {
      v40 = (v25 + 1);
      v26 = *(a1 + 64);
      if (!v26)
      {
        goto LABEL_48;
      }

      v27 = *(a1 + 56);
      v28 = *v26;
      if (v27 >= *v26)
      {
        break;
      }

      *(a1 + 56) = v27 + 1;
LABEL_50:
      v25 = google::protobuf::internal::InlineGreedyStringParser();
      v40 = v25;
      if (!v25)
      {
        return 0;
      }

      if (*a3 <= v25 || *v25 != 34)
      {
        goto LABEL_2;
      }
    }

    if (v28 == *(a1 + 60))
    {
LABEL_48:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
      v26 = *(a1 + 64);
      v28 = *v26;
    }

    *v26 = v28 + 1;
    v29 = sub_276380DF4(*(a1 + 48));
    v30 = *(a1 + 56);
    v31 = *(a1 + 64) + 8 * v30;
    *(a1 + 56) = v30 + 1;
    *(v31 + 8) = v29;
    goto LABEL_50;
  }

LABEL_66:
  if (v6)
  {
    v36 = (v6 & 7) == 4;
  }

  else
  {
    v36 = 1;
  }

  if (!v36)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v24 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_73;
  }

  *(a3 + 80) = v6 - 1;
  return v40;
}

unsigned __int8 *sub_2764594F0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 72);
    *v4 = 10;
    v8 = *(v7 + 20);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = v4 + 3;
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
        v4[2] = v10;
        v9 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v8;
      v9 = v4 + 2;
    }

    v4 = sub_2764670A4(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(a1 + 80);
    *v4 = 18;
    v14 = *(v13 + 5);
    if (v14 > 0x7F)
    {
      v4[1] = v14 | 0x80;
      v16 = v14 >> 7;
      if (v14 >> 14)
      {
        v15 = v4 + 3;
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
        v4[2] = v16;
        v15 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v14;
      v15 = v4 + 2;
    }

    v4 = TSP::UUID::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v21 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 26;
      v22 = *(v21 + 5);
      if (v22 > 0x7F)
      {
        v4[1] = v22 | 0x80;
        v24 = v22 >> 7;
        if (v22 >> 14)
        {
          v23 = v4 + 3;
          do
          {
            *(v23 - 1) = v24 | 0x80;
            v25 = v24 >> 7;
            ++v23;
            v26 = v24 >> 14;
            v24 >>= 7;
          }

          while (v26);
          *(v23 - 1) = v25;
        }

        else
        {
          v4[2] = v24;
          v23 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v22;
        v23 = v4 + 2;
      }

      v4 = TSP::UUID::_InternalSerialize(v21, v23, a3);
    }
  }

  v27 = *(a1 + 56);
  if (v27 >= 1)
  {
    v28 = 8;
    do
    {
      v4 = sub_2763E1648(a3, 4, *(*(a1 + 64) + v28), v4);
      v28 += 8;
      --v27;
    }

    while (v27);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v29 = *(a1 + 88);
    *v4 = 42;
    v30 = *(v29 + 5);
    if (v30 > 0x7F)
    {
      v4[1] = v30 | 0x80;
      v32 = v30 >> 7;
      if (v30 >> 14)
      {
        v31 = v4 + 3;
        do
        {
          *(v31 - 1) = v32 | 0x80;
          v33 = v32 >> 7;
          ++v31;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
        *(v31 - 1) = v33;
      }

      else
      {
        v4[2] = v32;
        v31 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v30;
      v31 = v4 + 2;
    }

    v4 = TSP::UUID::_InternalSerialize(v29, v31, a3);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v35 = *(a1 + 96);
    *v4 = 50;
    v36 = *(v35 + 5);
    if (v36 > 0x7F)
    {
      v4[1] = v36 | 0x80;
      v38 = v36 >> 7;
      if (v36 >> 14)
      {
        v37 = v4 + 3;
        do
        {
          *(v37 - 1) = v38 | 0x80;
          v39 = v38 >> 7;
          ++v37;
          v40 = v38 >> 14;
          v38 >>= 7;
        }

        while (v40);
        *(v37 - 1) = v39;
      }

      else
      {
        v4[2] = v38;
        v37 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v36;
      v37 = v4 + 2;
    }

    v4 = TSP::UUID::_InternalSerialize(v35, v37, a3);
  }

  v41 = *(a1 + 8);
  if ((v41 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v41 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_2764598B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_276467344(*(a1 + 72));
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

  v11 = *(a1 + 56);
  v12 = v5 + v11;
  if (v11 >= 1)
  {
    v13 = (*(a1 + 64) + 8);
    do
    {
      v14 = *v13++;
      v15 = *(v14 + 23);
      v16 = *(v14 + 8);
      if ((v15 & 0x80u) == 0)
      {
        v16 = v15;
      }

      v12 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      --v11;
    }

    while (v11);
  }

  v17 = *(a1 + 16);
  if ((v17 & 0xE) != 0)
  {
    if ((v17 & 2) != 0)
    {
      v20 = TSP::UUID::ByteSizeLong(*(a1 + 80));
      v12 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v17 & 4) == 0)
      {
LABEL_18:
        if ((v17 & 8) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    else if ((v17 & 4) == 0)
    {
      goto LABEL_18;
    }

    v21 = TSP::UUID::ByteSizeLong(*(a1 + 88));
    v12 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v17 & 8) != 0)
    {
LABEL_19:
      v18 = TSP::UUID::ByteSizeLong(*(a1 + 96));
      v12 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_20:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v12;
    return v12;
  }
}

uint64_t sub_276459AA4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527188, 0);
  if (v4)
  {

    return sub_276459B4C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276459B4C(uint64_t result, uint64_t a2)
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

  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    result = sub_2763F8F34((v3 + 48), v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 16);
  if ((v15 & 0xF) != 0)
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

        v16 = sub_276476600(v17);
        *(v3 + 72) = v16;
      }

      if (*(a2 + 72))
      {
        v18 = *(a2 + 72);
      }

      else
      {
        v18 = &qword_2812F1FA8;
      }

      result = sub_27644DC54(v16, v18);
    }

    v19 = MEMORY[0x277D809E0];
    if ((v15 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v20 = *(v3 + 80);
      if (!v20)
      {
        v21 = *(v3 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v20 = MEMORY[0x277C97B40](v21);
        *(v3 + 80) = v20;
      }

      if (*(a2 + 80))
      {
        v22 = *(a2 + 80);
      }

      else
      {
        v22 = v19;
      }

      result = TSP::UUID::MergeFrom(v20, v22);
      if ((v15 & 4) == 0)
      {
LABEL_21:
        if ((v15 & 8) == 0)
        {
          return result;
        }

        goto LABEL_39;
      }
    }

    else if ((v15 & 4) == 0)
    {
      goto LABEL_21;
    }

    *(v3 + 16) |= 4u;
    v23 = *(v3 + 88);
    if (!v23)
    {
      v24 = *(v3 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = MEMORY[0x277C97B40](v24);
      *(v3 + 88) = v23;
    }

    if (*(a2 + 88))
    {
      v25 = *(a2 + 88);
    }

    else
    {
      v25 = v19;
    }

    result = TSP::UUID::MergeFrom(v23, v25);
    if ((v15 & 8) != 0)
    {
LABEL_39:
      *(v3 + 16) |= 8u;
      v26 = *(v3 + 96);
      if (!v26)
      {
        v27 = *(v3 + 8);
        if (v27)
        {
          v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
        }

        v26 = MEMORY[0x277C97B40](v27);
        *(v3 + 96) = v26;
      }

      if (*(a2 + 96))
      {
        v28 = *(a2 + 96);
      }

      else
      {
        v28 = v19;
      }

      return TSP::UUID::MergeFrom(v26, v28);
    }
  }

  return result;
}

uint64_t sub_276459D98(uint64_t result, void *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276459034(result);

    return sub_276459AA4(v4, a2);
  }

  return result;
}

uint64_t sub_276459DE4(uint64_t a1)
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

  v6 = *(a1 + 16);
  if (v6)
  {
    result = sub_27644DF5C(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 2) != 0)
  {
    result = TSP::UUID::IsInitialized(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 4) != 0)
  {
    result = TSP::UUID::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 8) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(a1 + 96));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_276459ED0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885257D8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 48) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(dword_2812EDB00, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  return a1;
}

void sub_276459F60(_Unwind_Exception *a1)
{
  sub_276477F70(v2);
  sub_27647791C(v1);
  _Unwind_Resume(a1);
}

void *sub_276459F84(void *a1)
{
  sub_276459FD0(a1);
  sub_2763941F4(a1 + 1);
  sub_276477F70(a1 + 6);
  sub_27647791C(a1 + 3);
  return a1;
}

void *sub_276459FD0(void *result)
{
  if (result != &unk_2812F1AD0)
  {
    v1 = result;
    v2 = result[9];
    if (v2)
    {
      v3 = sub_276466CA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4025A55CD8);
    }

    v4 = v1[10];
    if (v4)
    {
      TSP::UUID::~UUID(v4);
      MEMORY[0x277C98580]();
    }

    v5 = v1[11];
    if (v5)
    {
      TSP::UUID::~UUID(v5);
      MEMORY[0x277C98580]();
    }

    result = v1[12];
    if (result)
    {
      TSP::UUID::~UUID(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27645A088(void *a1)
{
  sub_276459F84(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27645A0C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      TSP::UUID::Clear(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  result = sub_2764778D0(a1 + 48);
  v6 = *(a1 + 16);
  if ((v6 & 0xF) == 0)
  {
    goto LABEL_11;
  }

  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = TSP::UUID::Clear(*(a1 + 80));
    if ((v6 & 4) == 0)
    {
LABEL_9:
      if ((v6 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_17;
  }

  result = sub_27644C464(*(a1 + 72));
  if ((v6 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_17:
  result = TSP::UUID::Clear(*(a1 + 88));
  if ((v6 & 8) != 0)
  {
LABEL_10:
    result = TSP::UUID::Clear(*(a1 + 96));
  }

LABEL_11:
  v8 = *(a1 + 8);
  v7 = a1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_2763D4FD4(v7);
  }

  return result;
}

google::protobuf::internal *sub_27645A19C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v40 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v40))
    {
      return v40;
    }

    v5 = (v40 + 1);
    v6 = *v40;
    if ((*v40 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v40 + 2);
LABEL_6:
      v40 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v40, (v7 - 128));
    v40 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v38;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 3)
    {
      if (v8 == 1)
      {
        if (v6 == 10)
        {
          *(a1 + 16) |= 1u;
          v22 = *(a1 + 72);
          if (!v22)
          {
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v22 = sub_276476600(v23);
            *(a1 + 72) = v22;
            v5 = v40;
          }

          v24 = sub_2764AE490(a3, v22, v5);
          goto LABEL_73;
        }

        goto LABEL_66;
      }

      if (v8 != 2)
      {
        if (v8 != 3 || v6 != 26)
        {
          goto LABEL_66;
        }

        v10 = v5 - 1;
LABEL_16:
        v11 = (v10 + 1);
        v40 = (v10 + 1);
        v12 = *(a1 + 40);
        if (!v12)
        {
LABEL_17:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v12 = *(a1 + 40);
          v13 = *v12;
          goto LABEL_18;
        }

        v18 = *(a1 + 32);
        v13 = *v12;
        if (v18 >= *v12)
        {
          if (v13 == *(a1 + 36))
          {
            goto LABEL_17;
          }

LABEL_18:
          *v12 = v13 + 1;
          v14 = MEMORY[0x277C97B40](*(a1 + 24));
          LODWORD(v15) = v14;
          v16 = *(a1 + 32);
          v17 = *(a1 + 40) + 8 * v16;
          *(a1 + 32) = v16 + 1;
          *(v17 + 8) = v14;
          v11 = v40;
        }

        else
        {
          *(a1 + 32) = v18 + 1;
          v15 = *&v12[2 * v18 + 2];
        }

        v10 = sub_2764AE3C0(a3, v15, v11);
        v40 = v10;
        if (!v10)
        {
          return 0;
        }

        if (*a3 <= v10 || *v10 != 26)
        {
          continue;
        }

        goto LABEL_16;
      }

      if (v6 != 18)
      {
        goto LABEL_66;
      }

      *(a1 + 16) |= 2u;
      v19 = *(a1 + 80);
      if (!v19)
      {
        v32 = *(a1 + 8);
        if (v32)
        {
          v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
        }

        v33 = MEMORY[0x277C97B40](v32);
        LODWORD(v19) = v33;
        *(a1 + 80) = v33;
LABEL_64:
        v5 = v40;
        goto LABEL_65;
      }

      goto LABEL_65;
    }

    if (v8 == 4)
    {
      break;
    }

    if (v8 == 5)
    {
      if (v6 != 42)
      {
        goto LABEL_66;
      }

      *(a1 + 16) |= 4u;
      v19 = *(a1 + 88);
      if (!v19)
      {
        v34 = *(a1 + 8);
        if (v34)
        {
          v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = MEMORY[0x277C97B40](v34);
        LODWORD(v19) = v35;
        *(a1 + 88) = v35;
        goto LABEL_64;
      }
    }

    else
    {
      if (v8 != 6 || v6 != 50)
      {
        goto LABEL_66;
      }

      *(a1 + 16) |= 8u;
      v19 = *(a1 + 96);
      if (!v19)
      {
        v20 = *(a1 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = MEMORY[0x277C97B40](v20);
        LODWORD(v19) = v21;
        *(a1 + 96) = v21;
        goto LABEL_64;
      }
    }

LABEL_65:
    v24 = sub_2764AE3C0(a3, v19, v5);
LABEL_73:
    v40 = v24;
    if (!v24)
    {
      return 0;
    }
  }

  if (v6 == 34)
  {
    v25 = v5 - 1;
    while (1)
    {
      v40 = (v25 + 1);
      v26 = *(a1 + 64);
      if (!v26)
      {
        goto LABEL_48;
      }

      v27 = *(a1 + 56);
      v28 = *v26;
      if (v27 >= *v26)
      {
        break;
      }

      *(a1 + 56) = v27 + 1;
LABEL_50:
      v25 = google::protobuf::internal::InlineGreedyStringParser();
      v40 = v25;
      if (!v25)
      {
        return 0;
      }

      if (*a3 <= v25 || *v25 != 34)
      {
        goto LABEL_2;
      }
    }

    if (v28 == *(a1 + 60))
    {
LABEL_48:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
      v26 = *(a1 + 64);
      v28 = *v26;
    }

    *v26 = v28 + 1;
    v29 = sub_276380DF4(*(a1 + 48));
    v30 = *(a1 + 56);
    v31 = *(a1 + 64) + 8 * v30;
    *(a1 + 56) = v30 + 1;
    *(v31 + 8) = v29;
    goto LABEL_50;
  }

LABEL_66:
  if (v6)
  {
    v36 = (v6 & 7) == 4;
  }

  else
  {
    v36 = 1;
  }

  if (!v36)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v24 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_73;
  }

  *(a3 + 80) = v6 - 1;
  return v40;
}

unsigned __int8 *sub_27645A584(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 72);
    *v4 = 10;
    v8 = *(v7 + 20);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = v4 + 3;
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
        v4[2] = v10;
        v9 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v8;
      v9 = v4 + 2;
    }

    v4 = sub_2764670A4(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(a1 + 80);
    *v4 = 18;
    v14 = *(v13 + 5);
    if (v14 > 0x7F)
    {
      v4[1] = v14 | 0x80;
      v16 = v14 >> 7;
      if (v14 >> 14)
      {
        v15 = v4 + 3;
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
        v4[2] = v16;
        v15 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v14;
      v15 = v4 + 2;
    }

    v4 = TSP::UUID::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v21 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 26;
      v22 = *(v21 + 5);
      if (v22 > 0x7F)
      {
        v4[1] = v22 | 0x80;
        v24 = v22 >> 7;
        if (v22 >> 14)
        {
          v23 = v4 + 3;
          do
          {
            *(v23 - 1) = v24 | 0x80;
            v25 = v24 >> 7;
            ++v23;
            v26 = v24 >> 14;
            v24 >>= 7;
          }

          while (v26);
          *(v23 - 1) = v25;
        }

        else
        {
          v4[2] = v24;
          v23 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v22;
        v23 = v4 + 2;
      }

      v4 = TSP::UUID::_InternalSerialize(v21, v23, a3);
    }
  }

  v27 = *(a1 + 56);
  if (v27 >= 1)
  {
    v28 = 8;
    do
    {
      v4 = sub_2763E1648(a3, 4, *(*(a1 + 64) + v28), v4);
      v28 += 8;
      --v27;
    }

    while (v27);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v29 = *(a1 + 88);
    *v4 = 42;
    v30 = *(v29 + 5);
    if (v30 > 0x7F)
    {
      v4[1] = v30 | 0x80;
      v32 = v30 >> 7;
      if (v30 >> 14)
      {
        v31 = v4 + 3;
        do
        {
          *(v31 - 1) = v32 | 0x80;
          v33 = v32 >> 7;
          ++v31;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
        *(v31 - 1) = v33;
      }

      else
      {
        v4[2] = v32;
        v31 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v30;
      v31 = v4 + 2;
    }

    v4 = TSP::UUID::_InternalSerialize(v29, v31, a3);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v35 = *(a1 + 96);
    *v4 = 50;
    v36 = *(v35 + 5);
    if (v36 > 0x7F)
    {
      v4[1] = v36 | 0x80;
      v38 = v36 >> 7;
      if (v36 >> 14)
      {
        v37 = v4 + 3;
        do
        {
          *(v37 - 1) = v38 | 0x80;
          v39 = v38 >> 7;
          ++v37;
          v40 = v38 >> 14;
          v38 >>= 7;
        }

        while (v40);
        *(v37 - 1) = v39;
      }

      else
      {
        v4[2] = v38;
        v37 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v36;
      v37 = v4 + 2;
    }

    v4 = TSP::UUID::_InternalSerialize(v35, v37, a3);
  }

  v41 = *(a1 + 8);
  if ((v41 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v41 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27645A94C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_276467344(*(a1 + 72));
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

  v11 = *(a1 + 56);
  v12 = v5 + v11;
  if (v11 >= 1)
  {
    v13 = (*(a1 + 64) + 8);
    do
    {
      v14 = *v13++;
      v15 = *(v14 + 23);
      v16 = *(v14 + 8);
      if ((v15 & 0x80u) == 0)
      {
        v16 = v15;
      }

      v12 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      --v11;
    }

    while (v11);
  }

  v17 = *(a1 + 16);
  if ((v17 & 0xE) != 0)
  {
    if ((v17 & 2) != 0)
    {
      v20 = TSP::UUID::ByteSizeLong(*(a1 + 80));
      v12 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v17 & 4) == 0)
      {
LABEL_18:
        if ((v17 & 8) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    else if ((v17 & 4) == 0)
    {
      goto LABEL_18;
    }

    v21 = TSP::UUID::ByteSizeLong(*(a1 + 88));
    v12 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v17 & 8) != 0)
    {
LABEL_19:
      v18 = TSP::UUID::ByteSizeLong(*(a1 + 96));
      v12 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_20:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v12;
    return v12;
  }
}

uint64_t sub_27645AB38(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885271A0, 0);
  if (v4)
  {

    return sub_276459B4C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27645ABE0(uint64_t result, void *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27645A0C8(result);

    return sub_27645AB38(v4, a2);
  }

  return result;
}

uint64_t sub_27645AC2C(uint64_t a1)
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

  v6 = *(a1 + 16);
  if (v6)
  {
    result = sub_27644DF5C(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 2) != 0)
  {
    result = TSP::UUID::IsInitialized(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 4) != 0)
  {
    result = TSP::UUID::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 8) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(a1 + 96));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_27645AD18(uint64_t *a1)
{
  sub_27645AD4C(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_27645AD4C(uint64_t *result)
{
  if (result != &qword_2812F1B38)
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
      TSP::UUID::~UUID(v4);
      MEMORY[0x277C98580]();
    }

    v5 = v1[5];
    if (v5)
    {
      TSP::UUID::~UUID(v5);
      MEMORY[0x277C98580]();
    }

    v6 = v1[6];
    if (v6)
    {
      TSP::UUID::~UUID(v6);
      MEMORY[0x277C98580]();
    }

    result = v1[7];
    if (result)
    {
      TSP::UUID::~UUID(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27645AE18(uint64_t *a1)
{
  sub_27645AD18(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27645AE58(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    result = sub_27644C464(result[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_14:
      result = TSP::UUID::Clear(v1[5]);
      if ((v2 & 8) == 0)
      {
LABEL_6:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = TSP::UUID::Clear(v1[4]);
  if ((v2 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  result = TSP::UUID::Clear(v1[6]);
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = TSP::UUID::Clear(v1[7]);
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_27645AF00(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  while ((sub_2763D4D98(a3, &v26) & 1) == 0)
  {
    v5 = (v26 + 1);
    v6 = *v26;
    if ((*v26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v26 + 2);
LABEL_6:
      v26 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v7 - 128));
    v26 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v24;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_46;
        }

        *(a1 + 16) |= 4u;
        v9 = *(a1 + 40);
        if (!v9)
        {
          v15 = *(a1 + 8);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v16 = MEMORY[0x277C97B40](v15);
          LODWORD(v9) = v16;
          *(a1 + 40) = v16;
          goto LABEL_36;
        }
      }

      else if (v8 == 4)
      {
        if (v6 != 34)
        {
          goto LABEL_46;
        }

        *(a1 + 16) |= 8u;
        v9 = *(a1 + 48);
        if (!v9)
        {
          v17 = *(a1 + 8);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = MEMORY[0x277C97B40](v17);
          LODWORD(v9) = v18;
          *(a1 + 48) = v18;
          goto LABEL_36;
        }
      }

      else
      {
        if (v8 != 5 || v6 != 42)
        {
          goto LABEL_46;
        }

        *(a1 + 16) |= 0x10u;
        v9 = *(a1 + 56);
        if (!v9)
        {
          v10 = *(a1 + 8);
          if (v10)
          {
            v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = MEMORY[0x277C97B40](v10);
          LODWORD(v9) = v11;
          *(a1 + 56) = v11;
          goto LABEL_36;
        }
      }

      goto LABEL_37;
    }

    if (v8 != 1)
    {
      if (v8 != 2 || v6 != 18)
      {
LABEL_46:
        if (v6)
        {
          v22 = (v6 & 7) == 4;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          *(a3 + 80) = v6 - 1;
          return v26;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v19 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_38;
      }

      *(a1 + 16) |= 2u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        v13 = *(a1 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x277C97B40](v13);
        LODWORD(v9) = v14;
        *(a1 + 32) = v14;
LABEL_36:
        v5 = v26;
      }

LABEL_37:
      v19 = sub_2764AE3C0(a3, v9, v5);
      goto LABEL_38;
    }

    if (v6 != 10)
    {
      goto LABEL_46;
    }

    *(a1 + 16) |= 1u;
    v20 = *(a1 + 24);
    if (!v20)
    {
      v21 = *(a1 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = sub_276476600(v21);
      *(a1 + 24) = v20;
      v5 = v26;
    }

    v19 = sub_2764AE490(a3, v20, v5);
LABEL_38:
    v26 = v19;
    if (!v19)
    {
      return 0;
    }
  }

  return v26;
}

unsigned __int8 *sub_27645B198(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      goto LABEL_27;
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

  a2 = TSP::UUID::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(a1 + 40);
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

  a2 = TSP::UUID::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_47;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(a1 + 48);
  *a2 = 34;
  v25 = *(v24 + 5);
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

  a2 = TSP::UUID::_InternalSerialize(v24, v26, a3);
  if ((v5 & 0x10) != 0)
  {
LABEL_47:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v30 = *(a1 + 56);
    *a2 = 42;
    v31 = *(v30 + 5);
    if (v31 > 0x7F)
    {
      a2[1] = v31 | 0x80;
      v33 = v31 >> 7;
      if (v31 >> 14)
      {
        v32 = a2 + 3;
        do
        {
          *(v32 - 1) = v33 | 0x80;
          v34 = v33 >> 7;
          ++v32;
          v35 = v33 >> 14;
          v33 >>= 7;
        }

        while (v35);
        *(v32 - 1) = v34;
      }

      else
      {
        a2[2] = v33;
        v32 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v31;
      v32 = a2 + 2;
    }

    a2 = TSP::UUID::_InternalSerialize(v30, v32, a3);
  }

LABEL_57:
  v36 = *(a1 + 8);
  if ((v36 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v36 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27645B4F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_276467344(*(a1 + 24));
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
    v5 = TSP::UUID::ByteSizeLong(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = TSP::UUID::ByteSizeLong(*(a1 + 40));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t sub_27645B5C0(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    v5 = sub_27645B4F8(a1);
  }

  else
  {
    v2 = sub_276467344(*(a1 + 24));
    v3 = TSP::UUID::ByteSizeLong(*(a1 + 32));
    v4 = TSP::UUID::ByteSizeLong(*(a1 + 40));
    v5 = v2 + v3 + v4 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  v6 = *(a1 + 16);
  if ((v6 & 0x18) != 0)
  {
    if ((v6 & 8) != 0)
    {
      v7 = TSP::UUID::ByteSizeLong(*(a1 + 48));
      v5 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v6 & 0x10) != 0)
    {
      v8 = TSP::UUID::ByteSizeLong(*(a1 + 56));
      v5 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

uint64_t sub_27645B73C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885271B8, 0);
  if (v4)
  {

    return sub_27645B7E4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27645B7E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0x1F) == 0)
  {
    return result;
  }

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

  v9 = MEMORY[0x277D809E0];
  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

LABEL_26:
    *(v3 + 16) |= 4u;
    v13 = *(v3 + 40);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C97B40](v14);
      *(v3 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v15 = *(a2 + 40);
    }

    else
    {
      v15 = v9;
    }

    result = TSP::UUID::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
LABEL_16:
      if ((v5 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_42;
    }

    goto LABEL_34;
  }

  *(v3 + 16) |= 2u;
  v10 = *(v3 + 32);
  if (!v10)
  {
    v11 = *(v3 + 8);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = MEMORY[0x277C97B40](v11);
    *(v3 + 32) = v10;
  }

  if (*(a2 + 32))
  {
    v12 = *(a2 + 32);
  }

  else
  {
    v12 = v9;
  }

  result = TSP::UUID::MergeFrom(v10, v12);
  if ((v5 & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_15:
  if ((v5 & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_34:
  *(v3 + 16) |= 8u;
  v16 = *(v3 + 48);
  if (!v16)
  {
    v17 = *(v3 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = MEMORY[0x277C97B40](v17);
    *(v3 + 48) = v16;
  }

  if (*(a2 + 48))
  {
    v18 = *(a2 + 48);
  }

  else
  {
    v18 = v9;
  }

  result = TSP::UUID::MergeFrom(v16, v18);
  if ((v5 & 0x10) != 0)
  {
LABEL_42:
    *(v3 + 16) |= 0x10u;
    v19 = *(v3 + 56);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x277C97B40](v20);
      *(v3 + 56) = v19;
    }

    if (*(a2 + 56))
    {
      v21 = *(a2 + 56);
    }

    else
    {
      v21 = v9;
    }

    return TSP::UUID::MergeFrom(v19, v21);
  }

  return result;
}

uint64_t *sub_27645B9C0(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27645AE58(result);

    return sub_27645B73C(v4, a2);
  }

  return result;
}

uint64_t sub_27645BA0C(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    return 0;
  }

  result = sub_27644DF5C(*(a1 + 24));
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 2) != 0)
    {
      result = TSP::UUID::IsInitialized(*(a1 + 32));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 4) != 0)
    {
      result = TSP::UUID::IsInitialized(*(a1 + 40));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 8) != 0)
    {
      result = TSP::UUID::IsInitialized(*(a1 + 48));
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

    result = TSP::UUID::IsInitialized(*(a1 + 56));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t *sub_27645BAE0(uint64_t *a1)
{
  sub_27645BB14(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_27645BB14(uint64_t *result)
{
  if (result != &qword_2812F1B78)
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
      TSP::UUID::~UUID(v4);
      MEMORY[0x277C98580]();
    }

    v5 = v1[5];
    if (v5)
    {
      TSP::UUID::~UUID(v5);
      MEMORY[0x277C98580]();
    }

    v6 = v1[6];
    if (v6)
    {
      TSP::UUID::~UUID(v6);
      MEMORY[0x277C98580]();
    }

    result = v1[7];
    if (result)
    {
      TSP::UUID::~UUID(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27645BBE0(uint64_t *a1)
{
  sub_27645BAE0(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27645BC20(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    result = sub_27644C464(result[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_14:
      result = TSP::UUID::Clear(v1[5]);
      if ((v2 & 8) == 0)
      {
LABEL_6:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = TSP::UUID::Clear(v1[4]);
  if ((v2 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  result = TSP::UUID::Clear(v1[6]);
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = TSP::UUID::Clear(v1[7]);
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_27645BCC8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  while ((sub_2763D4D98(a3, &v26) & 1) == 0)
  {
    v5 = (v26 + 1);
    v6 = *v26;
    if ((*v26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v26 + 2);
LABEL_6:
      v26 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v7 - 128));
    v26 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v24;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_46;
        }

        *(a1 + 16) |= 4u;
        v9 = *(a1 + 40);
        if (!v9)
        {
          v15 = *(a1 + 8);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v16 = MEMORY[0x277C97B40](v15);
          LODWORD(v9) = v16;
          *(a1 + 40) = v16;
          goto LABEL_36;
        }
      }

      else if (v8 == 4)
      {
        if (v6 != 34)
        {
          goto LABEL_46;
        }

        *(a1 + 16) |= 8u;
        v9 = *(a1 + 48);
        if (!v9)
        {
          v17 = *(a1 + 8);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = MEMORY[0x277C97B40](v17);
          LODWORD(v9) = v18;
          *(a1 + 48) = v18;
          goto LABEL_36;
        }
      }

      else
      {
        if (v8 != 5 || v6 != 42)
        {
          goto LABEL_46;
        }

        *(a1 + 16) |= 0x10u;
        v9 = *(a1 + 56);
        if (!v9)
        {
          v10 = *(a1 + 8);
          if (v10)
          {
            v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = MEMORY[0x277C97B40](v10);
          LODWORD(v9) = v11;
          *(a1 + 56) = v11;
          goto LABEL_36;
        }
      }

      goto LABEL_37;
    }

    if (v8 != 1)
    {
      if (v8 != 2 || v6 != 18)
      {
LABEL_46:
        if (v6)
        {
          v22 = (v6 & 7) == 4;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          *(a3 + 80) = v6 - 1;
          return v26;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v19 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_38;
      }

      *(a1 + 16) |= 2u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        v13 = *(a1 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x277C97B40](v13);
        LODWORD(v9) = v14;
        *(a1 + 32) = v14;
LABEL_36:
        v5 = v26;
      }

LABEL_37:
      v19 = sub_2764AE3C0(a3, v9, v5);
      goto LABEL_38;
    }

    if (v6 != 10)
    {
      goto LABEL_46;
    }

    *(a1 + 16) |= 1u;
    v20 = *(a1 + 24);
    if (!v20)
    {
      v21 = *(a1 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = sub_276476600(v21);
      *(a1 + 24) = v20;
      v5 = v26;
    }

    v19 = sub_2764AE490(a3, v20, v5);
LABEL_38:
    v26 = v19;
    if (!v19)
    {
      return 0;
    }
  }

  return v26;
}

unsigned __int8 *sub_27645BF60(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      goto LABEL_27;
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

  a2 = TSP::UUID::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(a1 + 40);
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

  a2 = TSP::UUID::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_47;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(a1 + 48);
  *a2 = 34;
  v25 = *(v24 + 5);
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

  a2 = TSP::UUID::_InternalSerialize(v24, v26, a3);
  if ((v5 & 0x10) != 0)
  {
LABEL_47:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v30 = *(a1 + 56);
    *a2 = 42;
    v31 = *(v30 + 5);
    if (v31 > 0x7F)
    {
      a2[1] = v31 | 0x80;
      v33 = v31 >> 7;
      if (v31 >> 14)
      {
        v32 = a2 + 3;
        do
        {
          *(v32 - 1) = v33 | 0x80;
          v34 = v33 >> 7;
          ++v32;
          v35 = v33 >> 14;
          v33 >>= 7;
        }

        while (v35);
        *(v32 - 1) = v34;
      }

      else
      {
        a2[2] = v33;
        v32 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v31;
      v32 = a2 + 2;
    }

    a2 = TSP::UUID::_InternalSerialize(v30, v32, a3);
  }

LABEL_57:
  v36 = *(a1 + 8);
  if ((v36 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v36 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27645C2C0(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    v5 = sub_27645B4F8(a1);
  }

  else
  {
    v2 = sub_276467344(*(a1 + 24));
    v3 = TSP::UUID::ByteSizeLong(*(a1 + 32));
    v4 = TSP::UUID::ByteSizeLong(*(a1 + 40));
    v5 = v2 + v3 + v4 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  v6 = *(a1 + 16);
  if ((v6 & 0x18) != 0)
  {
    if ((v6 & 8) != 0)
    {
      v7 = TSP::UUID::ByteSizeLong(*(a1 + 48));
      v5 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v6 & 0x10) != 0)
    {
      v8 = TSP::UUID::ByteSizeLong(*(a1 + 56));
      v5 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

uint64_t sub_27645C43C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885271D0, 0);
  if (v4)
  {

    return sub_27645B7E4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_27645C4E4(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27645BC20(result);

    return sub_27645C43C(v4, a2);
  }

  return result;
}

uint64_t sub_27645C530(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    return 0;
  }

  result = sub_27644DF5C(*(a1 + 24));
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 2) != 0)
    {
      result = TSP::UUID::IsInitialized(*(a1 + 32));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 4) != 0)
    {
      result = TSP::UUID::IsInitialized(*(a1 + 40));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 8) != 0)
    {
      result = TSP::UUID::IsInitialized(*(a1 + 48));
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

    result = TSP::UUID::IsInitialized(*(a1 + 56));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_27645C604(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885259E8;
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
  *(a1 + 120) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  if (atomic_load_explicit(dword_2812EDC70, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 169) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  return a1;
}

void sub_27645C6C0(_Unwind_Exception *a1)
{
  sub_27647791C(v5);
  sub_276477F70(v4);
  sub_27647791C(v3);
  sub_27647800C(v2);
  sub_276477F70(v1);
  _Unwind_Resume(a1);
}

void *sub_27645C708(void *a1)
{
  sub_27645C778(a1);
  sub_2763941F4(a1 + 1);
  sub_27647791C(a1 + 15);
  sub_276477F70(a1 + 12);
  sub_27647791C(a1 + 9);
  sub_27647800C(a1 + 6);
  sub_276477F70(a1 + 3);
  return a1;
}

void *sub_27645C778(void *result)
{
  if (result != &unk_2812F1BB8)
  {
    v1 = result;
    v2 = result[18];
    if (v2)
    {
      v3 = sub_276466CA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4025A55CD8);
    }

    v4 = v1[19];
    if (v4)
    {
      TSP::UUID::~UUID(v4);
      MEMORY[0x277C98580]();
    }

    v5 = v1[20];
    if (v5)
    {
      TSP::UUID::~UUID(v5);
      MEMORY[0x277C98580]();
    }

    v6 = v1[21];
    if (v6)
    {
      TSP::UUID::~UUID(v6);
      MEMORY[0x277C98580]();
    }

    result = v1[22];
    if (result)
    {
      TSP::UUID::~UUID(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27645C844(void *a1)
{
  sub_27645C708(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27645C884(uint64_t a1)
{
  sub_2764778D0(a1 + 24);
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_27640567C(v4);
      --v2;
    }

    while (v2);
    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 80);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 88) + 8);
    do
    {
      v7 = *v6++;
      TSP::UUID::Clear(v7);
      --v5;
    }

    while (v5);
    *(a1 + 80) = 0;
  }

  result = sub_2764778D0(a1 + 96);
  v9 = *(a1 + 128);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 136) + 8);
    do
    {
      v11 = *v10++;
      result = TSP::UUID::Clear(v11);
      --v9;
    }

    while (v9);
    *(a1 + 128) = 0;
  }

  v12 = *(a1 + 16);
  if ((v12 & 0x1F) == 0)
  {
    goto LABEL_20;
  }

  if (v12)
  {
    result = sub_27644C464(*(a1 + 144));
    if ((v12 & 2) == 0)
    {
LABEL_16:
      if ((v12 & 4) == 0)
      {
        goto LABEL_17;
      }

LABEL_26:
      result = TSP::UUID::Clear(*(a1 + 160));
      if ((v12 & 8) == 0)
      {
LABEL_18:
        if ((v12 & 0x10) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      goto LABEL_27;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_16;
  }

  result = TSP::UUID::Clear(*(a1 + 152));
  if ((v12 & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_17:
  if ((v12 & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_27:
  result = TSP::UUID::Clear(*(a1 + 168));
  if ((v12 & 0x10) != 0)
  {
LABEL_19:
    result = TSP::UUID::Clear(*(a1 + 176));
  }

LABEL_20:
  v14 = *(a1 + 8);
  v13 = a1 + 8;
  *(v13 + 176) = 0;
  *(v13 + 8) = 0;
  if (v14)
  {

    return sub_2763D4FD4(v13);
  }

  return result;
}

google::protobuf::internal *sub_27645C9C4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v72 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v72) & 1) == 0)
  {
    while (1)
    {
      v7 = (v72 + 1);
      v8 = *v72;
      if ((*v72 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v72, (v9 - 128));
      v72 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_137;
      }

      v7 = TagFallback;
      v8 = v35;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 5)
      {
        if (v8 >> 3 <= 2)
        {
          if (v10 == 1)
          {
            if (v8 == 10)
            {
              *(a1 + 16) |= 1u;
              v36 = *(a1 + 144);
              if (!v36)
              {
                v37 = *(a1 + 8);
                if (v37)
                {
                  v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
                }

                v36 = sub_276476600(v37);
                *(a1 + 144) = v36;
                v7 = v72;
              }

              v38 = sub_2764AE490(a3, v36, v7);
              goto LABEL_106;
            }

LABEL_127:
            if (v8)
            {
              v69 = (v8 & 7) == 4;
            }

            else
            {
              v69 = 1;
            }

            if (v69)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_2763D4E10((a1 + 8));
            }

            v38 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_106;
          }

          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_127;
          }

          *(a1 + 16) |= 2u;
          v11 = *(a1 + 152);
          if (v11)
          {
            goto LABEL_105;
          }

          v32 = *(a1 + 8);
          if (v32)
          {
            v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = MEMORY[0x277C97B40](v32);
          LODWORD(v11) = v33;
          *(a1 + 152) = v33;
LABEL_104:
          v7 = v72;
          goto LABEL_105;
        }

        if (v10 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_127;
          }

          *(a1 + 16) |= 4u;
          v11 = *(a1 + 160);
          if (v11)
          {
            goto LABEL_105;
          }

          v55 = *(a1 + 8);
          if (v55)
          {
            v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
          }

          v56 = MEMORY[0x277C97B40](v55);
          LODWORD(v11) = v56;
          *(a1 + 160) = v56;
          goto LABEL_104;
        }

        if (v10 != 4)
        {
          if (v10 != 5 || v8 != 42)
          {
            goto LABEL_127;
          }

          v14 = (v7 - 1);
          while (2)
          {
            v15 = (v14 + 1);
            v72 = (v14 + 1);
            v16 = *(a1 + 64);
            if (!v16)
            {
LABEL_24:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v16 = *(a1 + 64);
              v17 = *v16;
              goto LABEL_25;
            }

            v21 = *(a1 + 56);
            v17 = *v16;
            if (v21 >= *v16)
            {
              if (v17 == *(a1 + 60))
              {
                goto LABEL_24;
              }

LABEL_25:
              *v16 = v17 + 1;
              v18 = sub_276407088(*(a1 + 48));
              v19 = *(a1 + 56);
              v20 = *(a1 + 64) + 8 * v19;
              *(a1 + 56) = v19 + 1;
              *(v20 + 8) = v18;
              v15 = v72;
            }

            else
            {
              *(a1 + 56) = v21 + 1;
              v18 = *&v16[2 * v21 + 2];
            }

            v14 = sub_2764AF330(a3, v18, v15);
            v72 = v14;
            if (!v14)
            {
              goto LABEL_137;
            }

            if (*a3 <= v14 || *v14 != 42)
            {
              goto LABEL_107;
            }

            continue;
          }
        }

        if (v8 != 34)
        {
          goto LABEL_127;
        }

        v39 = v7 - 1;
        while (2)
        {
          v72 = (v39 + 1);
          v40 = *(a1 + 40);
          if (!v40)
          {
            goto LABEL_75;
          }

          v41 = *(a1 + 32);
          v42 = *v40;
          if (v41 < *v40)
          {
            *(a1 + 32) = v41 + 1;
            goto LABEL_77;
          }

          if (v42 == *(a1 + 36))
          {
LABEL_75:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v40 = *(a1 + 40);
            v42 = *v40;
          }

          *v40 = v42 + 1;
          v43 = sub_276380DF4(*(a1 + 24));
          v44 = *(a1 + 32);
          v45 = *(a1 + 40) + 8 * v44;
          *(a1 + 32) = v44 + 1;
          *(v45 + 8) = v43;
LABEL_77:
          v39 = google::protobuf::internal::InlineGreedyStringParser();
          v72 = v39;
          if (!v39)
          {
            goto LABEL_137;
          }

          if (*a3 <= v39 || *v39 != 34)
          {
            goto LABEL_107;
          }

          continue;
        }
      }

      if (v8 >> 3 > 8)
      {
        if (v10 != 9)
        {
          if (v10 != 11)
          {
            if (v10 != 12 || v8 != 98)
            {
              goto LABEL_127;
            }

            v22 = v7 - 1;
            while (2)
            {
              v23 = (v22 + 1);
              v72 = (v22 + 1);
              v24 = *(a1 + 136);
              if (!v24)
              {
LABEL_40:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120));
                v24 = *(a1 + 136);
                v25 = *v24;
                goto LABEL_41;
              }

              v30 = *(a1 + 128);
              v25 = *v24;
              if (v30 >= *v24)
              {
                if (v25 == *(a1 + 132))
                {
                  goto LABEL_40;
                }

LABEL_41:
                *v24 = v25 + 1;
                v26 = MEMORY[0x277C97B40](*(a1 + 120));
                LODWORD(v27) = v26;
                v28 = *(a1 + 128);
                v29 = *(a1 + 136) + 8 * v28;
                *(a1 + 128) = v28 + 1;
                *(v29 + 8) = v26;
                v23 = v72;
              }

              else
              {
                *(a1 + 128) = v30 + 1;
                v27 = *&v24[2 * v30 + 2];
              }

              v22 = sub_2764AE3C0(a3, v27, v23);
              v72 = v22;
              if (!v22)
              {
                goto LABEL_137;
              }

              if (*a3 <= v22 || *v22 != 98)
              {
                goto LABEL_107;
              }

              continue;
            }
          }

          if (v8 != 90)
          {
            goto LABEL_127;
          }

          v48 = v7 - 1;
          while (2)
          {
            v72 = (v48 + 1);
            v49 = *(a1 + 112);
            if (!v49)
            {
              goto LABEL_93;
            }

            v50 = *(a1 + 104);
            v51 = *v49;
            if (v50 < *v49)
            {
              *(a1 + 104) = v50 + 1;
              goto LABEL_95;
            }

            if (v51 == *(a1 + 108))
            {
LABEL_93:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
              v49 = *(a1 + 112);
              v51 = *v49;
            }

            *v49 = v51 + 1;
            v52 = sub_276380DF4(*(a1 + 96));
            v53 = *(a1 + 104);
            v54 = *(a1 + 112) + 8 * v53;
            *(a1 + 104) = v53 + 1;
            *(v54 + 8) = v52;
LABEL_95:
            v48 = google::protobuf::internal::InlineGreedyStringParser();
            v72 = v48;
            if (!v48)
            {
              goto LABEL_137;
            }

            if (*a3 <= v48 || *v48 != 90)
            {
              goto LABEL_107;
            }

            continue;
          }
        }

        if (v8 != 74)
        {
          goto LABEL_127;
        }

        v60 = v7 - 1;
        while (2)
        {
          v61 = (v60 + 1);
          v72 = (v60 + 1);
          v62 = *(a1 + 88);
          if (!v62)
          {
LABEL_117:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
            v62 = *(a1 + 88);
            v63 = *v62;
            goto LABEL_118;
          }

          v68 = *(a1 + 80);
          v63 = *v62;
          if (v68 >= *v62)
          {
            if (v63 == *(a1 + 84))
            {
              goto LABEL_117;
            }

LABEL_118:
            *v62 = v63 + 1;
            v64 = MEMORY[0x277C97B40](*(a1 + 72));
            LODWORD(v65) = v64;
            v66 = *(a1 + 80);
            v67 = *(a1 + 88) + 8 * v66;
            *(a1 + 80) = v66 + 1;
            *(v67 + 8) = v64;
            v61 = v72;
          }

          else
          {
            *(a1 + 80) = v68 + 1;
            v65 = *&v62[2 * v68 + 2];
          }

          v60 = sub_2764AE3C0(a3, v65, v61);
          v72 = v60;
          if (!v60)
          {
            goto LABEL_137;
          }

          if (*a3 <= v60 || *v60 != 74)
          {
            goto LABEL_107;
          }

          continue;
        }
      }

      if (v10 != 6)
      {
        if (v10 != 7)
        {
          if (v10 == 8 && v8 == 66)
          {
            *(a1 + 16) |= 0x10u;
            v11 = *(a1 + 176);
            if (!v11)
            {
              v12 = *(a1 + 8);
              if (v12)
              {
                v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
              }

              v13 = MEMORY[0x277C97B40](v12);
              LODWORD(v11) = v13;
              *(a1 + 176) = v13;
              goto LABEL_104;
            }

LABEL_105:
            v38 = sub_2764AE3C0(a3, v11, v7);
LABEL_106:
            v72 = v38;
            if (!v38)
            {
              goto LABEL_137;
            }

            goto LABEL_107;
          }

          goto LABEL_127;
        }

        if (v8 != 58)
        {
          goto LABEL_127;
        }

        *(a1 + 16) |= 8u;
        v11 = *(a1 + 168);
        if (v11)
        {
          goto LABEL_105;
        }

        v46 = *(a1 + 8);
        if (v46)
        {
          v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
        }

        v47 = MEMORY[0x277C97B40](v46);
        LODWORD(v11) = v47;
        *(a1 + 168) = v47;
        goto LABEL_104;
      }

      if (v8 != 48)
      {
        goto LABEL_127;
      }

      v5 |= 0x20u;
      v58 = (v7 + 1);
      v57 = *v7;
      if ((v57 & 0x8000000000000000) == 0)
      {
        goto LABEL_113;
      }

      v59 = *v58;
      v57 = (v59 << 7) + v57 - 128;
      if ((v59 & 0x80000000) == 0)
      {
        v58 = (v7 + 2);
LABEL_113:
        v72 = v58;
        *(a1 + 184) = v57 != 0;
        goto LABEL_107;
      }

      v70 = google::protobuf::internal::VarintParseSlow64(v7, v57);
      v72 = v70;
      *(a1 + 184) = v71 != 0;
      if (!v70)
      {
LABEL_137:
        v72 = 0;
        goto LABEL_2;
      }

LABEL_107:
      if (sub_2763D4D98(a3, &v72))
      {
        goto LABEL_2;
      }
    }

    v7 = (v72 + 2);
LABEL_6:
    v72 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v72;
}

unsigned __int8 *sub_27645D10C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 144);
    *v4 = 10;
    v8 = *(v7 + 20);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = v4 + 3;
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
        v4[2] = v10;
        v9 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v8;
      v9 = v4 + 2;
    }

    v4 = sub_2764670A4(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(a1 + 152);
  *v4 = 18;
  v14 = *(v13 + 5);
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = v4 + 3;
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
      v4[2] = v16;
      v15 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v14;
    v15 = v4 + 2;
  }

  v4 = TSP::UUID::_InternalSerialize(v13, v15, a3);
  if ((v6 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v19 = *(a1 + 160);
    *v4 = 26;
    v20 = *(v19 + 5);
    if (v20 > 0x7F)
    {
      v4[1] = v20 | 0x80;
      v22 = v20 >> 7;
      if (v20 >> 14)
      {
        v21 = v4 + 3;
        do
        {
          *(v21 - 1) = v22 | 0x80;
          v23 = v22 >> 7;
          ++v21;
          v24 = v22 >> 14;
          v22 >>= 7;
        }

        while (v24);
        *(v21 - 1) = v23;
      }

      else
      {
        v4[2] = v22;
        v21 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v20;
      v21 = v4 + 2;
    }

    v4 = TSP::UUID::_InternalSerialize(v19, v21, a3);
  }

LABEL_35:
  v25 = *(a1 + 32);
  if (v25 >= 1)
  {
    v26 = 8;
    do
    {
      v4 = sub_2763E1648(a3, 4, *(*(a1 + 40) + v26), v4);
      v26 += 8;
      --v25;
    }

    while (v25);
  }

  v27 = *(a1 + 56);
  if (v27)
  {
    for (i = 0; i != v27; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v29 = *(*(a1 + 64) + 8 * i + 8);
      *v4 = 42;
      v30 = *(v29 + 40);
      if (v30 > 0x7F)
      {
        v4[1] = v30 | 0x80;
        v32 = v30 >> 7;
        if (v30 >> 14)
        {
          v31 = v4 + 3;
          do
          {
            *(v31 - 1) = v32 | 0x80;
            v33 = v32 >> 7;
            ++v31;
            v34 = v32 >> 14;
            v32 >>= 7;
          }

          while (v34);
          *(v31 - 1) = v33;
        }

        else
        {
          v4[2] = v32;
          v31 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v30;
        v31 = v4 + 2;
      }

      v4 = sub_2764058C8(v29, v31, a3);
    }
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v35 = *(a1 + 184);
    *v4 = 48;
    v4[1] = v35;
    v4 += 2;
    if ((v6 & 8) == 0)
    {
LABEL_52:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_67;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_52;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v36 = *(a1 + 168);
  *v4 = 58;
  v37 = *(v36 + 5);
  if (v37 > 0x7F)
  {
    v4[1] = v37 | 0x80;
    v39 = v37 >> 7;
    if (v37 >> 14)
    {
      v38 = v4 + 3;
      do
      {
        *(v38 - 1) = v39 | 0x80;
        v40 = v39 >> 7;
        ++v38;
        v41 = v39 >> 14;
        v39 >>= 7;
      }

      while (v41);
      *(v38 - 1) = v40;
    }

    else
    {
      v4[2] = v39;
      v38 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v37;
    v38 = v4 + 2;
  }

  v4 = TSP::UUID::_InternalSerialize(v36, v38, a3);
  if ((v6 & 0x10) != 0)
  {
LABEL_67:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v42 = *(a1 + 176);
    *v4 = 66;
    v43 = *(v42 + 5);
    if (v43 > 0x7F)
    {
      v4[1] = v43 | 0x80;
      v45 = v43 >> 7;
      if (v43 >> 14)
      {
        v44 = v4 + 3;
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
        v4[2] = v45;
        v44 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v43;
      v44 = v4 + 2;
    }

    v4 = TSP::UUID::_InternalSerialize(v42, v44, a3);
  }

LABEL_77:
  v48 = *(a1 + 80);
  if (v48)
  {
    for (j = 0; j != v48; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v50 = *(*(a1 + 88) + 8 * j + 8);
      *v4 = 74;
      v51 = *(v50 + 5);
      if (v51 > 0x7F)
      {
        v4[1] = v51 | 0x80;
        v53 = v51 >> 7;
        if (v51 >> 14)
        {
          v52 = v4 + 3;
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
          v4[2] = v53;
          v52 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v51;
        v52 = v4 + 2;
      }

      v4 = TSP::UUID::_InternalSerialize(v50, v52, a3);
    }
  }

  v56 = *(a1 + 104);
  if (v56 >= 1)
  {
    v57 = 8;
    do
    {
      v4 = sub_2763E1648(a3, 11, *(*(a1 + 112) + v57), v4);
      v57 += 8;
      --v56;
    }

    while (v56);
  }

  v58 = *(a1 + 128);
  if (v58)
  {
    for (k = 0; k != v58; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v60 = *(*(a1 + 136) + 8 * k + 8);
      *v4 = 98;
      v61 = *(v60 + 5);
      if (v61 > 0x7F)
      {
        v4[1] = v61 | 0x80;
        v63 = v61 >> 7;
        if (v61 >> 14)
        {
          v62 = v4 + 3;
          do
          {
            *(v62 - 1) = v63 | 0x80;
            v64 = v63 >> 7;
            ++v62;
            v65 = v63 >> 14;
            v63 >>= 7;
          }

          while (v65);
          *(v62 - 1) = v64;
        }

        else
        {
          v4[2] = v63;
          v62 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v61;
        v62 = v4 + 2;
      }

      v4 = TSP::UUID::_InternalSerialize(v60, v62, a3);
    }
  }

  v66 = *(a1 + 8);
  if ((v66 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v66 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27645D760(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_276467344(*(a1 + 144));
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
    v5 = TSP::UUID::ByteSizeLong(*(a1 + 152));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = TSP::UUID::ByteSizeLong(*(a1 + 160));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t sub_27645D828(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    v5 = sub_27645D760(a1);
  }

  else
  {
    v2 = sub_276467344(*(a1 + 144));
    v3 = TSP::UUID::ByteSizeLong(*(a1 + 152));
    v4 = TSP::UUID::ByteSizeLong(*(a1 + 160));
    v5 = v2 + v3 + v4 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  v6 = *(a1 + 32);
  v7 = v5 + v6;
  if (v6 >= 1)
  {
    v8 = (*(a1 + 40) + 8);
    do
    {
      v9 = *v8++;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v7 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      --v6;
    }

    while (v6);
  }

  v12 = *(a1 + 56);
  v13 = v7 + v12;
  v14 = *(a1 + 64);
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
      v18 = sub_2764059EC(v17);
      v13 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6);
      v16 -= 8;
    }

    while (v16);
  }

  v19 = *(a1 + 80);
  v20 = v13 + v19;
  v21 = *(a1 + 88);
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
      v25 = TSP::UUID::ByteSizeLong(v24);
      v20 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6);
      v23 -= 8;
    }

    while (v23);
  }

  v26 = *(a1 + 104);
  v27 = v20 + v26;
  if (v26 >= 1)
  {
    v28 = (*(a1 + 112) + 8);
    do
    {
      v29 = *v28++;
      v30 = *(v29 + 23);
      v31 = *(v29 + 8);
      if ((v30 & 0x80u) == 0)
      {
        v31 = v30;
      }

      v27 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6);
      --v26;
    }

    while (v26);
  }

  v32 = *(a1 + 128);
  v33 = v27 + v32;
  v34 = *(a1 + 136);
  if (v34)
  {
    v35 = (v34 + 8);
  }

  else
  {
    v35 = 0;
  }

  if (v32)
  {
    v36 = 8 * v32;
    do
    {
      v37 = *v35++;
      v38 = TSP::UUID::ByteSizeLong(v37);
      v33 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6);
      v36 -= 8;
    }

    while (v36);
  }

  v39 = *(a1 + 16);
  if ((v39 & 0x38) != 0)
  {
    if ((v39 & 8) != 0)
    {
      v40 = TSP::UUID::ByteSizeLong(*(a1 + 168));
      v33 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v39 & 0x10) != 0)
    {
      v41 = TSP::UUID::ByteSizeLong(*(a1 + 176));
      v33 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v33 += (v39 >> 4) & 2;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v33;
    return v33;
  }
}

uint64_t sub_27645DB4C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885271E8, 0);
  if (v4)
  {

    return sub_27645DBF4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27645DBF4(uint64_t result, uint64_t a2)
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
    result = sub_2763F8F34((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    result = sub_2763F8FE0(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 72));
    result = sub_2764779A0(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 104);
  if (v20)
  {
    v21 = *(a2 + 112);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 96));
    result = sub_2763F8F34((v3 + 96), v22, (v21 + 8), v20, **(v3 + 112) - *(v3 + 104));
    v23 = *(v3 + 104) + v20;
    *(v3 + 104) = v23;
    v24 = *(v3 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 128);
  if (v25)
  {
    v26 = *(a2 + 136);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 120));
    result = sub_2764779A0(v3 + 120, v27, (v26 + 8), v25, **(v3 + 136) - *(v3 + 128));
    v28 = *(v3 + 128) + v25;
    *(v3 + 128) = v28;
    v29 = *(v3 + 136);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 16);
  if ((v30 & 0x3F) != 0)
  {
    if (v30)
    {
      *(v3 + 16) |= 1u;
      v31 = *(v3 + 144);
      if (!v31)
      {
        v32 = *(v3 + 8);
        if (v32)
        {
          v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
        }

        v31 = sub_276476600(v32);
        *(v3 + 144) = v31;
      }

      if (*(a2 + 144))
      {
        v33 = *(a2 + 144);
      }

      else
      {
        v33 = &qword_2812F1FA8;
      }

      result = sub_27644DC54(v31, v33);
    }

    v34 = MEMORY[0x277D809E0];
    if ((v30 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v35 = *(v3 + 152);
      if (!v35)
      {
        v36 = *(v3 + 8);
        if (v36)
        {
          v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = MEMORY[0x277C97B40](v36);
        *(v3 + 152) = v35;
      }

      if (*(a2 + 152))
      {
        v37 = *(a2 + 152);
      }

      else
      {
        v37 = v34;
      }

      result = TSP::UUID::MergeFrom(v35, v37);
      if ((v30 & 4) == 0)
      {
LABEL_30:
        if ((v30 & 8) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_52;
      }
    }

    else if ((v30 & 4) == 0)
    {
      goto LABEL_30;
    }

    *(v3 + 16) |= 4u;
    v38 = *(v3 + 160);
    if (!v38)
    {
      v39 = *(v3 + 8);
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      v38 = MEMORY[0x277C97B40](v39);
      *(v3 + 160) = v38;
    }

    if (*(a2 + 160))
    {
      v40 = *(a2 + 160);
    }

    else
    {
      v40 = v34;
    }

    result = TSP::UUID::MergeFrom(v38, v40);
    if ((v30 & 8) == 0)
    {
LABEL_31:
      if ((v30 & 0x10) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_60;
    }

LABEL_52:
    *(v3 + 16) |= 8u;
    v41 = *(v3 + 168);
    if (!v41)
    {
      v42 = *(v3 + 8);
      if (v42)
      {
        v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
      }

      v41 = MEMORY[0x277C97B40](v42);
      *(v3 + 168) = v41;
    }

    if (*(a2 + 168))
    {
      v43 = *(a2 + 168);
    }

    else
    {
      v43 = v34;
    }

    result = TSP::UUID::MergeFrom(v41, v43);
    if ((v30 & 0x10) == 0)
    {
LABEL_32:
      if ((v30 & 0x20) == 0)
      {
LABEL_34:
        *(v3 + 16) |= v30;
        return result;
      }

LABEL_33:
      *(v3 + 184) = *(a2 + 184);
      goto LABEL_34;
    }

LABEL_60:
    *(v3 + 16) |= 0x10u;
    v44 = *(v3 + 176);
    if (!v44)
    {
      v45 = *(v3 + 8);
      if (v45)
      {
        v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
      }

      v44 = MEMORY[0x277C97B40](v45);
      *(v3 + 176) = v44;
    }

    if (*(a2 + 176))
    {
      v46 = *(a2 + 176);
    }

    else
    {
      v46 = v34;
    }

    result = TSP::UUID::MergeFrom(v44, v46);
    if ((v30 & 0x20) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  return result;
}