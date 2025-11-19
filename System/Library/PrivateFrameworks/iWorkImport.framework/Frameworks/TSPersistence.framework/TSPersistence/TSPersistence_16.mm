const google::protobuf::UnknownFieldSet *google::protobuf::MessageOptions::_InternalSerialize(google::protobuf::MessageOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 72);
    *v4 = 8;
    v4[1] = v7;
    v4 += 2;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
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

  v8 = *(this + 73);
  *v4 = 16;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v9 = *(this + 74);
  *v4 = 24;
  v4[1] = v9;
  v4 += 2;
  if ((v6 & 8) != 0)
  {
LABEL_15:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v10 = *(this + 75);
    *v4 = 56;
    v4[1] = v10;
    v4 += 2;
  }

LABEL_18:
  v11 = *(this + 14);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v13 = *(*(this + 8) + 8 * i + 8);
      *v4 = 16058;
      v14 = *(v13 + 5);
      if (v14 > 0x7F)
      {
        v4[2] = v14 | 0x80;
        v16 = v14 >> 7;
        if (v14 >> 14)
        {
          v15 = v4 + 4;
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
          v4[3] = v16;
          v15 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v14;
        v15 = v4 + 3;
      }

      v4 = google::protobuf::UninterpretedOption::_InternalSerialize(v13, v15, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 1000, 0x20000000, v4, a3);
  v21 = *(this + 1);
  if (v21)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v21 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v20);
  }

  return result;
}

const InternalMetadata *google::protobuf::MessageOptions::ByteSizeLong(google::protobuf::MessageOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v6 = *(this + 14);
  v7 = (v2 + 2 * v6);
  v8 = *(this + 8);
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
      v12 = google::protobuf::UninterpretedOption::ByteSizeLong(v11, v3, v4, v5);
      v7 = (v7 + v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6));
      v10 -= 8;
    }

    while (v10);
  }

  if ((*(this + 10) & 0xF) != 0)
  {
    v13 = (v7 + 2 * (*(this + 10) & 1) + (*(this + 10) & 2) + ((*(this + 10) >> 1) & 2) + ((*(this + 10) >> 2) & 2));
  }

  else
  {
    v13 = v7;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v13, this + 11, v5);
  }

  else
  {
    *(this + 11) = v13;
    return v13;
  }
}

void google::protobuf::MessageOptions::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::MessageOptions::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::MessageOptions::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::MessageOptions::Clear(this);

    google::protobuf::MessageOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::MessageOptions::CopyFrom(google::protobuf::MessageOptions *this, const google::protobuf::MessageOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::MessageOptions::Clear(this);

    google::protobuf::MessageOptions::MergeFrom(this, a2);
  }
}

__n128 google::protobuf::MessageOptions::InternalSwap(google::protobuf::MessageOptions *this, google::protobuf::MessageOptions *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 7);
  v6 = *(this + 8);
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v5;
  *(a2 + 8) = v6;
  LODWORD(v5) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v5;
  return result;
}

uint64_t google::protobuf::MessageOptions::GetMetadata(google::protobuf::MessageOptions *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[28];
  v2 = off_2812FC738[29];
  return result;
}

google::protobuf::FieldOptions *google::protobuf::FieldOptions::FieldOptions(google::protobuf::FieldOptions *this, Arena *a2)
{
  *this = &unk_2885C6BA0;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(this + 16, a2);
  *(this + 6) = a2;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_FieldOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FieldOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 20) = 0;
  *(this + 9) = 0;
  return this;
}

void sub_276B41040(_Unwind_Exception *a1)
{
  sub_276B4AF6C(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

google::protobuf::FieldOptions *google::protobuf::FieldOptions::FieldOptions(google::protobuf::FieldOptions *this, const google::protobuf::FieldOptions *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C6BA0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 17) = 0;
  *(this + 52) = 0;
  *(this + 60) = 0;
  *(this + 44) = 0;
  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_276B4AFF0(this + 6, v8, (v7 + 8), v6, **(this + 8) - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = *(this + 8);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_2769F63D8(v4, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  v12 = *(a2 + 9);
  *(this + 20) = *(a2 + 20);
  *(this + 9) = v12;
  return this;
}

void google::protobuf::FieldOptions::~FieldOptions(google::protobuf::FieldOptions *this)
{
  sub_2769DEC8C(this + 1);
  sub_276B4AF6C(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::FieldOptions::~FieldOptions(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::FieldOptions::default_instance(google::protobuf::FieldOptions *this)
{
  if (atomic_load_explicit(scc_info_FieldOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FieldOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_FieldOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::FieldOptions::_InternalParse(google::protobuf::FieldOptions *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v52 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v52, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v8 = (v52 + 1);
      LODWORD(v9) = *v52;
      if ((*v52 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = (v9 + (*v8 << 7) - 128);
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v52, v9);
      v52 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_97;
      }

      v8 = TagFallback;
LABEL_7:
      v10 = v9 >> 3;
      if (v9 >> 3 <= 4)
      {
        if (v10 == 1)
        {
          if (v9 == 8)
          {
            v28 = (v8 + 1);
            v27 = *v8;
            if ((v27 & 0x8000000000000000) == 0)
            {
              goto LABEL_51;
            }

            v29 = *v28;
            v27 = (v29 << 7) + v27 - 128;
            if (v29 < 0)
            {
              v52 = google::protobuf::internal::VarintParseSlow64(v8, v27);
              if (!v52)
              {
                goto LABEL_97;
              }
            }

            else
            {
              v28 = (v8 + 2);
LABEL_51:
              v52 = v28;
            }

            if (v27 > 2)
            {
              sub_276BD43CC(this + 1);
            }

            else
            {
              *(this + 10) |= 1u;
              *(this + 18) = v27;
            }

            goto LABEL_79;
          }

LABEL_69:
          if (v9)
          {
            v39 = (v9 & 7) == 4;
          }

          else
          {
            v39 = 1;
          }

          if (v39)
          {
            a3[10].i32[0] = v9 - 1;
            goto LABEL_2;
          }

          v40 = v9;
          if (v9 >> 6 < 0x7D)
          {
            v42 = *(this + 1);
            if (v42)
            {
              v43 = ((v42 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v43 = sub_2769F617C(this + 1);
              v8 = v52;
            }

            v41 = google::protobuf::internal::UnknownFieldParse(v40, v43, v8, a3, v5);
          }

          else
          {
            v41 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v9, v8, &google::protobuf::_FieldOptions_default_instance_, this + 1, a3);
          }

          v52 = v41;
          if (!v41)
          {
LABEL_97:
            v52 = 0;
            goto LABEL_2;
          }

          goto LABEL_79;
        }

        if (v10 == 2)
        {
          if (v9 != 16)
          {
            goto LABEL_69;
          }

          v6 |= 2u;
          v37 = (v8 + 1);
          v36 = *v8;
          if ((v36 & 0x8000000000000000) == 0)
          {
            goto LABEL_68;
          }

          v38 = *v37;
          v36 = (v38 << 7) + v36 - 128;
          if ((v38 & 0x80000000) == 0)
          {
            v37 = (v8 + 2);
LABEL_68:
            v52 = v37;
            *(this + 76) = v36 != 0;
            goto LABEL_79;
          }

          v50 = google::protobuf::internal::VarintParseSlow64(v8, v36);
          v52 = v50;
          *(this + 76) = v51 != 0;
          if (!v50)
          {
            goto LABEL_97;
          }
        }

        else
        {
          if (v10 != 3 || v9 != 24)
          {
            goto LABEL_69;
          }

          v6 |= 8u;
          v16 = (v8 + 1);
          v15 = *v8;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_28;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if ((v17 & 0x80000000) == 0)
          {
            v16 = (v8 + 2);
LABEL_28:
            v52 = v16;
            *(this + 78) = v15 != 0;
            goto LABEL_79;
          }

          v48 = google::protobuf::internal::VarintParseSlow64(v8, v15);
          v52 = v48;
          *(this + 78) = v49 != 0;
          if (!v48)
          {
            goto LABEL_97;
          }
        }
      }

      else
      {
        if (v9 >> 3 > 9)
        {
          if (v10 == 10)
          {
            if (v9 != 80)
            {
              goto LABEL_69;
            }

            v6 |= 0x10u;
            v34 = (v8 + 1);
            v33 = *v8;
            if ((v33 & 0x8000000000000000) == 0)
            {
              goto LABEL_63;
            }

            v35 = *v34;
            v33 = (v35 << 7) + v33 - 128;
            if ((v35 & 0x80000000) == 0)
            {
              v34 = (v8 + 2);
LABEL_63:
              v52 = v34;
              *(this + 79) = v33 != 0;
              goto LABEL_79;
            }

            v46 = google::protobuf::internal::VarintParseSlow64(v8, v33);
            v52 = v46;
            *(this + 79) = v47 != 0;
            if (!v46)
            {
              goto LABEL_97;
            }

            goto LABEL_79;
          }

          if (v10 != 999 || v9 != 58)
          {
            goto LABEL_69;
          }

          v18 = (v8 - 2);
          while (2)
          {
            v19 = (v18 + 2);
            v52 = (v18 + 2);
            v20 = *(this + 8);
            if (!v20)
            {
              v21 = *(this + 15);
              goto LABEL_35;
            }

            v25 = *(this + 14);
            v21 = *v20;
            if (v25 >= *v20)
            {
              if (v21 == *(this + 15))
              {
LABEL_35:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v21 + 1);
                v20 = *(this + 8);
                v21 = *v20;
              }

              *v20 = v21 + 1;
              v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(this + 6));
              v23 = *(this + 14);
              v24 = *(this + 8) + 8 * v23;
              *(this + 14) = v23 + 1;
              *(v24 + 8) = v22;
              v19 = v52;
            }

            else
            {
              *(this + 14) = v25 + 1;
              v22 = *&v20[2 * v25 + 2];
            }

            v18 = sub_276BD7A4C(a3, v22, v19);
            v52 = v18;
            if (!v18)
            {
              goto LABEL_97;
            }

            if (*a3 <= v18 || *v18 != 16058)
            {
              goto LABEL_79;
            }

            continue;
          }
        }

        if (v10 != 5)
        {
          if (v10 == 6 && v9 == 48)
          {
            v12 = (v8 + 1);
            v11 = *v8;
            if ((v11 & 0x8000000000000000) != 0)
            {
              v13 = *v12;
              v11 = (v13 << 7) + v11 - 128;
              if (v13 < 0)
              {
                v52 = google::protobuf::internal::VarintParseSlow64(v8, v11);
                if (!v52)
                {
                  goto LABEL_97;
                }

                goto LABEL_16;
              }

              v12 = (v8 + 2);
            }

            v52 = v12;
LABEL_16:
            if (v11 > 2)
            {
              sub_276BD2ABC(this + 1);
            }

            else
            {
              *(this + 10) |= 0x20u;
              *(this + 20) = v11;
            }

            goto LABEL_79;
          }

          goto LABEL_69;
        }

        if (v9 != 40)
        {
          goto LABEL_69;
        }

        v6 |= 4u;
        v31 = (v8 + 1);
        v30 = *v8;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_58;
        }

        v32 = *v31;
        v30 = (v32 << 7) + v30 - 128;
        if ((v32 & 0x80000000) == 0)
        {
          v31 = (v8 + 2);
LABEL_58:
          v52 = v31;
          *(this + 77) = v30 != 0;
          goto LABEL_79;
        }

        v44 = google::protobuf::internal::VarintParseSlow64(v8, v30);
        v52 = v44;
        *(this + 77) = v45 != 0;
        if (!v44)
        {
          goto LABEL_97;
        }
      }

LABEL_79:
      if (sub_2769F6104(a3, &v52, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v8 = (v52 + 2);
LABEL_6:
    v52 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 10) |= v6;
  return v52;
}

const google::protobuf::UnknownFieldSet *google::protobuf::FieldOptions::_InternalSerialize(google::protobuf::FieldOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v19 = *(this + 18);
    *v4 = 8;
    if (v19 > 0x7F)
    {
      v4[1] = v19 | 0x80;
      v20 = v19 >> 7;
      if (v19 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v20 | 0x80;
          v21 = v20 >> 7;
          ++v4;
          v22 = v20 >> 14;
          v20 >>= 7;
        }

        while (v22);
        *(v4 - 1) = v21;
        if ((v6 & 2) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v4[2] = v20;
        v4 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v4[1] = v19;
      v4 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_3:
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_38;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_35:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v23 = *(this + 76);
  *v4 = 16;
  v4[1] = v23;
  v4 += 2;
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_38:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v24 = *(this + 78);
  *v4 = 24;
  v4[1] = v24;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_41:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(this + 77);
  *v4 = 40;
  v4[1] = v25;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

LABEL_44:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v26 = *(this + 20);
  *v4 = 48;
  if (v26 > 0x7F)
  {
    v4[1] = v26 | 0x80;
    v27 = v26 >> 7;
    if (v26 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v27 | 0x80;
        v28 = v27 >> 7;
        ++v4;
        v29 = v27 >> 14;
        v27 >>= 7;
      }

      while (v29);
      *(v4 - 1) = v28;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v4[2] = v27;
      v4 += 3;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v4[1] = v26;
    v4 += 2;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 79);
  *v4 = 80;
  v4[1] = v7;
  v4 += 2;
LABEL_10:
  v8 = *(this + 14);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v10 = *(*(this + 8) + 8 * i + 8);
      *v4 = 16058;
      v11 = *(v10 + 5);
      if (v11 > 0x7F)
      {
        v4[2] = v11 | 0x80;
        v13 = v11 >> 7;
        if (v11 >> 14)
        {
          v12 = v4 + 4;
          do
          {
            *(v12 - 1) = v13 | 0x80;
            v14 = v13 >> 7;
            ++v12;
            v15 = v13 >> 14;
            v13 >>= 7;
          }

          while (v15);
          *(v12 - 1) = v14;
        }

        else
        {
          v4[3] = v13;
          v12 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v11;
        v12 = v4 + 3;
      }

      v4 = google::protobuf::UninterpretedOption::_InternalSerialize(v10, v12, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 1000, 0x20000000, v4, a3);
  v18 = *(this + 1);
  if (v18)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v18 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v17);
  }

  return result;
}

const InternalMetadata *google::protobuf::FieldOptions::ByteSizeLong(google::protobuf::FieldOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v6 = *(this + 14);
  v7 = (v2 + 2 * v6);
  v8 = *(this + 8);
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
      v12 = google::protobuf::UninterpretedOption::ByteSizeLong(v11, v3, v4, v5);
      v7 = (v7 + v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6));
      v10 -= 8;
    }

    while (v10);
  }

  v13 = *(this + 10);
  if ((v13 & 0x3F) != 0)
  {
    if (v13)
    {
      v14 = *(this + 18);
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v14 >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 11;
      }

      v7 = (v7 + v16);
    }

    v7 = (v7 + ((*(this + 10) >> 1) & 2) + (*(this + 10) & 2) + ((*(this + 10) >> 2) & 2) + ((*(this + 10) >> 3) & 2u));
    if ((v13 & 0x20) != 0)
    {
      v17 = *(this + 20);
      v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v17 >= 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = 11;
      }

      v7 = (v7 + v19);
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v7, this + 11, v5);
  }

  else
  {
    *(this + 11) = v7;
    return v7;
  }
}

void google::protobuf::FieldOptions::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::FieldOptions::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::FieldOptions::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::FieldOptions::Clear(this);

    google::protobuf::FieldOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::FieldOptions::CopyFrom(google::protobuf::FieldOptions *this, const google::protobuf::FieldOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::FieldOptions::Clear(this);

    google::protobuf::FieldOptions::MergeFrom(this, a2);
  }
}

__n128 google::protobuf::FieldOptions::InternalSwap(google::protobuf::FieldOptions *this, google::protobuf::FieldOptions *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 7);
  v6 = *(this + 8);
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v5;
  *(a2 + 8) = v6;
  v8 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v8;
  LODWORD(v8) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v8;
  return result;
}

uint64_t google::protobuf::FieldOptions::GetMetadata(google::protobuf::FieldOptions *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[30];
  v2 = off_2812FC738[31];
  return result;
}

google::protobuf::OneofOptions *google::protobuf::OneofOptions::OneofOptions(google::protobuf::OneofOptions *this, Arena *a2)
{
  *this = &unk_2885C6C50;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(this + 16, a2);
  *(this + 5) = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  if (atomic_load_explicit(scc_info_OneofOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_OneofOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return this;
}

void sub_276B41E9C(_Unwind_Exception *a1)
{
  sub_276B4AF6C(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

google::protobuf::OneofOptions *google::protobuf::OneofOptions::OneofOptions(google::protobuf::OneofOptions *this, const google::protobuf::OneofOptions *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C6C50;
  *(this + 6) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  v6 = *(a2 + 12);
  if (v6)
  {
    v7 = *(a2 + 7);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 40), *(a2 + 12));
    sub_276B4AFF0(this + 5, v8, (v7 + 8), v6, **(this + 7) - *(this + 12));
    v9 = *(this + 12) + v6;
    *(this + 12) = v9;
    v10 = *(this + 7);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 16) = 0;
  v11 = *(a2 + 1);
  if (v11)
  {
    sub_2769F63D8(v4, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  return this;
}

void google::protobuf::OneofOptions::~OneofOptions(google::protobuf::OneofOptions *this)
{
  sub_2769DEC8C(this + 1);
  sub_276B4AF6C(this + 5);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::OneofOptions::~OneofOptions(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::OneofOptions::default_instance(google::protobuf::OneofOptions *this)
{
  if (atomic_load_explicit(scc_info_OneofOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_OneofOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_OneofOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::OneofOptions::_InternalParse(google::protobuf::OneofOptions *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v23 = a2;
  if ((sub_2769F6104(a3, &v23, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v23 + 1);
      LODWORD(v7) = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = (v7 + (*v6 << 7) - 128);
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, v7);
      v23 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
LABEL_6:
      if (v7 == 7994)
      {
        v11 = (v6 - 2);
        while (1)
        {
          v12 = (v11 + 2);
          v23 = (v11 + 2);
          v13 = *(this + 7);
          if (!v13)
          {
            break;
          }

          v18 = *(this + 12);
          v14 = *v13;
          if (v18 < *v13)
          {
            *(this + 12) = v18 + 1;
            v15 = *&v13[2 * v18 + 2];
            goto LABEL_20;
          }

          if (v14 == *(this + 13))
          {
            goto LABEL_16;
          }

LABEL_17:
          *v13 = v14 + 1;
          v15 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(this + 5));
          v16 = *(this + 12);
          v17 = *(this + 7) + 8 * v16;
          *(this + 12) = v16 + 1;
          *(v17 + 8) = v15;
          v12 = v23;
LABEL_20:
          v11 = sub_276BD7A4C(a3, v15, v12);
          v23 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 16058)
          {
            goto LABEL_30;
          }
        }

        v14 = *(this + 13);
LABEL_16:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 10, v14 + 1);
        v13 = *(this + 7);
        v14 = *v13;
        goto LABEL_17;
      }

      if (v7)
      {
        v8 = (v7 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 20) = v7 - 1;
        return v23;
      }

      v9 = v7;
      if (v7 >> 6 < 0x7D)
      {
        v19 = *(this + 1);
        if (v19)
        {
          v20 = ((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v20 = sub_2769F617C(this + 1);
          v6 = v23;
        }

        v10 = google::protobuf::internal::UnknownFieldParse(v9, v20, v6, a3, v5);
      }

      else
      {
        v10 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v7, v6, &google::protobuf::_OneofOptions_default_instance_, this + 1, a3);
      }

      v23 = v10;
      if (!v10)
      {
        return 0;
      }

LABEL_30:
      if (sub_2769F6104(a3, &v23, *(a3 + 23)))
      {
        return v23;
      }
    }

    v6 = (v23 + 2);
LABEL_5:
    v23 = v6;
    goto LABEL_6;
  }

  return v23;
}

const google::protobuf::UnknownFieldSet *google::protobuf::OneofOptions::_InternalSerialize(google::protobuf::OneofOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 12);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 7) + 8 * i + 8);
      *a2 = 16058;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[2] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 4;
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
          a2[3] = v11;
          v10 = a2 + 4;
        }
      }

      else
      {
        a2[2] = v9;
        v10 = a2 + 3;
      }

      a2 = google::protobuf::UninterpretedOption::_InternalSerialize(v8, v10, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 1000, 0x20000000, a2, a3);
  v16 = *(this + 1);
  if (v16)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v16 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v15);
  }

  return result;
}

const InternalMetadata *google::protobuf::OneofOptions::ByteSizeLong(google::protobuf::OneofOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v6 = *(this + 12);
  v7 = (v2 + 2 * v6);
  v8 = *(this + 7);
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
      v12 = google::protobuf::UninterpretedOption::ByteSizeLong(v11, v3, v4, v5);
      v7 = (v7 + v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6));
      v10 -= 8;
    }

    while (v10);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v7, this + 16, v5);
  }

  else
  {
    *(this + 16) = v7;
    return v7;
  }
}

void google::protobuf::OneofOptions::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::OneofOptions::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::OneofOptions::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::OneofOptions::Clear(this);

    google::protobuf::OneofOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::OneofOptions::CopyFrom(google::protobuf::OneofOptions *this, const google::protobuf::OneofOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::OneofOptions::Clear(this);

    google::protobuf::OneofOptions::MergeFrom(this, a2);
  }
}

__n128 google::protobuf::OneofOptions::InternalSwap(__n128 *this, google::protobuf::Arena **a2)
{
  google::protobuf::internal::ExtensionSet::Swap(&this[1], (a2 + 2));
  sub_2769DF630(&this->n128_i64[1], a2 + 1);
  v4 = this[3].n128_u64[0];
  v5 = this[3].n128_u64[1];
  result = *(a2 + 3);
  this[3] = result;
  a2[6] = v4;
  a2[7] = v5;
  return result;
}

uint64_t google::protobuf::OneofOptions::GetMetadata(google::protobuf::OneofOptions *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[32];
  v2 = off_2812FC738[33];
  return result;
}

google::protobuf::EnumOptions *google::protobuf::EnumOptions::EnumOptions(google::protobuf::EnumOptions *this, Arena *a2)
{
  *this = &unk_2885C6D00;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(this + 16, a2);
  *(this + 6) = a2;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_EnumOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EnumOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 36) = 0;
  return this;
}

void sub_276B426FC(_Unwind_Exception *a1)
{
  sub_276B4AF6C(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

google::protobuf::EnumOptions *google::protobuf::EnumOptions::EnumOptions(google::protobuf::EnumOptions *this, const google::protobuf::EnumOptions *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C6D00;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 17) = 0;
  *(this + 52) = 0;
  *(this + 60) = 0;
  *(this + 44) = 0;
  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_276B4AFF0(this + 6, v8, (v7 + 8), v6, **(this + 8) - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = *(this + 8);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_2769F63D8(v4, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  *(this + 36) = *(a2 + 36);
  return this;
}

void google::protobuf::EnumOptions::~EnumOptions(google::protobuf::EnumOptions *this)
{
  sub_2769DEC8C(this + 1);
  sub_276B4AF6C(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::EnumOptions::~EnumOptions(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::EnumOptions::default_instance(google::protobuf::EnumOptions *this)
{
  if (atomic_load_explicit(scc_info_EnumOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EnumOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_EnumOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::EnumOptions::_InternalParse(google::protobuf::EnumOptions *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v36 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v36, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v8 = (v36 + 1);
      LODWORD(v9) = *v36;
      if ((*v36 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = (v9 + (*v8 << 7) - 128);
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v36, v9);
      v36 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_56;
      }

      v8 = TagFallback;
LABEL_7:
      v10 = v9 >> 3;
      if (v9 >> 3 == 999)
      {
        if (v9 != 58)
        {
LABEL_13:
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
            a3[10].i32[0] = v9 - 1;
            goto LABEL_2;
          }

          v13 = v9;
          if (v9 >> 6 < 0x7D)
          {
            v30 = *(this + 1);
            if (v30)
            {
              v31 = ((v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v31 = sub_2769F617C(this + 1);
              v8 = v36;
            }

            v14 = google::protobuf::internal::UnknownFieldParse(v13, v31, v8, a3, v5);
          }

          else
          {
            v14 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v9, v8, &google::protobuf::_EnumOptions_default_instance_, this + 1, a3);
          }

          v36 = v14;
          if (!v14)
          {
LABEL_56:
            v36 = 0;
            goto LABEL_2;
          }

          goto LABEL_48;
        }

        v18 = (v8 - 2);
        while (2)
        {
          v19 = (v18 + 2);
          v36 = (v18 + 2);
          v20 = *(this + 8);
          if (!v20)
          {
            v21 = *(this + 15);
            goto LABEL_28;
          }

          v25 = *(this + 14);
          v21 = *v20;
          if (v25 >= *v20)
          {
            if (v21 == *(this + 15))
            {
LABEL_28:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v21 + 1);
              v20 = *(this + 8);
              v21 = *v20;
            }

            *v20 = v21 + 1;
            v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(this + 6));
            v23 = *(this + 14);
            v24 = *(this + 8) + 8 * v23;
            *(this + 14) = v23 + 1;
            *(v24 + 8) = v22;
            v19 = v36;
          }

          else
          {
            *(this + 14) = v25 + 1;
            v22 = *&v20[2 * v25 + 2];
          }

          v18 = sub_276BD7A4C(a3, v22, v19);
          v36 = v18;
          if (!v18)
          {
            goto LABEL_56;
          }

          if (*a3 <= v18 || *v18 != 16058)
          {
            goto LABEL_48;
          }

          continue;
        }
      }

      if (v10 == 3)
      {
        if (v9 != 24)
        {
          goto LABEL_13;
        }

        v6 |= 2u;
        v16 = (v8 + 1);
        v15 = *v8;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v8 + 2);
LABEL_23:
          v36 = v16;
          *(this + 73) = v15 != 0;
          goto LABEL_48;
        }

        v32 = google::protobuf::internal::VarintParseSlow64(v8, v15);
        v36 = v32;
        *(this + 73) = v33 != 0;
        if (!v32)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v10 != 2 || v9 != 16)
        {
          goto LABEL_13;
        }

        v6 |= 1u;
        v27 = (v8 + 1);
        v26 = *v8;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_41;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if ((v28 & 0x80000000) == 0)
        {
          v27 = (v8 + 2);
LABEL_41:
          v36 = v27;
          *(this + 72) = v26 != 0;
          goto LABEL_48;
        }

        v34 = google::protobuf::internal::VarintParseSlow64(v8, v26);
        v36 = v34;
        *(this + 72) = v35 != 0;
        if (!v34)
        {
          goto LABEL_56;
        }
      }

LABEL_48:
      if (sub_2769F6104(a3, &v36, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v8 = (v36 + 2);
LABEL_6:
    v36 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 10) |= v6;
  return v36;
}

const google::protobuf::UnknownFieldSet *google::protobuf::EnumOptions::_InternalSerialize(google::protobuf::EnumOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 72);
    *v4 = 16;
    v4[1] = v7;
    v4 += 2;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(this + 73);
    *v4 = 24;
    v4[1] = v8;
    v4 += 2;
  }

  v9 = *(this + 14);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v11 = *(*(this + 8) + 8 * i + 8);
      *v4 = 16058;
      v12 = *(v11 + 5);
      if (v12 > 0x7F)
      {
        v4[2] = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v13 = v4 + 4;
          do
          {
            *(v13 - 1) = v14 | 0x80;
            v15 = v14 >> 7;
            ++v13;
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
          *(v13 - 1) = v15;
        }

        else
        {
          v4[3] = v14;
          v13 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v12;
        v13 = v4 + 3;
      }

      v4 = google::protobuf::UninterpretedOption::_InternalSerialize(v11, v13, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 1000, 0x20000000, v4, a3);
  v19 = *(this + 1);
  if (v19)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v18);
  }

  return result;
}

const InternalMetadata *google::protobuf::EnumOptions::ByteSizeLong(google::protobuf::EnumOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v6 = *(this + 14);
  v7 = (v2 + 2 * v6);
  v8 = *(this + 8);
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
      v12 = google::protobuf::UninterpretedOption::ByteSizeLong(v11, v3, v4, v5);
      v7 = (v7 + v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6));
      v10 -= 8;
    }

    while (v10);
  }

  if ((*(this + 10) & 3) != 0)
  {
    v13 = (v7 + 2 * (*(this + 10) & 1) + (*(this + 10) & 2));
  }

  else
  {
    v13 = v7;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v13, this + 11, v5);
  }

  else
  {
    *(this + 11) = v13;
    return v13;
  }
}

void google::protobuf::EnumOptions::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::EnumOptions::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::EnumOptions::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::EnumOptions::Clear(this);

    google::protobuf::EnumOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::EnumOptions::CopyFrom(google::protobuf::EnumOptions *this, const google::protobuf::EnumOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::EnumOptions::Clear(this);

    google::protobuf::EnumOptions::MergeFrom(this, a2);
  }
}

__n128 google::protobuf::EnumOptions::InternalSwap(google::protobuf::EnumOptions *this, google::protobuf::EnumOptions *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 7);
  v6 = *(this + 8);
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v5;
  *(a2 + 8) = v6;
  LOWORD(v5) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v5;
  return result;
}

uint64_t google::protobuf::EnumOptions::GetMetadata(google::protobuf::EnumOptions *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[34];
  v2 = off_2812FC738[35];
  return result;
}

google::protobuf::EnumValueOptions *google::protobuf::EnumValueOptions::EnumValueOptions(google::protobuf::EnumValueOptions *this, Arena *a2)
{
  *this = &unk_2885C6DB0;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(this + 16, a2);
  *(this + 6) = a2;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_EnumValueOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EnumValueOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 72) = 0;
  return this;
}

void sub_276B43124(_Unwind_Exception *a1)
{
  sub_276B4AF6C(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

google::protobuf::EnumValueOptions *google::protobuf::EnumValueOptions::EnumValueOptions(google::protobuf::EnumValueOptions *this, const google::protobuf::EnumValueOptions *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C6DB0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 17) = 0;
  *(this + 52) = 0;
  *(this + 60) = 0;
  *(this + 44) = 0;
  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_276B4AFF0(this + 6, v8, (v7 + 8), v6, **(this + 8) - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = *(this + 8);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_2769F63D8(v4, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  *(this + 72) = *(a2 + 72);
  return this;
}

void google::protobuf::EnumValueOptions::~EnumValueOptions(google::protobuf::EnumValueOptions *this)
{
  sub_2769DEC8C(this + 1);
  sub_276B4AF6C(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::EnumValueOptions::~EnumValueOptions(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::EnumValueOptions::default_instance(google::protobuf::EnumValueOptions *this)
{
  if (atomic_load_explicit(scc_info_EnumValueOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EnumValueOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_EnumValueOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::EnumValueOptions::_InternalParse(google::protobuf::EnumValueOptions *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v30 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v30, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v8 = (v30 + 1);
      LODWORD(v9) = *v30;
      if ((*v30 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = (v9 + (*v8 << 7) - 128);
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v30, v9);
      v30 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_48;
      }

      v8 = TagFallback;
LABEL_7:
      if (v9 >> 3 == 999)
      {
        if (v9 != 58)
        {
LABEL_12:
          if (v9)
          {
            v11 = (v9 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            a3[10].i32[0] = v9 - 1;
            goto LABEL_2;
          }

          v12 = v9;
          if (v9 >> 6 < 0x7D)
          {
            v25 = *(this + 1);
            if (v25)
            {
              v26 = ((v25 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v26 = sub_2769F617C(this + 1);
              v8 = v30;
            }

            v13 = google::protobuf::internal::UnknownFieldParse(v12, v26, v8, a3, v5);
          }

          else
          {
            v13 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v9, v8, &google::protobuf::_EnumValueOptions_default_instance_, this + 1, a3);
          }

          v30 = v13;
          if (!v13)
          {
LABEL_48:
            v30 = 0;
            goto LABEL_2;
          }

          goto LABEL_40;
        }

        v14 = (v8 - 2);
        while (2)
        {
          v15 = (v14 + 2);
          v30 = (v14 + 2);
          v16 = *(this + 8);
          if (!v16)
          {
            v17 = *(this + 15);
            goto LABEL_22;
          }

          v21 = *(this + 14);
          v17 = *v16;
          if (v21 >= *v16)
          {
            if (v17 == *(this + 15))
            {
LABEL_22:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v17 + 1);
              v16 = *(this + 8);
              v17 = *v16;
            }

            *v16 = v17 + 1;
            v18 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(this + 6));
            v19 = *(this + 14);
            v20 = *(this + 8) + 8 * v19;
            *(this + 14) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = v30;
          }

          else
          {
            *(this + 14) = v21 + 1;
            v18 = *&v16[2 * v21 + 2];
          }

          v14 = sub_276BD7A4C(a3, v18, v15);
          v30 = v14;
          if (!v14)
          {
            goto LABEL_48;
          }

          if (*a3 <= v14 || *v14 != 16058)
          {
            goto LABEL_40;
          }

          continue;
        }
      }

      if (v9 >> 3 != 1 || v9 != 8)
      {
        goto LABEL_12;
      }

      v23 = (v8 + 1);
      v22 = *v8;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = (v8 + 2);
LABEL_35:
        v30 = v23;
        *(this + 72) = v22 != 0;
        v6 = 1;
        goto LABEL_40;
      }

      v28 = google::protobuf::internal::VarintParseSlow64(v8, v22);
      v30 = v28;
      *(this + 72) = v29 != 0;
      v6 = 1;
      if (!v28)
      {
        goto LABEL_48;
      }

LABEL_40:
      if (sub_2769F6104(a3, &v30, a3[11].i32[1]))
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
  *(this + 10) |= v6;
  return v30;
}

const google::protobuf::UnknownFieldSet *google::protobuf::EnumValueOptions::_InternalSerialize(google::protobuf::EnumValueOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  if (*(this + 40))
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 72);
    *v4 = 8;
    v4[1] = v6;
    v4 += 2;
  }

  v7 = *(this + 14);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = *(*(this + 8) + 8 * i + 8);
      *v4 = 16058;
      v10 = *(v9 + 5);
      if (v10 > 0x7F)
      {
        v4[2] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 4;
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
          v4[3] = v12;
          v11 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v10;
        v11 = v4 + 3;
      }

      v4 = google::protobuf::UninterpretedOption::_InternalSerialize(v9, v11, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 1000, 0x20000000, v4, a3);
  v17 = *(this + 1);
  if (v17)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v16);
  }

  return result;
}

uint64_t google::protobuf::EnumValueOptions::ByteSizeLong(google::protobuf::EnumValueOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v6 = *(this + 14);
  v7 = v2 + 2 * v6;
  v8 = *(this + 8);
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
      v12 = google::protobuf::UninterpretedOption::ByteSizeLong(v11, v3, v4, v5);
      v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      v10 -= 8;
    }

    while (v10);
  }

  v13 = 2 * (*(this + 10) & 1);
  v14 = (v7 + v13);
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v14, this + 11, v5);
  }

  else
  {
    *(this + 11) = v14;
    return v7 + v13;
  }
}

void google::protobuf::EnumValueOptions::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::EnumValueOptions::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::EnumValueOptions::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::EnumValueOptions::Clear(this);

    google::protobuf::EnumValueOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::EnumValueOptions::CopyFrom(google::protobuf::EnumValueOptions *this, const google::protobuf::EnumValueOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::EnumValueOptions::Clear(this);

    google::protobuf::EnumValueOptions::MergeFrom(this, a2);
  }
}

__n128 google::protobuf::EnumValueOptions::InternalSwap(google::protobuf::EnumValueOptions *this, google::protobuf::EnumValueOptions *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 7);
  v6 = *(this + 8);
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v5;
  *(a2 + 8) = v6;
  LOBYTE(v5) = *(this + 72);
  *(this + 72) = *(a2 + 72);
  *(a2 + 72) = v5;
  return result;
}

uint64_t google::protobuf::EnumValueOptions::GetMetadata(google::protobuf::EnumValueOptions *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[36];
  v2 = off_2812FC738[37];
  return result;
}

google::protobuf::ServiceOptions *google::protobuf::ServiceOptions::ServiceOptions(google::protobuf::ServiceOptions *this, Arena *a2)
{
  *this = &unk_2885C6E60;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(this + 16, a2);
  *(this + 6) = a2;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_ServiceOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ServiceOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 72) = 0;
  return this;
}

void sub_276B43A94(_Unwind_Exception *a1)
{
  sub_276B4AF6C(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

google::protobuf::ServiceOptions *google::protobuf::ServiceOptions::ServiceOptions(google::protobuf::ServiceOptions *this, const google::protobuf::ServiceOptions *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C6E60;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 17) = 0;
  *(this + 52) = 0;
  *(this + 60) = 0;
  *(this + 44) = 0;
  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_276B4AFF0(this + 6, v8, (v7 + 8), v6, **(this + 8) - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = *(this + 8);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_2769F63D8(v4, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  *(this + 72) = *(a2 + 72);
  return this;
}

void google::protobuf::ServiceOptions::~ServiceOptions(google::protobuf::ServiceOptions *this)
{
  sub_2769DEC8C(this + 1);
  sub_276B4AF6C(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::ServiceOptions::~ServiceOptions(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::ServiceOptions::default_instance(google::protobuf::ServiceOptions *this)
{
  if (atomic_load_explicit(scc_info_ServiceOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ServiceOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_ServiceOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::ServiceOptions::_InternalParse(google::protobuf::ServiceOptions *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v30 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v30, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v8 = (v30 + 1);
      LODWORD(v9) = *v30;
      if ((*v30 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = (v9 + (*v8 << 7) - 128);
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v30, v9);
      v30 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_48;
      }

      v8 = TagFallback;
LABEL_7:
      if (v9 >> 3 == 999)
      {
        if (v9 != 58)
        {
LABEL_12:
          if (v9)
          {
            v11 = (v9 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            a3[10].i32[0] = v9 - 1;
            goto LABEL_2;
          }

          v12 = v9;
          if (v9 >> 6 < 0x7D)
          {
            v25 = *(this + 1);
            if (v25)
            {
              v26 = ((v25 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v26 = sub_2769F617C(this + 1);
              v8 = v30;
            }

            v13 = google::protobuf::internal::UnknownFieldParse(v12, v26, v8, a3, v5);
          }

          else
          {
            v13 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v9, v8, &google::protobuf::_ServiceOptions_default_instance_, this + 1, a3);
          }

          v30 = v13;
          if (!v13)
          {
LABEL_48:
            v30 = 0;
            goto LABEL_2;
          }

          goto LABEL_40;
        }

        v14 = (v8 - 2);
        while (2)
        {
          v15 = (v14 + 2);
          v30 = (v14 + 2);
          v16 = *(this + 8);
          if (!v16)
          {
            v17 = *(this + 15);
            goto LABEL_22;
          }

          v21 = *(this + 14);
          v17 = *v16;
          if (v21 >= *v16)
          {
            if (v17 == *(this + 15))
            {
LABEL_22:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v17 + 1);
              v16 = *(this + 8);
              v17 = *v16;
            }

            *v16 = v17 + 1;
            v18 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(this + 6));
            v19 = *(this + 14);
            v20 = *(this + 8) + 8 * v19;
            *(this + 14) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = v30;
          }

          else
          {
            *(this + 14) = v21 + 1;
            v18 = *&v16[2 * v21 + 2];
          }

          v14 = sub_276BD7A4C(a3, v18, v15);
          v30 = v14;
          if (!v14)
          {
            goto LABEL_48;
          }

          if (*a3 <= v14 || *v14 != 16058)
          {
            goto LABEL_40;
          }

          continue;
        }
      }

      if (v9 >> 3 != 33 || v9 != 8)
      {
        goto LABEL_12;
      }

      v23 = (v8 + 1);
      v22 = *v8;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = (v8 + 2);
LABEL_35:
        v30 = v23;
        *(this + 72) = v22 != 0;
        v6 = 1;
        goto LABEL_40;
      }

      v28 = google::protobuf::internal::VarintParseSlow64(v8, v22);
      v30 = v28;
      *(this + 72) = v29 != 0;
      v6 = 1;
      if (!v28)
      {
        goto LABEL_48;
      }

LABEL_40:
      if (sub_2769F6104(a3, &v30, a3[11].i32[1]))
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
  *(this + 10) |= v6;
  return v30;
}

const google::protobuf::UnknownFieldSet *google::protobuf::ServiceOptions::_InternalSerialize(google::protobuf::ServiceOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  if (*(this + 40))
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 72);
    *v4 = 648;
    v4[2] = v6;
    v4 += 3;
  }

  v7 = *(this + 14);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = *(*(this + 8) + 8 * i + 8);
      *v4 = 16058;
      v10 = *(v9 + 5);
      if (v10 > 0x7F)
      {
        v4[2] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 4;
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
          v4[3] = v12;
          v11 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v10;
        v11 = v4 + 3;
      }

      v4 = google::protobuf::UninterpretedOption::_InternalSerialize(v9, v11, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 1000, 0x20000000, v4, a3);
  v17 = *(this + 1);
  if (v17)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v16);
  }

  return result;
}

const InternalMetadata *google::protobuf::ServiceOptions::ByteSizeLong(google::protobuf::ServiceOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v6 = *(this + 14);
  v7 = v2 + 2 * v6;
  v8 = *(this + 8);
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
      v12 = google::protobuf::UninterpretedOption::ByteSizeLong(v11, v3, v4, v5);
      v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      v10 -= 8;
    }

    while (v10);
  }

  if (*(this + 40))
  {
    v13 = (v7 + 3);
  }

  else
  {
    v13 = v7;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v13, this + 11, v5);
  }

  else
  {
    *(this + 11) = v13;
    return v13;
  }
}

void google::protobuf::ServiceOptions::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::ServiceOptions::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::ServiceOptions::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::ServiceOptions::Clear(this);

    google::protobuf::ServiceOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::ServiceOptions::CopyFrom(google::protobuf::ServiceOptions *this, const google::protobuf::ServiceOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::ServiceOptions::Clear(this);

    google::protobuf::ServiceOptions::MergeFrom(this, a2);
  }
}

__n128 google::protobuf::ServiceOptions::InternalSwap(google::protobuf::ServiceOptions *this, google::protobuf::ServiceOptions *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 7);
  v6 = *(this + 8);
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v5;
  *(a2 + 8) = v6;
  LOBYTE(v5) = *(this + 72);
  *(this + 72) = *(a2 + 72);
  *(a2 + 72) = v5;
  return result;
}

uint64_t google::protobuf::ServiceOptions::GetMetadata(google::protobuf::ServiceOptions *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[38];
  v2 = off_2812FC738[39];
  return result;
}

google::protobuf::MethodOptions *google::protobuf::MethodOptions::MethodOptions(google::protobuf::MethodOptions *this, Arena *a2)
{
  *this = &unk_2885C6F10;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(this + 16, a2);
  *(this + 6) = a2;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_MethodOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_MethodOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 9) = 0;
  return this;
}

void sub_276B44408(_Unwind_Exception *a1)
{
  sub_276B4AF6C(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

google::protobuf::MethodOptions *google::protobuf::MethodOptions::MethodOptions(google::protobuf::MethodOptions *this, const google::protobuf::MethodOptions *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C6F10;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 17) = 0;
  *(this + 52) = 0;
  *(this + 60) = 0;
  *(this + 44) = 0;
  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_276B4AFF0(this + 6, v8, (v7 + 8), v6, **(this + 8) - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = *(this + 8);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_2769F63D8(v4, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  *(this + 9) = *(a2 + 9);
  return this;
}

void google::protobuf::MethodOptions::~MethodOptions(google::protobuf::MethodOptions *this)
{
  sub_2769DEC8C(this + 1);
  sub_276B4AF6C(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::MethodOptions::~MethodOptions(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::MethodOptions::default_instance(google::protobuf::MethodOptions *this)
{
  if (atomic_load_explicit(scc_info_MethodOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_MethodOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_MethodOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::MethodOptions::_InternalParse(google::protobuf::MethodOptions *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v34 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v34, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v34 + 1);
      LODWORD(v9) = *v34;
      if ((*v34 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = (v9 + (*v8 << 7) - 128);
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v34, v9);
      v34 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_59;
      }

      v8 = TagFallback;
LABEL_7:
      v10 = v9 >> 3;
      if (v9 >> 3 == 999)
      {
        if (v9 != 58)
        {
          goto LABEL_13;
        }

        v18 = (v8 - 2);
        while (2)
        {
          v19 = (v18 + 2);
          v34 = (v18 + 2);
          v20 = *(this + 8);
          if (!v20)
          {
            v21 = *(this + 15);
            goto LABEL_30;
          }

          v25 = *(this + 14);
          v21 = *v20;
          if (v25 >= *v20)
          {
            if (v21 == *(this + 15))
            {
LABEL_30:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v21 + 1);
              v20 = *(this + 8);
              v21 = *v20;
            }

            *v20 = v21 + 1;
            v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(this + 6));
            v23 = *(this + 14);
            v24 = *(this + 8) + 8 * v23;
            *(this + 14) = v23 + 1;
            *(v24 + 8) = v22;
            v19 = v34;
          }

          else
          {
            *(this + 14) = v25 + 1;
            v22 = *&v20[2 * v25 + 2];
          }

          v18 = sub_276BD7A4C(a3, v22, v19);
          v34 = v18;
          if (!v18)
          {
            goto LABEL_59;
          }

          if (*a3 <= v18 || *v18 != 16058)
          {
            goto LABEL_50;
          }

          continue;
        }
      }

      if (v10 == 34)
      {
        if (v9 == 16)
        {
          v16 = (v8 + 1);
          v15 = *v8;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_23;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if (v17 < 0)
          {
            v34 = google::protobuf::internal::VarintParseSlow64(v8, v15);
            if (!v34)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v16 = (v8 + 2);
LABEL_23:
            v34 = v16;
          }

          if (v15 > 2)
          {
            sub_276BD8518(this + 1);
          }

          else
          {
            *(this + 10) |= 2u;
            *(this + 19) = v15;
          }

          goto LABEL_50;
        }

LABEL_13:
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
          *(a3 + 20) = v9 - 1;
          goto LABEL_2;
        }

        v13 = v9;
        if (v9 >> 6 < 0x7D)
        {
          v30 = *(this + 1);
          if (v30)
          {
            v31 = ((v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v31 = sub_2769F617C(this + 1);
            v8 = v34;
          }

          v14 = google::protobuf::internal::UnknownFieldParse(v13, v31, v8, a3, v5);
        }

        else
        {
          v14 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v9, v8, &google::protobuf::_MethodOptions_default_instance_, this + 1, a3);
        }

        v34 = v14;
        if (!v14)
        {
LABEL_59:
          v34 = 0;
          goto LABEL_2;
        }

        goto LABEL_50;
      }

      if (v10 != 33 || v9 != 8)
      {
        goto LABEL_13;
      }

      v27 = (v8 + 1);
      v26 = *v8;
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_43;
      }

      v28 = *v27;
      v26 = (v28 << 7) + v26 - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v27 = (v8 + 2);
LABEL_43:
        v34 = v27;
        *(this + 72) = v26 != 0;
        v6 = 1;
        goto LABEL_50;
      }

      v32 = google::protobuf::internal::VarintParseSlow64(v8, v26);
      v34 = v32;
      *(this + 72) = v33 != 0;
      v6 = 1;
      if (!v32)
      {
        goto LABEL_59;
      }

LABEL_50:
      if (sub_2769F6104(a3, &v34, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v34 + 2);
LABEL_6:
    v34 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 10) |= v6;
  return v34;
}

const google::protobuf::UnknownFieldSet *google::protobuf::MethodOptions::_InternalSerialize(google::protobuf::MethodOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 72);
    *v4 = 648;
    v4[2] = v7;
    v4 += 3;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(this + 19);
    *v4 = 656;
    if (v8 > 0x7F)
    {
      v4[2] = v8 | 0x80;
      v9 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v4;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v4 - 1) = v10;
      }

      else
      {
        v4[3] = v9;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v8;
      v4 += 3;
    }
  }

  v12 = *(this + 14);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v14 = *(*(this + 8) + 8 * i + 8);
      *v4 = 16058;
      v15 = *(v14 + 5);
      if (v15 > 0x7F)
      {
        v4[2] = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v16 = v4 + 4;
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
          v4[3] = v17;
          v16 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v15;
        v16 = v4 + 3;
      }

      v4 = google::protobuf::UninterpretedOption::_InternalSerialize(v14, v16, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 1000, 0x20000000, v4, a3);
  v22 = *(this + 1);
  if (v22)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v22 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v21);
  }

  return result;
}

const InternalMetadata *google::protobuf::MethodOptions::ByteSizeLong(google::protobuf::MethodOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v6 = *(this + 14);
  v7 = (v2 + 2 * v6);
  v8 = *(this + 8);
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
      v12 = google::protobuf::UninterpretedOption::ByteSizeLong(v11, v3, v4, v5);
      v7 = (v7 + v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6));
      v10 -= 8;
    }

    while (v10);
  }

  v13 = *(this + 10);
  if ((v13 & 3) != 0)
  {
    if (v13)
    {
      v7 = (v7 + 3);
    }

    if ((v13 & 2) != 0)
    {
      v14 = *(this + 19);
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v14 >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 12;
      }

      v7 = (v7 + v16);
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v7, this + 11, v5);
  }

  else
  {
    *(this + 11) = v7;
    return v7;
  }
}

void google::protobuf::MethodOptions::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::MethodOptions::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::MethodOptions::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::MethodOptions::Clear(this);

    google::protobuf::MethodOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::MethodOptions::CopyFrom(google::protobuf::MethodOptions *this, const google::protobuf::MethodOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::MethodOptions::Clear(this);

    google::protobuf::MethodOptions::MergeFrom(this, a2);
  }
}

__n128 google::protobuf::MethodOptions::InternalSwap(google::protobuf::MethodOptions *this, google::protobuf::MethodOptions *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 7);
  v6 = *(this + 8);
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v5;
  *(a2 + 8) = v6;
  v8 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v8;
  return result;
}

uint64_t google::protobuf::MethodOptions::GetMetadata(google::protobuf::MethodOptions *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[40];
  v2 = off_2812FC738[41];
  return result;
}

google::protobuf::UninterpretedOption_NamePart *google::protobuf::UninterpretedOption_NamePart::UninterpretedOption_NamePart(google::protobuf::UninterpretedOption_NamePart *this, Arena *a2)
{
  *this = &unk_2885C6FC0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UninterpretedOption_NamePart_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UninterpretedOption_NamePart_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 32) = 0;
  return this;
}

google::protobuf::UninterpretedOption_NamePart *google::protobuf::UninterpretedOption_NamePart::UninterpretedOption_NamePart(google::protobuf::UninterpretedOption_NamePart *this, const google::protobuf::UninterpretedOption_NamePart *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C6FC0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2769F63D8(this + 1, ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8));
    v5 = *(a2 + 4);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  if (v5)
  {
    v7 = *v4;
    if (*v4)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 3, (*(a2 + 3) & 0xFFFFFFFFFFFFFFFELL), v7);
  }

  *(this + 32) = *(a2 + 32);
  return this;
}

void google::protobuf::UninterpretedOption_NamePart::~UninterpretedOption_NamePart(google::protobuf::UninterpretedOption_NamePart *this)
{
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  sub_2769DEC8C(this + 1);
}

{
  google::protobuf::UninterpretedOption_NamePart::~UninterpretedOption_NamePart(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::UninterpretedOption_NamePart::default_instance(google::protobuf::UninterpretedOption_NamePart *this)
{
  if (atomic_load_explicit(scc_info_UninterpretedOption_NamePart_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UninterpretedOption_NamePart_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_UninterpretedOption_NamePart_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::UninterpretedOption_NamePart::Clear(google::protobuf::UninterpretedOption_NamePart *this)
{
  if (*(this + 16))
  {
    v1 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  v3 = *(this + 8);
  result = (this + 8);
  *(result + 24) = 0;
  *(result + 2) = 0;
  if (v3)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *google::protobuf::UninterpretedOption_NamePart::_InternalParse(google::protobuf::UninterpretedOption_NamePart *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v25 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v25, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v25 + 1);
      v9 = *v25;
      if ((*v25 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v10 - 128));
      v25 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_36;
      }

      v8 = TagFallback;
      v9 = v22;
LABEL_7:
      if (v9 >> 3 != 2)
      {
        if (v9 >> 3 == 1 && v9 == 10)
        {
          *(this + 4) |= 1u;
          v19 = *(this + 1);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 3, v19);
          v15 = google::protobuf::internal::InlineGreedyStringParser(v20, v25, a3);
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
            *(a3 + 20) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(this + 1);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_2769F617C(this + 1);
            v8 = v25;
          }

          v15 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8, a3, v5);
        }

        v25 = v15;
        if (!v15)
        {
          goto LABEL_36;
        }

        goto LABEL_28;
      }

      if (v9 != 16)
      {
        goto LABEL_12;
      }

      v6 |= 2u;
      v17 = (v8 + 1);
      v16 = *v8;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = (v8 + 2);
LABEL_23:
        v25 = v17;
        *(this + 32) = v16 != 0;
        goto LABEL_28;
      }

      v23 = google::protobuf::internal::VarintParseSlow64(v8, v16);
      v25 = v23;
      *(this + 32) = v24 != 0;
      if (!v23)
      {
LABEL_36:
        v25 = 0;
        goto LABEL_2;
      }

LABEL_28:
      if (sub_2769F6104(a3, &v25, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v25 + 2);
LABEL_6:
    v25 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v25;
}

const google::protobuf::UnknownFieldSet *google::protobuf::UninterpretedOption_NamePart::_InternalSerialize(google::protobuf::UninterpretedOption_NamePart *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_2769E1AB4(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(this + 32);
    *v4 = 16;
    v4[1] = v7;
    v4 += 2;
  }

  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t google::protobuf::UninterpretedOption_NamePart::RequiredFieldsByteSizeFallback(google::protobuf::UninterpretedOption_NamePart *this)
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

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 + (v1 & 2);
}

const InternalMetadata *google::protobuf::UninterpretedOption_NamePart::ByteSizeLong(google::protobuf::UninterpretedOption_NamePart *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v8 = google::protobuf::UninterpretedOption_NamePart::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v8 = (v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 3);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v8, this + 5, a4);
  }

  else
  {
    *(this + 5) = v8;
    return v8;
  }
}

void google::protobuf::UninterpretedOption_NamePart::MergeFrom(google::protobuf::UninterpretedOption_NamePart *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::UninterpretedOption_NamePart::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *google::protobuf::UninterpretedOption_NamePart::MergeFrom(void *this, const google::protobuf::UninterpretedOption_NamePart *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v6 = *(a2 + 3);
      *(v3 + 4) |= 1u;
      v7 = v3[1];
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set(v3 + 3, (v6 & 0xFFFFFFFFFFFFFFFELL), v7);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 4) |= v5;
  }

  return this;
}

void google::protobuf::UninterpretedOption_NamePart::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::UninterpretedOption_NamePart::Clear(this);

    google::protobuf::UninterpretedOption_NamePart::MergeFrom(this, a2);
  }
}

google::protobuf::UninterpretedOption_NamePart *google::protobuf::UninterpretedOption_NamePart::CopyFrom(google::protobuf::UninterpretedOption_NamePart *this, const google::protobuf::UninterpretedOption_NamePart *a2)
{
  if (a2 != this)
  {
    v4 = this;
    google::protobuf::UninterpretedOption_NamePart::Clear(this);

    return google::protobuf::UninterpretedOption_NamePart::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *google::protobuf::UninterpretedOption_NamePart::InternalSwap(google::protobuf::UninterpretedOption_NamePart *this, google::protobuf::Arena **a2)
{
  result = sub_2769DF630(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = a2[3];
  a2[3] = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  return result;
}

uint64_t google::protobuf::UninterpretedOption_NamePart::GetMetadata(google::protobuf::UninterpretedOption_NamePart *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[42];
  v2 = off_2812FC738[43];
  return result;
}

google::protobuf::UninterpretedOption *google::protobuf::UninterpretedOption::UninterpretedOption(google::protobuf::UninterpretedOption *this, Arena *a2)
{
  *this = &unk_2885C7070;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_UninterpretedOption_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UninterpretedOption_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 8) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  return this;
}

google::protobuf::UninterpretedOption *google::protobuf::UninterpretedOption::UninterpretedOption(google::protobuf::UninterpretedOption *this, const google::protobuf::UninterpretedOption *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C7070;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24), *(a2 + 8));
    sub_276B4B47C(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_2769F63D8(v4, ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  v11 = *(a2 + 4);
  if (v11)
  {
    v12 = *v4;
    if (*v4)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 6, (*(a2 + 6) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 4);
  }

  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v11 & 2) != 0)
  {
    v13 = *v4;
    if (*v4)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 7, (*(a2 + 7) & 0xFFFFFFFFFFFFFFFELL), v13);
    v11 = *(a2 + 4);
  }

  *(this + 8) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v11 & 4) != 0)
  {
    v14 = *v4;
    if (*v4)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 8, (*(a2 + 8) & 0xFFFFFFFFFFFFFFFELL), v14);
  }

  v15 = *(a2 + 72);
  *(this + 11) = *(a2 + 11);
  *(this + 72) = v15;
  return this;
}

void google::protobuf::UninterpretedOption::~UninterpretedOption(google::protobuf::UninterpretedOption *this)
{
  v2 = *(this + 6);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  v3 = *(this + 7);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    MEMORY[0x277C9F670](v3, 0x1012C40EC159624);
  }

  v4 = *(this + 8);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x277C9F670](v4, 0x1012C40EC159624);
  }

  sub_2769DEC8C(this + 1);
  sub_276B4B3F8(this + 3);
}

{
  google::protobuf::UninterpretedOption::~UninterpretedOption(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::UninterpretedOption::default_instance(google::protobuf::UninterpretedOption *this)
{
  if (atomic_load_explicit(scc_info_UninterpretedOption_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UninterpretedOption_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_UninterpretedOption_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::UninterpretedOption::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = google::protobuf::UninterpretedOption_NamePart::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 7) != 0)
  {
    if ((v5 & 1) == 0)
    {
      if ((v5 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
        if ((v5 & 4) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
        if ((v5 & 4) == 0)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_18;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v5 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_21;
    }

LABEL_18:
    v8 = *(v1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
    }
  }

LABEL_21:
  if ((v5 & 0x38) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
  }

  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_2769F6424(v9);
  }

  return this;
}

google::protobuf::internal *google::protobuf::UninterpretedOption::_InternalParse(google::protobuf::UninterpretedOption *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v39 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v39, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v39 + 1);
      v9 = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v10 - 128));
      v39 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_73;
      }

      v8 = TagFallback;
      v9 = v18;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 4)
      {
        if (v11 == 2)
        {
          if (v9 != 18)
          {
            goto LABEL_57;
          }

          v19 = (v8 - 1);
          while (2)
          {
            v20 = (v19 + 1);
            v39 = (v19 + 1);
            v21 = *(this + 5);
            if (!v21)
            {
              v22 = *(this + 9);
              goto LABEL_33;
            }

            v26 = *(this + 8);
            v22 = *v21;
            if (v26 >= *v21)
            {
              if (v22 == *(this + 9))
              {
LABEL_33:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v22 + 1);
                v21 = *(this + 5);
                v22 = *v21;
              }

              *v21 = v22 + 1;
              v23 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption_NamePart>(*(this + 3));
              v24 = *(this + 8);
              v25 = *(this + 5) + 8 * v24;
              *(this + 8) = v24 + 1;
              *(v25 + 8) = v23;
              v20 = v39;
            }

            else
            {
              *(this + 8) = v26 + 1;
              v23 = *&v21[2 * v26 + 2];
            }

            v19 = sub_276BD826C(a3, v23, v20);
            v39 = v19;
            if (!v19)
            {
              goto LABEL_73;
            }

            if (*a3 <= v19 || *v19 != 18)
            {
              goto LABEL_65;
            }

            continue;
          }
        }

        if (v11 == 3)
        {
          if (v9 == 26)
          {
            *(this + 4) |= 1u;
            v15 = *(this + 1);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = (this + 48);
LABEL_56:
            v30 = google::protobuf::internal::ArenaStringPtr::Mutable(v16, v15);
            v31 = google::protobuf::internal::InlineGreedyStringParser(v30, v39, a3);
LABEL_64:
            v39 = v31;
            if (!v31)
            {
              goto LABEL_73;
            }

            goto LABEL_65;
          }

LABEL_57:
          if (v9)
          {
            v32 = (v9 & 7) == 4;
          }

          else
          {
            v32 = 1;
          }

          if (v32)
          {
            *(a3 + 20) = v9 - 1;
            goto LABEL_2;
          }

          v33 = *(this + 1);
          if (v33)
          {
            v34 = ((v33 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v34 = sub_2769F617C(this + 1);
            v8 = v39;
          }

          v31 = google::protobuf::internal::UnknownFieldParse(v9, v34, v8, a3, v5);
          goto LABEL_64;
        }

        if (v11 != 4 || v9 != 32)
        {
          goto LABEL_57;
        }

        v6 |= 8u;
        v13 = (v8 + 1);
        v12 = *v8;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_20;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v8 + 2);
LABEL_20:
          v39 = v13;
          *(this + 9) = v12;
          goto LABEL_65;
        }

        v37 = google::protobuf::internal::VarintParseSlow64(v8, v12);
        v39 = v37;
        *(this + 9) = v38;
        if (!v37)
        {
LABEL_73:
          v39 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v9 >> 3 > 6)
        {
          if (v11 == 7)
          {
            if (v9 == 58)
            {
              *(this + 4) |= 2u;
              v15 = *(this + 1);
              if (v15)
              {
                v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
              }

              v16 = (this + 56);
              goto LABEL_56;
            }
          }

          else if (v11 == 8 && v9 == 66)
          {
            *(this + 4) |= 4u;
            v15 = *(this + 1);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = (this + 64);
            goto LABEL_56;
          }

          goto LABEL_57;
        }

        if (v11 == 5)
        {
          if (v9 != 40)
          {
            goto LABEL_57;
          }

          v6 |= 0x10u;
          v28 = (v8 + 1);
          v27 = *v8;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_47;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if ((v29 & 0x80000000) == 0)
          {
            v28 = (v8 + 2);
LABEL_47:
            v39 = v28;
            *(this + 10) = v27;
            goto LABEL_65;
          }

          v35 = google::protobuf::internal::VarintParseSlow64(v8, v27);
          v39 = v35;
          *(this + 10) = v36;
          if (!v35)
          {
            goto LABEL_73;
          }
        }

        else
        {
          if (v11 != 6 || v9 != 49)
          {
            goto LABEL_57;
          }

          v6 |= 0x20u;
          *(this + 11) = *v8;
          v39 = (v8 + 8);
        }
      }

LABEL_65:
      if (sub_2769F6104(a3, &v39, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v39 + 2);
LABEL_6:
    v39 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v39;
}

const google::protobuf::UnknownFieldSet *google::protobuf::UninterpretedOption::_InternalSerialize(google::protobuf::UninterpretedOption *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 8);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
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

      a2 = google::protobuf::UninterpretedOption_NamePart::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 4);
  if (v14)
  {
    a2 = sub_2769E1AB4(a3, 3, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v14 & 8) == 0)
    {
LABEL_15:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_16;
      }

LABEL_34:
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v21 = *(this + 10);
      *a2 = 40;
      if (v21 > 0x7F)
      {
        a2[1] = v21 | 0x80;
        v22 = v21 >> 7;
        if (v21 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v22 | 0x80;
            v23 = v22 >> 7;
            ++a2;
            v24 = v22 >> 14;
            v22 >>= 7;
          }

          while (v24);
          *(a2 - 1) = v23;
          if ((v14 & 0x20) != 0)
          {
            goto LABEL_45;
          }
        }

        else
        {
          a2[2] = v22;
          a2 += 3;
          if ((v14 & 0x20) != 0)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        a2[1] = v21;
        a2 += 2;
        if ((v14 & 0x20) != 0)
        {
          goto LABEL_45;
        }
      }

LABEL_17:
      if ((v14 & 2) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_48;
    }
  }

  else if ((v14 & 8) == 0)
  {
    goto LABEL_15;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(this + 9);
  *a2 = 32;
  if (v17 > 0x7F)
  {
    a2[1] = v17 | 0x80;
    v18 = v17 >> 7;
    if (v17 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v18 | 0x80;
        v19 = v18 >> 7;
        ++a2;
        v20 = v18 >> 14;
        v18 >>= 7;
      }

      while (v20);
      *(a2 - 1) = v19;
      if ((v14 & 0x10) != 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      a2[2] = v18;
      a2 += 3;
      if ((v14 & 0x10) != 0)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    a2[1] = v17;
    a2 += 2;
    if ((v14 & 0x10) != 0)
    {
      goto LABEL_34;
    }
  }

LABEL_16:
  if ((v14 & 0x20) == 0)
  {
    goto LABEL_17;
  }

LABEL_45:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 11);
  *a2 = 49;
  *(a2 + 1) = v25;
  a2 += 9;
  if ((v14 & 2) == 0)
  {
LABEL_18:
    if ((v14 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_48:
  a2 = sub_2769E1AB4(a3, 7, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v14 & 4) != 0)
  {
LABEL_19:
    a2 = sub_2769E1AB4(a3, 8, (*(this + 8) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_20:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a2);
}

const InternalMetadata *google::protobuf::UninterpretedOption::ByteSizeLong(google::protobuf::UninterpretedOption *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 8);
  v6 = *(this + 5);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = 8 * v5;
    do
    {
      v9 = *v7++;
      v10 = google::protobuf::UninterpretedOption_NamePart::ByteSizeLong(v9, a2, a3, a4);
      v5 = (v5 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6));
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  v11 = *(this + 4);
  if ((v11 & 0x3F) == 0)
  {
    goto LABEL_18;
  }

  if (v11)
  {
    v13 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v5 = (v5 + v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v11 & 2) == 0)
    {
LABEL_12:
      if ((v11 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_12;
  }

  v16 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  v5 = (v5 + v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v11 & 4) == 0)
  {
LABEL_13:
    if ((v11 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_26:
  v19 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(v19 + 23);
  v21 = *(v19 + 8);
  if ((v20 & 0x80u) == 0)
  {
    v21 = v20;
  }

  v5 = (v5 + v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v11 & 8) == 0)
  {
LABEL_14:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_29:
  v5 = (v5 + ((9 * (__clz(*(this + 9) | 1) ^ 0x3F) + 73) >> 6) + 1);
  if ((v11 & 0x10) != 0)
  {
LABEL_15:
    v5 = (v5 + ((9 * (__clz(*(this + 10) | 1) ^ 0x3F) + 73) >> 6) + 1);
  }

LABEL_16:
  if ((v11 & 0x20) != 0)
  {
    v5 = (v5 + 9);
  }

LABEL_18:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 5, a4);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

void google::protobuf::UninterpretedOption::MergeFrom(google::protobuf::UninterpretedOption *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::UninterpretedOption::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *google::protobuf::UninterpretedOption::MergeFrom(void *this, const google::protobuf::UninterpretedOption *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 3), *(a2 + 8));
    this = sub_276B4B47C(v3 + 3, v7, (v6 + 8), v5, *v3[5] - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = v3[5];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 0x3F) != 0)
  {
    if (v10)
    {
      v11 = *(a2 + 6);
      *(v3 + 4) |= 1u;
      v12 = v3[1];
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set(v3 + 6, (v11 & 0xFFFFFFFFFFFFFFFELL), v12);
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_22;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    v13 = *(a2 + 7);
    *(v3 + 4) |= 2u;
    v14 = v3[1];
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(v3 + 7, (v13 & 0xFFFFFFFFFFFFFFFELL), v14);
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }

LABEL_22:
    v15 = *(a2 + 8);
    *(v3 + 4) |= 4u;
    v16 = v3[1];
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(v3 + 8, (v15 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }

LABEL_25:
    v3[9] = *(a2 + 9);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
LABEL_14:
        *(v3 + 4) |= v10;
        return this;
      }

LABEL_13:
      v3[11] = *(a2 + 11);
      goto LABEL_14;
    }

LABEL_26:
    v3[10] = *(a2 + 10);
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return this;
}

void google::protobuf::UninterpretedOption::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::UninterpretedOption::Clear(this);

    google::protobuf::UninterpretedOption::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *google::protobuf::UninterpretedOption::CopyFrom(google::protobuf::UnknownFieldSet *this, const google::protobuf::UninterpretedOption *a2)
{
  if (a2 != this)
  {
    v4 = this;
    google::protobuf::UninterpretedOption::Clear(this);

    return google::protobuf::UninterpretedOption::MergeFrom(v4, a2);
  }

  return this;
}

BOOL google::protobuf::UninterpretedOption::IsInitialized(google::protobuf::UninterpretedOption *this)
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

  while ((~*(v3 + 16) & 3) == 0);
  return v2 < 1;
}

__n128 google::protobuf::UninterpretedOption::InternalSwap(google::protobuf::UninterpretedOption *this, google::protobuf::UninterpretedOption *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v8;
  v9 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = *(this + 9);
  v11 = *(this + 10);
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v10;
  *(a2 + 10) = v11;
  v13 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v13;
  return result;
}

uint64_t google::protobuf::UninterpretedOption::GetMetadata(google::protobuf::UninterpretedOption *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[44];
  v2 = off_2812FC738[45];
  return result;
}

google::protobuf::SourceCodeInfo_Location *google::protobuf::SourceCodeInfo_Location::SourceCodeInfo_Location(google::protobuf::SourceCodeInfo_Location *this, Arena *a2)
{
  *(this + 4) = a2;
  *this = &unk_2885C7120;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 13) = 0;
  *(this + 7) = a2;
  *(this + 9) = a2;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (atomic_load_explicit(scc_info_SourceCodeInfo_Location_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SourceCodeInfo_Location_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 12) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 13) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

void sub_276B468E8(_Unwind_Exception *a1)
{
  sub_276B4A5CC(v5);
  sub_276BD2A48(v3, v4, (v1 + 28), v2);
  _Unwind_Resume(a1);
}

google::protobuf::SourceCodeInfo_Location *google::protobuf::SourceCodeInfo_Location::SourceCodeInfo_Location(google::protobuf::SourceCodeInfo_Location *this, const google::protobuf::SourceCodeInfo_Location *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C7120;
  *(this + 4) = *(a2 + 4);
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  if (*(a2 + 6))
  {
    google::protobuf::RepeatedField<int>::Reserve();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  if (*(a2 + 12))
  {
    google::protobuf::RepeatedField<int>::Reserve();
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v5 = *(a2 + 20);
  if (v5)
  {
    v6 = *(a2 + 11);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72), *(a2 + 20));
    sub_276B4A878(this + 3, v7, (v6 + 8), v5, **(this + 11) - *(this + 20));
    v8 = *(this + 20) + v5;
    *(this + 20) = v8;
    v9 = *(this + 11);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_2769F63D8(v4, ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 12) = &google::protobuf::internal::fixed_address_empty_string;
  v11 = *(a2 + 4);
  if (v11)
  {
    v12 = *v4;
    if (*v4)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 12, (*(a2 + 12) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 4);
  }

  *(this + 13) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v11 & 2) != 0)
  {
    v13 = *v4;
    if (*v4)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 13, (*(a2 + 13) & 0xFFFFFFFFFFFFFFFELL), v13);
  }

  return this;
}

void sub_276B46ADC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    v3 = *(v1 + 32);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::SourceCodeInfo_Location::~SourceCodeInfo_Location(google::protobuf::SourceCodeInfo_Location *this)
{
  v2 = *(this + 12);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  v3 = *(this + 13);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    MEMORY[0x277C9F670](v3, 0x1012C40EC159624);
  }

  sub_2769DEC8C(this + 1);
  sub_276B4A5CC(this + 9);
  if (*(this + 13) >= 1)
  {
    v4 = *(this + 7);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

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
  google::protobuf::SourceCodeInfo_Location::~SourceCodeInfo_Location(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::SourceCodeInfo_Location::default_instance(google::protobuf::SourceCodeInfo_Location *this)
{
  if (atomic_load_explicit(scc_info_SourceCodeInfo_Location_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SourceCodeInfo_Location_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_SourceCodeInfo_Location_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::SourceCodeInfo_Location::Clear(google::protobuf::SourceCodeInfo_Location *this)
{
  *(this + 6) = 0;
  *(this + 12) = 0;
  result = google::protobuf::RepeatedPtrField<std::string>::Clear(this + 72);
  v3 = *(this + 4);
  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v4 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
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
    v5 = *(this + 13) & 0xFFFFFFFFFFFFFFFELL;
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
  v7 = *(this + 8);
  v6 = this + 8;
  *(v6 + 2) = 0;
  if (v7)
  {

    return sub_2769F6424(v6);
  }

  return result;
}

google::protobuf::internal *google::protobuf::SourceCodeInfo_Location::_InternalParse(google::protobuf::SourceCodeInfo_Location *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v31 = a2;
  for (i = *(a3 + 23); ; i = *(a3 + 23))
  {
    if (sub_2769F6104(a3, &v31, i))
    {
      return v31;
    }

    v8 = (v31 + 1);
    v9 = *v31;
    if ((*v31 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v10 = v9 + (*v8 << 7);
    v9 = v10 - 128;
    if ((*v8 & 0x80000000) == 0)
    {
      v8 = (v31 + 2);
LABEL_6:
      v31 = v8;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v31, (v10 - 128));
    v31 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v8 = TagFallback;
    v9 = v26;
LABEL_7:
    v11 = v9 >> 3;
    if (v9 >> 3 > 2)
    {
      if (v11 == 3)
      {
        if (v9 != 26)
        {
          goto LABEL_46;
        }

        *(this + 4) |= 1u;
        v21 = *(this + 1);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = (this + 96);
      }

      else
      {
        if (v11 != 4)
        {
          if (v11 == 6 && v9 == 50)
          {
            v12 = v8 - 1;
            while (1)
            {
              v13 = (v12 + 1);
              v31 = (v12 + 1);
              v14 = *(this + 11);
              if (!v14)
              {
                break;
              }

              v15 = *(this + 20);
              v16 = *v14;
              if (v15 >= *v14)
              {
                if (v16 == *(this + 21))
                {
LABEL_18:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 18, v16 + 1);
                  v14 = *(this + 11);
                  v16 = *v14;
                }

                *v14 = v16 + 1;
                v17 = sub_2769C64F4(*(this + 9));
                v18 = *(this + 20);
                v19 = *(this + 11) + 8 * v18;
                *(this + 20) = v18 + 1;
                *(v19 + 8) = v17;
                v13 = v31;
                goto LABEL_20;
              }

              *(this + 20) = v15 + 1;
              v17 = *&v14[2 * v15 + 2];
LABEL_20:
              v12 = google::protobuf::internal::InlineGreedyStringParser(v17, v13, a3);
              v31 = v12;
              if (!v12)
              {
                return 0;
              }

              if (*a3 <= v12 || *v12 != 50)
              {
                goto LABEL_54;
              }
            }

            v16 = *(this + 21);
            goto LABEL_18;
          }

          goto LABEL_46;
        }

        if (v9 != 34)
        {
          goto LABEL_46;
        }

        *(this + 4) |= 2u;
        v21 = *(this + 1);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = (this + 104);
      }

      v23 = google::protobuf::internal::ArenaStringPtr::Mutable(v22, v21);
      v24 = google::protobuf::internal::InlineGreedyStringParser(v23, v31, a3);
      goto LABEL_53;
    }

    if (v11 == 1)
    {
      if (v9 == 10)
      {
        v20 = (this + 24);
        goto LABEL_39;
      }

      if (v9 == 8)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v11 != 2)
      {
        goto LABEL_46;
      }

      if (v9 == 18)
      {
        v20 = (this + 48);
LABEL_39:
        v24 = google::protobuf::internal::PackedInt32Parser(v20, v8, a3, v6);
        goto LABEL_53;
      }

      if (v9 == 16)
      {
LABEL_45:
        v32 = sub_2769DF0C0(&v31);
        google::protobuf::RepeatedField<int>::Add();
      }
    }

LABEL_46:
    if (!v9 || (v9 & 7) == 4)
    {
      break;
    }

    v28 = *(this + 1);
    if (v28)
    {
      v29 = ((v28 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v29 = sub_2769F617C(this + 1);
      v8 = v31;
    }

    v24 = google::protobuf::internal::UnknownFieldParse(v9, v29, v8, a3, v7);
LABEL_53:
    v31 = v24;
    if (!v24)
    {
      return 0;
    }

LABEL_54:
    ;
  }

  *(a3 + 20) = v9 - 1;
  return v31;
}

const google::protobuf::UnknownFieldSet *google::protobuf::SourceCodeInfo_Location::_InternalSerialize(google::protobuf::SourceCodeInfo_Location *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6 >= 1)
  {
    v4 = sub_276B4B53C(a3, 1, this + 6, v6, a2, google::protobuf::io::EpsCopyOutputStream::Encode64);
  }

  v7 = *(this + 16);
  if (v7 >= 1)
  {
    v4 = sub_276B4B53C(a3, 2, this + 12, v7, v4, google::protobuf::io::EpsCopyOutputStream::Encode64);
  }

  v8 = *(this + 4);
  if (v8)
  {
    v4 = sub_2769E1AB4(a3, 3, (*(this + 12) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  if ((v8 & 2) != 0)
  {
    v4 = sub_2769E1AB4(a3, 4, (*(this + 13) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v9 = *(this + 20);
  if (v9 >= 1)
  {
    v10 = 8;
    do
    {
      v4 = sub_276B32608(a3, 6, *(*(this + 11) + v10), v4);
      v10 += 8;
      --v9;
    }

    while (v9);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v11 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v7);
}

const InternalMetadata *google::protobuf::SourceCodeInfo_Location::ByteSizeLong(google::protobuf::SourceCodeInfo_Location *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 6);
  if (v2)
  {
    v3 = v2;
    if ((v2 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *(this + 10) = v3;
  v5 = v4 + v2;
  v6 = google::protobuf::internal::WireFormatLite::Int32Size(this + 12);
  if (v6)
  {
    v8 = v6;
    if ((v6 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v5 += v9;
  }

  else
  {
    v8 = 0;
  }

  *(this + 16) = v8;
  v10 = *(this + 20);
  v11 = (v5 + v6 + v10);
  if (v10 >= 1)
  {
    v12 = (*(this + 11) + 8);
    do
    {
      v13 = *v12++;
      v14 = *(v13 + 23);
      v15 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      v11 = (v11 + v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6));
      --v10;
    }

    while (v10);
  }

  v16 = *(this + 4);
  if ((v16 & 3) != 0)
  {
    if (v16)
    {
      v17 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v17 + 23);
      v19 = *(v17 + 8);
      if ((v18 & 0x80u) == 0)
      {
        v19 = v18;
      }

      v11 = (v11 + v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1);
    }

    if ((v16 & 2) != 0)
    {
      v20 = *(this + 13) & 0xFFFFFFFFFFFFFFFELL;
      v21 = *(v20 + 23);
      v22 = *(v20 + 8);
      if ((v21 & 0x80u) == 0)
      {
        v22 = v21;
      }

      v11 = (v11 + v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1);
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v11, this + 5, v7);
  }

  else
  {
    *(this + 5) = v11;
    return v11;
  }
}

void google::protobuf::SourceCodeInfo_Location::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::SourceCodeInfo_Location::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *google::protobuf::SourceCodeInfo_Location::MergeFrom(std::string *this, const google::protobuf::SourceCodeInfo_Location *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(&this->__r_.__value_.__l.__size_, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 6))
  {
    data_low = SLODWORD(v3[1].__r_.__value_.__l.__data_);
    google::protobuf::RepeatedField<int>::Reserve();
  }

  if (*(a2 + 12))
  {
    v6 = SLODWORD(v3[2].__r_.__value_.__l.__data_);
    google::protobuf::RepeatedField<int>::Reserve();
  }

  v7 = *(a2 + 20);
  if (v7)
  {
    v8 = *(a2 + 11);
    v9 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v3[3], *(a2 + 20));
    this = sub_276B4A878(v3 + 3, v9, (v8 + 8), v7, *v3[3].__r_.__value_.__r.__words[2] - LODWORD(v3[3].__r_.__value_.__r.__words[1]));
    v10 = LODWORD(v3[3].__r_.__value_.__r.__words[1]) + v7;
    LODWORD(v3[3].__r_.__value_.__r.__words[1]) = v10;
    v11 = v3[3].__r_.__value_.__r.__words[2];
    if (*v11 < v10)
    {
      *v11 = v10;
    }
  }

  v12 = *(a2 + 4);
  if ((v12 & 3) != 0)
  {
    if (v12)
    {
      v13 = *(a2 + 12);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 1u;
      size = v3->__r_.__value_.__l.__size_;
      if (size)
      {
        size = *(size & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set(v3[4].__r_.__value_.__r.__words, (v13 & 0xFFFFFFFFFFFFFFFELL), size);
    }

    if ((v12 & 2) != 0)
    {
      v15 = *(a2 + 13);
      LODWORD(v3->__r_.__value_.__r.__words[2]) |= 2u;
      v16 = v3->__r_.__value_.__l.__size_;
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      return google::protobuf::internal::ArenaStringPtr::Set(&v3[4].__r_.__value_.__l.__size_, (v15 & 0xFFFFFFFFFFFFFFFELL), v16);
    }
  }

  return this;
}

void google::protobuf::SourceCodeInfo_Location::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::SourceCodeInfo_Location::Clear(this);

    google::protobuf::SourceCodeInfo_Location::MergeFrom(this, a2);
  }
}

std::string *google::protobuf::SourceCodeInfo_Location::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    google::protobuf::SourceCodeInfo_Location::Clear(this);

    return google::protobuf::SourceCodeInfo_Location::MergeFrom(v4, a2);
  }

  return this;
}

__n128 google::protobuf::SourceCodeInfo_Location::InternalSwap(google::protobuf::SourceCodeInfo_Location *this, google::protobuf::SourceCodeInfo_Location *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v7 = *(this + 6);
  v8 = *(this + 7);
  *(this + 3) = *(a2 + 3);
  *(a2 + 6) = v7;
  *(a2 + 7) = v8;
  v9 = *(this + 10);
  v10 = *(this + 11);
  result = *(a2 + 5);
  *(this + 5) = result;
  *(a2 + 10) = v9;
  *(a2 + 11) = v10;
  v12 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v12;
  v13 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v13;
  return result;
}

uint64_t google::protobuf::SourceCodeInfo_Location::GetMetadata(google::protobuf::SourceCodeInfo_Location *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[46];
  v2 = off_2812FC738[47];
  return result;
}

google::protobuf::SourceCodeInfo *google::protobuf::SourceCodeInfo::SourceCodeInfo(google::protobuf::SourceCodeInfo *this, Arena *a2)
{
  *this = &unk_2885C71D0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_SourceCodeInfo_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SourceCodeInfo_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return this;
}

google::protobuf::SourceCodeInfo *google::protobuf::SourceCodeInfo::SourceCodeInfo(google::protobuf::SourceCodeInfo *this, const google::protobuf::SourceCodeInfo *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C71D0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    sub_276B2F184(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 10) = 0;
  v11 = *(a2 + 1);
  if (v11)
  {
    sub_2769F63D8(v4, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

void google::protobuf::SourceCodeInfo::~SourceCodeInfo(google::protobuf::SourceCodeInfo *this)
{
  sub_2769DEC8C(this + 1);
  sub_276B2F01C(this + 2);
}

{
  google::protobuf::SourceCodeInfo::~SourceCodeInfo(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::SourceCodeInfo::default_instance(google::protobuf::SourceCodeInfo *this)
{
  if (atomic_load_explicit(scc_info_SourceCodeInfo_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_SourceCodeInfo_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_SourceCodeInfo_default_instance_;
}

google::protobuf::internal *google::protobuf::SourceCodeInfo::_InternalParse(google::protobuf::SourceCodeInfo *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v23 = a2;
  if ((sub_2769F6104(a3, &v23, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v23 + 1);
      v7 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v8 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v21;
LABEL_6:
      if (v7 == 10)
      {
        v12 = (v6 - 1);
        while (1)
        {
          v13 = (v12 + 1);
          v23 = (v12 + 1);
          v14 = *(this + 4);
          if (!v14)
          {
            break;
          }

          v19 = *(this + 6);
          v15 = *v14;
          if (v19 < *v14)
          {
            *(this + 6) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
            goto LABEL_23;
          }

          if (v15 == *(this + 7))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v14 = v15 + 1;
          v16 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceCodeInfo_Location>(*(this + 2));
          v17 = *(this + 6);
          v18 = *(this + 4) + 8 * v17;
          *(this + 6) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v23;
LABEL_23:
          v12 = sub_276BD833C(a3, v16, v13);
          v23 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_14;
          }
        }

        v15 = *(this + 7);
LABEL_19:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, v15 + 1);
        v14 = *(this + 4);
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
        *(a3 + 20) = v7 - 1;
        return v23;
      }

      v10 = *(this + 1);
      if (v10)
      {
        v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v11 = sub_2769F617C(this + 1);
        v6 = v23;
      }

      v23 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6, a3, v5);
      if (!v23)
      {
        return 0;
      }

LABEL_14:
      if (sub_2769F6104(a3, &v23, *(a3 + 23)))
      {
        return v23;
      }
    }

    v6 = (v23 + 2);
LABEL_5:
    v23 = v6;
    goto LABEL_6;
  }

  return v23;
}

const google::protobuf::UnknownFieldSet *google::protobuf::SourceCodeInfo::_InternalSerialize(google::protobuf::SourceCodeInfo *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

      a2 = google::protobuf::SourceCodeInfo_Location::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *google::protobuf::SourceCodeInfo::ByteSizeLong(google::protobuf::SourceCodeInfo *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 6);
  v6 = *(this + 4);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = 8 * v5;
    do
    {
      v9 = *v7++;
      v10 = google::protobuf::SourceCodeInfo_Location::ByteSizeLong(v9);
      v5 = (v5 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6));
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 10, a4);
  }

  else
  {
    *(this + 10) = v5;
    return v5;
  }
}

void google::protobuf::SourceCodeInfo::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::SourceCodeInfo::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::SourceCodeInfo::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::SourceCodeInfo::Clear(this);

    google::protobuf::SourceCodeInfo::MergeFrom(this, a2);
  }
}

std::string *google::protobuf::SourceCodeInfo::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    google::protobuf::SourceCodeInfo::Clear(this);

    return google::protobuf::SourceCodeInfo::MergeFrom(v4, a2);
  }

  return this;
}

__n128 google::protobuf::SourceCodeInfo::InternalSwap(google::protobuf::SourceCodeInfo *this, google::protobuf::SourceCodeInfo *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t google::protobuf::SourceCodeInfo::GetMetadata(google::protobuf::SourceCodeInfo *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[48];
  v2 = off_2812FC738[49];
  return result;
}

google::protobuf::GeneratedCodeInfo_Annotation *google::protobuf::GeneratedCodeInfo_Annotation::GeneratedCodeInfo_Annotation(google::protobuf::GeneratedCodeInfo_Annotation *this, Arena *a2)
{
  *(this + 4) = a2;
  *this = &unk_2885C7280;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (atomic_load_explicit(scc_info_GeneratedCodeInfo_Annotation_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_GeneratedCodeInfo_Annotation_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 7) = 0;
  return this;
}

void sub_276B47F74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    sub_276BD2A14(v2);
  }

  _Unwind_Resume(exception_object);
}

google::protobuf::GeneratedCodeInfo_Annotation *google::protobuf::GeneratedCodeInfo_Annotation::GeneratedCodeInfo_Annotation(google::protobuf::GeneratedCodeInfo_Annotation *this, const google::protobuf::GeneratedCodeInfo_Annotation *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C7280;
  *(this + 4) = *(a2 + 4);
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  if (*(a2 + 6))
  {
    google::protobuf::RepeatedField<int>::Reserve();
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2769F63D8(v4, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  if (*(a2 + 16))
  {
    v6 = *v4;
    if (*v4)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 6, (*(a2 + 6) & 0xFFFFFFFFFFFFFFFELL), v6);
  }

  *(this + 7) = *(a2 + 7);
  return this;
}

void sub_276B4808C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    sub_276BD8554(v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::GeneratedCodeInfo_Annotation::~GeneratedCodeInfo_Annotation(google::protobuf::GeneratedCodeInfo_Annotation *this)
{
  v2 = *(this + 6);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  sub_2769DEC8C(this + 1);
  if (*(this + 7) >= 1)
  {
    v3 = *(this + 4);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }
}

{
  google::protobuf::GeneratedCodeInfo_Annotation::~GeneratedCodeInfo_Annotation(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::GeneratedCodeInfo_Annotation::default_instance(google::protobuf::GeneratedCodeInfo_Annotation *this)
{
  if (atomic_load_explicit(scc_info_GeneratedCodeInfo_Annotation_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_GeneratedCodeInfo_Annotation_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_GeneratedCodeInfo_Annotation_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::GeneratedCodeInfo_Annotation::Clear(google::protobuf::GeneratedCodeInfo_Annotation *this)
{
  *(this + 6) = 0;
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  if ((v1 & 6) != 0)
  {
    *(this + 7) = 0;
  }

  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *google::protobuf::GeneratedCodeInfo_Annotation::_InternalParse(google::protobuf::GeneratedCodeInfo_Annotation *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v32 = a2;
  v7 = 0;
  if ((sub_2769F6104(a3, &v32, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v9 = (v32 + 1);
      v10 = *v32;
      if ((*v32 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v11 = v10 + (*v9 << 7);
      v10 = v11 - 128;
      if ((*v9 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v32, (v11 - 128));
      v32 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_51;
      }

      v9 = TagFallback;
      v10 = v24;
LABEL_7:
      v12 = v10 >> 3;
      if (v10 >> 3 <= 2)
      {
        if (v12 == 1)
        {
          if (v10 == 10)
          {
            v16 = google::protobuf::internal::PackedInt32Parser((this + 24), v9, a3, v5);
          }

          else
          {
            if (v10 == 8)
            {
              v33 = sub_2769DF0C0(&v32);
              google::protobuf::RepeatedField<int>::Add();
            }

LABEL_39:
            if (v10)
            {
              v29 = (v10 & 7) == 4;
            }

            else
            {
              v29 = 1;
            }

            if (v29)
            {
              *(a3 + 20) = v10 - 1;
              goto LABEL_2;
            }

            v30 = *(this + 1);
            if (v30)
            {
              v31 = ((v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v31 = sub_2769F617C(this + 1);
              v9 = v32;
            }

            v16 = google::protobuf::internal::UnknownFieldParse(v10, v31, v9, a3, v6);
          }
        }

        else
        {
          if (v12 != 2 || v10 != 18)
          {
            goto LABEL_39;
          }

          *(this + 4) |= 1u;
          v14 = *(this + 1);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 6, v14);
          v16 = google::protobuf::internal::InlineGreedyStringParser(v15, v32, a3);
        }

        v32 = v16;
        if (!v16)
        {
LABEL_51:
          v32 = 0;
          goto LABEL_2;
        }

        goto LABEL_47;
      }

      if (v12 == 3)
      {
        if (v10 != 24)
        {
          goto LABEL_39;
        }

        v7 |= 2u;
        v21 = (v9 + 1);
        LODWORD(v20) = *v9;
        if ((v20 & 0x80) == 0)
        {
          goto LABEL_30;
        }

        v22 = *v21;
        v20 = v20 + (v22 << 7) - 128;
        if ((v22 & 0x80000000) == 0)
        {
          v21 = (v9 + 2);
LABEL_30:
          v32 = v21;
          *(this + 14) = v20;
          goto LABEL_47;
        }

        v27 = google::protobuf::internal::VarintParseSlow64(v9, v20);
        v32 = v27;
        *(this + 14) = v28;
        if (!v27)
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (v12 != 4 || v10 != 32)
        {
          goto LABEL_39;
        }

        v7 |= 4u;
        v18 = (v9 + 1);
        LODWORD(v17) = *v9;
        if ((v17 & 0x80) == 0)
        {
          goto LABEL_23;
        }

        v19 = *v18;
        v17 = v17 + (v19 << 7) - 128;
        if ((v19 & 0x80000000) == 0)
        {
          v18 = (v9 + 2);
LABEL_23:
          v32 = v18;
          *(this + 15) = v17;
          goto LABEL_47;
        }

        v25 = google::protobuf::internal::VarintParseSlow64(v9, v17);
        v32 = v25;
        *(this + 15) = v26;
        if (!v25)
        {
          goto LABEL_51;
        }
      }

LABEL_47:
      if (sub_2769F6104(a3, &v32, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v9 = (v32 + 2);
LABEL_6:
    v32 = v9;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v7;
  return v32;
}

const google::protobuf::UnknownFieldSet *google::protobuf::GeneratedCodeInfo_Annotation::_InternalSerialize(google::protobuf::GeneratedCodeInfo_Annotation *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6 >= 1)
  {
    v4 = sub_276B4B53C(a3, 1, this + 6, v6, a2, google::protobuf::io::EpsCopyOutputStream::Encode64);
  }

  v7 = *(this + 4);
  if (v7)
  {
    v4 = sub_2769E1AB4(a3, 2, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v7 & 2) == 0)
    {
LABEL_5:
      if ((v7 & 4) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_6;
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

  v9 = *(this + 14);
  *v4 = 24;
  if (v9 > 0x7F)
  {
    v4[1] = v9 | 0x80;
    v11 = v9 >> 7;
    if (v9 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v11 | 0x80;
        v14 = v11 >> 7;
        ++v4;
        v15 = v11 >> 14;
        v11 >>= 7;
      }

      while (v15);
      *(v4 - 1) = v14;
      if ((v7 & 4) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v4[2] = v11;
      v4 += 3;
      if ((v7 & 4) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v4[1] = v9;
    v4 += 2;
    if ((v7 & 4) == 0)
    {
      goto LABEL_27;
    }
  }

LABEL_6:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v8 = *(this + 15);
  *v4 = 32;
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
        v12 = v10 >> 7;
        ++v4;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
      *(v4 - 1) = v12;
    }

    else
    {
      v4[2] = v10;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v8;
    v4 += 2;
  }

LABEL_27:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v16 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v6);
}

const InternalMetadata *google::protobuf::GeneratedCodeInfo_Annotation::ByteSizeLong(google::protobuf::GeneratedCodeInfo_Annotation *this)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size(this + 6);
  if (v2)
  {
    v4 = v2;
    if ((v2 & 0x80000000) != 0)
    {
      v5 = 11;
    }

    else
    {
      v5 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *(this + 10) = v4;
  v6 = (v5 + v2);
  v7 = *(this + 4);
  if ((v7 & 7) != 0)
  {
    if (v7)
    {
      v8 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v6 = (v6 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1);
      if ((v7 & 2) == 0)
      {
LABEL_9:
        if ((v7 & 4) == 0)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = *(this + 15);
        if (v13 < 0)
        {
          v14 = 11;
        }

        else
        {
          v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
        }

        v6 = (v6 + v14);
        goto LABEL_22;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_9;
    }

    v11 = *(this + 14);
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v6 = (v6 + v12);
    if ((v7 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

LABEL_22:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v6, this + 5, v3);
  }

  else
  {
    *(this + 5) = v6;
    return v6;
  }
}

void google::protobuf::GeneratedCodeInfo_Annotation::MergeFrom(google::protobuf::GeneratedCodeInfo_Annotation *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::GeneratedCodeInfo_Annotation::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *google::protobuf::GeneratedCodeInfo_Annotation::MergeFrom(void *this, const google::protobuf::GeneratedCodeInfo_Annotation *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 6))
  {
    v5 = *(v3 + 6);
    google::protobuf::RepeatedField<int>::Reserve();
  }

  v6 = *(a2 + 4);
  if ((v6 & 7) != 0)
  {
    if (v6)
    {
      v7 = *(a2 + 6);
      *(v3 + 4) |= 1u;
      v8 = v3[1];
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set(v3 + 6, (v7 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v6 & 2) == 0)
      {
LABEL_8:
        if ((v6 & 4) == 0)
        {
LABEL_10:
          *(v3 + 4) |= v6;
          return this;
        }

LABEL_9:
        *(v3 + 15) = *(a2 + 15);
        goto LABEL_10;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

    *(v3 + 14) = *(a2 + 14);
    if ((v6 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return this;
}

void google::protobuf::GeneratedCodeInfo_Annotation::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::GeneratedCodeInfo_Annotation::Clear(this);

    google::protobuf::GeneratedCodeInfo_Annotation::MergeFrom(this, a2);
  }
}

google::protobuf::GeneratedCodeInfo_Annotation *google::protobuf::GeneratedCodeInfo_Annotation::CopyFrom(google::protobuf::GeneratedCodeInfo_Annotation *this, const google::protobuf::GeneratedCodeInfo_Annotation *a2)
{
  if (a2 != this)
  {
    v4 = this;
    google::protobuf::GeneratedCodeInfo_Annotation::Clear(this);

    return google::protobuf::GeneratedCodeInfo_Annotation::MergeFrom(v4, a2);
  }

  return this;
}

__n128 google::protobuf::GeneratedCodeInfo_Annotation::InternalSwap(google::protobuf::GeneratedCodeInfo_Annotation *this, google::protobuf::GeneratedCodeInfo_Annotation *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v8 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  return result;
}

uint64_t google::protobuf::GeneratedCodeInfo_Annotation::GetMetadata(google::protobuf::GeneratedCodeInfo_Annotation *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[50];
  v2 = off_2812FC738[51];
  return result;
}

google::protobuf::GeneratedCodeInfo *google::protobuf::GeneratedCodeInfo::GeneratedCodeInfo(google::protobuf::GeneratedCodeInfo *this, Arena *a2)
{
  *this = &unk_2885C7330;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_GeneratedCodeInfo_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_GeneratedCodeInfo_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return this;
}

google::protobuf::GeneratedCodeInfo *google::protobuf::GeneratedCodeInfo::GeneratedCodeInfo(google::protobuf::GeneratedCodeInfo *this, const google::protobuf::GeneratedCodeInfo *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C7330;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16), *(a2 + 6));
    sub_276B4B6D4(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 10) = 0;
  v11 = *(a2 + 1);
  if (v11)
  {
    sub_2769F63D8(v4, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  return this;
}

void google::protobuf::GeneratedCodeInfo::~GeneratedCodeInfo(google::protobuf::GeneratedCodeInfo *this)
{
  sub_2769DEC8C(this + 1);
  sub_276B4B650(this + 2);
}

{
  google::protobuf::GeneratedCodeInfo::~GeneratedCodeInfo(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::GeneratedCodeInfo::default_instance(google::protobuf::GeneratedCodeInfo *this)
{
  if (atomic_load_explicit(scc_info_GeneratedCodeInfo_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_GeneratedCodeInfo_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_GeneratedCodeInfo_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::GeneratedCodeInfo::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      v4 = *v3++;
      this = google::protobuf::GeneratedCodeInfo_Annotation::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_2769F6424(v5);
  }

  return this;
}

google::protobuf::internal *google::protobuf::GeneratedCodeInfo::_InternalParse(google::protobuf::GeneratedCodeInfo *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v23 = a2;
  if ((sub_2769F6104(a3, &v23, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v23 + 1);
      v7 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v8 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v21;
LABEL_6:
      if (v7 == 10)
      {
        v12 = (v6 - 1);
        while (1)
        {
          v13 = (v12 + 1);
          v23 = (v12 + 1);
          v14 = *(this + 4);
          if (!v14)
          {
            break;
          }

          v19 = *(this + 6);
          v15 = *v14;
          if (v19 < *v14)
          {
            *(this + 6) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
            goto LABEL_23;
          }

          if (v15 == *(this + 7))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v14 = v15 + 1;
          v16 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::GeneratedCodeInfo_Annotation>(*(this + 2));
          v17 = *(this + 6);
          v18 = *(this + 4) + 8 * v17;
          *(this + 6) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v23;
LABEL_23:
          v12 = sub_276BD840C(a3, v16, v13);
          v23 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_14;
          }
        }

        v15 = *(this + 7);
LABEL_19:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 4, v15 + 1);
        v14 = *(this + 4);
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
        *(a3 + 20) = v7 - 1;
        return v23;
      }

      v10 = *(this + 1);
      if (v10)
      {
        v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v11 = sub_2769F617C(this + 1);
        v6 = v23;
      }

      v23 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6, a3, v5);
      if (!v23)
      {
        return 0;
      }

LABEL_14:
      if (sub_2769F6104(a3, &v23, *(a3 + 23)))
      {
        return v23;
      }
    }

    v6 = (v23 + 2);
LABEL_5:
    v23 = v6;
    goto LABEL_6;
  }

  return v23;
}

const google::protobuf::UnknownFieldSet *google::protobuf::GeneratedCodeInfo::_InternalSerialize(google::protobuf::GeneratedCodeInfo *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

      a2 = google::protobuf::GeneratedCodeInfo_Annotation::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *google::protobuf::GeneratedCodeInfo::ByteSizeLong(google::protobuf::GeneratedCodeInfo *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 6);
  v6 = *(this + 4);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = 8 * v5;
    do
    {
      v9 = *v7++;
      v10 = google::protobuf::GeneratedCodeInfo_Annotation::ByteSizeLong(v9);
      v5 = (v5 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6));
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 10, a4);
  }

  else
  {
    *(this + 10) = v5;
    return v5;
  }
}

void google::protobuf::GeneratedCodeInfo::MergeFrom(google::protobuf::GeneratedCodeInfo *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::GeneratedCodeInfo::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *google::protobuf::GeneratedCodeInfo::MergeFrom(void *this, const google::protobuf::GeneratedCodeInfo *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 2), v5);
    this = sub_276B4B6D4(v3 + 2, v7, (v6 + 8), v5, *v3[4] - *(v3 + 6));
    v8 = *(v3 + 6) + v5;
    *(v3 + 6) = v8;
    v9 = v3[4];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return this;
}

void google::protobuf::GeneratedCodeInfo::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::GeneratedCodeInfo::Clear(this);

    google::protobuf::GeneratedCodeInfo::MergeFrom(this, a2);
  }
}

google::protobuf::UnknownFieldSet *google::protobuf::GeneratedCodeInfo::CopyFrom(google::protobuf::UnknownFieldSet *this, const google::protobuf::GeneratedCodeInfo *a2)
{
  if (a2 != this)
  {
    v4 = this;
    google::protobuf::GeneratedCodeInfo::Clear(this);

    return google::protobuf::GeneratedCodeInfo::MergeFrom(v4, a2);
  }

  return this;
}

__n128 google::protobuf::GeneratedCodeInfo::InternalSwap(google::protobuf::GeneratedCodeInfo *this, google::protobuf::GeneratedCodeInfo *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t google::protobuf::GeneratedCodeInfo::GetMetadata(google::protobuf::GeneratedCodeInfo *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[52];
  v2 = off_2812FC738[53];
  return result;
}

google::protobuf::FileDescriptorSet *sub_276B493A4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4B794(a1, 1);
  google::protobuf::FileDescriptorSet::FileDescriptorSet(v2, a1);
  return v2;
}

google::protobuf::FileDescriptorProto *sub_276B49430(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4B820(a1, 1);
  google::protobuf::FileDescriptorProto::FileDescriptorProto(v2, a1);
  return v2;
}

void *sub_276B494BC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276B4B8AC(a1);
}

void *sub_276B49588(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_276B4B9AC(this, 1);
  *result = &unk_2885C6360;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  return result;
}

google::protobuf::DescriptorProto *sub_276B495F8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4BA54(a1, 1);
  google::protobuf::DescriptorProto::DescriptorProto(v2, a1);
  return v2;
}

google::protobuf::ExtensionRangeOptions *sub_276B49684(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4BAE0(a1, 1);
  google::protobuf::ExtensionRangeOptions::ExtensionRangeOptions(v2, a1);
  return v2;
}

google::protobuf::FieldDescriptorProto *sub_276B49710(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4BB6C(a1, 1);
  google::protobuf::FieldDescriptorProto::FieldDescriptorProto(v2, a1);
  return v2;
}

google::protobuf::OneofDescriptorProto *sub_276B4979C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4BBF8(a1, 1);
  google::protobuf::OneofDescriptorProto::OneofDescriptorProto(v2, a1);
  return v2;
}

void *sub_276B49828(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_276B4BC84(this, 1);
  *result = &unk_2885C66D0;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  return result;
}

google::protobuf::EnumDescriptorProto *sub_276B49898(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4BD2C(a1, 1);
  google::protobuf::EnumDescriptorProto::EnumDescriptorProto(v2, a1);
  return v2;
}

google::protobuf::EnumValueDescriptorProto *sub_276B49924(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4BDB8(a1, 1);
  google::protobuf::EnumValueDescriptorProto::EnumValueDescriptorProto(v2, a1);
  return v2;
}

google::protobuf::ServiceDescriptorProto *sub_276B499B0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4BE44(a1, 1);
  google::protobuf::ServiceDescriptorProto::ServiceDescriptorProto(v2, a1);
  return v2;
}

google::protobuf::MethodDescriptorProto *sub_276B49A3C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4BED0(a1, 1);
  google::protobuf::MethodDescriptorProto::MethodDescriptorProto(v2, a1);
  return v2;
}

google::protobuf::FileOptions *sub_276B49AC8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4BF5C(a1, 1);
  google::protobuf::FileOptions::FileOptions(v2, a1);
  return v2;
}

google::protobuf::MessageOptions *sub_276B49B54(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4BFE8(a1, 1);
  google::protobuf::MessageOptions::MessageOptions(v2, a1);
  return v2;
}

google::protobuf::FieldOptions *sub_276B49BE0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C074(a1, 1);
  google::protobuf::FieldOptions::FieldOptions(v2, a1);
  return v2;
}

google::protobuf::OneofOptions *sub_276B49C6C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C100(a1, 1);
  google::protobuf::OneofOptions::OneofOptions(v2, a1);
  return v2;
}

google::protobuf::EnumOptions *sub_276B49CF8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C18C(a1, 1);
  google::protobuf::EnumOptions::EnumOptions(v2, a1);
  return v2;
}

google::protobuf::EnumValueOptions *sub_276B49D84(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C218(a1, 1);
  google::protobuf::EnumValueOptions::EnumValueOptions(v2, a1);
  return v2;
}

google::protobuf::ServiceOptions *sub_276B49E10(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C2A4(a1, 1);
  google::protobuf::ServiceOptions::ServiceOptions(v2, a1);
  return v2;
}

google::protobuf::MethodOptions *sub_276B49E9C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C330(a1, 1);
  google::protobuf::MethodOptions::MethodOptions(v2, a1);
  return v2;
}

google::protobuf::UninterpretedOption_NamePart *sub_276B49F28(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C3BC(a1, 1);
  google::protobuf::UninterpretedOption_NamePart::UninterpretedOption_NamePart(v2, a1);
  return v2;
}

google::protobuf::UninterpretedOption *sub_276B49FB4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C448(a1, 1);
  google::protobuf::UninterpretedOption::UninterpretedOption(v2, a1);
  return v2;
}

google::protobuf::SourceCodeInfo_Location *sub_276B4A040(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C4D4(a1, 1);
  google::protobuf::SourceCodeInfo_Location::SourceCodeInfo_Location(v2, a1);
  return v2;
}

google::protobuf::SourceCodeInfo *sub_276B4A0CC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C560(a1, 1);
  google::protobuf::SourceCodeInfo::SourceCodeInfo(v2, a1);
  return v2;
}

google::protobuf::GeneratedCodeInfo_Annotation *sub_276B4A158(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C5EC(a1, 1);
  google::protobuf::GeneratedCodeInfo_Annotation::GeneratedCodeInfo_Annotation(v2, a1);
  return v2;
}

google::protobuf::GeneratedCodeInfo *sub_276B4A1E4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276B4C678(a1, 1);
  google::protobuf::GeneratedCodeInfo::GeneratedCodeInfo(v2, a1);
  return v2;
}

uint64_t google::protobuf::RepeatedPtrField<std::string>::Clear(uint64_t result)
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

void sub_276B4A488(void *a1)
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
          google::protobuf::FileDescriptorProto::~FileDescriptorProto(*v3);
          MEMORY[0x277C9F670]();
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

void sub_276B4A50C(uint64_t *a1, google::protobuf::Arena ***a2, google::protobuf::FileDescriptorProto **a3, unsigned int a4, unsigned int a5)
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
      sub_276B4A5BC(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FileDescriptorProto>(v18);
      sub_276B4A5BC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_276B4A5CC(void *a1)
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

          MEMORY[0x277C9F670](v5, 0x1012C40EC159624);
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

void sub_276B4A668(void *a1)
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
          google::protobuf::DescriptorProto::~DescriptorProto(*v3);
          MEMORY[0x277C9F670]();
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

void sub_276B4A6EC(void *a1)
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
          google::protobuf::EnumDescriptorProto::~EnumDescriptorProto(*v3);
          MEMORY[0x277C9F670]();
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

void sub_276B4A770(void *a1)
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
          google::protobuf::ServiceDescriptorProto::~ServiceDescriptorProto(*v3);
          MEMORY[0x277C9F670]();
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

void sub_276B4A7F4(void *a1)
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
          google::protobuf::FieldDescriptorProto::~FieldDescriptorProto(*v3);
          MEMORY[0x277C9F670]();
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

std::string *sub_276B4A878(std::string *result, std::string **a2, const std::string **a3, unsigned int a4, unsigned int a5)
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
      v22 = sub_2769C64F4(v18);
      result = std::string::operator=(v22, v21);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276B4A924(uint64_t *a1, google::protobuf::Arena ***a2, google::protobuf::DescriptorProto **a3, unsigned int a4, unsigned int a5)
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
      sub_276B4A9D4(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto>(v18);
      sub_276B4A9D4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_276B4A9E4(uint64_t *a1, google::protobuf::Arena ***a2, google::protobuf::EnumDescriptorProto **a3, unsigned int a4, unsigned int a5)
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
      sub_276B4AA94(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumDescriptorProto>(v18);
      sub_276B4AA94(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_276B4AAA4(uint64_t *a1, google::protobuf::Arena ***a2, google::protobuf::ServiceDescriptorProto **a3, unsigned int a4, unsigned int a5)
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
      sub_276B4AB54(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::ServiceDescriptorProto>(v18);
      sub_276B4AB54(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_276B4AB64(uint64_t *a1, google::protobuf::Arena ***a2, google::protobuf::FieldDescriptorProto **a3, unsigned int a4, unsigned int a5)
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
      sub_276B4AC14(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FieldDescriptorProto>(v18);
      sub_276B4AC14(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_276B4AC24(void *a1)
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
          google::protobuf::DescriptorProto_ExtensionRange::~DescriptorProto_ExtensionRange(*v3);
          MEMORY[0x277C9F670]();
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

void sub_276B4ACA8(void *a1)
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
          google::protobuf::OneofDescriptorProto::~OneofDescriptorProto(*v3);
          MEMORY[0x277C9F670]();
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

void sub_276B4AD2C(uint64_t *a1, google::protobuf::Arena ***a2, google::protobuf::DescriptorProto_ExtensionRange **a3, unsigned int a4, unsigned int a5)
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
      sub_276B4ADDC(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto_ExtensionRange>(v18);
      sub_276B4ADDC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_276B4ADEC(uint64_t *a1, google::protobuf::Arena ***a2, google::protobuf::OneofDescriptorProto **a3, unsigned int a4, unsigned int a5)
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
      sub_276B4AE9C(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::OneofDescriptorProto>(v18);
      sub_276B4AE9C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

uint64_t *sub_276B4AEAC(uint64_t *result, google::protobuf::DescriptorProto_ReservedRange **a2, google::protobuf::DescriptorProto_ReservedRange **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276B4AF5C(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::DescriptorProto_ReservedRange>(v18);
      result = sub_276B4AF5C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276B4AF6C(void *a1)
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
          google::protobuf::UninterpretedOption::~UninterpretedOption(*v3);
          MEMORY[0x277C9F670]();
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

uint64_t *sub_276B4AFF0(uint64_t *result, google::protobuf::UninterpretedOption **a2, google::protobuf::UninterpretedOption **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276B4B0A0(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(v18);
      result = sub_276B4B0A0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276B4B0B0(void *a1)
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
          google::protobuf::EnumValueDescriptorProto::~EnumValueDescriptorProto(*v3);
          MEMORY[0x277C9F670]();
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

void sub_276B4B134(uint64_t *a1, google::protobuf::Arena ***a2, google::protobuf::EnumValueDescriptorProto **a3, unsigned int a4, unsigned int a5)
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
      sub_276B4B1E4(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumValueDescriptorProto>(v18);
      sub_276B4B1E4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

uint64_t *sub_276B4B1F4(uint64_t *result, google::protobuf::EnumDescriptorProto_EnumReservedRange **a2, google::protobuf::EnumDescriptorProto_EnumReservedRange **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276B4B2A4(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumDescriptorProto_EnumReservedRange>(v18);
      result = sub_276B4B2A4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276B4B2B4(void *a1)
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
          google::protobuf::MethodDescriptorProto::~MethodDescriptorProto(*v3);
          MEMORY[0x277C9F670]();
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

void sub_276B4B338(uint64_t *a1, google::protobuf::Arena ***a2, google::protobuf::MethodDescriptorProto **a3, unsigned int a4, unsigned int a5)
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
      sub_276B4B3E8(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::MethodDescriptorProto>(v18);
      sub_276B4B3E8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_276B4B3F8(void *a1)
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
          google::protobuf::UninterpretedOption_NamePart::~UninterpretedOption_NamePart(*v3);
          MEMORY[0x277C9F670]();
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

uint64_t *sub_276B4B47C(uint64_t *result, google::protobuf::UninterpretedOption_NamePart **a2, google::protobuf::UninterpretedOption_NamePart **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276B4B52C(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption_NamePart>(v18);
      result = sub_276B4B52C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

unsigned __int8 *sub_276B4B53C(google::protobuf::io::EpsCopyOutputStream *this, int a2, int *a3, unsigned int a4, unsigned __int8 *a5, uint64_t (*a6)(uint64_t))
{
  if (*this <= a5)
  {
    a5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a5);
  }

  v11 = sub_2769F6730(this, a2, a4, a5);
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

void sub_276B4B650(void *a1)
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
          google::protobuf::GeneratedCodeInfo_Annotation::~GeneratedCodeInfo_Annotation(*v3);
          MEMORY[0x277C9F670]();
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

uint64_t *sub_276B4B6D4(uint64_t *result, google::protobuf::GeneratedCodeInfo_Annotation **a2, google::protobuf::GeneratedCodeInfo_Annotation **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276B4B784(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::GeneratedCodeInfo_Annotation>(v18);
      result = sub_276B4B784(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void *sub_276B4B794(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8568(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::FileDescriptorSet::~FileDescriptorSet);
}

void *sub_276B4B820(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8598(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xD8uLL, google::protobuf::FileDescriptorProto::~FileDescriptorProto);
}

void *sub_276B4B8AC(google::protobuf::Arena *a1)
{
  v2 = sub_276B4B920(a1, 1);
  *v2 = &unk_2885C62B0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_DescriptorProto_ExtensionRange_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DescriptorProto_ExtensionRange_google_2fprotobuf_2fdescriptor_2eproto);
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

void *sub_276B4B920(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD85D4(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, google::protobuf::DescriptorProto_ExtensionRange::~DescriptorProto_ExtensionRange);
}

void *sub_276B4B9AC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8604(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_276B4BA34);
}

void *sub_276B4BA54(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8634(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0xE8uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xE8uLL, google::protobuf::DescriptorProto::~DescriptorProto);
}

void *sub_276B4BAE0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8670(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x48uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x48uLL, google::protobuf::ExtensionRangeOptions::~ExtensionRangeOptions);
}

void *sub_276B4BB6C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD86A0(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x60uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x60uLL, google::protobuf::FieldDescriptorProto::~FieldDescriptorProto);
}

void *sub_276B4BBF8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD86D0(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, google::protobuf::OneofDescriptorProto::~OneofDescriptorProto);
}

void *sub_276B4BC84(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8700(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_276B4BD0C);
}

void *sub_276B4BD2C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8730(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x70uLL, google::protobuf::EnumDescriptorProto::~EnumDescriptorProto);
}

void *sub_276B4BDB8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8760(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::EnumValueDescriptorProto::~EnumValueDescriptorProto);
}

void *sub_276B4BE44(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8790(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x40uLL, google::protobuf::ServiceDescriptorProto::~ServiceDescriptorProto);
}

void *sub_276B4BED0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD87C0(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x40uLL, google::protobuf::MethodDescriptorProto::~MethodDescriptorProto);
}

void *sub_276B4BF5C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD87F0(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0xA8uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xA8uLL, google::protobuf::FileOptions::~FileOptions);
}

void *sub_276B4BFE8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD882C(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, google::protobuf::MessageOptions::~MessageOptions);
}

void *sub_276B4C074(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD885C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x58uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x58uLL, google::protobuf::FieldOptions::~FieldOptions);
}

void *sub_276B4C100(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8898(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x48uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x48uLL, google::protobuf::OneofOptions::~OneofOptions);
}

void *sub_276B4C18C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD88C8(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, google::protobuf::EnumOptions::~EnumOptions);
}

void *sub_276B4C218(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD88F8(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, google::protobuf::EnumValueOptions::~EnumValueOptions);
}

void *sub_276B4C2A4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8928(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, google::protobuf::ServiceOptions::~ServiceOptions);
}

void *sub_276B4C330(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8958(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, google::protobuf::MethodOptions::~MethodOptions);
}

void *sub_276B4C3BC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8988(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, google::protobuf::UninterpretedOption_NamePart::~UninterpretedOption_NamePart);
}

void *sub_276B4C448(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD89B8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x60uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x60uLL, google::protobuf::UninterpretedOption::~UninterpretedOption);
}

void *sub_276B4C4D4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD89E8(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x70uLL, google::protobuf::SourceCodeInfo_Location::~SourceCodeInfo_Location);
}

void *sub_276B4C560(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8A18(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::SourceCodeInfo::~SourceCodeInfo);
}

void *sub_276B4C5EC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8A48(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x40uLL, google::protobuf::GeneratedCodeInfo_Annotation::~GeneratedCodeInfo_Annotation);
}

void *sub_276B4C678(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD8A78(this);
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

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::GeneratedCodeInfo::~GeneratedCodeInfo);
}

uint64_t google::protobuf::DescriptorDatabase::FindAllPackageNames(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if ((*(*a1 + 48))(a1, &v15))
  {
    v14[0] = 0;
    v14[1] = 0;
    v13 = v14;
    google::protobuf::FileDescriptorProto::FileDescriptorProto(v12, 0);
    v4 = v15;
    v5 = v16;
    while (1)
    {
      if (v4 == v5)
      {
        sub_276B4FD14(a2, *(a2 + 8), v13, v14);
        v6 = 1;
        goto LABEL_9;
      }

      google::protobuf::FileDescriptorProto::Clear(v12);
      if (((*(*a1 + 16))(a1, v4, v12) & 1) == 0)
      {
        break;
      }

      sub_276B2C720(&v13, (v12[23] & 0xFFFFFFFFFFFFFFFELL));
      v4 += 24;
    }

    google::protobuf::internal::LogMessage::LogMessage(v11, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor_database.cc", 81);
    v7 = google::protobuf::internal::LogMessage::operator<<(v11, "File not found in database (unexpected): ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, v4);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = 0;
LABEL_9:
    google::protobuf::FileDescriptorProto::~FileDescriptorProto(v12);
    sub_276B2AD2C(&v13, v14[0]);
  }

  else
  {
    v6 = 0;
  }

  v12[0] = &v15;
  sub_276B281C8(v12);
  return v6;
}

void sub_276B4C8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  google::protobuf::internal::LogMessage::~LogMessage(&a10);
  google::protobuf::FileDescriptorProto::~FileDescriptorProto(&a16);
  sub_276B2AD2C(v17 - 112, *(v16 + 224));
  a16 = (v17 - 88);
  sub_276B281C8(&a16);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::DescriptorDatabase::FindAllMessageNames(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if ((*(*a1 + 48))(a1, &v20))
  {
    v19[0] = 0;
    v19[1] = 0;
    v18 = v19;
    google::protobuf::FileDescriptorProto::FileDescriptorProto(v14, 0);
    v4 = v20;
    v5 = v21;
    while (1)
    {
      if (v4 == v5)
      {
        sub_276B4FD14(a2, *(a2 + 8), v18, v19);
        v8 = 1;
        goto LABEL_15;
      }

      google::protobuf::FileDescriptorProto::Clear(v14);
      if (((*(*a1 + 16))(a1, v4, v14) & 1) == 0)
      {
        break;
      }

      if (v16)
      {
        v6 = (v16 + 8);
      }

      else
      {
        v6 = 0;
      }

      if (v15)
      {
        v7 = 8 * v15;
        do
        {
          sub_276B503B0(*v6++, (v17 & 0xFFFFFFFFFFFFFFFELL), &v18);
          v7 -= 8;
        }

        while (v7);
      }

      v4 += 24;
    }

    google::protobuf::internal::LogMessage::LogMessage(v13, 2, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/google/protobuf/descriptor_database.cc", 81);
    v9 = google::protobuf::internal::LogMessage::operator<<(v13, "File not found in database (unexpected): ");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, v4);
    google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    v8 = 0;
LABEL_15:
    google::protobuf::FileDescriptorProto::~FileDescriptorProto(v14);
    sub_276B2AD2C(&v18, v19[0]);
  }

  else
  {
    v8 = 0;
  }

  v14[0] = &v20;
  sub_276B281C8(v14);
  return v8;
}

void sub_276B4CAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16)
{
  google::protobuf::internal::LogMessage::~LogMessage(&a10);
  google::protobuf::FileDescriptorProto::~FileDescriptorProto(&a16);
  sub_276B2AD2C(v17 - 128, *(v16 + 224));
  a16 = (v17 - 104);
  sub_276B281C8(&a16);
  _Unwind_Resume(a1);
}

void *google::protobuf::SimpleDescriptorDatabase::SimpleDescriptorDatabase(void *this)
{
  this[2] = 0;
  *this = &unk_2885C7668;
  this[1] = this + 2;
  this[5] = 0;
  this[3] = 0;
  this[4] = this + 5;
  this[8] = 0;
  this[9] = 0;
  this[10] = 0;
  this[6] = 0;
  this[7] = this + 8;
  this[11] = 0;
  this[12] = 0;
  return this;
}

{
  this[2] = 0;
  *this = &unk_2885C7668;
  this[1] = this + 2;
  this[5] = 0;
  this[3] = 0;
  this[4] = this + 5;
  this[8] = 0;
  this[9] = 0;
  this[10] = 0;
  this[6] = 0;
  this[7] = this + 8;
  this[11] = 0;
  this[12] = 0;
  return this;
}

void google::protobuf::SimpleDescriptorDatabase::~SimpleDescriptorDatabase(char **this)
{
  *this = &unk_2885C7668;
  v2 = (this + 10);
  sub_276B5058C(&v2);
  sub_276B2AD2C((this + 7), this[8]);
  sub_276B2AD2C((this + 4), this[5]);
  sub_276B2AD2C((this + 1), this[2]);
}

{
  google::protobuf::SimpleDescriptorDatabase::~SimpleDescriptorDatabase(this);

  JUMPOUT(0x277C9F670);
}

uint64_t google::protobuf::SimpleDescriptorDatabase::AddAndOwn(google::protobuf::SimpleDescriptorDatabase *this, const google::protobuf::FileDescriptorProto *a2)
{
  v5 = *(this + 11);
  v4 = *(this + 12);
  if (v5 >= v4)
  {
    v7 = this + 80;
    v8 = *(this + 10);
    v9 = v5 - v8;
    v10 = (v5 - v8) >> 3;
    v11 = v10 + 1;
    if ((v10 + 1) >> 61)
    {
      sub_2769BA860();
    }

    v12 = v4 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    v21[4] = this + 80;
    if (v14)
    {
      sub_276B2A0B4(v7, v14);
    }

    v15 = (v5 - v8) >> 3;
    v16 = (8 * v10);
    v17 = (8 * v10 - 8 * v15);
    *v16 = a2;
    v6 = v16 + 1;
    memcpy(v17, v8, v9);
    v18 = *(this + 10);
    *(this + 10) = v17;
    *(this + 11) = v6;
    v19 = *(this + 12);
    *(this + 12) = 0;
    v21[2] = v18;
    v21[3] = v19;
    v21[0] = v18;
    v21[1] = v18;
    sub_276B5067C(v21);
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 8;
  }

  *(this + 11) = v6;
  return sub_276B4CE28(this + 8, a2, a2);
}