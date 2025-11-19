uint64_t awd::metrics::FaceTimeBasebandStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 132))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v6 = *(v5 + 32);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 24) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(*(v5 + 16) + 4 * v7);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v7;
      }

      while (v7 < *(v5 + 24));
    }
  }

  if (*(v5 + 48) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v9 = *(v5 + 56);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 48) >= 1)
    {
      v10 = 0;
      do
      {
        v11 = *(*(v5 + 40) + 4 * v10);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v10;
      }

      while (v10 < *(v5 + 48));
    }
  }

  if (*(v5 + 72) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v12 = *(v5 + 80);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 72) >= 1)
    {
      v13 = 0;
      do
      {
        v14 = *(*(v5 + 64) + 4 * v13);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v13;
      }

      while (v13 < *(v5 + 72));
    }
  }

  if (*(v5 + 96) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v15 = *(v5 + 104);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 96) >= 1)
    {
      v16 = 0;
      do
      {
        v17 = *(*(v5 + 88) + 4 * v16);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v16;
      }

      while (v16 < *(v5 + 96));
    }
  }

  v18 = *(v5 + 132);
  if ((v18 & 0x20) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 108), a2, a4);
    v18 = *(v5 + 132);
    if ((v18 & 0x40) == 0)
    {
LABEL_21:
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }
  }

  else if ((v18 & 0x40) == 0)
  {
    goto LABEL_21;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 112), a2, a4);
  v18 = *(v5 + 132);
  if ((v18 & 0x80) == 0)
  {
LABEL_22:
    if ((v18 & 0x100) == 0)
    {
      goto LABEL_23;
    }

LABEL_28:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 120), a2, a4);
    if ((*(v5 + 132) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_29;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 116), a2, a4);
  v18 = *(v5 + 132);
  if ((v18 & 0x100) != 0)
  {
    goto LABEL_28;
  }

LABEL_23:
  if ((v18 & 0x200) == 0)
  {
    return this;
  }

LABEL_29:
  v19 = *(v5 + 124);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v19, a2, a4);
}

uint64_t awd::metrics::FaceTimeBasebandStats::ByteSize(awd::metrics::FaceTimeBasebandStats *this)
{
  v2 = *(this + 33);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_22;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 33);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 27);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 33);
  }

  else
  {
    v5 = 2;
  }

  v3 += v5;
LABEL_11:
  if ((v2 & 0x40) == 0)
  {
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v6 = *(this + 28);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = *(this + 33);
  }

  else
  {
    v7 = 2;
  }

  v3 += v7;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v8 = *(this + 29);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v2 = *(this + 33);
    }

    else
    {
      v9 = 2;
    }

    v3 += v9;
  }

LABEL_22:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v10 = *(this + 30);
      if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
        v2 = *(this + 33);
      }

      else
      {
        v11 = 2;
      }

      v3 += v11;
    }

    if ((v2 & 0x200) != 0)
    {
      v12 = *(this + 31);
      if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      }

      else
      {
        v13 = 2;
      }

      v3 += v13;
    }
  }

  v14 = *(this + 6);
  if (v14 < 1)
  {
    LODWORD(v16) = 0;
  }

  else
  {
    v15 = 0;
    LODWORD(v16) = 0;
    do
    {
      v17 = *(*(this + 2) + 4 * v15);
      if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
        v14 = *(this + 6);
      }

      else
      {
        v18 = 1;
      }

      v16 = (v18 + v16);
      ++v15;
    }

    while (v15 < v14);
    if (v16 > 0)
    {
      if (v16 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      }

      else
      {
        v19 = 2;
      }

      v3 += v19;
    }
  }

  *(this + 8) = v16;
  v20 = v3 + v16;
  v21 = *(this + 12);
  if (v21 < 1)
  {
    LODWORD(v23) = 0;
  }

  else
  {
    v22 = 0;
    LODWORD(v23) = 0;
    do
    {
      v24 = *(*(this + 5) + 4 * v22);
      if (v24 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24);
        v21 = *(this + 12);
      }

      else
      {
        v25 = 1;
      }

      v23 = (v25 + v23);
      ++v22;
    }

    while (v22 < v21);
    if (v23 > 0)
    {
      if (v23 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
      }

      else
      {
        v26 = 2;
      }

      v20 += v26;
    }
  }

  *(this + 14) = v23;
  v27 = v20 + v23;
  v28 = *(this + 18);
  if (v28 < 1)
  {
    LODWORD(v30) = 0;
  }

  else
  {
    v29 = 0;
    LODWORD(v30) = 0;
    do
    {
      v31 = *(*(this + 8) + 4 * v29);
      if (v31 >= 0x80)
      {
        v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
        v28 = *(this + 18);
      }

      else
      {
        v32 = 1;
      }

      v30 = (v32 + v30);
      ++v29;
    }

    while (v29 < v28);
    if (v30 > 0)
    {
      if (v30 >= 0x80)
      {
        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
      }

      else
      {
        v33 = 2;
      }

      v27 += v33;
    }
  }

  *(this + 20) = v30;
  v34 = v27 + v30;
  v35 = *(this + 24);
  if (v35 < 1)
  {
    LODWORD(v37) = 0;
  }

  else
  {
    v36 = 0;
    LODWORD(v37) = 0;
    do
    {
      v38 = *(*(this + 11) + 4 * v36);
      if (v38 >= 0x80)
      {
        v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38);
        v35 = *(this + 24);
      }

      else
      {
        v39 = 1;
      }

      v37 = (v39 + v37);
      ++v36;
    }

    while (v36 < v35);
    if (v37 > 0)
    {
      if (v37 >= 0x80)
      {
        v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 1;
      }

      else
      {
        v40 = 2;
      }

      v34 += v40;
    }
  }

  *(this + 26) = v37;
  result = (v34 + v37);
  *(this + 32) = result;
  return result;
}

void awd::metrics::FaceTimeBasebandStats::CheckTypeAndMergeFrom(awd::metrics::FaceTimeBasebandStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::FaceTimeBasebandStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeBasebandStats::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeBasebandStats::CopyFrom(awd::metrics::FaceTimeBasebandStats *this, const awd::metrics::FaceTimeBasebandStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeBasebandStats::MergeFrom(this, a2);
  }
}

double awd::metrics::FaceTimeBasebandStats::Swap(awd::metrics::FaceTimeBasebandStats *this, awd::metrics::FaceTimeBasebandStats *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    v5 = *(a2 + 3);
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v6 = *(this + 3);
    *(this + 3) = v5;
    *(a2 + 3) = v6;
    v7 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    v8 = *(a2 + 6);
    *(a2 + 5) = v7;
    v9 = *(this + 6);
    *(this + 6) = v8;
    *(a2 + 6) = v9;
    v10 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    v11 = *(a2 + 9);
    *(a2 + 8) = v10;
    v12 = *(this + 9);
    *(this + 9) = v11;
    *(a2 + 9) = v12;
    v13 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    result = *(a2 + 12);
    *(a2 + 11) = v13;
    v15 = *(this + 12);
    *(this + 12) = result;
    *(a2 + 12) = v15;
    LODWORD(v13) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v13;
    LODWORD(v13) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v13;
    LODWORD(v13) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v13;
    LODWORD(v13) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v13;
    LODWORD(v13) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v13;
    LODWORD(v13) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v13;
    LODWORD(v13) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v13;
  }

  return result;
}

void *awd::metrics::FaceTimeVideoStatus::SharedCtor(void *this)
{
  this[1] = 0;
  *(this + 116) = 0;
  *(this + 108) = 0;
  return this;
}

awd::metrics::FaceTimeVideoStatus *awd::metrics::FaceTimeVideoStatus::FaceTimeVideoStatus(awd::metrics::FaceTimeVideoStatus *this, const awd::metrics::FaceTimeVideoStatus *a2)
{
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 9) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 116) = 0;
  *(this + 108) = 0;
  *this = &unk_2A1D4DD68;
  *(this + 1) = 0;
  *(this + 3) = 0;
  awd::metrics::FaceTimeVideoStatus::MergeFrom(this, a2);
  return this;
}

void sub_2963E0EFC(_Unwind_Exception *a1)
{
  v6 = v5;
  if (*v6)
  {
    MEMORY[0x29C25A1D0](*v6, 0x1000C8052888210);
  }

  awd::metrics::FaceTimeVideoStatus::FaceTimeVideoStatus(v4, v3, v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeVideoStatus::MergeFrom(awd::metrics::FaceTimeVideoStatus *this, const awd::metrics::FaceTimeVideoStatus *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 12);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 5, *(this + 12) + v5);
    memcpy((*(this + 5) + 4 * *(this + 12)), *(a2 + 5), 4 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  v6 = *(a2 + 18);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 18) + v6);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 11, *(this + 24) + v7);
    memcpy((*(this + 11) + 4 * *(this + 24)), *(a2 + 11), 4 * *(a2 + 24));
    *(this + 24) += *(a2 + 24);
  }

  LOBYTE(v8) = *(a2 + 120);
  if (v8)
  {
    if (*(a2 + 120))
    {
      v10 = *(a2 + 1);
      *(this + 30) |= 1u;
      *(this + 1) = v10;
      v8 = *(a2 + 30);
      if ((v8 & 0x20) == 0)
      {
LABEL_14:
        if ((v8 & 0x40) == 0)
        {
          return;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 120) & 0x20) == 0)
    {
      goto LABEL_14;
    }

    v11 = *(a2 + 27);
    *(this + 30) |= 0x20u;
    *(this + 27) = v11;
    if ((*(a2 + 30) & 0x40) == 0)
    {
      return;
    }

LABEL_15:
    v9 = *(a2 + 28);
    *(this + 30) |= 0x40u;
    *(this + 28) = v9;
  }
}

void sub_2963E1124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeVideoStatus::~FaceTimeVideoStatus(awd::metrics::FaceTimeVideoStatus *this)
{
  *this = &unk_2A1D4DD68;
  v2 = *(this + 11);
  if (v2)
  {
    MEMORY[0x29C25A1D0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 8);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 5);
  if (v4)
  {
    MEMORY[0x29C25A1D0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 2);
  if (v5)
  {
    MEMORY[0x29C25A1D0](v5, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::FaceTimeVideoStatus::~FaceTimeVideoStatus(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimeVideoStatus::default_instance(awd::metrics::FaceTimeVideoStatus *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimeVideoStatus::default_instance_;
  if (!awd::metrics::FaceTimeVideoStatus::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimeVideoStatus::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeVideoStatus::Clear(uint64_t this)
{
  if (*(this + 120))
  {
    *(this + 8) = 0;
    *(this + 108) = 0;
    *(this + 112) = 0;
  }

  *(this + 24) = 0;
  *(this + 48) = 0;
  *(this + 72) = 0;
  *(this + 96) = 0;
  *(this + 120) = 0;
  return this;
}

uint64_t awd::metrics::FaceTimeVideoStatus::MergePartialFromCodedStream(awd::metrics::FaceTimeVideoStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v4 = *(a2 + 1);
          if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v4 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v6 = TagFallback >> 3;
          v7 = TagFallback & 7;
          if (TagFallback >> 3 > 3)
          {
            break;
          }

          switch(v6)
          {
            case 1u:
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_34;
              }

              v15 = *(a2 + 1);
              v14 = *(a2 + 2);
              if (v15 >= v14 || (v16 = *v15, v16 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
                if (!result)
                {
                  return result;
                }

                v17 = *(a2 + 1);
                v14 = *(a2 + 2);
              }

              else
              {
                *(this + 1) = v16;
                v17 = v15 + 1;
                *(a2 + 1) = v17;
              }

              *(this + 30) |= 1u;
              if (v17 < v14 && *v17 == 18)
              {
                v21 = v17 + 1;
                *(a2 + 1) = v21;
LABEL_51:
                v48 = 0;
                if (v21 >= v14 || *v21 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
                  {
                    return 0;
                  }
                }

                else
                {
                  v48 = *v21;
                  *(a2 + 1) = v21 + 1;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
                {
                  v47 = 0;
                  v23 = *(a2 + 1);
                  if (v23 >= *(a2 + 2) || *v23 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v47 = *v23;
                    *(a2 + 1) = v23 + 1;
                  }

                  v24 = *(this + 6);
                  if (v24 == *(this + 7))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, v24 + 1);
                    v24 = *(this + 6);
                  }

                  v25 = v47;
                  v26 = *(this + 2);
                  *(this + 6) = v24 + 1;
                  *(v26 + 4 * v24) = v25;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                goto LABEL_65;
              }

              break;
            case 2u:
              if ((TagFallback & 7) != 0)
              {
                if (v7 != 2)
                {
                  goto LABEL_34;
                }

                v21 = *(a2 + 1);
                v14 = *(a2 + 2);
                goto LABEL_51;
              }

              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x12u, a2, this + 16);
              if (!result)
              {
                return result;
              }

LABEL_65:
              v27 = *(a2 + 1);
              v10 = *(a2 + 2);
              if (v27 < v10 && *v27 == 26)
              {
                v11 = v27 + 1;
                *(a2 + 1) = v11;
LABEL_68:
                v48 = 0;
                if (v11 >= v10 || *v11 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
                  {
                    return 0;
                  }
                }

                else
                {
                  v48 = *v11;
                  *(a2 + 1) = v11 + 1;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
                {
                  v47 = 0;
                  v28 = *(a2 + 1);
                  if (v28 >= *(a2 + 2) || *v28 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v47 = *v28;
                    *(a2 + 1) = v28 + 1;
                  }

                  v29 = *(this + 12);
                  if (v29 == *(this + 13))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 5, v29 + 1);
                    v29 = *(this + 12);
                  }

                  v30 = v47;
                  v31 = *(this + 5);
                  *(this + 12) = v29 + 1;
                  *(v31 + 4 * v29) = v30;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                goto LABEL_82;
              }

              break;
            case 3u:
              if ((TagFallback & 7) != 0)
              {
                if (v7 != 2)
                {
                  goto LABEL_34;
                }

                v11 = *(a2 + 1);
                v10 = *(a2 + 2);
                goto LABEL_68;
              }

              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x1Au, a2, this + 40);
              if (!result)
              {
                return result;
              }

LABEL_82:
              v32 = *(a2 + 1);
              v18 = *(a2 + 2);
              if (v32 < v18 && *v32 == 34)
              {
                v19 = v32 + 1;
                *(a2 + 1) = v19;
LABEL_85:
                v48 = 0;
                if (v19 >= v18 || *v19 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
                  {
                    return 0;
                  }
                }

                else
                {
                  v48 = *v19;
                  *(a2 + 1) = v19 + 1;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
                {
                  v47 = 0;
                  v33 = *(a2 + 1);
                  if (v33 >= *(a2 + 2) || *v33 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v47 = *v33;
                    *(a2 + 1) = v33 + 1;
                  }

                  v34 = *(this + 18);
                  if (v34 == *(this + 19))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v34 + 1);
                    v34 = *(this + 18);
                  }

                  v35 = v47;
                  v36 = *(this + 8);
                  *(this + 18) = v34 + 1;
                  *(v36 + 4 * v34) = v35;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                goto LABEL_99;
              }

              break;
            default:
              goto LABEL_34;
          }
        }

        if (TagFallback >> 3 > 5)
        {
          if (v6 == 6)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v12 = *(a2 + 2);
              goto LABEL_119;
            }
          }

          else if (v6 == 7 && (TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v12 = *(a2 + 2);
            goto LABEL_127;
          }

          goto LABEL_34;
        }

        if (v6 != 4)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          if (v7 != 2)
          {
            goto LABEL_34;
          }

          v19 = *(a2 + 1);
          v18 = *(a2 + 2);
          goto LABEL_85;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x22u, a2, this + 64);
        if (!result)
        {
          return result;
        }

LABEL_99:
        v37 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v37 < v8 && *v37 == 42)
        {
          v9 = v37 + 1;
          *(a2 + 1) = v9;
LABEL_102:
          v48 = 0;
          if (v9 >= v8 || *v9 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
            {
              return 0;
            }
          }

          else
          {
            v48 = *v9;
            *(a2 + 1) = v9 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v47 = 0;
            v38 = *(a2 + 1);
            if (v38 >= *(a2 + 2) || *v38 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
              {
                return 0;
              }
            }

            else
            {
              v47 = *v38;
              *(a2 + 1) = v38 + 1;
            }

            v39 = *(this + 24);
            if (v39 == *(this + 25))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 11, v39 + 1);
              v39 = *(this + 24);
            }

            v40 = v47;
            v41 = *(this + 11);
            *(this + 24) = v39 + 1;
            *(v41 + 4 * v39) = v40;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_116;
        }
      }

      if (v6 != 5)
      {
        goto LABEL_34;
      }

      if ((TagFallback & 7) != 0)
      {
        break;
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x2Au, a2, this + 88);
      if (!result)
      {
        return result;
      }

LABEL_116:
      v42 = *(a2 + 1);
      v12 = *(a2 + 2);
      if (v42 < v12 && *v42 == 48)
      {
        v20 = v42 + 1;
        *(a2 + 1) = v20;
LABEL_119:
        if (v20 >= v12 || (v43 = *v20, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 27) = v43;
          v44 = v20 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 30) |= 0x20u;
        if (v44 < v12 && *v44 == 56)
        {
          v13 = v44 + 1;
          *(a2 + 1) = v13;
LABEL_127:
          if (v13 >= v12 || (v45 = *v13, v45 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
            if (!result)
            {
              return result;
            }

            v46 = *(a2 + 1);
            v12 = *(a2 + 2);
          }

          else
          {
            *(this + 28) = v45;
            v46 = v13 + 1;
            *(a2 + 1) = v46;
          }

          *(this + 30) |= 0x40u;
          if (v46 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v7 == 2)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_102;
    }

LABEL_34:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::FaceTimeVideoStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 120))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v6 = *(v5 + 32);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 24) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = *(*(v5 + 16) + 4 * v7);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v7;
      }

      while (v7 < *(v5 + 24));
    }
  }

  if (*(v5 + 48) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v9 = *(v5 + 56);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 48) >= 1)
    {
      v10 = 0;
      do
      {
        v11 = *(*(v5 + 40) + 4 * v10);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v10;
      }

      while (v10 < *(v5 + 48));
    }
  }

  if (*(v5 + 72) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v12 = *(v5 + 80);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 72) >= 1)
    {
      v13 = 0;
      do
      {
        v14 = *(*(v5 + 64) + 4 * v13);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v13;
      }

      while (v13 < *(v5 + 72));
    }
  }

  if (*(v5 + 96) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v15 = *(v5 + 104);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 96) >= 1)
    {
      v16 = 0;
      do
      {
        v17 = *(*(v5 + 88) + 4 * v16);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v16;
      }

      while (v16 < *(v5 + 96));
    }
  }

  v18 = *(v5 + 120);
  if ((v18 & 0x20) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 108), a2, a4);
    v18 = *(v5 + 120);
  }

  if ((v18 & 0x40) != 0)
  {
    v19 = *(v5 + 112);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v19, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::FaceTimeVideoStatus::ByteSize(awd::metrics::FaceTimeVideoStatus *this)
{
  LOBYTE(v2) = *(this + 120);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if (*(this + 120))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 30);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 120) & 0x20) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 27);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 30);
  }

  else
  {
    v5 = 2;
  }

  v3 += v5;
LABEL_11:
  if ((v2 & 0x40) != 0)
  {
    v6 = *(this + 28);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
  }

LABEL_16:
  v8 = *(this + 6);
  if (v8 < 1)
  {
    LODWORD(v10) = 0;
  }

  else
  {
    v9 = 0;
    LODWORD(v10) = 0;
    do
    {
      v11 = *(*(this + 2) + 4 * v9);
      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
        v8 = *(this + 6);
      }

      else
      {
        v12 = 1;
      }

      v10 = (v12 + v10);
      ++v9;
    }

    while (v9 < v8);
    if (v10 > 0)
    {
      if (v10 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      }

      else
      {
        v13 = 2;
      }

      v3 += v13;
    }
  }

  *(this + 8) = v10;
  v14 = v3 + v10;
  v15 = *(this + 12);
  if (v15 < 1)
  {
    LODWORD(v17) = 0;
  }

  else
  {
    v16 = 0;
    LODWORD(v17) = 0;
    do
    {
      v18 = *(*(this + 5) + 4 * v16);
      if (v18 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
        v15 = *(this + 12);
      }

      else
      {
        v19 = 1;
      }

      v17 = (v19 + v17);
      ++v16;
    }

    while (v16 < v15);
    if (v17 > 0)
    {
      if (v17 >= 0x80)
      {
        v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      }

      else
      {
        v20 = 2;
      }

      v14 += v20;
    }
  }

  *(this + 14) = v17;
  v21 = v14 + v17;
  v22 = *(this + 18);
  if (v22 < 1)
  {
    LODWORD(v24) = 0;
  }

  else
  {
    v23 = 0;
    LODWORD(v24) = 0;
    do
    {
      v25 = *(*(this + 8) + 4 * v23);
      if (v25 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
        v22 = *(this + 18);
      }

      else
      {
        v26 = 1;
      }

      v24 = (v26 + v24);
      ++v23;
    }

    while (v23 < v22);
    if (v24 > 0)
    {
      if (v24 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
      }

      else
      {
        v27 = 2;
      }

      v21 += v27;
    }
  }

  *(this + 20) = v24;
  v28 = v21 + v24;
  v29 = *(this + 24);
  if (v29 < 1)
  {
    LODWORD(v31) = 0;
  }

  else
  {
    v30 = 0;
    LODWORD(v31) = 0;
    do
    {
      v32 = *(*(this + 11) + 4 * v30);
      if (v32 >= 0x80)
      {
        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32);
        v29 = *(this + 24);
      }

      else
      {
        v33 = 1;
      }

      v31 = (v33 + v31);
      ++v30;
    }

    while (v30 < v29);
    if (v31 > 0)
    {
      if (v31 >= 0x80)
      {
        v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31) + 1;
      }

      else
      {
        v34 = 2;
      }

      v28 += v34;
    }
  }

  *(this + 26) = v31;
  result = (v28 + v31);
  *(this + 29) = result;
  return result;
}

void awd::metrics::FaceTimeVideoStatus::CheckTypeAndMergeFrom(awd::metrics::FaceTimeVideoStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::FaceTimeVideoStatus::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeVideoStatus::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeVideoStatus::CopyFrom(awd::metrics::FaceTimeVideoStatus *this, const awd::metrics::FaceTimeVideoStatus *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeVideoStatus::MergeFrom(this, a2);
  }
}

double awd::metrics::FaceTimeVideoStatus::Swap(awd::metrics::FaceTimeVideoStatus *this, awd::metrics::FaceTimeVideoStatus *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    v5 = *(a2 + 3);
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v6 = *(this + 3);
    *(this + 3) = v5;
    *(a2 + 3) = v6;
    v7 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    v8 = *(a2 + 6);
    *(a2 + 5) = v7;
    v9 = *(this + 6);
    *(this + 6) = v8;
    *(a2 + 6) = v9;
    v10 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    v11 = *(a2 + 9);
    *(a2 + 8) = v10;
    v12 = *(this + 9);
    *(this + 9) = v11;
    *(a2 + 9) = v12;
    v13 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    result = *(a2 + 12);
    *(a2 + 11) = v13;
    v15 = *(this + 12);
    *(this + 12) = result;
    *(a2 + 12) = v15;
    LODWORD(v13) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v13;
    LODWORD(v13) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v13;
    LODWORD(v13) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v13;
    LODWORD(v13) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v13;
  }

  return result;
}

double awd::metrics::FaceTimeInterfaceStatus::SharedCtor(awd::metrics::FaceTimeInterfaceStatus *this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = v1;
  *(this + 8) = 0;
  *(this + 3) = v1;
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0;
  *(this + 13) = v1;
  *(this + 14) = 0;
  return result;
}

awd::metrics::FaceTimeInterfaceStatus *awd::metrics::FaceTimeInterfaceStatus::FaceTimeInterfaceStatus(awd::metrics::FaceTimeInterfaceStatus *this, const awd::metrics::FaceTimeInterfaceStatus *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4DDE0;
  *(this + 1) = 0;
  *(this + 8) = 0;
  *(this + 2) = v3;
  *(this + 3) = v3;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0;
  *(this + 13) = v3;
  *(this + 14) = 0;
  awd::metrics::FaceTimeInterfaceStatus::MergeFrom(this, a2);
  return this;
}

void awd::metrics::FaceTimeInterfaceStatus::MergeFrom(awd::metrics::FaceTimeInterfaceStatus *this, const awd::metrics::FaceTimeInterfaceStatus *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v31);
  }

  v4 = *(a2 + 29);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v5 = *(a2 + 1);
    *(this + 29) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 29);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) != 0)
  {
    v9 = *(a2 + 2);
    *(this + 29) |= 2u;
    v10 = *(this + 2);
    if (v10 == v6)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    v4 = *(a2 + 29);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_36;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

  v11 = *(a2 + 8);
  *(this + 29) |= 4u;
  *(this + 8) = v11;
  v4 = *(a2 + 29);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_36:
  v12 = *(a2 + 3);
  *(this + 29) |= 8u;
  v13 = *(this + 3);
  if (v13 == v6)
  {
    operator new();
  }

  std::string::operator=(v13, v12);
  v4 = *(a2 + 29);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_40:
    v15 = *(a2 + 10);
    *(this + 29) |= 0x20u;
    *(this + 10) = v15;
    v4 = *(a2 + 29);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_39:
  v14 = *(a2 + 9);
  *(this + 29) |= 0x10u;
  *(this + 9) = v14;
  v4 = *(a2 + 29);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_41:
  v16 = *(a2 + 11);
  *(this + 29) |= 0x40u;
  *(this + 11) = v16;
  v4 = *(a2 + 29);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v7 = *(a2 + 12);
    *(this + 29) |= 0x80u;
    *(this + 12) = v7;
    v4 = *(a2 + 29);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_24;
  }

  if ((v4 & 0x100) != 0)
  {
    v17 = *(a2 + 13);
    *(this + 29) |= 0x100u;
    *(this + 13) = v17;
    v4 = *(a2 + 29);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_45;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v18 = *(a2 + 14);
  *(this + 29) |= 0x200u;
  *(this + 14) = v18;
  v4 = *(a2 + 29);
  if ((v4 & 0x400) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  v19 = *(a2 + 15);
  *(this + 29) |= 0x400u;
  *(this + 15) = v19;
  v4 = *(a2 + 29);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  v20 = *(a2 + 16);
  *(this + 29) |= 0x800u;
  *(this + 16) = v20;
  v4 = *(a2 + 29);
  if ((v4 & 0x1000) == 0)
  {
LABEL_20:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  v21 = *(a2 + 17);
  *(this + 29) |= 0x1000u;
  *(this + 17) = v21;
  v4 = *(a2 + 29);
  if ((v4 & 0x2000) == 0)
  {
LABEL_21:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  v22 = *(a2 + 18);
  *(this + 29) |= 0x2000u;
  *(this + 18) = v22;
  v4 = *(a2 + 29);
  if ((v4 & 0x4000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_49:
  v23 = *(a2 + 19);
  *(this + 29) |= 0x4000u;
  *(this + 19) = v23;
  v4 = *(a2 + 29);
  if ((v4 & 0x8000) != 0)
  {
LABEL_23:
    v8 = *(a2 + 20);
    *(this + 29) |= 0x8000u;
    *(this + 20) = v8;
    v4 = *(a2 + 29);
  }

LABEL_24:
  if ((v4 & 0xFF0000) == 0)
  {
    return;
  }

  if ((v4 & 0x10000) != 0)
  {
    v24 = *(a2 + 21);
    *(this + 29) |= 0x10000u;
    *(this + 21) = v24;
    v4 = *(a2 + 29);
    if ((v4 & 0x20000) == 0)
    {
LABEL_27:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_53;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_27;
  }

  v25 = *(a2 + 22);
  *(this + 29) |= 0x20000u;
  *(this + 22) = v25;
  v4 = *(a2 + 29);
  if ((v4 & 0x40000) == 0)
  {
LABEL_28:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

LABEL_53:
  v26 = *(a2 + 23);
  *(this + 29) |= 0x40000u;
  *(this + 23) = v26;
  v4 = *(a2 + 29);
  if ((v4 & 0x80000) == 0)
  {
LABEL_29:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_55;
  }

LABEL_54:
  v27 = *(a2 + 24);
  *(this + 29) |= 0x80000u;
  *(this + 24) = v27;
  v4 = *(a2 + 29);
  if ((v4 & 0x100000) == 0)
  {
LABEL_30:
    if ((v4 & 0x200000) == 0)
    {
      return;
    }

    goto LABEL_56;
  }

LABEL_55:
  v28 = *(a2 + 100);
  *(this + 29) |= 0x100000u;
  *(this + 100) = v28;
  if ((*(a2 + 29) & 0x200000) == 0)
  {
    return;
  }

LABEL_56:
  v29 = *(a2 + 13);
  *(this + 29) |= 0x200000u;
  v30 = *(this + 13);
  if (v30 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v30, v29);
}

void sub_2963E24C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeInterfaceStatus::~FaceTimeInterfaceStatus(awd::metrics::FaceTimeInterfaceStatus *this)
{
  *this = &unk_2A1D4DDE0;
  awd::metrics::FaceTimeInterfaceStatus::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4DDE0;
  awd::metrics::FaceTimeInterfaceStatus::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4DDE0;
  awd::metrics::FaceTimeInterfaceStatus::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimeInterfaceStatus::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C25A1F0](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 24);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x29C25A1F0](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 104);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    JUMPOUT(0x29C25A1F0);
  }

  return this;
}

uint64_t awd::metrics::FaceTimeInterfaceStatus::default_instance(awd::metrics::FaceTimeInterfaceStatus *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimeInterfaceStatus::default_instance_;
  if (!awd::metrics::FaceTimeInterfaceStatus::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimeInterfaceStatus::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeInterfaceStatus::Clear(uint64_t this)
{
  v1 = *(this + 116);
  if (v1)
  {
    *(this + 8) = 0;
    v2 = MEMORY[0x29EDC9758];
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3 != MEMORY[0x29EDC9758])
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    *(this + 32) = 0;
    if ((*(this + 116) & 8) != 0)
    {
      v4 = *(this + 24);
      if (v4 != v2)
      {
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
    }

    *(this + 44) = 0;
    *(this + 36) = 0;
    v1 = *(this + 116);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 68) = 0u;
    *(this + 52) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 92) = 0;
    *(this + 84) = 0;
    *(this + 100) = 0;
    if ((v1 & 0x200000) != 0)
    {
      v5 = *(this + 104);
      if (v5 != MEMORY[0x29EDC9758])
      {
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
    }
  }

  *(this + 116) = 0;
  return this;
}

uint64_t awd::metrics::FaceTimeInterfaceStatus::MergePartialFromCodedStream(awd::metrics::FaceTimeInterfaceStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
  while (2)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        v21 = *(this + 29) | 1;
        *(this + 29) = v21;
        if (v11 < v8 && *v11 == 18)
        {
          *(a2 + 1) = v11 + 1;
          goto LABEL_62;
        }

        continue;
      case 2u:
        if (v7 != 2)
        {
          goto LABEL_53;
        }

        v21 = *(this + 29);
LABEL_62:
        *(this + 29) = v21 | 2;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v33 = *(a2 + 1);
        if (v33 >= *(a2 + 2) || *v33 != 29)
        {
          continue;
        }

        *(a2 + 1) = v33 + 1;
LABEL_68:
        v70 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v70) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = v70;
        v19 = *(this + 29) | 4;
        *(this + 29) = v19;
        v34 = *(a2 + 1);
        if (v34 >= *(a2 + 2) || *v34 != 34)
        {
          continue;
        }

        *(a2 + 1) = v34 + 1;
LABEL_72:
        *(this + 29) = v19 | 8;
        if (*(this + 3) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v35 = *(a2 + 1);
        if (v35 >= *(a2 + 2) || *v35 != 45)
        {
          continue;
        }

        *(a2 + 1) = v35 + 1;
LABEL_78:
        v69 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v69))
        {
          *(this + 9) = v69;
          *(this + 29) |= 0x10u;
          v36 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v36 < v12 && *v36 == 48)
          {
            v24 = v36 + 1;
            *(a2 + 1) = v24;
LABEL_82:
            if (v24 >= v12 || (v37 = *v24, v37 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
              if (!result)
              {
                return result;
              }

              v38 = *(a2 + 1);
              v12 = *(a2 + 2);
            }

            else
            {
              *(this + 10) = v37;
              v38 = v24 + 1;
              *(a2 + 1) = v38;
            }

            *(this + 29) |= 0x20u;
            if (v38 < v12 && *v38 == 56)
            {
              v27 = v38 + 1;
              *(a2 + 1) = v27;
LABEL_90:
              if (v27 >= v12 || (v39 = *v27, v39 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
                if (!result)
                {
                  return result;
                }

                v40 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                *(this + 11) = v39;
                v40 = v27 + 1;
                *(a2 + 1) = v40;
              }

              *(this + 29) |= 0x40u;
              if (v40 < v12 && *v40 == 64)
              {
                v20 = v40 + 1;
                *(a2 + 1) = v20;
LABEL_98:
                if (v20 >= v12 || (v41 = *v20, v41 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                  if (!result)
                  {
                    return result;
                  }

                  v42 = *(a2 + 1);
                  v12 = *(a2 + 2);
                }

                else
                {
                  *(this + 12) = v41;
                  v42 = v20 + 1;
                  *(a2 + 1) = v42;
                }

                *(this + 29) |= 0x80u;
                if (v42 < v12 && *v42 == 72)
                {
                  v30 = v42 + 1;
                  *(a2 + 1) = v30;
LABEL_106:
                  if (v30 >= v12 || (v43 = *v30, v43 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                    if (!result)
                    {
                      return result;
                    }

                    v44 = *(a2 + 1);
                    v12 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 13) = v43;
                    v44 = v30 + 1;
                    *(a2 + 1) = v44;
                  }

                  *(this + 29) |= 0x100u;
                  if (v44 < v12 && *v44 == 80)
                  {
                    v17 = v44 + 1;
                    *(a2 + 1) = v17;
LABEL_114:
                    if (v17 >= v12 || (v45 = *v17, v45 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
                      if (!result)
                      {
                        return result;
                      }

                      v46 = *(a2 + 1);
                      v12 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 14) = v45;
                      v46 = v17 + 1;
                      *(a2 + 1) = v46;
                    }

                    *(this + 29) |= 0x200u;
                    if (v46 < v12 && *v46 == 88)
                    {
                      v29 = v46 + 1;
                      *(a2 + 1) = v29;
LABEL_122:
                      if (v29 >= v12 || (v47 = *v29, v47 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
                        if (!result)
                        {
                          return result;
                        }

                        v48 = *(a2 + 1);
                        v12 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 15) = v47;
                        v48 = v29 + 1;
                        *(a2 + 1) = v48;
                      }

                      *(this + 29) |= 0x400u;
                      if (v48 < v12 && *v48 == 96)
                      {
                        v15 = v48 + 1;
                        *(a2 + 1) = v15;
LABEL_130:
                        if (v15 >= v12 || (v49 = *v15, v49 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
                          if (!result)
                          {
                            return result;
                          }

                          v50 = *(a2 + 1);
                          v12 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 16) = v49;
                          v50 = v15 + 1;
                          *(a2 + 1) = v50;
                        }

                        *(this + 29) |= 0x800u;
                        if (v50 < v12 && *v50 == 104)
                        {
                          v16 = v50 + 1;
                          *(a2 + 1) = v16;
LABEL_138:
                          if (v16 >= v12 || (v51 = *v16, v51 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
                            if (!result)
                            {
                              return result;
                            }

                            v52 = *(a2 + 1);
                            v12 = *(a2 + 2);
                          }

                          else
                          {
                            *(this + 17) = v51;
                            v52 = v16 + 1;
                            *(a2 + 1) = v52;
                          }

                          *(this + 29) |= 0x1000u;
                          if (v52 < v12 && *v52 == 112)
                          {
                            v26 = v52 + 1;
                            *(a2 + 1) = v26;
LABEL_146:
                            if (v26 >= v12 || (v53 = *v26, v53 < 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
                              if (!result)
                              {
                                return result;
                              }

                              v54 = *(a2 + 1);
                              v12 = *(a2 + 2);
                            }

                            else
                            {
                              *(this + 18) = v53;
                              v54 = v26 + 1;
                              *(a2 + 1) = v54;
                            }

                            *(this + 29) |= 0x2000u;
                            if (v54 < v12 && *v54 == 120)
                            {
                              v14 = v54 + 1;
                              *(a2 + 1) = v14;
LABEL_154:
                              if (v14 >= v12 || (v55 = *v14, v55 < 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
                                if (!result)
                                {
                                  return result;
                                }

                                v56 = *(a2 + 1);
                                v12 = *(a2 + 2);
                              }

                              else
                              {
                                *(this + 19) = v55;
                                v56 = (v14 + 1);
                                *(a2 + 1) = v56;
                              }

                              *(this + 29) |= 0x4000u;
                              if (v12 - v56 >= 2 && *v56 == 128 && v56[1] == 1)
                              {
                                v18 = (v56 + 2);
                                *(a2 + 1) = v18;
LABEL_163:
                                if (v18 >= v12 || (v57 = *v18, v57 < 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v58 = *(a2 + 1);
                                  v12 = *(a2 + 2);
                                }

                                else
                                {
                                  *(this + 20) = v57;
                                  v58 = (v18 + 1);
                                  *(a2 + 1) = v58;
                                }

                                *(this + 29) |= 0x8000u;
                                if (v12 - v58 >= 2 && *v58 == 136 && v58[1] == 1)
                                {
                                  v13 = (v58 + 2);
                                  *(a2 + 1) = v13;
LABEL_172:
                                  if (v13 >= v12 || (v59 = *v13, v59 < 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v60 = *(a2 + 1);
                                    v12 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    *(this + 21) = v59;
                                    v60 = (v13 + 1);
                                    *(a2 + 1) = v60;
                                  }

                                  *(this + 29) |= 0x10000u;
                                  if (v12 - v60 >= 2 && *v60 == 144 && v60[1] == 1)
                                  {
                                    v22 = (v60 + 2);
                                    *(a2 + 1) = v22;
LABEL_181:
                                    if (v22 >= v12 || (v61 = *v22, v61 < 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v62 = *(a2 + 1);
                                      v12 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *(this + 22) = v61;
                                      v62 = (v22 + 1);
                                      *(a2 + 1) = v62;
                                    }

                                    *(this + 29) |= 0x20000u;
                                    if (v12 - v62 >= 2 && *v62 == 152 && v62[1] == 1)
                                    {
                                      v28 = (v62 + 2);
                                      *(a2 + 1) = v28;
LABEL_190:
                                      if (v28 >= v12 || (v63 = *v28, v63 < 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v64 = *(a2 + 1);
                                        v12 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        *(this + 23) = v63;
                                        v64 = (v28 + 1);
                                        *(a2 + 1) = v64;
                                      }

                                      *(this + 29) |= 0x40000u;
                                      if (v12 - v64 >= 2 && *v64 == 160 && v64[1] == 1)
                                      {
                                        v31 = (v64 + 2);
                                        *(a2 + 1) = v31;
LABEL_199:
                                        if (v31 >= v12 || (v65 = *v31, v65 < 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v66 = *(a2 + 1);
                                          v12 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          *(this + 24) = v65;
                                          v66 = (v31 + 1);
                                          *(a2 + 1) = v66;
                                        }

                                        *(this + 29) |= 0x80000u;
                                        if (v12 - v66 >= 2 && *v66 == 168 && v66[1] == 1)
                                        {
                                          v23 = (v66 + 2);
                                          *(a2 + 1) = v23;
LABEL_208:
                                          v71 = 0;
                                          if (v23 >= v12 || (v67 = *v23, (v67 & 0x80000000) != 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v71);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v67 = v71;
                                            v68 = *(a2 + 1);
                                            v12 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            v68 = (v23 + 1);
                                            *(a2 + 1) = v68;
                                          }

                                          *(this + 100) = v67 != 0;
                                          v25 = *(this + 29) | 0x100000;
                                          *(this + 29) = v25;
                                          if (v12 - v68 >= 2 && *v68 == 178 && v68[1] == 1)
                                          {
                                            *(a2 + 1) = v68 + 2;
LABEL_217:
                                            *(this + 29) = v25 | 0x200000;
                                            if (*(this + 13) == v4)
                                            {
                                              operator new();
                                            }

                                            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                                            {
                                              *(a2 + 8) = 0;
                                              result = 1;
                                              *(a2 + 36) = 1;
                                              return result;
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
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if (v7 == 5)
        {
          goto LABEL_68;
        }

        goto LABEL_53;
      case 4u:
        if (v7 != 2)
        {
          goto LABEL_53;
        }

        v19 = *(this + 29);
        goto LABEL_72;
      case 5u:
        if (v7 == 5)
        {
          goto LABEL_78;
        }

        goto LABEL_53;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v24 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_82;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v27 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_90;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v20 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_98;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v30 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_106;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v17 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_114;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v29 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_122;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v15 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_130;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v16 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_138;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v26 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_146;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v14 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_154;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v18 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_163;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_172;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v22 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_181;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v28 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_190;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v31 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_199;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_53;
        }

        v23 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_208;
      case 0x16u:
        if (v7 != 2)
        {
          goto LABEL_53;
        }

        v25 = *(this + 29);
        goto LABEL_217;
      default:
LABEL_53:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t awd::metrics::FaceTimeInterfaceStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 116);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 116);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 32), a3);
  v6 = *(v5 + 116);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  v8 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 116);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 36), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 44), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 48), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 52), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 56), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 60), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 64), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 68), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 72), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 76), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 80), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 84), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 88), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 92), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

LABEL_44:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x15, *(v5 + 100), a2, a4);
    if ((*(v5 + 116) & 0x200000) == 0)
    {
      return this;
    }

    goto LABEL_45;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 96), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x100000) != 0)
  {
    goto LABEL_44;
  }

LABEL_22:
  if ((v6 & 0x200000) == 0)
  {
    return this;
  }

LABEL_45:
  v9 = *(v5 + 104);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::FaceTimeInterfaceStatus::ByteSize(awd::metrics::FaceTimeInterfaceStatus *this)
{
  v2 = *(this + 29);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_47;
  }

  if (v2)
  {
    LODWORD(v3) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 29);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    LODWORD(v3) = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v4 = *(this + 2);
  v5 = *(v4 + 23);
  v6 = v5;
  v7 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v2 = *(this + 29);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 1;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  LODWORD(v3) = v3 + v9 + v5 + 1;
LABEL_16:
  if ((v2 & 4) != 0)
  {
    LODWORD(v3) = v3 + 5;
  }

  if ((v2 & 8) != 0)
  {
    v10 = *(this + 3);
    v11 = *(v10 + 23);
    v12 = v11;
    v13 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v14 = *(v10 + 23);
    }

    else
    {
      v14 = v13;
    }

    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      v11 = *(v10 + 23);
      v13 = *(v10 + 8);
      v2 = *(this + 29);
      v12 = *(v10 + 23);
    }

    else
    {
      v15 = 1;
    }

    if (v12 < 0)
    {
      v11 = v13;
    }

    LODWORD(v3) = v3 + v15 + v11 + 1;
  }

  if ((v2 & 0x10) != 0)
  {
    v3 = (v3 + 5);
  }

  else
  {
    v3 = v3;
  }

  if ((v2 & 0x20) != 0)
  {
    v16 = *(this + 10);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = *(this + 29);
    }

    else
    {
      v17 = 2;
    }

    v3 = (v17 + v3);
    if ((v2 & 0x40) == 0)
    {
LABEL_33:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_43;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_33;
  }

  v18 = *(this + 11);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v2 = *(this + 29);
  }

  else
  {
    v19 = 2;
  }

  v3 = (v19 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_43:
    v20 = *(this + 12);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v2 = *(this + 29);
    }

    else
    {
      v21 = 2;
    }

    v3 = (v21 + v3);
  }

LABEL_47:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_89;
  }

  if ((v2 & 0x100) != 0)
  {
    v22 = *(this + 13);
    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
      v2 = *(this + 29);
    }

    else
    {
      v23 = 2;
    }

    v3 = (v23 + v3);
    if ((v2 & 0x200) == 0)
    {
LABEL_50:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_65;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_50;
  }

  v24 = *(this + 14);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v2 = *(this + 29);
  }

  else
  {
    v25 = 2;
  }

  v3 = (v25 + v3);
  if ((v2 & 0x400) == 0)
  {
LABEL_51:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_69;
  }

LABEL_65:
  v26 = *(this + 15);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v2 = *(this + 29);
  }

  else
  {
    v27 = 2;
  }

  v3 = (v27 + v3);
  if ((v2 & 0x800) == 0)
  {
LABEL_52:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_73;
  }

LABEL_69:
  v28 = *(this + 16);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v2 = *(this + 29);
  }

  else
  {
    v29 = 2;
  }

  v3 = (v29 + v3);
  if ((v2 & 0x1000) == 0)
  {
LABEL_53:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_77;
  }

LABEL_73:
  v30 = *(this + 17);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
    v2 = *(this + 29);
  }

  else
  {
    v31 = 2;
  }

  v3 = (v31 + v3);
  if ((v2 & 0x2000) == 0)
  {
LABEL_54:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_81;
  }

LABEL_77:
  v32 = *(this + 18);
  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 1;
    v2 = *(this + 29);
  }

  else
  {
    v33 = 2;
  }

  v3 = (v33 + v3);
  if ((v2 & 0x4000) == 0)
  {
LABEL_55:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_85;
  }

LABEL_81:
  v34 = *(this + 19);
  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 1;
    v2 = *(this + 29);
  }

  else
  {
    v35 = 2;
  }

  v3 = (v35 + v3);
  if ((v2 & 0x8000) != 0)
  {
LABEL_85:
    v36 = *(this + 20);
    if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
      v2 = *(this + 29);
    }

    else
    {
      v37 = 3;
    }

    v3 = (v37 + v3);
  }

LABEL_89:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_124;
  }

  if ((v2 & 0x10000) != 0)
  {
    v38 = *(this + 21);
    if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
      v2 = *(this + 29);
    }

    else
    {
      v39 = 3;
    }

    LODWORD(v3) = v39 + v3;
    if ((v2 & 0x20000) == 0)
    {
LABEL_92:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_103;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_92;
  }

  v40 = *(this + 22);
  if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 2;
    v2 = *(this + 29);
  }

  else
  {
    v41 = 3;
  }

  LODWORD(v3) = v41 + v3;
  if ((v2 & 0x40000) == 0)
  {
LABEL_93:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_107;
  }

LABEL_103:
  v42 = *(this + 23);
  if (v42 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 2;
    v2 = *(this + 29);
  }

  else
  {
    v43 = 3;
  }

  LODWORD(v3) = v43 + v3;
  if ((v2 & 0x80000) != 0)
  {
LABEL_107:
    v44 = *(this + 24);
    if (v44 >= 0x80)
    {
      v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
      v2 = *(this + 29);
    }

    else
    {
      v45 = 3;
    }

    LODWORD(v3) = v45 + v3;
  }

LABEL_111:
  if ((v2 & 0x100000) != 0)
  {
    v3 = (v3 + 3);
  }

  else
  {
    v3 = v3;
  }

  if ((v2 & 0x200000) != 0)
  {
    v46 = *(this + 13);
    v47 = *(v46 + 23);
    v48 = v47;
    v49 = *(v46 + 8);
    if ((v47 & 0x80u) == 0)
    {
      v50 = *(v46 + 23);
    }

    else
    {
      v50 = v49;
    }

    if (v50 >= 0x80)
    {
      v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50);
      v47 = *(v46 + 23);
      v49 = *(v46 + 8);
      v48 = *(v46 + 23);
    }

    else
    {
      v51 = 1;
    }

    if (v48 < 0)
    {
      v47 = v49;
    }

    v3 = (v3 + v51 + v47 + 2);
  }

LABEL_124:
  *(this + 28) = v3;
  return v3;
}

void awd::metrics::FaceTimeInterfaceStatus::CheckTypeAndMergeFrom(awd::metrics::FaceTimeInterfaceStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::FaceTimeInterfaceStatus::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeInterfaceStatus::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeInterfaceStatus::CopyFrom(awd::metrics::FaceTimeInterfaceStatus *this, const awd::metrics::FaceTimeInterfaceStatus *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeInterfaceStatus::MergeFrom(this, a2);
  }
}

float awd::metrics::FaceTimeInterfaceStatus::Swap(awd::metrics::FaceTimeInterfaceStatus *this, awd::metrics::FaceTimeInterfaceStatus *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v5 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
    v6 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v6;
    result = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = result;
    LODWORD(v6) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
    LODWORD(v6) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v6;
    LODWORD(v6) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v6;
    LODWORD(v6) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v6;
    LODWORD(v6) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v6;
    LODWORD(v6) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v6;
    LODWORD(v6) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v6;
    LODWORD(v6) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v6;
    LODWORD(v6) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v6;
    LODWORD(v6) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v6;
    LODWORD(v6) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v6;
    LODWORD(v6) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v6;
    LODWORD(v6) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v6;
    LODWORD(v6) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v6;
    LODWORD(v6) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v6;
    LOBYTE(v6) = *(this + 100);
    *(this + 100) = *(a2 + 100);
    *(a2 + 100) = v6;
    v8 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v8;
    LODWORD(v8) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v8;
    LODWORD(v8) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v8;
  }

  return result;
}

double awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::SharedCtor(awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *this)
{
  v1 = MEMORY[0x29EDC9758];
  result = 0.0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = v1;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return result;
}

awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::FaceTimeAudioTierReport_AudioTierCounter(awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *this, const awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *a2)
{
  *this = &unk_2A1D4DE58;
  v3 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::MergeFrom(this, a2);
  return this;
}

void awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::MergeFrom(awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *this, const awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = *(a2 + 13);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 2);
    *(this + 13) |= 1u;
    *(this + 2) = v7;
    v4 = *(a2 + 13);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 3);
  *(this + 13) |= 2u;
  *(this + 3) = v8;
  v4 = *(a2 + 13);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(a2 + 2);
  *(this + 13) |= 4u;
  v10 = *(this + 2);
  if (v10 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v10, v9);
  v4 = *(a2 + 13);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 6);
  *(this + 13) |= 8u;
  *(this + 6) = v11;
  v4 = *(a2 + 13);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_23:
    v13 = *(a2 + 8);
    *(this + 13) |= 0x20u;
    *(this + 8) = v13;
    v4 = *(a2 + 13);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_22:
  v12 = *(a2 + 7);
  *(this + 13) |= 0x10u;
  *(this + 7) = v12;
  v4 = *(a2 + 13);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_24:
  v14 = *(a2 + 9);
  *(this + 13) |= 0x40u;
  *(this + 9) = v14;
  v4 = *(a2 + 13);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 10);
    *(this + 13) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(a2 + 13);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 11);
    *(this + 13) |= 0x100u;
    *(this + 11) = v6;
  }
}

void sub_2963E3F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::~FaceTimeAudioTierReport_AudioTierCounter(awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *this)
{
  *this = &unk_2A1D4DE58;
  awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4DE58;
  awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4DE58;
  awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::SharedDtor(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C25A1F0);
  }

  return this;
}

uint64_t awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::default_instance(awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::default_instance_;
  if (!awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::Clear(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 4) != 0)
    {
      v2 = *(this + 16);
      if (v2 != MEMORY[0x29EDC9758])
      {
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
    }

    *(this + 24) = 0;
    *(this + 32) = 0;
    *(this + 40) = 0;
    v1 = *(this + 52);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 44) = 0;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::MergePartialFromCodedStream(awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v7 != 3)
            {
              if (v7 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_38;
              }

              v13 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_61;
            }

            if (v8 != 2)
            {
              goto LABEL_38;
            }

            v18 = *(this + 13);
LABEL_55:
            *(this + 13) = v18 | 4;
            if (*(this + 2) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v24 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v24 < v9 && *v24 == 32)
            {
              v13 = v24 + 1;
              *(a2 + 1) = v13;
LABEL_61:
              if (v13 >= v9 || (v25 = *v13, v25 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
                if (!result)
                {
                  return result;
                }

                v26 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 6) = v25;
                v26 = v13 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 13) |= 8u;
              if (v26 < v9 && *v26 == 40)
              {
                v20 = v26 + 1;
                *(a2 + 1) = v20;
                goto LABEL_69;
              }
            }
          }

          else
          {
            if (v7 != 1)
            {
              if (v7 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_38;
              }

              v12 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_47;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_38;
            }

            v15 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v15 >= v11 || (v16 = *v15, v16 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
              if (!result)
              {
                return result;
              }

              v17 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              *(this + 2) = v16;
              v17 = v15 + 1;
              *(a2 + 1) = v17;
            }

            *(this + 13) |= 1u;
            if (v17 < v11 && *v17 == 16)
            {
              v12 = v17 + 1;
              *(a2 + 1) = v12;
LABEL_47:
              if (v12 >= v11 || (v22 = *v12, v22 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
                if (!result)
                {
                  return result;
                }

                v23 = *(a2 + 1);
                v11 = *(a2 + 2);
              }

              else
              {
                *(this + 3) = v22;
                v23 = v12 + 1;
                *(a2 + 1) = v23;
              }

              v18 = *(this + 13) | 2;
              *(this + 13) = v18;
              if (v23 < v11 && *v23 == 26)
              {
                *(a2 + 1) = v23 + 1;
                goto LABEL_55;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v7 != 5)
        {
          if (v7 != 6 || (TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v14 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_77;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v20 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_69:
        if (v20 >= v9 || (v27 = *v20, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v27;
          v28 = v20 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 13) |= 0x10u;
        if (v28 < v9 && *v28 == 48)
        {
          v14 = v28 + 1;
          *(a2 + 1) = v14;
LABEL_77:
          if (v14 >= v9 || (v29 = *v14, v29 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v30 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v29;
            v30 = v14 + 1;
            *(a2 + 1) = v30;
          }

          *(this + 13) |= 0x20u;
          if (v30 < v9 && *v30 == 56)
          {
            v19 = v30 + 1;
            *(a2 + 1) = v19;
LABEL_85:
            if (v19 >= v9 || (v31 = *v19, v31 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
              if (!result)
              {
                return result;
              }

              v32 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 9) = v31;
              v32 = v19 + 1;
              *(a2 + 1) = v32;
            }

            *(this + 13) |= 0x40u;
            if (v32 < v9 && *v32 == 64)
            {
              v21 = v32 + 1;
              *(a2 + 1) = v21;
              goto LABEL_93;
            }
          }
        }
      }

      if (v7 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v19 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_85;
      }

      if (v7 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_38;
      }

      v21 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_93:
      if (v21 >= v9 || (v33 = *v21, v33 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
        if (!result)
        {
          return result;
        }

        v34 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 10) = v33;
        v34 = v21 + 1;
        *(a2 + 1) = v34;
      }

      *(this + 13) |= 0x80u;
      if (v34 < v9 && *v34 == 72)
      {
        v10 = v34 + 1;
        *(a2 + 1) = v10;
LABEL_101:
        if (v10 >= v9 || (v35 = *v10, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v35;
          v36 = v10 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 13) |= 0x100u;
        if (v36 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 9 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_101;
    }

LABEL_38:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
    if ((*(v5 + 52) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v6 & 0x100) == 0)
  {
    return this;
  }

LABEL_19:
  v8 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v8, a2, a4);
}

uint64_t awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::ByteSize(awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *this)
{
  v2 = *(this + 13);
  if (!v2)
  {
    v3 = 0;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  if (v2)
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 13);
      if ((v2 & 2) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_15;
    }
  }

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_15:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 2);
    v8 = *(v7 + 23);
    v9 = v8;
    v10 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v11 = *(v7 + 23);
    }

    else
    {
      v11 = v10;
    }

    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
      v8 = *(v7 + 23);
      v10 = *(v7 + 8);
      v2 = *(this + 13);
      v9 = *(v7 + 23);
    }

    else
    {
      v12 = 1;
    }

    if (v9 < 0)
    {
      v8 = v10;
    }

    v3 = (v3 + v12 + v8 + 1);
    if ((v2 & 8) == 0)
    {
LABEL_17:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_36;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_17;
  }

  v13 = *(this + 6);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v14 = 2;
  }

  v3 = (v14 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_18:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_36:
  v15 = *(this + 7);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v16 = 2;
  }

  v3 = (v16 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_19:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_40:
  v17 = *(this + 8);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v18 = 2;
  }

  v3 = (v18 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_20:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_44:
  v19 = *(this + 9);
  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v20 = 2;
  }

  v3 = (v20 + v3);
  if ((v2 & 0x80) == 0)
  {
LABEL_21:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

LABEL_48:
  v21 = *(this + 10);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v22 = 2;
  }

  v3 = (v22 + v3);
  if ((v2 & 0x100) != 0)
  {
LABEL_52:
    v23 = *(this + 11);
    if (v23 >= 0x80)
    {
      v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    }

    else
    {
      v24 = 2;
    }

    v3 = (v24 + v3);
  }

LABEL_56:
  *(this + 12) = v3;
  return v3;
}

void awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::CheckTypeAndMergeFrom(awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::CopyFrom(awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *this, const awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::Swap(uint64_t this, awd::metrics::FaceTimeAudioTierReport_AudioTierCounter *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v4;
    LODWORD(v4) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v4;
    LODWORD(v4) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v4;
    LODWORD(v4) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v4;
    LODWORD(v4) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v4;
    LODWORD(v4) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v4;
    LODWORD(v4) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v4;
    LODWORD(v4) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v4;
    LODWORD(v4) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v4;
  }

  return this;
}

void *awd::metrics::FaceTimeAudioTierReport::SharedCtor(void *this)
{
  this[6] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

awd::metrics::FaceTimeAudioTierReport *awd::metrics::FaceTimeAudioTierReport::FaceTimeAudioTierReport(awd::metrics::FaceTimeAudioTierReport *this, const awd::metrics::FaceTimeAudioTierReport *a2)
{
  *this = &unk_2A1D4DED0;
  *(this + 6) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  awd::metrics::FaceTimeAudioTierReport::MergeFrom(this, a2);
  return this;
}

void sub_2963E4C14(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::FaceTimeAudioTierReport_AudioTierCounter>::TypeHandler>(v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeAudioTierReport::MergeFrom(awd::metrics::FaceTimeAudioTierReport *this, const awd::metrics::FaceTimeAudioTierReport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(this + 8);
  v5 = *(a2 + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
  LODWORD(v6) = *(a2 + 8);
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if (v7 >= v6)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
      }

      v8 = *(*(a2 + 3) + 8 * v7);
      v9 = *(this + 9);
      v10 = *(this + 8);
      if (v10 >= v9)
      {
        if (v9 == *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
          v9 = *(this + 9);
        }

        *(this + 9) = v9 + 1;
        operator new();
      }

      v11 = *(this + 3);
      *(this + 8) = v10 + 1;
      awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 8);
    }

    while (v7 < v6);
  }

  LOBYTE(v12) = *(a2 + 52);
  if (v12)
  {
    if (*(a2 + 52))
    {
      v14 = *(a2 + 1);
      *(this + 13) |= 1u;
      *(this + 1) = v14;
      v12 = *(a2 + 13);
      if ((v12 & 2) == 0)
      {
LABEL_16:
        if ((v12 & 4) == 0)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_16;
    }

    v15 = *(a2 + 4);
    *(this + 13) |= 2u;
    *(this + 4) = v15;
    if ((*(a2 + 13) & 4) == 0)
    {
      return;
    }

LABEL_17:
    v13 = *(a2 + 5);
    *(this + 13) |= 4u;
    *(this + 5) = v13;
  }
}

void sub_2963E4E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeAudioTierReport::~FaceTimeAudioTierReport(awd::metrics::FaceTimeAudioTierReport *this)
{
  *this = &unk_2A1D4DED0;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::FaceTimeAudioTierReport_AudioTierCounter>::TypeHandler>(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::FaceTimeAudioTierReport::~FaceTimeAudioTierReport(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimeAudioTierReport::default_instance(awd::metrics::FaceTimeAudioTierReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimeAudioTierReport::default_instance_;
  if (!awd::metrics::FaceTimeAudioTierReport::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimeAudioTierReport::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeAudioTierReport::Clear(awd::metrics::FaceTimeAudioTierReport *this)
{
  if (*(this + 52))
  {
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::FaceTimeAudioTierReport_AudioTierCounter>::TypeHandler>(this + 24);
  *(this + 13) = 0;
  return result;
}

uint64_t awd::metrics::FaceTimeAudioTierReport::MergePartialFromCodedStream(awd::metrics::FaceTimeAudioTierReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_37;
          }

          goto LABEL_20;
        }

        if (v6 != 4 || v7 != 2)
        {
          goto LABEL_20;
        }

        while (2)
        {
          v19 = *(this + 9);
          v20 = *(this + 8);
          if (v20 >= v19)
          {
            if (v19 == *(this + 10))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
              v19 = *(this + 9);
            }

            *(this + 9) = v19 + 1;
            operator new();
          }

          v21 = *(this + 3);
          *(this + 8) = v20 + 1;
          v22 = *(v21 + 8 * v20);
          v30 = 0;
          v23 = *(a2 + 1);
          if (v23 >= *(a2 + 2) || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
            {
              return 0;
            }
          }

          else
          {
            v30 = *v23;
            *(a2 + 1) = v23 + 1;
          }

          v24 = *(a2 + 14);
          v25 = *(a2 + 15);
          *(a2 + 14) = v24 + 1;
          if (v24 >= v25)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v26 = *(a2 + 14);
          v27 = __OFSUB__(v26, 1);
          v28 = v26 - 1;
          if (v28 < 0 == v27)
          {
            *(a2 + 14) = v28;
          }

          v18 = *(a2 + 1);
          v29 = *(a2 + 2);
          if (v18 < v29 && *v18 == 34)
          {
LABEL_44:
            *(a2 + 1) = v18 + 1;
            continue;
          }

          break;
        }

        if (v18 == v29 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v10 >= v8 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v11;
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 13) |= 1u;
      if (v12 < v8 && *v12 == 16)
      {
        v9 = v12 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        if (v9 >= v8 || (v15 = *v9, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v15;
          v16 = v9 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 13) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v13 = v16 + 1;
          *(a2 + 1) = v13;
LABEL_37:
          if (v13 >= v8 || (v17 = *v13, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v17;
            v18 = v13 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 13) |= 4u;
          if (v18 < v8 && *v18 == 34)
          {
            goto LABEL_44;
          }
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::FaceTimeAudioTierReport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  if ((*(v5 + 52) & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  }

LABEL_5:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  return this;
}

uint64_t awd::metrics::FaceTimeAudioTierReport::ByteSize(awd::metrics::FaceTimeAudioTierReport *this)
{
  LOBYTE(v2) = *(this + 52);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if (*(this + 52))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 13);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v5 = 2;
  }

  v3 += v5;
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
  }

LABEL_16:
  v8 = *(this + 8);
  v9 = (v8 + v3);
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = awd::metrics::FaceTimeAudioTierReport_AudioTierCounter::ByteSize(*(*(this + 3) + 8 * v10));
      v12 = v11;
      if (v11 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
      }

      else
      {
        v13 = 1;
      }

      v9 = (v12 + v9 + v13);
      ++v10;
    }

    while (v10 < *(this + 8));
  }

  *(this + 12) = v9;
  return v9;
}

void awd::metrics::FaceTimeAudioTierReport::CheckTypeAndMergeFrom(awd::metrics::FaceTimeAudioTierReport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::FaceTimeAudioTierReport::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeAudioTierReport::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeAudioTierReport::CopyFrom(awd::metrics::FaceTimeAudioTierReport *this, const awd::metrics::FaceTimeAudioTierReport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeAudioTierReport::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::FaceTimeAudioTierReport::Swap(uint64_t this, awd::metrics::FaceTimeAudioTierReport *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v4;
    LODWORD(v4) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v4;
    LODWORD(v4) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 52);
    *(v3 + 52) = *(a2 + 13);
    *(a2 + 13) = v5;
    v6 = *(v3 + 48);
    *(v3 + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
  }

  return this;
}

void *awd::metrics::FaceTimeCallUpgradedEvent::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

awd::metrics::FaceTimeCallUpgradedEvent *awd::metrics::FaceTimeCallUpgradedEvent::FaceTimeCallUpgradedEvent(awd::metrics::FaceTimeCallUpgradedEvent *this, const awd::metrics::FaceTimeCallUpgradedEvent *a2)
{
  *this = &unk_2A1D4DF48;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::FaceTimeCallUpgradedEvent::MergeFrom(this, a2);
  return this;
}

void awd::metrics::FaceTimeCallUpgradedEvent::MergeFrom(awd::metrics::FaceTimeCallUpgradedEvent *this, const awd::metrics::FaceTimeCallUpgradedEvent *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 7);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 7) |= 2u;
    *(this + 4) = v7;
    if ((*(a2 + 7) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 5);
    *(this + 7) |= 4u;
    *(this + 5) = v5;
  }
}

void sub_2963E5830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeCallUpgradedEvent::~FaceTimeCallUpgradedEvent(awd::metrics::FaceTimeCallUpgradedEvent *this)
{
  *this = &unk_2A1D4DF48;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4DF48;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4DF48;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimeCallUpgradedEvent::default_instance(awd::metrics::FaceTimeCallUpgradedEvent *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimeCallUpgradedEvent::default_instance_;
  if (!awd::metrics::FaceTimeCallUpgradedEvent::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimeCallUpgradedEvent::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeCallUpgradedEvent::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::FaceTimeCallUpgradedEvent::MergePartialFromCodedStream(awd::metrics::FaceTimeCallUpgradedEvent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 7) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v13;
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 7) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v15;
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 7) |= 4u;
          if (v16 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_25;
    }

LABEL_16:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::FaceTimeCallUpgradedEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
    if ((v5[7] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = v5[7];
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v7, a2, a4);
}

uint64_t awd::metrics::FaceTimeCallUpgradedEvent::ByteSize(awd::metrics::FaceTimeCallUpgradedEvent *this)
{
  LOBYTE(v2) = *(this + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if (*(this + 28))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 7);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 7);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    }

    else
    {
      v7 = 2;
    }

    v3 = (v7 + v3);
  }

LABEL_16:
  *(this + 6) = v3;
  return v3;
}

void awd::metrics::FaceTimeCallUpgradedEvent::CheckTypeAndMergeFrom(awd::metrics::FaceTimeCallUpgradedEvent *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::FaceTimeCallUpgradedEvent::CheckTypeAndMergeFrom();
  }

  awd::metrics::FaceTimeCallUpgradedEvent::MergeFrom(this, lpsrc);
}

void awd::metrics::FaceTimeCallUpgradedEvent::CopyFrom(awd::metrics::FaceTimeCallUpgradedEvent *this, const awd::metrics::FaceTimeCallUpgradedEvent *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::FaceTimeCallUpgradedEvent::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::FaceTimeCallUpgradedEvent::Swap(uint64_t this, awd::metrics::FaceTimeCallUpgradedEvent *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return this;
}

double awd::metrics::RTCSessionEndMetric_InterfaceStats::RTCSessionEndMetric_InterfaceStats(awd::metrics::RTCSessionEndMetric_InterfaceStats *this)
{
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  v1 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4DFC0;
  *(this + 1) = v1;
  *(this + 2) = v1;
  result = 0.0;
  *(this + 3) = 0;
  *(this + 71) = 0;
  *(this + 36) = 0;
  *(this + 74) = 0;
  *(this + 52) = 0;
  *(this + 60) = 0;
  return result;
}

double awd::metrics::RTCSessionEndMetric_InterfaceStats::SharedCtor(awd::metrics::RTCSessionEndMetric_InterfaceStats *this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = MEMORY[0x29EDC9758];
  *(this + 2) = v1;
  result = 0.0;
  *(this + 3) = 0;
  *(this + 71) = 0;
  *(this + 36) = 0;
  *(this + 74) = 0;
  *(this + 60) = 0;
  *(this + 52) = 0;
  return result;
}

awd::metrics::RTCSessionEndMetric_InterfaceStats *awd::metrics::RTCSessionEndMetric_InterfaceStats::RTCSessionEndMetric_InterfaceStats(awd::metrics::RTCSessionEndMetric_InterfaceStats *this, const awd::metrics::RTCSessionEndMetric_InterfaceStats *a2)
{
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 33) = 0;
  *(this + 34) = 0;
  *this = &unk_2A1D4DFC0;
  *(this + 1) = v3;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 71) = 0;
  *(this + 36) = 0;
  *(this + 74) = 0;
  *(this + 52) = 0;
  *(this + 60) = 0;
  awd::metrics::RTCSessionEndMetric_InterfaceStats::MergeFrom(this, a2);
  return this;
}

void sub_2963E5FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10)
{
  v20 = *(v10 + 33);
  if (v20)
  {
    MEMORY[0x29C25A1D0](v20, 0x1000C8052888210);
  }

  if (*v15)
  {
    MEMORY[0x29C25A1D0](*v15, 0x1000C8052888210);
  }

  if (*v17)
  {
    MEMORY[0x29C25A1D0](*v17, 0x1000C8052888210);
  }

  if (*v19)
  {
    MEMORY[0x29C25A1D0](*v19, 0x1000C8052888210);
  }

  if (*v18)
  {
    MEMORY[0x29C25A1D0](*v18, 0x1000C8052888210);
  }

  if (*v16)
  {
    MEMORY[0x29C25A1D0](*v16, 0x1000C8052888210);
  }

  if (*v14)
  {
    MEMORY[0x29C25A1D0](*v14, 0x1000C8052888210);
  }

  if (*v13)
  {
    MEMORY[0x29C25A1D0](*v13, 0x1000C8052888210);
  }

  if (*v12)
  {
    MEMORY[0x29C25A1D0](*v12, 0x1000C8052888210);
  }

  if (*v11)
  {
    MEMORY[0x29C25A1D0](*v11, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v10);
  _Unwind_Resume(a1);
}

void awd::metrics::RTCSessionEndMetric_InterfaceStats::MergeFrom(awd::metrics::RTCSessionEndMetric_InterfaceStats *this, const awd::metrics::RTCSessionEndMetric_InterfaceStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v28);
  }

  v4 = *(a2 + 10);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, *(this + 10) + v4);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  v5 = *(a2 + 20);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 9, *(this + 20) + v5);
    memcpy((*(this + 9) + 4 * *(this + 20)), *(a2 + 9), 4 * *(a2 + 20));
    *(this + 20) += *(a2 + 20);
  }

  v6 = *(a2 + 26);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 26) + v6);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  v7 = *(a2 + 32);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 15, *(this + 32) + v7);
    memcpy((*(this + 15) + 4 * *(this + 32)), *(a2 + 15), 4 * *(a2 + 32));
    *(this + 32) += *(a2 + 32);
  }

  v8 = *(a2 + 38);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, *(this + 38) + v8);
    memcpy((*(this + 18) + 4 * *(this + 38)), *(a2 + 18), 4 * *(a2 + 38));
    *(this + 38) += *(a2 + 38);
  }

  v9 = *(a2 + 44);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 21, *(this + 44) + v9);
    memcpy((*(this + 21) + 4 * *(this + 44)), *(a2 + 21), 4 * *(a2 + 44));
    *(this + 44) += *(a2 + 44);
  }

  v10 = *(a2 + 50);
  if (v10)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, *(this + 50) + v10);
    memcpy((*(this + 24) + 4 * *(this + 50)), *(a2 + 24), 4 * *(a2 + 50));
    *(this + 50) += *(a2 + 50);
  }

  v11 = *(a2 + 56);
  if (v11)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 27, *(this + 56) + v11);
    memcpy((*(this + 27) + 4 * *(this + 56)), *(a2 + 27), 4 * *(a2 + 56));
    *(this + 56) += *(a2 + 56);
  }

  v12 = *(a2 + 62);
  if (v12)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 30, *(this + 62) + v12);
    memcpy((*(this + 30) + 4 * *(this + 62)), *(a2 + 30), 4 * *(a2 + 62));
    *(this + 62) += *(a2 + 62);
  }

  v13 = *(a2 + 68);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 33, *(this + 68) + v13);
    memcpy((*(this + 33) + 4 * *(this + 68)), *(a2 + 33), 4 * *(a2 + 68));
    *(this + 68) += *(a2 + 68);
  }

  v14 = *(a2 + 74);
  if (!v14)
  {
    goto LABEL_32;
  }

  v15 = MEMORY[0x29EDC9758];
  if (v14)
  {
    v20 = *(a2 + 1);
    *(this + 74) |= 1u;
    v21 = *(this + 1);
    if (v21 == v15)
    {
      operator new();
    }

    std::string::operator=(v21, v20);
    v14 = *(a2 + 74);
    if ((v14 & 2) == 0)
    {
LABEL_26:
      if ((v14 & 4) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_46;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_26;
  }

  v22 = *(a2 + 2);
  *(this + 74) |= 2u;
  v23 = *(this + 2);
  if (v23 == v15)
  {
    operator new();
  }

  std::string::operator=(v23, v22);
  v14 = *(a2 + 74);
  if ((v14 & 4) == 0)
  {
LABEL_27:
    if ((v14 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_47;
  }

LABEL_46:
  v24 = *(a2 + 6);
  *(this + 74) |= 4u;
  *(this + 6) = v24;
  v14 = *(a2 + 74);
  if ((v14 & 8) == 0)
  {
LABEL_28:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_29;
    }

LABEL_48:
    v26 = *(a2 + 13);
    *(this + 74) |= 0x10u;
    *(this + 13) = v26;
    v14 = *(a2 + 74);
    if ((v14 & 0x40) == 0)
    {
LABEL_30:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    goto LABEL_49;
  }

LABEL_47:
  v25 = *(a2 + 7);
  *(this + 74) |= 8u;
  *(this + 7) = v25;
  v14 = *(a2 + 74);
  if ((v14 & 0x10) != 0)
  {
    goto LABEL_48;
  }

LABEL_29:
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_49:
  v27 = *(a2 + 14);
  *(this + 74) |= 0x40u;
  *(this + 14) = v27;
  v14 = *(a2 + 74);
  if ((v14 & 0x80) != 0)
  {
LABEL_31:
    v16 = *(a2 + 15);
    *(this + 74) |= 0x80u;
    *(this + 15) = v16;
    v14 = *(a2 + 74);
  }

LABEL_32:
  if ((v14 & 0x100) != 0)
  {
    v17 = *(a2 + 16);
    *(this + 74) |= 0x100u;
    *(this + 16) = v17;
    v14 = *(a2 + 74);
  }

  if ((v14 & 0x3FC0000) != 0)
  {
    if ((v14 & 0x40000) != 0)
    {
      v18 = *(a2 + 71);
      *(this + 74) |= 0x40000u;
      *(this + 71) = v18;
      v14 = *(a2 + 74);
    }

    if ((v14 & 0x80000) != 0)
    {
      v19 = *(a2 + 72);
      *(this + 74) |= 0x80000u;
      *(this + 72) = v19;
    }
  }
}

void sub_2963E6548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::RTCSessionEndMetric_InterfaceStats::~RTCSessionEndMetric_InterfaceStats(awd::metrics::RTCSessionEndMetric_InterfaceStats *this)
{
  *this = &unk_2A1D4DFC0;
  awd::metrics::RTCSessionEndMetric_InterfaceStats::SharedDtor(this);
  v2 = *(this + 33);
  if (v2)
  {
    MEMORY[0x29C25A1D0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 30);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 27);
  if (v4)
  {
    MEMORY[0x29C25A1D0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 24);
  if (v5)
  {
    MEMORY[0x29C25A1D0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 21);
  if (v6)
  {
    MEMORY[0x29C25A1D0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 18);
  if (v7)
  {
    MEMORY[0x29C25A1D0](v7, 0x1000C8052888210);
  }

  v8 = *(this + 15);
  if (v8)
  {
    MEMORY[0x29C25A1D0](v8, 0x1000C8052888210);
  }

  v9 = *(this + 12);
  if (v9)
  {
    MEMORY[0x29C25A1D0](v9, 0x1000C8052888210);
  }

  v10 = *(this + 9);
  if (v10)
  {
    MEMORY[0x29C25A1D0](v10, 0x1000C8052888210);
  }

  v11 = *(this + 4);
  if (v11)
  {
    MEMORY[0x29C25A1D0](v11, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::RTCSessionEndMetric_InterfaceStats::~RTCSessionEndMetric_InterfaceStats(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::RTCSessionEndMetric_InterfaceStats::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 8);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x29C25A1F0](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 16);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    JUMPOUT(0x29C25A1F0);
  }

  return this;
}

uint64_t awd::metrics::RTCSessionEndMetric_InterfaceStats::default_instance(awd::metrics::RTCSessionEndMetric_InterfaceStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::RTCSessionEndMetric_InterfaceStats::default_instance_;
  if (!awd::metrics::RTCSessionEndMetric_InterfaceStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::RTCSessionEndMetric_InterfaceStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::RTCSessionEndMetric_InterfaceStats::Clear(uint64_t this)
{
  v1 = *(this + 296);
  if (v1)
  {
    v2 = MEMORY[0x29EDC9758];
    if (v1)
    {
      v3 = *(this + 8);
      if (v3 != MEMORY[0x29EDC9758])
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    if ((*(this + 296) & 2) != 0)
    {
      v4 = *(this + 16);
      if (v4 != v2)
      {
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
    }

    *(this + 24) = 0;
    *(this + 52) = 0;
    *(this + 60) = 0;
    v1 = *(this + 296);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 64) = 0;
  }

  if ((v1 & 0x3FC0000) != 0)
  {
    *(this + 284) = 0;
  }

  *(this + 40) = 0;
  *(this + 80) = 0;
  *(this + 104) = 0;
  *(this + 128) = 0;
  *(this + 152) = 0;
  *(this + 176) = 0;
  *(this + 200) = 0;
  *(this + 224) = 0;
  *(this + 248) = 0;
  *(this + 272) = 0;
  *(this + 296) = 0;
  return this;
}

uint64_t awd::metrics::RTCSessionEndMetric_InterfaceStats::MergePartialFromCodedStream(awd::metrics::RTCSessionEndMetric_InterfaceStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = (this + 288);
  v5 = MEMORY[0x29EDC9758];
  while (2)
  {
    v6 = *(a2 + 1);
    if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v6 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v8 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v8 != 2)
        {
          goto LABEL_70;
        }

        *(this + 74) |= 1u;
        if (*(this + 1) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (result)
        {
          v10 = *(a2 + 1);
          if (v10 < *(a2 + 2) && *v10 == 18)
          {
            *(a2 + 1) = v10 + 1;
            goto LABEL_42;
          }

          continue;
        }

        return result;
      case 2u:
        if (v8 != 2)
        {
          goto LABEL_70;
        }

LABEL_42:
        *(this + 74) |= 2u;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (result)
        {
          v28 = *(a2 + 1);
          v17 = *(a2 + 2);
          if (v28 < v17 && *v28 == 24)
          {
            v23 = v28 + 1;
            *(a2 + 1) = v23;
            goto LABEL_48;
          }

          continue;
        }

        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_70;
        }

        v23 = *(a2 + 1);
        v17 = *(a2 + 2);
LABEL_48:
        if (v23 >= v17 || (v29 = *v23, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v29;
          v30 = v23 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 74) |= 4u;
        if (v30 < v17 && *v30 == 32)
        {
          v26 = v30 + 1;
          *(a2 + 1) = v26;
          goto LABEL_99;
        }

        continue;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_70;
        }

        v26 = *(a2 + 1);
        v17 = *(a2 + 2);
LABEL_99:
        if (v26 >= v17 || (v42 = *v26, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v42;
          v43 = v26 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 74) |= 8u;
        if (v43 >= v17 || *v43 != 40)
        {
          continue;
        }

        v18 = v43 + 1;
        *(a2 + 1) = v18;
LABEL_107:
        if (v18 >= v17 || (v44 = *v18, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v44;
          v45 = v18 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 74) |= 0x10u;
        if (v45 >= v17 || *v45 != 50)
        {
          continue;
        }

        v33 = v45 + 1;
        *(a2 + 1) = v33;
        goto LABEL_115;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_70;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_107;
      case 6u:
        if ((TagFallback & 7) == 0)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x32u, a2, this + 32);
          if (!result)
          {
            return result;
          }

          goto LABEL_129;
        }

        if (v8 != 2)
        {
          goto LABEL_70;
        }

        v33 = *(a2 + 1);
        v17 = *(a2 + 2);
LABEL_115:
        v106 = 0;
        if (v33 >= v17 || *v33 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v106))
          {
            return 0;
          }
        }

        else
        {
          v106 = *v33;
          *(a2 + 1) = v33 + 1;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
        {
          v105 = 0;
          v46 = *(a2 + 1);
          if (v46 >= *(a2 + 2) || *v46 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v105))
            {
              return 0;
            }
          }

          else
          {
            v105 = *v46;
            *(a2 + 1) = v46 + 1;
          }

          v47 = *(this + 10);
          if (v47 == *(this + 11))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v47 + 1);
            v47 = *(this + 10);
          }

          v48 = v105;
          v49 = *(this + 4);
          *(this + 10) = v47 + 1;
          *(v49 + 4 * v47) = v48;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
LABEL_129:
        v50 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v50 < v21 && *v50 == 56)
        {
          v36 = v50 + 1;
          *(a2 + 1) = v36;
LABEL_132:
          if (v36 >= v21 || (v51 = *v36, v51 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
            if (!result)
            {
              return result;
            }

            v52 = *(a2 + 1);
            v21 = *(a2 + 2);
          }

          else
          {
            *(this + 14) = v51;
            v52 = v36 + 1;
            *(a2 + 1) = v52;
          }

          *(this + 74) |= 0x40u;
          if (v52 < v21 && *v52 == 64)
          {
            v27 = v52 + 1;
            *(a2 + 1) = v27;
LABEL_140:
            if (v27 >= v21 || (v53 = *v27, v53 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
              if (!result)
              {
                return result;
              }

              v54 = *(a2 + 1);
              v21 = *(a2 + 2);
            }

            else
            {
              *(this + 15) = v53;
              v54 = v27 + 1;
              *(a2 + 1) = v54;
            }

            *(this + 74) |= 0x80u;
            if (v54 < v21 && *v54 == 72)
            {
              v39 = v54 + 1;
              *(a2 + 1) = v39;
LABEL_148:
              if (v39 >= v21 || (v55 = *v39, v55 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
                if (!result)
                {
                  return result;
                }

                v56 = *(a2 + 1);
                v21 = *(a2 + 2);
              }

              else
              {
                *(this + 16) = v55;
                v56 = v39 + 1;
                *(a2 + 1) = v56;
              }

              *(this + 74) |= 0x100u;
              if (v56 < v21 && *v56 == 82)
              {
                v22 = v56 + 1;
                *(a2 + 1) = v22;
LABEL_156:
                v106 = 0;
                if (v22 >= v21 || *v22 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v106))
                  {
                    return 0;
                  }
                }

                else
                {
                  v106 = *v22;
                  *(a2 + 1) = v22 + 1;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
                {
                  v105 = 0;
                  v57 = *(a2 + 1);
                  if (v57 >= *(a2 + 2) || *v57 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v105))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v105 = *v57;
                    *(a2 + 1) = v57 + 1;
                  }

                  v58 = *(this + 20);
                  if (v58 == *(this + 21))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 9, v58 + 1);
                    v58 = *(this + 20);
                  }

                  v59 = v105;
                  v60 = *(this + 9);
                  *(this + 20) = v58 + 1;
                  *(v60 + 4 * v58) = v59;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                goto LABEL_170;
              }
            }
          }
        }

        continue;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_70;
        }

        v36 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_132;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_70;
        }

        v27 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_140;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_70;
        }

        v39 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_148;
      case 0xAu:
        if ((TagFallback & 7) == 0)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x52u, a2, this + 72);
          if (!result)
          {
            return result;
          }

LABEL_170:
          v61 = *(a2 + 1);
          v37 = *(a2 + 2);
          if (v61 < v37 && *v61 == 90)
          {
            v38 = v61 + 1;
            *(a2 + 1) = v38;
LABEL_173:
            v106 = 0;
            if (v38 >= v37 || *v38 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v106))
              {
                return 0;
              }
            }

            else
            {
              v106 = *v38;
              *(a2 + 1) = v38 + 1;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
            {
              v105 = 0;
              v62 = *(a2 + 1);
              if (v62 >= *(a2 + 2) || *v62 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v105))
                {
                  return 0;
                }
              }

              else
              {
                v105 = *v62;
                *(a2 + 1) = v62 + 1;
              }

              v63 = *(this + 26);
              if (v63 == *(this + 27))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v63 + 1);
                v63 = *(this + 26);
              }

              v64 = v105;
              v65 = *(this + 12);
              *(this + 26) = v63 + 1;
              *(v65 + 4 * v63) = v64;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            goto LABEL_187;
          }

          continue;
        }

        if (v8 == 2)
        {
          v22 = *(a2 + 1);
          v21 = *(a2 + 2);
          goto LABEL_156;
        }

LABEL_70:
        if (v8 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            v38 = *(a2 + 1);
            v37 = *(a2 + 2);
            goto LABEL_173;
          }

          goto LABEL_70;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x5Au, a2, this + 96);
        if (!result)
        {
          return result;
        }

LABEL_187:
        v66 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v66 < v15 && *v66 == 98)
        {
          v16 = v66 + 1;
          *(a2 + 1) = v16;
LABEL_190:
          v106 = 0;
          if (v16 >= v15 || *v16 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v106))
            {
              return 0;
            }
          }

          else
          {
            v106 = *v16;
            *(a2 + 1) = v16 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v105 = 0;
            v67 = *(a2 + 1);
            if (v67 >= *(a2 + 2) || *v67 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v105))
              {
                return 0;
              }
            }

            else
            {
              v105 = *v67;
              *(a2 + 1) = v67 + 1;
            }

            v68 = *(this + 32);
            if (v68 == *(this + 33))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 15, v68 + 1);
              v68 = *(this + 32);
            }

            v69 = v105;
            v70 = *(this + 15);
            *(this + 32) = v68 + 1;
            *(v70 + 4 * v68) = v69;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_204;
        }

        continue;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            v16 = *(a2 + 1);
            v15 = *(a2 + 2);
            goto LABEL_190;
          }

          goto LABEL_70;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x62u, a2, this + 120);
        if (!result)
        {
          return result;
        }

LABEL_204:
        v71 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v71 < v19 && *v71 == 106)
        {
          v20 = v71 + 1;
          *(a2 + 1) = v20;
LABEL_207:
          v106 = 0;
          if (v20 >= v19 || *v20 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v106))
            {
              return 0;
            }
          }

          else
          {
            v106 = *v20;
            *(a2 + 1) = v20 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v105 = 0;
            v72 = *(a2 + 1);
            if (v72 >= *(a2 + 2) || *v72 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v105))
              {
                return 0;
              }
            }

            else
            {
              v105 = *v72;
              *(a2 + 1) = v72 + 1;
            }

            v73 = *(this + 38);
            if (v73 == *(this + 39))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, v73 + 1);
              v73 = *(this + 38);
            }

            v74 = v105;
            v75 = *(this + 18);
            *(this + 38) = v73 + 1;
            *(v75 + 4 * v73) = v74;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_221;
        }

        continue;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            v20 = *(a2 + 1);
            v19 = *(a2 + 2);
            goto LABEL_207;
          }

          goto LABEL_70;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x6Au, a2, this + 144);
        if (!result)
        {
          return result;
        }

LABEL_221:
        v76 = *(a2 + 1);
        v34 = *(a2 + 2);
        if (v76 < v34 && *v76 == 114)
        {
          v35 = v76 + 1;
          *(a2 + 1) = v35;
LABEL_224:
          v106 = 0;
          if (v35 >= v34 || *v35 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v106))
            {
              return 0;
            }
          }

          else
          {
            v106 = *v35;
            *(a2 + 1) = v35 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v105 = 0;
            v77 = *(a2 + 1);
            if (v77 >= *(a2 + 2) || *v77 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v105))
              {
                return 0;
              }
            }

            else
            {
              v105 = *v77;
              *(a2 + 1) = v77 + 1;
            }

            v78 = *(this + 44);
            if (v78 == *(this + 45))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 21, v78 + 1);
              v78 = *(this + 44);
            }

            v79 = v105;
            v80 = *(this + 21);
            *(this + 44) = v78 + 1;
            *(v80 + 4 * v78) = v79;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_238;
        }

        continue;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            v35 = *(a2 + 1);
            v34 = *(a2 + 2);
            goto LABEL_224;
          }

          goto LABEL_70;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x72u, a2, this + 168);
        if (!result)
        {
          return result;
        }

LABEL_238:
        v81 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v81 < v13 && *v81 == 122)
        {
          v14 = v81 + 1;
          *(a2 + 1) = v14;
LABEL_241:
          v106 = 0;
          if (v14 >= v13 || *v14 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v106))
            {
              return 0;
            }
          }

          else
          {
            v106 = *v14;
            *(a2 + 1) = v14 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v105 = 0;
            v82 = *(a2 + 1);
            if (v82 >= *(a2 + 2) || *v82 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v105))
              {
                return 0;
              }
            }

            else
            {
              v105 = *v82;
              *(a2 + 1) = v82 + 1;
            }

            v83 = *(this + 50);
            if (v83 == *(this + 51))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, v83 + 1);
              v83 = *(this + 50);
            }

            v84 = v105;
            v85 = *(this + 24);
            *(this + 50) = v83 + 1;
            *(v85 + 4 * v83) = v84;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_255;
        }

        continue;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            v14 = *(a2 + 1);
            v13 = *(a2 + 2);
            goto LABEL_241;
          }

          goto LABEL_70;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x7Au, a2, this + 192);
        if (!result)
        {
          return result;
        }

LABEL_255:
        v86 = *(a2 + 1);
        v24 = *(a2 + 2);
        if (v24 - v86 >= 2 && *v86 == 130 && v86[1] == 1)
        {
          v25 = (v86 + 2);
          *(a2 + 1) = v25;
LABEL_259:
          v106 = 0;
          if (v25 >= v24 || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v106))
            {
              return 0;
            }
          }

          else
          {
            v106 = *v25;
            *(a2 + 1) = v25 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v105 = 0;
            v87 = *(a2 + 1);
            if (v87 >= *(a2 + 2) || *v87 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v105))
              {
                return 0;
              }
            }

            else
            {
              v105 = *v87;
              *(a2 + 1) = v87 + 1;
            }

            v88 = *(this + 56);
            if (v88 == *(this + 57))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 27, v88 + 1);
              v88 = *(this + 56);
            }

            v89 = v105;
            v90 = *(this + 27);
            *(this + 56) = v88 + 1;
            *(v90 + 4 * v88) = v89;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_273;
        }

        continue;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            v25 = *(a2 + 1);
            v24 = *(a2 + 2);
            goto LABEL_259;
          }

          goto LABEL_70;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(2, 0x82u, a2, this + 216);
        if (!result)
        {
          return result;
        }

LABEL_273:
        v91 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v11 - v91 >= 2 && *v91 == 138 && v91[1] == 1)
        {
          v12 = (v91 + 2);
          *(a2 + 1) = v12;
LABEL_277:
          v106 = 0;
          if (v12 >= v11 || *v12 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v106))
            {
              return 0;
            }
          }

          else
          {
            v106 = *v12;
            *(a2 + 1) = v12 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v105 = 0;
            v92 = *(a2 + 1);
            if (v92 >= *(a2 + 2) || *v92 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v105))
              {
                return 0;
              }
            }

            else
            {
              v105 = *v92;
              *(a2 + 1) = v92 + 1;
            }

            v93 = *(this + 62);
            if (v93 == *(this + 63))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 30, v93 + 1);
              v93 = *(this + 62);
            }

            v94 = v105;
            v95 = *(this + 30);
            *(this + 62) = v93 + 1;
            *(v95 + 4 * v93) = v94;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_291;
        }

        continue;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_277;
          }

          goto LABEL_70;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(2, 0x8Au, a2, this + 240);
        if (!result)
        {
          return result;
        }

LABEL_291:
        v96 = *(a2 + 1);
        v31 = *(a2 + 2);
        if (v31 - v96 >= 2 && *v96 == 146 && v96[1] == 1)
        {
          v32 = (v96 + 2);
          *(a2 + 1) = v32;
LABEL_295:
          v106 = 0;
          if (v32 >= v31 || *v32 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v106))
            {
              return 0;
            }
          }

          else
          {
            v106 = *v32;
            *(a2 + 1) = v32 + 1;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
          {
            v105 = 0;
            v97 = *(a2 + 1);
            if (v97 >= *(a2 + 2) || *v97 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v105))
              {
                return 0;
              }
            }

            else
            {
              v105 = *v97;
              *(a2 + 1) = v97 + 1;
            }

            v98 = *(this + 68);
            if (v98 == *(this + 69))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 33, v98 + 1);
              v98 = *(this + 68);
            }

            v99 = v105;
            v100 = *(this + 33);
            *(this + 68) = v98 + 1;
            *(v100 + 4 * v98) = v99;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          goto LABEL_309;
        }

        continue;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          if (v8 == 2)
          {
            v32 = *(a2 + 1);
            v31 = *(a2 + 2);
            goto LABEL_295;
          }

          goto LABEL_70;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(2, 0x92u, a2, this + 264);
        if (!result)
        {
          return result;
        }

LABEL_309:
        v101 = *(a2 + 1);
        if (*(a2 + 4) - v101 >= 2 && *v101 == 157 && v101[1] == 1)
        {
          *(a2 + 1) = v101 + 2;
LABEL_313:
          v106 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v106) & 1) == 0)
          {
            return 0;
          }

          *(this + 71) = v106;
          *(this + 74) |= 0x40000u;
          v102 = *(a2 + 1);
          v40 = *(a2 + 2);
          if (v40 - v102 >= 2 && *v102 == 160 && v102[1] == 1)
          {
            v41 = (v102 + 2);
            *(a2 + 1) = v41;
LABEL_318:
            if (v41 >= v40 || (v103 = *v41, (v103 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v4);
              if (!result)
              {
                return result;
              }

              v104 = *(a2 + 1);
              v40 = *(a2 + 2);
            }

            else
            {
              *v4 = v103;
              v104 = v41 + 1;
              *(a2 + 1) = v104;
            }

            *(this + 74) |= 0x80000u;
            if (v104 == v40 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }

        continue;
      case 0x13u:
        if (v8 == 5)
        {
          goto LABEL_313;
        }

        goto LABEL_70;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_70;
        }

        v41 = *(a2 + 1);
        v40 = *(a2 + 2);
        goto LABEL_318;
      default:
        goto LABEL_70;
    }
  }
}

uint64_t awd::metrics::RTCSessionEndMetric_InterfaceStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 296);
  if (v6)
  {
    v39 = *(this + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 296);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_57;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v40 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 296);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_58:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
    if ((*(v5 + 296) & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 296);
  if ((v6 & 8) != 0)
  {
    goto LABEL_58;
  }

LABEL_5:
  if ((v6 & 0x10) != 0)
  {
LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 52), a2, a4);
  }

LABEL_7:
  if (*(v5 + 40) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v7 = *(v5 + 48);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 40) >= 1)
    {
      v8 = 0;
      do
      {
        v9 = *(*(v5 + 32) + 4 * v8);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v8;
      }

      while (v8 < *(v5 + 40));
    }
  }

  v10 = *(v5 + 296);
  if ((v10 & 0x40) == 0)
  {
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_13;
    }

LABEL_61:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 60), a2, a4);
    if ((*(v5 + 296) & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 56), a2, a4);
  v10 = *(v5 + 296);
  if ((v10 & 0x80) != 0)
  {
    goto LABEL_61;
  }

LABEL_13:
  if ((v10 & 0x100) != 0)
  {
LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 64), a2, a4);
  }

LABEL_15:
  if (*(v5 + 80) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v11 = *(v5 + 88);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 80) >= 1)
    {
      v12 = 0;
      do
      {
        v13 = *(*(v5 + 72) + 4 * v12);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v12;
      }

      while (v12 < *(v5 + 80));
    }
  }

  if (*(v5 + 104) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v14 = *(v5 + 112);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 104) >= 1)
    {
      v15 = 0;
      do
      {
        v16 = *(*(v5 + 96) + 4 * v15);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v15;
      }

      while (v15 < *(v5 + 104));
    }
  }

  if (*(v5 + 128) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v17 = *(v5 + 136);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 128) >= 1)
    {
      v18 = 0;
      do
      {
        v19 = *(*(v5 + 120) + 4 * v18);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v18;
      }

      while (v18 < *(v5 + 128));
    }
  }

  if (*(v5 + 152) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v20 = *(v5 + 160);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 152) >= 1)
    {
      v21 = 0;
      do
      {
        v22 = *(*(v5 + 144) + 4 * v21);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v21;
      }

      while (v21 < *(v5 + 152));
    }
  }

  if (*(v5 + 176) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v23 = *(v5 + 184);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 176) >= 1)
    {
      v24 = 0;
      do
      {
        v25 = *(*(v5 + 168) + 4 * v24);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v24;
      }

      while (v24 < *(v5 + 176));
    }
  }

  if (*(v5 + 200) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v26 = *(v5 + 208);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 200) >= 1)
    {
      v27 = 0;
      do
      {
        v28 = *(*(v5 + 192) + 4 * v27);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v27;
      }

      while (v27 < *(v5 + 200));
    }
  }

  if (*(v5 + 224) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v29 = *(v5 + 232);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 224) >= 1)
    {
      v30 = 0;
      do
      {
        v31 = *(*(v5 + 216) + 4 * v30);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v30;
      }

      while (v30 < *(v5 + 224));
    }
  }

  if (*(v5 + 248) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v32 = *(v5 + 256);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 248) >= 1)
    {
      v33 = 0;
      do
      {
        v34 = *(*(v5 + 240) + 4 * v33);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v33;
      }

      while (v33 < *(v5 + 248));
    }
  }

  if (*(v5 + 272) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v35 = *(v5 + 280);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 272) >= 1)
    {
      v36 = 0;
      do
      {
        v37 = *(*(v5 + 264) + 4 * v36);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v36;
      }

      while (v36 < *(v5 + 272));
    }
  }

  v38 = *(v5 + 296);
  if ((v38 & 0x40000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x13, a2, *(v5 + 284), a3);
    v38 = *(v5 + 296);
  }

  if ((v38 & 0x80000) != 0)
  {
    v41 = *(v5 + 288);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, v41, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::RTCSessionEndMetric_InterfaceStats::ByteSize(awd::metrics::RTCSessionEndMetric_InterfaceStats *this)
{
  v2 = *(this + 74);
  if (!v2)
  {
    v3 = 0;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v4 = *(this + 1);
  v5 = *(v4 + 23);
  v6 = v5;
  v7 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v9 = v10 + 1;
    v2 = *(this + 74);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 2;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 = v9 + v5;
  if ((v2 & 2) != 0)
  {
LABEL_16:
    v11 = *(this + 2);
    v12 = *(v11 + 23);
    v13 = v12;
    v14 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = v14;
    }

    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      v12 = *(v11 + 23);
      v14 = *(v11 + 8);
      v2 = *(this + 74);
      v13 = *(v11 + 23);
    }

    else
    {
      v16 = 1;
    }

    if (v13 < 0)
    {
      v12 = v14;
    }

    v3 += v16 + v12 + 1;
  }

LABEL_25:
  if ((v2 & 4) != 0)
  {
    v17 = *(this + 6);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v2 = *(this + 74);
    }

    else
    {
      v18 = 2;
    }

    v3 += v18;
    if ((v2 & 8) == 0)
    {
LABEL_27:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_40;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_27;
  }

  v19 = *(this + 7);
  if (v19 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19) + 1;
    v2 = *(this + 74);
  }

  else
  {
    v20 = 2;
  }

  v3 += v20;
  if ((v2 & 0x10) == 0)
  {
LABEL_28:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_44;
  }

LABEL_40:
  v21 = *(this + 13);
  if (v21 >= 0x80)
  {
    v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21) + 1;
    v2 = *(this + 74);
  }

  else
  {
    v22 = 2;
  }

  v3 += v22;
  if ((v2 & 0x40) == 0)
  {
LABEL_29:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_48;
  }

LABEL_44:
  v23 = *(this + 14);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v2 = *(this + 74);
  }

  else
  {
    v24 = 2;
  }

  v3 += v24;
  if ((v2 & 0x80) == 0)
  {
LABEL_30:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

LABEL_48:
  v25 = *(this + 15);
  if (v25 >= 0x80)
  {
    v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25) + 1;
    v2 = *(this + 74);
  }

  else
  {
    v26 = 2;
  }

  v3 += v26;
  if ((v2 & 0x100) != 0)
  {
LABEL_52:
    v27 = *(this + 16);
    if (v27 >= 0x80)
    {
      v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27) + 1;
      v2 = *(this + 74);
    }

    else
    {
      v28 = 2;
    }

    v3 += v28;
  }

LABEL_56:
  if ((v2 & 0x3FC0000) != 0)
  {
    if ((v2 & 0x40000) != 0)
    {
      v3 += 6;
    }

    if ((v2 & 0x80000) != 0)
    {
      v29 = *(this + 72);
      if (v29 >= 0x80)
      {
        v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29) + 2;
      }

      else
      {
        v30 = 3;
      }

      v3 += v30;
    }
  }

  v31 = *(this + 10);
  if (v31 < 1)
  {
    LODWORD(v33) = 0;
  }

  else
  {
    v32 = 0;
    LODWORD(v33) = 0;
    do
    {
      v34 = *(*(this + 4) + 4 * v32);
      if (v34 >= 0x80)
      {
        v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34);
        v31 = *(this + 10);
      }

      else
      {
        v35 = 1;
      }

      v33 = (v35 + v33);
      ++v32;
    }

    while (v32 < v31);
    if (v33 > 0)
    {
      if (v33 >= 0x80)
      {
        v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33) + 1;
      }

      else
      {
        v36 = 2;
      }

      v3 += v36;
    }
  }

  *(this + 12) = v33;
  v37 = v3 + v33;
  v38 = *(this + 20);
  if (v38 < 1)
  {
    LODWORD(v40) = 0;
  }

  else
  {
    v39 = 0;
    LODWORD(v40) = 0;
    do
    {
      v41 = *(*(this + 9) + 4 * v39);
      if (v41 >= 0x80)
      {
        v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
        v38 = *(this + 20);
      }

      else
      {
        v42 = 1;
      }

      v40 = (v42 + v40);
      ++v39;
    }

    while (v39 < v38);
    if (v40 > 0)
    {
      if (v40 >= 0x80)
      {
        v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 1;
      }

      else
      {
        v43 = 2;
      }

      v37 += v43;
    }
  }

  *(this + 22) = v40;
  v44 = v37 + v40;
  v45 = *(this + 26);
  if (v45 < 1)
  {
    LODWORD(v47) = 0;
  }

  else
  {
    v46 = 0;
    LODWORD(v47) = 0;
    do
    {
      v48 = *(*(this + 12) + 4 * v46);
      if (v48 >= 0x80)
      {
        v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48);
        v45 = *(this + 26);
      }

      else
      {
        v49 = 1;
      }

      v47 = (v49 + v47);
      ++v46;
    }

    while (v46 < v45);
    if (v47 > 0)
    {
      if (v47 >= 0x80)
      {
        v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47) + 1;
      }

      else
      {
        v50 = 2;
      }

      v44 += v50;
    }
  }

  *(this + 28) = v47;
  v51 = v44 + v47;
  v52 = *(this + 32);
  if (v52 < 1)
  {
    LODWORD(v54) = 0;
  }

  else
  {
    v53 = 0;
    LODWORD(v54) = 0;
    do
    {
      v55 = *(*(this + 15) + 4 * v53);
      if (v55 >= 0x80)
      {
        v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55);
        v52 = *(this + 32);
      }

      else
      {
        v56 = 1;
      }

      v54 = (v56 + v54);
      ++v53;
    }

    while (v53 < v52);
    if (v54 > 0)
    {
      if (v54 >= 0x80)
      {
        v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54) + 1;
      }

      else
      {
        v57 = 2;
      }

      v51 += v57;
    }
  }

  *(this + 34) = v54;
  v58 = v51 + v54;
  v59 = *(this + 38);
  if (v59 < 1)
  {
    LODWORD(v61) = 0;
  }

  else
  {
    v60 = 0;
    LODWORD(v61) = 0;
    do
    {
      v62 = *(*(this + 18) + 4 * v60);
      if (v62 >= 0x80)
      {
        v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62);
        v59 = *(this + 38);
      }

      else
      {
        v63 = 1;
      }

      v61 = (v63 + v61);
      ++v60;
    }

    while (v60 < v59);
    if (v61 > 0)
    {
      if (v61 >= 0x80)
      {
        v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61) + 1;
      }

      else
      {
        v64 = 2;
      }

      v58 += v64;
    }
  }

  *(this + 40) = v61;
  v65 = v58 + v61;
  v66 = *(this + 44);
  if (v66 < 1)
  {
    LODWORD(v68) = 0;
  }

  else
  {
    v67 = 0;
    LODWORD(v68) = 0;
    do
    {
      v69 = *(*(this + 21) + 4 * v67);
      if (v69 >= 0x80)
      {
        v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69);
        v66 = *(this + 44);
      }

      else
      {
        v70 = 1;
      }

      v68 = (v70 + v68);
      ++v67;
    }

    while (v67 < v66);
    if (v68 > 0)
    {
      if (v68 >= 0x80)
      {
        v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68) + 1;
      }

      else
      {
        v71 = 2;
      }

      v65 += v71;
    }
  }

  *(this + 46) = v68;
  v72 = v65 + v68;
  v73 = *(this + 50);
  if (v73 < 1)
  {
    LODWORD(v75) = 0;
  }

  else
  {
    v74 = 0;
    LODWORD(v75) = 0;
    do
    {
      v76 = *(*(this + 24) + 4 * v74);
      if (v76 >= 0x80)
      {
        v77 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v76);
        v73 = *(this + 50);
      }

      else
      {
        v77 = 1;
      }

      v75 = (v77 + v75);
      ++v74;
    }

    while (v74 < v73);
    if (v75 > 0)
    {
      if (v75 >= 0x80)
      {
        v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v75) + 1;
      }

      else
      {
        v78 = 2;
      }

      v72 += v78;
    }
  }

  *(this + 52) = v75;
  v79 = v72 + v75;
  v80 = *(this + 56);
  if (v80 < 1)
  {
    LODWORD(v82) = 0;
  }

  else
  {
    v81 = 0;
    LODWORD(v82) = 0;
    do
    {
      v83 = *(*(this + 27) + 4 * v81);
      if (v83 >= 0x80)
      {
        v84 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v83);
        v80 = *(this + 56);
      }

      else
      {
        v84 = 1;
      }

      v82 = (v84 + v82);
      ++v81;
    }

    while (v81 < v80);
    if (v82 > 0)
    {
      if (v82 >= 0x80)
      {
        v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82) + 2;
      }

      else
      {
        v85 = 3;
      }

      v79 += v85;
    }
  }

  *(this + 58) = v82;
  v86 = v79 + v82;
  v87 = *(this + 62);
  if (v87 < 1)
  {
    LODWORD(v89) = 0;
  }

  else
  {
    v88 = 0;
    LODWORD(v89) = 0;
    do
    {
      v90 = *(*(this + 30) + 4 * v88);
      if (v90 >= 0x80)
      {
        v91 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v90);
        v87 = *(this + 62);
      }

      else
      {
        v91 = 1;
      }

      v89 = (v91 + v89);
      ++v88;
    }

    while (v88 < v87);
    if (v89 > 0)
    {
      if (v89 >= 0x80)
      {
        v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v89) + 2;
      }

      else
      {
        v92 = 3;
      }

      v86 += v92;
    }
  }

  *(this + 64) = v89;
  v93 = v86 + v89;
  v94 = *(this + 68);
  if (v94 < 1)
  {
    LODWORD(v96) = 0;
  }

  else
  {
    v95 = 0;
    LODWORD(v96) = 0;
    do
    {
      v97 = *(*(this + 33) + 4 * v95);
      if (v97 >= 0x80)
      {
        v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97);
        v94 = *(this + 68);
      }

      else
      {
        v98 = 1;
      }

      v96 = (v98 + v96);
      ++v95;
    }

    while (v95 < v94);
    if (v96 > 0)
    {
      if (v96 >= 0x80)
      {
        v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96) + 2;
      }

      else
      {
        v99 = 3;
      }

      v93 += v99;
    }
  }

  *(this + 70) = v96;
  result = (v93 + v96);
  *(this + 73) = result;
  return result;
}

void awd::metrics::RTCSessionEndMetric_InterfaceStats::CheckTypeAndMergeFrom(awd::metrics::RTCSessionEndMetric_InterfaceStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::RTCSessionEndMetric_InterfaceStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::RTCSessionEndMetric_InterfaceStats::MergeFrom(this, lpsrc);
}

void awd::metrics::RTCSessionEndMetric_InterfaceStats::CopyFrom(awd::metrics::RTCSessionEndMetric_InterfaceStats *this, const awd::metrics::RTCSessionEndMetric_InterfaceStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::RTCSessionEndMetric_InterfaceStats::MergeFrom(this, a2);
  }
}

float awd::metrics::RTCSessionEndMetric_InterfaceStats::Swap(awd::metrics::RTCSessionEndMetric_InterfaceStats *this, awd::metrics::RTCSessionEndMetric_InterfaceStats *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    v5 = *(a2 + 5);
    *(a2 + 4) = v4;
    v6 = *(this + 5);
    *(this + 5) = v5;
    *(a2 + 5) = v6;
    LODWORD(v4) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v4;
    LODWORD(v4) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v4;
    LODWORD(v4) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v4;
    v7 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    v8 = *(a2 + 10);
    *(a2 + 9) = v7;
    v9 = *(this + 10);
    *(this + 10) = v8;
    *(a2 + 10) = v9;
    v10 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    v11 = *(a2 + 13);
    *(a2 + 12) = v10;
    v12 = *(this + 13);
    *(this + 13) = v11;
    *(a2 + 13) = v12;
    v13 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    v14 = *(a2 + 16);
    *(a2 + 15) = v13;
    v15 = *(this + 16);
    *(this + 16) = v14;
    *(a2 + 16) = v15;
    v16 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    v17 = *(a2 + 19);
    *(a2 + 18) = v16;
    v18 = *(this + 19);
    *(this + 19) = v17;
    *(a2 + 19) = v18;
    v19 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    v20 = *(a2 + 22);
    *(a2 + 21) = v19;
    v21 = *(this + 22);
    *(this + 22) = v20;
    *(a2 + 22) = v21;
    v22 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    v23 = *(a2 + 25);
    *(a2 + 24) = v22;
    v24 = *(this + 25);
    *(this + 25) = v23;
    *(a2 + 25) = v24;
    v25 = *(this + 27);
    *(this + 27) = *(a2 + 27);
    v26 = *(a2 + 28);
    *(a2 + 27) = v25;
    v27 = *(this + 28);
    *(this + 28) = v26;
    *(a2 + 28) = v27;
    v28 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    v29 = *(a2 + 31);
    *(a2 + 30) = v28;
    v30 = *(this + 31);
    *(this + 31) = v29;
    *(a2 + 31) = v30;
    v31 = *(this + 33);
    *(this + 33) = *(a2 + 33);
    v32 = *(a2 + 34);
    *(a2 + 33) = v31;
    v33 = *(this + 34);
    *(this + 34) = v32;
    *(a2 + 34) = v33;
    result = *(this + 71);
    *(this + 71) = *(a2 + 71);
    *(a2 + 71) = result;
    LODWORD(v31) = *(this + 72);
    *(this + 72) = *(a2 + 72);
    *(a2 + 72) = v31;
    LODWORD(v31) = *(this + 74);
    *(this + 74) = *(a2 + 74);
    *(a2 + 74) = v31;
    LODWORD(v31) = *(this + 73);
    *(this + 73) = *(a2 + 73);
    *(a2 + 73) = v31;
  }

  return result;
}

void *awd::metrics::RTCSessionEndMetric::SharedCtor(void *this)
{
  this[6] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

awd::metrics::RTCSessionEndMetric *awd::metrics::RTCSessionEndMetric::RTCSessionEndMetric(awd::metrics::RTCSessionEndMetric *this, const awd::metrics::RTCSessionEndMetric *a2)
{
  *this = &unk_2A1D4E038;
  *(this + 6) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  awd::metrics::RTCSessionEndMetric::MergeFrom(this, a2);
  return this;
}

void sub_2963E88C8(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::RTCSessionEndMetric_InterfaceStats>::TypeHandler>(v1 + 3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::RTCSessionEndMetric::MergeFrom(awd::metrics::RTCSessionEndMetric *this, const awd::metrics::RTCSessionEndMetric *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(this + 8);
  v5 = *(a2 + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
  LODWORD(v6) = *(a2 + 8);
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if (v7 >= v6)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
      }

      v8 = *(*(a2 + 3) + 8 * v7);
      v9 = *(this + 9);
      v10 = *(this + 8);
      if (v10 >= v9)
      {
        if (v9 == *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
          v9 = *(this + 9);
        }

        *(this + 9) = v9 + 1;
        operator new();
      }

      v11 = *(this + 3);
      *(this + 8) = v10 + 1;
      awd::metrics::RTCSessionEndMetric_InterfaceStats::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 8);
    }

    while (v7 < v6);
  }

  LOBYTE(v12) = *(a2 + 52);
  if (v12)
  {
    if (*(a2 + 52))
    {
      v14 = *(a2 + 1);
      *(this + 13) |= 1u;
      *(this + 1) = v14;
      v12 = *(a2 + 13);
      if ((v12 & 2) == 0)
      {
LABEL_16:
        if ((v12 & 4) == 0)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_16;
    }

    v15 = *(a2 + 4);
    *(this + 13) |= 2u;
    *(this + 4) = v15;
    if ((*(a2 + 13) & 4) == 0)
    {
      return;
    }

LABEL_17:
    v13 = *(a2 + 5);
    *(this + 13) |= 4u;
    *(this + 5) = v13;
  }
}

void sub_2963E8AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::RTCSessionEndMetric::~RTCSessionEndMetric(awd::metrics::RTCSessionEndMetric *this)
{
  *this = &unk_2A1D4E038;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::RTCSessionEndMetric_InterfaceStats>::TypeHandler>(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::RTCSessionEndMetric::~RTCSessionEndMetric(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::RTCSessionEndMetric::default_instance(awd::metrics::RTCSessionEndMetric *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::RTCSessionEndMetric::default_instance_;
  if (!awd::metrics::RTCSessionEndMetric::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::RTCSessionEndMetric::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::RTCSessionEndMetric::Clear(awd::metrics::RTCSessionEndMetric *this)
{
  if (*(this + 52))
  {
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::RTCSessionEndMetric_InterfaceStats>::TypeHandler>(this + 24);
  *(this + 13) = 0;
  return result;
}

uint64_t awd::metrics::RTCSessionEndMetric::MergePartialFromCodedStream(awd::metrics::RTCSessionEndMetric *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_37;
          }

          goto LABEL_20;
        }

        if (v6 != 4 || v7 != 2)
        {
          goto LABEL_20;
        }

        while (2)
        {
          v19 = *(this + 9);
          v20 = *(this + 8);
          if (v20 >= v19)
          {
            if (v19 == *(this + 10))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
              v19 = *(this + 9);
            }

            *(this + 9) = v19 + 1;
            operator new();
          }

          v21 = *(this + 3);
          *(this + 8) = v20 + 1;
          v22 = *(v21 + 8 * v20);
          v30 = 0;
          v23 = *(a2 + 1);
          if (v23 >= *(a2 + 2) || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
            {
              return 0;
            }
          }

          else
          {
            v30 = *v23;
            *(a2 + 1) = v23 + 1;
          }

          v24 = *(a2 + 14);
          v25 = *(a2 + 15);
          *(a2 + 14) = v24 + 1;
          if (v24 >= v25)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::RTCSessionEndMetric_InterfaceStats::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v26 = *(a2 + 14);
          v27 = __OFSUB__(v26, 1);
          v28 = v26 - 1;
          if (v28 < 0 == v27)
          {
            *(a2 + 14) = v28;
          }

          v18 = *(a2 + 1);
          v29 = *(a2 + 2);
          if (v18 < v29 && *v18 == 34)
          {
LABEL_44:
            *(a2 + 1) = v18 + 1;
            continue;
          }

          break;
        }

        if (v18 == v29 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v10 >= v8 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v11;
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 13) |= 1u;
      if (v12 < v8 && *v12 == 16)
      {
        v9 = v12 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        if (v9 >= v8 || (v15 = *v9, v15 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v15;
          v16 = v9 + 1;
          *(a2 + 1) = v16;
        }

        *(this + 13) |= 2u;
        if (v16 < v8 && *v16 == 24)
        {
          v13 = v16 + 1;
          *(a2 + 1) = v13;
LABEL_37:
          if (v13 >= v8 || (v17 = *v13, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v17;
            v18 = v13 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 13) |= 4u;
          if (v18 < v8 && *v18 == 34)
          {
            goto LABEL_44;
          }
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::RTCSessionEndMetric::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  if ((*(v5 + 52) & 4) != 0)
  {
LABEL_4:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  }

LABEL_5:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  return this;
}

uint64_t awd::metrics::RTCSessionEndMetric::ByteSize(awd::metrics::RTCSessionEndMetric *this)
{
  LOBYTE(v2) = *(this + 52);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if (*(this + 52))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 13);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v5 = 2;
  }

  v3 += v5;
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
  }

LABEL_16:
  v8 = *(this + 8);
  v9 = (v8 + v3);
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = awd::metrics::RTCSessionEndMetric_InterfaceStats::ByteSize(*(*(this + 3) + 8 * v10));
      v12 = v11;
      if (v11 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
      }

      else
      {
        v13 = 1;
      }

      v9 = (v12 + v9 + v13);
      ++v10;
    }

    while (v10 < *(this + 8));
  }

  *(this + 12) = v9;
  return v9;
}

void awd::metrics::RTCSessionEndMetric::CheckTypeAndMergeFrom(awd::metrics::RTCSessionEndMetric *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::RTCSessionEndMetric::CheckTypeAndMergeFrom();
  }

  awd::metrics::RTCSessionEndMetric::MergeFrom(this, lpsrc);
}

void awd::metrics::RTCSessionEndMetric::CopyFrom(awd::metrics::RTCSessionEndMetric *this, const awd::metrics::RTCSessionEndMetric *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::RTCSessionEndMetric::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::RTCSessionEndMetric::Swap(uint64_t this, awd::metrics::RTCSessionEndMetric *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v4;
    LODWORD(v4) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v4;
    LODWORD(v4) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 52);
    *(v3 + 52) = *(a2 + 13);
    *(a2 + 13) = v5;
    v6 = *(v3 + 48);
    *(v3 + 48) = *(a2 + 12);
    *(a2 + 12) = v6;
  }

  return this;
}

double awd::metrics::FaceTimeDTXStatus::SharedCtor(awd::metrics::FaceTimeDTXStatus *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::FaceTimeDTXStatus *awd::metrics::FaceTimeDTXStatus::FaceTimeDTXStatus(awd::metrics::FaceTimeDTXStatus *this, const awd::metrics::FaceTimeDTXStatus *a2)
{
  *this = &unk_2A1D4E0B0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  awd::metrics::FaceTimeDTXStatus::MergeFrom(this, a2);
  return this;
}

void awd::metrics::FaceTimeDTXStatus::MergeFrom(awd::metrics::FaceTimeDTXStatus *this, const awd::metrics::FaceTimeDTXStatus *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 6);
    *(this + 9) |= 2u;
    *(this + 6) = v7;
    v4 = *(a2 + 9);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_12:
    v8 = *(a2 + 2);
    *(this + 9) |= 4u;
    *(this + 2) = v8;
    if ((*(a2 + 9) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 7);
    *(this + 9) |= 8u;
    *(this + 7) = v5;
  }
}

void sub_2963E94B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::FaceTimeDTXStatus::~FaceTimeDTXStatus(awd::metrics::FaceTimeDTXStatus *this)
{
  *this = &unk_2A1D4E0B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4E0B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4E0B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::FaceTimeDTXStatus::default_instance(awd::metrics::FaceTimeDTXStatus *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::FaceTimeDTXStatus::default_instance_;
  if (!awd::metrics::FaceTimeDTXStatus::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Facetime_2eproto(0, a2, a3, a4);
    return awd::metrics::FaceTimeDTXStatus::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeDTXStatus::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::FaceTimeDTXStatus::MergePartialFromCodedStream(awd::metrics::FaceTimeDTXStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      v7 = TagFallback & 7;
      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_33;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_41;
        }

        goto LABEL_20;
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v11 >= v10 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v12;
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 9) |= 1u;
      if (v13 < v10 && *v13 == 21)
      {
        *(a2 + 1) = v13 + 1;
LABEL_29:
        v21 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = v21;
        *(this + 9) |= 2u;
        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v16 < v8 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_33:
          if (v14 >= v8 || (v17 = *v14, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v17;
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 9) |= 4u;
          if (v18 < v8 && *v18 == 32)
          {
            v9 = v18 + 1;
            *(a2 + 1) = v9;
LABEL_41:
            if (v9 >= v8 || (v19 = *v9, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v19;
              v20 = v9 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 9) |= 8u;
            if (v20 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }
    }

    if (v6 == 2 && v7 == 5)
    {
      goto LABEL_29;
    }

LABEL_20:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}