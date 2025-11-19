void sub_29643DAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationNavigationSession::~LocationNavigationSession(awd::metrics::LocationNavigationSession *this)
{
  *this = &unk_2A1D4F9F8;
  v2 = (this + 64);
  awd::metrics::LocationNavigationSession::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationBatteryState>::TypeHandler>(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationNavigationSession::~LocationNavigationSession(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationNavigationSession::SharedDtor(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C25A730);
  }

  return this;
}

uint64_t awd::metrics::LocationNavigationSession::default_instance(awd::metrics::LocationNavigationSession *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationNavigationSession::default_instance_;
  if (!awd::metrics::LocationNavigationSession::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationNavigationSession::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationNavigationSession::Clear(awd::metrics::LocationNavigationSession *this)
{
  v2 = *(this + 96);
  if (v2)
  {
    *(this + 1) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 2);
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

    *(this + 88) = 0;
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 7) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationBatteryState>::TypeHandler>(this + 64);
  *(this + 24) = 0;
  return result;
}

uint64_t awd::metrics::LocationNavigationSession::MergePartialFromCodedStream(awd::metrics::LocationNavigationSession *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
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

            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_61;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v17 = *(a2 + 1);
          v10 = *(a2 + 2);
LABEL_53:
          if (v17 >= v10 || (v23 = *v17, v23 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v24 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 3) = v23;
            v24 = v17 + 1;
            *(a2 + 1) = v24;
          }

          *(this + 24) |= 4u;
          if (v24 < v10 && *v24 == 32)
          {
            v11 = v24 + 1;
            *(a2 + 1) = v11;
LABEL_61:
            if (v11 >= v10 || (v25 = *v11, v25 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
              if (!result)
              {
                return result;
              }

              v26 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 4) = v25;
              v26 = v11 + 1;
              *(a2 + 1) = v26;
            }

            *(this + 24) |= 8u;
            if (v26 < v10 && *v26 == 40)
            {
              v19 = v26 + 1;
              *(a2 + 1) = v19;
LABEL_69:
              if (v19 >= v10 || (v27 = *v19, v27 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
                if (!result)
                {
                  return result;
                }

                v28 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 5) = v27;
                v28 = v19 + 1;
                *(a2 + 1) = v28;
              }

              *(this + 24) |= 0x10u;
              if (v28 < v10 && *v28 == 48)
              {
                v12 = v28 + 1;
                *(a2 + 1) = v12;
LABEL_77:
                if (v12 >= v10 || (v29 = *v12, v29 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
                  if (!result)
                  {
                    return result;
                  }

                  v30 = *(a2 + 1);
                  v10 = *(a2 + 2);
                }

                else
                {
                  *(this + 6) = v29;
                  v30 = v12 + 1;
                  *(a2 + 1) = v30;
                }

                *(this + 24) |= 0x20u;
                if (v30 < v10 && *v30 == 56)
                {
                  v18 = v30 + 1;
                  *(a2 + 1) = v18;
LABEL_85:
                  if (v18 >= v10 || (v31 = *v18, v31 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
                    if (!result)
                    {
                      return result;
                    }

                    v32 = *(a2 + 1);
                    v10 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 7) = v31;
                    v32 = v18 + 1;
                    *(a2 + 1) = v32;
                  }

                  *(this + 24) |= 0x40u;
                  if (v32 < v10 && *v32 == 64)
                  {
                    v20 = v32 + 1;
                    *(a2 + 1) = v20;
                    goto LABEL_93;
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v7 != 1)
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_38;
            }

            v9 = *(this + 24);
            goto LABEL_47;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_38;
          }

          v14 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v14 >= v13 || (v15 = *v14, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v13 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v15;
            v16 = v14 + 1;
            *(a2 + 1) = v16;
          }

          v9 = *(this + 24) | 1;
          *(this + 24) = v9;
          if (v16 < v13 && *v16 == 18)
          {
            *(a2 + 1) = v16 + 1;
LABEL_47:
            *(this + 24) = v9 | 2;
            if (*(this + 2) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v22 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v22 < v10 && *v22 == 24)
            {
              v17 = v22 + 1;
              *(a2 + 1) = v17;
              goto LABEL_53;
            }
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v7 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v18 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_85;
      }

      if (v7 == 8)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v20 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_93:
        v46 = 0;
        if (v20 >= v10 || (v33 = *v20, (v33 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v46);
          if (!result)
          {
            return result;
          }

          v33 = v46;
          v34 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v34 = v20 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 88) = v33 != 0;
        *(this + 24) |= 0x80u;
        if (v34 < v10 && *v34 == 74)
        {
          goto LABEL_100;
        }
      }

      else
      {
        if (v7 != 9 || v8 != 2)
        {
          goto LABEL_38;
        }

        while (1)
        {
          v35 = *(this + 19);
          v36 = *(this + 18);
          if (v36 >= v35)
          {
            if (v35 == *(this + 20))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 64));
              v35 = *(this + 19);
            }

            *(this + 19) = v35 + 1;
            operator new();
          }

          v37 = *(this + 8);
          *(this + 18) = v36 + 1;
          v38 = *(v37 + 8 * v36);
          v47 = 0;
          v39 = *(a2 + 1);
          if (v39 >= *(a2 + 2) || *v39 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v47))
            {
              return 0;
            }
          }

          else
          {
            v47 = *v39;
            *(a2 + 1) = v39 + 1;
          }

          v40 = *(a2 + 14);
          v41 = *(a2 + 15);
          *(a2 + 14) = v40 + 1;
          if (v40 >= v41)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationBatteryState::MergePartialFromCodedStream(v38, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v42 = *(a2 + 14);
          v43 = __OFSUB__(v42, 1);
          v44 = v42 - 1;
          if (v44 < 0 == v43)
          {
            *(a2 + 14) = v44;
          }

          v34 = *(a2 + 1);
          v45 = *(a2 + 2);
          if (v34 >= v45 || *v34 != 74)
          {
            break;
          }

LABEL_100:
          *(a2 + 1) = v34 + 1;
        }

        if (v34 == v45 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5)
    {
      if ((TagFallback & 7) != 0)
      {
        goto LABEL_38;
      }

      v19 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_69;
    }

    if (v7 == 6 && (TagFallback & 7) == 0)
    {
      v12 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_77;
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

uint64_t awd::metrics::LocationNavigationSession::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 96);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 96);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 96);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 48), a2, a4);
  v6 = *(v5 + 96);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(7, *(v5 + 56), a2, a4);
  if ((*(v5 + 96) & 0x80) != 0)
  {
LABEL_9:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(8, *(v5 + 88), a2, a4);
  }

LABEL_10:
  if (*(v5 + 72) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, *(*(v5 + 64) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 72));
  }

  return this;
}

uint64_t awd::metrics::LocationNavigationSession::ByteSize(awd::metrics::LocationNavigationSession *this)
{
  v2 = *(this + 24);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_23;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 24);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(this + 2);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v2 = *(this + 24);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 1;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v3 += v10 + v6 + 1;
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
    v2 = *(this + 24);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
  v2 = *(this + 24);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_33:
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
    v2 = *(this + 24);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_32:
  v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  v2 = *(this + 24);
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_20:
  if ((v2 & 0x40) != 0)
  {
LABEL_21:
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
    v2 = *(this + 24);
  }

LABEL_22:
  v4 = ((v2 >> 6) & 2) + v3;
LABEL_23:
  v11 = *(this + 18);
  v12 = (v11 + v4);
  if (v11 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = awd::metrics::LocationBatteryState::ByteSize(*(*(this + 8) + 8 * v13));
      v15 = v14;
      if (v14 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      }

      else
      {
        v16 = 1;
      }

      v12 = (v15 + v12 + v16);
      ++v13;
    }

    while (v13 < *(this + 18));
  }

  *(this + 23) = v12;
  return v12;
}

void awd::metrics::LocationNavigationSession::CheckTypeAndMergeFrom(awd::metrics::LocationNavigationSession *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationNavigationSession::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationNavigationSession::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationNavigationSession::CopyFrom(awd::metrics::LocationNavigationSession *this, const awd::metrics::LocationNavigationSession *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationNavigationSession::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationNavigationSession::Swap(uint64_t this, awd::metrics::LocationNavigationSession *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    v5 = *(this + 16);
    v6 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v6;
    *(a2 + 1) = v4;
    *(a2 + 2) = v5;
    v7 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v7;
    v8 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v8;
    v9 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v9;
    v10 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v10;
    v11 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v11;
    LOBYTE(v11) = *(this + 88);
    *(this + 88) = *(a2 + 88);
    *(a2 + 88) = v11;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v12 = *(v3 + 96);
    *(v3 + 96) = *(a2 + 24);
    *(a2 + 24) = v12;
    v13 = *(v3 + 92);
    *(v3 + 92) = *(a2 + 23);
    *(a2 + 23) = v13;
  }

  return this;
}

double awd::metrics::LocationMainHarvesterMetrics::SharedCtor(awd::metrics::LocationMainHarvesterMetrics *this)
{
  *(this + 68) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = v1;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

awd::metrics::LocationMainHarvesterMetrics *awd::metrics::LocationMainHarvesterMetrics::LocationMainHarvesterMetrics(awd::metrics::LocationMainHarvesterMetrics *this, const awd::metrics::LocationMainHarvesterMetrics *a2)
{
  *(this + 68) = 0;
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4FA70;
  *(this + 1) = 0;
  *(this + 2) = v3;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  awd::metrics::LocationMainHarvesterMetrics::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationMainHarvesterMetrics::MergeFrom(awd::metrics::LocationMainHarvesterMetrics *this, const awd::metrics::LocationMainHarvesterMetrics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 18);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 18) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 18);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 2);
  *(this + 18) |= 2u;
  v9 = *(this + 2);
  if (v9 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v9, v8);
  v4 = *(a2 + 18);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = *(a2 + 6);
  *(this + 18) |= 4u;
  *(this + 6) = v10;
  v4 = *(a2 + 18);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = *(a2 + 7);
  *(this + 18) |= 8u;
  *(this + 7) = v11;
  v4 = *(a2 + 18);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    v13 = *(a2 + 9);
    *(this + 18) |= 0x20u;
    *(this + 9) = v13;
    v4 = *(a2 + 18);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_25:
  v12 = *(a2 + 8);
  *(this + 18) |= 0x10u;
  *(this + 8) = v12;
  v4 = *(a2 + 18);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_27:
  v14 = *(a2 + 10);
  *(this + 18) |= 0x40u;
  *(this + 10) = v14;
  v4 = *(a2 + 18);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 11);
    *(this + 18) |= 0x80u;
    *(this + 11) = v5;
    v4 = *(a2 + 18);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v15 = *(a2 + 16);
    *(this + 18) |= 0x100u;
    *(this + 16) = v15;
    v4 = *(a2 + 18);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        return;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 6);
  *(this + 18) |= 0x200u;
  *(this + 6) = v16;
  if ((*(a2 + 18) & 0x400) == 0)
  {
    return;
  }

LABEL_17:
  v6 = *(a2 + 7);
  *(this + 18) |= 0x400u;
  *(this + 7) = v6;
}

void sub_29643EAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMainHarvesterMetrics::~LocationMainHarvesterMetrics(awd::metrics::LocationMainHarvesterMetrics *this)
{
  *this = &unk_2A1D4FA70;
  awd::metrics::LocationMainHarvesterMetrics::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4FA70;
  awd::metrics::LocationMainHarvesterMetrics::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4FA70;
  awd::metrics::LocationMainHarvesterMetrics::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationMainHarvesterMetrics::SharedDtor(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C25A730);
  }

  return this;
}

uint64_t awd::metrics::LocationMainHarvesterMetrics::default_instance(awd::metrics::LocationMainHarvesterMetrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationMainHarvesterMetrics::default_instance_;
  if (!awd::metrics::LocationMainHarvesterMetrics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationMainHarvesterMetrics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationMainHarvesterMetrics::Clear(uint64_t this)
{
  v1 = *(this + 72);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
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
    v1 = *(this + 72);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    *(this + 56) = 0;
    *(this + 64) = 0;
  }

  *(this + 72) = 0;
  return this;
}

uint64_t awd::metrics::LocationMainHarvesterMetrics::MergePartialFromCodedStream(awd::metrics::LocationMainHarvesterMetrics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
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
        if (TagFallback >> 3 > 5)
        {
          break;
        }

        if (TagFallback >> 3 <= 2)
        {
          if (v7 != 1)
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_44;
            }

            v13 = *(this + 18);
            goto LABEL_53;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_44;
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

          v13 = *(this + 18) | 1;
          *(this + 18) = v13;
          if (v17 < v14 && *v17 == 18)
          {
            *(a2 + 1) = v17 + 1;
LABEL_53:
            *(this + 18) = v13 | 2;
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
            if (v24 < v9 && *v24 == 24)
            {
              v21 = v24 + 1;
              *(a2 + 1) = v21;
LABEL_59:
              if (v21 >= v9 || (v25 = *v21, v25 < 0))
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
                v26 = v21 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 18) |= 4u;
              if (v26 < v9 && *v26 == 32)
              {
                v18 = v26 + 1;
                *(a2 + 1) = v18;
                goto LABEL_67;
              }
            }
          }
        }

        else
        {
          if (v7 == 3)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_44;
            }

            v21 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_59;
          }

          if (v7 != 4)
          {
            if (v7 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_44;
            }

            v11 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_75;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_44;
          }

          v18 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_67:
          if (v18 >= v9 || (v27 = *v18, v27 < 0))
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
            v28 = v18 + 1;
            *(a2 + 1) = v28;
          }

          *(this + 18) |= 8u;
          if (v28 < v9 && *v28 == 40)
          {
            v11 = v28 + 1;
            *(a2 + 1) = v11;
LABEL_75:
            if (v11 >= v9 || (v29 = *v11, v29 < 0))
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
              v30 = v11 + 1;
              *(a2 + 1) = v30;
            }

            *(this + 18) |= 0x10u;
            if (v30 < v9 && *v30 == 48)
            {
              v22 = v30 + 1;
              *(a2 + 1) = v22;
LABEL_83:
              if (v22 >= v9 || (v31 = *v22, v31 < 0))
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
                v32 = v22 + 1;
                *(a2 + 1) = v32;
              }

              *(this + 18) |= 0x20u;
              if (v32 < v9 && *v32 == 56)
              {
                v19 = v32 + 1;
                *(a2 + 1) = v19;
                goto LABEL_91;
              }
            }
          }
        }
      }

      if (TagFallback >> 3 > 8)
      {
        if (v7 == 9)
        {
          if ((TagFallback & 7) == 0)
          {
            v23 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_107;
          }
        }

        else if (v7 == 10)
        {
          if ((TagFallback & 7) == 0)
          {
            v20 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_115;
          }
        }

        else if (v7 == 11 && (TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_123;
        }

        goto LABEL_44;
      }

      if (v7 == 6)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v22 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_83;
      }

      if (v7 != 7)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_44;
      }

      v19 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_91:
      if (v19 >= v9 || (v33 = *v19, v33 < 0))
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
        v34 = v19 + 1;
        *(a2 + 1) = v34;
      }

      *(this + 18) |= 0x40u;
      if (v34 < v9 && *v34 == 64)
      {
        v10 = v34 + 1;
        *(a2 + 1) = v10;
LABEL_99:
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

        *(this + 18) |= 0x80u;
        if (v36 < v9 && *v36 == 72)
        {
          v23 = v36 + 1;
          *(a2 + 1) = v23;
LABEL_107:
          if (v23 >= v9 || (v37 = *v23, v37 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
            if (!result)
            {
              return result;
            }

            v38 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 16) = v37;
            v38 = v23 + 1;
            *(a2 + 1) = v38;
          }

          *(this + 18) |= 0x100u;
          if (v38 < v9 && *v38 == 80)
          {
            v20 = v38 + 1;
            *(a2 + 1) = v20;
LABEL_115:
            if (v20 >= v9 || (v39 = *v20, v39 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
              if (!result)
              {
                return result;
              }

              v40 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 6) = v39;
              v40 = v20 + 1;
              *(a2 + 1) = v40;
            }

            *(this + 18) |= 0x200u;
            if (v40 < v9 && *v40 == 88)
            {
              v12 = v40 + 1;
              *(a2 + 1) = v12;
LABEL_123:
              if (v12 >= v9 || (v41 = *v12, v41 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
                if (!result)
                {
                  return result;
                }

                v42 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 7) = v41;
                v42 = v12 + 1;
                *(a2 + 1) = v42;
              }

              *(this + 18) |= 0x400u;
              if (v42 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 8 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_99;
    }

LABEL_44:
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

uint64_t awd::metrics::LocationMainHarvesterMetrics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 40), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 44), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xA, *(v5 + 48), a2, a4);
    if ((*(v5 + 72) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 64), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v6 & 0x400) == 0)
  {
    return this;
  }

LABEL_23:
  v8 = *(v5 + 56);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xB, v8, a2, a4);
}

uint64_t awd::metrics::LocationMainHarvesterMetrics::ByteSize(awd::metrics::LocationMainHarvesterMetrics *this)
{
  v2 = *(this + 18);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_47;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 18);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
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
    v2 = *(this + 18);
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

  v3 = (v3 + v9 + v5 + 1);
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v10 = *(this + 6);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v2 = *(this + 18);
    }

    else
    {
      v11 = 2;
    }

    v3 = (v11 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v12 = *(this + 7);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v13 = 2;
  }

  v3 = (v13 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_31:
  v14 = *(this + 8);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v15 = 2;
  }

  v3 = (v15 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_20:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_39;
  }

LABEL_35:
  v16 = *(this + 9);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v17 = 2;
  }

  v3 = (v17 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_21:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

LABEL_39:
  v18 = *(this + 10);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v19 = 2;
  }

  v3 = (v19 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_43:
    v20 = *(this + 11);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v2 = *(this + 18);
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
    goto LABEL_52;
  }

  if ((v2 & 0x100) == 0)
  {
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_50;
    }

LABEL_57:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
    if ((*(this + 18) & 0x400) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v23 = *(this + 16);
  if (v23 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 1;
    v2 = *(this + 18);
  }

  else
  {
    v24 = 2;
  }

  v3 = (v24 + v3);
  if ((v2 & 0x200) != 0)
  {
    goto LABEL_57;
  }

LABEL_50:
  if ((v2 & 0x400) != 0)
  {
LABEL_51:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
  }

LABEL_52:
  *(this + 17) = v3;
  return v3;
}

void awd::metrics::LocationMainHarvesterMetrics::CheckTypeAndMergeFrom(awd::metrics::LocationMainHarvesterMetrics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationMainHarvesterMetrics::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMainHarvesterMetrics::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMainHarvesterMetrics::CopyFrom(awd::metrics::LocationMainHarvesterMetrics *this, const awd::metrics::LocationMainHarvesterMetrics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMainHarvesterMetrics::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationMainHarvesterMetrics::Swap(uint64_t this, awd::metrics::LocationMainHarvesterMetrics *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    v3 = *(this + 16);
    v4 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v2;
    v5 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v5;
    v6 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v6;
    LODWORD(v6) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v6;
    LODWORD(v6) = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v6;
  }

  return this;
}

uint64_t awd::metrics::LocationSubHarvesterUploadAttempt::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 20) = 0;
  *(this + 12) = 0;
  return this;
}

awd::metrics::LocationSubHarvesterUploadAttempt *awd::metrics::LocationSubHarvesterUploadAttempt::LocationSubHarvesterUploadAttempt(awd::metrics::LocationSubHarvesterUploadAttempt *this, const awd::metrics::LocationSubHarvesterUploadAttempt *a2)
{
  *this = &unk_2A1D4FAE8;
  *(this + 8) = 0;
  *(this + 20) = 0;
  *(this + 12) = 0;
  awd::metrics::LocationSubHarvesterUploadAttempt::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationSubHarvesterUploadAttempt::MergeFrom(awd::metrics::LocationSubHarvesterUploadAttempt *this, const awd::metrics::LocationSubHarvesterUploadAttempt *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v6 = *(a2 + 8);
      *(this + 6) |= 1u;
      *(this + 8) = v6;
      v4 = *(a2 + 6);
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

    else if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 6) |= 2u;
    *(this + 3) = v7;
    if ((*(a2 + 6) & 4) == 0)
    {
      return;
    }

LABEL_7:
    v5 = *(a2 + 4);
    *(this + 6) |= 4u;
    *(this + 4) = v5;
  }
}

void sub_29643FA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationSubHarvesterUploadAttempt::~LocationSubHarvesterUploadAttempt(awd::metrics::LocationSubHarvesterUploadAttempt *this)
{
  *this = &unk_2A1D4FAE8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4FAE8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4FAE8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationSubHarvesterUploadAttempt::default_instance(awd::metrics::LocationSubHarvesterUploadAttempt *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationSubHarvesterUploadAttempt::default_instance_;
  if (!awd::metrics::LocationSubHarvesterUploadAttempt::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationSubHarvesterUploadAttempt::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationSubHarvesterUploadAttempt::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 12) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationSubHarvesterUploadAttempt::MergePartialFromCodedStream(awd::metrics::LocationSubHarvesterUploadAttempt *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v18 = 0;
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v18);
        if (!result)
        {
          return result;
        }

        v9 = v18;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 8) = v9 != 0;
      *(this + 6) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        if (v11 >= v7 || (v13 = *v11, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v13;
          v14 = v11 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 6) |= 2u;
        if (v14 < v7 && *v14 == 24)
        {
          v12 = v14 + 1;
          *(a2 + 1) = v12;
LABEL_33:
          if (v12 >= v7 || (v15 = *v12, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v15;
            v16 = v12 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 6) |= 4u;
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

uint64_t awd::metrics::LocationSubHarvesterUploadAttempt::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
    if ((v5[6] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
  v6 = v5[6];
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
  v7 = v5[4];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v7, a2, a4);
}

uint64_t awd::metrics::LocationSubHarvesterUploadAttempt::ByteSize(awd::metrics::LocationSubHarvesterUploadAttempt *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = 2 * (v2 & 1u);
    if ((v2 & 2) != 0)
    {
      v4 = *(this + 3);
      if (v4 >= 0x80)
      {
        v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        v2 = *(this + 6);
      }

      else
      {
        v5 = 2;
      }

      v3 = (v5 + v3);
    }

    if ((v2 & 4) != 0)
    {
      v6 = *(this + 4);
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
  }

  else
  {
    v3 = 0;
  }

  *(this + 5) = v3;
  return v3;
}

void awd::metrics::LocationSubHarvesterUploadAttempt::CheckTypeAndMergeFrom(awd::metrics::LocationSubHarvesterUploadAttempt *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationSubHarvesterUploadAttempt::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationSubHarvesterUploadAttempt::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationSubHarvesterUploadAttempt::CopyFrom(awd::metrics::LocationSubHarvesterUploadAttempt *this, const awd::metrics::LocationSubHarvesterUploadAttempt *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationSubHarvesterUploadAttempt::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationSubHarvesterUploadAttempt::Swap(uint64_t this, awd::metrics::LocationSubHarvesterUploadAttempt *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v5;
    v6 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v6;
  }

  return this;
}

double awd::metrics::LocationSubHarvesterMetrics::SharedCtor(awd::metrics::LocationSubHarvesterMetrics *this)
{
  *(this + 11) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = v1;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

awd::metrics::LocationSubHarvesterMetrics *awd::metrics::LocationSubHarvesterMetrics::LocationSubHarvesterMetrics(awd::metrics::LocationSubHarvesterMetrics *this, const awd::metrics::LocationSubHarvesterMetrics *a2)
{
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 11) = 0;
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4FB60;
  *(this + 1) = 0;
  *(this + 2) = v3;
  *(this + 7) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  awd::metrics::LocationSubHarvesterMetrics::MergeFrom(this, a2);
  return this;
}

void sub_2964400D0(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationSubHarvesterUploadAttempt>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationSubHarvesterMetrics::MergeFrom(awd::metrics::LocationSubHarvesterMetrics *this, const awd::metrics::LocationSubHarvesterMetrics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationSubHarvesterUploadAttempt>::TypeHandler>((this + 64), a2 + 64);
  v4 = *(a2 + 23);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = *(a2 + 1);
    *(this + 23) |= 1u;
    *(this + 1) = v8;
    v4 = *(a2 + 23);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(a2 + 2);
  *(this + 23) |= 2u;
  v10 = *(this + 2);
  if (v10 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v10, v9);
  v4 = *(a2 + 23);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_23:
  v11 = *(a2 + 6);
  if (v11 >= 0xE)
  {
    awd::metrics::LocationSubHarvesterMetrics::MergeFrom();
  }

  *(this + 23) |= 4u;
  *(this + 6) = v11;
  v4 = *(a2 + 23);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = *(a2 + 7);
  *(this + 23) |= 8u;
  *(this + 7) = v12;
  v4 = *(a2 + 23);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_27:
    v14 = *(a2 + 9);
    *(this + 23) |= 0x20u;
    *(this + 9) = v14;
    v4 = *(a2 + 23);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_26:
  v13 = *(a2 + 8);
  *(this + 23) |= 0x10u;
  *(this + 8) = v13;
  v4 = *(a2 + 23);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_28:
  v15 = *(a2 + 10);
  *(this + 23) |= 0x40u;
  *(this + 10) = v15;
  v4 = *(a2 + 23);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 11);
    *(this + 23) |= 0x80u;
    *(this + 11) = v5;
    v4 = *(a2 + 23);
  }

LABEL_13:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v6 = *(a2 + 6);
      *(this + 23) |= 0x100u;
      *(this + 6) = v6;
      v4 = *(a2 + 23);
    }

    if ((v4 & 0x200) != 0)
    {
      v7 = *(a2 + 7);
      *(this + 23) |= 0x200u;
      *(this + 7) = v7;
    }
  }
}

void sub_296440304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationSubHarvesterMetrics::~LocationSubHarvesterMetrics(awd::metrics::LocationSubHarvesterMetrics *this)
{
  *this = &unk_2A1D4FB60;
  v2 = (this + 64);
  awd::metrics::LocationSubHarvesterMetrics::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationSubHarvesterUploadAttempt>::TypeHandler>(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationSubHarvesterMetrics::~LocationSubHarvesterMetrics(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationSubHarvesterMetrics::SharedDtor(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C25A730);
  }

  return this;
}

uint64_t awd::metrics::LocationSubHarvesterMetrics::default_instance(awd::metrics::LocationSubHarvesterMetrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationSubHarvesterMetrics::default_instance_;
  if (!awd::metrics::LocationSubHarvesterMetrics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationSubHarvesterMetrics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationSubHarvesterMetrics::Clear(awd::metrics::LocationSubHarvesterMetrics *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 1) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 2);
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

    *(this + 3) = 0;
    *(this + 4) = 0;
    *(this + 5) = 0;
    v2 = *(this + 23);
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 6) = 0;
    *(this + 7) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationSubHarvesterUploadAttempt>::TypeHandler>(this + 64);
  *(this + 23) = 0;
  return result;
}

uint64_t awd::metrics::LocationSubHarvesterMetrics::MergePartialFromCodedStream(awd::metrics::LocationSubHarvesterMetrics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
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
        if (TagFallback >> 3 > 5)
        {
          break;
        }

        if (TagFallback >> 3 <= 2)
        {
          if (v7 != 1)
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_44;
            }

            v12 = *(this + 23);
            goto LABEL_53;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_44;
          }

          v14 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v14 >= v13 || (v15 = *v14, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v13 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v15;
            v16 = v14 + 1;
            *(a2 + 1) = v16;
          }

          v12 = *(this + 23) | 1;
          *(this + 23) = v12;
          if (v16 < v13 && *v16 == 18)
          {
            *(a2 + 1) = v16 + 1;
LABEL_53:
            *(this + 23) = v12 | 2;
            if (*(this + 2) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v25 = *(a2 + 1);
            v20 = *(a2 + 2);
            if (v25 < v20 && *v25 == 24)
            {
              v21 = v25 + 1;
              *(a2 + 1) = v21;
LABEL_59:
              v53 = 0;
              if (v21 >= v20 || (v26 = *v21, (v26 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
                if (!result)
                {
                  return result;
                }

                v26 = v53;
              }

              else
              {
                *(a2 + 1) = v21 + 1;
              }

              if (v26 <= 0xD)
              {
                *(this + 23) |= 4u;
                *(this + 6) = v26;
              }

              v27 = *(a2 + 1);
              v9 = *(a2 + 2);
              if (v27 < v9 && *v27 == 32)
              {
                v17 = v27 + 1;
                *(a2 + 1) = v17;
                goto LABEL_69;
              }
            }
          }
        }

        else
        {
          if (v7 == 3)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_44;
            }

            v21 = *(a2 + 1);
            v20 = *(a2 + 2);
            goto LABEL_59;
          }

          if (v7 != 4)
          {
            if (v7 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_44;
            }

            v11 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_77;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_44;
          }

          v17 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_69:
          if (v17 >= v9 || (v28 = *v17, v28 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
            if (!result)
            {
              return result;
            }

            v29 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 7) = v28;
            v29 = v17 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 23) |= 8u;
          if (v29 < v9 && *v29 == 40)
          {
            v11 = v29 + 1;
            *(a2 + 1) = v11;
LABEL_77:
            if (v11 >= v9 || (v30 = *v11, v30 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
              if (!result)
              {
                return result;
              }

              v31 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 8) = v30;
              v31 = v11 + 1;
              *(a2 + 1) = v31;
            }

            *(this + 23) |= 0x10u;
            if (v31 < v9 && *v31 == 48)
            {
              v22 = v31 + 1;
              *(a2 + 1) = v22;
LABEL_85:
              if (v22 >= v9 || (v32 = *v22, v32 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                if (!result)
                {
                  return result;
                }

                v33 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 9) = v32;
                v33 = v22 + 1;
                *(a2 + 1) = v33;
              }

              *(this + 23) |= 0x20u;
              if (v33 < v9 && *v33 == 56)
              {
                v18 = v33 + 1;
                *(a2 + 1) = v18;
                goto LABEL_93;
              }
            }
          }
        }
      }

      if (TagFallback >> 3 > 8)
      {
        break;
      }

      if (v7 == 6)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v22 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_85;
      }

      if (v7 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v18 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_93:
        if (v18 >= v9 || (v34 = *v18, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v34;
          v35 = v18 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 23) |= 0x40u;
        if (v35 < v9 && *v35 == 64)
        {
          v10 = v35 + 1;
          *(a2 + 1) = v10;
LABEL_101:
          if (v10 >= v9 || (v36 = *v10, v36 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
            if (!result)
            {
              return result;
            }

            v37 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 11) = v36;
            v37 = v10 + 1;
            *(a2 + 1) = v37;
          }

          *(this + 23) |= 0x80u;
          if (v37 < v9 && *v37 == 72)
          {
            v23 = v37 + 1;
            *(a2 + 1) = v23;
LABEL_109:
            if (v23 >= v9 || (v38 = *v23, v38 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
              if (!result)
              {
                return result;
              }

              v39 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 6) = v38;
              v39 = v23 + 1;
              *(a2 + 1) = v39;
            }

            *(this + 23) |= 0x100u;
            if (v39 < v9 && *v39 == 80)
            {
              v19 = v39 + 1;
              *(a2 + 1) = v19;
LABEL_117:
              if (v19 >= v9 || (v40 = *v19, v40 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
                if (!result)
                {
                  return result;
                }

                v41 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 7) = v40;
                v41 = v19 + 1;
                *(a2 + 1) = v41;
              }

              *(this + 23) |= 0x200u;
              if (v41 < v9 && *v41 == 90)
              {
LABEL_124:
                *(a2 + 1) = v41 + 1;
                goto LABEL_125;
              }
            }
          }
        }
      }

      else
      {
        if (v7 == 8 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_101;
        }

LABEL_44:
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

    if (v7 == 9)
    {
      if ((TagFallback & 7) == 0)
      {
        v23 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_109;
      }

      goto LABEL_44;
    }

    if (v7 == 10)
    {
      if ((TagFallback & 7) == 0)
      {
        v19 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_117;
      }

      goto LABEL_44;
    }

    if (v7 != 11 || v8 != 2)
    {
      goto LABEL_44;
    }

LABEL_125:
    v42 = *(this + 19);
    v43 = *(this + 18);
    if (v43 >= v42)
    {
      if (v42 == *(this + 20))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 64));
        v42 = *(this + 19);
      }

      *(this + 19) = v42 + 1;
      operator new();
    }

    v44 = *(this + 8);
    *(this + 18) = v43 + 1;
    v45 = *(v44 + 8 * v43);
    v54 = 0;
    v46 = *(a2 + 1);
    if (v46 >= *(a2 + 2) || *v46 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v54))
      {
        return 0;
      }
    }

    else
    {
      v54 = *v46;
      *(a2 + 1) = v46 + 1;
    }

    v47 = *(a2 + 14);
    v48 = *(a2 + 15);
    *(a2 + 14) = v47 + 1;
    if (v47 >= v48)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!awd::metrics::LocationSubHarvesterUploadAttempt::MergePartialFromCodedStream(v45, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v49 = *(a2 + 14);
    v50 = __OFSUB__(v49, 1);
    v51 = v49 - 1;
    if (v51 < 0 == v50)
    {
      *(a2 + 14) = v51;
    }

    v41 = *(a2 + 1);
    v52 = *(a2 + 2);
    if (v41 < v52 && *v41 == 90)
    {
      goto LABEL_124;
    }

    if (v41 == v52 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t awd::metrics::LocationSubHarvesterMetrics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 92);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 92);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 36), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 40), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 44), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(9, *(v5 + 48), a2, a4);
  if ((*(v5 + 92) & 0x200) != 0)
  {
LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0xA, *(v5 + 56), a2, a4);
  }

LABEL_12:
  if (*(v5 + 72) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, *(*(v5 + 64) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 72));
  }

  return this;
}

uint64_t awd::metrics::LocationSubHarvesterMetrics::ByteSize(awd::metrics::LocationSubHarvesterMetrics *this)
{
  v2 = *(this + 23);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_49;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 23);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
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
    v2 = *(this + 23);
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

  v3 += v9 + v5 + 1;
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v10 = *(this + 6);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = 11;
    }

    else if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v2 = *(this + 23);
    }

    else
    {
      v11 = 2;
    }

    v3 += v11;
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v12 = *(this + 7);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 23);
  }

  else
  {
    v13 = 2;
  }

  v3 += v13;
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_33:
  v14 = *(this + 8);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 23);
  }

  else
  {
    v15 = 2;
  }

  v3 += v15;
  if ((v2 & 0x20) == 0)
  {
LABEL_20:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_37:
  v16 = *(this + 9);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v2 = *(this + 23);
  }

  else
  {
    v17 = 2;
  }

  v3 += v17;
  if ((v2 & 0x40) == 0)
  {
LABEL_21:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_45;
  }

LABEL_41:
  v18 = *(this + 10);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v2 = *(this + 23);
  }

  else
  {
    v19 = 2;
  }

  v3 += v19;
  if ((v2 & 0x80) != 0)
  {
LABEL_45:
    v20 = *(this + 11);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v2 = *(this + 23);
    }

    else
    {
      v21 = 2;
    }

    v3 += v21;
  }

LABEL_49:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
      v2 = *(this + 23);
    }

    if ((v2 & 0x200) != 0)
    {
      v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
    }
  }

  v22 = *(this + 18);
  v23 = (v22 + v3);
  if (v22 >= 1)
  {
    v24 = 0;
    do
    {
      v25 = awd::metrics::LocationSubHarvesterUploadAttempt::ByteSize(*(*(this + 8) + 8 * v24));
      v26 = v25;
      if (v25 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
      }

      else
      {
        v27 = 1;
      }

      v23 = (v26 + v23 + v27);
      ++v24;
    }

    while (v24 < *(this + 18));
  }

  *(this + 22) = v23;
  return v23;
}

void awd::metrics::LocationSubHarvesterMetrics::CheckTypeAndMergeFrom(awd::metrics::LocationSubHarvesterMetrics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationSubHarvesterMetrics::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationSubHarvesterMetrics::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationSubHarvesterMetrics::CopyFrom(awd::metrics::LocationSubHarvesterMetrics *this, const awd::metrics::LocationSubHarvesterMetrics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationSubHarvesterMetrics::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationSubHarvesterMetrics::Swap(uint64_t this, awd::metrics::LocationSubHarvesterMetrics *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    v5 = *(this + 16);
    v6 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v6;
    *(a2 + 1) = v4;
    *(a2 + 2) = v5;
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
    v7 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v8;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v9 = *(v3 + 92);
    *(v3 + 92) = *(a2 + 23);
    *(a2 + 23) = v9;
    v10 = *(v3 + 88);
    *(v3 + 88) = *(a2 + 22);
    *(a2 + 22) = v10;
  }

  return this;
}

double awd::metrics::LocationBeaconMonitorSession::SharedCtor(awd::metrics::LocationBeaconMonitorSession *this)
{
  *(this + 8) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 1) = 0;
  *(this + 2) = v1;
  *(this + 3) = v1;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  return result;
}

awd::metrics::LocationBeaconMonitorSession *awd::metrics::LocationBeaconMonitorSession::LocationBeaconMonitorSession(awd::metrics::LocationBeaconMonitorSession *this, const awd::metrics::LocationBeaconMonitorSession *a2)
{
  *(this + 8) = 0;
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1D4FBD8;
  *(this + 1) = 0;
  *(this + 2) = v3;
  *(this + 3) = v3;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  awd::metrics::LocationBeaconMonitorSession::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationBeaconMonitorSession::MergeFrom(awd::metrics::LocationBeaconMonitorSession *this, const awd::metrics::LocationBeaconMonitorSession *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  v4 = *(a2 + 17);
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v4)
  {
    v5 = *(a2 + 1);
    *(this + 17) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 17);
  }

  v6 = MEMORY[0x29EDC9758];
  if ((v4 & 2) != 0)
  {
    v9 = *(a2 + 2);
    *(this + 17) |= 2u;
    v10 = *(this + 2);
    if (v10 == v6)
    {
      operator new();
    }

    std::string::operator=(v10, v9);
    v4 = *(a2 + 17);
    if ((v4 & 4) == 0)
    {
LABEL_8:
      if ((v4 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_8;
  }

  v11 = *(a2 + 3);
  *(this + 17) |= 4u;
  v12 = *(this + 3);
  if (v12 == v6)
  {
    operator new();
  }

  std::string::operator=(v12, v11);
  v4 = *(a2 + 17);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = *(a2 + 8);
  *(this + 17) |= 8u;
  *(this + 8) = v13;
  v4 = *(a2 + 17);
  if ((v4 & 0x10) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    v15 = *(a2 + 10);
    *(this + 17) |= 0x20u;
    *(this + 10) = v15;
    v4 = *(a2 + 17);
    if ((v4 & 0x40) == 0)
    {
LABEL_12:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_27:
  v14 = *(a2 + 9);
  *(this + 17) |= 0x10u;
  *(this + 9) = v14;
  v4 = *(a2 + 17);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_29:
  v16 = *(a2 + 11);
  *(this + 17) |= 0x40u;
  *(this + 11) = v16;
  v4 = *(a2 + 17);
  if ((v4 & 0x80) != 0)
  {
LABEL_13:
    v7 = *(a2 + 12);
    *(this + 17) |= 0x80u;
    *(this + 12) = v7;
    v4 = *(a2 + 17);
  }

LABEL_14:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v17 = *(a2 + 13);
    *(this + 17) |= 0x100u;
    *(this + 13) = v17;
    v4 = *(a2 + 17);
    if ((v4 & 0x200) == 0)
    {
LABEL_17:
      if ((v4 & 0x400) == 0)
      {
        return;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v18 = *(a2 + 14);
  *(this + 17) |= 0x200u;
  *(this + 14) = v18;
  if ((*(a2 + 17) & 0x400) == 0)
  {
    return;
  }

LABEL_18:
  v8 = *(a2 + 15);
  *(this + 17) |= 0x400u;
  *(this + 15) = v8;
}

void sub_29644152C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationBeaconMonitorSession::~LocationBeaconMonitorSession(awd::metrics::LocationBeaconMonitorSession *this)
{
  *this = &unk_2A1D4FBD8;
  awd::metrics::LocationBeaconMonitorSession::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4FBD8;
  awd::metrics::LocationBeaconMonitorSession::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4FBD8;
  awd::metrics::LocationBeaconMonitorSession::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationBeaconMonitorSession::SharedDtor(uint64_t this)
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

    this = MEMORY[0x29C25A730](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 24);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    JUMPOUT(0x29C25A730);
  }

  return this;
}

uint64_t awd::metrics::LocationBeaconMonitorSession::default_instance(awd::metrics::LocationBeaconMonitorSession *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationBeaconMonitorSession::default_instance_;
  if (!awd::metrics::LocationBeaconMonitorSession::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationBeaconMonitorSession::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationBeaconMonitorSession::Clear(uint64_t this)
{
  v1 = *(this + 68);
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

    if ((*(this + 68) & 4) != 0)
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

    *(this + 32) = 0;
    *(this + 40) = 0;
    *(this + 48) = 0;
    v1 = *(this + 68);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 56) = 0;
    *(this + 52) = 0;
  }

  *(this + 68) = 0;
  return this;
}

uint64_t awd::metrics::LocationBeaconMonitorSession::MergePartialFromCodedStream(awd::metrics::LocationBeaconMonitorSession *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
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
        if (TagFallback >> 3 > 5)
        {
          break;
        }

        if (TagFallback >> 3 <= 2)
        {
          if (v7 != 1)
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_44;
            }

            v13 = *(this + 17);
            goto LABEL_53;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_44;
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

          v13 = *(this + 17) | 1;
          *(this + 17) = v13;
          if (v17 < v14 && *v17 == 18)
          {
            *(a2 + 1) = v17 + 1;
LABEL_53:
            *(this + 17) = v13 | 2;
            if (*(this + 2) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v23 = *(a2 + 1);
            if (v23 < *(a2 + 2) && *v23 == 26)
            {
              *(a2 + 1) = v23 + 1;
LABEL_59:
              *(this + 17) |= 4u;
              if (*(this + 3) == v4)
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
                v18 = v24 + 1;
                *(a2 + 1) = v18;
                goto LABEL_65;
              }
            }
          }
        }

        else
        {
          if (v7 == 3)
          {
            if (v8 != 2)
            {
              goto LABEL_44;
            }

            goto LABEL_59;
          }

          if (v7 != 4)
          {
            if (v7 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_44;
            }

            v11 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_73;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_44;
          }

          v18 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_65:
          if (v18 >= v9 || (v25 = *v18, v25 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v26 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v25;
            v26 = v18 + 1;
            *(a2 + 1) = v26;
          }

          *(this + 17) |= 8u;
          if (v26 < v9 && *v26 == 40)
          {
            v11 = v26 + 1;
            *(a2 + 1) = v11;
LABEL_73:
            if (v11 >= v9 || (v27 = *v11, v27 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
              if (!result)
              {
                return result;
              }

              v28 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 9) = v27;
              v28 = v11 + 1;
              *(a2 + 1) = v28;
            }

            *(this + 17) |= 0x10u;
            if (v28 < v9 && *v28 == 48)
            {
              v21 = v28 + 1;
              *(a2 + 1) = v21;
LABEL_81:
              if (v21 >= v9 || (v29 = *v21, v29 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
                if (!result)
                {
                  return result;
                }

                v30 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 10) = v29;
                v30 = v21 + 1;
                *(a2 + 1) = v30;
              }

              *(this + 17) |= 0x20u;
              if (v30 < v9 && *v30 == 56)
              {
                v19 = v30 + 1;
                *(a2 + 1) = v19;
                goto LABEL_89;
              }
            }
          }
        }
      }

      if (TagFallback >> 3 > 8)
      {
        if (v7 == 9)
        {
          if ((TagFallback & 7) == 0)
          {
            v22 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_105;
          }
        }

        else if (v7 == 10)
        {
          if ((TagFallback & 7) == 0)
          {
            v20 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_113;
          }
        }

        else if (v7 == 11 && (TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_121;
        }

        goto LABEL_44;
      }

      if (v7 == 6)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v21 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_81;
      }

      if (v7 != 7)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_44;
      }

      v19 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_89:
      if (v19 >= v9 || (v31 = *v19, v31 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
        if (!result)
        {
          return result;
        }

        v32 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 11) = v31;
        v32 = v19 + 1;
        *(a2 + 1) = v32;
      }

      *(this + 17) |= 0x40u;
      if (v32 < v9 && *v32 == 64)
      {
        v10 = v32 + 1;
        *(a2 + 1) = v10;
LABEL_97:
        if (v10 >= v9 || (v33 = *v10, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v33;
          v34 = v10 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 17) |= 0x80u;
        if (v34 < v9 && *v34 == 72)
        {
          v22 = v34 + 1;
          *(a2 + 1) = v22;
LABEL_105:
          if (v22 >= v9 || (v35 = *v22, v35 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
            if (!result)
            {
              return result;
            }

            v36 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 13) = v35;
            v36 = v22 + 1;
            *(a2 + 1) = v36;
          }

          *(this + 17) |= 0x100u;
          if (v36 < v9 && *v36 == 80)
          {
            v20 = v36 + 1;
            *(a2 + 1) = v20;
LABEL_113:
            if (v20 >= v9 || (v37 = *v20, v37 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
              if (!result)
              {
                return result;
              }

              v38 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 14) = v37;
              v38 = v20 + 1;
              *(a2 + 1) = v38;
            }

            *(this + 17) |= 0x200u;
            if (v38 < v9 && *v38 == 88)
            {
              v12 = v38 + 1;
              *(a2 + 1) = v12;
LABEL_121:
              if (v12 >= v9 || (v39 = *v12, v39 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
                if (!result)
                {
                  return result;
                }

                v40 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                *(this + 15) = v39;
                v40 = v12 + 1;
                *(a2 + 1) = v40;
              }

              *(this + 17) |= 0x400u;
              if (v40 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 8 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_97;
    }

LABEL_44:
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

uint64_t awd::metrics::LocationBeaconMonitorSession::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 68);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 68);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 68);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 44), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 48), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 56), a2, a4);
    if ((*(v5 + 68) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 52), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v6 & 0x400) == 0)
  {
    return this;
  }

LABEL_23:
  v9 = *(v5 + 60);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v9, a2, a4);
}

uint64_t awd::metrics::LocationBeaconMonitorSession::ByteSize(awd::metrics::LocationBeaconMonitorSession *this)
{
  v2 = *(this + 17);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_52;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 17);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
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
    v2 = *(this + 17);
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

  v3 = (v3 + v9 + v5 + 1);
LABEL_16:
  if ((v2 & 4) != 0)
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
      v2 = *(this + 17);
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

    v3 = (v3 + v15 + v11 + 1);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_36;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v16 = *(this + 8);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v17 = 2;
  }

  v3 = (v17 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_36:
  v18 = *(this + 9);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v19 = 2;
  }

  v3 = (v19 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_20:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_40:
  v20 = *(this + 10);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v21 = 2;
  }

  v3 = (v21 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_21:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

LABEL_44:
  v22 = *(this + 11);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v23 = 2;
  }

  v3 = (v23 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_48:
    v24 = *(this + 12);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
      v2 = *(this + 17);
    }

    else
    {
      v25 = 2;
    }

    v3 = (v25 + v3);
  }

LABEL_52:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_69;
  }

  if ((v2 & 0x100) != 0)
  {
    v26 = *(this + 13);
    if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
      v2 = *(this + 17);
    }

    else
    {
      v27 = 2;
    }

    v3 = (v27 + v3);
    if ((v2 & 0x200) == 0)
    {
LABEL_55:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_65;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_55;
  }

  v28 = *(this + 14);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v29 = 2;
  }

  v3 = (v29 + v3);
  if ((v2 & 0x400) != 0)
  {
LABEL_65:
    v30 = *(this + 15);
    if (v30 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
    }

    else
    {
      v31 = 2;
    }

    v3 = (v31 + v3);
  }

LABEL_69:
  *(this + 16) = v3;
  return v3;
}

void awd::metrics::LocationBeaconMonitorSession::CheckTypeAndMergeFrom(awd::metrics::LocationBeaconMonitorSession *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationBeaconMonitorSession::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationBeaconMonitorSession::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationBeaconMonitorSession::CopyFrom(awd::metrics::LocationBeaconMonitorSession *this, const awd::metrics::LocationBeaconMonitorSession *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationBeaconMonitorSession::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationBeaconMonitorSession::Swap(uint64_t this, awd::metrics::LocationBeaconMonitorSession *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    v3 = *(this + 16);
    v4 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    LODWORD(v5) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v5;
    LODWORD(v5) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v5;
    LODWORD(v5) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v5;
    LODWORD(v5) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v5;
    LODWORD(v5) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v5;
    LODWORD(v5) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v5;
    LODWORD(v5) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v5;
    LODWORD(v5) = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v5;
    LODWORD(v5) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v5;
  }

  return this;
}

void *awd::metrics::LocationBeaconMonitorTrigger::SharedCtor(void *this)
{
  v1 = MEMORY[0x29EDC9758];
  this[1] = 0;
  this[2] = v1;
  this[5] = 0;
  this[6] = 0;
  this[3] = v1;
  this[4] = 0;
  return this;
}

awd::metrics::LocationBeaconMonitorTrigger *awd::metrics::LocationBeaconMonitorTrigger::LocationBeaconMonitorTrigger(awd::metrics::LocationBeaconMonitorTrigger *this, const awd::metrics::LocationBeaconMonitorTrigger *a2)
{
  *(this + 6) = 0;
  *this = &unk_2A1D4FC50;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  *(this + 4) = 0;
  *(this + 5) = 0;
  awd::metrics::LocationBeaconMonitorTrigger::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationBeaconMonitorTrigger::MergeFrom(awd::metrics::LocationBeaconMonitorTrigger *this, const awd::metrics::LocationBeaconMonitorTrigger *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      v5 = *(a2 + 1);
      *(this + 13) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 13);
    }

    v6 = MEMORY[0x29EDC9758];
    if ((v4 & 2) != 0)
    {
      v8 = *(a2 + 2);
      *(this + 13) |= 2u;
      v9 = *(this + 2);
      if (v9 == v6)
      {
        operator new();
      }

      std::string::operator=(v9, v8);
      v4 = *(a2 + 13);
      if ((v4 & 4) == 0)
      {
LABEL_8:
        if ((v4 & 8) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_20;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    v10 = *(a2 + 3);
    *(this + 13) |= 4u;
    v11 = *(this + 3);
    if (v11 == v6)
    {
      operator new();
    }

    std::string::operator=(v11, v10);
    v4 = *(a2 + 13);
    if ((v4 & 8) == 0)
    {
LABEL_9:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }

LABEL_20:
    v12 = *(a2 + 8);
    *(this + 13) |= 8u;
    *(this + 8) = v12;
    v4 = *(a2 + 13);
    if ((v4 & 0x10) == 0)
    {
LABEL_10:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }

LABEL_21:
    v13 = *(a2 + 9);
    *(this + 13) |= 0x10u;
    *(this + 9) = v13;
    v4 = *(a2 + 13);
    if ((v4 & 0x20) == 0)
    {
LABEL_11:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_22:
    v14 = *(a2 + 10);
    *(this + 13) |= 0x20u;
    *(this + 10) = v14;
    if ((*(a2 + 13) & 0x40) == 0)
    {
      return;
    }

LABEL_12:
    v7 = *(a2 + 11);
    *(this + 13) |= 0x40u;
    *(this + 11) = v7;
  }
}

void sub_296442630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationBeaconMonitorTrigger::~LocationBeaconMonitorTrigger(awd::metrics::LocationBeaconMonitorTrigger *this)
{
  *this = &unk_2A1D4FC50;
  awd::metrics::LocationBeaconMonitorTrigger::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4FC50;
  awd::metrics::LocationBeaconMonitorTrigger::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4FC50;
  awd::metrics::LocationBeaconMonitorTrigger::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationBeaconMonitorTrigger::SharedDtor(uint64_t this)
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

    this = MEMORY[0x29C25A730](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 24);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    JUMPOUT(0x29C25A730);
  }

  return this;
}

uint64_t awd::metrics::LocationBeaconMonitorTrigger::default_instance(awd::metrics::LocationBeaconMonitorTrigger *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationBeaconMonitorTrigger::default_instance_;
  if (!awd::metrics::LocationBeaconMonitorTrigger::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationBeaconMonitorTrigger::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationBeaconMonitorTrigger::Clear(uint64_t this)
{
  v1 = *(this + 52);
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

    if ((*(this + 52) & 4) != 0)
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

    *(this + 32) = 0;
    *(this + 40) = 0;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t awd::metrics::LocationBeaconMonitorTrigger::MergePartialFromCodedStream(awd::metrics::LocationBeaconMonitorTrigger *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
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
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_31;
          }

          v13 = *(a2 + 1);
          v12 = *(a2 + 2);
          if (v13 >= v12 || (v14 = *v13, v14 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v15 = *(a2 + 1);
            v12 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v14;
            v15 = v13 + 1;
            *(a2 + 1) = v15;
          }

          v18 = *(this + 13) | 1;
          *(this + 13) = v18;
          if (v15 < v12 && *v15 == 18)
          {
            *(a2 + 1) = v15 + 1;
            goto LABEL_40;
          }
        }

        else
        {
          if (v7 != 2)
          {
            if (v7 != 3 || v8 != 2)
            {
              goto LABEL_31;
            }

            goto LABEL_46;
          }

          if (v8 != 2)
          {
            goto LABEL_31;
          }

          v18 = *(this + 13);
LABEL_40:
          *(this + 13) = v18 | 2;
          if (*(this + 2) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v19 = *(a2 + 1);
          if (v19 < *(a2 + 2) && *v19 == 26)
          {
            *(a2 + 1) = v19 + 1;
LABEL_46:
            *(this + 13) |= 4u;
            if (*(this + 3) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v20 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v20 < v9 && *v20 == 32)
            {
              v16 = v20 + 1;
              *(a2 + 1) = v16;
              goto LABEL_52;
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        if (v7 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v17 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_68;
          }
        }

        else if (v7 == 7 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_76;
        }

        goto LABEL_31;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_31;
      }

      v16 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_52:
      if (v16 >= v9 || (v21 = *v16, v21 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
        if (!result)
        {
          return result;
        }

        v22 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 8) = v21;
        v22 = v16 + 1;
        *(a2 + 1) = v22;
      }

      *(this + 13) |= 8u;
      if (v22 < v9 && *v22 == 40)
      {
        v10 = v22 + 1;
        *(a2 + 1) = v10;
LABEL_60:
        if (v10 >= v9 || (v23 = *v10, v23 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v24 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v23;
          v24 = v10 + 1;
          *(a2 + 1) = v24;
        }

        *(this + 13) |= 0x10u;
        if (v24 < v9 && *v24 == 48)
        {
          v17 = v24 + 1;
          *(a2 + 1) = v17;
LABEL_68:
          if (v17 >= v9 || (v25 = *v17, v25 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
            if (!result)
            {
              return result;
            }

            v26 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 10) = v25;
            v26 = v17 + 1;
            *(a2 + 1) = v26;
          }

          *(this + 13) |= 0x20u;
          if (v26 < v9 && *v26 == 56)
          {
            v11 = v26 + 1;
            *(a2 + 1) = v11;
LABEL_76:
            if (v11 >= v9 || (v27 = *v11, v27 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
              if (!result)
              {
                return result;
              }

              v28 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 11) = v27;
              v28 = v11 + 1;
              *(a2 + 1) = v28;
            }

            *(this + 13) |= 0x40u;
            if (v28 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_60;
    }

LABEL_31:
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

uint64_t awd::metrics::LocationBeaconMonitorTrigger::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v8 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 40), a2, a4);
    if ((*(v5 + 52) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_15:
  v9 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v9, a2, a4);
}

uint64_t awd::metrics::LocationBeaconMonitorTrigger::ByteSize(awd::metrics::LocationBeaconMonitorTrigger *this)
{
  LOBYTE(v2) = *(this + 52);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_47;
  }

  if (*(this + 52))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 13);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 52) & 2) == 0)
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
    v2 = *(this + 13);
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

  v3 = (v3 + v9 + v5 + 1);
LABEL_16:
  if ((v2 & 4) != 0)
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
      v2 = *(this + 13);
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

    v3 = (v3 + v15 + v11 + 1);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_35;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v16 = *(this + 8);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v17 = 2;
  }

  v3 = (v17 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

LABEL_35:
  v18 = *(this + 9);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v19 = 2;
  }

  v3 = (v19 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_20:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_43;
  }

LABEL_39:
  v20 = *(this + 10);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v21 = 2;
  }

  v3 = (v21 + v3);
  if ((v2 & 0x40) != 0)
  {
LABEL_43:
    v22 = *(this + 11);
    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    }

    else
    {
      v23 = 2;
    }

    v3 = (v23 + v3);
  }

LABEL_47:
  *(this + 12) = v3;
  return v3;
}

void awd::metrics::LocationBeaconMonitorTrigger::CheckTypeAndMergeFrom(awd::metrics::LocationBeaconMonitorTrigger *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationBeaconMonitorTrigger::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationBeaconMonitorTrigger::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationBeaconMonitorTrigger::CopyFrom(awd::metrics::LocationBeaconMonitorTrigger *this, const awd::metrics::LocationBeaconMonitorTrigger *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationBeaconMonitorTrigger::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationBeaconMonitorTrigger::Swap(uint64_t this, awd::metrics::LocationBeaconMonitorTrigger *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    v3 = *(this + 16);
    v4 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    LODWORD(v5) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v5;
    LODWORD(v5) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v5;
    LODWORD(v5) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v5;
    LODWORD(v5) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v5;
    LODWORD(v5) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v5;
  }

  return this;
}

void *awd::metrics::LocationBeaconRangingSession::SharedCtor(void *this)
{
  this[7] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[1] = 0;
  this[2] = v1;
  this[3] = 0;
  this[4] = 0;
  return this;
}

awd::metrics::LocationBeaconRangingSession *awd::metrics::LocationBeaconRangingSession::LocationBeaconRangingSession(awd::metrics::LocationBeaconRangingSession *this, const awd::metrics::LocationBeaconRangingSession *a2)
{
  *(this + 5) = 0;
  *this = &unk_2A1D4FCC8;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = v3;
  awd::metrics::LocationBeaconRangingSession::MergeFrom(this, a2);
  return this;
}

void sub_29644320C(_Unwind_Exception *a1)
{
  v3 = v2;
  if (*v3)
  {
    MEMORY[0x29C25A710](*v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationBeaconRangingSession::MergeFrom(awd::metrics::LocationBeaconRangingSession *this, const awd::metrics::LocationBeaconRangingSession *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  v4 = *(a2 + 12);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 5, *(this + 12) + v4);
    memcpy((*(this + 5) + 4 * *(this + 12)), *(a2 + 5), 4 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  LOBYTE(v5) = *(a2 + 60);
  if (v5)
  {
    if (*(a2 + 60))
    {
      v7 = *(a2 + 1);
      *(this + 15) |= 1u;
      *(this + 1) = v7;
      v5 = *(a2 + 15);
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }
    }

    else if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_8;
    }

    v8 = *(a2 + 2);
    *(this + 15) |= 2u;
    v9 = *(this + 2);
    if (v9 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v9, v8);
    v5 = *(a2 + 15);
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = *(a2 + 6);
    *(this + 15) |= 4u;
    *(this + 6) = v10;
    v5 = *(a2 + 15);
    if ((v5 & 8) == 0)
    {
LABEL_10:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }

LABEL_19:
    v11 = *(a2 + 7);
    *(this + 15) |= 8u;
    *(this + 7) = v11;
    v5 = *(a2 + 15);
    if ((v5 & 0x10) == 0)
    {
LABEL_11:
      if ((v5 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_20:
    v12 = *(a2 + 8);
    *(this + 15) |= 0x10u;
    *(this + 8) = v12;
    if ((*(a2 + 15) & 0x20) == 0)
    {
      return;
    }

LABEL_12:
    v6 = *(a2 + 9);
    *(this + 15) |= 0x20u;
    *(this + 9) = v6;
  }
}

void sub_2964433FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationBeaconRangingSession::~LocationBeaconRangingSession(awd::metrics::LocationBeaconRangingSession *this)
{
  *this = &unk_2A1D4FCC8;
  awd::metrics::LocationBeaconRangingSession::SharedDtor(this);
  v2 = *(this + 5);
  if (v2)
  {
    MEMORY[0x29C25A710](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationBeaconRangingSession::~LocationBeaconRangingSession(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationBeaconRangingSession::SharedDtor(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C25A730);
  }

  return this;
}

uint64_t awd::metrics::LocationBeaconRangingSession::default_instance(awd::metrics::LocationBeaconRangingSession *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationBeaconRangingSession::default_instance_;
  if (!awd::metrics::LocationBeaconRangingSession::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationBeaconRangingSession::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationBeaconRangingSession::Clear(uint64_t this)
{
  v1 = *(this + 60);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
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
  }

  *(this + 48) = 0;
  *(this + 60) = 0;
  return this;
}

uint64_t awd::metrics::LocationBeaconRangingSession::MergePartialFromCodedStream(awd::metrics::LocationBeaconRangingSession *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
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
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_33;
          }

          v14 = *(a2 + 1);
          v13 = *(a2 + 2);
          if (v14 >= v13 || (v15 = *v14, v15 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v16 = *(a2 + 1);
            v13 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v15;
            v16 = v14 + 1;
            *(a2 + 1) = v16;
          }

          v19 = *(this + 15) | 1;
          *(this + 15) = v19;
          if (v16 < v13 && *v16 == 18)
          {
            *(a2 + 1) = v16 + 1;
            goto LABEL_43;
          }
        }

        else
        {
          if (v7 != 2)
          {
            if (v7 != 3 || (TagFallback & 7) != 0)
            {
              goto LABEL_33;
            }

            v11 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_49;
          }

          if (v8 != 2)
          {
            goto LABEL_33;
          }

          v19 = *(this + 15);
LABEL_43:
          *(this + 15) = v19 | 2;
          if (*(this + 2) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v21 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v21 < v9 && *v21 == 24)
          {
            v11 = v21 + 1;
            *(a2 + 1) = v11;
LABEL_49:
            if (v11 >= v9 || (v22 = *v11, v22 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
              if (!result)
              {
                return result;
              }

              v23 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 6) = v22;
              v23 = v11 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 15) |= 4u;
            if (v23 < v9 && *v23 == 32)
            {
              v17 = v23 + 1;
              *(a2 + 1) = v17;
              goto LABEL_57;
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        if (v7 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v18 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_73;
          }
        }

        else if (v7 == 7)
        {
          if ((TagFallback & 7) == 0)
          {
            v20 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_81;
          }

          if (v8 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)17>(a2, this + 40);
            if (!result)
            {
              return result;
            }

            goto LABEL_100;
          }
        }

        goto LABEL_33;
      }

      if (v7 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_33;
      }

      v17 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_57:
      if (v17 >= v9 || (v24 = *v17, v24 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
        if (!result)
        {
          return result;
        }

        v25 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 7) = v24;
        v25 = v17 + 1;
        *(a2 + 1) = v25;
      }

      *(this + 15) |= 8u;
      if (v25 < v9 && *v25 == 40)
      {
        v10 = v25 + 1;
        *(a2 + 1) = v10;
LABEL_65:
        if (v10 >= v9 || (v26 = *v10, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v26;
          v27 = v10 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 15) |= 0x10u;
        if (v27 < v9 && *v27 == 48)
        {
          v18 = v27 + 1;
          *(a2 + 1) = v18;
LABEL_73:
          if (v18 >= v9 || (v28 = *v18, v28 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
            if (!result)
            {
              return result;
            }

            v29 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 9) = v28;
            v29 = v18 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 15) |= 0x20u;
          if (v29 < v9 && *v29 == 56)
          {
            do
            {
              v20 = v29 + 1;
              *(a2 + 1) = v20;
LABEL_81:
              v41[0] = 0;
              if (v20 >= v9 || (v30 = *v20, (v30 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v41);
                if (!result)
                {
                  return result;
                }

                v30 = v41[0];
              }

              else
              {
                *(a2 + 1) = v20 + 1;
              }

              v31 = -(v30 & 1) ^ (v30 >> 1);
              v32 = *(this + 12);
              if (v32 == *(this + 13))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 5, v32 + 1);
                v32 = *(this + 12);
              }

              v33 = *(this + 5);
              *(this + 12) = v32 + 1;
              *(v33 + 4 * v32) = v31;
              v34 = *(this + 13) - *(this + 12);
              if (v34 >= 1)
              {
                v35 = v34 + 1;
                do
                {
                  v36 = *(a2 + 1);
                  v37 = *(a2 + 2);
                  if (v36 >= v37 || *v36 != 56)
                  {
                    break;
                  }

                  *(a2 + 1) = v36 + 1;
                  v41[0] = 0;
                  if ((v36 + 1) >= v37 || (v38 = v36[1], (v38 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v41);
                    if (!result)
                    {
                      return result;
                    }

                    v38 = v41[0];
                  }

                  else
                  {
                    *(a2 + 1) = v36 + 2;
                  }

                  v39 = *(this + 12);
                  if (v39 >= *(this + 13))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v41);
                    v39 = *(this + 12);
                  }

                  v40 = *(this + 5);
                  *(this + 12) = v39 + 1;
                  *(v40 + 4 * v39) = -(v38 & 1) ^ (v38 >> 1);
                  --v35;
                }

                while (v35 > 1);
              }

LABEL_100:
              v29 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            while (v29 < v9 && *v29 == 56);
            if (v29 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 5 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_65;
    }

LABEL_33:
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

void sub_296443B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)17>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v10 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v10);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v11 = 0;
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
        if (!result)
        {
          return result;
        }

        v7 = v11;
      }

      else
      {
        *(this + 1) = v6 + 1;
      }

      v8 = *(a2 + 8);
      if (v8 == *(a2 + 12))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(a2, v8 + 1);
        v8 = *(a2 + 8);
      }

      v9 = *a2;
      *(a2 + 8) = v8 + 1;
      *(v9 + 4 * v8) = -(v7 & 1) ^ (v7 >> 1);
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
  return 1;
}

uint64_t awd::metrics::LocationBeaconRangingSession::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 60);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 32), a2, a4);
  if ((*(v5 + 60) & 0x20) != 0)
  {
LABEL_7:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 36), a2, a4);
  }

LABEL_8:
  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(7, *(*(v5 + 40) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 48));
  }

  return this;
}

uint64_t awd::metrics::LocationBeaconRangingSession::ByteSize(awd::metrics::LocationBeaconRangingSession *this)
{
  LOBYTE(v2) = *(this + 60);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_37;
  }

  if (*(this + 60))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 15);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 60) & 2) == 0)
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
    v2 = *(this + 15);
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

  v3 += v9 + v5 + 1;
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v10 = *(this + 6);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
      v2 = *(this + 15);
    }

    else
    {
      v11 = 2;
    }

    v3 += v11;
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v12 = *(this + 7);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v13 = 2;
  }

  v3 += v13;
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_29:
  v14 = *(this + 8);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v15 = 2;
  }

  v3 += v15;
  if ((v2 & 0x20) != 0)
  {
LABEL_33:
    v16 = *(this + 9);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    }

    else
    {
      v17 = 2;
    }

    v3 += v17;
  }

LABEL_37:
  v18 = *(this + 12);
  if (v18 < 1)
  {
    v20 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *(*(this + 5) + 4 * v19);
      v22 = ((2 * v21) ^ (v21 >> 31));
      if (v22 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
        v18 = *(this + 12);
      }

      else
      {
        v23 = 1;
      }

      v20 += v23;
      ++v19;
    }

    while (v19 < v18);
  }

  result = (v20 + v3 + v18);
  *(this + 14) = result;
  return result;
}

void awd::metrics::LocationBeaconRangingSession::CheckTypeAndMergeFrom(awd::metrics::LocationBeaconRangingSession *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationBeaconRangingSession::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationBeaconRangingSession::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationBeaconRangingSession::CopyFrom(awd::metrics::LocationBeaconRangingSession *this, const awd::metrics::LocationBeaconRangingSession *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationBeaconRangingSession::MergeFrom(this, a2);
  }
}

double awd::metrics::LocationBeaconRangingSession::Swap(awd::metrics::LocationBeaconRangingSession *this, awd::metrics::LocationBeaconRangingSession *a2)
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
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    result = *(a2 + 6);
    *(a2 + 5) = v5;
    v7 = *(this + 6);
    *(this + 6) = result;
    *(a2 + 6) = v7;
    LODWORD(v5) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v5;
    LODWORD(v5) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v5;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData *awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::LocationGPSSessionStatistics_UncertaintyRangeData(awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData *this, const awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D4FD40;
  *(this + 6) = 0;
  awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::MergeFrom(awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData *this, const awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      if (v5 >= 0xF)
      {
        awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::MergeFrom();
      }

      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_2964442E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::~LocationGPSSessionStatistics_UncertaintyRangeData(awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData *this)
{
  *this = &unk_2A1D4FD40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4FD40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4FD40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::default_instance(awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v14 = 0;
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v7 = v14;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 <= 0xE)
      {
        *(this + 6) |= 1u;
        *(this + 4) = v7;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v10 < v8 && *v10 == 16)
      {
        v9 = v10 + 1;
        *(a2 + 1) = v9;
LABEL_24:
        if (v9 >= v8 || (v11 = *v9, v11 < 0))
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
          v12 = v9 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 6) |= 2u;
        if (v12 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_24;
    }

LABEL_13:
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

uint64_t awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::ByteSize(awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = *(this + 4);
    if ((v4 & 0x80000000) == 0)
    {
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v3 = 11;
    if ((v2 & 2) != 0)
    {
LABEL_11:
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_12:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::CopyFrom(awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData *this, const awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_UncertaintyRangeData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData *awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::LocationGPSSessionStatistics_SatelliteCNORangeData(awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData *this, const awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D4FDB8;
  *(this + 6) = 0;
  awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergeFrom(awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData *this, const awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      if (v5 >= 0xB)
      {
        awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergeFrom();
      }

      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_29644496C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::~LocationGPSSessionStatistics_SatelliteCNORangeData(awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData *this)
{
  *this = &unk_2A1D4FDB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4FDB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4FDB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::default_instance(awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v14 = 0;
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v7 = v14;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 <= 0xA)
      {
        *(this + 6) |= 1u;
        *(this + 4) = v7;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v10 < v8 && *v10 == 16)
      {
        v9 = v10 + 1;
        *(a2 + 1) = v9;
LABEL_24:
        if (v9 >= v8 || (v11 = *v9, v11 < 0))
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
          v12 = v9 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 6) |= 2u;
        if (v12 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_24;
    }

LABEL_13:
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

uint64_t awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::ByteSize(awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = *(this + 4);
    if ((v4 & 0x80000000) == 0)
    {
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v3 = 11;
    if ((v2 & 2) != 0)
    {
LABEL_11:
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_12:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::CopyFrom(awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData *this, const awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_SatelliteCNORangeData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData *awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::LocationGPSSessionStatistics_SatelliteCountRangeData(awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData *this, const awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D4FE30;
  *(this + 6) = 0;
  awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergeFrom(awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData *this, const awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      if (v5 >= 8)
      {
        awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergeFrom();
      }

      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_296444FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::~LocationGPSSessionStatistics_SatelliteCountRangeData(awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData *this)
{
  *this = &unk_2A1D4FE30;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4FE30;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4FE30;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::default_instance(awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v14 = 0;
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v7 = v14;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 <= 7)
      {
        *(this + 6) |= 1u;
        *(this + 4) = v7;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v10 < v8 && *v10 == 16)
      {
        v9 = v10 + 1;
        *(a2 + 1) = v9;
LABEL_24:
        if (v9 >= v8 || (v11 = *v9, v11 < 0))
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
          v12 = v9 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 6) |= 2u;
        if (v12 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_24;
    }

LABEL_13:
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

uint64_t awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::ByteSize(awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = *(this + 4);
    if ((v4 & 0x80000000) == 0)
    {
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v3 = 11;
    if ((v2 & 2) != 0)
    {
LABEL_11:
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_12:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::CopyFrom(awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData *this, const awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_SatelliteCountRangeData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_MotionActivityData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_MotionActivityData *awd::metrics::LocationGPSSessionStatistics_MotionActivityData::LocationGPSSessionStatistics_MotionActivityData(awd::metrics::LocationGPSSessionStatistics_MotionActivityData *this, const awd::metrics::LocationGPSSessionStatistics_MotionActivityData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D4FEA8;
  *(this + 6) = 0;
  awd::metrics::LocationGPSSessionStatistics_MotionActivityData::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_MotionActivityData::MergeFrom(awd::metrics::LocationGPSSessionStatistics_MotionActivityData *this, const awd::metrics::LocationGPSSessionStatistics_MotionActivityData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      if (v5 >= 9)
      {
        awd::metrics::LocationGPSSessionStatistics_MotionActivityData::MergeFrom();
      }

      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_29644567C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_MotionActivityData::~LocationGPSSessionStatistics_MotionActivityData(awd::metrics::LocationGPSSessionStatistics_MotionActivityData *this)
{
  *this = &unk_2A1D4FEA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4FEA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4FEA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_MotionActivityData::default_instance(awd::metrics::LocationGPSSessionStatistics_MotionActivityData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_MotionActivityData::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_MotionActivityData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_MotionActivityData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_MotionActivityData::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_MotionActivityData::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_MotionActivityData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v14 = 0;
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v7 = v14;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 <= 8)
      {
        *(this + 6) |= 1u;
        *(this + 4) = v7;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v10 < v8 && *v10 == 16)
      {
        v9 = v10 + 1;
        *(a2 + 1) = v9;
LABEL_24:
        if (v9 >= v8 || (v11 = *v9, v11 < 0))
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
          v12 = v9 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 6) |= 2u;
        if (v12 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_24;
    }

LABEL_13:
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

uint64_t awd::metrics::LocationGPSSessionStatistics_MotionActivityData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_MotionActivityData::ByteSize(awd::metrics::LocationGPSSessionStatistics_MotionActivityData *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = *(this + 4);
    if ((v4 & 0x80000000) == 0)
    {
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v3 = 11;
    if ((v2 & 2) != 0)
    {
LABEL_11:
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_12:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::LocationGPSSessionStatistics_MotionActivityData::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_MotionActivityData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGPSSessionStatistics_MotionActivityData::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_MotionActivityData::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_MotionActivityData::CopyFrom(awd::metrics::LocationGPSSessionStatistics_MotionActivityData *this, const awd::metrics::LocationGPSSessionStatistics_MotionActivityData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_MotionActivityData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_MotionActivityData::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_MotionActivityData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData *awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::LocationGPSSessionStatistics_SignalEnvironmentData(awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData *this, const awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D4FF20;
  *(this + 6) = 0;
  awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::MergeFrom(awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData *this, const awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      if (v5 >= 5 && v5 - 6 >= 2)
      {
        awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::MergeFrom();
      }

      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_296445D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::~LocationGPSSessionStatistics_SignalEnvironmentData(awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData *this)
{
  *this = &unk_2A1D4FF20;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4FF20;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4FF20;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::default_instance(awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v14 = 0;
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v7 = v14;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 <= 7 && v7 != 5)
      {
        *(this + 6) |= 1u;
        *(this + 4) = v7;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v10 < v8 && *v10 == 16)
      {
        v9 = v10 + 1;
        *(a2 + 1) = v9;
LABEL_25:
        if (v9 >= v8 || (v11 = *v9, v11 < 0))
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
          v12 = v9 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 6) |= 2u;
        if (v12 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_25;
    }

LABEL_13:
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

uint64_t awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::ByteSize(awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = *(this + 4);
    if ((v4 & 0x80000000) == 0)
    {
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v3 = 11;
    if ((v2 & 2) != 0)
    {
LABEL_11:
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_12:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::CopyFrom(awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData *this, const awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_SignalEnvironmentData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_MountedStateData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_MountedStateData *awd::metrics::LocationGPSSessionStatistics_MountedStateData::LocationGPSSessionStatistics_MountedStateData(awd::metrics::LocationGPSSessionStatistics_MountedStateData *this, const awd::metrics::LocationGPSSessionStatistics_MountedStateData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D4FF98;
  *(this + 6) = 0;
  awd::metrics::LocationGPSSessionStatistics_MountedStateData::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_MountedStateData::MergeFrom(awd::metrics::LocationGPSSessionStatistics_MountedStateData *this, const awd::metrics::LocationGPSSessionStatistics_MountedStateData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      if (v5 >= 3)
      {
        awd::metrics::LocationGPSSessionStatistics_MountedStateData::MergeFrom();
      }

      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_2964463A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_MountedStateData::~LocationGPSSessionStatistics_MountedStateData(awd::metrics::LocationGPSSessionStatistics_MountedStateData *this)
{
  *this = &unk_2A1D4FF98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4FF98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4FF98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_MountedStateData::default_instance(awd::metrics::LocationGPSSessionStatistics_MountedStateData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_MountedStateData::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_MountedStateData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_MountedStateData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_MountedStateData::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_MountedStateData::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_MountedStateData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v14 = 0;
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v7 = v14;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 <= 2)
      {
        *(this + 6) |= 1u;
        *(this + 4) = v7;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v10 < v8 && *v10 == 16)
      {
        v9 = v10 + 1;
        *(a2 + 1) = v9;
LABEL_24:
        if (v9 >= v8 || (v11 = *v9, v11 < 0))
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
          v12 = v9 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 6) |= 2u;
        if (v12 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_24;
    }

LABEL_13:
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

uint64_t awd::metrics::LocationGPSSessionStatistics_MountedStateData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_MountedStateData::ByteSize(awd::metrics::LocationGPSSessionStatistics_MountedStateData *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = *(this + 4);
    if ((v4 & 0x80000000) == 0)
    {
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v3 = 11;
    if ((v2 & 2) != 0)
    {
LABEL_11:
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_12:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::LocationGPSSessionStatistics_MountedStateData::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_MountedStateData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGPSSessionStatistics_MountedStateData::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_MountedStateData::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_MountedStateData::CopyFrom(awd::metrics::LocationGPSSessionStatistics_MountedStateData *this, const awd::metrics::LocationGPSSessionStatistics_MountedStateData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_MountedStateData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_MountedStateData::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_MountedStateData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_MovingStateData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_MovingStateData *awd::metrics::LocationGPSSessionStatistics_MovingStateData::LocationGPSSessionStatistics_MovingStateData(awd::metrics::LocationGPSSessionStatistics_MovingStateData *this, const awd::metrics::LocationGPSSessionStatistics_MovingStateData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D50010;
  *(this + 6) = 0;
  awd::metrics::LocationGPSSessionStatistics_MovingStateData::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_MovingStateData::MergeFrom(awd::metrics::LocationGPSSessionStatistics_MovingStateData *this, const awd::metrics::LocationGPSSessionStatistics_MovingStateData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      if (v5 >= 4)
      {
        awd::metrics::LocationGPSSessionStatistics_MovingStateData::MergeFrom();
      }

      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_296446A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_MovingStateData::~LocationGPSSessionStatistics_MovingStateData(awd::metrics::LocationGPSSessionStatistics_MovingStateData *this)
{
  *this = &unk_2A1D50010;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50010;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50010;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_MovingStateData::default_instance(awd::metrics::LocationGPSSessionStatistics_MovingStateData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_MovingStateData::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_MovingStateData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_MovingStateData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_MovingStateData::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_MovingStateData::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_MovingStateData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v14 = 0;
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v7 = v14;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 <= 3)
      {
        *(this + 6) |= 1u;
        *(this + 4) = v7;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v10 < v8 && *v10 == 16)
      {
        v9 = v10 + 1;
        *(a2 + 1) = v9;
LABEL_24:
        if (v9 >= v8 || (v11 = *v9, v11 < 0))
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
          v12 = v9 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 6) |= 2u;
        if (v12 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_24;
    }

LABEL_13:
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

uint64_t awd::metrics::LocationGPSSessionStatistics_MovingStateData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_MovingStateData::ByteSize(awd::metrics::LocationGPSSessionStatistics_MovingStateData *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = *(this + 4);
    if ((v4 & 0x80000000) == 0)
    {
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v3 = 11;
    if ((v2 & 2) != 0)
    {
LABEL_11:
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_12:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::LocationGPSSessionStatistics_MovingStateData::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_MovingStateData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGPSSessionStatistics_MovingStateData::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_MovingStateData::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_MovingStateData::CopyFrom(awd::metrics::LocationGPSSessionStatistics_MovingStateData *this, const awd::metrics::LocationGPSSessionStatistics_MovingStateData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_MovingStateData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_MovingStateData::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_MovingStateData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerStateData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationGPSSessionStatistics_PowerStateData *awd::metrics::LocationGPSSessionStatistics_PowerStateData::LocationGPSSessionStatistics_PowerStateData(awd::metrics::LocationGPSSessionStatistics_PowerStateData *this, const awd::metrics::LocationGPSSessionStatistics_PowerStateData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D50088;
  *(this + 6) = 0;
  awd::metrics::LocationGPSSessionStatistics_PowerStateData::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationGPSSessionStatistics_PowerStateData::MergeFrom(awd::metrics::LocationGPSSessionStatistics_PowerStateData *this, const awd::metrics::LocationGPSSessionStatistics_PowerStateData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      if (v5 >= 4)
      {
        awd::metrics::LocationGPSSessionStatistics_PowerStateData::MergeFrom();
      }

      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 6) |= 2u;
      *(this + 1) = v6;
    }
  }
}

void sub_2964470B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationGPSSessionStatistics_PowerStateData::~LocationGPSSessionStatistics_PowerStateData(awd::metrics::LocationGPSSessionStatistics_PowerStateData *this)
{
  *this = &unk_2A1D50088;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50088;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D50088;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerStateData::default_instance(awd::metrics::LocationGPSSessionStatistics_PowerStateData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationGPSSessionStatistics_PowerStateData::default_instance_;
  if (!awd::metrics::LocationGPSSessionStatistics_PowerStateData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationGPSSessionStatistics_PowerStateData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerStateData::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerStateData::MergePartialFromCodedStream(awd::metrics::LocationGPSSessionStatistics_PowerStateData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v14 = 0;
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v7 = v14;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 <= 3)
      {
        *(this + 6) |= 1u;
        *(this + 4) = v7;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v10 < v8 && *v10 == 16)
      {
        v9 = v10 + 1;
        *(a2 + 1) = v9;
LABEL_24:
        if (v9 >= v8 || (v11 = *v9, v11 < 0))
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
          v12 = v9 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 6) |= 2u;
        if (v12 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_24;
    }

LABEL_13:
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

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerStateData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 16), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 8);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerStateData::ByteSize(awd::metrics::LocationGPSSessionStatistics_PowerStateData *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if ((*(this + 24) & 1) == 0)
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v4 = *(this + 4);
    if ((v4 & 0x80000000) == 0)
    {
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_11;
    }

    v3 = 11;
    if ((v2 & 2) != 0)
    {
LABEL_11:
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

LABEL_12:
  *(this + 5) = v3;
  return v3;
}

void awd::metrics::LocationGPSSessionStatistics_PowerStateData::CheckTypeAndMergeFrom(awd::metrics::LocationGPSSessionStatistics_PowerStateData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationGPSSessionStatistics_PowerStateData::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationGPSSessionStatistics_PowerStateData::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationGPSSessionStatistics_PowerStateData::CopyFrom(awd::metrics::LocationGPSSessionStatistics_PowerStateData *this, const awd::metrics::LocationGPSSessionStatistics_PowerStateData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationGPSSessionStatistics_PowerStateData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationGPSSessionStatistics_PowerStateData::Swap(uint64_t this, awd::metrics::LocationGPSSessionStatistics_PowerStateData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t awd::metrics::LocationGPSSessionStatistics_ChecksumData::SharedCtor(uint64_t this)
{
  *(this + 8) = MEMORY[0x29EDC9758];
  *(this + 16) = 0;
  return this;
}