uint64_t sub_275FAE508(int a1, uint64_t a2, TSWP::MergeFieldTypeArchive *a3, unsigned __int8 *a4, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*this <= a4)
  {
    a4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a4);
  }

  v9 = 8 * a1;
  if ((8 * a1) > 0x7F)
  {
    *a4 = v9 | 0x82;
    v11 = v9 >> 7;
    if (v9 >> 14)
    {
      v10 = a4 + 2;
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
      a4[1] = v11;
      v10 = a4 + 2;
    }
  }

  else
  {
    *a4 = v9 | 2;
    v10 = a4 + 1;
  }

  v14 = *(a2 + 23);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 8);
  }

  v15 = *(a3 + 5) + v14 + ((9 * (__clz(*(a3 + 5) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v15 > 0x7F)
  {
    *v10 = v15 | 0x80;
    v17 = v15 >> 7;
    if (v15 >> 14)
    {
      v16 = v10 + 2;
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
      v10[1] = v17;
      v16 = v10 + 2;
    }
  }

  else
  {
    *v10 = v15;
    v16 = v10 + 1;
  }

  if (*this <= v16)
  {
    v16 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v16);
  }

  v20 = sub_275FA1C9C(this, 1, a2, v16);
  if (*this <= v20)
  {
    v20 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v20);
  }

  *v20 = 18;
  v21 = *(a3 + 5);
  if (v21 > 0x7F)
  {
    v20[1] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = v20 + 3;
      do
      {
        *(v22 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++v22;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(v22 - 1) = v24;
    }

    else
    {
      v20[2] = v23;
      v22 = v20 + 3;
    }
  }

  else
  {
    v20[1] = v21;
    v22 = v20 + 2;
  }

  return TSWP::MergeFieldTypeArchive::_InternalSerialize(a3, v22, this);
}

uint64_t sub_275FAE72C(uint64_t a1)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 24));
  v2 = *(a1 + 120);
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 24));
  v3 = *(a1 + 144);
  v4 = *(a1 + 128);
  if (v4 <= v3)
  {
    v6 = 0;
  }

  else
  {
    v5 = *(a1 + 152);
    while (1)
    {
      v6 = *(v5 + 8 * v3);
      if (v6)
      {
        break;
      }

      if (v4 == ++v3)
      {
        v6 = 0;
        v3 = *(a1 + 128);
        goto LABEL_9;
      }
    }

    if (v6 == *(v5 + 8 * (v3 ^ 1)))
    {
      v6 = *(*v6 + 40);
    }
  }

LABEL_9:
  *v29 = v6;
  v30 = a1 + 120;
  v31 = v3;
  while (1)
  {
    google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 24));
    if (!*v29)
    {
      break;
    }

    v2 += sub_275FAEA98(*v29, (*v29 + 24));
    sub_275FB4204(v29);
  }

  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 168));
  v7 = *(a1 + 264) + v2;
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 168));
  v8 = *(a1 + 288);
  v9 = *(a1 + 272);
  if (v9 <= v8)
  {
    v11 = 0;
  }

  else
  {
    v10 = *(a1 + 296);
    while (1)
    {
      v11 = *(v10 + 8 * v8);
      if (v11)
      {
        break;
      }

      if (v9 == ++v8)
      {
        v11 = 0;
        v8 = *(a1 + 272);
        goto LABEL_20;
      }
    }

    if (v11 == *(v10 + 8 * (v8 ^ 1)))
    {
      v11 = *(*v11 + 40);
    }
  }

LABEL_20:
  *v29 = v11;
  v30 = a1 + 264;
  v31 = v8;
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 168));
  if (v11)
  {
    do
    {
      v7 += sub_275FAEA98(v11, (v11 + 24));
      sub_275FB4204(v29);
      google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField((a1 + 168));
      v11 = *v29;
    }

    while (*v29);
  }

  v12 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (v12)
    {
      v13 = *(a1 + 312) & 0xFFFFFFFFFFFFFFFELL;
      v14 = *(v13 + 23);
      v15 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      v7 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v12 & 2) == 0)
      {
LABEL_25:
        if ((v12 & 4) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_37;
      }
    }

    else if ((v12 & 2) == 0)
    {
      goto LABEL_25;
    }

    v16 = *(a1 + 320) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v16 + 23);
    v18 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v18 = v17;
    }

    v7 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v12 & 4) == 0)
    {
LABEL_26:
      if ((v12 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_40;
    }

LABEL_37:
    v19 = *(a1 + 328) & 0xFFFFFFFFFFFFFFFELL;
    v20 = *(v19 + 23);
    v21 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v21 = v20;
    }

    v7 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v12 & 8) == 0)
    {
LABEL_27:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_41;
    }

LABEL_40:
    v22 = TSP::UUID::ByteSizeLong(*(a1 + 336));
    v7 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v12 & 0x10) == 0)
    {
LABEL_28:
      if ((v12 & 0x20) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_42;
    }

LABEL_41:
    v23 = sub_275FACB04(*(a1 + 344));
    v7 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v12 & 0x20) == 0)
    {
LABEL_29:
      if ((v12 & 0x40) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_43;
    }

LABEL_42:
    v24 = sub_275FACB04(*(a1 + 352));
    v7 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v12 & 0x40) == 0)
    {
LABEL_47:
      v7 += (v12 >> 6) & 2;
      goto LABEL_48;
    }

LABEL_43:
    v25 = *(a1 + 360);
    if (v25 < 0)
    {
      v26 = 11;
    }

    else
    {
      v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v7 += v26;
    goto LABEL_47;
  }

LABEL_48:
  v27 = v7 + ((v12 >> 7) & 2);
  if (*(a1 + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(a1 + 20) = v27;
  return v27;
}

uint64_t sub_275FAEA98(uint64_t a1, TSWP::MergeFieldTypeArchive *this)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  v3 = v2 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
  v4 = TSWP::MergeFieldTypeArchive::ByteSizeLong(this);
  v5 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + v3;
  return v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6);
}

uint64_t sub_275FAEB28(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500A78, 0);
  if (v4)
  {

    return sub_275FA6AA0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275FAEBD0(uint64_t result, void *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275FA476C(result);

    return sub_275FAEB28(v4, a2);
  }

  return result;
}

uint64_t *sub_275FAEC1C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  result = sub_275FB8A60((a1 + 96), (a2 + 96));
  v6 = *(a2 + 88);
  *(a2 + 88) = *(a1 + 88);
  *(a1 + 88) = v6;
  return result;
}

uint64_t *sub_275FAEC6C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  result = sub_275FB8A60((a1 + 96), (a2 + 96));
  v6 = *(a2 + 88);
  *(a2 + 88) = *(a1 + 88);
  *(a1 + 88) = v6;
  return result;
}

uint64_t sub_275FAECFC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB8D80(a1, 1);
  sub_275F8A16C(v2, a1);
  return v2;
}

void *sub_275FAED88(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275FB8E0C(a1);
}

uint64_t sub_275FAEE54(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB8F0C(a1, 1);
  sub_275F8DF54(v2, a1);
  return v2;
}

void *sub_275FAEEE0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275FB8F98(a1);
}

void *sub_275FAEFAC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB9098(a1, 1);
  sub_275F909C0(v2, a1);
  return v2;
}

uint64_t sub_275FAF038(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB9124(a1, 1);
  sub_275F91220(v2, a1);
  return v2;
}

void *sub_275FAF0C4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275FB91B0(a1);
}

uint64_t sub_275FAF190(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB92B0(a1, 1);
  sub_275F91F54(v2, a1);
  return v2;
}

void *sub_275FAF21C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB933C(a1, 1);
  sub_275F92D7C(v2, a1);
  return v2;
}

uint64_t sub_275FAF2A8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB93C8(a1, 1);
  sub_275F936FC(v2, a1);
  return v2;
}

void *sub_275FAF334(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB9454(a1, 1);
  sub_275F93E94(v2, a1);
  return v2;
}

uint64_t sub_275FAF3C0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB94E0(a1, 1);
  sub_275F94D68(v2, a1);
  return v2;
}

uint64_t sub_275FAF44C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB956C(a1, 1);
  sub_275F95744(v2, a1);
  return v2;
}

uint64_t sub_275FAF4D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB95F8(a1, 1);
  sub_275F968E0(v2, a1);
  return v2;
}

void *sub_275FAF564(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275FB9684(a1, 1);
  *result = &unk_2884FF380;
  result[1] = a1;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_275FAF5D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275FB972C(a1, 1);
  *result = &unk_2884FF430;
  result[1] = a1;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_275FAF64C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275FB97D4(a1);
}

uint64_t sub_275FAF720(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275FB98DC(a1);
}

uint64_t sub_275FAF7FC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB99EC(a1, 1);
  sub_275F9BB30(v2, a1);
  return v2;
}

uint64_t sub_275FAF888(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275FB9A78(a1, 1);
  *result = &unk_2884FF6F0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_275FAF8F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB9B20(a1, 1);
  sub_275F9E798(v2, a1);
  return v2;
}

void *sub_275FAF984(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275FB9BAC(a1);
}

void *sub_275FAFA50(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275FB9CAC(a1, 1);
  *result = &unk_2884FF900;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  *(result + 29) = 0;
  return result;
}

void *sub_275FAFAC4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB9D54(a1, 1);
  sub_275FA01A4(v2, a1);
  return v2;
}

uint64_t sub_275FAFB50(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB9DE0(a1, 1);
  sub_275FA0AB8(v2, a1);
  return v2;
}

void *sub_275FAFBDC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB9E6C(a1, 1);
  sub_275FA1098(v2, a1);
  return v2;
}

uint64_t sub_275FAFC68(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FB9EF8(a1, 1);
  sub_275FA2328(v2, a1);
  return v2;
}

uint64_t sub_275FAFCF4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275FB9F84(a1, 1);
  *result = &unk_2884FFC70;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_275FAFD64(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FBA02C(a1, 1);
  sub_275FA4178(v2, a1);
  return v2;
}

void *sub_275FAFDF0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275FBA0B8(a1);
}

uint64_t sub_275FAFEBC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275FBA1B8(a1);
}

uint64_t sub_275FAFF8C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FBA2BC(a1, 1);
  sub_275FA7F2C(v2, a1);
  return v2;
}

uint64_t sub_275FB0018(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FBA348(a1, 1);
  sub_275FA8698(v2, a1);
  return v2;
}

void *sub_275FB00A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FBA3D4(a1, 1);
  sub_275FA8D50(v2, a1);
  return v2;
}

uint64_t sub_275FB0130(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275FBA460(a1);
}

uint64_t sub_275FB0200(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FBA564(a1, 1);
  sub_275FA9FFC(v2, a1);
  return v2;
}

void *sub_275FB028C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275FBA5F0(a1);
}

uint64_t sub_275FB0358(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FBA6F0(a1, 1);
  sub_275FAB68C(v2, a1);
  return v2;
}

void *sub_275FB03E4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FBA77C(a1, 1);
  sub_275FAC344(v2, a1);
  return v2;
}

uint64_t sub_275FB0470(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275FBA808(a1, 1);
  v3 = MEMORY[0x277D80A90];
  *(result + 8) = a1;
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *result = &unk_2885004B0;
  return result;
}

uint64_t sub_275FB04F4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275FBA8B4(a1, 1);
  v3 = MEMORY[0x277D80A90];
  *(result + 8) = a1;
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a1;
  *result = &unk_288500570;
  return result;
}

uint64_t sub_275FB0578(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275FBA960(a1, 1);
  sub_275FAD358(v2, a1);
  return v2;
}

void sub_275FB09CC(void *a1)
{
  sub_275FB5464(a1);

  JUMPOUT(0x277C93390);
}

TSWP::MergeFieldTypeArchive *sub_275FB0A7C(uint64_t a1)
{
  google::protobuf::internal::ArenaStringPtr::ClearToEmpty((a1 + 16));
  result = *(a1 + 24);
  if (result)
  {
    result = TSWP::MergeFieldTypeArchive::Clear(result);
  }

  *(a1 + 32) &= 0xFFFFFFFC;
  return result;
}

uint64_t sub_275FB0ABC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return MEMORY[0x2821EBC60]();
  }

  return result;
}

uint64_t sub_275FB0AD0(uint64_t a1)
{
  v2 = (*(*a1 + 160))(a1);
  v3 = *(v2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(v2 + 8);
  }

  v4 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6);
  v5 = (*(*a1 + 168))(a1);
  v6 = TSWP::MergeFieldTypeArchive::ByteSizeLong(v5);
  return v6 + v4 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
}

uint64_t sub_275FB0B90(_DWORD *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v6 = (*(*a1 + 160))(a1);
    v7 = *(v6 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v6 + 8);
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((a1[8] & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = 0;
    return v5 + v3;
  }

  v3 = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = (*(*a1 + 168))(a1);
  v5 = *(v4 + 20) + ((9 * (__clz(*(v4 + 20) | 1) ^ 0x1F) + 73) >> 6) + 1;
  return v5 + v3;
}

google::protobuf::internal *sub_275FB0C74(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  while (1)
  {
    if (sub_275FB1588(a3, &v17))
    {
      return v17;
    }

    TagFallback = (v17 + 1);
    LODWORD(v6) = *v17;
    if ((*v17 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v6 = (v6 + (*TagFallback << 7) - 128);
    if ((*TagFallback & 0x80000000) == 0)
    {
      TagFallback = (v17 + 2);
LABEL_6:
      v17 = TagFallback;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v17, v6);
    v17 = TagFallback;
    if (!TagFallback)
    {
      return TagFallback;
    }

LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 32) |= 1u;
      v9 = google::protobuf::internal::ArenaStringPtr::Mutable();
      v10 = *v17;
      if ((v10 & 0x80) != 0)
      {
        SizeFallback = google::protobuf::internal::ReadSizeFallback(v17, *v17);
        if (!SizeFallback)
        {
          goto LABEL_19;
        }

        v11 = SizeFallback;
        v10 = v12;
      }

      else
      {
        v11 = (v17 + 1);
      }

      SizeFallback = sub_275FB74F8(a3, v11, v10, v9);
      goto LABEL_19;
    }

    if (v6 == 18)
    {
      *(a1 + 32) |= 2u;
      v13 = *(a1 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = MEMORY[0x277C92DA0](v13);
        LODWORD(v14) = v15;
        *(a1 + 24) = v15;
        TagFallback = v17;
      }

      SizeFallback = sub_276036ED0(a3, v14, TagFallback);
      goto LABEL_19;
    }

    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    SizeFallback = google::protobuf::internal::UnknownFieldParse();
LABEL_19:
    v17 = SizeFallback;
    if (!SizeFallback)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return TagFallback;
}

uint64_t sub_275FB0E0C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = (*(*a1 + 160))(a1);
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = sub_275FA1C9C(a3, 1, v6, a2);
  v8 = (*(*a1 + 168))(a1);
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  *v7 = 18;
  v9 = *(v8 + 5);
  if (v9 > 0x7F)
  {
    v7[1] = v9 | 0x80;
    v11 = v9 >> 7;
    if (v9 >> 14)
    {
      v10 = v7 + 3;
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
      v7[2] = v11;
      v10 = v7 + 3;
    }
  }

  else
  {
    v7[1] = v9;
    v10 = v7 + 2;
  }

  return TSWP::MergeFieldTypeArchive::_InternalSerialize(v8, v10, a3);
}

uint64_t sub_275FB0F90(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return *(a1 + 24);
  }

  else
  {
    return MEMORY[0x277D81078];
  }
}

void sub_275FB0FAC(void *a1)
{
  sub_275FB54C4(a1);

  JUMPOUT(0x277C93390);
}

TSWP::MergeFieldTypeArchive *sub_275FB105C(uint64_t a1)
{
  google::protobuf::internal::ArenaStringPtr::ClearToEmpty((a1 + 16));
  result = *(a1 + 24);
  if (result)
  {
    result = TSWP::MergeFieldTypeArchive::Clear(result);
  }

  *(a1 + 32) &= 0xFFFFFFFC;
  return result;
}

uint64_t sub_275FB109C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return MEMORY[0x2821EBC60]();
  }

  return result;
}

uint64_t sub_275FB10B0(uint64_t a1)
{
  v2 = (*(*a1 + 160))(a1);
  v3 = *(v2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(v2 + 8);
  }

  v4 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6);
  v5 = (*(*a1 + 168))(a1);
  v6 = TSWP::MergeFieldTypeArchive::ByteSizeLong(v5);
  return v6 + v4 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
}

uint64_t sub_275FB1170(_DWORD *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v6 = (*(*a1 + 160))(a1);
    v7 = *(v6 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(v6 + 8);
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((a1[8] & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = 0;
    return v5 + v3;
  }

  v3 = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = (*(*a1 + 168))(a1);
  v5 = *(v4 + 20) + ((9 * (__clz(*(v4 + 20) | 1) ^ 0x1F) + 73) >> 6) + 1;
  return v5 + v3;
}

google::protobuf::internal *sub_275FB1254(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  while (1)
  {
    if (sub_275FB1588(a3, &v17))
    {
      return v17;
    }

    TagFallback = (v17 + 1);
    LODWORD(v6) = *v17;
    if ((*v17 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v6 = (v6 + (*TagFallback << 7) - 128);
    if ((*TagFallback & 0x80000000) == 0)
    {
      TagFallback = (v17 + 2);
LABEL_6:
      v17 = TagFallback;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v17, v6);
    v17 = TagFallback;
    if (!TagFallback)
    {
      return TagFallback;
    }

LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 32) |= 1u;
      v9 = google::protobuf::internal::ArenaStringPtr::Mutable();
      v10 = *v17;
      if ((v10 & 0x80) != 0)
      {
        SizeFallback = google::protobuf::internal::ReadSizeFallback(v17, *v17);
        if (!SizeFallback)
        {
          goto LABEL_19;
        }

        v11 = SizeFallback;
        v10 = v12;
      }

      else
      {
        v11 = (v17 + 1);
      }

      SizeFallback = sub_275FB74F8(a3, v11, v10, v9);
      goto LABEL_19;
    }

    if (v6 == 18)
    {
      *(a1 + 32) |= 2u;
      v13 = *(a1 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = MEMORY[0x277C92DA0](v13);
        LODWORD(v14) = v15;
        *(a1 + 24) = v15;
        TagFallback = v17;
      }

      SizeFallback = sub_276036ED0(a3, v14, TagFallback);
      goto LABEL_19;
    }

    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    SizeFallback = google::protobuf::internal::UnknownFieldParse();
LABEL_19:
    v17 = SizeFallback;
    if (!SizeFallback)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return TagFallback;
}

uint64_t sub_275FB13EC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = (*(*a1 + 160))(a1);
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = sub_275FA1C9C(a3, 1, v6, a2);
  v8 = (*(*a1 + 168))(a1);
  if (*a3 <= v7)
  {
    v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v7);
  }

  *v7 = 18;
  v9 = *(v8 + 5);
  if (v9 > 0x7F)
  {
    v7[1] = v9 | 0x80;
    v11 = v9 >> 7;
    if (v9 >> 14)
    {
      v10 = v7 + 3;
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
      v7[2] = v11;
      v10 = v7 + 3;
    }
  }

  else
  {
    v7[1] = v9;
    v10 = v7 + 2;
  }

  return TSWP::MergeFieldTypeArchive::_InternalSerialize(v8, v10, a3);
}

uint64_t sub_275FB1570(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return *(a1 + 24);
  }

  else
  {
    return MEMORY[0x277D81078];
  }
}

uint64_t sub_275FB1588(uint64_t a1, uint64_t *a2)
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

void *sub_275FB1600(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275FB1644(a1, 0);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_275FB1644(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037858(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_275FB16CC);
}

void sub_275FB16CC(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void *sub_275FB16E0(void *a1)
{
  *a1 = &unk_288500C00;
  v2 = a1[1];
  if (v2)
  {
    if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_275FB1768(a1 + 2);
  if (a1[3])
  {
    v3 = MEMORY[0x277C92C40]();
    MEMORY[0x277C93390](v3, 0x1081C402ACD0DC6);
  }

  return a1;
}

uint64_t *sub_275FB1768(uint64_t *result)
{
  v1 = *result;
  if (*result != MEMORY[0x277D80A90])
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x277C93390);
  }

  return result;
}

void *sub_275FB17D8(void *a1)
{
  *a1 = &unk_288500D80;
  v2 = a1[1];
  if (v2)
  {
    if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
    {
      return a1;
    }
  }

  else if (v2)
  {
    return a1;
  }

  sub_275FB1768(a1 + 2);
  if (a1[3])
  {
    v3 = MEMORY[0x277C92C40]();
    MEMORY[0x277C93390](v3, 0x1081C402ACD0DC6);
  }

  return a1;
}

void sub_275FB1860(google::protobuf::internal::MapFieldBase *a1)
{
  *a1 = &unk_288500E40;
  sub_275FB23AC(a1 + 96);
  google::protobuf::internal::MapFieldBase::~MapFieldBase(a1);

  JUMPOUT(0x277C93390);
}

BOOL sub_275FB18C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_275FB2A9C(a2);
  if (*(v3 + 23) < 0)
  {
    sub_275FB2C34(__p, *v3, *(v3 + 8));
  }

  else
  {
    v4 = *v3;
    v8 = *(v3 + 16);
    *__p = v4;
  }

  sub_275FB2D80((a1 + 96), __p, 0, v9);
  v5 = v9[0];
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v5 != 0;
}

void sub_275FB1950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_275FB196C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*(*a1 + 168))(a1);
  v6 = sub_275FB2A9C(a2);
  if (*(v6 + 23) < 0)
  {
    sub_275FB2C34(__p, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    v12 = *(v6 + 16);
    *__p = v7;
  }

  sub_275FB2D80(v5, __p, 0, v13);
  v8 = v13[0];
  v9 = v13[0];
  if (!v13[0])
  {
    sub_275FB3464(v5, __p, v13);
    v9 = v13[0];
  }

  *a3 = v9 + 24;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  return v8 == 0;
}

void sub_275FB1A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_275FB1A68(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*(*a1 + 160))(a1);
  v6 = sub_275FB2A9C(a2);
  if (*(v6 + 23) < 0)
  {
    sub_275FB2C34(__p, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    v11 = *(v6 + 16);
    *__p = v7;
  }

  sub_275FB2D80(v5, __p, 0, v12);
  v8 = v12[0];
  if (v12[0])
  {
    *a3 = v12[0] + 24;
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return v8 != 0;
}

void sub_275FB1B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_275FB1B4C(uint64_t a1, uint64_t a2)
{
  v3 = sub_275FB2A9C(a2);
  if (*(v3 + 23) < 0)
  {
    sub_275FB2C34(__p, *v3, *(v3 + 8));
  }

  else
  {
    v4 = *v3;
    v9 = *(v3 + 16);
    *__p = v4;
  }

  v5 = (*(*a1 + 168))(a1);
  v6 = sub_275FB407C(v5, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v6 != 0;
}

void sub_275FB1BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275FB1C28(uint64_t a1, void **a2)
{
  v4 = (*(*a1 + 160))(a1);
  v5 = v4[3];
  v6 = v4[1];
  if (v6 <= v5)
  {
    v8 = 0;
  }

  else
  {
    v7 = v4[4];
    while (1)
    {
      v8 = *(v7 + 8 * v5);
      if (v8)
      {
        break;
      }

      if (v6 == ++v5)
      {
        v8 = 0;
        v5 = v4[1];
        goto LABEL_9;
      }
    }

    if (v8 == *(v7 + 8 * (v5 ^ 1)))
    {
      v8 = *(*v8 + 40);
    }
  }

LABEL_9:
  v9 = *a2;
  *v9 = v8;
  v9[1] = v4;
  v9[2] = v5;
  v10 = *(*a1 + 176);

  return v10(a1, a2);
}

uint64_t sub_275FB1D08(uint64_t a1, void **a2)
{
  result = (*(*a1 + 160))(a1);
  v4 = *a2;
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  return result;
}

uint64_t sub_275FB1D80(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 8 * *(v2 + 12);
    v4 = *(v2 + 16);
    if (v4)
    {
      if (*v4 >= 1)
      {
        v5 = 0;
        do
        {
          v3 += (*(**&v4[2 * v5 + 2] + 136))(*&v4[2 * v5 + 2]);
          ++v5;
          v4 = *(v2 + 16);
        }

        while (v5 < *v4);
      }

      v3 += 8;
    }
  }

  else
  {
    v3 = 0;
  }

  return sub_275FB441C(a1 + 96) + v3;
}

void *sub_275FB1E2C(void *result)
{
  v1 = result;
  v2 = result[2];
  if (!v2)
  {
    v3 = result[1];
    if (!v3)
    {
      operator new();
    }

    result = sub_275FB45D4(v3);
    v2 = result;
    v1[2] = result;
  }

  v4 = *(v2 + 8);
  if (v4 >= 1)
  {
    v5 = (*(v2 + 16) + 8);
    do
    {
      v6 = *v5++;
      result = (*(*v6 + 40))(v6);
      --v4;
    }

    while (v4);
    *(v2 + 8) = 0;
  }

  v7 = v1[15];
  v8 = v1[13];
  if (v8 > v7)
  {
    v9 = v1[16];
    while (1)
    {
      v10 = *(v9 + 8 * v7);
      if (v10)
      {
        break;
      }

      if (v8 == ++v7)
      {
        return result;
      }
    }

    if (v10 == *(v9 + 8 * (v7 ^ 1)))
    {
      v17 = *(*v10 + 40);
      v18 = v1 + 12;
      v19 = v7;
      if (!v17)
      {
        return result;
      }
    }

    else
    {
      v17 = *(v9 + 8 * v7);
      v18 = v1 + 12;
      v19 = v7;
    }

    do
    {
      v11 = (*(qword_2812F9258 + 32))();
      sub_275FB4760(v2, v11);
      v12 = v17;
      *(v11 + 32) |= 1u;
      v13 = google::protobuf::internal::ArenaStringPtr::Mutable();
      std::string::operator=(v13, v12);
      v14 = v17;
      *(v11 + 32) |= 2u;
      v15 = *(v11 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = *(v11 + 24);
      if (!v16)
      {
        v16 = MEMORY[0x277C92DA0](v15);
        *(v11 + 24) = v16;
      }

      TSWP::MergeFieldTypeArchive::CopyFrom(v16, (v14 + 24));
      result = sub_275FB4204(&v17);
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275FB2014(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  if (!v2)
  {
    google::protobuf::internal::LogMessage::LogMessage();
    google::protobuf::internal::LogMessage::operator<<();
    google::protobuf::internal::LogFinisher::operator=();
    google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  result = sub_275FB2400(&a1[6]);
  if (*(v2 + 8))
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = (v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    do
    {
      v6 = (*(**v5 + 168))();
      v7 = *v5++;
      v8 = (*(*v7 + 160))(v7);
      sub_275FB3464(a1 + 6, v8, v11);
      result = TSWP::MergeFieldTypeArchive::CopyFrom((v11[0] + 24), v6);
      v9 = *(v2 + 16);
      if (v9)
      {
        v10 = v9 + 8;
      }

      else
      {
        v10 = 0;
      }
    }

    while (v5 != (v10 + 8 * *(v2 + 8)));
  }

  return result;
}

void sub_275FB213C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275FB2198(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    JUMPOUT(0x277C93390);
  }

  return result;
}

uint64_t sub_275FB21B8(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v6 = *a2;
  v7 = **a3;
  *(v6 + 16) = *(*a3 + 16);
  *v6 = v7;
  v8 = sub_275FB2B94((a3 + 4));
  sub_275FB49D0((a2 + 2), v8);
  *(a2 + 14) = a3[14];
  v9 = *(*a1 + 176);

  return v9(a1, a2);
}

uint64_t sub_275FB2254(uint64_t a1, uint64_t **a2)
{
  sub_275FB4204(*a2);
  v4 = *(*a1 + 176);

  return v4(a1, a2);
}

char *sub_275FB22E0(google::protobuf::internal::MapFieldBase *a1)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a1);
  google::protobuf::internal::MapFieldBase::SetMapDirty(a1);
  return a1 + 96;
}

void sub_275FB2310(uint64_t a1, __int128 ***a2)
{
  v2 = **a2;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      sub_275FB2C34(__p, *v2, *(v2 + 1));
    }

    else
    {
      v4 = *v2;
      v6 = *(v2 + 2);
      *__p = v4;
    }

    sub_275FB4A2C((a2 + 2), __p);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }

    a2[6] = v2 + 3;
  }
}

void sub_275FB2390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275FB23AC(uint64_t a1)
{
  if (!*(a1 + 40) && *(a1 + 8) != 1)
  {
    sub_275FB2400(a1);
    if (!*(a1 + 40))
    {
      operator delete(*(a1 + 32));
    }
  }

  return a1;
}

uint64_t sub_275FB2400(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2)
  {
    v3 = 0;
    do
    {
      v4 = v1[4];
      v5 = *(v4 + 8 * v3);
      if (v5)
      {
        if (v5 == *(v4 + 8 * (v3 ^ 1)))
        {
          v7 = v3 + 1;
          *(v4 + 8 * (v3 + 1)) = 0;
          *(v1[4] + 8 * v3) = 0;
          v8 = *v5;
          do
          {
            v9 = v8[5];
            v10 = v8[1];
            v11 = v8;
            if (v10)
            {
              do
              {
                v12 = v10;
                v10 = *v10;
              }

              while (v10);
            }

            else
            {
              do
              {
                v12 = v11[2];
                v13 = *v12 == v11;
                v11 = v12;
              }

              while (!v13);
            }

            sub_275FB25FC(v5, v8);
            sub_275FB250C(v1, v9);
            v8 = v12;
          }

          while (v12 != (v5 + 1));
          result = sub_275FB2560(v1, v5);
          goto LABEL_16;
        }

        *(v4 + 8 * v3) = 0;
        do
        {
          v6 = v5[10];
          result = sub_275FB250C(v1, v5);
          v5 = v6;
        }

        while (v6);
      }

      v7 = v3;
LABEL_16:
      v3 = v7 + 1;
      v2 = v1[1];
    }

    while (v7 + 1 < v2);
  }

  *v1 = 0;
  v1[3] = v2;
  return result;
}

uint64_t sub_275FB250C(uint64_t result, uint64_t a2)
{
  if (a2 && !*(result + 40))
  {
    sub_275FB25C0(a2);

    JUMPOUT(0x277C93390);
  }

  return result;
}

uint64_t sub_275FB2560(uint64_t result, uint64_t a2)
{
  if (a2 && !*(result + 40))
  {
    sub_275FB2A38(a2, *(a2 + 8));

    JUMPOUT(0x277C93390);
  }

  return result;
}

uint64_t sub_275FB25C0(uint64_t a1)
{
  MEMORY[0x277C92C40](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_275FB25FC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_275FB2644(a1, a2);
  if (!*(a1 + 16))
  {
    operator delete(a2);
  }

  return v4;
}

uint64_t *sub_275FB2644(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  --*(a1 + 24);
  sub_275FB26B8(*(a1 + 8), a2);
  return v3;
}

uint64_t *sub_275FB26B8(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

void sub_275FB2A38(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_275FB2A38(a1, *a2);
    sub_275FB2A38(a1, a2[1]);
    if (!*(a1 + 16))
    {

      operator delete(a2);
    }
  }
}

uint64_t sub_275FB2A9C(uint64_t a1)
{
  if (sub_275FB2B94(a1) != 9)
  {
    google::protobuf::internal::LogMessage::LogMessage();
    google::protobuf::internal::LogMessage::operator<<();
    google::protobuf::internal::LogMessage::operator<<();
    google::protobuf::internal::LogMessage::operator<<();
    google::protobuf::internal::LogMessage::operator<<();
    google::protobuf::internal::LogMessage::operator<<();
    google::protobuf::internal::LogMessage::operator<<();
    google::protobuf::internal::LogMessage::operator<<();
    sub_275FB2B94(a1);
    google::protobuf::internal::LogMessage::operator<<();
    google::protobuf::internal::LogFinisher::operator=();
    google::protobuf::internal::LogMessage::~LogMessage(v3);
  }

  return a1;
}

void sub_275FB2B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275FB2B94(uint64_t a1)
{
  result = *(a1 + 24);
  if (!result)
  {
    google::protobuf::internal::LogMessage::LogMessage();
    google::protobuf::internal::LogMessage::operator<<();
    google::protobuf::internal::LogMessage::operator<<();
    google::protobuf::internal::LogMessage::operator<<();
    google::protobuf::internal::LogFinisher::operator=();
    google::protobuf::internal::LogMessage::~LogMessage(v3);
    return *(a1 + 24);
  }

  return result;
}

void sub_275FB2C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_275FB2C34(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_275FB2CD8();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void sub_275FB2CF0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_275FB2D4C(exception, a1);
  __cxa_throw(exception, off_27A6A7F30, MEMORY[0x277D825F0]);
}

std::logic_error *sub_275FB2D4C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

unint64_t sub_275FB2D80@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, void *a4@<X8>)
{
  v5 = a2;
  result = sub_275FB2EB4(a1, a2);
  v9 = (a1[1] - 1) & ((0x9E3779B97F4A7C15 * (a1[2] ^ result)) >> 32);
  v10 = a1[4];
  v11 = *(v10 + 8 * v9);
  if (v11)
  {
    if (v11 != *(v10 + 8 * (v9 ^ 1)))
    {
      v12 = v5[23];
      if (v12 >= 0)
      {
        v13 = v5[23];
      }

      else
      {
        v13 = *(v5 + 1);
      }

      if (v12 < 0)
      {
        v5 = *v5;
      }

      while (1)
      {
        v14 = *(v11 + 23);
        v15 = v14;
        if ((v14 & 0x80u) != 0)
        {
          v14 = *(v11 + 8);
        }

        if (v14 == v13)
        {
          v16 = v15 >= 0 ? v11 : *v11;
          result = memcmp(v16, v5, v13);
          if (!result)
          {
            break;
          }
        }

        v11 = *(v11 + 80);
        if (!v11)
        {
          goto LABEL_21;
        }
      }

      *a4 = v11;
      goto LABEL_23;
    }

    v9 = v9 & 0xFFFFFFFE;
    v17 = *(v10 + 8 * v9);
    v18 = v5;
    result = sub_275FB3360(v17, &v18);
    if (v17 + 8 != result)
    {
      if (a3)
      {
        *a3 = result;
      }

      *a4 = *(result + 40);
LABEL_23:
      a4[1] = a1;
      a4[2] = v9;
      goto LABEL_24;
    }
  }

LABEL_21:
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
LABEL_24:
  a4[3] = v9;
  return result;
}

unint64_t sub_275FB2EB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return sub_275FB2EF4(&v5, a2, v3);
}

unint64_t sub_275FB2EF4(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return sub_275FB32A0(a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return sub_275FB31F4(a2, a3);
  }

  else
  {
    return sub_275FB30FC(a2, a3);
  }
}

unint64_t sub_275FB30FC(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_275FB31F4(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_275FB32A0(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

uint64_t sub_275FB3360(uint64_t a1, const void ***a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_275FB33F0(a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_275FB33F0(a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

BOOL sub_275FB33F0(uint64_t a1, const void ***a2, const void ***a3)
{
  v3 = *(*a3 + 23);
  v4 = *(*a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(*a2 + 23);
  }

  else
  {
    v5 = (*a2)[1];
  }

  if (v4 >= 0)
  {
    v6 = *a2;
  }

  else
  {
    v6 = **a2;
  }

  if (v3 >= 0)
  {
    v7 = *(*a3 + 23);
  }

  else
  {
    v7 = (*a3)[1];
  }

  if (v3 >= 0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = **a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

unint64_t sub_275FB3464@<X0>(__n128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_275FB2D80(a1, a2, 0, &v16);
  if (v16)
  {
    v7 = 0;
    v8 = *(&v16 + 1);
    v9 = v17;
    *a3 = v16;
    *(a3 + 8) = v8;
    *(a3 + 16) = v9;
  }

  else
  {
    if (sub_275FB35AC(a1, a1->n128_u64[0] + 1))
    {
      sub_275FB2D80(a1, a2, 0, &v13);
      v16 = v13;
      v10 = v15;
      v17 = v14;
      v18 = v15;
    }

    else
    {
      v10 = v18;
    }

    if (!a1[2].n128_u64[1])
    {
      operator new();
    }

    sub_275FB3640(a1, 1);
    v12 = v11;
    sub_275FB365C(v11, a1[2].n128_i64[1], a2);
    MEMORY[0x277C92C30](v12 + 24, a1[2].n128_u64[1]);
    result = sub_275FB36C0(a1, v10, v12, a3);
    ++a1->n128_u64[0];
    v7 = 1;
  }

  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_275FB35AC(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = ((3 * v2) >> 2) & 0xFFFFFFFFFFFFFFFLL;
  if (v3 <= a2)
  {
    if (v2 <= 0x800000000000000)
    {
      v6 = 2 * v2;
LABEL_16:
      sub_275FB37C0(a1, v6);
      return 1;
    }
  }

  else if (v2 >= 9 && (12 * v2) >> 6 >= a2)
  {
    v7 = 0;
    do
    {
      ++v7;
    }

    while ((a2 + (a2 >> 2) + 1) << v7 < v3);
    v6 = v2 >> v7 <= 8 ? 8 : v2 >> v7;
    if (v6 != v2)
    {
      goto LABEL_16;
    }
  }

  return 0;
}

void sub_275FB3640(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = 88 * a2;
  if (v2)
  {
    sub_275FB3A40(v2);
  }

  else
  {
    operator new(v3);
  }
}

uint64_t sub_275FB365C(void *__dst, uint64_t a2, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_275FB2C34(__dst, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    __dst[2] = *(a3 + 2);
    *__dst = v5;
  }

  return sub_275FB3B0C(a2, __dst);
}

__n128 *sub_275FB36C0@<X0>(__n128 *result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v4 = a3;
  v5 = a2;
  v6 = result;
  v8 = result[2].n128_u64[0];
  v9 = *(v8 + 8 * a2);
  if (!v9)
  {
    *(a3 + 80) = 0;
    *(v8 + 8 * a2) = a3;
    goto LABEL_8;
  }

  if (v9 != *(v8 + 8 * (a2 ^ 1)))
  {
    v10 = 0;
    v11 = *(v8 + 8 * a2);
    do
    {
      ++v10;
      v11 = *(v11 + 80);
    }

    while (v11);
    if (v10 < 8)
    {
      *(a3 + 80) = v9;
      *(v8 + 8 * a2) = a3;
LABEL_11:
      *a4 = v4;
      a4[1] = v6;
      a4[2] = v5;
      return result;
    }

    sub_275FB3B28(result, a2);
    *(v4 + 80) = 0;
    v14 = *(v6[2].n128_u64[0] + 8 * v5);
    v15.n128_u64[0] = v4;
    v15.n128_u64[1] = v4;
    result = sub_275FB3D08(v14, &v15, &v15);
    v5 &= ~1uLL;
    v4 = result[2].n128_u64[1];
LABEL_8:
    v12 = v6[1].n128_u64[1];
    if (v5 < v12)
    {
      v12 = v5;
    }

    v6[1].n128_u64[1] = v12;
    goto LABEL_11;
  }

  *(a3 + 80) = 0;
  v13 = *(v8 + 8 * a2);
  v15.n128_u64[0] = a3;
  v15.n128_u64[1] = a3;
  result = sub_275FB3D08(v13, &v15, &v15);
  *a4 = result[2].n128_u64[1];
  a4[1] = v6;
  a4[2] = v5 & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void sub_275FB37C0(uint64_t a1, size_t a2)
{
  v3 = *(a1 + 8);
  if (v3 == 1)
  {
    *(a1 + 24) = 8;
    *(a1 + 8) = 8;
    sub_275FB3A28(a1, 8uLL);
    *v4 = 0u;
    v4[1] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    *(a1 + 32) = v4;
    *(a1 + 16) = a1 >> 12;
  }

  else
  {
    v6 = *(a1 + 32);
    *(a1 + 8) = a2;
    sub_275FB3A28(a1, a2);
    v8 = v7;
    bzero(v7, 8 * a2);
    v9 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 8);
    *(a1 + 32) = v8;
    while (v9 < v3)
    {
      v10 = v6[v9];
      if (v10)
      {
        if (v10 == v6[v9 ^ 1])
        {
          sub_275FB3960(a1, v6, v9++);
        }

        else
        {
          sub_275FB38E0(a1, v6, v9);
        }
      }

      ++v9;
    }

    if (!*(a1 + 40))
    {

      operator delete(v6);
    }
  }
}

__n128 *sub_275FB38E0(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8 * a3);
  do
  {
    v5 = *(v4 + 80);
    v6 = sub_275FB2EB4(a1, v4);
    result = sub_275FB36C0(a1, (a1->n128_u64[1] - 1) & ((0x9E3779B97F4A7C15 * (a1[1].n128_u64[0] ^ v6)) >> 32), v4, v8);
    v4 = v5;
  }

  while (v5);
  return result;
}

uint64_t sub_275FB3960(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8 * a3);
  v5 = *v4;
  do
  {
    v6 = sub_275FB2EB4(a1, v5[4]);
    sub_275FB36C0(a1, (a1->n128_u64[1] - 1) & ((0x9E3779B97F4A7C15 * (a1[1].n128_u64[0] ^ v6)) >> 32), v5[5], v11);
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

  while (v8 != v4 + 1);
  return sub_275FB2560(a1, v4);
}

void sub_275FB3A28(uint64_t a1, size_t __sz)
{
  v2 = *(a1 + 40);
  v3 = 8 * __sz;
  if (v2)
  {
    sub_275FB3A40(v2);
  }

  else
  {
    operator new(v3);
  }
}

void sub_275FB3A40(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_276037888(a1);
  }

  JUMPOUT(0x277C92DB0);
}

char *sub_275FB3A94(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_275FB2C34(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v3;
  }

  MEMORY[0x277C92C30](__dst + 24, 0);
  return __dst;
}

void sub_275FB3AF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275FB3B0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return MEMORY[0x2821EADF0]();
  }

  return result;
}

uint64_t sub_275FB3B28(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 40);
  v4 = sub_275FB3C1C(v6, &v7, &v6);
  sub_275FB3BA8(a1, a2, v4);
  result = sub_275FB3BA8(a1, a2 ^ 1, v4);
  *(*(a1 + 32) + 8 * (a2 ^ 1)) = v4;
  *(*(a1 + 32) + 8 * a2) = v4;
  return result;
}

uint64_t sub_275FB3BA8(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v3 = *(*(a1 + 32) + 8 * a2);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v8.n128_u64[0] = v3;
    v8.n128_u64[1] = v3;
    sub_275FB3D08(a3, &v8, &v8);
    ++v5;
    v6 = *(v3 + 80);
    *(v3 + 80) = 0;
    v3 = v6;
  }

  while (v6);
  return v5;
}

void *sub_275FB3C1C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275FB3C78(a1, 0);
  v5 = *a3;
  result[1] = 0;
  result[2] = v5;
  result[3] = 0;
  *result = result + 1;
  return result;
}

uint64_t sub_275FB3C78(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2760378C4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275FB3D00);
}

__n128 *sub_275FB3D08(__n128 *a1, const void ***a2, __n128 *a3)
{
  v5 = sub_275FB3D88(a1, &v8, a2);
  result = *v5;
  if (!*v5)
  {
    sub_275FB3E24(a1, a3, &v7);
    sub_275FB3E88(a1, v8, v5, v7);
    return v7;
  }

  return result;
}

uint64_t sub_275FB3D88(uint64_t a1, uint64_t *a2, const void ***a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_275FB33F0(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_275FB33F0(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

__n128 sub_275FB3E24@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X1>, __n128 **a3@<X8>)
{
  v6 = a1 + 1;
  v5 = a1[1].n128_i64[0];
  if (v5)
  {
    sub_275FB3A40(v5);
  }

  else
  {
    v7 = operator new(0x30uLL);
  }

  *a3 = v7;
  a3[1] = v6;
  a3[2] = 0;
  result = *a2;
  v7[2] = *a2;
  *(a3 + 16) = 1;
  return result;
}

uint64_t *sub_275FB3E88(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_275FB3EE0(a1[1], a4);
  a1[3] = (a1[3] + 1);
  return result;
}

uint64_t *sub_275FB3EE0(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t sub_275FB407C(void *a1, uint64_t a2)
{
  sub_275FB2D80(a1, a2, 0, &v6);
  if (!v6)
  {
    return 0;
  }

  v4 = v6;
  v5 = v7;
  sub_275FB4204(&v4);
  sub_275FB40F4(a1, &v6);
  return 1;
}

uint64_t sub_275FB40F4(void *a1, uint64_t *a2)
{
  v4 = sub_275FB42C0(a2, &v16);
  v5 = a2[2];
  v6 = *a2;
  v7 = a1[4];
  v8 = *(v7 + 8 * v5);
  if (v4)
  {
    v9 = sub_275FB43DC(a1, v6, *(v7 + 8 * v5));
LABEL_5:
    *(a1[4] + 8 * v5) = v9;
    goto LABEL_6;
  }

  sub_275FB25FC(*(v7 + 8 * v5), v16);
  if (!*(v8 + 24))
  {
    sub_275FB2560(a1, v8);
    v9 = 0;
    *(a1[4] + ((8 * v5) | 8)) = 0;
    v5 &= ~1uLL;
    goto LABEL_5;
  }

LABEL_6:
  result = sub_275FB250C(a1, v6);
  --*a1;
  if (v5 == a1[3])
  {
    v11 = a1[1];
    v12 = v11 > v5;
    v13 = v11 - v5;
    if (v12)
    {
      v14 = (a1[4] + 8 * v5);
      v15 = v5 + 1;
      do
      {
        if (*v14)
        {
          break;
        }

        a1[3] = v15;
        ++v14;
        ++v15;
        --v13;
      }

      while (v13);
    }
  }

  return result;
}

uint64_t *sub_275FB4204(uint64_t *a1)
{
  v2 = *(*a1 + 80);
  if (v2)
  {
    goto LABEL_2;
  }

  if (sub_275FB42C0(a1, &v11))
  {
    v3 = a1[2] + 1;
LABEL_13:
    sub_275FB4378(a1, v3);
    return a1;
  }

  v4 = a1[2];
  v5 = *(*(a1[1] + 32) + 8 * v4);
  v6 = v11;
  v7 = v11[1];
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
      v8 = *(v6 + 16);
      v9 = *v8 == v6;
      v6 = v8;
    }

    while (!v9);
  }

  v11 = v8;
  if (v8 == (v5 + 8))
  {
    v3 = v4 + 2;
    goto LABEL_13;
  }

  v2 = v8[5];
LABEL_2:
  *a1 = v2;
  return a1;
}

BOOL sub_275FB42C0(uint64_t *a1, unint64_t *a2)
{
  v4 = a1[1];
  v5 = *a1;
  v6 = a1[2] & (v4[1] - 1);
  a1[2] = v6;
  v7 = v4[4];
  v8 = *(v7 + 8 * v6);
  if (v8 == v5)
  {
    return 1;
  }

  if (v8 && v8 != *(v7 + 8 * (v6 ^ 1)))
  {
    while (1)
    {
      v8 = *(v8 + 80);
      if (!v8)
      {
        break;
      }

      if (v8 == v5)
      {
        return 1;
      }
    }
  }

  sub_275FB2D80(v4, v5, a2, &v13);
  v9 = v14;
  a1[2] = v14;
  v10 = *(a1[1] + 32);
  v11 = *(v10 + 8 * v9);
  return !v11 || v11 != *(v10 + 8 * (v9 ^ 1));
}

void *sub_275FB4378(void *result, unint64_t a2)
{
  *result = 0;
  v2 = result[1];
  v3 = *(v2 + 8);
  if (v3 <= a2)
  {
LABEL_6:
    result[2] = a2;
  }

  else
  {
    v4 = *(v2 + 32);
    while (1)
    {
      v5 = *(v4 + 8 * a2);
      if (v5)
      {
        break;
      }

      if (v3 == ++a2)
      {
        a2 = v3;
        goto LABEL_6;
      }
    }

    v6 = *(v4 + 8 * (a2 ^ 1));
    result[2] = a2;
    if (v5 == v6)
    {
      *result = *(*v5 + 40);
    }

    else
    {
      *result = v5;
    }
  }

  return result;
}

uint64_t sub_275FB43DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a3 + 80);
  if (v3 == a2)
  {
    return v4;
  }

  *(v3 + 80) = sub_275FB43DC();
  return v3;
}

uint64_t sub_275FB441C(uint64_t a1)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = sub_275FB4534(*(a1 + 32), *(a1 + 8), *a1, 88);
  return sub_275FB4470(a1) + v2;
}

uint64_t sub_275FB4470(void *a1)
{
  v1 = a1[3];
  v2 = a1[1];
  if (v2 <= v1)
  {
    return 0;
  }

  v3 = a1[4];
  while (1)
  {
    v4 = *(v3 + 8 * v1);
    if (v4)
    {
      break;
    }

    if (v2 == ++v1)
    {
      return 0;
    }
  }

  if (v4 != *(v3 + 8 * (v1 ^ 1)))
  {
    v8 = *(v3 + 8 * v1);
    v9 = a1;
    v10 = v1;
    goto LABEL_9;
  }

  v4 = *(*v4 + 40);
  v8 = v4;
  v9 = a1;
  v10 = v1;
  if (!v4)
  {
    return 0;
  }

LABEL_9:
  v5 = 0;
  do
  {
    v6 = google::protobuf::internal::StringSpaceUsedExcludingSelfLong();
    v5 = v5 + v6 + google::protobuf::Message::SpaceUsedLong((v4 + 24)) - 56;
    sub_275FB4204(&v8);
    v4 = v8;
  }

  while (v8);
  return v5;
}

uint64_t sub_275FB4534(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a4 * a3 + 8 * a2;
  if (a2)
  {
    for (i = 0; i < a2; i += 2)
    {
      v7 = *(a1 + 8 * i);
      if (v7)
      {
        if (v7 == *(a1 + 8 * i + 8))
        {
          result += 48 * *(v7 + 24);
        }
      }
    }
  }

  return result;
}

uint64_t sub_275FB457C(uint64_t a1)
{
  *(a1 + 32) |= 2u;
  v2 = *(a1 + 8);
  if (v2)
  {
    v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    v3 = MEMORY[0x277C92DA0](v2);
    *(a1 + 24) = v3;
  }

  return v3;
}

void *sub_275FB45D4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275FB4630(a1, 0);
  result[2] = 0;
  *result = a1;
  result[1] = 0;
  return result;
}

uint64_t sub_275FB4630(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2760378F4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_275FB46B8);
}

void sub_275FB46D4(void *a1)
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
          (*(**v3 + 8))(*v3);
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

uint64_t sub_275FB4760(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2;
  if (v2)
  {
    v3 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*result == v3 && (v4 = *(result + 16)) != 0 && (v5 = *v4, v5 < *(result + 12)))
  {
    v6 = v4 + 2;
    v7 = *(result + 8);
    if (v7 < v5)
    {
      *&v6[2 * v5] = *&v6[2 * v7];
    }

    *&v6[2 * v7] = a2;
    *(result + 8) = v7 + 1;
    ++**(result + 16);
  }

  else
  {
    if (v2)
    {
      v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
    }

    return sub_275FB47E8(result, a2, v2, *result);
  }

  return result;
}

uint64_t sub_275FB47E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a3 || !a4)
  {
    if (a4 != a3)
    {
      v7 = sub_275FB04F0(a4);
      sub_275FB48B4(v5, v7);
      if (!a3)
      {
        (*(*v5 + 8))(v5);
      }

      v5 = v7;
    }
  }

  else
  {
    sub_275FB4898(a4, a2);
  }

  return sub_275FB48C4(a1, v5);
}

uint64_t sub_275FB4898(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return MEMORY[0x2821EADF0]();
  }

  return result;
}

uint64_t sub_275FB48C4(uint64_t this, uint64_t a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (!v4 || (v5 = *(this + 8), v6 = *(this + 12), v5 == v6))
  {
    this = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this);
    goto LABEL_11;
  }

  v7 = *v4;
  if (v7 != v6)
  {
    if (v5 >= v7)
    {
      v9 = v7 + 1;
      goto LABEL_12;
    }

    *&v4[2 * v7 + 2] = *&v4[2 * v5 + 2];
LABEL_11:
    v4 = *(v3 + 16);
    v9 = *v4 + 1;
LABEL_12:
    *v4 = v9;
    goto LABEL_13;
  }

  this = *&v4[2 * v5 + 2];
  if (this)
  {
    v8 = *v3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    this = (*(*this + 8))(this);
    v4 = *(v3 + 16);
  }

LABEL_13:
  v10 = *(v3 + 8);
  *(v3 + 8) = v10 + 1;
  *&v4[2 * v10 + 2] = a2;
  return this;
}

uint64_t sub_275FB49A4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_275FB49D0(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if (v2 != a2)
  {
    if (v2 == 9 && *(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = a2;
    if (a2 == 9)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }
  }
}

__n128 sub_275FB4A2C(uint64_t a1, __n128 *a2)
{
  sub_275FB49D0(a1, 9);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  result = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  *a1 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  return result;
}

void sub_275FB4A80(google::protobuf::internal::MapFieldBase *a1)
{
  *a1 = &unk_288500F80;
  sub_275FB23AC(a1 + 96);
  google::protobuf::internal::MapFieldBase::~MapFieldBase(a1);

  JUMPOUT(0x277C93390);
}

BOOL sub_275FB4AE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_275FB2A9C(a2);
  if (*(v3 + 23) < 0)
  {
    sub_275FB2C34(__p, *v3, *(v3 + 8));
  }

  else
  {
    v4 = *v3;
    v8 = *(v3 + 16);
    *__p = v4;
  }

  sub_275FB2D80((a1 + 96), __p, 0, v9);
  v5 = v9[0];
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v5 != 0;
}

void sub_275FB4B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_275FB4B8C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*(*a1 + 168))(a1);
  v6 = sub_275FB2A9C(a2);
  if (*(v6 + 23) < 0)
  {
    sub_275FB2C34(__p, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    v12 = *(v6 + 16);
    *__p = v7;
  }

  sub_275FB2D80(v5, __p, 0, v13);
  v8 = v13[0];
  v9 = v13[0];
  if (!v13[0])
  {
    sub_275FB3464(v5, __p, v13);
    v9 = v13[0];
  }

  *a3 = v9 + 24;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  return v8 == 0;
}

void sub_275FB4C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_275FB4C88(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = (*(*a1 + 160))(a1);
  v6 = sub_275FB2A9C(a2);
  if (*(v6 + 23) < 0)
  {
    sub_275FB2C34(__p, *v6, *(v6 + 8));
  }

  else
  {
    v7 = *v6;
    v11 = *(v6 + 16);
    *__p = v7;
  }

  sub_275FB2D80(v5, __p, 0, v12);
  v8 = v12[0];
  if (v12[0])
  {
    *a3 = v12[0] + 24;
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return v8 != 0;
}

void sub_275FB4D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_275FB4D6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_275FB2A9C(a2);
  if (*(v3 + 23) < 0)
  {
    sub_275FB2C34(__p, *v3, *(v3 + 8));
  }

  else
  {
    v4 = *v3;
    v9 = *(v3 + 16);
    *__p = v4;
  }

  v5 = (*(*a1 + 168))(a1);
  v6 = sub_275FB407C(v5, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  return v6 != 0;
}

void sub_275FB4E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275FB4E54(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 8 * *(v2 + 12);
    v4 = *(v2 + 16);
    if (v4)
    {
      if (*v4 >= 1)
      {
        v5 = 0;
        do
        {
          v3 += (*(**&v4[2 * v5 + 2] + 136))(*&v4[2 * v5 + 2]);
          ++v5;
          v4 = *(v2 + 16);
        }

        while (v5 < *v4);
      }

      v3 += 8;
    }
  }

  else
  {
    v3 = 0;
  }

  return sub_275FB441C(a1 + 96) + v3;
}

void *sub_275FB4F00(void *result)
{
  v1 = result;
  v2 = result[2];
  if (!v2)
  {
    v3 = result[1];
    if (!v3)
    {
      operator new();
    }

    result = sub_275FB45D4(v3);
    v2 = result;
    v1[2] = result;
  }

  v4 = *(v2 + 8);
  if (v4 >= 1)
  {
    v5 = (*(v2 + 16) + 8);
    do
    {
      v6 = *v5++;
      result = (*(*v6 + 40))(v6);
      --v4;
    }

    while (v4);
    *(v2 + 8) = 0;
  }

  v7 = v1[15];
  v8 = v1[13];
  if (v8 > v7)
  {
    v9 = v1[16];
    while (1)
    {
      v10 = *(v9 + 8 * v7);
      if (v10)
      {
        break;
      }

      if (v8 == ++v7)
      {
        return result;
      }
    }

    if (v10 == *(v9 + 8 * (v7 ^ 1)))
    {
      v17 = *(*v10 + 40);
      v18 = v1 + 12;
      v19 = v7;
      if (!v17)
      {
        return result;
      }
    }

    else
    {
      v17 = *(v9 + 8 * v7);
      v18 = v1 + 12;
      v19 = v7;
    }

    do
    {
      v11 = (*(qword_2812F9228 + 32))();
      sub_275FB531C(v2, v11);
      v12 = v17;
      *(v11 + 32) |= 1u;
      v13 = google::protobuf::internal::ArenaStringPtr::Mutable();
      std::string::operator=(v13, v12);
      v14 = v17;
      *(v11 + 32) |= 2u;
      v15 = *(v11 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = *(v11 + 24);
      if (!v16)
      {
        v16 = MEMORY[0x277C92DA0](v15);
        *(v11 + 24) = v16;
      }

      TSWP::MergeFieldTypeArchive::CopyFrom(v16, (v14 + 24));
      result = sub_275FB4204(&v17);
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275FB50E8(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  if (!v2)
  {
    google::protobuf::internal::LogMessage::LogMessage();
    google::protobuf::internal::LogMessage::operator<<();
    google::protobuf::internal::LogFinisher::operator=();
    google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  result = sub_275FB2400(&a1[6]);
  if (*(v2 + 8))
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = (v4 + 8);
    }

    else
    {
      v5 = 0;
    }

    do
    {
      v6 = (*(**v5 + 168))();
      v7 = *v5++;
      v8 = (*(*v7 + 160))(v7);
      sub_275FB3464(a1 + 6, v8, v11);
      result = TSWP::MergeFieldTypeArchive::CopyFrom((v11[0] + 24), v6);
      v9 = *(v2 + 16);
      if (v9)
      {
        v10 = v9 + 8;
      }

      else
      {
        v10 = 0;
      }
    }

    while (v5 != (v10 + 8 * *(v2 + 8)));
  }

  return result;
}

void sub_275FB5210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *sub_275FB5250(google::protobuf::internal::MapFieldBase *a1)
{
  google::protobuf::internal::MapFieldBase::SyncMapWithRepeatedField(a1);
  google::protobuf::internal::MapFieldBase::SetMapDirty(a1);
  return a1 + 96;
}

void sub_275FB5280(uint64_t a1, __int128 ***a2)
{
  v2 = **a2;
  if (v2)
  {
    if (*(v2 + 23) < 0)
    {
      sub_275FB2C34(__p, *v2, *(v2 + 1));
    }

    else
    {
      v4 = *v2;
      v6 = *(v2 + 2);
      *__p = v4;
    }

    sub_275FB4A2C((a2 + 2), __p);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }

    a2[6] = v2 + 3;
  }
}

void sub_275FB5300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_275FB531C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2;
  if (v2)
  {
    v3 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (*result == v3 && (v4 = *(result + 16)) != 0 && (v5 = *v4, v5 < *(result + 12)))
  {
    v6 = v4 + 2;
    v7 = *(result + 8);
    if (v7 < v5)
    {
      *&v6[2 * v5] = *&v6[2 * v7];
    }

    *&v6[2 * v7] = a2;
    *(result + 8) = v7 + 1;
    ++**(result + 16);
  }

  else
  {
    if (v2)
    {
      v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
    }

    return sub_275FB53A4(result, a2, v2, *result);
  }

  return result;
}

uint64_t sub_275FB53A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a3 || !a4)
  {
    if (a4 != a3)
    {
      v7 = sub_275FB046C(a4);
      sub_275FB5454(v5, v7);
      if (!a3)
      {
        (*(*v5 + 8))(v5);
      }

      v5 = v7;
    }
  }

  else
  {
    sub_275FB4898(a4, a2);
  }

  return sub_275FB48C4(a1, v5);
}

void *sub_275FB5464(void *a1)
{
  *a1 = &unk_288500B40;
  sub_275F8A514(a1 + 1);
  sub_275F8A514(a1 + 5);

  return sub_275FB16E0(a1);
}

void *sub_275FB54C4(void *a1)
{
  *a1 = &unk_288500CC0;
  sub_275F8A514(a1 + 1);
  sub_275F8A514(a1 + 5);

  return sub_275FB17D8(a1);
}

uint64_t *sub_275FB5524(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  sub_275FB556C(v2);
  *a1 = v3 | 1;
  *v3 = v2;
  return v3 + 1;
}

double sub_275FB556C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v1 = sub_275FB55B0(a1, 0);
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  return result;
}

uint64_t sub_275FB55B0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037924(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275FB5638);
}

void sub_275FB5638(uint64_t a1)
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

uint64_t sub_275FB569C(uint64_t result)
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

void sub_275FB56E8(void *a1)
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
          MEMORY[0x277C93390]();
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

uint64_t sub_275FB576C(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v3 = sub_275FB5524(a1);
  }

  return MEMORY[0x2821EAB30](v3, a2);
}

uint64_t *sub_275FB57B8(uint64_t *a1)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_275FB5524(a1);
  }

  if (*result != result[1])
  {

    return google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_275FB5808(uint64_t result, TSP::Reference **a2, TSP::Reference **a3, unsigned int a4, unsigned int a5)
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
      result = sub_275FB58B8(v13, v15);
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
      v22 = MEMORY[0x277C92D60](v18);
      result = sub_275FB58B8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275FB58C8(void *a1)
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
          v5 = sub_275F90A30(*v3);
          MEMORY[0x277C93390](v5, 0x10A1C407EE01FB0);
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

uint64_t sub_275FB594C(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275FB59FC(v13, v15);
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
      v22 = sub_275FAEFA8(v18);
      result = sub_275FB59FC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275FB5A0C(void *a1)
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
          v5 = sub_275F9198C(*v3);
          MEMORY[0x277C93390](v5, 0x10A1C40D4912B22);
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

uint64_t sub_275FB5A90(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275FB5B40(v13, v15);
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
      v22 = sub_275FAF0C0(v18);
      result = sub_275FB5B40(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275FB5B50(void *a1)
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
          v5 = sub_275F92018(*v3);
          MEMORY[0x277C93390](v5, 0x10A1C40EE76956BLL);
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

uint64_t sub_275FB5BD4(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275FB5C84(v13, v15);
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
      v22 = sub_275FAF18C(v18);
      result = sub_275FB5C84(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275FB5C94(void *a1)
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
          v5 = sub_275F94DDC(*v3);
          MEMORY[0x277C93390](v5, 0x10A1C408F8E7294);
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

uint64_t sub_275FB5D18(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275FB5DC8(v13, v15);
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
      v22 = sub_275FAF3BC(v18);
      result = sub_275FB5DC8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275FB5DD8(void *a1)
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
          v5 = sub_275F9A558(*v3);
          MEMORY[0x277C93390](v5, 0x10A1C40F563F023);
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

void sub_275FB5E5C(void *a1)
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
          v5 = sub_275F999A8(*v3);
          MEMORY[0x277C93390](v5, 0x10A1C404E50D5EBLL);
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

void sub_275FB5EE0(void *a1)
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
          MEMORY[0x277C93390]();
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

void sub_275FB5F64(void *a1)
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
          v5 = sub_275FA0B40(*v3);
          MEMORY[0x277C93390](v5, 0x10A1C40290C9B23);
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

uint64_t sub_275FB5FE8(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275FB6098(v13, v15);
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
      v22 = sub_275FAF71C(v18);
      result = sub_275FB6098(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275FB60A8(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275FB6158(v13, v15);
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
      v22 = sub_275FAF648(v18);
      result = sub_275FB6158(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275FB6168(uint64_t result, TSP::UUID **a2, TSP::UUID **a3, unsigned int a4, unsigned int a5)
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
      result = sub_275FB6218(v13, v15);
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
      v22 = MEMORY[0x277C92D20](v18);
      result = sub_275FB6218(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275FB6228(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275FB62D8(v13, v15);
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
      v22 = sub_275FAFB4C(v18);
      result = sub_275FB62D8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275FB62E8(void *a1)
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
          v5 = sub_275F9BC6C(*v3);
          MEMORY[0x277C93390](v5, 0x10A1C4071DFD511);
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

uint64_t sub_275FB636C(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275FB641C(v13, v15);
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
      v22 = sub_275FAF7F8(v18);
      result = sub_275FB641C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275FB642C(void *a1)
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
          sub_275F8A514((v5 + 8));
          MEMORY[0x277C93390](v5, 0x1081C407D3F2757);
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

uint64_t sub_275FB64C4(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275FB6574(v13, v15);
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
      v22 = sub_275FAFA4C(v18);
      result = sub_275FB6574(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275FB6584(void *a1)
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
          v5 = sub_275FA0230(*v3);
          MEMORY[0x277C93390](v5, 0x10A1C40D196C376);
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

uint64_t sub_275FB6608(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275FB66B8(v13, v15);
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
      v22 = sub_275FAFAC0(v18);
      result = sub_275FB66B8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275FB66C8(void *a1)
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
          v5 = sub_275F9E824(*v3);
          MEMORY[0x277C93390](v5, 0x10A1C40D5D207CCLL);
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

void sub_275FB674C(void *a1)
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

          MEMORY[0x277C93390](v5, 0x1012C40EC159624);
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

uint64_t sub_275FB67E8(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275FB6898(v13, v15);
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
      v22 = sub_275FAF8F4(v18);
      result = sub_275FB6898(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

std::string *sub_275FB68A8(std::string *result, std::string **a2, const std::string **a3, unsigned int a4, unsigned int a5)
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
      v22 = sub_275FB1600(v18);
      result = std::string::operator=(v22, v21);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275FB6954(void *a1)
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
          MEMORY[0x277C93390]();
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

uint64_t sub_275FB69D8(uint64_t result, TSP::Range **a2, TSP::Range **a3, unsigned int a4, unsigned int a5)
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
      result = sub_275FB6A88(v13, v15);
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
      v22 = MEMORY[0x277C92D40](v18);
      result = sub_275FB6A88(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275FB6A98(void *a1)
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
          v5 = MEMORY[0x277C92B80]();
          MEMORY[0x277C93390](v5, 0x10A1C4054BF9DFBLL);
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

uint64_t sub_275FB6B1C(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275FB6BCC(v13, v15);
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
      v22 = MEMORY[0x277C92D80](v18);
      result = sub_275FB6BCC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275FB6BDC(void *a1)
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
          v5 = sub_275FA7780(*v3);
          MEMORY[0x277C93390](v5, 0x10A1C40C05B56FCLL);
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

uint64_t sub_275FB6C60(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275FB6D10(v13, v15);
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
      v22 = sub_275FAFEB8(v18);
      result = sub_275FB6D10(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275FB6D20(void *a1)
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
          v5 = MEMORY[0x277C92AB0]();
          MEMORY[0x277C93390](v5, 0x10A1C40290C9B23);
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

uint64_t sub_275FB6DA4(uint64_t result, TSP::UUIDPath **a2, TSP::UUIDPath **a3, unsigned int a4, unsigned int a5)
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
      result = sub_275FB6E54(v13, v15);
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
      v22 = MEMORY[0x277C92D50](v18);
      result = sub_275FB6E54(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275FB6E64(void *a1)
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
          v5 = sub_275FA9848(*v3);
          MEMORY[0x277C93390](v5, 0x10A1C40C05B56FCLL);
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

uint64_t sub_275FB6EE8(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275FB6F98(v13, v15);
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
      v22 = sub_275FB012C(v18);
      result = sub_275FB6F98(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275FB6FA8(void *a1)
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
          v5 = sub_275FAAE20(*v3);
          MEMORY[0x277C93390](v5, 0x10A1C40DFBAE579);
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

uint64_t sub_275FB702C(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_275FB70DC(v13, v15);
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
      v22 = sub_275FB0288(v18);
      result = sub_275FB70DC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_275FB70EC(void *a1)
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
          v5 = MEMORY[0x277C92C40]();
          MEMORY[0x277C93390](v5, 0x1081C402ACD0DC6);
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

uint64_t sub_275FB7170(uint64_t result, TSWP::MergeFieldTypeArchive **a2, TSWP::MergeFieldTypeArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_275FB7220(v13, v15);
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
      v22 = MEMORY[0x277C92DA0](v18);
      result = sub_275FB7220(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_275FB7230(uint64_t a1, uint64_t a2)
{
  *a1 = MEMORY[0x277D80AA0] + 16;
  *(a1 + 8) = a2;
  *(a1 + 24) = 850045863;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 76) = 0u;
  if (a2)
  {
    sub_275FB72B8(a2, a1 + 24);
  }

  return a1;
}

uint64_t sub_275FB72B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return MEMORY[0x2821EADF0]();
  }

  return result;
}

uint64_t *sub_275FB72D8(uint64_t *result, void *a2)
{
  v4 = a2[3];
  v5 = a2[1];
  if (v5 > v4)
  {
    v12[6] = v2;
    v12[7] = v3;
    v6 = result;
    v7 = a2[4];
    while (1)
    {
      v8 = *(v7 + 8 * v4);
      if (v8)
      {
        break;
      }

      if (v5 == ++v4)
      {
        return result;
      }
    }

    if (v8 == *(v7 + 8 * (v4 ^ 1)))
    {
      v8 = *(*v8 + 40);
      v9 = v8;
      v10 = a2;
      v11 = v4;
      if (!v8)
      {
        return result;
      }
    }

    else
    {
      v9 = *(v7 + 8 * v4);
      v10 = a2;
      v11 = v4;
    }

    do
    {
      sub_275FB3464(v6, v8, v12);
      TSWP::MergeFieldTypeArchive::CopyFrom((v12[0] + 24), (v8 + 24));
      result = sub_275FB4204(&v9);
      v8 = v9;
    }

    while (v9);
  }

  return result;
}

google::protobuf::internal *sub_275FB7390(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v5[0] = a1;
  v5[1] = a1;
  memset(&v5[2], 0, 24);
  v5[6] = 0;
  v3 = sub_276037230(v5, a2, a3);
  sub_275FB7564(v5);
  return v3;
}

void sub_275FB73DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275FB7564(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275FB73F0(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
    }

    v3 = *(result + 8);
    if (v3)
    {
      v3 = *(v3 & 0xFFFFFFFFFFFFFFFELL);
    }

    if (v2 == v3)
    {
      return MEMORY[0x2821EB9D8](a2, result);
    }

    else
    {
      return MEMORY[0x2821EAC48](a2, result);
    }
  }

  return result;
}

uint64_t sub_275FB7440(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 160))(*(a1 + 48));
  std::string::operator=((a1 + 16), v2);
  sub_275FB3464(*(a1 + 8), (a1 + 16), v8);
  v3 = v8[0] + 24;
  *(a1 + 40) = v8[0] + 24;
  v4 = *(a1 + 48);
  *(v4 + 32) |= 2u;
  v5 = *(v4 + 8);
  if (v5)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  v6 = *(v4 + 24);
  if (!v6)
  {
    v6 = MEMORY[0x277C92DA0](v5);
    *(v4 + 24) = v6;
    v3 = *(a1 + 40);
  }

  return sub_275FB73F0(v6, v3);
}

uint64_t sub_275FB74F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 8) - a2 + 16 >= a3)
  {
    v5 = a3;
    MEMORY[0x277C93330](a4, a2, a3);
    return a2 + v5;
  }

  else
  {

    return MEMORY[0x2821EAD90]();
  }
}

uint64_t sub_275FB7564(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = v2[1];
    if ((v3 & 1) == 0)
    {
      if (v3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (!*(v3 & 0xFFFFFFFFFFFFFFFELL))
    {
LABEL_4:
      (*(*v2 + 8))(v2);
    }
  }

LABEL_5:
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

google::protobuf::internal *sub_275FB75E0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v5[0] = a1;
  v5[1] = a1;
  memset(&v5[2], 0, 24);
  v5[6] = 0;
  v3 = sub_276037454(v5, a2, a3);
  sub_275FB7564(v5);
  return v3;
}

void sub_275FB762C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_275FB7564(va);
  _Unwind_Resume(a1);
}

uint64_t sub_275FB7640(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 160))(*(a1 + 48));
  std::string::operator=((a1 + 16), v2);
  sub_275FB3464(*(a1 + 8), (a1 + 16), v8);
  v3 = v8[0] + 24;
  *(a1 + 40) = v8[0] + 24;
  v4 = *(a1 + 48);
  *(v4 + 32) |= 2u;
  v5 = *(v4 + 8);
  if (v5)
  {
    v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  v6 = *(v4 + 24);
  if (!v6)
  {
    v6 = MEMORY[0x277C92DA0](v5);
    *(v4 + 24) = v6;
    v3 = *(a1 + 40);
  }

  return sub_275FB73F0(v6, v3);
}

const void ***sub_275FB76F8(const void ***result, const void ***a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 1;
  v9 = a2 - 2;
  v10 = a2 - 3;
  v11 = v7;
LABEL_3:
  v12 = 1 - a4;
  while (1)
  {
    v7 = v11;
    v13 = v12;
    v14 = a2 - v11;
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {
      result = sub_275FB33F0(a3, a2 - 1, v11);
      if (result)
      {
        v49 = *v11;
LABEL_80:
        *v11 = *v8;
LABEL_81:
        *v8 = v49;
        return result;
      }

      return result;
    }

LABEL_11:
    if (v14 <= 23)
    {
      if (a5)
      {

        return sub_275FB7F6C(v11, a2, a3);
      }

      else
      {

        return sub_275FB8040(v11, a2, a3);
      }
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        return sub_275FB8684(v11, a2, a2, a3);
      }

      return result;
    }

    v15 = &v11[v14 >> 1];
    if (v14 >= 0x81)
    {
      v16 = sub_275FB33F0(a3, &v11[v14 >> 1], v11);
      v17 = sub_275FB33F0(a3, a2 - 1, v15);
      if (v16)
      {
        v18 = *v7;
        if (v17)
        {
          *v7 = *v8;
          goto LABEL_28;
        }

        *v7 = *v15;
        *v15 = v18;
        if (sub_275FB33F0(a3, a2 - 1, v15))
        {
          v18 = *v15;
          *v15 = *v8;
LABEL_28:
          *v8 = v18;
        }
      }

      else if (v17)
      {
        v22 = *v15;
        *v15 = *v8;
        *v8 = v22;
        if (sub_275FB33F0(a3, v15, v7))
        {
          v23 = *v7;
          *v7 = *v15;
          *v15 = v23;
        }
      }

      v26 = v15 - 1;
      v27 = sub_275FB33F0(a3, v15 - 1, v7 + 1);
      v28 = sub_275FB33F0(a3, a2 - 2, v15 - 1);
      if (v27)
      {
        v29 = v7[1];
        if (v28)
        {
          v7[1] = *v9;
          goto LABEL_40;
        }

        v7[1] = *v26;
        *v26 = v29;
        if (sub_275FB33F0(a3, a2 - 2, v15 - 1))
        {
          v29 = *v26;
          *v26 = *v9;
LABEL_40:
          *v9 = v29;
        }
      }

      else if (v28)
      {
        v30 = *v26;
        *v26 = *v9;
        *v9 = v30;
        if (sub_275FB33F0(a3, v15 - 1, v7 + 1))
        {
          v31 = v7[1];
          v7[1] = *v26;
          *v26 = v31;
        }
      }

      v32 = sub_275FB33F0(a3, v15 + 1, v7 + 2);
      v33 = sub_275FB33F0(a3, a2 - 3, v15 + 1);
      if (v32)
      {
        v34 = v7[2];
        if (v33)
        {
          v7[2] = *v10;
          goto LABEL_49;
        }

        v7[2] = v15[1];
        v15[1] = v34;
        if (sub_275FB33F0(a3, a2 - 3, v15 + 1))
        {
          v34 = v15[1];
          v15[1] = *v10;
LABEL_49:
          *v10 = v34;
        }
      }

      else if (v33)
      {
        v35 = v15[1];
        v15[1] = *v10;
        *v10 = v35;
        if (sub_275FB33F0(a3, v15 + 1, v7 + 2))
        {
          v36 = v7[2];
          v7[2] = v15[1];
          v15[1] = v36;
        }
      }

      v37 = sub_275FB33F0(a3, v15, v15 - 1);
      v38 = sub_275FB33F0(a3, v15 + 1, v15);
      if (v37)
      {
        v39 = *v26;
        if (v38)
        {
          v40 = *v15;
          *v26 = v15[1];
          v15[1] = v39;
LABEL_59:
          v44 = *v7;
          *v7 = v40;
          *v15 = v44;
          goto LABEL_60;
        }

        *v26 = *v15;
        *v15 = v39;
        v43 = sub_275FB33F0(a3, v15 + 1, v15);
        v40 = *v15;
        if (!v43)
        {
          goto LABEL_59;
        }

        v42 = v15[1];
        *v15 = v42;
        v15[1] = v40;
      }

      else
      {
        v40 = *v15;
        if (!v38)
        {
          goto LABEL_59;
        }

        *v15 = v15[1];
        v15[1] = v40;
        v41 = sub_275FB33F0(a3, v15, v15 - 1);
        v40 = *v15;
        if (!v41)
        {
          goto LABEL_59;
        }

        v42 = *v26;
        *v26 = v40;
        *v15 = v42;
      }

      v40 = v42;
      goto LABEL_59;
    }

    v19 = sub_275FB33F0(a3, v11, &v11[v14 >> 1]);
    v20 = sub_275FB33F0(a3, a2 - 1, v7);
    if (v19)
    {
      v21 = *v15;
      if (v20)
      {
        *v15 = *v8;
LABEL_37:
        *v8 = v21;
        goto LABEL_60;
      }

      *v15 = *v7;
      *v7 = v21;
      if (sub_275FB33F0(a3, a2 - 1, v7))
      {
        v21 = *v7;
        *v7 = *v8;
        goto LABEL_37;
      }
    }

    else if (v20)
    {
      v24 = *v7;
      *v7 = *v8;
      *v8 = v24;
      if (sub_275FB33F0(a3, v7, v15))
      {
        v25 = *v15;
        *v15 = *v7;
        *v7 = v25;
      }
    }

LABEL_60:
    if ((a5 & 1) == 0 && !sub_275FB33F0(a3, v7 - 1, v7))
    {
      result = sub_275FB80F8(v7, a2, a3);
      v11 = result;
      goto LABEL_67;
    }

    v45 = sub_275FB8220(v7, a2, a3);
    if ((v46 & 1) == 0)
    {
      goto LABEL_65;
    }

    v47 = sub_275FB8350(v7, v45, a3);
    v11 = v45 + 1;
    result = sub_275FB8350(v45 + 1, a2, a3);
    if (result)
    {
      a4 = -v13;
      a2 = v45;
      if (v47)
      {
        return result;
      }

      goto LABEL_2;
    }

    v12 = v13 + 1;
    if (!v47)
    {
LABEL_65:
      result = sub_275FB76F8(v7, v45, a3, -v13, a5 & 1);
      v11 = v45 + 1;
LABEL_67:
      a5 = 0;
      a4 = -v13;
      goto LABEL_3;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      return sub_275FB7E1C(v11, v11 + 1, v11 + 2, a2 - 1, a3);
    }

    if (v14 == 5)
    {
      sub_275FB7E1C(v11, v11 + 1, v11 + 2, v11 + 3, a3);
      result = sub_275FB33F0(a3, a2 - 1, v11 + 3);
      if (!result)
      {
        return result;
      }

      v50 = v11[3];
      v11[3] = *v8;
      *v8 = v50;
      result = sub_275FB33F0(a3, v11 + 3, v11 + 2);
      if (!result)
      {
        return result;
      }

      *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
      result = sub_275FB33F0(a3, v11 + 2, v11 + 1);
      if (!result)
      {
        return result;
      }

      *(v11 + 1) = vextq_s8(*(v11 + 1), *(v11 + 1), 8uLL);
      goto LABEL_95;
    }

    goto LABEL_11;
  }

  v48 = sub_275FB33F0(a3, v11 + 1, v11);
  result = sub_275FB33F0(a3, v8, v11 + 1);
  if (!v48)
  {
    if (!result)
    {
      return result;
    }

    v51 = v11[1];
    v11[1] = *v8;
    *v8 = v51;
LABEL_95:
    result = sub_275FB33F0(a3, v11 + 1, v11);
    if (result)
    {
      *v11 = vextq_s8(*v11, *v11, 8uLL);
    }

    return result;
  }

  v49 = *v11;
  if (result)
  {
    goto LABEL_80;
  }

  *v11 = v11[1];
  v11[1] = v49;
  result = sub_275FB33F0(a3, v8, v11 + 1);
  if (result)
  {
    v49 = v11[1];
    v11[1] = *v8;
    goto LABEL_81;
  }

  return result;
}

BOOL sub_275FB7E1C(const void ***a1, const void ***a2, const void ***a3, const void ***a4, uint64_t a5)
{
  v10 = sub_275FB33F0(a5, a2, a1);
  v11 = sub_275FB33F0(a5, a3, a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v12;
    if (sub_275FB33F0(a5, a3, a2))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if (sub_275FB33F0(a5, a2, a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

LABEL_10:
  result = sub_275FB33F0(a5, a4, a3);
  if (result)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    result = sub_275FB33F0(a5, a3, a2);
    if (result)
    {
      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      result = sub_275FB33F0(a5, a2, a1);
      if (result)
      {
        v18 = *a1;
        *a1 = *a2;
        *a2 = v18;
      }
    }
  }

  return result;
}

const void ***sub_275FB7F6C(const void ***result, const void ***a2, uint64_t a3)
{
  if (result != a2)
  {
    v14[7] = v3;
    v14[8] = v4;
    v6 = result;
    v7 = result + 1;
    if (result + 1 != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = sub_275FB33F0(a3, v7, v11);
        if (result)
        {
          v14[0] = *v10;
          v12 = v9;
          while (1)
          {
            *(v6 + v12 + 8) = *(v6 + v12);
            if (!v12)
            {
              break;
            }

            v12 -= 8;
            result = sub_275FB33F0(a3, v14, (v6 + v12));
            if ((result & 1) == 0)
            {
              v13 = (v6 + v12 + 8);
              goto LABEL_10;
            }
          }

          v13 = v6;
LABEL_10:
          *v13 = v14[0];
        }

        v7 = v10 + 1;
        v9 += 8;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

const void ***sub_275FB8040(const void ***result, const void ***a2, uint64_t a3)
{
  if (result != a2)
  {
    v12[7] = v3;
    v12[8] = v4;
    v6 = result;
    v7 = result + 1;
    if (result + 1 != a2)
    {
      v9 = result - 1;
      do
      {
        v10 = v6;
        v6 = v7;
        result = sub_275FB33F0(a3, v7, v10);
        if (result)
        {
          v12[0] = *v6;
          v11 = v9;
          do
          {
            v11[2] = v11[1];
            result = sub_275FB33F0(a3, v12, v11--);
          }

          while ((result & 1) != 0);
          v11[2] = v12[0];
        }

        v7 = v6 + 1;
        ++v9;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

const void ***sub_275FB80F8(const void ***a1, const void ***a2, uint64_t a3)
{
  v4 = a2;
  v11 = *a1;
  if (sub_275FB33F0(a3, &v11, a2 - 1))
  {
    v6 = a1;
    do
    {
      ++v6;
    }

    while (!sub_275FB33F0(a3, &v11, v6));
  }

  else
  {
    v7 = a1 + 1;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = sub_275FB33F0(a3, &v11, v7);
      v7 = v6 + 1;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      --v4;
    }

    while (sub_275FB33F0(a3, &v11, v4));
  }

  while (v6 < v4)
  {
    v9 = *v6;
    *v6 = *v4;
    *v4 = v9;
    do
    {
      ++v6;
    }

    while (!sub_275FB33F0(a3, &v11, v6));
    do
    {
      --v4;
    }

    while (sub_275FB33F0(a3, &v11, v4));
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v11;
  return v6;
}

const void ***sub_275FB8220(const void ***a1, const void ***a2, uint64_t a3)
{
  v6 = 0;
  v13 = *a1;
  do
  {
    ++v6;
  }

  while (sub_275FB33F0(a3, &a1[v6], &v13));
  v7 = &a1[v6];
  v8 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      --a2;
    }

    while (!sub_275FB33F0(a3, a2, &v13));
  }

  else
  {
    do
    {
      --a2;
    }

    while (!sub_275FB33F0(a3, a2, &v13));
  }

  if (v7 < a2)
  {
    v9 = &a1[v6];
    v10 = a2;
    do
    {
      v11 = *v9;
      *v9 = *v10;
      *v10 = v11;
      do
      {
        ++v9;
      }

      while (sub_275FB33F0(a3, v9, &v13));
      do
      {
        --v10;
      }

      while (!sub_275FB33F0(a3, v10, &v13));
    }

    while (v9 < v10);
    v8 = v9 - 1;
  }

  if (v8 != a1)
  {
    *a1 = *v8;
  }

  *v8 = v13;
  return v8;
}

BOOL sub_275FB8350(const void ***a1, const void ***a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 1;
        v11 = sub_275FB33F0(a3, a1 + 1, a1);
        v12 = sub_275FB33F0(a3, v7, a1 + 1);
        if (v11)
        {
          v8 = *a1;
          if (!v12)
          {
            *a1 = a1[1];
            a1[1] = v8;
            if (!sub_275FB33F0(a3, v7, a1 + 1))
            {
              return 1;
            }

            v8 = a1[1];
            a1[1] = *v7;
            goto LABEL_16;
          }

LABEL_15:
          *a1 = *v7;
LABEL_16:
          *v7 = v8;
          return 1;
        }

        if (!v12)
        {
          return 1;
        }

        v17 = a1[1];
        a1[1] = *v7;
        *v7 = v17;
        break;
      case 4:
        sub_275FB7E1C(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        v9 = a2 - 1;
        sub_275FB7E1C(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!sub_275FB33F0(a3, v9, a1 + 3))
        {
          return 1;
        }

        v10 = a1[3];
        a1[3] = *v9;
        *v9 = v10;
        if (!sub_275FB33F0(a3, a1 + 3, a1 + 2))
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        if (!sub_275FB33F0(a3, a1 + 2, a1 + 1))
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        break;
      default:
        goto LABEL_17;
    }

    if (sub_275FB33F0(a3, a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if (sub_275FB33F0(a3, a2 - 1, a1))
    {
      v8 = *a1;
      goto LABEL_15;
    }

    return 1;
  }

LABEL_17:
  v13 = a1 + 2;
  v14 = sub_275FB33F0(a3, a1 + 1, a1);
  v15 = sub_275FB33F0(a3, a1 + 2, a1 + 1);
  if (v14)
  {
    v16 = *a1;
    if (v15)
    {
      *a1 = a1[2];
      a1[2] = v16;
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v16;
      if (sub_275FB33F0(a3, a1 + 2, a1 + 1))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v15)
  {
    *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    if (sub_275FB33F0(a3, a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v18 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  while (1)
  {
    if (sub_275FB33F0(a3, v18, v13))
    {
      v25 = *v18;
      v21 = v19;
      while (1)
      {
        v22 = (a1 + v21);
        *(a1 + v21 + 24) = *(a1 + v21 + 16);
        if (v21 == -16)
        {
          break;
        }

        v21 -= 8;
        if (!sub_275FB33F0(a3, &v25, v22 + 1))
        {
          v23 = (a1 + v21 + 24);
          goto LABEL_40;
        }
      }

      v23 = a1;
LABEL_40:
      *v23 = v25;
      if (++v20 == 8)
      {
        return v18 + 1 == a2;
      }
    }

    v13 = v18;
    v19 += 8;
    if (++v18 == a2)
    {
      return 1;
    }
  }
}

const void ***sub_275FB8684(const void ***a1, const void ***a2, const void ***a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_275FB87D0(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if (sub_275FB33F0(a4, v12, a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_275FB87D0(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 1;
      do
      {
        v15 = *a1;
        v16 = sub_275FB8908(a1, a4, v8);
        if (v14 == v16)
        {
          *v16 = v15;
        }

        else
        {
          *v16 = *v14;
          *v14 = v15;
          sub_275FB89B4(a1, (v16 + 1), a4, v16 + 1 - a1);
        }

        --v14;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

BOOL sub_275FB87D0(_BOOL8 result, uint64_t a2, uint64_t a3, const void ***a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v19[11] = v4;
    v19[12] = v5;
    v7 = a4;
    v8 = result;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - result) >> 3)
    {
      v12 = (a4 - result) >> 2;
      v13 = v12 + 1;
      v14 = (result + 8 * (v12 + 1));
      v15 = v12 + 2;
      if (v12 + 2 < a3 && sub_275FB33F0(a2, (result + 8 * (v12 + 1)), v14 + 1))
      {
        ++v14;
        v13 = v15;
      }

      result = sub_275FB33F0(a2, v14, v7);
      if (!result)
      {
        v19[0] = *v7;
        do
        {
          v16 = v14;
          *v7 = *v14;
          if (v9 < v13)
          {
            break;
          }

          v17 = (2 * v13) | 1;
          v14 = (v8 + 8 * v17);
          v18 = 2 * v13 + 2;
          if (v18 < a3 && sub_275FB33F0(a2, (v8 + 8 * v17), v14 + 1))
          {
            ++v14;
            v17 = v18;
          }

          result = sub_275FB33F0(a2, v14, v19);
          v7 = v16;
          v13 = v17;
        }

        while (!result);
        *v16 = v19[0];
      }
    }
  }

  return result;
}

void *sub_275FB8908(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 2;
      if (sub_275FB33F0(a2, v8 + 1, v8 + 2))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    *a1 = *v9;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

BOOL sub_275FB89B4(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v13[7] = v4;
    v13[8] = v5;
    v8 = result;
    v9 = v6 >> 1;
    v10 = (result + 8 * (v6 >> 1));
    v11 = (a2 - 8);
    result = sub_275FB33F0(a3, v10, (a2 - 8));
    if (result)
    {
      v13[0] = *v11;
      do
      {
        v12 = v10;
        *v11 = *v10;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (v8 + 8 * v9);
        result = sub_275FB33F0(a3, v10, v13);
        v11 = v12;
      }

      while (result);
      *v12 = v13[0];
    }
  }

  return result;
}

uint64_t *sub_275FB8A60(uint64_t *a1, uint64_t *a2)
{
  if (a1[5] == a2[5])
  {

    return sub_275FB8B04(a1, a2);
  }

  else
  {
    sub_275FB8B58(v5, a1);
    sub_275FB8C24(a1, a2);
    sub_275FB8C24(a2, v5);
    return sub_275FB23AC(v5);
  }
}

uint64_t *sub_275FB8B04(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  result[2] = a2[2];
  a2[2] = v4;
  v5 = result[3];
  v6 = result[4];
  v7 = a2[4];
  result[3] = a2[3];
  result[4] = v7;
  a2[3] = v5;
  a2[4] = v6;
  v8 = result[5];
  result[5] = a2[5];
  a2[5] = v8;
  return result;
}

uint64_t sub_275FB8B58(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D80A88];
  *a1 = xmmword_27605AD60;
  *(a1 + 16) = xmmword_27605AD60;
  *(a1 + 32) = v3;
  *(a1 + 40) = 0;
  v4 = a2[3];
  v5 = a2[1];
  if (v5 <= v4)
  {
    v7 = 0;
  }

  else
  {
    v6 = a2[4];
    while (1)
    {
      v7 = *(v6 + 8 * v4);
      if (v7)
      {
        break;
      }

      if (v5 == ++v4)
      {
        v7 = 0;
        v4 = a2[1];
        goto LABEL_9;
      }
    }

    if (v7 == *(v6 + 8 * (v4 ^ 1)))
    {
      v7 = *(*v7 + 40);
    }
  }

LABEL_9:
  *&v10 = v7;
  *(&v10 + 1) = a2;
  v11 = v4;
  memset(v9, 0, sizeof(v9));
  sub_275FB8CD8(a1, &v10, v9);
  return a1;
}

uint64_t *sub_275FB8C24(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    sub_275FB2400(a1);
    v4 = a2[3];
    v5 = a2[1];
    if (v5 <= v4)
    {
      v7 = 0;
    }

    else
    {
      v6 = a2[4];
      while (1)
      {
        v7 = *(v6 + 8 * v4);
        if (v7)
        {
          break;
        }

        if (v5 == ++v4)
        {
          v7 = 0;
          v4 = a2[1];
          goto LABEL_10;
        }
      }

      if (v7 == *(v6 + 8 * (v4 ^ 1)))
      {
        v7 = *(*v7 + 40);
      }
    }

LABEL_10:
    *&v10 = v7;
    *(&v10 + 1) = a2;
    v11 = v4;
    memset(v9, 0, sizeof(v9));
    sub_275FB8CD8(a1, &v10, v9);
  }

  return a1;
}

uint64_t *sub_275FB8CD8(uint64_t *result, __int128 *a2, void *a3)
{
  v7 = *a2;
  v8 = *(a2 + 2);
  v3 = v7;
  if (v7 != *a3)
  {
    v5 = result;
    do
    {
      sub_275FB2D80(v5, v3, 0, v9);
      if (!v9[0])
      {
        v6 = v7;
        sub_275FB3464(v5, v7, v9);
        TSWP::MergeFieldTypeArchive::CopyFrom((v9[0] + 24), (v6 + 24));
      }

      result = sub_275FB4204(&v7);
      v3 = v7;
    }

    while (v7 != *a3);
  }

  return result;
}

uint64_t sub_275FB8D80(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037954(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 304, sub_275FB8E08);
}

void *sub_275FB8E0C(uint64_t a1)
{
  v2 = sub_275FB8E80(a1, 1);
  *v2 = &unk_2884FEA90;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812F8438, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_275FB8E80(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037990(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275FB8F08);
}

uint64_t sub_275FB8F0C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2760379C0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 128, sub_275FB8F94);
}

void *sub_275FB8F98(uint64_t a1)
{
  v2 = sub_275FB900C(a1, 1);
  *v2 = &unk_2884FEBF0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812F8240, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_275FB900C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2760379FC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275FB9094);
}

uint64_t sub_275FB9098(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037A2C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275FB9120);
}

uint64_t sub_275FB9124(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037A5C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275FB91AC);
}

void *sub_275FB91B0(uint64_t a1)
{
  v2 = sub_275FB9224(a1, 1);
  *v2 = &unk_2884FEE00;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812F8090, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_275FB9224(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037A8C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275FB92AC);
}

uint64_t sub_275FB92B0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037ABC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, sub_275FB9338);
}

uint64_t sub_275FB933C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037AEC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275FB93C4);
}

uint64_t sub_275FB93C8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037B1C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275FB9450);
}

uint64_t sub_275FB9454(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037B4C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, sub_275FB94DC);
}

uint64_t sub_275FB94E0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037B7C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275FB9568);
}

uint64_t sub_275FB956C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037BAC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, sub_275FB95F4);
}

uint64_t sub_275FB95F8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037BDC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 216, sub_275FB9680);
}

uint64_t sub_275FB9684(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037C18(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275FB970C);
}

uint64_t sub_275FB972C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037C48(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275FB97B4);
}

uint64_t sub_275FB97D4(uint64_t a1)
{
  v2 = sub_275FB9850(a1, 1);
  *v2 = &unk_2884FF4E0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812F7F48, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_275FB9850(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037C78(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275FB98D8);
}

uint64_t sub_275FB98DC(uint64_t a1)
{
  v2 = sub_275FB9960(a1, 1);
  *v2 = &unk_2884FF590;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812F83D0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_275FB9960(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037CA8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, sub_275FB99E8);
}

uint64_t sub_275FB99EC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037CD8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 256, sub_275FB9A74);
}

uint64_t sub_275FB9A78(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037D08(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_275FB9B00);
}

uint64_t sub_275FB9B20(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037D38(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275FB9BA8);
}

void *sub_275FB9BAC(uint64_t a1)
{
  v2 = sub_275FB9C20(a1, 1);
  *v2 = &unk_2884FF850;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812F8410, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_275FB9C20(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037D68(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275FB9CA8);
}

uint64_t sub_275FB9CAC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037D98(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275FB9D34);
}

uint64_t sub_275FB9D54(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037DC8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_275FB9DDC);
}

uint64_t sub_275FB9DE0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037DF8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275FB9E68);
}

uint64_t sub_275FB9E6C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037E28(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, sub_275FB9EF4);
}

uint64_t sub_275FB9EF8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037E58(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 160, sub_275FB9F80);
}

uint64_t sub_275FB9F84(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037E94(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_275FBA00C);
}

uint64_t sub_275FBA02C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037EC4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 256, sub_275FBA0B4);
}

void *sub_275FBA0B8(uint64_t a1)
{
  v2 = sub_275FBA12C(a1, 1);
  *v2 = &unk_2884FFDD0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812F8540, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_275FBA12C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037EF4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275FBA1B4);
}

uint64_t sub_275FBA1B8(uint64_t a1)
{
  v2 = sub_275FBA230(a1, 1);
  *v2 = &unk_2884FFE80;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812F8520, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_275FBA230(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037F24(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275FBA2B8);
}

uint64_t sub_275FBA2BC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037F54(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275FBA344);
}

uint64_t sub_275FBA348(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037F84(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275FBA3D0);
}

uint64_t sub_275FBA3D4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037FB4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_275FBA45C);
}

uint64_t sub_275FBA460(uint64_t a1)
{
  v2 = sub_275FBA4D8(a1, 1);
  *v2 = &unk_288500140;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812F82D8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_275FBA4D8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276037FF0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275FBA560);
}

uint64_t sub_275FBA564(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276038020(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, sub_275FBA5EC);
}

void *sub_275FBA5F0(uint64_t a1)
{
  v2 = sub_275FBA664(a1, 1);
  *v2 = &unk_2885002A0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812F8390, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_275FBA664(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276038050(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_275FBA6EC);
}

uint64_t sub_275FBA6F0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276038080(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, sub_275FBA778);
}

uint64_t sub_275FBA77C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2760380B0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, sub_275FBA804);
}

uint64_t sub_275FBA808(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2760380EC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275FBA890);
}

uint64_t sub_275FBA8B4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27603811C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_275FBA93C);
}

uint64_t sub_275FBA960(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27603814C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C92DB0);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 368, sub_275FBA9E8);
}

_BYTE *sub_275FBA9EC(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_275FB2CD8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t sub_275FBABEC(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_275FB1588(v1, va);
}

void sub_275FBAC4C(__n128 a1, __n128 a2, __n128 a3, __n128 a4, uint64_t a5, const char *a6)
{
  v11 = objc_msgSend_sharedRegistry(MEMORY[0x277D80880], a6, a1, a2, a3, a4);
  sub_275FBACDC(v11, v11);

  v12 = objc_msgSend_sharedRegistry(MEMORY[0x277D80AB0], v6, v7, v8, v9, v10);
  sub_275FBB044(v12, v12);
}

void sub_275FBACDC(uint64_t a1, void *a2)
{
  v95 = a2;
  String();
  TSWPRegisterPersistentClasses();
  TSDRegisterPersistentClasses();
  TSKRegisterPersistentClasses();
  __C();
  TSTRegisterPersistentClasses();
  __C();
  __C();
  TSARegisterPersistentClasses();
  v2 = sub_275F8A5EC();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v95, v3, v4, v5, v6, v7, 10000, v2, *off_2812F85B8, "TPDocumentRoot");
  v8 = sub_275F8DA08();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v95, v9, v10, v11, v12, v13, 10001, v8, off_2812F85B8[2], "TPTheme");
  v14 = sub_275F92EBC();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v95, v15, v16, v17, v18, v19, 10010, v14, off_2812F85B8[16], "TPFloatingDrawables");
  v20 = sub_275F96B90();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setOverrideMessageType_messagePrototype_descriptor_unarchiveClassname_(v95, v21, v22, v23, v24, v25, 10011, v20, off_2812F85B8[26], "TPSection");
  v26 = sub_275F8E200();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v95, v27, v28, v29, v30, v31, 10012, v26, off_2812F85B8[4], "TPDocumentSettings");
  v32 = sub_275F93808();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v95, v33, v34, v35, v36, v37, 10015, v32, off_2812F85B8[18], "TPDrawablesZOrder");
  v38 = sub_275F9591C();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v95, v39, v40, v41, v42, v43, 10017, v38, off_2812F85B8[24], "TPPageTemplate");
  v44 = sub_275FA11D8();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v95, v45, v46, v47, v48, v49, 10131, v44, off_2812F85B8[50], "TPArchivedLayoutState");
  v50 = sub_275FA2510();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v95, v51, v52, v53, v54, v55, 10132, v50, off_2812F85B8[52], "TPArchivedCanvasSelection");
  v56 = sub_275FA44F4();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v95, v57, v58, v59, v60, v61, 10133, v56, off_2812F85B8[56], "TPArchivedUIState");
  v62 = sub_275F94024();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v95, v63, v64, v65, v66, v67, 10143, v62, off_2812F85B8[20], "TPSectionTemplatePage");
  objc_msgSend_setDeprecatedMessageType_(v95, v68, v69, v70, v71, v72, 10144);
  objc_msgSend_setDeprecatedMessageType_(v95, v73, v74, v75, v76, v77, 10145);
  objc_msgSend_setDeprecatedMessageType_(v95, v78, v79, v80, v81, v82, 10146);
  v83 = sub_275FA704C();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v95, v84, v85, v86, v87, v88, 10147, v83, off_2812F85B8[58], "TPViewStateRoot");
  v89 = sub_275F9E5B8();
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_setMessageType_messagePrototype_descriptor_unarchiveClassname_(v95, v90, v91, v92, v93, v94, 10166, v89, off_2812F85B8[38], "TPNullChildHint");
}

void sub_275FBB044(uint64_t a1, void *a2)
{
  v8 = a2;
  v7 = objc_msgSend_sharedRegistry(MEMORY[0x277D80880], v2, v3, v4, v5, v6);
  String();
  TSDRegisterPropertyCommandObjects();
  TSTRegisterPropertyCommandObjects();
  TSWPRegisterPropertyCommandObjects();
}

id sub_275FBBA9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_msgSend_CGRectValue(v3, v5, v6, v7, v8, v9);
  objc_msgSend_rectInRoot_(v4, v10, v11, v12, v13, v14);
  v20 = objc_msgSend_valueWithCGRect_(MEMORY[0x277CCAE60], v15, v16, v17, v18, v19);

  return v20;
}

void sub_275FBD0BC()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

void sub_275FBD100()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

void sub_275FBE5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_275FBEE60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_275FBEE78(uint64_t a1, void *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, _BYTE *a8)
{
  result = objc_msgSend_layoutResultFlags(a2, a2, a3, a4, a5, a6);
  if ((result & 0x80) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a8 = 1;
  }

  return result;
}

void sub_275FBF81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  _Block_object_dispose((v14 - 176), 8);

  sub_275FB56E8((v14 - 128));
  _Unwind_Resume(a1);
}

uint64_t sub_275FBF8BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_275FBF8FC(uint64_t a1, const char *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v206 = *MEMORY[0x277D85DE8];
  if (*(a1 + 68))
  {
    v199 = 0;
  }

  else
  {
    objc_opt_class();
    v12 = objc_msgSend_context(*(a1 + 32), v7, v8, v9, v10, v11);
    v18 = objc_msgSend_documentObject(v12, v13, v14, v15, v16, v17);
    v19 = TSUDynamicCast();
    objc_storeWeak((*(a1 + 32) + 88), v19);

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
    v199 = objc_msgSend_drawablesZOrder(WeakRetained, v21, v22, v23, v24, v25);
  }

  if (*(a1 + 64) >= 1)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), a2, a3, a4, a5, a6, v26);
      v34 = objc_msgSend_pageIndex(v28, v29, v30, v31, v32, v33);

      if (v34 >= 0x7FFFFFFF)
      {
        v40 = MEMORY[0x277D81150];
        v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, v36, v37, v38, v39, "[TPFloatingDrawables loadFromUnarchiver:]_block_invoke_3");
        v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, v43, v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v48, v49, v50, v51, v52, v41, v47, 154, 0, "bad page index: %lu for drawable", v34);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55, v56, v57);
      }

      if (v34 <= 0x7FFFFFFE)
      {
        v58 = v34;
      }

      else
      {
        v58 = 0;
      }

      v59 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v35, v36, v37, v38, v39, v26);
      v65 = objc_msgSend_bgCount(v59, v60, v61, v62, v63, v64);

      v71 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v66, v67, v68, v69, v70, v26);
      v77 = objc_msgSend_fgCount(v71, v72, v73, v74, v75, v76);

      if (v65 | v77)
      {
        if (*(a1 + 68) == 1)
        {
          v83 = MEMORY[0x277D81150];
          v84 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, v79, v80, v81, v82, "[TPFloatingDrawables loadFromUnarchiver:]_block_invoke_3");
          v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v85, v86, v87, v88, v89, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v83, v91, v92, v93, v94, v95, v84, v90, 163, 0, "Deep copy shouldn't require upgrading");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v96, v97, v98, v99, v100);
        }

        v101 = objc_loadWeakRetained((*(a1 + 32) + 88));
        v107 = objc_msgSend_bodyStorage(v101, v102, v103, v104, v105, v106);

        v113 = objc_msgSend_zOrderOfDrawable_(v199, v108, v109, v110, v111, v112, v107);
        v198 = v107;
        if (v65 >= 1)
        {
          v119 = v113;
          v120 = v65 + 1;
          do
          {
            v122 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 48) + 8) + 40), v114, v115, v116, v117, v118, v27);
            if (v122)
            {
              objc_msgSend_willModifyForUpgrade(*(a1 + 32), v121, v123, v124, v125, v126);
              objc_msgSend_p_addDrawable_toPageIndex_(*(a1 + 32), v127, v128, v129, v130, v131, v122, v58);
              v132 = objc_loadWeakRetained((*(a1 + 32) + 88));
              objc_msgSend_didAddDrawable_(v132, v133, v134, v135, v136, v137, v122);

              objc_msgSend_moveDrawable_toZOrder_(v199, v138, v139, v140, v141, v142, v122, v119++);
            }

            ++v27;
            --v120;
          }

          while (v120 > 1);
        }

        if (v77 >= 1)
        {
          v143 = v77 + 1;
          do
          {
            v145 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 48) + 8) + 40), v114, v115, v116, v117, v118, v27);
            if (v145)
            {
              objc_msgSend_willModifyForUpgrade(*(a1 + 32), v144, v146, v147, v148, v149);
              objc_msgSend_p_addDrawable_toPageIndex_(*(a1 + 32), v150, v151, v152, v153, v154, v145, v58);
              v155 = objc_loadWeakRetained((*(a1 + 32) + 88));
              objc_msgSend_didAddDrawable_(v155, v156, v157, v158, v159, v160, v145);
            }

            ++v27;
            --v143;
          }

          while (v143 > 1);
        }
      }

      else
      {
        v161 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v78, v79, v80, v81, v82, v26);
        v167 = objc_msgSend_drawableCount(v161, v162, v163, v164, v165, v166);

        if (v167 >= 1)
        {
          v168 = v167 + 1;
          do
          {
            v170 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 48) + 8) + 40), a2, a3, a4, a5, a6, v27);
            if (v170)
            {
              objc_msgSend_p_addDrawable_toPageIndex_(*(a1 + 32), v169, v171, v172, v173, v174, v170, v58);
            }

            ++v27;
            --v168;
          }

          while (v168 > 1);
        }
      }

      ++v26;
    }

    while (v26 < *(a1 + 64));
  }

  v175 = objc_opt_new();
  v176 = *(a1 + 32);
  v177 = *(v176 + 80);
  v204[0] = MEMORY[0x277D85DD0];
  v178.n128_u64[0] = 3221225472;
  v204[1] = 3221225472;
  v204[2] = sub_275FBFF80;
  v204[3] = &unk_27A6A82E0;
  v179 = *(a1 + 56);
  v204[5] = v175;
  v204[6] = v179;
  v204[4] = v176;
  objc_msgSend_tsu_enumerateKeysAndObjectsUsingBlock_(v177, v180, v178, v181, v182, v183, v204);
  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v184 = v175;
  v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(v184, v185, v186, v187, v188, v189, &v200, v205, 16);
  if (v191)
  {
    v196 = *v201;
    do
    {
      for (i = 0; i != v191; ++i)
      {
        if (*v201 != v196)
        {
          objc_enumerationMutation(v184);
        }

        objc_msgSend_removeObjectForKey_(*(*(a1 + 32) + 80), v190, v192, v193, v194, v195, *(*(&v200 + 1) + 8 * i));
      }

      v191 = objc_msgSend_countByEnumeratingWithState_objects_count_(v184, v190, v192, v193, v194, v195, &v200, v205, 16);
    }

    while (v191);
  }
}

void sub_275FBFF80(uint64_t a1, void *a2, void *a3)
{
  v36 = a2;
  v6 = a3;
  if (*(a1 + 48) >= *MEMORY[0x277D80990])
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 72), v5, v7, v8, v9, v10, v36);

    if (!v11)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v7, v8, v9, v10, "[TPFloatingDrawables loadFromUnarchiver:]_block_invoke_4");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v20, v21, v22, v23, v24, v13, v19, 213, 0, "tagged drawable is not on any page in the document");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27, v28, v29);
    }
  }

  v30 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 72), v5, v7, v8, v9, v10, v36);

  if (!v30)
  {
    objc_msgSend_addObject_(*(a1 + 40), v31, v32, v33, v34, v35, v36);
  }
}

uint64_t sub_275FC083C(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v10 = objc_msgSend_objectUUID(a2, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_UUIDString(v10, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_objectUUID(v4, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_UUIDString(v22, v23, v24, v25, v26, v27);
  v34 = objc_msgSend_compare_(v16, v29, v30, v31, v32, v33, v28);

  return v34;
}

void sub_275FC0914(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_275FB2CD8();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_275FC0A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_275FC0D50(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_275FC1868(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) != v3)
  {
    v37 = v3;
    v8 = objc_msgSend_tagForDrawable_(*(a1 + 40), v3, v4, v5, v6, v7, v3);
    if (objc_msgSend_isEqualToString_(v8, v9, v10, v11, v12, v13, *(a1 + 48)))
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, v15, v16, v17, v18, "[TPFloatingDrawables applyTag:toDrawable:]_block_invoke");
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPFloatingDrawables.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v27, v28, v29, v30, v31, v20, v26, 411, 0, "The tag %@ is already applied to another drawable on the page index %@", *(a1 + 48), *(a1 + 56));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35, v36);
    }

    v3 = v37;
  }
}

void sub_275FC3E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TPPaginatedPageLayout;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_275FC46DC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_275FC4768(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_275FC4B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, char a35)
{
  _Block_object_dispose(&a29, 8);
  objc_destroyWeak(&a34);
  _Block_object_dispose(&a35, 8);

  _Unwind_Resume(a1);
}

void sub_275FC4BF0(uint64_t a1, void *a2)
{
  v16 = &unk_2885122F0;
  v17 = a2;
  v3 = TSUProtocolCast();
  if ((objc_opt_respondsToSelector() & 1) != 0 && objc_msgSend_invalidateForPageCountChange(v3, v4, v5, v6, v7, v8, &unk_2885122F0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v9 = objc_msgSend_children(v17, v4, v5, v6, v7, v8, v16);
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  objc_msgSend_enumerateObjectsUsingBlock_(v9, v11, v12, v13, v14, v15, WeakRetained);
}

void sub_275FC4CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  _Unwind_Resume(a1);
}

id sub_275FC5090(void *a1, void *a2)
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v10 = objc_msgSend_set(MEMORY[0x277CBEB58], v5, v6, v7, v8, v9);
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v15 = objc_msgSend_children(v3, v11, 0, v12, v13, v14);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, v17, v18, v19, v20, &v66, v71, 16);
  if (v22)
  {
    v27 = *v67;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v67 != v27)
        {
          objc_enumerationMutation(v15);
        }

        v29 = *(*(&v66 + 1) + 8 * i);
        v30 = objc_msgSend_info(v29, v21, v23, v24, v25, v26);
        v31 = v30 == v4;

        if (v31)
        {
          objc_msgSend_addObject_(v10, v21, v23, v24, v25, v26, v29);
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v21, v23, v24, v25, v26, &v66, v71, 16);
    }

    while (v22);
  }

  if (!objc_msgSend_count(v10, v32, v33, v34, v35, v36))
  {
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v41 = objc_msgSend_children(v3, v37, 0, v38, v39, v40, 0);
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, v43, v44, v45, v46, &v62, v70, 16);
    if (v47)
    {
      v48 = *v63;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v63 != v48)
          {
            objc_enumerationMutation(v41);
          }

          v50 = sub_275FC5090(*(*(&v62 + 1) + 8 * j), v4);
          objc_msgSend_unionSet_(v10, v51, v52, v53, v54, v55, v50);
        }

        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v56, v57, v58, v59, v60, &v62, v70, 16);
      }

      while (v47);
    }
  }

  return v10;
}

void sub_275FC5D50(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_275FC5E68(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_275FC6510()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D814B0];
  *MEMORY[0x277D814B0] = v0;
}

void sub_275FC6D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v10 = v8;

  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 + 40));

  _Unwind_Resume(a1);
}

void sub_275FC6D8C(uint64_t a1, void *a2)
{
  v34 = a2;
  objc_opt_class();
  v3 = TSUDynamicCast();
  v9 = v3;
  if (v3)
  {
    objc_msgSend_invalidateForcingFullReLayOut(v3, v4, v5, v6, v7, v8);
  }

  objc_opt_class();
  v11 = TSUDynamicCast();
  if (v11)
  {
    objc_opt_class();
    v16 = TSUDynamicCast();
    v22 = v16;
    if (!v16)
    {
      goto LABEL_8;
    }

    WeakRetained = objc_msgSend_containedLayout(v16, v17, v18, v19, v20, v21);
    objc_msgSend_invalidateForcingFullReLayOut(WeakRetained, v24, v25, v26, v27, v28);
  }

  else
  {
    v22 = objc_msgSend_children(v34, v10, v12, v13, v14, v15);
    WeakRetained = objc_loadWeakRetained((*(*(a1 + 32) + 8) + 40));
    objc_msgSend_enumerateObjectsUsingBlock_(v22, v29, v30, v31, v32, v33, WeakRetained);
  }

LABEL_8:
}

void sub_275FC6E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_275FC703C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

BOOL sub_275FC7D24(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 40))
  {
    v9 = 1;
  }

  else
  {
    objc_msgSend_frameInRoot(*(a1 + 32), v3, v5, v6, v7, v8);
    v11 = v10.n128_f64[0];
    v13 = v12.n128_f64[0];
    v15 = v14.n128_f64[0];
    v17 = v16.n128_f64[0];
    objc_msgSend_frameInRoot(v4, v18, v10, v12, v14, v16);
    v25.origin.x = v19;
    v25.origin.y = v20;
    v25.size.width = v21;
    v25.size.height = v22;
    v24.origin.x = v11;
    v24.origin.y = v13;
    v24.size.width = v15;
    v24.size.height = v17;
    v9 = CGRectIntersectsRect(v24, v25);
  }

  return v9;
}