uint64_t sub_275EE4E58(uint64_t *a1, int a2, const void **a3, _BYTE *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = a4 + 2;
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = a4 + 2;
        }

LABEL_18:
        *v7 = v4;
        v14 = v7 + 1;
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return v14 + v4;
      }
    }

    else if (v5 - a4 + 14 >= v4)
    {
      *a4 = v6 | 2;
      v7 = a4 + 1;
      goto LABEL_18;
    }
  }

  return MEMORY[0x2821EAB50]();
}

uint64_t sub_275EE4F84(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 8) != 0)
  {
    v4 = TSP::Reference::ByteSizeLong(*(a1 + 72));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x10) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(a1 + 80));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    v8 = TSP::Reference::ByteSizeLong(*(a1 + 88));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 0x80) == 0)
    {
      return v3;
    }

    goto LABEL_8;
  }

  if ((v2 & 0x80) != 0)
  {
LABEL_8:
    v6 = TSA::DocumentArchive::ByteSizeLong(*(a1 + 104));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t sub_275EE5088(uint64_t a1)
{
  if ((~*(a1 + 16) & 0xB8) != 0)
  {
    v9 = sub_275EE4F84(a1);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(*(a1 + 72));
    v3 = TSP::Reference::ByteSizeLong(*(a1 + 80));
    v4 = TSP::Reference::ByteSizeLong(*(a1 + 88));
    v5 = TSA::DocumentArchive::ByteSizeLong(*(a1 + 104));
    v6.i32[0] = v2 | 1;
    v6.i32[1] = v3 | 1;
    v6.i32[2] = v4 | 1;
    v6.i32[3] = v5 | 1;
    v7.i64[0] = 0x1F0000001FLL;
    v7.i64[1] = 0x1F0000001FLL;
    v8.i64[0] = 0x4900000049;
    v8.i64[1] = 0x4900000049;
    v9 = v2 + v4 + v3 + vaddlvq_u32(vshrq_n_u32(vmlal_u16(v8, vmovn_s32(veorq_s8(vclzq_s32(v6), v7)), 0x9000900090009), 6uLL)) + v5 + 4;
  }

  v10 = *(a1 + 32);
  v11 = v9 + v10;
  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = 8 * v10;
    do
    {
      v15 = *v13++;
      v16 = TSP::Reference::ByteSizeLong(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 16);
  if ((v17 & 7) != 0)
  {
    if (v17)
    {
      v23 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v24 = *(v23 + 23);
      v25 = *(v23 + 8);
      if ((v24 & 0x80u) == 0)
      {
        v25 = v24;
      }

      v11 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v17 & 2) == 0)
      {
LABEL_13:
        if ((v17 & 4) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else if ((v17 & 2) == 0)
    {
      goto LABEL_13;
    }

    v26 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v27 = *(v26 + 23);
    v28 = *(v26 + 8);
    if ((v27 & 0x80u) == 0)
    {
      v28 = v27;
    }

    v11 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v17 & 4) != 0)
    {
LABEL_14:
      v18 = TSP::Reference::ByteSizeLong(*(a1 + 64));
      v11 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_15:
  if ((v17 & 0x40) != 0)
  {
    v19 = sub_275EE121C(*(a1 + 96));
    v11 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v17 & 0x300) != 0)
  {
    if ((v17 & 0x100) != 0)
    {
      v20 = TSP::Reference::ByteSizeLong(*(a1 + 112));
      v11 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v17 & 0x200) != 0)
    {
      v21 = TSP::Size::ByteSizeLong(*(a1 + 120));
      v11 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v11, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v11;
    return v11;
  }
}

uint64_t sub_275EE533C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884F5D80, 0);
  if (v4)
  {

    return sub_275EE53E4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275EE53E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275EEF354((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275EEF600(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if (!v10)
  {
    goto LABEL_66;
  }

  if (v10)
  {
    *(v3 + 16) |= 1u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
  }

  if ((v10 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
  }

  v11 = MEMORY[0x277D80A18];
  if ((v10 & 4) != 0)
  {
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 64);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277C90F90](v13);
      *(v3 + 64) = v12;
    }

    if (*(a2 + 64))
    {
      v14 = *(a2 + 64);
    }

    else
    {
      v14 = v11;
    }

    result = TSP::Reference::MergeFrom(v12, v14);
    if ((v10 & 8) == 0)
    {
LABEL_13:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_34;
    }
  }

  else if ((v10 & 8) == 0)
  {
    goto LABEL_13;
  }

  *(v3 + 16) |= 8u;
  v15 = *(v3 + 72);
  if (!v15)
  {
    v16 = *(v3 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = MEMORY[0x277C90F90](v16);
    *(v3 + 72) = v15;
  }

  if (*(a2 + 72))
  {
    v17 = *(a2 + 72);
  }

  else
  {
    v17 = v11;
  }

  result = TSP::Reference::MergeFrom(v15, v17);
  if ((v10 & 0x10) == 0)
  {
LABEL_14:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_42:
    *(v3 + 16) |= 0x20u;
    v21 = *(v3 + 88);
    if (!v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = MEMORY[0x277C90F90](v22);
      *(v3 + 88) = v21;
    }

    if (*(a2 + 88))
    {
      v23 = *(a2 + 88);
    }

    else
    {
      v23 = v11;
    }

    result = TSP::Reference::MergeFrom(v21, v23);
    if ((v10 & 0x40) == 0)
    {
LABEL_16:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_58;
    }

    goto LABEL_50;
  }

LABEL_34:
  *(v3 + 16) |= 0x10u;
  v18 = *(v3 + 80);
  if (!v18)
  {
    v19 = *(v3 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = MEMORY[0x277C90F90](v19);
    *(v3 + 80) = v18;
  }

  if (*(a2 + 80))
  {
    v20 = *(a2 + 80);
  }

  else
  {
    v20 = v11;
  }

  result = TSP::Reference::MergeFrom(v18, v20);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_42;
  }

LABEL_15:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_50:
  *(v3 + 16) |= 0x40u;
  v24 = *(v3 + 96);
  if (!v24)
  {
    v25 = *(v3 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = sub_275EEE234(v25);
    *(v3 + 96) = v24;
  }

  if (*(a2 + 96))
  {
    v26 = *(a2 + 96);
  }

  else
  {
    v26 = &unk_2812DB148;
  }

  result = sub_275EE189C(v24, v26);
  if ((v10 & 0x80) != 0)
  {
LABEL_58:
    *(v3 + 16) |= 0x80u;
    v27 = *(v3 + 104);
    if (!v27)
    {
      v28 = *(v3 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = MEMORY[0x277C90F00](v28);
      *(v3 + 104) = v27;
    }

    if (*(a2 + 104))
    {
      v29 = *(a2 + 104);
    }

    else
    {
      v29 = MEMORY[0x277D80010];
    }

    result = TSA::DocumentArchive::MergeFrom(v27, v29);
  }

LABEL_66:
  if ((v10 & 0x300) != 0)
  {
    if ((v10 & 0x100) != 0)
    {
      *(v3 + 16) |= 0x100u;
      v30 = *(v3 + 112);
      if (!v30)
      {
        v31 = *(v3 + 8);
        if (v31)
        {
          v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
        }

        v30 = MEMORY[0x277C90F90](v31);
        *(v3 + 112) = v30;
      }

      if (*(a2 + 112))
      {
        v32 = *(a2 + 112);
      }

      else
      {
        v32 = MEMORY[0x277D80A18];
      }

      result = TSP::Reference::MergeFrom(v30, v32);
    }

    if ((v10 & 0x200) != 0)
    {
      *(v3 + 16) |= 0x200u;
      v33 = *(v3 + 120);
      if (!v33)
      {
        v34 = *(v3 + 8);
        if (v34)
        {
          v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
        }

        v33 = MEMORY[0x277C90F60](v34);
        *(v3 + 120) = v33;
      }

      if (*(a2 + 120))
      {
        v35 = *(a2 + 120);
      }

      else
      {
        v35 = MEMORY[0x277D809D8];
      }

      return TSP::Size::MergeFrom(v33, v35);
    }
  }

  return result;
}

uint64_t *sub_275EE577C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275EE4194(result);

    return sub_275EE533C(v4, a2);
  }

  return result;
}

uint64_t sub_275EE57C8(uint64_t a1)
{
  if ((~*(a1 + 16) & 0xB8) != 0)
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

  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 8) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x10) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x20) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x40) != 0)
  {
    result = sub_275EE2104(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x80) != 0)
  {
    result = TSA::DocumentArchive::IsInitialized(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x100) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x200) == 0)
  {
    return 1;
  }

  result = TSP::Size::IsInitialized(*(a1 + 120));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_275EE590C(uint64_t *a1)
{
  if (a1 != &qword_2812DB380 && a1[3])
  {
    v2 = MEMORY[0x277C90E60]();
    MEMORY[0x277C91940](v2, 0x10A1C4014782234);
  }

  sub_275EDC748(a1 + 1);
  return a1;
}

void sub_275EE5970(uint64_t *a1)
{
  sub_275EE590C(a1);

  JUMPOUT(0x277C91940);
}

uint64_t *sub_275EE59B0(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSWP::ShapeInfoArchive::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_275EEF3A0(v2);
  }

  return result;
}

google::protobuf::internal *sub_275EE5A0C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_275EEF00C(a3, &v16) & 1) == 0)
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

        v12 = MEMORY[0x277C91030](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_275F49908(a3, v10, v5);
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
        sub_275EEF1DC((a1 + 8));
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

unsigned __int8 *sub_275EE5B54(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWP::ShapeInfoArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275EE5C44(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSWP::ShapeInfoArchive::ByteSizeLong(*(a1 + 24));
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

uint64_t sub_275EE5CD0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884F5D98, 0);
  if (v4)
  {

    return sub_275EE5D78(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275EE5D78(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275EEF354((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      *(v3 + 24) = MEMORY[0x277C91030](v5);
    }

    return MEMORY[0x2821EB9B8]();
  }

  return result;
}

uint64_t *sub_275EE5E20(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275EE59B0(result);

    return sub_275EE5CD0(v4, a2);
  }

  return result;
}

uint64_t sub_275EE5E6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return MEMORY[0x2821EBC48](*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275EE5EBC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884F55D8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 72) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  if (atomic_load_explicit(dword_2812DADD0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 96) = MEMORY[0x277D80A90];
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  return a1;
}

void sub_275EE5F70(_Unwind_Exception *a1)
{
  sub_275EEF3F0(v3);
  sub_275EEF3F0(v2);
  sub_275EEF3F0(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_275EE5FA4(uint64_t *a1)
{
  sub_275EE5FFC(a1);
  sub_275EDC748(a1 + 1);
  sub_275EEF3F0(a1 + 9);
  sub_275EEF3F0(a1 + 6);
  sub_275EEF3F0(a1 + 3);
  return a1;
}

TSP::Reference *sub_275EE5FFC(TSP::Reference *result)
{
  v1 = result;
  v2 = *(result + 12);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C91940](v2, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812DB3A0)
  {
    v3 = *(v1 + 13);
    if (v3)
    {
      TSD::EdgeInsetsArchive::~EdgeInsetsArchive(v3);
      MEMORY[0x277C91940]();
    }

    v4 = *(v1 + 14);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C91940]();
    }

    v5 = *(v1 + 15);
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x277C91940]();
    }

    v6 = *(v1 + 16);
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x277C91940]();
    }

    result = *(v1 + 17);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C91940);
    }
  }

  return result;
}

void sub_275EE6104(uint64_t *a1)
{
  sub_275EE5FA4(a1);

  JUMPOUT(0x277C91940);
}

void *sub_275EE6144()
{
  if (atomic_load_explicit(dword_2812DADD0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812DB3A0;
}

uint64_t *sub_275EE6184(uint64_t *result)
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

  v11 = *(v1 + 4);
  if ((v11 & 0x3F) == 0)
  {
    goto LABEL_21;
  }

  if (v11)
  {
    v14 = v1[12] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v14 + 23) < 0)
    {
      **v14 = 0;
      *(v14 + 8) = 0;
      if ((v11 & 2) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *v14 = 0;
      *(v14 + 23) = 0;
      if ((v11 & 2) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_16:
    if ((v11 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

  if ((v11 & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_35:
  result = TSD::EdgeInsetsArchive::Clear(v1[13]);
  if ((v11 & 4) == 0)
  {
LABEL_17:
    if ((v11 & 8) == 0)
    {
      goto LABEL_18;
    }

LABEL_37:
    result = TSP::Reference::Clear(v1[15]);
    if ((v11 & 0x10) == 0)
    {
LABEL_19:
      if ((v11 & 0x20) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    goto LABEL_38;
  }

LABEL_36:
  result = TSP::Reference::Clear(v1[14]);
  if ((v11 & 8) != 0)
  {
    goto LABEL_37;
  }

LABEL_18:
  if ((v11 & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_38:
  result = TSP::Reference::Clear(v1[16]);
  if ((v11 & 0x20) != 0)
  {
LABEL_20:
    result = TSP::Reference::Clear(v1[17]);
  }

LABEL_21:
  if ((v11 & 0xC0) != 0)
  {
    *(v1 + 72) = 0;
  }

  if ((v11 & 0xFF00) != 0)
  {
    *(v1 + 154) = 0;
    *(v1 + 146) = 0;
    *(v1 + 161) = 0;
  }

  if ((v11 & 0xF0000) != 0)
  {
    *(v1 + 43) = 0;
    *(v1 + 169) = 0;
  }

  v13 = *(v1 + 8);
  v12 = v1 + 1;
  *(v12 + 2) = 0;
  if (v13)
  {

    return sub_275EEF3A0(v12);
  }

  return result;
}

google::protobuf::internal *sub_275EE6314(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v108 = a2;
  v5 = 0;
  if ((sub_275EEF00C(a3, &v108) & 1) == 0)
  {
    while (2)
    {
      v7 = (v108 + 1);
      v8 = *v108;
      if (*v108 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v108, (v9 - 128));
          v108 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_180;
          }

          v7 = TagFallback;
          v8 = v12;
LABEL_7:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 10)
              {
                goto LABEL_148;
              }

              *(a1 + 16) |= 1u;
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v10 = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_145;
            case 2u:
              if (v8 != 18)
              {
                goto LABEL_148;
              }

              v46 = v7 - 1;
              while (1)
              {
                v47 = (v46 + 1);
                v108 = (v46 + 1);
                v48 = *(a1 + 40);
                if (!v48)
                {
                  goto LABEL_71;
                }

                v54 = *(a1 + 32);
                v49 = *v48;
                if (v54 < *v48)
                {
                  *(a1 + 32) = v54 + 1;
                  v51 = *&v48[2 * v54 + 2];
                  goto LABEL_75;
                }

                if (v49 == *(a1 + 36))
                {
LABEL_71:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                  v48 = *(a1 + 40);
                  v49 = *v48;
                }

                *v48 = v49 + 1;
                v50 = MEMORY[0x277C90F90](*(a1 + 24));
                LODWORD(v51) = v50;
                v52 = *(a1 + 32);
                v53 = *(a1 + 40) + 8 * v52;
                *(a1 + 32) = v52 + 1;
                *(v53 + 8) = v50;
                v47 = v108;
LABEL_75:
                v46 = sub_275F48FE4(a3, v51, v47);
                v108 = v46;
                if (!v46)
                {
                  goto LABEL_180;
                }

                if (*a3 <= v46 || *v46 != 18)
                {
                  goto LABEL_146;
                }
              }

            case 3u:
              if (v8 != 24)
              {
                goto LABEL_148;
              }

              v5 |= 0x40u;
              v26 = (v7 + 1);
              v25 = *v7;
              if ((v25 & 0x8000000000000000) == 0)
              {
                goto LABEL_36;
              }

              v27 = *v26;
              v25 = (v27 << 7) + v25 - 128;
              if (v27 < 0)
              {
                v96 = google::protobuf::internal::VarintParseSlow64(v7, v25);
                v108 = v96;
                *(a1 + 144) = v97 != 0;
                if (!v96)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                v26 = (v7 + 2);
LABEL_36:
                v108 = v26;
                *(a1 + 144) = v25 != 0;
              }

              goto LABEL_146;
            case 4u:
              if (v8 != 32)
              {
                goto LABEL_148;
              }

              v5 |= 0x80u;
              v44 = (v7 + 1);
              v43 = *v7;
              if ((v43 & 0x8000000000000000) == 0)
              {
                goto LABEL_67;
              }

              v45 = *v44;
              v43 = (v45 << 7) + v43 - 128;
              if (v45 < 0)
              {
                v104 = google::protobuf::internal::VarintParseSlow64(v7, v43);
                v108 = v104;
                *(a1 + 145) = v105 != 0;
                if (!v104)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                v44 = (v7 + 2);
LABEL_67:
                v108 = v44;
                *(a1 + 145) = v43 != 0;
              }

              goto LABEL_146;
            case 5u:
              if (v8 != 40)
              {
                goto LABEL_148;
              }

              v5 |= 0x100u;
              v29 = (v7 + 1);
              v28 = *v7;
              if ((v28 & 0x8000000000000000) == 0)
              {
                goto LABEL_41;
              }

              v30 = *v29;
              v28 = (v30 << 7) + v28 - 128;
              if (v30 < 0)
              {
                v98 = google::protobuf::internal::VarintParseSlow64(v7, v28);
                v108 = v98;
                *(a1 + 146) = v99 != 0;
                if (!v98)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                v29 = (v7 + 2);
LABEL_41:
                v108 = v29;
                *(a1 + 146) = v28 != 0;
              }

              goto LABEL_146;
            case 6u:
              if (v8 != 48)
              {
                goto LABEL_148;
              }

              v5 |= 0x200u;
              v40 = (v7 + 1);
              v39 = *v7;
              if ((v39 & 0x8000000000000000) == 0)
              {
                goto LABEL_60;
              }

              v41 = *v40;
              v39 = (v41 << 7) + v39 - 128;
              if (v41 < 0)
              {
                v102 = google::protobuf::internal::VarintParseSlow64(v7, v39);
                v108 = v102;
                *(a1 + 147) = v103 != 0;
                if (!v102)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                v40 = (v7 + 2);
LABEL_60:
                v108 = v40;
                *(a1 + 147) = v39 != 0;
              }

              goto LABEL_146;
            case 7u:
              if (v8 != 61)
              {
                goto LABEL_148;
              }

              v55 = *v7;
              v34 = (v7 + 4);
              v5 |= 0x400u;
              *(a1 + 148) = v55;
              goto LABEL_83;
            case 8u:
              if (v8 != 64)
              {
                goto LABEL_148;
              }

              v57 = (v7 + 1);
              v56 = *v7;
              if ((v56 & 0x8000000000000000) == 0)
              {
                goto LABEL_88;
              }

              v58 = *v57;
              v56 = (v58 << 7) + v56 - 128;
              if (v58 < 0)
              {
                v108 = google::protobuf::internal::VarintParseSlow64(v7, v56);
                if (!v108)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                v57 = (v7 + 2);
LABEL_88:
                v108 = v57;
              }

              if (v56 > 1)
              {
                sub_275F4A5C0((a1 + 8));
              }

              else
              {
                *(a1 + 16) |= 0x800u;
                *(a1 + 152) = v56;
              }

              goto LABEL_146;
            case 0xAu:
              if (v8 != 82)
              {
                goto LABEL_148;
              }

              *(a1 + 16) |= 2u;
              v66 = *(a1 + 104);
              if (!v66)
              {
                v67 = *(a1 + 8);
                if (v67)
                {
                  v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
                }

                v68 = MEMORY[0x277C90F20](v67);
                LODWORD(v66) = v68;
                *(a1 + 104) = v68;
                v7 = v108;
              }

              v10 = sub_275F499D8(a3, v66, v7);
              goto LABEL_145;
            case 0xBu:
              if (v8 != 88)
              {
                goto LABEL_148;
              }

              v5 |= 0x8000u;
              v64 = (v7 + 1);
              v63 = *v7;
              if ((v63 & 0x8000000000000000) == 0)
              {
                goto LABEL_105;
              }

              v65 = *v64;
              v63 = (v65 << 7) + v63 - 128;
              if (v65 < 0)
              {
                v106 = google::protobuf::internal::VarintParseSlow64(v7, v63);
                v108 = v106;
                *(a1 + 168) = v107 != 0;
                if (!v106)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                v64 = (v7 + 2);
LABEL_105:
                v108 = v64;
                *(a1 + 168) = v63 != 0;
              }

              goto LABEL_146;
            case 0xCu:
              if (v8 != 96)
              {
                goto LABEL_148;
              }

              v5 |= 0x1000u;
              v23 = (v7 + 1);
              LODWORD(v22) = *v7;
              if ((v22 & 0x80) == 0)
              {
                goto LABEL_31;
              }

              v24 = *v23;
              v22 = (v22 + (v24 << 7) - 128);
              if (v24 < 0)
              {
                v94 = google::protobuf::internal::VarintParseSlow64(v7, v22);
                v108 = v94;
                *(a1 + 156) = v95;
                if (!v94)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                v23 = (v7 + 2);
LABEL_31:
                v108 = v23;
                *(a1 + 156) = v22;
              }

              goto LABEL_146;
            case 0xDu:
              if (v8 != 109)
              {
                goto LABEL_148;
              }

              v42 = *v7;
              v34 = (v7 + 4);
              v5 |= 0x2000u;
              *(a1 + 160) = v42;
              goto LABEL_83;
            case 0xEu:
              if (v8 != 117)
              {
                goto LABEL_148;
              }

              v35 = *v7;
              v34 = (v7 + 4);
              v5 |= 0x4000u;
              *(a1 + 164) = v35;
LABEL_83:
              v108 = v34;
              goto LABEL_146;
            case 0xFu:
              if (v8 != 122)
              {
                goto LABEL_148;
              }

              *(a1 + 16) |= 4u;
              v19 = *(a1 + 112);
              if (v19)
              {
                goto LABEL_144;
              }

              v20 = *(a1 + 8);
              if (v20)
              {
                v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
              }

              v21 = MEMORY[0x277C90F90](v20);
              LODWORD(v19) = v21;
              *(a1 + 112) = v21;
              goto LABEL_143;
            case 0x10u:
              if (v8 != 130)
              {
                goto LABEL_148;
              }

              *(a1 + 16) |= 8u;
              v19 = *(a1 + 120);
              if (v19)
              {
                goto LABEL_144;
              }

              v59 = *(a1 + 8);
              if (v59)
              {
                v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
              }

              v60 = MEMORY[0x277C90F90](v59);
              LODWORD(v19) = v60;
              *(a1 + 120) = v60;
              goto LABEL_143;
            case 0x11u:
              if (v8 != 138)
              {
                goto LABEL_148;
              }

              *(a1 + 16) |= 0x10u;
              v19 = *(a1 + 128);
              if (v19)
              {
                goto LABEL_144;
              }

              v61 = *(a1 + 8);
              if (v61)
              {
                v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
              }

              v62 = MEMORY[0x277C90F90](v61);
              LODWORD(v19) = v62;
              *(a1 + 128) = v62;
              goto LABEL_143;
            case 0x12u:
              if (v8 != 146)
              {
                goto LABEL_148;
              }

              v78 = v7 - 2;
              while (1)
              {
                v79 = (v78 + 2);
                v108 = (v78 + 2);
                v80 = *(a1 + 64);
                if (!v80)
                {
                  goto LABEL_128;
                }

                v86 = *(a1 + 56);
                v81 = *v80;
                if (v86 < *v80)
                {
                  *(a1 + 56) = v86 + 1;
                  v83 = *&v80[2 * v86 + 2];
                  goto LABEL_132;
                }

                if (v81 == *(a1 + 60))
                {
LABEL_128:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                  v80 = *(a1 + 64);
                  v81 = *v80;
                }

                *v80 = v81 + 1;
                v82 = MEMORY[0x277C90F90](*(a1 + 48));
                LODWORD(v83) = v82;
                v84 = *(a1 + 56);
                v85 = *(a1 + 64) + 8 * v84;
                *(a1 + 56) = v84 + 1;
                *(v85 + 8) = v82;
                v79 = v108;
LABEL_132:
                v78 = sub_275F48FE4(a3, v83, v79);
                v108 = v78;
                if (!v78)
                {
                  goto LABEL_180;
                }

                if (*a3 <= v78 || *v78 != 402)
                {
                  goto LABEL_146;
                }
              }

            case 0x13u:
              if (v8 != 154)
              {
                goto LABEL_148;
              }

              v69 = v7 - 2;
              break;
            case 0x14u:
              if (v8 != 160)
              {
                goto LABEL_148;
              }

              v5 |= 0x10000u;
              v14 = (v7 + 1);
              v13 = *v7;
              if ((v13 & 0x8000000000000000) == 0)
              {
                goto LABEL_16;
              }

              v15 = *v14;
              v13 = (v15 << 7) + v13 - 128;
              if (v15 < 0)
              {
                v90 = google::protobuf::internal::VarintParseSlow64(v7, v13);
                v108 = v90;
                *(a1 + 169) = v91 != 0;
                if (!v90)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                v14 = (v7 + 2);
LABEL_16:
                v108 = v14;
                *(a1 + 169) = v13 != 0;
              }

              goto LABEL_146;
            case 0x15u:
              if (v8 != 168)
              {
                goto LABEL_148;
              }

              v37 = (v7 + 1);
              v36 = *v7;
              if ((v36 & 0x8000000000000000) == 0)
              {
                goto LABEL_53;
              }

              v38 = *v37;
              v36 = (v38 << 7) + v36 - 128;
              if (v38 < 0)
              {
                v108 = google::protobuf::internal::VarintParseSlow64(v7, v36);
                if (!v108)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                v37 = (v7 + 2);
LABEL_53:
                v108 = v37;
              }

              if (v36 > 1)
              {
                sub_275F4A57C((a1 + 8));
              }

              else
              {
                *(a1 + 16) |= 0x80000u;
                *(a1 + 172) = v36;
              }

              goto LABEL_146;
            case 0x16u:
              if (v8 != 178)
              {
                goto LABEL_148;
              }

              *(a1 + 16) |= 0x20u;
              v19 = *(a1 + 136);
              if (v19)
              {
                goto LABEL_144;
              }

              v87 = *(a1 + 8);
              if (v87)
              {
                v87 = *(v87 & 0xFFFFFFFFFFFFFFFELL);
              }

              v88 = MEMORY[0x277C90F90](v87);
              LODWORD(v19) = v88;
              *(a1 + 136) = v88;
LABEL_143:
              v7 = v108;
LABEL_144:
              v10 = sub_275F48FE4(a3, v19, v7);
              goto LABEL_145;
            case 0x17u:
              if (v8 != 184)
              {
                goto LABEL_148;
              }

              v5 |= 0x20000u;
              v17 = (v7 + 1);
              v16 = *v7;
              if ((v16 & 0x8000000000000000) == 0)
              {
                goto LABEL_21;
              }

              v18 = *v17;
              v16 = (v18 << 7) + v16 - 128;
              if (v18 < 0)
              {
                v92 = google::protobuf::internal::VarintParseSlow64(v7, v16);
                v108 = v92;
                *(a1 + 170) = v93 != 0;
                if (!v92)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                v17 = (v7 + 2);
LABEL_21:
                v108 = v17;
                *(a1 + 170) = v16 != 0;
              }

              goto LABEL_146;
            case 0x18u:
              if (v8 != 192)
              {
                goto LABEL_148;
              }

              v5 |= 0x40000u;
              v32 = (v7 + 1);
              v31 = *v7;
              if ((v31 & 0x8000000000000000) == 0)
              {
                goto LABEL_46;
              }

              v33 = *v32;
              v31 = (v33 << 7) + v31 - 128;
              if (v33 < 0)
              {
                v100 = google::protobuf::internal::VarintParseSlow64(v7, v31);
                v108 = v100;
                *(a1 + 171) = v101 != 0;
                if (!v100)
                {
                  goto LABEL_180;
                }
              }

              else
              {
                v32 = (v7 + 2);
LABEL_46:
                v108 = v32;
                *(a1 + 171) = v31 != 0;
              }

              goto LABEL_146;
            default:
LABEL_148:
              if (v8)
              {
                v89 = (v8 & 7) == 4;
              }

              else
              {
                v89 = 1;
              }

              if (v89)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_275EEF1DC((a1 + 8));
              }

              v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_145:
              v108 = v10;
              if (!v10)
              {
LABEL_180:
                v108 = 0;
                goto LABEL_2;
              }

LABEL_146:
              if (sub_275EEF00C(a3, &v108))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v70 = (v69 + 2);
            v108 = (v69 + 2);
            v71 = *(a1 + 88);
            if (!v71)
            {
              goto LABEL_115;
            }

            v77 = *(a1 + 80);
            v72 = *v71;
            if (v77 < *v71)
            {
              *(a1 + 80) = v77 + 1;
              v74 = *&v71[2 * v77 + 2];
              goto LABEL_119;
            }

            if (v72 == *(a1 + 84))
            {
LABEL_115:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
              v71 = *(a1 + 88);
              v72 = *v71;
            }

            *v71 = v72 + 1;
            v73 = MEMORY[0x277C90F90](*(a1 + 72));
            LODWORD(v74) = v73;
            v75 = *(a1 + 80);
            v76 = *(a1 + 88) + 8 * v75;
            *(a1 + 80) = v75 + 1;
            *(v76 + 8) = v73;
            v70 = v108;
LABEL_119:
            v69 = sub_275F48FE4(a3, v74, v70);
            v108 = v69;
            if (!v69)
            {
              goto LABEL_180;
            }

            if (*a3 <= v69 || *v69 != 410)
            {
              goto LABEL_146;
            }
          }
        }

        v7 = (v108 + 2);
      }

      break;
    }

    v108 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v108;
}

unsigned __int8 *sub_275EE6DC4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275EE4E58(a3, 1, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

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
      *v4 = 18;
      v10 = *(v9 + 5);
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

      v4 = TSP::Reference::_InternalSerialize(v9, v11, a3);
    }
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v15 = *(a1 + 144);
    *v4 = 24;
    v4[1] = v15;
    v4 += 2;
    if ((v6 & 0x80) == 0)
    {
LABEL_17:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_36;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_17;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v16 = *(a1 + 145);
  *v4 = 32;
  v4[1] = v16;
  v4 += 2;
  if ((v6 & 0x100) == 0)
  {
LABEL_18:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_36:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(a1 + 146);
  *v4 = 40;
  v4[1] = v17;
  v4 += 2;
  if ((v6 & 0x200) == 0)
  {
LABEL_19:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_39:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v18 = *(a1 + 147);
  *v4 = 48;
  v4[1] = v18;
  v4 += 2;
  if ((v6 & 0x400) == 0)
  {
LABEL_20:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_21;
    }

LABEL_45:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v20 = *(a1 + 152);
    *v4 = 64;
    if (v20 > 0x7F)
    {
      v4[1] = v20 | 0x80;
      v21 = v20 >> 7;
      if (v20 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v21 | 0x80;
          v22 = v21 >> 7;
          ++v4;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
        *(v4 - 1) = v22;
        if ((v6 & 2) != 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v4[2] = v21;
        v4 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
      v4[1] = v20;
      v4 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_56;
      }
    }

LABEL_22:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_66;
  }

LABEL_42:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(a1 + 148);
  *v4 = 61;
  *(v4 + 1) = v19;
  v4 += 5;
  if ((v6 & 0x800) != 0)
  {
    goto LABEL_45;
  }

LABEL_21:
  if ((v6 & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_56:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v24 = *(a1 + 104);
  *v4 = 82;
  v25 = *(v24 + 5);
  if (v25 > 0x7F)
  {
    v4[1] = v25 | 0x80;
    v27 = v25 >> 7;
    if (v25 >> 14)
    {
      v26 = v4 + 3;
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
      v4[2] = v27;
      v26 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v25;
    v26 = v4 + 2;
  }

  v4 = TSD::EdgeInsetsArchive::_InternalSerialize(v24, v26, a3);
  if ((v6 & 0x8000) == 0)
  {
LABEL_23:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

LABEL_69:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v31 = *(a1 + 156);
    *v4 = 96;
    if (v31 > 0x7F)
    {
      v4[1] = v31 | 0x80;
      v32 = v31 >> 7;
      if (v31 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v32 | 0x80;
          v33 = v32 >> 7;
          ++v4;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
        *(v4 - 1) = v33;
        if ((v6 & 0x2000) != 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v4[2] = v32;
        v4 += 3;
        if ((v6 & 0x2000) != 0)
        {
          goto LABEL_80;
        }
      }
    }

    else
    {
      v4[1] = v31;
      v4 += 2;
      if ((v6 & 0x2000) != 0)
      {
        goto LABEL_80;
      }
    }

LABEL_25:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_83;
  }

LABEL_66:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v30 = *(a1 + 168);
  *v4 = 88;
  v4[1] = v30;
  v4 += 2;
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_69;
  }

LABEL_24:
  if ((v6 & 0x2000) == 0)
  {
    goto LABEL_25;
  }

LABEL_80:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v35 = *(a1 + 160);
  *v4 = 109;
  *(v4 + 1) = v35;
  v4 += 5;
  if ((v6 & 0x4000) == 0)
  {
LABEL_26:
    if ((v6 & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_86;
  }

LABEL_83:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v36 = *(a1 + 164);
  *v4 = 117;
  *(v4 + 1) = v36;
  v4 += 5;
  if ((v6 & 4) == 0)
  {
LABEL_27:
    if ((v6 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_96;
  }

LABEL_86:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v37 = *(a1 + 112);
  *v4 = 122;
  v38 = *(v37 + 5);
  if (v38 > 0x7F)
  {
    v4[1] = v38 | 0x80;
    v40 = v38 >> 7;
    if (v38 >> 14)
    {
      v39 = v4 + 3;
      do
      {
        *(v39 - 1) = v40 | 0x80;
        v41 = v40 >> 7;
        ++v39;
        v42 = v40 >> 14;
        v40 >>= 7;
      }

      while (v42);
      *(v39 - 1) = v41;
    }

    else
    {
      v4[2] = v40;
      v39 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v38;
    v39 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v37, v39, a3);
  if ((v6 & 8) == 0)
  {
LABEL_28:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_106;
  }

LABEL_96:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v43 = *(a1 + 120);
  *v4 = 386;
  v44 = *(v43 + 5);
  if (v44 > 0x7F)
  {
    v4[2] = v44 | 0x80;
    v46 = v44 >> 7;
    if (v44 >> 14)
    {
      v45 = v4 + 4;
      do
      {
        *(v45 - 1) = v46 | 0x80;
        v47 = v46 >> 7;
        ++v45;
        v48 = v46 >> 14;
        v46 >>= 7;
      }

      while (v48);
      *(v45 - 1) = v47;
    }

    else
    {
      v4[3] = v46;
      v45 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v44;
    v45 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v43, v45, a3);
  if ((v6 & 0x10) != 0)
  {
LABEL_106:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v49 = *(a1 + 128);
    *v4 = 394;
    v50 = *(v49 + 5);
    if (v50 > 0x7F)
    {
      v4[2] = v50 | 0x80;
      v52 = v50 >> 7;
      if (v50 >> 14)
      {
        v51 = v4 + 4;
        do
        {
          *(v51 - 1) = v52 | 0x80;
          v53 = v52 >> 7;
          ++v51;
          v54 = v52 >> 14;
          v52 >>= 7;
        }

        while (v54);
        *(v51 - 1) = v53;
      }

      else
      {
        v4[3] = v52;
        v51 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v50;
      v51 = v4 + 3;
    }

    v4 = TSP::Reference::_InternalSerialize(v49, v51, a3);
  }

LABEL_116:
  v55 = *(a1 + 56);
  if (v55)
  {
    for (j = 0; j != v55; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v57 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 402;
      v58 = *(v57 + 5);
      if (v58 > 0x7F)
      {
        v4[2] = v58 | 0x80;
        v60 = v58 >> 7;
        if (v58 >> 14)
        {
          v59 = v4 + 4;
          do
          {
            *(v59 - 1) = v60 | 0x80;
            v61 = v60 >> 7;
            ++v59;
            v62 = v60 >> 14;
            v60 >>= 7;
          }

          while (v62);
          *(v59 - 1) = v61;
        }

        else
        {
          v4[3] = v60;
          v59 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v58;
        v59 = v4 + 3;
      }

      v4 = TSP::Reference::_InternalSerialize(v57, v59, a3);
    }
  }

  v63 = *(a1 + 80);
  if (v63)
  {
    for (k = 0; k != v63; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v65 = *(*(a1 + 88) + 8 * k + 8);
      *v4 = 410;
      v66 = *(v65 + 5);
      if (v66 > 0x7F)
      {
        v4[2] = v66 | 0x80;
        v68 = v66 >> 7;
        if (v66 >> 14)
        {
          v67 = v4 + 4;
          do
          {
            *(v67 - 1) = v68 | 0x80;
            v69 = v68 >> 7;
            ++v67;
            v70 = v68 >> 14;
            v68 >>= 7;
          }

          while (v70);
          *(v67 - 1) = v69;
        }

        else
        {
          v4[3] = v68;
          v67 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v66;
        v67 = v4 + 3;
      }

      v4 = TSP::Reference::_InternalSerialize(v65, v67, a3);
    }
  }

  if ((v6 & 0x10000) == 0)
  {
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_142;
    }

LABEL_149:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v72 = *(a1 + 172);
    *v4 = 424;
    if (v72 > 0x7F)
    {
      v4[2] = v72 | 0x80;
      v73 = v72 >> 7;
      if (v72 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v73 | 0x80;
          v74 = v73 >> 7;
          ++v4;
          v75 = v73 >> 14;
          v73 >>= 7;
        }

        while (v75);
        *(v4 - 1) = v74;
        if ((v6 & 0x20) != 0)
        {
          goto LABEL_160;
        }
      }

      else
      {
        v4[3] = v73;
        v4 += 4;
        if ((v6 & 0x20) != 0)
        {
          goto LABEL_160;
        }
      }
    }

    else
    {
      v4[2] = v72;
      v4 += 3;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_160;
      }
    }

LABEL_143:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_170;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v71 = *(a1 + 169);
  *v4 = 416;
  v4[2] = v71;
  v4 += 3;
  if ((v6 & 0x80000) != 0)
  {
    goto LABEL_149;
  }

LABEL_142:
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_143;
  }

LABEL_160:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v76 = *(a1 + 136);
  *v4 = 434;
  v77 = *(v76 + 5);
  if (v77 > 0x7F)
  {
    v4[2] = v77 | 0x80;
    v79 = v77 >> 7;
    if (v77 >> 14)
    {
      v78 = v4 + 4;
      do
      {
        *(v78 - 1) = v79 | 0x80;
        v80 = v79 >> 7;
        ++v78;
        v81 = v79 >> 14;
        v79 >>= 7;
      }

      while (v81);
      *(v78 - 1) = v80;
    }

    else
    {
      v4[3] = v79;
      v78 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v77;
    v78 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v76, v78, a3);
  if ((v6 & 0x20000) == 0)
  {
LABEL_144:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_173;
  }

LABEL_170:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v82 = *(a1 + 170);
  *v4 = 440;
  v4[2] = v82;
  v4 += 3;
  if ((v6 & 0x40000) != 0)
  {
LABEL_173:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v83 = *(a1 + 171);
    *v4 = 448;
    v4[2] = v83;
    v4 += 3;
  }

LABEL_176:
  v84 = *(a1 + 8);
  if ((v84 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v84 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275EE77E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v6 = *(a1 + 32);
  v7 = v2 + v6;
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 8 * v6;
    do
    {
      v11 = *v9++;
      v12 = TSP::Reference::ByteSizeLong(v11);
      v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      v10 -= 8;
    }

    while (v10);
  }

  v13 = *(a1 + 56);
  v14 = v7 + 2 * v13;
  v15 = *(a1 + 64);
  if (v15)
  {
    v16 = (v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  if (v13)
  {
    v17 = 8 * v13;
    do
    {
      v18 = *v16++;
      v19 = TSP::Reference::ByteSizeLong(v18);
      v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      v17 -= 8;
    }

    while (v17);
  }

  v20 = *(a1 + 80);
  v21 = v14 + 2 * v20;
  v22 = *(a1 + 88);
  if (v22)
  {
    v23 = (v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  if (v20)
  {
    v24 = 8 * v20;
    do
    {
      v25 = *v23++;
      v26 = TSP::Reference::ByteSizeLong(v25);
      v21 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
      v24 -= 8;
    }

    while (v24);
  }

  v27 = *(a1 + 16);
  if ((v27 & 0xFE) != 0)
  {
    if ((v27 & 2) != 0)
    {
      v41 = TSD::EdgeInsetsArchive::ByteSizeLong(*(a1 + 104));
      v21 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v27 & 4) == 0)
      {
LABEL_27:
        if ((v27 & 8) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_67;
      }
    }

    else if ((v27 & 4) == 0)
    {
      goto LABEL_27;
    }

    v42 = TSP::Reference::ByteSizeLong(*(a1 + 112));
    v21 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v27 & 8) == 0)
    {
LABEL_28:
      if ((v27 & 0x10) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_68;
    }

LABEL_67:
    v43 = TSP::Reference::ByteSizeLong(*(a1 + 120));
    v21 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v27 & 0x10) == 0)
    {
LABEL_29:
      if ((v27 & 0x20) == 0)
      {
LABEL_31:
        v21 += ((v27 >> 6) & 2) + ((v27 >> 5) & 2);
        goto LABEL_32;
      }

LABEL_30:
      v28 = TSP::Reference::ByteSizeLong(*(a1 + 136));
      v21 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
      goto LABEL_31;
    }

LABEL_68:
    v44 = TSP::Reference::ByteSizeLong(*(a1 + 128));
    v21 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v27 & 0x20) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_32:
  if ((v27 & 0xFF00) != 0)
  {
    v29 = v21 + ((v27 >> 8) & 2) + ((v27 >> 7) & 2);
    if ((v27 & 0x400) != 0)
    {
      v29 += 5;
    }

    if ((v27 & 0x800) != 0)
    {
      v30 = *(a1 + 152);
      v31 = ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v30 >= 0)
      {
        v32 = v31;
      }

      else
      {
        v32 = 11;
      }

      v29 += v32;
    }

    if ((v27 & 0x1000) != 0)
    {
      v33 = *(a1 + 156);
      v34 = ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v33 >= 0)
      {
        v35 = v34;
      }

      else
      {
        v35 = 11;
      }

      v29 += v35;
    }

    if ((v27 & 0x2000) != 0)
    {
      v29 += 5;
    }

    if ((v27 & 0x4000) != 0)
    {
      v29 += 5;
    }

    v21 = v29 + ((v27 >> 14) & 2);
  }

  if ((v27 & 0xF0000) != 0)
  {
    v36 = v21 + 3;
    if ((v27 & 0x10000) == 0)
    {
      v36 = v21;
    }

    if ((v27 & 0x20000) != 0)
    {
      v36 += 3;
    }

    if ((v27 & 0x40000) != 0)
    {
      v21 = v36 + 3;
    }

    else
    {
      v21 = v36;
    }

    if ((v27 & 0x80000) != 0)
    {
      v37 = *(a1 + 172);
      v38 = ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v37 >= 0)
      {
        v39 = v38;
      }

      else
      {
        v39 = 12;
      }

      v21 += v39;
    }
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v21, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v21;
    return v21;
  }
}

uint64_t sub_275EE7BC0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884F5DB0, 0);
  if (v4)
  {

    return sub_275EE7C68(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275EE7C68(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275EEF354((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275EEF600(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    result = sub_275EEF600(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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
    result = sub_275EEF600(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 16);
  if (v20)
  {
    if (v20)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v20 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v21 = *(v3 + 104);
      if (!v21)
      {
        v22 = *(v3 + 8);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = MEMORY[0x277C90F20](v22);
        *(v3 + 104) = v21;
      }

      if (*(a2 + 104))
      {
        v23 = *(a2 + 104);
      }

      else
      {
        v23 = MEMORY[0x277D804C0];
      }

      result = TSD::EdgeInsetsArchive::MergeFrom(v21, v23);
    }

    v24 = MEMORY[0x277D80A18];
    if ((v20 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v25 = *(v3 + 112);
      if (!v25)
      {
        v26 = *(v3 + 8);
        if (v26)
        {
          v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
        }

        v25 = MEMORY[0x277C90F90](v26);
        *(v3 + 112) = v25;
      }

      if (*(a2 + 112))
      {
        v27 = *(a2 + 112);
      }

      else
      {
        v27 = v24;
      }

      result = TSP::Reference::MergeFrom(v25, v27);
      if ((v20 & 8) == 0)
      {
LABEL_26:
        if ((v20 & 0x10) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_67;
      }
    }

    else if ((v20 & 8) == 0)
    {
      goto LABEL_26;
    }

    *(v3 + 16) |= 8u;
    v28 = *(v3 + 120);
    if (!v28)
    {
      v29 = *(v3 + 8);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = MEMORY[0x277C90F90](v29);
      *(v3 + 120) = v28;
    }

    if (*(a2 + 120))
    {
      v30 = *(a2 + 120);
    }

    else
    {
      v30 = v24;
    }

    result = TSP::Reference::MergeFrom(v28, v30);
    if ((v20 & 0x10) == 0)
    {
LABEL_27:
      if ((v20 & 0x20) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_75;
    }

LABEL_67:
    *(v3 + 16) |= 0x10u;
    v31 = *(v3 + 128);
    if (!v31)
    {
      v32 = *(v3 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = MEMORY[0x277C90F90](v32);
      *(v3 + 128) = v31;
    }

    if (*(a2 + 128))
    {
      v33 = *(a2 + 128);
    }

    else
    {
      v33 = v24;
    }

    result = TSP::Reference::MergeFrom(v31, v33);
    if ((v20 & 0x20) == 0)
    {
LABEL_28:
      if ((v20 & 0x40) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_83;
    }

LABEL_75:
    *(v3 + 16) |= 0x20u;
    v34 = *(v3 + 136);
    if (!v34)
    {
      v35 = *(v3 + 8);
      if (v35)
      {
        v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
      }

      v34 = MEMORY[0x277C90F90](v35);
      *(v3 + 136) = v34;
    }

    if (*(a2 + 136))
    {
      v36 = *(a2 + 136);
    }

    else
    {
      v36 = v24;
    }

    result = TSP::Reference::MergeFrom(v34, v36);
    if ((v20 & 0x40) == 0)
    {
LABEL_29:
      if ((v20 & 0x80) == 0)
      {
LABEL_31:
        *(v3 + 16) |= v20;
        goto LABEL_32;
      }

LABEL_30:
      *(v3 + 145) = *(a2 + 145);
      goto LABEL_31;
    }

LABEL_83:
    *(v3 + 144) = *(a2 + 144);
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_32:
  if ((v20 & 0xFF00) == 0)
  {
    goto LABEL_43;
  }

  if ((v20 & 0x100) != 0)
  {
    *(v3 + 146) = *(a2 + 146);
    if ((v20 & 0x200) == 0)
    {
LABEL_35:
      if ((v20 & 0x400) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_87;
    }
  }

  else if ((v20 & 0x200) == 0)
  {
    goto LABEL_35;
  }

  *(v3 + 147) = *(a2 + 147);
  if ((v20 & 0x400) == 0)
  {
LABEL_36:
    if ((v20 & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(v3 + 148) = *(a2 + 148);
  if ((v20 & 0x800) == 0)
  {
LABEL_37:
    if ((v20 & 0x1000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(v3 + 152) = *(a2 + 152);
  if ((v20 & 0x1000) == 0)
  {
LABEL_38:
    if ((v20 & 0x2000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(v3 + 156) = *(a2 + 156);
  if ((v20 & 0x2000) == 0)
  {
LABEL_39:
    if ((v20 & 0x4000) == 0)
    {
      goto LABEL_40;
    }

LABEL_91:
    *(v3 + 164) = *(a2 + 164);
    if ((v20 & 0x8000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_90:
  *(v3 + 160) = *(a2 + 160);
  if ((v20 & 0x4000) != 0)
  {
    goto LABEL_91;
  }

LABEL_40:
  if ((v20 & 0x8000) != 0)
  {
LABEL_41:
    *(v3 + 168) = *(a2 + 168);
  }

LABEL_42:
  *(v3 + 16) |= v20;
LABEL_43:
  if ((v20 & 0xF0000) == 0)
  {
    return result;
  }

  if ((v20 & 0x10000) != 0)
  {
    *(v3 + 169) = *(a2 + 169);
    if ((v20 & 0x20000) == 0)
    {
LABEL_46:
      if ((v20 & 0x40000) == 0)
      {
        goto LABEL_47;
      }

LABEL_95:
      *(v3 + 171) = *(a2 + 171);
      if ((v20 & 0x80000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }
  }

  else if ((v20 & 0x20000) == 0)
  {
    goto LABEL_46;
  }

  *(v3 + 170) = *(a2 + 170);
  if ((v20 & 0x40000) != 0)
  {
    goto LABEL_95;
  }

LABEL_47:
  if ((v20 & 0x80000) != 0)
  {
LABEL_48:
    *(v3 + 172) = *(a2 + 172);
  }

LABEL_49:
  *(v3 + 16) |= v20;
  return result;
}

uint64_t *sub_275EE8088(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275EE6184(result);

    return sub_275EE7BC0(v4, a2);
  }

  return result;
}

uint64_t sub_275EE80D4(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 40) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 56);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::Reference::IsInitialized(*(*(a1 + 64) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 80);
  while (v9 >= 1)
  {
    v10 = v9 - 1;
    v11 = TSP::Reference::IsInitialized(*(*(a1 + 88) + 8 * v9));
    v9 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(a1 + 16);
  if ((v12 & 2) != 0)
  {
    result = TSD::EdgeInsetsArchive::IsInitialized(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 16);
  }

  if ((v12 & 4) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 16);
  }

  if ((v12 & 8) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 120));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 16);
  }

  if ((v12 & 0x10) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 16);
  }

  if ((v12 & 0x20) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 136));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_275EE8224(uint64_t *a1)
{
  if (a1 != &qword_2812DB450 && a1[3])
  {
    v2 = MEMORY[0x277C909D0]();
    MEMORY[0x277C91940](v2, 0x10A1C4042C41316);
  }

  sub_275EDC748(a1 + 1);
  return a1;
}

void sub_275EE8288(uint64_t *a1)
{
  sub_275EE8224(a1);

  JUMPOUT(0x277C91940);
}

uint64_t *sub_275EE82C8(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSD::FillArchive::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_275EEF3A0(v2);
  }

  return result;
}

google::protobuf::internal *sub_275EE8324(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_275EEF00C(a3, &v16) & 1) == 0)
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

        v12 = MEMORY[0x277C90F10](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_275F49AA8(a3, v10, v5);
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
        sub_275EEF1DC((a1 + 8));
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

unsigned __int8 *sub_275EE846C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 11);
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

    a2 = TSD::FillArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275EE855C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSD::FillArchive::ByteSizeLong(*(a1 + 24));
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

uint64_t sub_275EE85E8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884F5DC8, 0);
  if (v4)
  {

    return sub_275EE8690(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275EE8690(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275EEF354((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      *(v3 + 24) = MEMORY[0x277C90F10](v5);
    }

    return MEMORY[0x2821E9A48]();
  }

  return result;
}

uint64_t *sub_275EE8738(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275EE82C8(result);

    return sub_275EE85E8(v4, a2);
  }

  return result;
}

uint64_t sub_275EE8784(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSD::FillArchive::IsInitialized(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275EE87EC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884F5738;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812DAE18, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t *sub_275EE8858(uint64_t *a1)
{
  if (a1 != &qword_2812DB470)
  {
    if (a1[3])
    {
      v2 = MEMORY[0x277C90C20]();
      MEMORY[0x277C91940](v2, 0x10A1C40AC828A93);
    }

    v3 = a1[4];
    if (v3)
    {
      v4 = sub_275EE8224(v3);
      MEMORY[0x277C91940](v4, 0x10A1C40D4912B22);
    }
  }

  sub_275EDC748(a1 + 1);
  return a1;
}

void sub_275EE88DC(uint64_t *a1)
{
  sub_275EE8858(a1);

  JUMPOUT(0x277C91940);
}

uint64_t *sub_275EE891C()
{
  if (atomic_load_explicit(dword_2812DAE18, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812DB470;
}

uint64_t *sub_275EE895C(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = TSS::StyleArchive::Clear(result[3]);
    }

    if ((v2 & 2) != 0)
    {
      result = sub_275EE82C8(v1[4]);
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 8) = 0;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275EEF3A0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275EE89D0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = 0;
  if ((sub_275EEF00C(a3, &v26) & 1) == 0)
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
        goto LABEL_44;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_13;
        }

        *(a1 + 16) |= 2u;
        v17 = *(a1 + 32);
        if (!v17)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = sub_275EEE794(v18);
          *(a1 + 32) = v17;
          v7 = v26;
        }

        v13 = sub_275F49C48(a3, v17, v7);
LABEL_36:
        v26 = v13;
        if (!v13)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

      if (v10 != 2)
      {
        if (v10 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v19 = *(a1 + 24);
          if (!v19)
          {
            v20 = *(a1 + 8);
            if (v20)
            {
              v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
            }

            v21 = MEMORY[0x277C90FA0](v20);
            LODWORD(v19) = v21;
            *(a1 + 24) = v21;
            v7 = v26;
          }

          v13 = sub_275F49B78(a3, v19, v7);
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
            sub_275EEF1DC((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        goto LABEL_36;
      }

      if (v8 != 16)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v14 = (v7 + 1);
      LODWORD(v15) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v16 = *v14;
      v15 = (v15 + (v16 << 7) - 128);
      if ((v16 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_24:
        v26 = v14;
        *(a1 + 40) = v15;
        goto LABEL_37;
      }

      v24 = google::protobuf::internal::VarintParseSlow32(v7, v15);
      v26 = v24;
      *(a1 + 40) = v25;
      if (!v24)
      {
LABEL_44:
        v26 = 0;
        goto LABEL_2;
      }

LABEL_37:
      if (sub_275EEF00C(a3, &v26))
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

unsigned __int8 *sub_275EE8C04(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(a1 + 24);
    *a2 = 10;
    v10 = *(v9 + 5);
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v13 = v10 >> 7;
      if (v10 >> 14)
      {
        v11 = a2 + 3;
        do
        {
          *(v11 - 1) = v13 | 0x80;
          v18 = v13 >> 7;
          ++v11;
          v19 = v13 >> 14;
          v13 >>= 7;
        }

        while (v19);
        *(v11 - 1) = v18;
      }

      else
      {
        a2[2] = v13;
        v11 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v10;
      v11 = a2 + 2;
    }

    a2 = TSS::StyleArchive::_InternalSerialize(v9, v11, a3);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(a1 + 40);
  *a2 = 16;
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
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      a2[2] = v21;
      a2 += 3;
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    a2[1] = v20;
    a2 += 2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(a1 + 32);
  *a2 = 26;
  v7 = *(v6 + 20);
  if (v7 > 0x7F)
  {
    a2[1] = v7 | 0x80;
    v12 = v7 >> 7;
    if (v7 >> 14)
    {
      v8 = a2 + 3;
      do
      {
        *(v8 - 1) = v12 | 0x80;
        v14 = v12 >> 7;
        ++v8;
        v15 = v12 >> 14;
        v12 >>= 7;
      }

      while (v15);
      *(v8 - 1) = v14;
    }

    else
    {
      a2[2] = v12;
      v8 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v7;
    v8 = a2 + 2;
  }

  a2 = sub_275EE846C(v6, v8, a3);
LABEL_20:
  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275EE8E2C(uint64_t a1)
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

  if ((v2 & 6) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v5 = sub_275EE855C(*(a1 + 32));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

uint64_t sub_275EE8F2C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884F5DE0, 0);
  if (v4)
  {

    return sub_275EE8FD4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275EE8FD4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275EEF354((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C90FA0](v7);
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
LABEL_8:
          *(v3 + 16) |= v5;
          return result;
        }

LABEL_7:
        *(v3 + 40) = *(a2 + 40);
        goto LABEL_8;
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

      v9 = sub_275EEE794(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = &qword_2812DB450;
    }

    result = sub_275EE8690(v9, v11);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t *sub_275EE90E0(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275EE895C(result);

    return sub_275EE8F2C(v4, a2);
  }

  return result;
}

uint64_t sub_275EE912C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSS::StyleArchive::IsInitialized(*(a1 + 24));
  if (result)
  {
    if ((*(a1 + 16) & 2) == 0)
    {
      return 1;
    }

    v3 = *(a1 + 32);
    if ((*(v3 + 16) & 1) == 0)
    {
      return 1;
    }

    result = TSD::FillArchive::IsInitialized(*(v3 + 24));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_275EE91C8(void *a1, uint64_t a2)
{
  *a1 = &unk_2884F57E8;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812DACF8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t *sub_275EE9230(uint64_t *a1)
{
  if (a1 != &qword_2812DB4A0)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_275EE5FA4(v2);
      MEMORY[0x277C91940](v3, 0x10A1C408ED05A5ELL);
    }

    if (a1[4])
    {
      v4 = MEMORY[0x277C90AD0]();
      MEMORY[0x277C91940](v4, 0x1081C401753DA55);
    }
  }

  sub_275EDC748(a1 + 1);
  return a1;
}

void sub_275EE92B4(uint64_t *a1)
{
  sub_275EE9230(a1);

  JUMPOUT(0x277C91940);
}

uint64_t *sub_275EE92F4()
{
  if (atomic_load_explicit(dword_2812DACF8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812DB4A0;
}

uint64_t *sub_275EE9334(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_275EE6184(result[3]);
    }

    if ((v2 & 2) != 0)
    {
      result = TSP::CFUUIDArchive::Clear(v1[4]);
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275EEF3A0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275EE93A4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  while ((sub_275EEF00C(a3, &v19) & 1) == 0)
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

        v13 = MEMORY[0x277C90F50](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v19;
      }

      v10 = sub_275F49DE8(a3, v11, v5);
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
          sub_275EEF1DC((a1 + 8));
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

        v14 = sub_275EEE708(v15);
        *(a1 + 24) = v14;
        v5 = v19;
      }

      v10 = sub_275F49D18(a3, v14, v5);
    }

LABEL_30:
    v19 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v19;
}

unsigned __int8 *sub_275EE9550(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = sub_275EE6DC4(v6, v8, a3);
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

    a2 = TSP::CFUUIDArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275EE96E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_275EE77E0(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = TSP::CFUUIDArchive::ByteSizeLong(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
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

uint64_t sub_275EE97A8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884F5DF8, 0);
  if (v4)
  {

    return sub_275EE9850(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275EE9850(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275EEF354((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = sub_275EEE708(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &unk_2812DB3A0;
      }

      result = sub_275EE7C68(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      if (!*(v3 + 32))
      {
        v9 = *(v3 + 8);
        if (v9)
        {
          v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
        }

        *(v3 + 32) = MEMORY[0x277C90F50](v9);
      }

      return MEMORY[0x2821EA780]();
    }
  }

  return result;
}

uint64_t *sub_275EE9954(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275EE9334(result);

    return sub_275EE97A8(v4, a2);
  }

  return result;
}

uint64_t sub_275EE99A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return sub_275EE80D4(*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

void *sub_275EE99F0(void *a1, uint64_t a2)
{
  *a1 = &unk_2884F5898;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812DAEC0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = 0;
  return a1;
}

void *sub_275EE9A80(void *a1)
{
  if (a1 != qword_2812DB4C8 && a1[6])
  {
    v2 = MEMORY[0x277C90C60]();
    MEMORY[0x277C91940](v2, 0x10A1C401B5AB65DLL);
  }

  sub_275EDC748(a1 + 1);
  sub_275EEF3F0(a1 + 3);
  return a1;
}

void sub_275EE9AF0(void *a1)
{
  sub_275EE9A80(a1);

  JUMPOUT(0x277C91940);
}

void *sub_275EE9B30()
{
  if (atomic_load_explicit(dword_2812DAEC0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return qword_2812DB4C8;
}

uint64_t *sub_275EE9B70(uint64_t *result)
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

  if (v1[2])
  {
    result = TSS::ThemeArchive::Clear(v1[6]);
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_275EEF3A0(v5);
  }

  return result;
}

google::protobuf::internal *sub_275EE9C00(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  while (1)
  {
LABEL_2:
    if (sub_275EEF00C(a3, &v26))
    {
      return v26;
    }

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
        v26 = (v11 + 1);
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
        v15 = MEMORY[0x277C90F90](*(a1 + 24));
        LODWORD(v16) = v15;
        v17 = *(a1 + 32);
        v18 = *(a1 + 40) + 8 * v17;
        *(a1 + 32) = v17 + 1;
        *(v18 + 8) = v15;
        v12 = v26;
LABEL_26:
        v11 = sub_275F48FE4(a3, v16, v12);
        v26 = v11;
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

        v22 = MEMORY[0x277C90FB0](v21);
        LODWORD(v20) = v22;
        *(a1 + 48) = v22;
        v5 = v26;
      }

      v10 = sub_275F49EB8(a3, v20, v5);
      goto LABEL_37;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275EEF1DC((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_37:
    v26 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v26;
}

unsigned __int8 *sub_275EE9E24(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 48);
    *a2 = 10;
    v6 = *(v5 + 11);
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

    a2 = TSS::ThemeArchive::_InternalSerialize(v5, v7, a3);
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

      a2 = TSP::Reference::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275EE9FE0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSS::ThemeArchive::ByteSizeLong(*(a1 + 48));
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
      v10 = TSP::Reference::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v5, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v5;
    return v5;
  }
}

uint64_t sub_275EEA0CC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884F5E10, 0);
  if (v4)
  {

    return sub_275EEA174(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275EEA174(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275EEF354((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275EEF600(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    *(v3 + 16) |= 1u;
    if (!*(v3 + 48))
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v3 + 48) = MEMORY[0x277C90FB0](v10);
    }

    return MEMORY[0x2821EB178]();
  }

  return result;
}

uint64_t *sub_275EEA284(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275EE9B70(result);

    return sub_275EEA0CC(v4, a2);
  }

  return result;
}

uint64_t sub_275EEA2D0(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 40) + 8 * v3));
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

  result = TSS::ThemeArchive::IsInitialized(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_275EEA380(uint64_t *a1)
{
  if (a1 != &qword_2812DB500)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C91940]();
    }

    v3 = a1[4];
    if (v3)
    {
      v4 = sub_275EDC618(v3);
      MEMORY[0x277C91940](v4, 0x10A1C400D197E4BLL);
    }
  }

  sub_275EDC748(a1 + 1);
  return a1;
}

void sub_275EEA404(uint64_t *a1)
{
  sub_275EEA380(a1);

  JUMPOUT(0x277C91940);
}

uint64_t *sub_275EEA444(uint64_t *result)
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
      result = sub_275EDC820(v1[4]);
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275EEF3A0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275EEA4B4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  while ((sub_275EEF00C(a3, &v19) & 1) == 0)
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

        v11 = sub_275EEDFC0(v12);
        *(a1 + 32) = v11;
        v5 = v19;
      }

      v10 = sub_275F490B4(a3, v11, v5);
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
          sub_275EEF1DC((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v13 = *(a1 + 24);
      if (!v13)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x277C90F90](v14);
        LODWORD(v13) = v15;
        *(a1 + 24) = v15;
        v5 = v19;
      }

      v10 = sub_275F48FE4(a3, v13, v5);
    }

LABEL_30:
    v19 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v19;
}

unsigned __int8 *sub_275EEA660(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    v13 = *(v12 + 20);
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v15 = v13 >> 7;
      if (v13 >> 14)
      {
        v14 = (a2 + 3);
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
        v14 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v13;
      v14 = (a2 + 2);
    }

    a2 = sub_275EDCE2C(v12, v14, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275EEA7F0(uint64_t a1)
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
    v5 = sub_275EDD438(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
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

uint64_t sub_275EEA8D0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884F5E28, 0);
  if (v4)
  {

    return sub_275EDE144(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_275EEA978(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275EEA444(result);

    return sub_275EEA8D0(v4, a2);
  }

  return result;
}

uint64_t sub_275EEA9C4(uint64_t a1)
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

  result = sub_275EDD9DC(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_275EEAA48(void *a1, uint64_t a2)
{
  *a1 = &unk_2884F59F8;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = a2;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = a2;
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = a2;
  a1[16] = 0;
  a1[17] = 0;
  a1[21] = a2;
  a1[18] = a2;
  a1[19] = 0;
  a1[20] = 0;
  a1[22] = 0;
  a1[23] = 0;
  if (atomic_load_explicit(dword_2812DAC68, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[24] = 0;
  return a1;
}

void sub_275EEAB1C(_Unwind_Exception *a1)
{
  sub_275EEF900(v7);
  sub_275EEF900(v6);
  sub_275EEF900(v5);
  sub_275EEF900(v4);
  sub_275EEF900(v3);
  sub_275EEF900(v2);
  sub_275EEF900(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_275EEAB7C(uint64_t *a1)
{
  sub_275EDC748(a1 + 1);
  sub_275EEF900(a1 + 21);
  sub_275EEF900(a1 + 18);
  sub_275EEF900(a1 + 15);
  sub_275EEF900(a1 + 12);
  sub_275EEF900(a1 + 9);
  sub_275EEF900(a1 + 6);
  sub_275EEF900(a1 + 3);
  return a1;
}

void sub_275EEAC04(uint64_t *a1)
{
  sub_275EEAB7C(a1);

  JUMPOUT(0x277C91940);
}

uint64_t *sub_275EEAC44(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = TSCE::FormulaArchive::Clear(v4);
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
      result = TSCE::FormulaArchive::Clear(v7);
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
      result = TSCE::FormulaArchive::Clear(v10);
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
      result = TSCE::FormulaArchive::Clear(v13);
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
      result = TSCE::FormulaArchive::Clear(v16);
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
      result = TSCE::FormulaArchive::Clear(v19);
      --v17;
    }

    while (v17);
    *(v1 + 38) = 0;
  }

  v20 = *(v1 + 44);
  if (v20 >= 1)
  {
    v21 = (v1[23] + 8);
    do
    {
      v22 = *v21++;
      result = TSCE::FormulaArchive::Clear(v22);
      --v20;
    }

    while (v20);
    *(v1 + 44) = 0;
  }

  if ((v1[2] & 3) != 0)
  {
    v1[24] = 0;
  }

  v24 = *(v1 + 8);
  v23 = v1 + 1;
  *(v23 + 2) = 0;
  if (v24)
  {

    return sub_275EEF3A0(v23);
  }

  return result;
}

google::protobuf::internal *sub_275EEADC4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v88 = a2;
  v5 = 0;
  if ((sub_275EEF00C(a3, &v88) & 1) == 0)
  {
    while (1)
    {
      v7 = (v88 + 1);
      v8 = *v88;
      if ((*v88 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v88, (v9 - 128));
      v88 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_139;
      }

      v7 = TagFallback;
      v8 = v37;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 5)
      {
        if (v8 >> 3 > 7)
        {
          if (v10 != 8)
          {
            if (v10 != 9)
            {
              if (v10 != 10 || v8 != 80)
              {
                goto LABEL_125;
              }

              v5 |= 2u;
              v12 = (v7 + 1);
              LODWORD(v11) = *v7;
              if ((v11 & 0x80) == 0)
              {
                goto LABEL_16;
              }

              v13 = *v12;
              v11 = (v11 + (v13 << 7) - 128);
              if ((v13 & 0x80000000) == 0)
              {
                v12 = (v7 + 2);
LABEL_16:
                v88 = v12;
                *(a1 + 196) = v11;
                goto LABEL_132;
              }

              v86 = google::protobuf::internal::VarintParseSlow64(v7, v11);
              v88 = v86;
              *(a1 + 196) = v87;
              if (!v86)
              {
                goto LABEL_139;
              }

              goto LABEL_132;
            }

            if (v8 == 74)
            {
              v74 = v7 - 1;
              while (1)
              {
                v75 = (v74 + 1);
                v88 = (v74 + 1);
                v76 = *(a1 + 184);
                if (!v76)
                {
                  goto LABEL_115;
                }

                v82 = *(a1 + 176);
                v77 = *v76;
                if (v82 < *v76)
                {
                  *(a1 + 176) = v82 + 1;
                  v79 = *&v76[2 * v82 + 2];
                  goto LABEL_119;
                }

                if (v77 == *(a1 + 180))
                {
LABEL_115:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 168));
                  v76 = *(a1 + 184);
                  v77 = *v76;
                }

                *v76 = v77 + 1;
                v78 = MEMORY[0x277C90FD0](*(a1 + 168));
                LODWORD(v79) = v78;
                v80 = *(a1 + 176);
                v81 = *(a1 + 184) + 8 * v80;
                *(a1 + 176) = v80 + 1;
                *(v81 + 8) = v78;
                v75 = v88;
LABEL_119:
                v74 = sub_275F49F88(a3, v79, v75);
                v88 = v74;
                if (!v74)
                {
                  goto LABEL_139;
                }

                if (*a3 <= v74 || *v74 != 74)
                {
                  goto LABEL_132;
                }
              }
            }

            goto LABEL_125;
          }

          if (v8 != 66)
          {
            goto LABEL_125;
          }

          v56 = v7 - 1;
          while (2)
          {
            v57 = (v56 + 1);
            v88 = (v56 + 1);
            v58 = *(a1 + 160);
            if (!v58)
            {
LABEL_89:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144));
              v58 = *(a1 + 160);
              v59 = *v58;
              goto LABEL_90;
            }

            v64 = *(a1 + 152);
            v59 = *v58;
            if (v64 >= *v58)
            {
              if (v59 == *(a1 + 156))
              {
                goto LABEL_89;
              }

LABEL_90:
              *v58 = v59 + 1;
              v60 = MEMORY[0x277C90FD0](*(a1 + 144));
              LODWORD(v61) = v60;
              v62 = *(a1 + 152);
              v63 = *(a1 + 160) + 8 * v62;
              *(a1 + 152) = v62 + 1;
              *(v63 + 8) = v60;
              v57 = v88;
            }

            else
            {
              *(a1 + 152) = v64 + 1;
              v61 = *&v58[2 * v64 + 2];
            }

            v56 = sub_275F49F88(a3, v61, v57);
            v88 = v56;
            if (!v56)
            {
              goto LABEL_139;
            }

            if (*a3 <= v56 || *v56 != 66)
            {
              goto LABEL_132;
            }

            continue;
          }
        }

        if (v10 != 6)
        {
          if (v10 != 7 || v8 != 58)
          {
            goto LABEL_125;
          }

          v27 = v7 - 1;
          while (2)
          {
            v28 = (v27 + 1);
            v88 = (v27 + 1);
            v29 = *(a1 + 136);
            if (!v29)
            {
LABEL_48:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120));
              v29 = *(a1 + 136);
              v30 = *v29;
              goto LABEL_49;
            }

            v35 = *(a1 + 128);
            v30 = *v29;
            if (v35 >= *v29)
            {
              if (v30 == *(a1 + 132))
              {
                goto LABEL_48;
              }

LABEL_49:
              *v29 = v30 + 1;
              v31 = MEMORY[0x277C90FD0](*(a1 + 120));
              LODWORD(v32) = v31;
              v33 = *(a1 + 128);
              v34 = *(a1 + 136) + 8 * v33;
              *(a1 + 128) = v33 + 1;
              *(v34 + 8) = v31;
              v28 = v88;
            }

            else
            {
              *(a1 + 128) = v35 + 1;
              v32 = *&v29[2 * v35 + 2];
            }

            v27 = sub_275F49F88(a3, v32, v28);
            v88 = v27;
            if (!v27)
            {
              goto LABEL_139;
            }

            if (*a3 <= v27 || *v27 != 58)
            {
              goto LABEL_132;
            }

            continue;
          }
        }

        if (v8 != 50)
        {
          goto LABEL_125;
        }

        v65 = v7 - 1;
        while (2)
        {
          v66 = (v65 + 1);
          v88 = (v65 + 1);
          v67 = *(a1 + 112);
          if (!v67)
          {
LABEL_102:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
            v67 = *(a1 + 112);
            v68 = *v67;
            goto LABEL_103;
          }

          v73 = *(a1 + 104);
          v68 = *v67;
          if (v73 >= *v67)
          {
            if (v68 == *(a1 + 108))
            {
              goto LABEL_102;
            }

LABEL_103:
            *v67 = v68 + 1;
            v69 = MEMORY[0x277C90FD0](*(a1 + 96));
            LODWORD(v70) = v69;
            v71 = *(a1 + 104);
            v72 = *(a1 + 112) + 8 * v71;
            *(a1 + 104) = v71 + 1;
            *(v72 + 8) = v69;
            v66 = v88;
          }

          else
          {
            *(a1 + 104) = v73 + 1;
            v70 = *&v67[2 * v73 + 2];
          }

          v65 = sub_275F49F88(a3, v70, v66);
          v88 = v65;
          if (!v65)
          {
            goto LABEL_139;
          }

          if (*a3 <= v65 || *v65 != 50)
          {
            goto LABEL_132;
          }

          continue;
        }
      }

      if (v8 >> 3 <= 3)
      {
        if (v10 != 1)
        {
          if (v10 != 3 || v8 != 26)
          {
            goto LABEL_125;
          }

          v15 = v7 - 1;
          while (2)
          {
            v16 = (v15 + 1);
            v88 = (v15 + 1);
            v17 = *(a1 + 64);
            if (!v17)
            {
LABEL_26:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v17 = *(a1 + 64);
              v18 = *v17;
              goto LABEL_27;
            }

            v23 = *(a1 + 56);
            v18 = *v17;
            if (v23 >= *v17)
            {
              if (v18 == *(a1 + 60))
              {
                goto LABEL_26;
              }

LABEL_27:
              *v17 = v18 + 1;
              v19 = MEMORY[0x277C90FD0](*(a1 + 48));
              LODWORD(v20) = v19;
              v21 = *(a1 + 56);
              v22 = *(a1 + 64) + 8 * v21;
              *(a1 + 56) = v21 + 1;
              *(v22 + 8) = v19;
              v16 = v88;
            }

            else
            {
              *(a1 + 56) = v23 + 1;
              v20 = *&v17[2 * v23 + 2];
            }

            v15 = sub_275F49F88(a3, v20, v16);
            v88 = v15;
            if (!v15)
            {
              goto LABEL_139;
            }

            if (*a3 <= v15 || *v15 != 26)
            {
              goto LABEL_132;
            }

            continue;
          }
        }

        if (v8 != 10)
        {
LABEL_125:
          if (v8)
          {
            v83 = (v8 & 7) == 4;
          }

          else
          {
            v83 = 1;
          }

          if (v83)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275EEF1DC((a1 + 8));
          }

          v88 = google::protobuf::internal::UnknownFieldParse();
          if (!v88)
          {
LABEL_139:
            v88 = 0;
            goto LABEL_2;
          }

          goto LABEL_132;
        }

        v38 = v7 - 1;
        while (2)
        {
          v39 = (v38 + 1);
          v88 = (v38 + 1);
          v40 = *(a1 + 40);
          if (!v40)
          {
LABEL_63:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v40 = *(a1 + 40);
            v41 = *v40;
            goto LABEL_64;
          }

          v46 = *(a1 + 32);
          v41 = *v40;
          if (v46 >= *v40)
          {
            if (v41 == *(a1 + 36))
            {
              goto LABEL_63;
            }

LABEL_64:
            *v40 = v41 + 1;
            v42 = MEMORY[0x277C90FD0](*(a1 + 24));
            LODWORD(v43) = v42;
            v44 = *(a1 + 32);
            v45 = *(a1 + 40) + 8 * v44;
            *(a1 + 32) = v44 + 1;
            *(v45 + 8) = v42;
            v39 = v88;
          }

          else
          {
            *(a1 + 32) = v46 + 1;
            v43 = *&v40[2 * v46 + 2];
          }

          v38 = sub_275F49F88(a3, v43, v39);
          v88 = v38;
          if (!v38)
          {
            goto LABEL_139;
          }

          if (*a3 <= v38 || *v38 != 10)
          {
            goto LABEL_132;
          }

          continue;
        }
      }

      if (v10 == 4)
      {
        if (v8 != 34)
        {
          goto LABEL_125;
        }

        v47 = v7 - 1;
        while (2)
        {
          v48 = (v47 + 1);
          v88 = (v47 + 1);
          v49 = *(a1 + 88);
          if (!v49)
          {
LABEL_76:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
            v49 = *(a1 + 88);
            v50 = *v49;
            goto LABEL_77;
          }

          v55 = *(a1 + 80);
          v50 = *v49;
          if (v55 >= *v49)
          {
            if (v50 == *(a1 + 84))
            {
              goto LABEL_76;
            }

LABEL_77:
            *v49 = v50 + 1;
            v51 = MEMORY[0x277C90FD0](*(a1 + 72));
            LODWORD(v52) = v51;
            v53 = *(a1 + 80);
            v54 = *(a1 + 88) + 8 * v53;
            *(a1 + 80) = v53 + 1;
            *(v54 + 8) = v51;
            v48 = v88;
          }

          else
          {
            *(a1 + 80) = v55 + 1;
            v52 = *&v49[2 * v55 + 2];
          }

          v47 = sub_275F49F88(a3, v52, v48);
          v88 = v47;
          if (!v47)
          {
            goto LABEL_139;
          }

          if (*a3 <= v47 || *v47 != 34)
          {
            goto LABEL_132;
          }

          continue;
        }
      }

      if (v10 != 5 || v8 != 40)
      {
        goto LABEL_125;
      }

      v5 |= 1u;
      v25 = (v7 + 1);
      LODWORD(v24) = *v7;
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_42;
      }

      v26 = *v25;
      v24 = (v24 + (v26 << 7) - 128);
      if ((v26 & 0x80000000) == 0)
      {
        v25 = (v7 + 2);
LABEL_42:
        v88 = v25;
        *(a1 + 192) = v24;
        goto LABEL_132;
      }

      v84 = google::protobuf::internal::VarintParseSlow64(v7, v24);
      v88 = v84;
      *(a1 + 192) = v85;
      if (!v84)
      {
        goto LABEL_139;
      }

LABEL_132:
      if (sub_275EEF00C(a3, &v88))
      {
        goto LABEL_2;
      }
    }

    v7 = (v88 + 2);
LABEL_6:
    v88 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v88;
}

unsigned __int8 *sub_275EEB56C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(a1 + 40) + 8 * i + 8);
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

      a2 = TSCE::FormulaArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v15 = *(*(a1 + 64) + 8 * j + 8);
      *a2 = 26;
      v16 = *(v15 + 5);
      if (v16 > 0x7F)
      {
        a2[1] = v16 | 0x80;
        v18 = v16 >> 7;
        if (v16 >> 14)
        {
          v17 = a2 + 3;
          do
          {
            *(v17 - 1) = v18 | 0x80;
            v19 = v18 >> 7;
            ++v17;
            v20 = v18 >> 14;
            v18 >>= 7;
          }

          while (v20);
          *(v17 - 1) = v19;
        }

        else
        {
          a2[2] = v18;
          v17 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v16;
        v17 = a2 + 2;
      }

      a2 = TSCE::FormulaArchive::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(a1 + 80);
  if (v21)
  {
    for (k = 0; k != v21; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v23 = *(*(a1 + 88) + 8 * k + 8);
      *a2 = 34;
      v24 = *(v23 + 5);
      if (v24 > 0x7F)
      {
        a2[1] = v24 | 0x80;
        v26 = v24 >> 7;
        if (v24 >> 14)
        {
          v25 = a2 + 3;
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
          a2[2] = v26;
          v25 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v24;
        v25 = a2 + 2;
      }

      a2 = TSCE::FormulaArchive::_InternalSerialize(v23, v25, a3);
    }
  }

  v29 = *(a1 + 16);
  if (v29)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v30 = *(a1 + 192);
    *a2 = 40;
    if (v30 > 0x7F)
    {
      a2[1] = v30 | 0x80;
      v31 = v30 >> 7;
      if (v30 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v31 | 0x80;
          v32 = v31 >> 7;
          ++a2;
          v33 = v31 >> 14;
          v31 >>= 7;
        }

        while (v33);
        *(a2 - 1) = v32;
      }

      else
      {
        a2[2] = v31;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v30;
      a2 += 2;
    }
  }

  v34 = *(a1 + 104);
  if (v34)
  {
    for (m = 0; m != v34; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v36 = *(*(a1 + 112) + 8 * m + 8);
      *a2 = 50;
      v37 = *(v36 + 5);
      if (v37 > 0x7F)
      {
        a2[1] = v37 | 0x80;
        v39 = v37 >> 7;
        if (v37 >> 14)
        {
          v38 = a2 + 3;
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
          a2[2] = v39;
          v38 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v37;
        v38 = a2 + 2;
      }

      a2 = TSCE::FormulaArchive::_InternalSerialize(v36, v38, a3);
    }
  }

  v42 = *(a1 + 128);
  if (v42)
  {
    for (n = 0; n != v42; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v44 = *(*(a1 + 136) + 8 * n + 8);
      *a2 = 58;
      v45 = *(v44 + 5);
      if (v45 > 0x7F)
      {
        a2[1] = v45 | 0x80;
        v47 = v45 >> 7;
        if (v45 >> 14)
        {
          v46 = a2 + 3;
          do
          {
            *(v46 - 1) = v47 | 0x80;
            v48 = v47 >> 7;
            ++v46;
            v49 = v47 >> 14;
            v47 >>= 7;
          }

          while (v49);
          *(v46 - 1) = v48;
        }

        else
        {
          a2[2] = v47;
          v46 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v45;
        v46 = a2 + 2;
      }

      a2 = TSCE::FormulaArchive::_InternalSerialize(v44, v46, a3);
    }
  }

  v50 = *(a1 + 152);
  if (v50)
  {
    for (ii = 0; ii != v50; ++ii)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v52 = *(*(a1 + 160) + 8 * ii + 8);
      *a2 = 66;
      v53 = *(v52 + 5);
      if (v53 > 0x7F)
      {
        a2[1] = v53 | 0x80;
        v55 = v53 >> 7;
        if (v53 >> 14)
        {
          v54 = a2 + 3;
          do
          {
            *(v54 - 1) = v55 | 0x80;
            v56 = v55 >> 7;
            ++v54;
            v57 = v55 >> 14;
            v55 >>= 7;
          }

          while (v57);
          *(v54 - 1) = v56;
        }

        else
        {
          a2[2] = v55;
          v54 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v53;
        v54 = a2 + 2;
      }

      a2 = TSCE::FormulaArchive::_InternalSerialize(v52, v54, a3);
    }
  }

  v58 = *(a1 + 176);
  if (v58)
  {
    for (jj = 0; jj != v58; ++jj)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v60 = *(*(a1 + 184) + 8 * jj + 8);
      *a2 = 74;
      v61 = *(v60 + 5);
      if (v61 > 0x7F)
      {
        a2[1] = v61 | 0x80;
        v63 = v61 >> 7;
        if (v61 >> 14)
        {
          v62 = a2 + 3;
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
          a2[2] = v63;
          v62 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v61;
        v62 = a2 + 2;
      }

      a2 = TSCE::FormulaArchive::_InternalSerialize(v60, v62, a3);
    }
  }

  if ((v29 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v66 = *(a1 + 196);
    *a2 = 80;
    if (v66 > 0x7F)
    {
      a2[1] = v66 | 0x80;
      v67 = v66 >> 7;
      if (v66 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v67 | 0x80;
          v68 = v67 >> 7;
          ++a2;
          v69 = v67 >> 14;
          v67 >>= 7;
        }

        while (v69);
        *(a2 - 1) = v68;
      }

      else
      {
        a2[2] = v67;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v66;
      a2 += 2;
    }
  }

  v70 = *(a1 + 8);
  if ((v70 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v70 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275EEBBD4(uint64_t a1)
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
      v7 = TSCE::FormulaArchive::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 56);
  v9 = v2 + v8;
  v10 = *(a1 + 64);
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
      v14 = TSCE::FormulaArchive::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  v16 = v9 + v15;
  v17 = *(a1 + 88);
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
      v21 = TSCE::FormulaArchive::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 104);
  v23 = v16 + v22;
  v24 = *(a1 + 112);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = TSCE::FormulaArchive::ByteSizeLong(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 128);
  v30 = v23 + v29;
  v31 = *(a1 + 136);
  if (v31)
  {
    v32 = (v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = 8 * v29;
    do
    {
      v34 = *v32++;
      v35 = TSCE::FormulaArchive::ByteSizeLong(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(a1 + 152);
  v37 = v30 + v36;
  v38 = *(a1 + 160);
  if (v38)
  {
    v39 = (v38 + 8);
  }

  else
  {
    v39 = 0;
  }

  if (v36)
  {
    v40 = 8 * v36;
    do
    {
      v41 = *v39++;
      v42 = TSCE::FormulaArchive::ByteSizeLong(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(a1 + 176);
  v44 = v37 + v43;
  v45 = *(a1 + 184);
  if (v45)
  {
    v46 = (v45 + 8);
  }

  else
  {
    v46 = 0;
  }

  if (v43)
  {
    v47 = 8 * v43;
    do
    {
      v48 = *v46++;
      v49 = TSCE::FormulaArchive::ByteSizeLong(v48);
      v44 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6);
      v47 -= 8;
    }

    while (v47);
  }

  v50 = *(a1 + 16);
  if ((v50 & 3) != 0)
  {
    if (v50)
    {
      v51 = *(a1 + 192);
      v52 = ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v51 >= 0)
      {
        v53 = v52;
      }

      else
      {
        v53 = 11;
      }

      v44 += v53;
    }

    if ((v50 & 2) != 0)
    {
      v54 = *(a1 + 196);
      v55 = ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v54 >= 0)
      {
        v56 = v55;
      }

      else
      {
        v56 = 11;
      }

      v44 += v56;
    }
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v44, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v44;
    return v44;
  }
}

uint64_t sub_275EEBEE0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884F5E40, 0);
  if (v4)
  {

    return sub_275EEBF88(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275EEBF88(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275EEF354((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275EEF984(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    result = sub_275EEF984(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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
    result = sub_275EEF984(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
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
    result = sub_275EEF984(v3 + 96, v22, (v21 + 8), v20, **(v3 + 112) - *(v3 + 104));
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
    result = sub_275EEF984(v3 + 120, v27, (v26 + 8), v25, **(v3 + 136) - *(v3 + 128));
    v28 = *(v3 + 128) + v25;
    *(v3 + 128) = v28;
    v29 = *(v3 + 136);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 152);
  if (v30)
  {
    v31 = *(a2 + 160);
    v32 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 144));
    result = sub_275EEF984(v3 + 144, v32, (v31 + 8), v30, **(v3 + 160) - *(v3 + 152));
    v33 = *(v3 + 152) + v30;
    *(v3 + 152) = v33;
    v34 = *(v3 + 160);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 176);
  if (v35)
  {
    v36 = *(a2 + 184);
    v37 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 168));
    result = sub_275EEF984(v3 + 168, v37, (v36 + 8), v35, **(v3 + 184) - *(v3 + 176));
    v38 = *(v3 + 176) + v35;
    *(v3 + 176) = v38;
    v39 = *(v3 + 184);
    if (*v39 < v38)
    {
      *v39 = v38;
    }
  }

  v40 = *(a2 + 16);
  if ((v40 & 3) != 0)
  {
    if (v40)
    {
      *(v3 + 192) = *(a2 + 192);
    }

    if ((v40 & 2) != 0)
    {
      *(v3 + 196) = *(a2 + 196);
    }

    *(v3 + 16) |= v40;
  }

  return result;
}

uint64_t *sub_275EEC280(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275EEAC44(result);

    return sub_275EEBEE0(v4, a2);
  }

  return result;
}

BOOL sub_275EEC2CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSCE::FormulaArchive::IsInitialized(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 56);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = TSCE::FormulaArchive::IsInitialized(*(*(a1 + 64) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 80);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = TSCE::FormulaArchive::IsInitialized(*(*(a1 + 88) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a1 + 104);
  while (v11 >= 1)
  {
    v12 = v11 - 1;
    v13 = TSCE::FormulaArchive::IsInitialized(*(*(a1 + 112) + 8 * v11));
    v11 = v12;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *(a1 + 128);
  while (v14 >= 1)
  {
    v15 = v14 - 1;
    v16 = TSCE::FormulaArchive::IsInitialized(*(*(a1 + 136) + 8 * v14));
    v14 = v15;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v19 = *(a1 + 152);
  while (v19 >= 1)
  {
    v20 = v19 - 1;
    v21 = TSCE::FormulaArchive::IsInitialized(*(*(a1 + 160) + 8 * v19));
    v17 = 0;
    v19 = v20;
    if ((v21 & 1) == 0)
    {
      return v17;
    }
  }

  v22 = *(a1 + 176);
  do
  {
    v17 = v22 < 1;
    if (v22 < 1)
    {
      break;
    }

    v23 = v22 - 1;
    v24 = TSCE::FormulaArchive::IsInitialized(*(*(a1 + 184) + 8 * v22));
    v22 = v23;
  }

  while ((v24 & 1) != 0);
  return v17;
}

uint64_t sub_275EEC450(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884F5AA8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812DAC40, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v3;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_275EEC4CC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C91940](v2, 0x1012C40EC159624);
  }

  if (a1 != &unk_2812DB5F0)
  {
    if (*(a1 + 32))
    {
      v3 = MEMORY[0x277C90DA0]();
      MEMORY[0x277C91940](v3, 0x10A1C40FC2B8258);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = sub_275EEAB7C(v4);
      MEMORY[0x277C91940](v5, 0x10A1C40BCAEB2C7);
    }
  }

  sub_275EDC748((a1 + 8));
  return a1;
}

void sub_275EEC58C(uint64_t a1)
{
  sub_275EEC4CC(a1);

  JUMPOUT(0x277C91940);
}

void *sub_275EEC5CC()
{
  if (atomic_load_explicit(dword_2812DAC40, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812DB5F0;
}

uint64_t *sub_275EEC60C(uint64_t *result)
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
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
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

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  result = TSCH::ChartMediatorArchive::Clear(result[4]);
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result = sub_275EEAC44(v1[5]);
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 20) = 0;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275EEF3A0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275EEC6BC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v31 = a2;
  v5 = 0;
  if ((sub_275EEF00C(a3, &v31) & 1) == 0)
  {
    while (1)
    {
      v7 = (v31 + 1);
      v8 = *v31;
      if ((*v31 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v31, (v9 - 128));
      v31 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_57;
      }

      v7 = TagFallback;
      v8 = v26;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 != 1)
        {
          if (v10 == 2 && v8 == 18)
          {
            *(a1 + 16) |= 1u;
            google::protobuf::internal::ArenaStringPtr::Mutable();
            v15 = google::protobuf::internal::InlineGreedyStringParser();
            goto LABEL_47;
          }

          goto LABEL_40;
        }

        if (v8 != 10)
        {
          goto LABEL_40;
        }

        *(a1 + 16) |= 2u;
        v21 = *(a1 + 32);
        if (!v21)
        {
          v22 = *(a1 + 8);
          if (v22)
          {
            v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
          }

          v23 = MEMORY[0x277C91000](v22);
          LODWORD(v21) = v23;
          *(a1 + 32) = v23;
          v7 = v31;
        }

        v15 = sub_275F4A058(a3, v21, v7);
LABEL_47:
        v31 = v15;
        if (!v15)
        {
          goto LABEL_57;
        }

        goto LABEL_48;
      }

      if (v10 == 3)
      {
        if (v8 == 26)
        {
          *(a1 + 16) |= 4u;
          v16 = *(a1 + 40);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = sub_275EEEB54(v17);
            *(a1 + 40) = v16;
            v7 = v31;
          }

          v15 = sub_275F4A128(a3, v16, v7);
          goto LABEL_47;
        }

LABEL_40:
        if (v8)
        {
          v24 = (v8 & 7) == 4;
        }

        else
        {
          v24 = 1;
        }

        if (v24)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275EEF1DC((a1 + 8));
        }

        v15 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_47;
      }

      if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_40;
        }

        v5 |= 8u;
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
          v31 = v19;
          *(a1 + 48) = v18 != 0;
          goto LABEL_48;
        }

        v27 = google::protobuf::internal::VarintParseSlow64(v7, v18);
        v31 = v27;
        *(a1 + 48) = v28 != 0;
        if (!v27)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_40;
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
          v31 = v12;
          *(a1 + 49) = v11 != 0;
          goto LABEL_48;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v31 = v29;
        *(a1 + 49) = v30 != 0;
        if (!v29)
        {
LABEL_57:
          v31 = 0;
          goto LABEL_2;
        }
      }

LABEL_48:
      if (sub_275EEF00C(a3, &v31))
      {
        goto LABEL_2;
      }
    }

    v7 = (v31 + 2);
LABEL_6:
    v31 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

unsigned __int8 *sub_275EEC9C8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 32);
    *v4 = 10;
    v8 = *(v7 + 5);
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

    v4 = TSCH::ChartMediatorArchive::_InternalSerialize(v7, v9, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_275EE4E58(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(a1 + 40);
  *v4 = 26;
  v14 = *(v13 + 20);
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

  v4 = sub_275EEB56C(v13, v15, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

LABEL_28:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(a1 + 48);
  *v4 = 32;
  v4[1] = v19;
  v4 += 2;
  if ((v6 & 0x10) != 0)
  {
LABEL_31:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v20 = *(a1 + 49);
    *v4 = 40;
    v4[1] = v20;
    v4 += 2;
  }

LABEL_34:
  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275EECC08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v6 = TSCH::ChartMediatorArchive::ByteSizeLong(*(a1 + 32));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t sub_275EECCA8(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v8 = sub_275EECC08(a1);
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
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

    v7 = TSCH::ChartMediatorArchive::ByteSizeLong(v2);
    v8 = v6 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v9 = *(a1 + 16);
  if ((v9 & 0x1C) != 0)
  {
    if ((v9 & 4) != 0)
    {
      v10 = sub_275EEBBD4(*(a1 + 40));
      v8 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v8 += ((v9 >> 3) & 2) + ((v9 >> 2) & 2);
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v8, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v8;
    return v8;
  }
}

uint64_t sub_275EECDE0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884F5E58, 0);
  if (v4)
  {

    return sub_275EECE88(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275EECE88(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275EEF354((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        goto LABEL_21;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C91000](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 32))
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = MEMORY[0x277D80098];
    }

    result = TSCH::ChartMediatorArchive::MergeFrom(v6, v8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }

LABEL_21:
    *(v3 + 16) |= 4u;
    v9 = *(v3 + 40);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = sub_275EEEB54(v10);
      *(v3 + 40) = v9;
    }

    if (*(a2 + 40))
    {
      v11 = *(a2 + 40);
    }

    else
    {
      v11 = qword_2812DB528;
    }

    result = sub_275EEBF88(v9, v11);
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
      *(v3 + 49) = *(a2 + 49);
      goto LABEL_10;
    }

LABEL_29:
    *(v3 + 48) = *(a2 + 48);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t *sub_275EECFDC(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275EEC60C(result);

    return sub_275EECDE0(v4, a2);
  }

  return result;
}

uint64_t sub_275EED028(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    return 0;
  }

  result = TSCH::ChartMediatorArchive::IsInitialized(*(a1 + 32));
  if (result)
  {
    if ((*(a1 + 16) & 4) == 0)
    {
      return 1;
    }

    result = sub_275EEC2CC(*(a1 + 40));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_275EED0C0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884F5B58;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812DAC88, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  return a1;
}

uint64_t *sub_275EED130(uint64_t *a1)
{
  sub_275EED164(a1);
  sub_275EDC748(a1 + 1);
  return a1;
}

uint64_t *sub_275EED164(uint64_t *result)
{
  if (result != &qword_2812DB628)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277C90D20]();
      MEMORY[0x277C91940](v2, 0x10A1C40101E3C09);
    }

    if (v1[4])
    {
      v3 = MEMORY[0x277C90DE0]();
      MEMORY[0x277C91940](v3, 0x10A1C4071667EE6);
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C91940]();
    }

    result = v1[6];
    if (result)
    {
      MEMORY[0x277C90A50]();

      JUMPOUT(0x277C91940);
    }
  }

  return result;
}

void sub_275EED230(uint64_t *a1)
{
  sub_275EED130(a1);

  JUMPOUT(0x277C91940);
}

google::protobuf::internal *sub_275EED270(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  while ((sub_275EEF00C(a3, &v27) & 1) == 0)
  {
    v5 = (v27 + 1);
    v6 = *v27;
    if ((*v27 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v27 + 2);
LABEL_6:
      v27 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v7 - 128));
    v27 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v25;
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
        v20 = *(a1 + 40);
        if (!v20)
        {
          v21 = *(a1 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C90F90](v21);
          LODWORD(v20) = v22;
          *(a1 + 40) = v22;
          v5 = v27;
        }

        v13 = sub_275F48FE4(a3, v20, v5);
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

          v16 = MEMORY[0x277C90F30](v15);
          LODWORD(v14) = v16;
          *(a1 + 48) = v16;
          v5 = v27;
        }

        v13 = sub_275F4A398(a3, v14, v5);
      }
    }

    else if (v8 == 1)
    {
      if (v6 != 10)
      {
        goto LABEL_39;
      }

      *(a1 + 16) |= 1u;
      v17 = *(a1 + 24);
      if (!v17)
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = MEMORY[0x277C90FE0](v18);
        LODWORD(v17) = v19;
        *(a1 + 24) = v19;
        v5 = v27;
      }

      v13 = sub_275F4A1F8(a3, v17, v5);
    }

    else
    {
      if (v8 != 2 || v6 != 18)
      {
LABEL_39:
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
          return v27;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275EEF1DC((a1 + 8));
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

        v12 = MEMORY[0x277C91010](v11);
        LODWORD(v10) = v12;
        *(a1 + 32) = v12;
        v5 = v27;
      }

      v13 = sub_275F4A2C8(a3, v10, v5);
    }

LABEL_46:
    v27 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v27;
}

unsigned __int8 *sub_275EED4D4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCE::RangeReferenceArchive::_InternalSerialize(v6, v8, a3);
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

  a2 = TSCH::ChartSelectionArchive::_InternalSerialize(v12, v14, a3);
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

  a2 = TSP::Reference::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) != 0)
  {
LABEL_36:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v24 = *(a1 + 48);
    *a2 = 34;
    v25 = *(v24 + 16);
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

    a2 = TSD::DrawableSelectionArchive::_InternalSerialize(v24, v26, a3);
  }

LABEL_46:
  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275EED79C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = TSCE::RangeReferenceArchive::ByteSizeLong(*(a1 + 24));
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
    v5 = TSCH::ChartSelectionArchive::ByteSizeLong(*(a1 + 32));
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

  v8 = TSP::Reference::ByteSizeLong(*(a1 + 40));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    v6 = TSD::DrawableSelectionArchive::ByteSizeLong(*(a1 + 48));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
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

uint64_t sub_275EED8E4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884F5E70, 0);
  if (v4)
  {

    return sub_275EE1F10(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_275EED98C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275EDF124(result);

    return sub_275EED8E4(v4, a2);
  }

  return result;
}

uint64_t *sub_275EEDA10(uint64_t *a1)
{
  if (a1 != &qword_2812DB660 && a1[3])
  {
    v2 = MEMORY[0x277C90E20]();
    MEMORY[0x277C91940](v2, 0x10A1C40BE43717ALL);
  }

  sub_275EDC748(a1 + 1);
  return a1;
}

void sub_275EEDA74(uint64_t *a1)
{
  sub_275EEDA10(a1);

  JUMPOUT(0x277C91940);
}

uint64_t *sub_275EEDAB4(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSCK::CommandActivityBehaviorArchive::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_275EEF3A0(v2);
  }

  return result;
}

google::protobuf::internal *sub_275EEDB10(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_275EEF00C(a3, &v16) & 1) == 0)
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

        v12 = MEMORY[0x277C91020](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_275F4A468(a3, v10, v5);
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
        sub_275EEF1DC((a1 + 8));
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

unsigned __int8 *sub_275EEDC58(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCK::CommandActivityBehaviorArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275EEDD48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSCK::CommandActivityBehaviorArchive::ByteSizeLong(*(a1 + 24));
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

uint64_t sub_275EEDDD4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884F5E88, 0);
  if (v4)
  {

    return sub_275EEDE7C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275EEDE7C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275EEF354((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      *(v3 + 24) = MEMORY[0x277C91020](v5);
    }

    return MEMORY[0x2821E9798]();
  }

  return result;
}

uint64_t *sub_275EEDF24(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275EEDAB4(result);

    return sub_275EEDDD4(v4, a2);
  }

  return result;
}

uint64_t sub_275EEDF70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return MEMORY[0x2821E9838](*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275EEDFC4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275EEFA44(a1);
}

void *sub_275EEE0A0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275EEFB54(a1);
}

void *sub_275EEE16C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275EEFC54(a1);
}

uint64_t sub_275EEE238(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275EEFD54(a1, 1);
  sub_275EDEB94(v2, a1);
  return v2;
}

uint64_t sub_275EEE2C4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275EEFDE0(a1);
}

void *sub_275EEE394(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275EEFEE4(a1, 1);
  *result = &unk_2884F51B8;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_275EEE404(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275EEFF8C(a1, 1);
  *result = &unk_2884F5268;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_275EEE478(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_275EF0034(a1, 1);
  *result = &unk_2884F5318;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

void *sub_275EEE4E8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275EF00DC(a1);
}

uint64_t sub_275EEE5B4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275EF01DC(a1, 1);
  sub_275EE3E9C(v2, a1);
  return v2;
}

void *sub_275EEE640(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275EF0268(a1);
}

uint64_t sub_275EEE70C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275EF0368(a1, 1);
  sub_275EE5EBC(v2, a1);
  return v2;
}

void *sub_275EEE798(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275EF03F4(a1);
}

uint64_t sub_275EEE864(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275EF04F4(a1);
}

void *sub_275EEE934(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275EF05F8(a1);
}

void *sub_275EEEA00(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275EF06F8(a1, 1);
  sub_275EE99F0(v2, a1);
  return v2;
}

void *sub_275EEEA8C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275EF0784(a1);
}

void *sub_275EEEB58(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275EF0884(a1, 1);
  sub_275EEAA48(v2, a1);
  return v2;
}

uint64_t sub_275EEEBE4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_275EF0910(a1, 1);
  sub_275EEC450(v2, a1);
  return v2;
}

uint64_t sub_275EEEC70(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275EF099C(a1);
}

void *sub_275EEED44(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_275EF0AA4(a1);
}

uint64_t sub_275EEF00C(uint64_t a1, uint64_t *a2)
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

void sub_275EEF084(unsigned int *a1, int a2)
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
    sub_275EEF188(v4);
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

void sub_275EEF188(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_275F4A604(a1);
  }

  JUMPOUT(0x277C91050);
}

uint64_t *sub_275EEF1DC(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  sub_275EEF224(v2);
  *a1 = v3 | 1;
  *v3 = v2;
  return v3 + 1;
}

double sub_275EEF224(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v1 = sub_275EEF268(a1, 0);
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  return result;
}

uint64_t sub_275EEF268(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_275F4A640(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C91050);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_275EEF2F0);
}

void sub_275EEF2F0(uint64_t a1)
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

uint64_t sub_275EEF354(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v3 = sub_275EEF1DC(a1);
  }

  return MEMORY[0x2821EAB30](v3, a2);
}

uint64_t *sub_275EEF3A0(uint64_t *a1)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_275EEF1DC(a1);
  }

  if (*result != result[1])
  {

    return google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

void sub_275EEF3F0(void *a1)
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
          MEMORY[0x277C91940]();
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