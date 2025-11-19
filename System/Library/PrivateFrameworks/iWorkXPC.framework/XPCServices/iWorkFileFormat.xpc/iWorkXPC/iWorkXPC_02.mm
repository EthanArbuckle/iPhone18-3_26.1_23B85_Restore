google::protobuf::UnknownFieldSet *TSP::EncryptionInfo::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    v5 = (*(this + 5) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::EncryptionBlockInfo::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 32) = 0;
  }

  if ((*(v3 + 16) & 3) != 0)
  {
    *(v3 + 48) = 0;
    *(v3 + 56) = 0;
  }

  v8 = *(v3 + 8);
  v7 = v3 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1000315EC(v7, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::DataInfo::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v59 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v59, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v8 = (v59 + 1);
      v9 = *v59;
      if (*v59 < 0)
      {
        v10 = v9 + (*v8 << 7);
        v9 = v10 - 128;
        if (*v8 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v59, (v10 - 128));
          v59 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_133;
          }

          v8 = TagFallback;
          v9 = v5;
          goto LABEL_7;
        }

        v8 = (v59 + 2);
      }

      v59 = v8;
LABEL_7:
      switch(v9 >> 3)
      {
        case 1u:
          if (v9 != 8)
          {
            goto LABEL_19;
          }

          v6 |= 0x800u;
          v12 = (v8 + 1);
          v11 = *v8;
          if ((v11 & 0x8000000000000000) == 0)
          {
            goto LABEL_12;
          }

          v13 = *v12;
          v11 = (v13 << 7) + v11 - 128;
          if ((v13 & 0x80000000) == 0)
          {
            v12 = (v8 + 2);
LABEL_12:
            v59 = v12;
            *(a1 + 112) = v11;
            goto LABEL_113;
          }

          v53 = google::protobuf::internal::VarintParseSlow64(v8, v11);
          v59 = v53;
          *(a1 + 112) = v54;
          if (!v53)
          {
            goto LABEL_133;
          }

          goto LABEL_113;
        case 2u:
          if (v9 != 18)
          {
            goto LABEL_19;
          }

          *(a1 + 16) |= 1u;
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (a1 + 24);
          goto LABEL_111;
        case 3u:
          if (v9 != 26)
          {
            goto LABEL_19;
          }

          *(a1 + 16) |= 2u;
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (a1 + 32);
          goto LABEL_111;
        case 4u:
          if (v9 != 34)
          {
            goto LABEL_19;
          }

          *(a1 + 16) |= 4u;
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (a1 + 40);
          goto LABEL_111;
        case 5u:
          if (v9 != 42)
          {
            goto LABEL_19;
          }

          *(a1 + 16) |= 8u;
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (a1 + 48);
          goto LABEL_111;
        case 6u:
          if (v9 != 50)
          {
            goto LABEL_19;
          }

          *(a1 + 16) |= 0x10u;
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (a1 + 56);
          goto LABEL_111;
        case 7u:
          if (v9 != 58)
          {
            goto LABEL_19;
          }

          *(a1 + 16) |= 0x20u;
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (a1 + 64);
          goto LABEL_111;
        case 8u:
          if (v9 != 64)
          {
            goto LABEL_19;
          }

          v6 |= 0x1000u;
          v34 = (v8 + 1);
          v33 = *v8;
          if ((v33 & 0x8000000000000000) == 0)
          {
            goto LABEL_72;
          }

          v35 = *v34;
          v33 = (v35 << 7) + v33 - 128;
          if (v35 < 0)
          {
            v51 = google::protobuf::internal::VarintParseSlow64(v8, v33);
            v59 = v51;
            *(a1 + 120) = v52 != 0;
            if (!v51)
            {
              goto LABEL_133;
            }
          }

          else
          {
            v34 = (v8 + 2);
LABEL_72:
            v59 = v34;
            *(a1 + 120) = v33 != 0;
          }

          goto LABEL_113;
        case 9u:
          if (v9 != 72)
          {
            goto LABEL_19;
          }

          v45 = (v8 + 1);
          v44 = *v8;
          if ((v44 & 0x8000000000000000) == 0)
          {
            goto LABEL_105;
          }

          v46 = *v45;
          v44 = (v46 << 7) + v44 - 128;
          if (v46 < 0)
          {
            v59 = google::protobuf::internal::VarintParseSlow64(v8, v44);
            if (!v59)
            {
LABEL_133:
              v59 = 0;
              goto LABEL_2;
            }
          }

          else
          {
            v45 = (v8 + 2);
LABEL_105:
            v59 = v45;
          }

          if (v44 > 1)
          {
            sub_100156EE0((a1 + 8));
          }

          else
          {
            *(a1 + 16) |= 0x40000u;
            *(a1 + 152) = v44;
          }

          goto LABEL_113;
        case 0xAu:
          if (v9 != 82)
          {
            goto LABEL_19;
          }

          *(a1 + 16) |= 0x100u;
          v27 = *(a1 + 88);
          if (!v27)
          {
            v28 = *(a1 + 8);
            if (v28)
            {
              v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
            }

            v27 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataAttributes>(v28);
            *(a1 + 88) = v27;
            v8 = v59;
          }

          v19 = sub_1001564D0(a3, v27, v8);
          goto LABEL_112;
        case 0xBu:
          if (v9 != 90)
          {
            goto LABEL_19;
          }

          *(a1 + 16) |= 0x200u;
          v42 = *(a1 + 96);
          if (!v42)
          {
            v43 = *(a1 + 8);
            if (v43)
            {
              v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
            }

            v42 = google::protobuf::Arena::CreateMaybeMessage<TSP::EncryptionInfo>(v43);
            *(a1 + 96) = v42;
            v8 = v59;
          }

          v19 = sub_1001565A0(a3, v42, v8);
          goto LABEL_112;
        case 0xCu:
          if (v9 != 98)
          {
            goto LABEL_19;
          }

          *(a1 + 16) |= 0x40u;
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (a1 + 72);
          goto LABEL_111;
        case 0xDu:
          if (v9 != 106)
          {
            goto LABEL_19;
          }

          *(a1 + 16) |= 0x400u;
          v25 = *(a1 + 104);
          if (!v25)
          {
            v26 = *(a1 + 8);
            if (v26)
            {
              v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
            }

            v25 = google::protobuf::Arena::CreateMaybeMessage<TSP::IndexSet>(v26);
            *(a1 + 104) = v25;
            v8 = v59;
          }

          v19 = sub_100156670(a3, v25, v8);
          goto LABEL_112;
        case 0xEu:
          if (v9 != 112)
          {
            goto LABEL_19;
          }

          v6 |= 0x8000u;
          v40 = (v8 + 1);
          v39 = *v8;
          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_90;
          }

          v41 = *v40;
          v39 = (v41 << 7) + v39 - 128;
          if (v41 < 0)
          {
            v57 = google::protobuf::internal::VarintParseSlow64(v8, v39);
            v59 = v57;
            *(a1 + 128) = v58;
            if (!v57)
            {
              goto LABEL_133;
            }
          }

          else
          {
            v40 = (v8 + 2);
LABEL_90:
            v59 = v40;
            *(a1 + 128) = v39;
          }

          goto LABEL_113;
        case 0xFu:
          if (v9 != 120)
          {
            goto LABEL_19;
          }

          v6 |= 0x2000u;
          v21 = (v8 + 1);
          v20 = *v8;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_32;
          }

          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if (v22 < 0)
          {
            v48 = google::protobuf::internal::VarintParseSlow64(v8, v20);
            v59 = v48;
            *(a1 + 121) = v49 != 0;
            if (!v48)
            {
              goto LABEL_133;
            }
          }

          else
          {
            v21 = (v8 + 2);
LABEL_32:
            v59 = v21;
            *(a1 + 121) = v20 != 0;
          }

          goto LABEL_113;
        case 0x10u:
          if (v9 != 128)
          {
            goto LABEL_19;
          }

          v29 = (v8 + 1);
          v30 = *v8;
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_61;
          }

          v31 = *v29;
          v32 = (v31 << 7) + v30;
          v30 = (v32 - 128);
          if (v31 < 0)
          {
            v59 = google::protobuf::internal::VarintParseSlow64(v8, (v32 - 128));
            if (!v59)
            {
              goto LABEL_133;
            }

            v30 = v50;
          }

          else
          {
            v29 = (v8 + 2);
LABEL_61:
            v59 = v29;
          }

          if (TSP::DataUploadStatus_IsValid(v30))
          {
            *(a1 + 16) |= 0x4000u;
            *(a1 + 124) = v30;
          }

          else
          {
            sub_100156F1C((a1 + 8));
          }

          goto LABEL_113;
        case 0x11u:
          if (v9 != 137)
          {
            goto LABEL_19;
          }

          v6 |= 0x10000u;
          *(a1 + 136) = *v8;
          v59 = (v8 + 8);
          goto LABEL_113;
        case 0x12u:
          if (v9 != 144)
          {
            goto LABEL_19;
          }

          v6 |= 0x20000u;
          v37 = (v8 + 1);
          v36 = *v8;
          if ((v36 & 0x8000000000000000) == 0)
          {
            goto LABEL_81;
          }

          v38 = *v37;
          v36 = (v38 << 7) + v36 - 128;
          if (v38 < 0)
          {
            v55 = google::protobuf::internal::VarintParseSlow64(v8, v36);
            v59 = v55;
            *(a1 + 144) = v56;
            if (!v55)
            {
              goto LABEL_133;
            }
          }

          else
          {
            v37 = (v8 + 2);
LABEL_81:
            v59 = v37;
            *(a1 + 144) = v36;
          }

          goto LABEL_113;
        default:
          if (v9 >> 3 == 99 && v9 == 26)
          {
            *(a1 + 16) |= 0x80u;
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = (a1 + 80);
LABEL_111:
            v47 = google::protobuf::internal::ArenaStringPtr::Mutable(v24, v23);
            v19 = google::protobuf::internal::InlineGreedyStringParser(v47, v59, a3);
          }

          else
          {
LABEL_19:
            if (v9)
            {
              v16 = (v9 & 7) == 4;
            }

            else
            {
              v16 = 1;
            }

            if (v16)
            {
              a3[10].i32[0] = v9 - 1;
              goto LABEL_2;
            }

            v17 = *(a1 + 8);
            if (v17)
            {
              v18 = ((v17 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v18 = sub_100031428((a1 + 8), v5, v8);
              v8 = v59;
            }

            v19 = google::protobuf::internal::UnknownFieldParse(v9, v18, v8);
          }

LABEL_112:
          v59 = v19;
          if (!v19)
          {
            goto LABEL_133;
          }

LABEL_113:
          if (sub_1000313B0(a3, &v59, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v59;
}

const google::protobuf::UnknownFieldSet *TSP::DataInfo::_InternalSerialize(TSP::DataInfo *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 14);
    *v4 = 8;
    if (v9 > 0x7F)
    {
      v4[1] = v9 | 0x80;
      v10 = v9 >> 7;
      if (v9 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v4;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v4 - 1) = v11;
        if (v6)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v4[2] = v10;
        v4 += 3;
        if (v6)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v4[1] = v9;
      v4 += 2;
      if (v6)
      {
        goto LABEL_34;
      }
    }

LABEL_3:
    if ((v6 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_35;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_34:
  v4 = sub_100030384(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  v4 = sub_100030384(a3, 3, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  v4 = sub_100030384(a3, 4, (*(this + 5) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  v4 = sub_100030384(a3, 5, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  v4 = sub_100030384(a3, 6, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  v4 = sub_100030384(a3, 7, (*(this + 8) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x1000) == 0)
  {
LABEL_9:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_10;
    }

LABEL_43:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v14 = *(this + 38);
    *v4 = 72;
    if (v14 > 0x7F)
    {
      v4[1] = v14 | 0x80;
      v15 = v14 >> 7;
      if (v14 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v15 | 0x80;
          v16 = v15 >> 7;
          ++v4;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
        *(v4 - 1) = v16;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v4[2] = v15;
        v4 += 3;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      v4[1] = v14;
      v4 += 2;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_54;
      }
    }

LABEL_11:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_40:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(this + 120);
  *v4 = 64;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 0x40000) != 0)
  {
    goto LABEL_43;
  }

LABEL_10:
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_11;
  }

LABEL_54:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v18 = *(this + 11);
  *v4 = 82;
  v19 = *(v18 + 10);
  if (v19 > 0x7F)
  {
    v4[1] = v19 | 0x80;
    v21 = v19 >> 7;
    if (v19 >> 14)
    {
      v20 = v4 + 3;
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
      v4[2] = v21;
      v20 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v19;
    v20 = v4 + 2;
  }

  v4 = TSP::DataAttributes::_InternalSerialize(v18, v20, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_12:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_74;
  }

LABEL_64:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v24 = *(this + 12);
  *v4 = 90;
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

  v4 = TSP::EncryptionInfo::_InternalSerialize(v24, v26, a3, v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_13:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_75;
  }

LABEL_74:
  v4 = sub_100030384(a3, 12, (*(this + 9) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x400) == 0)
  {
LABEL_14:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

LABEL_85:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v36 = *(this + 16);
    *v4 = 112;
    if (v36 > 0x7F)
    {
      v4[1] = v36 | 0x80;
      v37 = v36 >> 7;
      if (v36 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v37 | 0x80;
          v38 = v37 >> 7;
          ++v4;
          v39 = v37 >> 14;
          v37 >>= 7;
        }

        while (v39);
        *(v4 - 1) = v38;
        if ((v6 & 0x2000) != 0)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v4[2] = v37;
        v4 += 3;
        if ((v6 & 0x2000) != 0)
        {
          goto LABEL_96;
        }
      }
    }

    else
    {
      v4[1] = v36;
      v4 += 2;
      if ((v6 & 0x2000) != 0)
      {
        goto LABEL_96;
      }
    }

LABEL_16:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

LABEL_99:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v41 = *(this + 31);
    *v4 = 384;
    if (v41 > 0x7F)
    {
      v4[2] = v41 | 0x80;
      v42 = v41 >> 7;
      if (v41 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v42 | 0x80;
          v43 = v42 >> 7;
          ++v4;
          v44 = v42 >> 14;
          v42 >>= 7;
        }

        while (v44);
        *(v4 - 1) = v43;
        if ((v6 & 0x10000) != 0)
        {
          goto LABEL_110;
        }
      }

      else
      {
        v4[3] = v42;
        v4 += 4;
        if ((v6 & 0x10000) != 0)
        {
          goto LABEL_110;
        }
      }
    }

    else
    {
      v4[2] = v41;
      v4 += 3;
      if ((v6 & 0x10000) != 0)
      {
        goto LABEL_110;
      }
    }

LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_113;
  }

LABEL_75:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v30 = *(this + 13);
  *v4 = 106;
  v31 = *(v30 + 10);
  if (v31 > 0x7F)
  {
    v4[1] = v31 | 0x80;
    v33 = v31 >> 7;
    if (v31 >> 14)
    {
      v32 = v4 + 3;
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
      v4[2] = v33;
      v32 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v31;
    v32 = v4 + 2;
  }

  v4 = TSP::IndexSet::_InternalSerialize(v30, v32, a3, v4);
  if ((v6 & 0x8000) != 0)
  {
    goto LABEL_85;
  }

LABEL_15:
  if ((v6 & 0x2000) == 0)
  {
    goto LABEL_16;
  }

LABEL_96:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v40 = *(this + 121);
  *v4 = 120;
  v4[1] = v40;
  v4 += 2;
  if ((v6 & 0x4000) != 0)
  {
    goto LABEL_99;
  }

LABEL_17:
  if ((v6 & 0x10000) == 0)
  {
    goto LABEL_18;
  }

LABEL_110:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v45 = *(this + 17);
  *v4 = 393;
  *(v4 + 2) = v45;
  v4 += 10;
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_113:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v46 = *(this + 18);
  *v4 = 400;
  if (v46 <= 0x7F)
  {
    v4[2] = v46;
    v4 += 3;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_21;
    }

LABEL_20:
    v4 = sub_100030384(a3, 99, (*(this + 10) & 0xFFFFFFFFFFFFFFFELL), v4);
    goto LABEL_21;
  }

  v4[2] = v46 | 0x80;
  v47 = v46 >> 7;
  if (v46 >> 14)
  {
    v4 += 4;
    do
    {
      *(v4 - 1) = v47 | 0x80;
      v48 = v47 >> 7;
      ++v4;
      v49 = v47 >> 14;
      v47 >>= 7;
    }

    while (v49);
    *(v4 - 1) = v48;
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v4[3] = v47;
    v4 += 4;
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t TSP::DataInfo::RequiredFieldsByteSizeFallback(TSP::DataInfo *this)
{
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
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
    v6 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v1 & 0x800) != 0)
  {
    v2 += ((9 * (__clz(*(this + 14) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  return v2;
}

char *TSP::DataInfo::ByteSizeLong(TSP::DataInfo *this)
{
  v2 = *(this + 4);
  if ((~v2 & 0x803) != 0)
  {
    v10 = TSP::DataInfo::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    v7 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v10 = (v5 + v9 + v6 + ((9 * (__clz(*(this + 14) | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 3);
  }

  if ((v2 & 0xFC) == 0)
  {
    goto LABEL_18;
  }

  if ((v2 & 4) != 0)
  {
    v20 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
    v21 = *(v20 + 23);
    v22 = *(v20 + 8);
    if ((v21 & 0x80u) == 0)
    {
      v22 = v21;
    }

    v10 = (v10 + v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v2 & 8) == 0)
    {
LABEL_11:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_45;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_11;
  }

  v23 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  v24 = *(v23 + 23);
  v25 = *(v23 + 8);
  if ((v24 & 0x80u) == 0)
  {
    v25 = v24;
  }

  v10 = (v10 + v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v2 & 0x10) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_48:
    v29 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(v29 + 23);
    v31 = *(v29 + 8);
    if ((v30 & 0x80u) == 0)
    {
      v31 = v30;
    }

    v10 = (v10 + v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v2 & 0x40) == 0)
    {
LABEL_14:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_45:
  v26 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  v27 = *(v26 + 23);
  v28 = *(v26 + 8);
  if ((v27 & 0x80u) == 0)
  {
    v28 = v27;
  }

  v10 = (v10 + v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_48;
  }

LABEL_13:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_51:
  v32 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
  v33 = *(v32 + 23);
  v34 = *(v32 + 8);
  if ((v33 & 0x80u) == 0)
  {
    v34 = v33;
  }

  v10 = (v10 + v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v2 & 0x80) != 0)
  {
LABEL_15:
    v11 = *(this + 10) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v10 = (v10 + v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 2);
  }

LABEL_18:
  if ((v2 & 0x700) == 0)
  {
    goto LABEL_23;
  }

  if ((v2 & 0x100) != 0)
  {
    v35 = TSP::DataAttributes::ByteSizeLong(*(this + 11));
    v10 = &v35[v10 + 1 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6)];
    if ((v2 & 0x200) == 0)
    {
LABEL_21:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  v36 = TSP::EncryptionInfo::ByteSizeLong(*(this + 12));
  v10 = &v36[v10 + 1 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6)];
  if ((v2 & 0x400) != 0)
  {
LABEL_22:
    v14 = TSP::IndexSet::ByteSizeLong(*(this + 13));
    v10 = &v14[v10 + 1 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6)];
  }

LABEL_23:
  if ((v2 & 0xF000) != 0)
  {
    v10 = (v10 + ((v2 >> 12) & 2) + ((v2 >> 11) & 2));
    if ((v2 & 0x4000) != 0)
    {
      v15 = *(this + 31);
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v15 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 12;
      }

      v10 = (v10 + v17);
    }

    if ((v2 & 0x8000) != 0)
    {
      v10 = (v10 + ((9 * (__clz(*(this + 16) | 1) ^ 0x3F) + 73) >> 6) + 1);
    }
  }

  if ((v2 & 0x70000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v10 = (v10 + 10);
    }

    if ((v2 & 0x20000) != 0)
    {
      v10 = (v10 + ((9 * (__clz(*(this + 18) | 1) ^ 0x3F) + 73) >> 6) + 2);
    }

    if ((v2 & 0x40000) != 0)
    {
      v18 = *(this + 38);
      if (v18 < 0)
      {
        v19 = 11;
      }

      else
      {
        v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v10 = (v10 + v19);
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v10, this + 5);
  }

  else
  {
    *(this + 5) = v10;
    return v10;
  }
}

void TSP::DataInfo::MergeFrom(TSP::DataInfo *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::DataInfo::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void TSP::DataInfo::MergeFrom(TSP::DataInfo *this, const TSP::DataInfo *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if (!v6)
  {
    goto LABEL_37;
  }

  if (v6)
  {
    v7 = *(a2 + 3);
    *(this + 4) |= 1u;
    v8 = *(this + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 3, v7 & 0xFFFFFFFFFFFFFFFELL, v8);
    if ((v6 & 2) == 0)
    {
LABEL_6:
      if ((v6 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 4);
  *(this + 4) |= 2u;
  v10 = *(this + 1);
  if (v10)
  {
    v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 4, v9 & 0xFFFFFFFFFFFFFFFELL, v10);
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_19:
  v11 = *(a2 + 5);
  *(this + 4) |= 4u;
  v12 = *(this + 1);
  if (v12)
  {
    v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 5, v11 & 0xFFFFFFFFFFFFFFFELL, v12);
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_22:
  v13 = *(a2 + 6);
  *(this + 4) |= 8u;
  v14 = *(this + 1);
  if (v14)
  {
    v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 6, v13 & 0xFFFFFFFFFFFFFFFELL, v14);
  if ((v6 & 0x10) == 0)
  {
LABEL_9:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    v17 = *(a2 + 8);
    *(this + 4) |= 0x20u;
    v18 = *(this + 1);
    if (v18)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 8, v17 & 0xFFFFFFFFFFFFFFFELL, v18);
    if ((v6 & 0x40) == 0)
    {
LABEL_11:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    goto LABEL_31;
  }

LABEL_25:
  v15 = *(a2 + 7);
  *(this + 4) |= 0x10u;
  v16 = *(this + 1);
  if (v16)
  {
    v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 7, v15 & 0xFFFFFFFFFFFFFFFELL, v16);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_31:
  v19 = *(a2 + 9);
  *(this + 4) |= 0x40u;
  v20 = *(this + 1);
  if (v20)
  {
    v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set(this + 9, v19 & 0xFFFFFFFFFFFFFFFELL, v20);
  if ((v6 & 0x80) != 0)
  {
LABEL_34:
    v21 = *(a2 + 10);
    *(this + 4) |= 0x80u;
    v22 = *(this + 1);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 10, v21 & 0xFFFFFFFFFFFFFFFELL, v22);
  }

LABEL_37:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_48;
  }

  if ((v6 & 0x100) != 0)
  {
    *(this + 4) |= 0x100u;
    v23 = *(this + 11);
    if (!v23)
    {
      v24 = *(this + 1);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataAttributes>(v24);
      *(this + 11) = v23;
    }

    if (*(a2 + 11))
    {
      v25 = *(a2 + 11);
    }

    else
    {
      v25 = &TSP::_DataAttributes_default_instance_;
    }

    TSP::DataAttributes::MergeFrom(v23, v25);
    if ((v6 & 0x200) == 0)
    {
LABEL_40:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_71;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_40;
  }

  *(this + 4) |= 0x200u;
  v26 = *(this + 12);
  if (!v26)
  {
    v27 = *(this + 1);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    v26 = google::protobuf::Arena::CreateMaybeMessage<TSP::EncryptionInfo>(v27);
    *(this + 12) = v26;
  }

  if (*(a2 + 12))
  {
    v28 = *(a2 + 12);
  }

  else
  {
    v28 = TSP::_EncryptionInfo_default_instance_;
  }

  TSP::EncryptionInfo::MergeFrom(v26, v28, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_41:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_79;
  }

LABEL_71:
  *(this + 4) |= 0x400u;
  v29 = *(this + 13);
  if (!v29)
  {
    v30 = *(this + 1);
    if (v30)
    {
      v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
    }

    v29 = google::protobuf::Arena::CreateMaybeMessage<TSP::IndexSet>(v30);
    *(this + 13) = v29;
  }

  if (*(a2 + 13))
  {
    v31 = *(a2 + 13);
  }

  else
  {
    v31 = &TSP::_IndexSet_default_instance_;
  }

  TSP::IndexSet::MergeFrom(v29, v31, a3);
  if ((v6 & 0x800) == 0)
  {
LABEL_42:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(this + 14) = *(a2 + 14);
  if ((v6 & 0x1000) == 0)
  {
LABEL_43:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(this + 120) = *(a2 + 120);
  if ((v6 & 0x2000) == 0)
  {
LABEL_44:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_45;
    }

LABEL_82:
    *(this + 31) = *(a2 + 31);
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_81:
  *(this + 121) = *(a2 + 121);
  if ((v6 & 0x4000) != 0)
  {
    goto LABEL_82;
  }

LABEL_45:
  if ((v6 & 0x8000) != 0)
  {
LABEL_46:
    *(this + 16) = *(a2 + 16);
  }

LABEL_47:
  *(this + 4) |= v6;
LABEL_48:
  if ((v6 & 0x70000) == 0)
  {
    return;
  }

  if ((v6 & 0x10000) == 0)
  {
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_51;
    }

LABEL_85:
    *(this + 18) = *(a2 + 18);
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  *(this + 17) = *(a2 + 17);
  if ((v6 & 0x20000) != 0)
  {
    goto LABEL_85;
  }

LABEL_51:
  if ((v6 & 0x40000) != 0)
  {
LABEL_52:
    *(this + 38) = *(a2 + 38);
  }

LABEL_53:
  *(this + 4) |= v6;
}

void *TSP::EncryptionInfo::MergeFrom(void *this, const TSP::EncryptionInfo *a2, uint64_t a3)
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
    this = sub_10004A5DC(v4 + 3, v8, v7 + 8, v6, *v4[5] - *(v4 + 8));
    v9 = *(v4 + 8) + v6;
    *(v4 + 8) = v9;
    v10 = v4[5];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 4);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      v4[6] = *(a2 + 6);
    }

    if ((v11 & 2) != 0)
    {
      v4[7] = *(a2 + 7);
    }

    *(v4 + 4) |= v11;
  }

  return this;
}

void TSP::DataInfo::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::DataInfo::Clear(this, a2, a3);

    TSP::DataInfo::MergeFrom(this, a2);
  }
}

uint64_t TSP::DataInfo::IsInitialized(TSP::DataInfo *this)
{
  v1 = *(this + 4);
  if ((~v1 & 0x803) != 0)
  {
    return 0;
  }

  if ((v1 & 0x100) != 0)
  {
    result = TSP::DataAttributes::IsInitialized(*(this + 11));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x200) != 0)
  {
    v4 = *(this + 12);
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    while (v5 >= 1)
    {
      v7 = *(v6 + 8 * v5--);
      if ((*(v7 + 16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  if ((v1 & 0x400) == 0)
  {
    return 1;
  }

  result = TSP::IndexSet::IsInitialized(*(this + 13));
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL TSP::EncryptionInfo::IsInitialized(TSP::EncryptionInfo *this)
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

uint64_t TSP::DataInfo::GetMetadata(TSP::DataInfo *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[26];
  v2 = off_1001E92E8[27];
  return result;
}

void TSP::DataMetadataMap_DataMetadataMapEntry::~DataMetadataMap_DataMetadataMapEntry(TSP::DataMetadataMap_DataMetadataMapEntry *this)
{
  if (this != TSP::_DataMetadataMap_DataMetadataMapEntry_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::DataMetadataMap_DataMetadataMapEntry::~DataMetadataMap_DataMetadataMapEntry(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::DataMetadataMap_DataMetadataMapEntry::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
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

google::protobuf::internal *TSP::DataMetadataMap_DataMetadataMapEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
      v19 = (v8 + 1);
      v18 = *v8;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      v20 = *v19;
      v18 = (v20 << 7) + v18 - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v19 = (v8 + 2);
LABEL_30:
        v24 = v19;
        *(a1 + 32) = v18;
        goto LABEL_31;
      }

      v22 = google::protobuf::internal::VarintParseSlow64(v8, v18);
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

const google::protobuf::UnknownFieldSet *TSP::DataMetadataMap_DataMetadataMapEntry::_InternalSerialize(TSP::DataMetadataMap_DataMetadataMapEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 4);
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

char *TSP::DataMetadataMap_DataMetadataMapEntry::RequiredFieldsByteSizeFallback(TSP::DataMetadataMap_DataMetadataMapEntry *this)
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
    result += ((9 * (__clz(*(this + 4) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  return result;
}

char *TSP::DataMetadataMap_DataMetadataMapEntry::ByteSizeLong(TSP::Reference **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TSP::DataMetadataMap_DataMetadataMapEntry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(this[3]);
    v3 = &v2[((9 * (__clz(this[4] | 1) ^ 0x3F) + 73) >> 6) + 2 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6)];
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

void TSP::DataMetadataMap_DataMetadataMapEntry::MergeFrom(TSP::DataMetadataMap_DataMetadataMapEntry *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::DataMetadataMap_DataMetadataMapEntry::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::DataMetadataMap_DataMetadataMapEntry::MergeFrom(void *this, const TSP::DataMetadataMap_DataMetadataMapEntry *a2, uint64_t a3)
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
      v4[4] = *(a2 + 4);
    }

    *(v4 + 4) |= v6;
  }

  return this;
}

void TSP::DataMetadataMap_DataMetadataMapEntry::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::DataMetadataMap_DataMetadataMapEntry::Clear(this, a2, a3);

    TSP::DataMetadataMap_DataMetadataMapEntry::MergeFrom(this, a2);
  }
}

uint64_t TSP::DataMetadataMap_DataMetadataMapEntry::IsInitialized(TSP::Reference **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::Reference::IsInitialized(this[3]);
  }
}

uint64_t TSP::DataMetadataMap_DataMetadataMapEntry::GetMetadata(TSP::DataMetadataMap_DataMetadataMapEntry *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[28];
  v2 = off_1001E92E8[29];
  return result;
}

uint64_t TSP::DataMetadataMap::DataMetadataMap(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001C86B8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_DataMetadataMap_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DataMetadataMap_TSPArchiveMessages_2eproto);
  }

  return a1;
}

void TSP::DataMetadataMap::~DataMetadataMap(TSP::DataMetadataMap *this)
{
  sub_10002F4C4(this + 1);
  sub_10004A400(this + 2);
}

{
  TSP::DataMetadataMap::~DataMetadataMap(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::DataMetadataMap::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 6);
  if (v4 >= 1)
  {
    v5 = (*(this + 4) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::DataMetadataMap_DataMetadataMapEntry::Clear(v6, a2, a3);
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

google::protobuf::internal *TSP::DataMetadataMap::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataMetadataMap_DataMetadataMapEntry>(*(a1 + 16));
          v17 = *(a1 + 24);
          v18 = *(a1 + 32) + 8 * v17;
          *(a1 + 24) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v22;
LABEL_23:
          v12 = sub_100156740(a3, v16, v13);
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

const google::protobuf::UnknownFieldSet *TSP::DataMetadataMap::_InternalSerialize(TSP::DataMetadataMap *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

      a2 = TSP::DataMetadataMap_DataMetadataMapEntry::_InternalSerialize(v8, v10, a3, a4);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::DataMetadataMap::ByteSizeLong(TSP::DataMetadataMap *this)
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
      v7 = TSP::DataMetadataMap_DataMetadataMapEntry::ByteSizeLong(v6);
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

void TSP::DataMetadataMap::MergeFrom(TSP::DataMetadataMap *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::DataMetadataMap::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::DataMetadataMap::MergeFrom(void *this, const TSP::DataMetadataMap *a2, uint64_t a3)
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
    this = sub_10004A484(v4 + 2, v8, v7 + 8, v6, *v4[4] - *(v4 + 6));
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

void TSP::DataMetadataMap::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::DataMetadataMap::Clear(this, a2, a3);

    TSP::DataMetadataMap::MergeFrom(this, a2);
  }
}

BOOL sub_100040FC0(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(*(a1 + 16) + 8 * v2);
    if ((~*(v4 + 16) & 3) != 0)
    {
      break;
    }

    --v2;
  }

  while ((TSP::Reference::IsInitialized(*(v4 + 24)) & 1) != 0);
  return v3 < 1;
}

uint64_t TSP::DataMetadataMap::GetMetadata(TSP::DataMetadataMap *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[30];
  v2 = off_1001E92E8[31];
  return result;
}

void TSP::DataMetadata::~DataMetadata(TSP::DataMetadata *this)
{
  if (this != TSP::_DataMetadata_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Color::~Color(v2);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::DataMetadata::~DataMetadata(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::DataMetadata::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  if (*(this + 16))
  {
    this = TSP::Color::Clear(*(this + 3), a2, a3);
  }

  v5 = *(v3 + 8);
  v4 = v3 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1000315EC(v4, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::DataMetadata::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  for (i = *(a3 + 92); (sub_1000313B0(a3, &v18, i) & 1) == 0; i = *(a3 + 92))
  {
    v7 = (v18 + 1);
    v8 = *v18;
    if (*v18 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v9 - 128));
        v18 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v7 = TagFallback;
        v8 = v6;
        goto LABEL_7;
      }

      v7 = (v18 + 2);
    }

    v18 = v7;
LABEL_7:
    if (v8 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSP::Color>(v15);
        *(a1 + 24) = v14;
        v7 = v18;
      }

      v13 = sub_100156810(a3, v14, v7);
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
        return v18;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v12 = sub_100031428((a1 + 8), v6, v7);
        v7 = v18;
      }

      v13 = google::protobuf::internal::UnknownFieldParse(v8, v12, v7);
    }

    v18 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v18;
}

const google::protobuf::UnknownFieldSet *TSP::DataMetadata::_InternalSerialize(TSP::DataMetadata *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
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

    a2 = TSP::Color::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::DataMetadata::ByteSizeLong(TSP::Color **this)
{
  if (this[2])
  {
    v3 = TSP::Color::ByteSizeLong(this[3]);
    v2 = &v3[((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1];
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v2, this + 5);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

void TSP::DataMetadata::MergeFrom(TSP::DataMetadata *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::DataMetadata::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::DataMetadata::MergeFrom(void *this, const TSP::DataMetadata *a2, uint64_t a3)
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
    v7 = v4[3];
    if (!v7)
    {
      v8 = v4[1];
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = google::protobuf::Arena::CreateMaybeMessage<TSP::Color>(v8);
      v4[3] = v7;
      v6 = *(a2 + 3);
    }

    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = &TSP::_Color_default_instance_;
    }

    return TSP::Color::MergeFrom(v7, v9, a3);
  }

  return this;
}

void TSP::DataMetadata::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::DataMetadata::Clear(this, a2, a3);

    TSP::DataMetadata::MergeFrom(this, a2);
  }
}

uint64_t TSP::DataMetadata::IsInitialized(TSP::DataMetadata *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Color::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t TSP::DataMetadata::GetMetadata(TSP::DataMetadata *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[32];
  v2 = off_1001E92E8[33];
  return result;
}

void *TSP::EncryptionInfo::EncryptionInfo(void *a1, uint64_t a2)
{
  *a1 = off_1001C8818;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(scc_info_EncryptionInfo_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EncryptionInfo_TSPArchiveMessages_2eproto);
  }

  a1[6] = 0;
  a1[7] = 0;
  return a1;
}

void TSP::EncryptionInfo::~EncryptionInfo(TSP::EncryptionInfo *this)
{
  sub_10002F4C4(this + 1);
  sub_10004A544(this + 3);
}

{
  TSP::EncryptionInfo::~EncryptionInfo(this);

  operator delete();
}

google::protobuf::internal *TSP::EncryptionInfo::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v35 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v35, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v35 + 1);
      v9 = *v35;
      if ((*v35 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v35, (v10 - 128));
      v35 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_54;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        if (v9 != 26)
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
            v8 = v35;
          }

          v35 = google::protobuf::internal::UnknownFieldParse(v9, v15, v8);
          if (!v35)
          {
LABEL_54:
            v35 = 0;
            goto LABEL_2;
          }

          goto LABEL_44;
        }

        v19 = (v8 - 1);
        while (2)
        {
          v20 = (v19 + 1);
          v35 = (v19 + 1);
          v21 = *(a1 + 40);
          if (!v21)
          {
            v22 = *(a1 + 36);
            goto LABEL_30;
          }

          v26 = *(a1 + 32);
          v22 = *v21;
          if (v26 >= *v21)
          {
            if (v22 == *(a1 + 36))
            {
LABEL_30:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v22 + 1);
              v21 = *(a1 + 40);
              v22 = *v21;
            }

            *v21 = v22 + 1;
            v23 = google::protobuf::Arena::CreateMaybeMessage<TSP::EncryptionBlockInfo>(*(a1 + 24));
            v24 = *(a1 + 32);
            v25 = *(a1 + 40) + 8 * v24;
            *(a1 + 32) = v24 + 1;
            *(v25 + 8) = v23;
            v20 = v35;
          }

          else
          {
            *(a1 + 32) = v26 + 1;
            v23 = *&v21[2 * v26 + 2];
          }

          v19 = sub_1001568E0(a3, v23, v20);
          v35 = v19;
          if (!v19)
          {
            goto LABEL_54;
          }

          if (*a3 <= v19 || *v19 != 26)
          {
            goto LABEL_44;
          }

          continue;
        }
      }

      if (v11 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_13;
        }

        v6 |= 2u;
        v17 = (v8 + 1);
        v16 = *v8;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v8 + 2);
LABEL_25:
          v35 = v17;
          *(a1 + 56) = v16;
          goto LABEL_44;
        }

        v31 = google::protobuf::internal::VarintParseSlow64(v8, v16);
        v35 = v31;
        *(a1 + 56) = v32;
        if (!v31)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v11 != 1 || v9 != 8)
        {
          goto LABEL_13;
        }

        v6 |= 1u;
        v28 = (v8 + 1);
        v27 = *v8;
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_43;
        }

        v29 = *v28;
        v27 = (v29 << 7) + v27 - 128;
        if ((v29 & 0x80000000) == 0)
        {
          v28 = (v8 + 2);
LABEL_43:
          v35 = v28;
          *(a1 + 48) = v27;
          goto LABEL_44;
        }

        v33 = google::protobuf::internal::VarintParseSlow64(v8, v27);
        v35 = v33;
        *(a1 + 48) = v34;
        if (!v33)
        {
          goto LABEL_54;
        }
      }

LABEL_44:
      if (sub_1000313B0(a3, &v35, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v35 + 2);
LABEL_6:
    v35 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v35;
}

const google::protobuf::UnknownFieldSet *TSP::EncryptionInfo::_InternalSerialize(TSP::EncryptionInfo *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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
  v15 = *(this + 8);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v17 = *(*(this + 5) + 8 * i + 8);
      *a2 = 26;
      v18 = *(v17 + 5);
      if (v18 > 0x7F)
      {
        a2[1] = v18 | 0x80;
        v20 = v18 >> 7;
        if (v18 >> 14)
        {
          v19 = a2 + 3;
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
          a2[2] = v20;
          v19 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v18;
        v19 = a2 + 2;
      }

      a2 = TSP::EncryptionBlockInfo::_InternalSerialize(v17, v19, a3, a4);
    }
  }

  v23 = *(this + 1);
  if ((v23 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v23 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::EncryptionInfo::ByteSizeLong(TSP::EncryptionInfo *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
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
      v7 = TSP::EncryptionBlockInfo::ByteSizeLong(v6);
      v2 = (v2 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6));
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 4);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v2 = (v2 + ((9 * (__clz(*(this + 6) | 1) ^ 0x3F) + 73) >> 6) + 1);
    }

    if ((v8 & 2) != 0)
    {
      v2 = (v2 + ((9 * (__clz(*(this + 7) | 1) ^ 0x3F) + 73) >> 6) + 1);
    }
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

void TSP::EncryptionInfo::MergeFrom(TSP::EncryptionInfo *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::EncryptionInfo::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void TSP::EncryptionInfo::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::EncryptionInfo::Clear(this, a2, a3);

    TSP::EncryptionInfo::MergeFrom(this, a2);
  }
}

uint64_t TSP::EncryptionInfo::GetMetadata(TSP::EncryptionInfo *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[34];
  v2 = off_1001E92E8[35];
  return result;
}

void TSP::EncryptionBlockInfo::~EncryptionBlockInfo(TSP::EncryptionBlockInfo *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::EncryptionBlockInfo::Clear(TSP::EncryptionBlockInfo *this, uint64_t a2, uint64_t a3)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
    *(this + 4) = 0;
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

google::protobuf::internal *TSP::EncryptionBlockInfo::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        v16 = (v8 + 1);
        v15 = *v8;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v8 + 2);
LABEL_24:
          v26 = v16;
          *(a1 + 32) = v15;
          goto LABEL_29;
        }

        v22 = google::protobuf::internal::VarintParseSlow64(v8, v15);
        v26 = v22;
        *(a1 + 32) = v23;
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
        v19 = (v8 + 1);
        v18 = *v8;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v8 + 2);
LABEL_28:
          v26 = v19;
          *(a1 + 24) = v18;
          goto LABEL_29;
        }

        v24 = google::protobuf::internal::VarintParseSlow64(v8, v18);
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

const google::protobuf::UnknownFieldSet *TSP::EncryptionBlockInfo::_InternalSerialize(TSP::EncryptionBlockInfo *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
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

  v9 = *(this + 4);
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

char *TSP::EncryptionBlockInfo::ByteSizeLong(TSP::EncryptionBlockInfo *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = (((9 * (__clz(*(this + 3) | 1) ^ 0x3F) + 73) >> 6) + 1);
    if ((v1 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_5:
    v2 = (v2 + ((9 * (__clz(*(this + 4) | 1) ^ 0x3F) + 73) >> 6) + 1);
  }

LABEL_6:
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 5);
  }

  *(this + 5) = v2;
  return v2;
}

void TSP::EncryptionBlockInfo::MergeFrom(TSP::EncryptionBlockInfo *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::EncryptionBlockInfo::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::EncryptionBlockInfo::MergeFrom(void *this, const TSP::EncryptionBlockInfo *a2, uint64_t a3)
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
      v4[3] = *(a2 + 3);
    }

    if ((v6 & 2) != 0)
    {
      v4[4] = *(a2 + 4);
    }

    *(v4 + 4) |= v6;
  }

  return this;
}

void TSP::EncryptionBlockInfo::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::EncryptionBlockInfo::Clear(this, a2, a3);

    TSP::EncryptionBlockInfo::MergeFrom(this, a2);
  }
}

uint64_t TSP::EncryptionBlockInfo::GetMetadata(TSP::EncryptionBlockInfo *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[36];
  v2 = off_1001E92E8[37];
  return result;
}

void *TSP::ViewStateMetadata::ViewStateMetadata(void *a1, uint64_t a2)
{
  *a1 = off_1001C8978;
  a1[1] = a2;
  a1[4] = a2;
  a1[2] = 0;
  a1[3] = 0;
  a1[6] = a2;
  a1[10] = a2;
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = 0;
  if (atomic_load_explicit(scc_info_ViewStateMetadata_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ViewStateMetadata_TSPArchiveMessages_2eproto);
  }

  a1[12] = 0;
  a1[13] = 0;
  return a1;
}

void sub_100042520(_Unwind_Exception *a1)
{
  if (*(v1 + 76) >= 1)
  {
    sub_100156CF0(v4);
  }

  sub_100049C18(v3);
  sub_100156D04((v1 + 28), v2);
  _Unwind_Resume(a1);
}

void TSP::ViewStateMetadata::~ViewStateMetadata(TSP::ViewStateMetadata *this)
{
  if (this != TSP::_ViewStateMetadata_default_instance_)
  {
    v2 = *(this + 12);
    if (v2)
    {
      TSP::ComponentInfo::~ComponentInfo(v2);
      operator delete();
    }

    v3 = *(this + 13);
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
  if (*(this + 19) >= 1)
  {
    v4 = *(this + 10);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  sub_100049C18(this + 6);
  if (*(this + 7) >= 1)
  {
    v7 = *(this + 4);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }
}

{
  TSP::ViewStateMetadata::~ViewStateMetadata(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::ViewStateMetadata::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  *(this + 6) = 0;
  v4 = *(this + 14);
  if (v4 >= 1)
  {
    v5 = (*(this + 8) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::ObjectUUIDMapEntry::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 56) = 0;
  }

  *(v3 + 72) = 0;
  v7 = *(v3 + 16);
  if ((v7 & 3) != 0)
  {
    if (v7)
    {
      this = TSP::ComponentInfo::Clear(*(v3 + 96), a2, a3);
    }

    if ((v7 & 2) != 0)
    {
      this = TSP::UUID::Clear(*(v3 + 104), a2, a3);
    }
  }

  v9 = *(v3 + 8);
  v8 = v3 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1000315EC(v8, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::ViewStateMetadata::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v32 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_1000313B0(a3, &v32, i))
    {
      return v32;
    }

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
      v7 = (v32 + 2);
LABEL_6:
      v32 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v32, (v9 - 128));
    v32 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
LABEL_7:
    v10 = v8 >> 3;
    if (v8 >> 3 <= 3)
    {
      break;
    }

    if (v10 != 4)
    {
      if (v10 != 5)
      {
        if (v10 == 6)
        {
          if (v8 == 50)
          {
            v11 = (a1 + 72);
LABEL_46:
            v15 = google::protobuf::internal::PackedUInt32Parser(v11, v7, a3);
            goto LABEL_62;
          }

          if (v8 == 48)
          {
            v33 = sub_10003465C(&v32);
            v27 = (a1 + 72);
LABEL_53:
            google::protobuf::RepeatedField<unsigned int>::Add(v27, &v33);
            if (!v32)
            {
              return 0;
            }

            continue;
          }
        }

        goto LABEL_55;
      }

      if (v8 != 42)
      {
        goto LABEL_55;
      }

      v18 = (v7 - 1);
      while (1)
      {
        v19 = (v18 + 1);
        v32 = (v18 + 1);
        v20 = *(a1 + 64);
        if (!v20)
        {
          break;
        }

        v25 = *(a1 + 56);
        v21 = *v20;
        if (v25 < *v20)
        {
          *(a1 + 56) = v25 + 1;
          v22 = *&v20[2 * v25 + 2];
          goto LABEL_38;
        }

        if (v21 == *(a1 + 60))
        {
          goto LABEL_34;
        }

LABEL_35:
        *v20 = v21 + 1;
        v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::ObjectUUIDMapEntry>(*(a1 + 48));
        v23 = *(a1 + 56);
        v24 = *(a1 + 64) + 8 * v23;
        *(a1 + 56) = v23 + 1;
        *(v24 + 8) = v22;
        v19 = v32;
LABEL_38:
        v18 = sub_100155F20(a3, v22, v19);
        v32 = v18;
        if (!v18)
        {
          return 0;
        }

        if (*a3 <= v18 || *v18 != 42)
        {
          goto LABEL_63;
        }
      }

      v21 = *(a1 + 60);
LABEL_34:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v21 + 1);
      v20 = *(a1 + 64);
      v21 = *v20;
      goto LABEL_35;
    }

    if (v8 != 34)
    {
      goto LABEL_55;
    }

    *(a1 + 16) |= 2u;
    v16 = *(a1 + 104);
    if (!v16)
    {
      v17 = *(a1 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v17);
      *(a1 + 104) = v16;
      v7 = v32;
    }

    v15 = sub_100156190(a3, v16, v7);
LABEL_62:
    v32 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_63:
    ;
  }

  if (v10 != 1)
  {
    if (v10 != 3 || v8 != 26)
    {
      goto LABEL_55;
    }

    *(a1 + 16) |= 1u;
    v13 = *(a1 + 96);
    if (!v13)
    {
      v14 = *(a1 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = google::protobuf::Arena::CreateMaybeMessage<TSP::ComponentInfo>(v14);
      *(a1 + 96) = v13;
      v7 = v32;
    }

    v15 = sub_100156330(a3, v13, v7);
    goto LABEL_62;
  }

  if (v8 == 10)
  {
    v11 = (a1 + 24);
    goto LABEL_46;
  }

  if (v8 == 8)
  {
    v33 = sub_10003465C(&v32);
    v27 = (a1 + 24);
    goto LABEL_53;
  }

LABEL_55:
  if (v8)
  {
    v28 = (v8 & 7) == 4;
  }

  else
  {
    v28 = 1;
  }

  if (!v28)
  {
    v29 = *(a1 + 8);
    if (v29)
    {
      v30 = ((v29 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v30 = sub_100031428((a1 + 8), v6, v7);
      v7 = v32;
    }

    v15 = google::protobuf::internal::UnknownFieldParse(v8, v30, v7);
    goto LABEL_62;
  }

  *(a3 + 80) = v8 - 1;
  return v32;
}

const google::protobuf::UnknownFieldSet *TSP::ViewStateMetadata::_InternalSerialize(TSP::ViewStateMetadata *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6 >= 1)
  {
    v4 = sub_1000496C0(a3, 1, this + 6, v6, a2, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v7 = *(this + 4);
  if (v7)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(this + 12);
    *v4 = 26;
    v9 = *(v8 + 5);
    if (v9 > 0x7F)
    {
      v4[1] = v9 | 0x80;
      v11 = v9 >> 7;
      if (v9 >> 14)
      {
        v10 = v4 + 3;
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
        v4[2] = v11;
        v10 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v9;
      v10 = v4 + 2;
    }

    v4 = TSP::ComponentInfo::_InternalSerialize(v8, v10, a3);
  }

  if ((v7 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v14 = *(this + 13);
    *v4 = 34;
    v15 = *(v14 + 5);
    if (v15 > 0x7F)
    {
      v4[1] = v15 | 0x80;
      v17 = v15 >> 7;
      if (v15 >> 14)
      {
        v16 = v4 + 3;
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
        v4[2] = v17;
        v16 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v15;
      v16 = v4 + 2;
    }

    v4 = TSP::UUID::_InternalSerialize(v14, v16, a3, v6);
  }

  v20 = *(this + 14);
  if (v20)
  {
    for (i = 0; i != v20; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v22 = *(*(this + 8) + 8 * i + 8);
      *v4 = 42;
      v23 = *(v22 + 5);
      if (v23 > 0x7F)
      {
        v4[1] = v23 | 0x80;
        v25 = v23 >> 7;
        if (v23 >> 14)
        {
          v24 = v4 + 3;
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
          v4[2] = v25;
          v24 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v23;
        v24 = v4 + 2;
      }

      v4 = TSP::ObjectUUIDMapEntry::_InternalSerialize(v22, v24, a3, v6);
    }
  }

  v28 = *(this + 22);
  if (v28 > 0)
  {
    v4 = sub_1000496C0(a3, 6, this + 18, v28, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v29 = *(this + 1);
  if ((v29 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v29 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v28);
}

char *TSP::ViewStateMetadata::ByteSizeLong(TSP::ViewStateMetadata *this)
{
  if (*(this + 16))
  {
    v3 = TSP::ComponentInfo::ByteSizeLong(*(this + 12));
    v2 = &v3[((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1];
  }

  else
  {
    v2 = 0;
  }

  v4 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 6);
  v5 = 11;
  v6 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v4 >= 0)
  {
    v5 = v6;
  }

  v7 = v5 + v2;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  if (!v4)
  {
    v7 = v2;
  }

  *(this + 10) = v8;
  v9 = v7 + v4;
  v10 = *(this + 14);
  v11 = v9 + v10;
  v12 = *(this + 8);
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
      v16 = TSP::ObjectUUIDMapEntry::ByteSizeLong(v15);
      v11 += &v16[(9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6];
      v14 -= 8;
    }

    while (v14);
  }

  v17 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 18);
  v18 = 11;
  v19 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v17 >= 0)
  {
    v18 = v19;
  }

  v20 = v18 + v11;
  if (v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = 0;
  }

  if (!v17)
  {
    v20 = v11;
  }

  *(this + 22) = v21;
  v22 = (v20 + v17);
  if ((*(this + 16) & 2) != 0)
  {
    v23 = TSP::UUID::ByteSizeLong(*(this + 13));
    v22 = &v23[((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1 + v22];
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v22, this + 5);
  }

  else
  {
    *(this + 5) = v22;
    return v22;
  }
}

void TSP::ViewStateMetadata::MergeFrom(TSP::ViewStateMetadata *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::ViewStateMetadata::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::ViewStateMetadata::MergeFrom(void *this, const TSP::ViewStateMetadata *a2, uint64_t a3)
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
    v7 = v4[6];
    google::protobuf::RepeatedField<unsigned int>::Reserve(v4 + 6, v7 + v6);
    v8 = *(v4 + 4);
    v4[6] += *(a2 + 6);
    this = memcpy((v8 + 4 * v7), *(a2 + 4), 4 * *(a2 + 6));
  }

  v9 = *(a2 + 14);
  if (v9)
  {
    v10 = *(a2 + 8);
    v11 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 12), *(a2 + 14));
    this = sub_100049EA0(v4 + 6, v11, v10 + 8, v9, **(v4 + 8) - v4[14]);
    v12 = v4[14] + v9;
    v4[14] = v12;
    v13 = *(v4 + 8);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 18);
  if (v14)
  {
    v15 = v4[18];
    google::protobuf::RepeatedField<unsigned int>::Reserve(v4 + 18, v15 + v14);
    v16 = *(v4 + 10);
    v4[18] += *(a2 + 18);
    this = memcpy((v16 + 4 * v15), *(a2 + 10), 4 * *(a2 + 18));
  }

  v17 = *(a2 + 4);
  if ((v17 & 3) != 0)
  {
    if (v17)
    {
      v4[4] |= 1u;
      v18 = *(v4 + 12);
      if (!v18)
      {
        v19 = *(v4 + 1);
        if (v19)
        {
          v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = google::protobuf::Arena::CreateMaybeMessage<TSP::ComponentInfo>(v19);
        *(v4 + 12) = v18;
      }

      if (*(a2 + 12))
      {
        v20 = *(a2 + 12);
      }

      else
      {
        v20 = &TSP::_ComponentInfo_default_instance_;
      }

      this = TSP::ComponentInfo::MergeFrom(v18, v20, a3);
    }

    if ((v17 & 2) != 0)
    {
      v4[4] |= 2u;
      v21 = *(v4 + 13);
      if (!v21)
      {
        v22 = *(v4 + 1);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v22);
        *(v4 + 13) = v21;
      }

      if (*(a2 + 13))
      {
        v23 = *(a2 + 13);
      }

      else
      {
        v23 = &TSP::_UUID_default_instance_;
      }

      return TSP::UUID::MergeFrom(v21, v23, a3);
    }
  }

  return this;
}

void TSP::ViewStateMetadata::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::ViewStateMetadata::Clear(this, a2, a3);

    TSP::ViewStateMetadata::MergeFrom(this, a2);
  }
}

uint64_t TSP::ViewStateMetadata::IsInitialized(TSP::ViewStateMetadata *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = sub_100038B44(this + 48);
  if (result)
  {
    v3 = *(this + 4);
    if (v3)
    {
      result = TSP::ComponentInfo::IsInitialized(*(this + 12));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 2) == 0)
    {
      return 1;
    }

    result = TSP::UUID::IsInitialized(*(this + 13));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t TSP::ViewStateMetadata::GetMetadata(TSP::ViewStateMetadata *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[38];
  v2 = off_1001E92E8[39];
  return result;
}

uint64_t TSP::ObjectSerializationMetadata::ObjectSerializationMetadata(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001C8A28;
  *(a1 + 8) = a2;
  *(a1 + 32) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 104) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  if (atomic_load_explicit(scc_info_ObjectSerializationMetadata_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ObjectSerializationMetadata_TSPArchiveMessages_2eproto);
  }

  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void sub_1000432BC(_Unwind_Exception *a1)
{
  if (*(v1 + 100) >= 1)
  {
    sub_100156CF0(v5);
  }

  sub_100049C18(v4);
  sub_10004A1FC(v3);
  sub_100156D04((v1 + 28), v2);
  _Unwind_Resume(a1);
}

void TSP::ObjectSerializationMetadata::~ObjectSerializationMetadata(TSP::ObjectSerializationMetadata *this)
{
  sub_100043384(this);
  sub_10002F4C4(this + 1);
  if (*(this + 25) >= 1)
  {
    v2 = *(this + 13);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  sub_100049C18(this + 9);
  sub_10004A1FC(this + 6);
  if (*(this + 7) >= 1)
  {
    v5 = *(this + 4);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }
}

{
  TSP::ObjectSerializationMetadata::~ObjectSerializationMetadata(this);

  operator delete();
}

void *sub_100043384(void *result)
{
  if (result != &TSP::_ObjectSerializationMetadata_default_instance_)
  {
    v1 = result;
    v2 = result[15];
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      operator delete();
    }

    v3 = v1[16];
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      operator delete();
    }

    v4 = v1[17];
    if (v4)
    {
      TSP::ComponentInfo::~ComponentInfo(v4);
      operator delete();
    }

    result = v1[18];
    if (result)
    {
      TSP::Reference::~Reference(result);

      operator delete();
    }
  }

  return result;
}

google::protobuf::UnknownFieldSet *TSP::ObjectSerializationMetadata::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  *(this + 6) = 0;
  v4 = *(this + 14);
  if (v4 >= 1)
  {
    v5 = (*(this + 8) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::DataInfo::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 56) = 0;
  }

  v7 = *(v3 + 80);
  if (v7 >= 1)
  {
    v8 = (*(v3 + 88) + 8);
    do
    {
      v9 = *v8++;
      this = TSP::ObjectUUIDMapEntry::Clear(v9, a2, a3);
      --v7;
    }

    while (v7);
    *(v3 + 80) = 0;
  }

  *(v3 + 96) = 0;
  v10 = *(v3 + 16);
  if ((v10 & 0xF) == 0)
  {
    goto LABEL_15;
  }

  if ((v10 & 1) == 0)
  {
    if ((v10 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    this = TSP::UUID::Clear(*(v3 + 128), a2, a3);
    if ((v10 & 4) == 0)
    {
LABEL_13:
      if ((v10 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_21;
  }

  this = TSP::UUID::Clear(*(v3 + 120), a2, a3);
  if ((v10 & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v10 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_21:
  this = TSP::ComponentInfo::Clear(*(v3 + 136), a2, a3);
  if ((v10 & 8) != 0)
  {
LABEL_14:
    this = TSP::Reference::Clear(*(v3 + 144), a2, a3);
  }

LABEL_15:
  v12 = *(v3 + 8);
  v11 = v3 + 8;
  *(v11 + 8) = 0;
  if (v12)
  {

    return sub_1000315EC(v11, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::ObjectSerializationMetadata::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v43 = a2;
  for (i = a3[11].i32[1]; ; i = a3[11].i32[1])
  {
    if (sub_1000313B0(a3, &v43, i))
    {
      return v43;
    }

    v7 = (v43 + 1);
    v8 = *v43;
    if ((*v43 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v43 + 2);
LABEL_6:
      v43 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v43, (v9 - 128));
    v43 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
LABEL_7:
    v10 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      break;
    }

    if (v8 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v8 == 10)
        {
          v25 = (a1 + 24);
          goto LABEL_52;
        }

        if (v8 == 8)
        {
          v44 = sub_10003465C(&v43);
          v38 = (a1 + 24);
          goto LABEL_84;
        }
      }

      else if (v10 == 2 && v8 == 18)
      {
        *(a1 + 16) |= 1u;
        v12 = *(a1 + 120);
        if (!v12)
        {
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v13);
          *(a1 + 120) = v12;
          goto LABEL_72;
        }

        goto LABEL_73;
      }

      goto LABEL_86;
    }

    if (v10 == 3)
    {
      if (v8 == 26)
      {
        *(a1 + 16) |= 2u;
        v12 = *(a1 + 128);
        if (!v12)
        {
          v35 = *(a1 + 8);
          if (v35)
          {
            v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v35);
          *(a1 + 128) = v12;
LABEL_72:
          v7 = v43;
        }

LABEL_73:
        v24 = sub_100156190(a3, v12, v7);
        goto LABEL_93;
      }

      goto LABEL_86;
    }

    if (v10 != 4 || v8 != 34)
    {
      goto LABEL_86;
    }

    *(a1 + 16) |= 4u;
    v22 = *(a1 + 136);
    if (!v22)
    {
      v23 = *(a1 + 8);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::ComponentInfo>(v23);
      *(a1 + 136) = v22;
      v7 = v43;
    }

    v24 = sub_100156330(a3, v22, v7);
LABEL_93:
    v43 = v24;
    if (!v24)
    {
      return 0;
    }

LABEL_94:
    ;
  }

  if (v8 >> 3 <= 6)
  {
    if (v10 != 5)
    {
      if (v10 != 6 || v8 != 50)
      {
        goto LABEL_86;
      }

      v14 = (v7 - 1);
      while (2)
      {
        v15 = (v14 + 1);
        v43 = (v14 + 1);
        v16 = *(a1 + 88);
        if (!v16)
        {
          v17 = *(a1 + 84);
          goto LABEL_26;
        }

        v21 = *(a1 + 80);
        v17 = *v16;
        if (v21 >= *v16)
        {
          if (v17 == *(a1 + 84))
          {
LABEL_26:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v17 + 1);
            v16 = *(a1 + 88);
            v17 = *v16;
          }

          *v16 = v17 + 1;
          v18 = google::protobuf::Arena::CreateMaybeMessage<TSP::ObjectUUIDMapEntry>(*(a1 + 72));
          v19 = *(a1 + 80);
          v20 = *(a1 + 88) + 8 * v19;
          *(a1 + 80) = v19 + 1;
          *(v20 + 8) = v18;
          v15 = v43;
        }

        else
        {
          *(a1 + 80) = v21 + 1;
          v18 = *&v16[2 * v21 + 2];
        }

        v14 = sub_100155F20(a3, v18, v15);
        v43 = v14;
        if (!v14)
        {
          return 0;
        }

        if (*a3 <= v14 || *v14 != 50)
        {
          goto LABEL_94;
        }

        continue;
      }
    }

    if (v8 != 42)
    {
      goto LABEL_86;
    }

    v27 = (v7 - 1);
    while (2)
    {
      v28 = (v27 + 1);
      v43 = (v27 + 1);
      v29 = *(a1 + 64);
      if (!v29)
      {
        v30 = *(a1 + 60);
        goto LABEL_57;
      }

      v34 = *(a1 + 56);
      v30 = *v29;
      if (v34 >= *v29)
      {
        if (v30 == *(a1 + 60))
        {
LABEL_57:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v30 + 1);
          v29 = *(a1 + 64);
          v30 = *v29;
        }

        *v29 = v30 + 1;
        v31 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataInfo>(*(a1 + 48));
        v32 = *(a1 + 56);
        v33 = *(a1 + 64) + 8 * v32;
        *(a1 + 56) = v32 + 1;
        *(v33 + 8) = v31;
        v28 = v43;
      }

      else
      {
        *(a1 + 56) = v34 + 1;
        v31 = *&v29[2 * v34 + 2];
      }

      v27 = sub_100156400(a3, v31, v28);
      v43 = v27;
      if (!v27)
      {
        return 0;
      }

      if (*a3 <= v27 || *v27 != 42)
      {
        goto LABEL_94;
      }

      continue;
    }
  }

  if (v10 == 7)
  {
    if (v8 != 58)
    {
      goto LABEL_86;
    }

    *(a1 + 16) |= 8u;
    v36 = *(a1 + 144);
    if (!v36)
    {
      v37 = *(a1 + 8);
      if (v37)
      {
        v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
      }

      v36 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v37);
      *(a1 + 144) = v36;
      v7 = v43;
    }

    v24 = sub_100155104(a3, v36, v7);
    goto LABEL_93;
  }

  if (v10 == 8)
  {
    if (v8 == 66)
    {
      v25 = (a1 + 96);
LABEL_52:
      v24 = google::protobuf::internal::PackedUInt32Parser(v25, v7, a3);
      goto LABEL_93;
    }

    if (v8 == 64)
    {
      v44 = sub_10003465C(&v43);
      v38 = (a1 + 96);
LABEL_84:
      google::protobuf::RepeatedField<unsigned int>::Add(v38, &v44);
      if (!v43)
      {
        return 0;
      }

      goto LABEL_94;
    }
  }

LABEL_86:
  if (v8)
  {
    v39 = (v8 & 7) == 4;
  }

  else
  {
    v39 = 1;
  }

  if (!v39)
  {
    v40 = *(a1 + 8);
    if (v40)
    {
      v41 = ((v40 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v41 = sub_100031428((a1 + 8), v6, v7);
      v7 = v43;
    }

    v24 = google::protobuf::internal::UnknownFieldParse(v8, v41, v7);
    goto LABEL_93;
  }

  a3[10].i32[0] = v8 - 1;
  return v43;
}

const google::protobuf::UnknownFieldSet *TSP::ObjectSerializationMetadata::_InternalSerialize(TSP::ObjectSerializationMetadata *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6 >= 1)
  {
    v4 = sub_1000496C0(a3, 1, this + 6, v6, a2, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v7 = *(this + 4);
  if (v7)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(this + 15);
    *v4 = 18;
    v9 = *(v8 + 5);
    if (v9 > 0x7F)
    {
      v4[1] = v9 | 0x80;
      v11 = v9 >> 7;
      if (v9 >> 14)
      {
        v10 = v4 + 3;
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
        v4[2] = v11;
        v10 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v9;
      v10 = v4 + 2;
    }

    v4 = TSP::UUID::_InternalSerialize(v8, v10, a3, v6);
    if ((v7 & 2) == 0)
    {
LABEL_5:
      if ((v7 & 4) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_27;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_5;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(this + 16);
  *v4 = 26;
  v15 = *(v14 + 5);
  if (v15 > 0x7F)
  {
    v4[1] = v15 | 0x80;
    v17 = v15 >> 7;
    if (v15 >> 14)
    {
      v16 = v4 + 3;
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
      v4[2] = v17;
      v16 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v15;
    v16 = v4 + 2;
  }

  v4 = TSP::UUID::_InternalSerialize(v14, v16, a3, v6);
  if ((v7 & 4) != 0)
  {
LABEL_27:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v20 = *(this + 17);
    *v4 = 34;
    v21 = *(v20 + 5);
    if (v21 > 0x7F)
    {
      v4[1] = v21 | 0x80;
      v23 = v21 >> 7;
      if (v21 >> 14)
      {
        v22 = v4 + 3;
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
        v4[2] = v23;
        v22 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v21;
      v22 = v4 + 2;
    }

    v4 = TSP::ComponentInfo::_InternalSerialize(v20, v22, a3);
  }

LABEL_37:
  v26 = *(this + 14);
  if (v26)
  {
    for (i = 0; i != v26; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v28 = *(*(this + 8) + 8 * i + 8);
      *v4 = 42;
      v29 = *(v28 + 5);
      if (v29 > 0x7F)
      {
        v4[1] = v29 | 0x80;
        v31 = v29 >> 7;
        if (v29 >> 14)
        {
          v30 = v4 + 3;
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
          v4[2] = v31;
          v30 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v29;
        v30 = v4 + 2;
      }

      v4 = TSP::DataInfo::_InternalSerialize(v28, v30, a3);
    }
  }

  v34 = *(this + 20);
  if (v34)
  {
    for (j = 0; j != v34; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v36 = *(*(this + 11) + 8 * j + 8);
      *v4 = 50;
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

      v4 = TSP::ObjectUUIDMapEntry::_InternalSerialize(v36, v38, a3, v6);
    }
  }

  if ((v7 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v42 = *(this + 18);
    *v4 = 58;
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

    v4 = TSP::Reference::_InternalSerialize(v42, v44, a3, v6);
  }

  v48 = *(this + 28);
  if (v48 >= 1)
  {
    v4 = sub_1000496C0(a3, 8, this + 24, v48, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v49 = *(this + 1);
  if ((v49 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v49 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v48);
}

char *TSP::ObjectSerializationMetadata::ByteSizeLong(TSP::ObjectSerializationMetadata *this)
{
  if ((*(this + 16) & 4) != 0)
  {
    v3 = TSP::ComponentInfo::ByteSizeLong(*(this + 17));
    v2 = &v3[((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1];
  }

  else
  {
    v2 = 0;
  }

  v4 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 6);
  v5 = 11;
  v6 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v4 >= 0)
  {
    v5 = v6;
  }

  v7 = v5 + v2;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  if (!v4)
  {
    v7 = v2;
  }

  *(this + 10) = v8;
  v9 = v7 + v4;
  v10 = *(this + 14);
  v11 = v9 + v10;
  v12 = *(this + 8);
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
      v16 = TSP::DataInfo::ByteSizeLong(v15);
      v11 += &v16[(9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6];
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(this + 20);
  v18 = v11 + v17;
  v19 = *(this + 11);
  if (v19)
  {
    v20 = (v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  if (v17)
  {
    v21 = 8 * v17;
    do
    {
      v22 = *v20++;
      v23 = TSP::ObjectUUIDMapEntry::ByteSizeLong(v22);
      v18 += &v23[(9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6];
      v21 -= 8;
    }

    while (v21);
  }

  v24 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 24);
  v25 = 11;
  v26 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v24 >= 0)
  {
    v25 = v26;
  }

  v27 = v25 + v18;
  if (v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = 0;
  }

  if (!v24)
  {
    v27 = v18;
  }

  *(this + 28) = v28;
  v29 = (v27 + v24);
  v30 = *(this + 4);
  if ((v30 & 3) != 0)
  {
    if (v30)
    {
      v31 = TSP::UUID::ByteSizeLong(*(this + 15));
      v29 = &v31[((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1 + v29];
    }

    if ((v30 & 2) != 0)
    {
      v32 = TSP::UUID::ByteSizeLong(*(this + 16));
      v29 = &v32[((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1 + v29];
    }
  }

  if ((v30 & 8) != 0)
  {
    v33 = TSP::Reference::ByteSizeLong(*(this + 18));
    v29 = &v33[((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1 + v29];
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v29, this + 5);
  }

  else
  {
    *(this + 5) = v29;
    return v29;
  }
}

void TSP::ObjectSerializationMetadata::MergeFrom(TSP::ObjectSerializationMetadata *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::ObjectSerializationMetadata::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void TSP::ObjectSerializationMetadata::MergeFrom(TSP::ObjectSerializationMetadata *this, const TSP::ObjectSerializationMetadata *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(this + 6);
    google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, v7 + v6);
    v8 = *(this + 4);
    *(this + 6) += *(a2 + 6);
    memcpy((v8 + 4 * v7), *(a2 + 4), 4 * *(a2 + 6));
  }

  v9 = *(a2 + 14);
  if (v9)
  {
    v10 = *(a2 + 8);
    v11 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_10004A340(this + 6, v11, v10 + 8, v9, **(this + 8) - *(this + 14));
    v12 = *(this + 14) + v9;
    *(this + 14) = v12;
    v13 = *(this + 8);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 20);
  if (v14)
  {
    v15 = *(a2 + 11);
    v16 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72), *(a2 + 20));
    sub_100049EA0(this + 9, v16, v15 + 8, v14, **(this + 11) - *(this + 20));
    v17 = *(this + 20) + v14;
    *(this + 20) = v17;
    v18 = *(this + 11);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 24);
  if (v19)
  {
    v20 = *(this + 24);
    google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, v20 + v19);
    v21 = *(this + 13);
    *(this + 24) += *(a2 + 24);
    memcpy((v21 + 4 * v20), *(a2 + 13), 4 * *(a2 + 24));
  }

  v22 = *(a2 + 4);
  if ((v22 & 0xF) == 0)
  {
    return;
  }

  if ((v22 & 1) == 0)
  {
    if ((v22 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_27:
    *(this + 4) |= 2u;
    v26 = *(this + 16);
    if (!v26)
    {
      v27 = *(this + 1);
      if (v27)
      {
        v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
      }

      v26 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v27);
      *(this + 16) = v26;
    }

    if (*(a2 + 16))
    {
      v28 = *(a2 + 16);
    }

    else
    {
      v28 = &TSP::_UUID_default_instance_;
    }

    TSP::UUID::MergeFrom(v26, v28, a3);
    if ((v22 & 4) == 0)
    {
LABEL_17:
      if ((v22 & 8) == 0)
      {
        return;
      }

      goto LABEL_43;
    }

    goto LABEL_35;
  }

  *(this + 4) |= 1u;
  v23 = *(this + 15);
  if (!v23)
  {
    v24 = *(this + 1);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    v23 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v24);
    *(this + 15) = v23;
  }

  if (*(a2 + 15))
  {
    v25 = *(a2 + 15);
  }

  else
  {
    v25 = &TSP::_UUID_default_instance_;
  }

  TSP::UUID::MergeFrom(v23, v25, a3);
  if ((v22 & 2) != 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  if ((v22 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_35:
  *(this + 4) |= 4u;
  v29 = *(this + 17);
  if (!v29)
  {
    v30 = *(this + 1);
    if (v30)
    {
      v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
    }

    v29 = google::protobuf::Arena::CreateMaybeMessage<TSP::ComponentInfo>(v30);
    *(this + 17) = v29;
  }

  if (*(a2 + 17))
  {
    v31 = *(a2 + 17);
  }

  else
  {
    v31 = &TSP::_ComponentInfo_default_instance_;
  }

  TSP::ComponentInfo::MergeFrom(v29, v31, a3);
  if ((v22 & 8) != 0)
  {
LABEL_43:
    *(this + 4) |= 8u;
    v32 = *(this + 18);
    if (!v32)
    {
      v33 = *(this + 1);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v33);
      *(this + 18) = v32;
    }

    if (*(a2 + 18))
    {
      v34 = *(a2 + 18);
    }

    else
    {
      v34 = &TSP::_Reference_default_instance_;
    }

    TSP::Reference::MergeFrom(v32, v34, a3);
  }
}

void TSP::ObjectSerializationMetadata::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::ObjectSerializationMetadata::Clear(this, a2, a3);

    TSP::ObjectSerializationMetadata::MergeFrom(this, a2);
  }
}

uint64_t TSP::ObjectSerializationMetadata::IsInitialized(TSP::ObjectSerializationMetadata *this)
{
  if ((*(this + 16) & 4) == 0)
  {
    return 0;
  }

  v3 = *(this + 14);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::DataInfo::IsInitialized(*(*(this + 8) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_100038B44(this + 72);
  if (result)
  {
    v6 = *(this + 4);
    if (v6)
    {
      result = TSP::UUID::IsInitialized(*(this + 15));
      if (!result)
      {
        return result;
      }

      v6 = *(this + 4);
    }

    if ((v6 & 2) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 16));
      if (!result)
      {
        return result;
      }

      v6 = *(this + 4);
    }

    if ((v6 & 4) != 0)
    {
      result = TSP::ComponentInfo::IsInitialized(*(this + 17));
      if (!result)
      {
        return result;
      }

      v6 = *(this + 4);
    }

    if ((v6 & 8) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(this + 18));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t TSP::ObjectSerializationMetadata::GetMetadata(TSP::ObjectSerializationMetadata *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[40];
  v2 = off_1001E92E8[41];
  return result;
}

void *TSP::ObjectSerializationDirectory_Entry::ObjectSerializationDirectory_Entry(void *a1, uint64_t a2)
{
  *a1 = off_1001C8AD8;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(scc_info_ObjectSerializationDirectory_Entry_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ObjectSerializationDirectory_Entry_TSPArchiveMessages_2eproto);
  }

  a1[4] = 0;
  a1[5] = 0;
  a1[3] = &google::protobuf::internal::fixed_address_empty_string;
  return a1;
}

void TSP::ObjectSerializationDirectory_Entry::~ObjectSerializationDirectory_Entry(TSP::ObjectSerializationDirectory_Entry *this)
{
  v1 = *(this + 3);
  if (v1 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::ObjectSerializationDirectory_Entry::~ObjectSerializationDirectory_Entry(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::ObjectSerializationDirectory_Entry::Clear(TSP::ObjectSerializationDirectory_Entry *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
    }
  }

  if ((v3 & 6) != 0)
  {
    *(this + 4) = 0;
    *(this + 5) = 0;
  }

  v6 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v6)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::ObjectSerializationDirectory_Entry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v30, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v30 + 1);
      v9 = *v30;
      if ((*v30 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v10 - 128));
      v30 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_44;
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
        v21 = (v8 + 1);
        v20 = *v8;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_29;
        }

        v22 = *v21;
        v20 = (v22 << 7) + v20 - 128;
        if ((v22 & 0x80000000) == 0)
        {
          v21 = (v8 + 2);
LABEL_29:
          v30 = v21;
          *(a1 + 40) = v20;
          goto LABEL_34;
        }

        v28 = google::protobuf::internal::VarintParseSlow64(v8, v20);
        v30 = v28;
        *(a1 + 40) = v29;
        if (!v28)
        {
LABEL_44:
          v30 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v11 != 2)
        {
          if (v11 == 1 && v9 == 10)
          {
            *(a1 + 16) |= 1u;
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 24), v23);
            v16 = google::protobuf::internal::InlineGreedyStringParser(v24, v30, a3);
          }

          else
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
              v8 = v30;
            }

            v16 = google::protobuf::internal::UnknownFieldParse(v9, v15, v8);
          }

          v30 = v16;
          if (!v16)
          {
            goto LABEL_44;
          }

          goto LABEL_34;
        }

        if (v9 != 16)
        {
          goto LABEL_13;
        }

        v6 |= 2u;
        v18 = (v8 + 1);
        v17 = *v8;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if ((v19 & 0x80000000) == 0)
        {
          v18 = (v8 + 2);
LABEL_24:
          v30 = v18;
          *(a1 + 32) = v17;
          goto LABEL_34;
        }

        v26 = google::protobuf::internal::VarintParseSlow64(v8, v17);
        v30 = v26;
        *(a1 + 32) = v27;
        if (!v26)
        {
          goto LABEL_44;
        }
      }

LABEL_34:
      if (sub_1000313B0(a3, &v30, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v30 + 2);
LABEL_6:
    v30 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v30;
}

const google::protobuf::UnknownFieldSet *TSP::ObjectSerializationDirectory_Entry::_InternalSerialize(TSP::ObjectSerializationDirectory_Entry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_100030384(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_4;
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

  v8 = *(this + 4);
  *v4 = 16;
  if (v8 > 0x7F)
  {
    v4[1] = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v10 | 0x80;
        v13 = v10 >> 7;
        ++v4;
        v14 = v10 >> 14;
        v10 >>= 7;
      }

      while (v14);
      *(v4 - 1) = v13;
      if ((v6 & 4) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v4[2] = v10;
      v4 += 3;
      if ((v6 & 4) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v4[1] = v8;
    v4 += 2;
    if ((v6 & 4) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_4:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 5);
  *v4 = 24;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v9 | 0x80;
        v11 = v9 >> 7;
        ++v4;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
      *(v4 - 1) = v11;
    }

    else
    {
      v4[2] = v9;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_25:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t TSP::ObjectSerializationDirectory_Entry::RequiredFieldsByteSizeFallback(TSP::ObjectSerializationDirectory_Entry *this)
{
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v2 += ((9 * (__clz(*(this + 4) | 1) ^ 0x3F) + 73) >> 6) + 1;
    goto LABEL_8;
  }

  v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(this + 5) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  return v2;
}

char *TSP::ObjectSerializationDirectory_Entry::ByteSizeLong(TSP::ObjectSerializationDirectory_Entry *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v5 = TSP::ObjectSerializationDirectory_Entry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v5 = (v4 + ((9 * (__clz(*(this + 4) | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(*(this + 5) | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 3);
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

void TSP::ObjectSerializationDirectory_Entry::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::ObjectSerializationDirectory_Entry::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *TSP::ObjectSerializationDirectory_Entry::MergeFrom(std::string *this, const TSP::ObjectSerializationDirectory_Entry *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 7) != 0)
  {
    if (v6)
    {
      v7 = *(a2 + 3);
      LODWORD(v4->__r_.__value_.__r.__words[2]) |= 1u;
      size = v4->__r_.__value_.__l.__size_;
      if (size)
      {
        size = *(size & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set(&v4[1], v7 & 0xFFFFFFFFFFFFFFFELL, size);
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
LABEL_8:
          LODWORD(v4->__r_.__value_.__r.__words[2]) |= v6;
          return this;
        }

LABEL_7:
        v4[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
        goto LABEL_8;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    v4[1].__r_.__value_.__l.__size_ = *(a2 + 4);
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

void TSP::ObjectSerializationDirectory_Entry::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::ObjectSerializationDirectory_Entry::Clear(this, a2, a3);

    TSP::ObjectSerializationDirectory_Entry::MergeFrom(this, a2);
  }
}

uint64_t TSP::ObjectSerializationDirectory_Entry::GetMetadata(TSP::ObjectSerializationDirectory_Entry *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[42];
  v2 = off_1001E92E8[43];
  return result;
}

uint64_t TSP::ObjectSerializationDirectory::ObjectSerializationDirectory(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001C8B88;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_ObjectSerializationDirectory_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ObjectSerializationDirectory_TSPArchiveMessages_2eproto);
  }

  return a1;
}

void TSP::ObjectSerializationDirectory::~ObjectSerializationDirectory(TSP::ObjectSerializationDirectory *this)
{
  sub_10002F4C4(this + 1);
  sub_10004A69C(this + 2);
}

{
  TSP::ObjectSerializationDirectory::~ObjectSerializationDirectory(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::ObjectSerializationDirectory::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 6);
  if (v4 >= 1)
  {
    v5 = (*(this + 4) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::ObjectSerializationDirectory_Entry::Clear(v6, a2, a3);
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

google::protobuf::internal *TSP::ObjectSerializationDirectory::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::ObjectSerializationDirectory_Entry>(*(a1 + 16));
          v17 = *(a1 + 24);
          v18 = *(a1 + 32) + 8 * v17;
          *(a1 + 24) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v22;
LABEL_23:
          v12 = sub_1001569B0(a3, v16, v13);
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

const google::protobuf::UnknownFieldSet *TSP::ObjectSerializationDirectory::_InternalSerialize(TSP::ObjectSerializationDirectory *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

      a2 = TSP::ObjectSerializationDirectory_Entry::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::ObjectSerializationDirectory::ByteSizeLong(TSP::ObjectSerializationDirectory *this)
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
      v7 = TSP::ObjectSerializationDirectory_Entry::ByteSizeLong(v6);
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

void TSP::ObjectSerializationDirectory::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::ObjectSerializationDirectory::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *TSP::ObjectSerializationDirectory::MergeFrom(std::string *this, const TSP::ObjectSerializationDirectory *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4->__r_.__value_.__r.__words[2], v6);
    this = sub_10004A720(&v4->__r_.__value_.__r.__words[2], v8, v7 + 8, v6, *v4[1].__r_.__value_.__l.__size_ - LODWORD(v4[1].__r_.__value_.__l.__data_));
    v9 = LODWORD(v4[1].__r_.__value_.__l.__data_) + v6;
    LODWORD(v4[1].__r_.__value_.__l.__data_) = v9;
    size = v4[1].__r_.__value_.__l.__size_;
    if (*size < v9)
    {
      *size = v9;
    }
  }

  return this;
}

void TSP::ObjectSerializationDirectory::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::ObjectSerializationDirectory::Clear(this, a2, a3);

    TSP::ObjectSerializationDirectory::MergeFrom(this, a2);
  }
}

BOOL TSP::ObjectSerializationDirectory::IsInitialized(TSP::ObjectSerializationDirectory *this)
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

  while ((~*(v3 + 16) & 7) == 0);
  return v2 < 1;
}

uint64_t TSP::ObjectSerializationDirectory::GetMetadata(TSP::ObjectSerializationDirectory *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[44];
  v2 = off_1001E92E8[45];
  return result;
}

uint64_t TSP::DataPropertiesEntryV1::DataPropertiesEntryV1(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  *a1 = off_1001C8C38;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (atomic_load_explicit(scc_info_DataPropertiesEntryV1_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DataPropertiesEntryV1_TSPArchiveMessages_2eproto);
  }

  *(a1 + 48) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 56) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_100045690(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    sub_100156CF0(v2);
  }

  _Unwind_Resume(exception_object);
}

void TSP::DataPropertiesEntryV1::~DataPropertiesEntryV1(TSP::DataPropertiesEntryV1 *this)
{
  v2 = *(this + 6);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v3 = *(this + 7);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  sub_10002F4C4(this + 1);
  if (*(this + 7) >= 1)
  {
    v4 = *(this + 4);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }
}

{
  TSP::DataPropertiesEntryV1::~DataPropertiesEntryV1(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::DataPropertiesEntryV1::Clear(TSP::DataPropertiesEntryV1 *this, uint64_t a2, uint64_t a3)
{
  *(this + 6) = 0;
  v3 = *(this + 4);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v3 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v4 = 0;
      *(v4 + 23) = 0;
    }

    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v5 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }
  }

LABEL_11:
  if ((v3 & 0xC) != 0)
  {
    *(this + 72) = 0;
    *(this + 8) = 0;
  }

  v7 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v7)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::DataPropertiesEntryV1::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_53;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 > 2)
      {
        if (v11 == 3)
        {
          if (v9 == 25)
          {
            v6 |= 4u;
            *(a1 + 64) = *v8;
            v26 = (v8 + 8);
            goto LABEL_49;
          }
        }

        else if (v11 == 4)
        {
          if (v9 == 34)
          {
            v18 = google::protobuf::internal::PackedUInt32Parser((a1 + 24), v8, a3);
            goto LABEL_48;
          }

          if (v9 == 32)
          {
            v27 = sub_10003465C(&v26);
            google::protobuf::RepeatedField<unsigned int>::Add((a1 + 24), &v27);
            if (!v26)
            {
              goto LABEL_53;
            }

            goto LABEL_49;
          }
        }

        else if (v11 == 5 && v9 == 42)
        {
          *(a1 + 16) |= 2u;
          v12 = *(a1 + 8);
          if (v12)
          {
            v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = (a1 + 56);
          goto LABEL_33;
        }

        goto LABEL_41;
      }

      if (v11 == 1)
      {
        if (v9 == 10)
        {
          *(a1 + 16) |= 1u;
          v12 = *(a1 + 8);
          if (v12)
          {
            v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = (a1 + 48);
LABEL_33:
          v19 = google::protobuf::internal::ArenaStringPtr::Mutable(v13, v12);
          v18 = google::protobuf::internal::InlineGreedyStringParser(v19, v26, a3);
LABEL_48:
          v26 = v18;
          if (!v18)
          {
LABEL_53:
            v26 = 0;
            goto LABEL_2;
          }

          goto LABEL_49;
        }

LABEL_41:
        if (v9)
        {
          v23 = (v9 & 7) == 4;
        }

        else
        {
          v23 = 1;
        }

        if (v23)
        {
          *(a3 + 80) = v9 - 1;
          goto LABEL_2;
        }

        v24 = *(a1 + 8);
        if (v24)
        {
          v25 = ((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v25 = sub_100031428((a1 + 8), v5, v8);
          v8 = v26;
        }

        v18 = google::protobuf::internal::UnknownFieldParse(v9, v25, v8);
        goto LABEL_48;
      }

      if (v11 != 2 || v9 != 16)
      {
        goto LABEL_41;
      }

      v6 |= 8u;
      v16 = (v8 + 1);
      v15 = *v8;
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v17 = *v16;
      v15 = (v17 << 7) + v15 - 128;
      if ((v17 & 0x80000000) == 0)
      {
        v16 = (v8 + 2);
LABEL_24:
        v26 = v16;
        *(a1 + 72) = v15 != 0;
        goto LABEL_49;
      }

      v21 = google::protobuf::internal::VarintParseSlow64(v8, v15);
      v26 = v21;
      *(a1 + 72) = v22 != 0;
      if (!v21)
      {
        goto LABEL_53;
      }

LABEL_49:
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

const google::protobuf::UnknownFieldSet *TSP::DataPropertiesEntryV1::_InternalSerialize(TSP::DataPropertiesEntryV1 *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_100030384(a3, 1, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
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

  v7 = *(this + 72);
  *v4 = 16;
  v4[1] = v7;
  v4 += 2;
  if ((v6 & 4) != 0)
  {
LABEL_9:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(this + 8);
    *v4 = 25;
    *(v4 + 1) = v8;
    v4 += 9;
  }

LABEL_12:
  v9 = *(this + 10);
  if (v9 >= 1)
  {
    v4 = sub_1000496C0(a3, 4, this + 6, v9, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_100030384(a3, 5, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v9);
}

char *TSP::DataPropertiesEntryV1::ByteSizeLong(TSP::DataPropertiesEntryV1 *this)
{
  if (*(this + 16))
  {
    v3 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
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

  v6 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 6);
  if (v6)
  {
    v7 = v6;
    if ((v6 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v8;
  }

  else
  {
    v7 = 0;
  }

  *(this + 10) = v7;
  v9 = (v2 + v6);
  v10 = *(this + 4);
  if ((v10 & 0xE) != 0)
  {
    if ((v10 & 2) != 0)
    {
      v11 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v9 = (v9 + v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1);
    }

    v14 = (v9 + 9);
    if ((v10 & 4) == 0)
    {
      v14 = v9;
    }

    v9 = (v14 + ((v10 >> 2) & 2));
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v9, this + 5);
  }

  else
  {
    *(this + 5) = v9;
    return v9;
  }
}

void TSP::DataPropertiesEntryV1::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::DataPropertiesEntryV1::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

google::protobuf::Arena **TSP::DataPropertiesEntryV1::MergeFrom(google::protobuf::Arena **this, const TSP::DataPropertiesEntryV1 *a2, uint64_t a3)
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
    v7 = *(v4 + 6);
    google::protobuf::RepeatedField<unsigned int>::Reserve(v4 + 6, v7 + v6);
    v8 = v4[4];
    *(v4 + 6) += *(a2 + 6);
    this = memcpy(v8 + 4 * v7, *(a2 + 4), 4 * *(a2 + 6));
  }

  v9 = *(a2 + 4);
  if ((v9 & 0xF) != 0)
  {
    if (v9)
    {
      v10 = *(a2 + 6);
      *(v4 + 4) |= 1u;
      v11 = v4[1];
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set(v4 + 6, v10 & 0xFFFFFFFFFFFFFFFELL, v11);
      if ((v9 & 2) == 0)
      {
LABEL_8:
        if ((v9 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }
    }

    else if ((v9 & 2) == 0)
    {
      goto LABEL_8;
    }

    v12 = *(a2 + 7);
    *(v4 + 4) |= 2u;
    v13 = v4[1];
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(v4 + 7, v12 & 0xFFFFFFFFFFFFFFFELL, v13);
    if ((v9 & 4) == 0)
    {
LABEL_9:
      if ((v9 & 8) == 0)
      {
LABEL_11:
        *(v4 + 4) |= v9;
        return this;
      }

LABEL_10:
      *(v4 + 72) = *(a2 + 72);
      goto LABEL_11;
    }

LABEL_19:
    v4[8] = *(a2 + 8);
    if ((v9 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

void TSP::DataPropertiesEntryV1::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::DataPropertiesEntryV1::Clear(this, a2, a3);

    TSP::DataPropertiesEntryV1::MergeFrom(this, a2);
  }
}

uint64_t TSP::DataPropertiesEntryV1::GetMetadata(TSP::DataPropertiesEntryV1 *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[46];
  v2 = off_1001E92E8[47];
  return result;
}

uint64_t TSP::DataPropertiesV1::DataPropertiesV1(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001C8CE8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_DataPropertiesV1_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DataPropertiesV1_TSPArchiveMessages_2eproto);
  }

  return a1;
}

void TSP::DataPropertiesV1::~DataPropertiesV1(TSP::DataPropertiesV1 *this)
{
  sub_10002F4C4(this + 1);
  sub_10004A7E0(this + 2);
}

{
  TSP::DataPropertiesV1::~DataPropertiesV1(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::DataPropertiesV1::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 6);
  if (v4 >= 1)
  {
    v5 = (*(this + 4) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::DataPropertiesEntryV1::Clear(v6, a2, a3);
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

google::protobuf::internal *TSP::DataPropertiesV1::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataPropertiesEntryV1>(*(a1 + 16));
          v17 = *(a1 + 24);
          v18 = *(a1 + 32) + 8 * v17;
          *(a1 + 24) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v22;
LABEL_23:
          v12 = sub_100156A80(a3, v16, v13);
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

const google::protobuf::UnknownFieldSet *TSP::DataPropertiesV1::_InternalSerialize(TSP::DataPropertiesV1 *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

      a2 = TSP::DataPropertiesEntryV1::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::DataPropertiesV1::ByteSizeLong(TSP::DataPropertiesV1 *this)
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
      v7 = TSP::DataPropertiesEntryV1::ByteSizeLong(v6);
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

void TSP::DataPropertiesV1::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::DataPropertiesV1::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

google::protobuf::Arena **TSP::DataPropertiesV1::MergeFrom(google::protobuf::Arena **this, const TSP::DataPropertiesV1 *a2, uint64_t a3)
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
    this = sub_10004A864(v4 + 2, v8, v7 + 8, v6, *v4[4] - *(v4 + 6));
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

void TSP::DataPropertiesV1::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::DataPropertiesV1::Clear(this, a2, a3);

    TSP::DataPropertiesV1::MergeFrom(this, a2);
  }
}

BOOL TSP::DataPropertiesV1::IsInitialized(TSP::DataPropertiesV1 *this)
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

  while ((*(v3 + 16) & 1) != 0);
  return v2 < 1;
}

uint64_t TSP::DataPropertiesV1::GetMetadata(TSP::DataPropertiesV1 *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[48];
  v2 = off_1001E92E8[49];
  return result;
}

void TSP::DocumentMetadata::~DocumentMetadata(TSP::DocumentMetadata *this)
{
  if (this != TSP::_DocumentMetadata_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::DataPropertiesV1::~DataPropertiesV1(v2);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::DocumentMetadata::~DocumentMetadata(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::DocumentMetadata::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  if (*(this + 16))
  {
    this = TSP::DataPropertiesV1::Clear(*(this + 3), a2, a3);
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

google::protobuf::internal *TSP::DocumentMetadata::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
      if (v9 >> 3 == 3)
      {
        if (v9 == 26)
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

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataPropertiesV1>(v17);
            *(a1 + 24) = v16;
            v8 = v24;
          }

          v15 = sub_100156B50(a3, v16, v8);
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
      v19 = (v8 + 1);
      v18 = *v8;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      v20 = *v19;
      v18 = (v20 << 7) + v18 - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v19 = (v8 + 2);
LABEL_30:
        v24 = v19;
        *(a1 + 32) = v18 != 0;
        goto LABEL_31;
      }

      v22 = google::protobuf::internal::VarintParseSlow64(v8, v18);
      v24 = v22;
      *(a1 + 32) = v23 != 0;
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

const google::protobuf::UnknownFieldSet *TSP::DocumentMetadata::_InternalSerialize(TSP::DocumentMetadata *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 32);
    *a2 = 8;
    a2[1] = v7;
    a2 += 2;
  }

  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 3);
    *a2 = 26;
    v9 = *(v8 + 10);
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

    a2 = TSP::DataPropertiesV1::_InternalSerialize(v8, v10, a3, a4);
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::DocumentMetadata::ByteSizeLong(TSP::DocumentMetadata *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v5 = TSP::DataPropertiesV1::ByteSizeLong(*(this + 3));
      v3 = &v5[((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1];
    }

    else
    {
      v3 = 0;
    }

    v4 = (v3 + (v2 & 2));
  }

  else
  {
    v4 = 0;
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

void TSP::DocumentMetadata::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::DocumentMetadata::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

google::protobuf::Arena **TSP::DocumentMetadata::MergeFrom(google::protobuf::Arena **this, const TSP::DocumentMetadata *a2, uint64_t a3)
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

        v7 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataPropertiesV1>(v8);
        v4[3] = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = &TSP::_DataPropertiesV1_default_instance_;
      }

      this = TSP::DataPropertiesV1::MergeFrom(v7, v9, a3);
    }

    if ((v6 & 2) != 0)
    {
      *(v4 + 32) = *(a2 + 32);
    }

    *(v4 + 4) |= v6;
  }

  return this;
}

void TSP::DocumentMetadata::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::DocumentMetadata::Clear(this, a2, a3);

    TSP::DocumentMetadata::MergeFrom(this, a2);
  }
}

BOOL TSP::DocumentMetadata::IsInitialized(TSP::DocumentMetadata *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  v2 = *(this + 3);
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  do
  {
    result = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v5 = *(v4 + 8 * v3--);
  }

  while ((*(v5 + 16) & 1) != 0);
  return result;
}

uint64_t TSP::DocumentMetadata::GetMetadata(TSP::DocumentMetadata *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[50];
  v2 = off_1001E92E8[51];
  return result;
}

void *TSP::SupportMetadata_DataCollaborationProperties::SupportMetadata_DataCollaborationProperties(void *a1, uint64_t a2)
{
  *a1 = off_1001C8E48;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(scc_info_SupportMetadata_DataCollaborationProperties_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SupportMetadata_DataCollaborationProperties_TSPArchiveMessages_2eproto);
  }

  a1[4] = 0;
  a1[5] = 0;
  a1[3] = &google::protobuf::internal::fixed_address_empty_string;
  return a1;
}

void TSP::SupportMetadata_DataCollaborationProperties::~SupportMetadata_DataCollaborationProperties(TSP::SupportMetadata_DataCollaborationProperties *this)
{
  v1 = *(this + 3);
  if (v1 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::SupportMetadata_DataCollaborationProperties::~SupportMetadata_DataCollaborationProperties(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::SupportMetadata_DataCollaborationProperties::Clear(TSP::SupportMetadata_DataCollaborationProperties *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
    }
  }

  if ((v3 & 0x7E) != 0)
  {
    *(this + 4) = 0;
    *(this + 5) = 0;
  }

  v6 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v6)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::SupportMetadata_DataCollaborationProperties::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v50 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v50, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v50 + 1);
      v9 = *v50;
      if ((*v50 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v50, (v10 - 128));
      v50 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_82;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 3)
      {
        if (v11 == 1)
        {
          if (v9 == 10)
          {
            *(a1 + 16) |= 1u;
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 24), v23);
            v25 = google::protobuf::internal::InlineGreedyStringParser(v24, v50, a3);
            goto LABEL_64;
          }

LABEL_57:
          if (v9)
          {
            v36 = (v9 & 7) == 4;
          }

          else
          {
            v36 = 1;
          }

          if (v36)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v37 = *(a1 + 8);
          if (v37)
          {
            v38 = ((v37 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v38 = sub_100031428((a1 + 8), v5, v8);
            v8 = v50;
          }

          v25 = google::protobuf::internal::UnknownFieldParse(v9, v38, v8);
LABEL_64:
          v50 = v25;
          if (!v25)
          {
            goto LABEL_82;
          }

          goto LABEL_65;
        }

        if (v11 == 2)
        {
          if (v9 != 16)
          {
            goto LABEL_57;
          }

          v6 |= 2u;
          v34 = (v8 + 1);
          v33 = *v8;
          if ((v33 & 0x8000000000000000) == 0)
          {
            goto LABEL_56;
          }

          v35 = *v34;
          v33 = (v35 << 7) + v33 - 128;
          if ((v35 & 0x80000000) == 0)
          {
            v34 = (v8 + 2);
LABEL_56:
            v50 = v34;
            *(a1 + 32) = v33 != 0;
            goto LABEL_65;
          }

          v48 = google::protobuf::internal::VarintParseSlow64(v8, v33);
          v50 = v48;
          *(a1 + 32) = v49 != 0;
          if (!v48)
          {
LABEL_82:
            v50 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v11 != 3 || v9 != 24)
          {
            goto LABEL_57;
          }

          v6 |= 4u;
          v17 = (v8 + 1);
          v16 = *v8;
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          v18 = *v17;
          v16 = (v18 << 7) + v16 - 128;
          if ((v18 & 0x80000000) == 0)
          {
            v17 = (v8 + 2);
LABEL_26:
            v50 = v17;
            *(a1 + 33) = v16 != 0;
            goto LABEL_65;
          }

          v46 = google::protobuf::internal::VarintParseSlow64(v8, v16);
          v50 = v46;
          *(a1 + 33) = v47 != 0;
          if (!v46)
          {
            goto LABEL_82;
          }
        }
      }

      else if (v9 >> 3 > 5)
      {
        if (v11 == 6)
        {
          if (v9 != 48)
          {
            goto LABEL_57;
          }

          v6 |= 8u;
          v31 = (v8 + 1);
          v30 = *v8;
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_51;
          }

          v32 = *v31;
          v30 = (v32 << 7) + v30 - 128;
          if ((v32 & 0x80000000) == 0)
          {
            v31 = (v8 + 2);
LABEL_51:
            v50 = v31;
            *(a1 + 34) = v30 != 0;
            goto LABEL_65;
          }

          v40 = google::protobuf::internal::VarintParseSlow64(v8, v30);
          v50 = v40;
          *(a1 + 34) = v41 != 0;
          if (!v40)
          {
            goto LABEL_82;
          }
        }

        else
        {
          if (v11 != 7 || v9 != 56)
          {
            goto LABEL_57;
          }

          v6 |= 0x40u;
          v20 = (v8 + 1);
          LODWORD(v19) = *v8;
          if ((v19 & 0x80) == 0)
          {
            goto LABEL_33;
          }

          v21 = *v20;
          v19 = v19 + (v21 << 7) - 128;
          if ((v21 & 0x80000000) == 0)
          {
            v20 = (v8 + 2);
LABEL_33:
            v50 = v20;
            *(a1 + 44) = v19;
            goto LABEL_65;
          }

          v44 = google::protobuf::internal::VarintParseSlow64(v8, v19);
          v50 = v44;
          *(a1 + 44) = v45;
          if (!v44)
          {
            goto LABEL_82;
          }
        }
      }

      else
      {
        if (v11 == 4)
        {
          if (v9 == 32)
          {
            v26 = (v8 + 1);
            v27 = *v8;
            if ((v27 & 0x8000000000000000) == 0)
            {
              goto LABEL_44;
            }

            v28 = *v26;
            v29 = (v28 << 7) + v27;
            v27 = (v29 - 128);
            if (v28 < 0)
            {
              v50 = google::protobuf::internal::VarintParseSlow64(v8, (v29 - 128));
              if (!v50)
              {
                goto LABEL_82;
              }

              v27 = v39;
            }

            else
            {
              v26 = (v8 + 2);
LABEL_44:
              v50 = v26;
            }

            if (TSP::DataUploadStatus_IsValid(v27))
            {
              *(a1 + 16) |= 0x10u;
              *(a1 + 36) = v27;
            }

            else
            {
              sub_100156F58((a1 + 8));
            }

            goto LABEL_65;
          }

          goto LABEL_57;
        }

        if (v11 != 5 || v9 != 40)
        {
          goto LABEL_57;
        }

        v6 |= 0x20u;
        v13 = (v8 + 1);
        LODWORD(v12) = *v8;
        if ((v12 & 0x80) == 0)
        {
          goto LABEL_15;
        }

        v14 = *v13;
        v12 = v12 + (v14 << 7) - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v8 + 2);
LABEL_15:
          v50 = v13;
          *(a1 + 40) = v12;
          goto LABEL_65;
        }

        v42 = google::protobuf::internal::VarintParseSlow64(v8, v12);
        v50 = v42;
        *(a1 + 40) = v43;
        if (!v42)
        {
          goto LABEL_82;
        }
      }

LABEL_65:
      if (sub_1000313B0(a3, &v50, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v50 + 2);
LABEL_6:
    v50 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v50;
}

const google::protobuf::UnknownFieldSet *TSP::SupportMetadata_DataCollaborationProperties::_InternalSerialize(TSP::SupportMetadata_DataCollaborationProperties *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_100030384(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
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

  v7 = *(this + 32);
  *v4 = 16;
  v4[1] = v7;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v8 = *(this + 33);
  *v4 = 24;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_27:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 10);
    *v4 = 40;
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
        if ((v6 & 8) != 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v4[2] = v14;
        v4 += 3;
        if ((v6 & 8) != 0)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v4[1] = v13;
      v4 += 2;
      if ((v6 & 8) != 0)
      {
        goto LABEL_38;
      }
    }

LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_41;
  }

LABEL_16:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v9 = *(this + 9);
  *v4 = 32;
  if (v9 > 0x7F)
  {
    v4[1] = v9 | 0x80;
    v10 = v9 >> 7;
    if (v9 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v10 | 0x80;
        v11 = v10 >> 7;
        ++v4;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
      *(v4 - 1) = v11;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v4[2] = v10;
      v4 += 3;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v4[1] = v9;
    v4 += 2;
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_27;
    }
  }

LABEL_6:
  if ((v6 & 8) == 0)
  {
    goto LABEL_7;
  }

LABEL_38:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(this + 34);
  *v4 = 48;
  v4[1] = v17;
  v4 += 2;
  if ((v6 & 0x40) != 0)
  {
LABEL_41:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v18 = *(this + 11);
    *v4 = 56;
    if (v18 > 0x7F)
    {
      v4[1] = v18 | 0x80;
      v19 = v18 >> 7;
      if (v18 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v19 | 0x80;
          v20 = v19 >> 7;
          ++v4;
          v21 = v19 >> 14;
          v19 >>= 7;
        }

        while (v21);
        *(v4 - 1) = v20;
      }

      else
      {
        v4[2] = v19;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v18;
      v4 += 2;
    }
  }

LABEL_50:
  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v22 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

char *TSP::SupportMetadata_DataCollaborationProperties::ByteSizeLong(TSP::SupportMetadata_DataCollaborationProperties *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = (v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 0x7E) != 0)
  {
    v2 = (v2 + ((*(this + 4) >> 1) & 2) + (*(this + 4) & 2) + ((*(this + 4) >> 2) & 2u));
    if ((v1 & 0x10) != 0)
    {
      v10 = *(this + 9);
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v10 >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 11;
      }

      v2 = (v2 + v12);
      if ((v1 & 0x20) == 0)
      {
LABEL_9:
        if ((v1 & 0x40) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_10;
      }
    }

    else if ((v1 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    v13 = *(this + 10);
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v13 >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 11;
    }

    v2 = (v2 + v15);
    if ((v1 & 0x40) != 0)
    {
LABEL_10:
      v6 = *(this + 11);
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v6 >= 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 11;
      }

      v2 = (v2 + v8);
    }
  }

LABEL_14:
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 5);
  }

  *(this + 5) = v2;
  return v2;
}

void TSP::SupportMetadata_DataCollaborationProperties::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::SupportMetadata_DataCollaborationProperties::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *TSP::SupportMetadata_DataCollaborationProperties::MergeFrom(std::string *this, const TSP::SupportMetadata_DataCollaborationProperties *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 0x7F) != 0)
  {
    if (v6)
    {
      v7 = *(a2 + 3);
      LODWORD(v4->__r_.__value_.__r.__words[2]) |= 1u;
      size = v4->__r_.__value_.__l.__size_;
      if (size)
      {
        size = *(size & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set(&v4[1], v7 & 0xFFFFFFFFFFFFFFFELL, size);
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_18;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    v4[1].__r_.__value_.__s.__data_[8] = *(a2 + 32);
    if ((v6 & 4) == 0)
    {
LABEL_7:
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }

LABEL_18:
    v4[1].__r_.__value_.__s.__data_[9] = *(a2 + 33);
    if ((v6 & 8) == 0)
    {
LABEL_8:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }

LABEL_19:
    v4[1].__r_.__value_.__s.__data_[10] = *(a2 + 34);
    if ((v6 & 0x10) == 0)
    {
LABEL_9:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }

LABEL_20:
    HIDWORD(v4[1].__r_.__value_.__r.__words[1]) = *(a2 + 9);
    if ((v6 & 0x20) == 0)
    {
LABEL_10:
      if ((v6 & 0x40) == 0)
      {
LABEL_12:
        LODWORD(v4->__r_.__value_.__r.__words[2]) |= v6;
        return this;
      }

LABEL_11:
      HIDWORD(v4[1].__r_.__value_.__r.__words[2]) = *(a2 + 11);
      goto LABEL_12;
    }

LABEL_21:
    LODWORD(v4[1].__r_.__value_.__r.__words[2]) = *(a2 + 10);
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return this;
}

void TSP::SupportMetadata_DataCollaborationProperties::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::SupportMetadata_DataCollaborationProperties::Clear(this, a2, a3);

    TSP::SupportMetadata_DataCollaborationProperties::MergeFrom(this, a2);
  }
}

uint64_t TSP::SupportMetadata_DataCollaborationProperties::GetMetadata(TSP::SupportMetadata_DataCollaborationProperties *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[52];
  v2 = off_1001E92E8[53];
  return result;
}

uint64_t TSP::SupportMetadata::SupportMetadata(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001C8EF8;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(scc_info_SupportMetadata_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SupportMetadata_TSPArchiveMessages_2eproto);
  }

  *(a1 + 48) = 0;
  return a1;
}

void TSP::SupportMetadata::~SupportMetadata(TSP::SupportMetadata *this)
{
  sub_10002F4C4(this + 1);
  sub_10004A924(this + 3);
}

{
  TSP::SupportMetadata::~SupportMetadata(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::SupportMetadata::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    v5 = (*(this + 5) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::SupportMetadata_DataCollaborationProperties::Clear(v6, a2, a3);
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

google::protobuf::internal *TSP::SupportMetadata::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
            v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::SupportMetadata_DataCollaborationProperties>(*(a1 + 24));
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

          v15 = sub_100156C20(a3, v19, v16);
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

      v24 = (v8 + 1);
      v23 = *v8;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = (v8 + 2);
LABEL_37:
        v29 = v24;
        *(a1 + 48) = v23 != 0;
        v6 = 1;
        goto LABEL_38;
      }

      v27 = google::protobuf::internal::VarintParseSlow64(v8, v23);
      v29 = v27;
      *(a1 + 48) = v28 != 0;
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

const google::protobuf::UnknownFieldSet *TSP::SupportMetadata::_InternalSerialize(TSP::SupportMetadata *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 48);
    *a2 = 8;
    a2[1] = v6;
    a2 += 2;
  }

  v7 = *(this + 8);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v9 = *(*(this + 5) + 8 * i + 8);
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
          a2[2] = v12;
          v11 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v10;
        v11 = a2 + 2;
      }

      a2 = TSP::SupportMetadata_DataCollaborationProperties::_InternalSerialize(v9, v11, a3);
    }
  }

  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::SupportMetadata::ByteSizeLong(TSP::SupportMetadata *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
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
      v7 = TSP::SupportMetadata_DataCollaborationProperties::ByteSizeLong(v6);
      v2 += &v7[(9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = 2 * (*(this + 4) & 1);
  v9 = (v2 + v8);
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v9, this + 5);
  }

  else
  {
    *(this + 5) = v9;
    return (v2 + v8);
  }
}