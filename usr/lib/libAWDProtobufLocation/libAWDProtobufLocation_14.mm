void awd::metrics::LocationMicroLocationModelState::CopyFrom(awd::metrics::LocationMicroLocationModelState *this, const awd::metrics::LocationMicroLocationModelState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMicroLocationModelState::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationMicroLocationModelState::Swap(uint64_t this, awd::metrics::LocationMicroLocationModelState *a2)
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
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v4;
    LODWORD(v4) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v4;
    LODWORD(v4) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v4;
    LODWORD(v4) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v4;
  }

  return this;
}

double awd::metrics::LocationMicroLocationClusteringStatistics::SharedCtor(awd::metrics::LocationMicroLocationClusteringStatistics *this)
{
  *(this + 1) = 0;
  *(this + 12) = -1;
  *(this + 21) = 0;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 76) = 0;
  *(this + 68) = 0;
  *(this + 60) = 0;
  *(this + 52) = 0;
  return result;
}

awd::metrics::LocationMicroLocationClusteringStatistics *awd::metrics::LocationMicroLocationClusteringStatistics::LocationMicroLocationClusteringStatistics(awd::metrics::LocationMicroLocationClusteringStatistics *this, const awd::metrics::LocationMicroLocationClusteringStatistics *a2)
{
  *this = &unk_2A1D52710;
  *(this + 1) = 0;
  *(this + 12) = -1;
  *(this + 21) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 52) = 0;
  *(this + 68) = 0;
  *(this + 60) = 0;
  *(this + 76) = 0;
  awd::metrics::LocationMicroLocationClusteringStatistics::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationMicroLocationClusteringStatistics::MergeFrom(awd::metrics::LocationMicroLocationClusteringStatistics *this, const awd::metrics::LocationMicroLocationClusteringStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(a2 + 21);
  if (!v4)
  {
    goto LABEL_46;
  }

  if (v4)
  {
    v5 = *(a2 + 1);
    *(this + 21) |= 1u;
    *(this + 1) = v5;
    v4 = *(a2 + 21);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 12);
    if ((v6 + 1) >= 3)
    {
      awd::metrics::LocationMicroLocationClusteringStatistics::MergeFrom();
    }

    *(this + 21) |= 2u;
    *(this + 12) = v6;
    v4 = *(a2 + 21);
  }

  if ((v4 & 4) != 0)
  {
    *(this + 21) |= 4u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      v8 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 16);
    }

    awd::metrics::LocationMicroLocationSignificanceMetric::MergeFrom(v7, v8);
    v4 = *(a2 + 21);
    if ((v4 & 8) == 0)
    {
LABEL_11:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_11;
  }

  *(this + 21) |= 8u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    v10 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 24);
  }

  awd::metrics::LocationMicroLocationSignificanceMetric::MergeFrom(v9, v10);
  v4 = *(a2 + 21);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_31:
    *(this + 21) |= 0x20u;
    v13 = *(this + 5);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 5);
    if (!v14)
    {
      v14 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 40);
    }

    awd::metrics::LocationMicroLocationSignificanceMetric::MergeFrom(v13, v14);
    v4 = *(a2 + 21);
    if ((v4 & 0x40) == 0)
    {
LABEL_14:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_26:
  *(this + 21) |= 0x10u;
  v11 = *(this + 4);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 4);
  if (!v12)
  {
    v12 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 32);
  }

  awd::metrics::LocationMicroLocationSignificanceMetric::MergeFrom(v11, v12);
  v4 = *(a2 + 21);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_13:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_36:
  *(this + 21) |= 0x40u;
  v15 = *(this + 7);
  if (!v15)
  {
    operator new();
  }

  v16 = *(a2 + 7);
  if (!v16)
  {
    v16 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 56);
  }

  awd::metrics::LocationMicroLocationSignificanceMetric::MergeFrom(v15, v16);
  v4 = *(a2 + 21);
  if ((v4 & 0x80) != 0)
  {
LABEL_41:
    *(this + 21) |= 0x80u;
    v17 = *(this + 8);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a2 + 8);
    if (!v18)
    {
      v18 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 64);
    }

    awd::metrics::LocationMicroLocationSignificanceMetric::MergeFrom(v17, v18);
    v4 = *(a2 + 21);
  }

LABEL_46:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      *(this + 21) |= 0x100u;
      v19 = *(this + 9);
      if (!v19)
      {
        operator new();
      }

      v20 = *(a2 + 9);
      if (!v20)
      {
        v20 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 72);
      }

      awd::metrics::LocationMicroLocationSignificanceMetric::MergeFrom(v19, v20);
      v4 = *(a2 + 21);
    }

    if ((v4 & 0x200) != 0)
    {
      v21 = *(a2 + 13);
      if (v21 >= 2)
      {
        awd::metrics::LocationMicroLocationClusteringStatistics::MergeFrom();
      }

      *(this + 21) |= 0x200u;
      *(this + 13) = v21;
    }
  }
}

void sub_29648803C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMicroLocationClusteringStatistics::~LocationMicroLocationClusteringStatistics(awd::metrics::LocationMicroLocationClusteringStatistics *this)
{
  *this = &unk_2A1D52710;
  awd::metrics::LocationMicroLocationClusteringStatistics::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52710;
  awd::metrics::LocationMicroLocationClusteringStatistics::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52710;
  awd::metrics::LocationMicroLocationClusteringStatistics::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::LocationMicroLocationClusteringStatistics::SharedDtor(void *this)
{
  if (awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ != this)
  {
    v1 = this;
    v2 = this[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[4];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[5];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[7];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[8];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    this = v1[9];
    if (this)
    {
      v8 = *(*this + 8);

      return v8();
    }
  }

  return this;
}

uint64_t awd::metrics::LocationMicroLocationClusteringStatistics::default_instance(awd::metrics::LocationMicroLocationClusteringStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_;
  if (!awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationMicroLocationClusteringStatistics::Clear(uint64_t this)
{
  v1 = *(this + 84);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 48) = -1;
    if ((v1 & 4) != 0)
    {
      v2 = *(this + 16);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
        v1 = *(this + 84);
      }
    }

    if ((v1 & 8) != 0)
    {
      v3 = *(this + 24);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v1 = *(this + 84);
      }
    }

    if ((v1 & 0x10) != 0)
    {
      v4 = *(this + 32);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v1 = *(this + 84);
      }
    }

    if ((v1 & 0x20) != 0)
    {
      v5 = *(this + 40);
      if (v5)
      {
        if (*(v5 + 36))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
        }

        *(v5 + 36) = 0;
        v1 = *(this + 84);
      }
    }

    if ((v1 & 0x40) != 0)
    {
      v6 = *(this + 56);
      if (v6)
      {
        if (*(v6 + 36))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 36) = 0;
        v1 = *(this + 84);
      }
    }

    if ((v1 & 0x80) != 0)
    {
      v7 = *(this + 64);
      if (v7)
      {
        if (*(v7 + 36))
        {
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          *(v7 + 24) = 0;
        }

        *(v7 + 36) = 0;
        v1 = *(this + 84);
      }
    }
  }

  if ((v1 & 0xFF00) != 0)
  {
    if ((v1 & 0x100) != 0)
    {
      v8 = *(this + 72);
      if (v8)
      {
        if (*(v8 + 36))
        {
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
          *(v8 + 24) = 0;
        }

        *(v8 + 36) = 0;
      }
    }

    *(this + 52) = 0;
  }

  *(this + 84) = 0;
  return this;
}

uint64_t awd::metrics::LocationMicroLocationClusteringStatistics::MergePartialFromCodedStream(awd::metrics::LocationMicroLocationClusteringStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 <= 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 7)
          {
            if (v6 == 6)
            {
              if (v7 == 2)
              {
                goto LABEL_100;
              }
            }

            else if (v6 == 7 && v7 == 2)
            {
              goto LABEL_114;
            }

            goto LABEL_40;
          }

          if (v6 == 8)
          {
            if (v7 == 2)
            {
              goto LABEL_128;
            }

            goto LABEL_40;
          }

          if (v6 != 9)
          {
            if (v6 == 10 && (TagFallback & 7) == 0)
            {
              v9 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_156;
            }

            goto LABEL_40;
          }

          if (v7 != 2)
          {
            goto LABEL_40;
          }

LABEL_142:
          *(this + 21) |= 0x100u;
          v61 = *(this + 9);
          if (!v61)
          {
            operator new();
          }

          v69 = 0;
          v62 = *(a2 + 1);
          if (v62 >= *(a2 + 2) || *v62 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v69))
            {
              return 0;
            }
          }

          else
          {
            v69 = *v62;
            *(a2 + 1) = v62 + 1;
          }

          v63 = *(a2 + 14);
          v64 = *(a2 + 15);
          *(a2 + 14) = v63 + 1;
          if (v63 >= v64)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationMicroLocationSignificanceMetric::MergePartialFromCodedStream(v61, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v65 = *(a2 + 14);
          v23 = __OFSUB__(v65, 1);
          v66 = v65 - 1;
          if (v66 < 0 == v23)
          {
            *(a2 + 14) = v66;
          }

          v67 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v67 < v8 && *v67 == 80)
          {
            v9 = v67 + 1;
            *(a2 + 1) = v9;
LABEL_156:
            v69 = 0;
            if (v9 >= v8 || (v68 = *v9, (v68 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v69);
              if (!result)
              {
                return result;
              }

              v68 = v69;
            }

            else
            {
              *(a2 + 1) = v9 + 1;
            }

            if (v68 <= 1)
            {
              *(this + 21) |= 0x200u;
              *(this + 13) = v68;
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

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_40;
          }

          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_48;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v12 >= v10 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 21) |= 1u;
        if (v14 < v10 && *v14 == 16)
        {
          v11 = v14 + 1;
          *(a2 + 1) = v11;
LABEL_48:
          v69 = 0;
          if (v11 >= v10 || (v16 = *v11, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v69);
            if (!result)
            {
              return result;
            }

            v16 = v69;
          }

          else
          {
            *(a2 + 1) = v11 + 1;
          }

          if (v16 + 1 <= 2)
          {
            *(this + 21) |= 2u;
            *(this + 12) = v16;
          }

          v17 = *(a2 + 1);
          if (v17 < *(a2 + 2) && *v17 == 26)
          {
            *(a2 + 1) = v17 + 1;
LABEL_58:
            *(this + 21) |= 4u;
            v18 = *(this + 2);
            if (!v18)
            {
              operator new();
            }

            v69 = 0;
            v19 = *(a2 + 1);
            if (v19 >= *(a2 + 2) || *v19 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v69))
              {
                return 0;
              }
            }

            else
            {
              v69 = *v19;
              *(a2 + 1) = v19 + 1;
            }

            v20 = *(a2 + 14);
            v21 = *(a2 + 15);
            *(a2 + 14) = v20 + 1;
            if (v20 >= v21)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!awd::metrics::LocationMicroLocationSignificanceMetric::MergePartialFromCodedStream(v18, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v22 = *(a2 + 14);
            v23 = __OFSUB__(v22, 1);
            v24 = v22 - 1;
            if (v24 < 0 == v23)
            {
              *(a2 + 14) = v24;
            }

            v25 = *(a2 + 1);
            if (v25 < *(a2 + 2) && *v25 == 34)
            {
              *(a2 + 1) = v25 + 1;
              goto LABEL_72;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if (v7 != 2)
        {
          goto LABEL_40;
        }

        goto LABEL_58;
      }

      if (v6 != 4)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_40;
      }

LABEL_72:
      *(this + 21) |= 8u;
      v26 = *(this + 3);
      if (!v26)
      {
        operator new();
      }

      v69 = 0;
      v27 = *(a2 + 1);
      if (v27 >= *(a2 + 2) || *v27 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v69))
        {
          return 0;
        }
      }

      else
      {
        v69 = *v27;
        *(a2 + 1) = v27 + 1;
      }

      v28 = *(a2 + 14);
      v29 = *(a2 + 15);
      *(a2 + 14) = v28 + 1;
      if (v28 >= v29)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!awd::metrics::LocationMicroLocationSignificanceMetric::MergePartialFromCodedStream(v26, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v30 = *(a2 + 14);
      v23 = __OFSUB__(v30, 1);
      v31 = v30 - 1;
      if (v31 < 0 == v23)
      {
        *(a2 + 14) = v31;
      }

      v32 = *(a2 + 1);
      if (v32 < *(a2 + 2) && *v32 == 42)
      {
        *(a2 + 1) = v32 + 1;
LABEL_86:
        *(this + 21) |= 0x10u;
        v33 = *(this + 4);
        if (!v33)
        {
          operator new();
        }

        v69 = 0;
        v34 = *(a2 + 1);
        if (v34 >= *(a2 + 2) || *v34 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v69))
          {
            return 0;
          }
        }

        else
        {
          v69 = *v34;
          *(a2 + 1) = v34 + 1;
        }

        v35 = *(a2 + 14);
        v36 = *(a2 + 15);
        *(a2 + 14) = v35 + 1;
        if (v35 >= v36)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationMicroLocationSignificanceMetric::MergePartialFromCodedStream(v33, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v37 = *(a2 + 14);
        v23 = __OFSUB__(v37, 1);
        v38 = v37 - 1;
        if (v38 < 0 == v23)
        {
          *(a2 + 14) = v38;
        }

        v39 = *(a2 + 1);
        if (v39 < *(a2 + 2) && *v39 == 50)
        {
          *(a2 + 1) = v39 + 1;
LABEL_100:
          *(this + 21) |= 0x20u;
          v40 = *(this + 5);
          if (!v40)
          {
            operator new();
          }

          v69 = 0;
          v41 = *(a2 + 1);
          if (v41 >= *(a2 + 2) || *v41 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v69))
            {
              return 0;
            }
          }

          else
          {
            v69 = *v41;
            *(a2 + 1) = v41 + 1;
          }

          v42 = *(a2 + 14);
          v43 = *(a2 + 15);
          *(a2 + 14) = v42 + 1;
          if (v42 >= v43)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationMicroLocationSignificanceMetric::MergePartialFromCodedStream(v40, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v44 = *(a2 + 14);
          v23 = __OFSUB__(v44, 1);
          v45 = v44 - 1;
          if (v45 < 0 == v23)
          {
            *(a2 + 14) = v45;
          }

          v46 = *(a2 + 1);
          if (v46 < *(a2 + 2) && *v46 == 58)
          {
            *(a2 + 1) = v46 + 1;
LABEL_114:
            *(this + 21) |= 0x40u;
            v47 = *(this + 7);
            if (!v47)
            {
              operator new();
            }

            v69 = 0;
            v48 = *(a2 + 1);
            if (v48 >= *(a2 + 2) || *v48 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v69))
              {
                return 0;
              }
            }

            else
            {
              v69 = *v48;
              *(a2 + 1) = v48 + 1;
            }

            v49 = *(a2 + 14);
            v50 = *(a2 + 15);
            *(a2 + 14) = v49 + 1;
            if (v49 >= v50)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!awd::metrics::LocationMicroLocationSignificanceMetric::MergePartialFromCodedStream(v47, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v51 = *(a2 + 14);
            v23 = __OFSUB__(v51, 1);
            v52 = v51 - 1;
            if (v52 < 0 == v23)
            {
              *(a2 + 14) = v52;
            }

            v53 = *(a2 + 1);
            if (v53 < *(a2 + 2) && *v53 == 66)
            {
              *(a2 + 1) = v53 + 1;
LABEL_128:
              *(this + 21) |= 0x80u;
              v54 = *(this + 8);
              if (!v54)
              {
                operator new();
              }

              v69 = 0;
              v55 = *(a2 + 1);
              if (v55 >= *(a2 + 2) || *v55 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v69))
                {
                  return 0;
                }
              }

              else
              {
                v69 = *v55;
                *(a2 + 1) = v55 + 1;
              }

              v56 = *(a2 + 14);
              v57 = *(a2 + 15);
              *(a2 + 14) = v56 + 1;
              if (v56 >= v57)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!awd::metrics::LocationMicroLocationSignificanceMetric::MergePartialFromCodedStream(v54, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v58 = *(a2 + 14);
              v23 = __OFSUB__(v58, 1);
              v59 = v58 - 1;
              if (v59 < 0 == v23)
              {
                *(a2 + 14) = v59;
              }

              v60 = *(a2 + 1);
              if (v60 < *(a2 + 2) && *v60 == 74)
              {
                *(a2 + 1) = v60 + 1;
                goto LABEL_142;
              }
            }
          }
        }
      }
    }

    if (v6 == 5 && v7 == 2)
    {
      goto LABEL_86;
    }

LABEL_40:
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

uint64_t awd::metrics::LocationMicroLocationClusteringStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 84);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 84);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 48), a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_14:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_17:
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v8, a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_20:
  v9 = *(v5 + 32);
  if (!v9)
  {
    v9 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v9, a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_23:
  v10 = *(v5 + 40);
  if (!v10)
  {
    v10 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v10, a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_26:
  v11 = *(v5 + 56);
  if (!v11)
  {
    v11 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v11, a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_29:
  v12 = *(v5 + 64);
  if (!v12)
  {
    v12 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v12, a2, a4);
  v6 = *(v5 + 84);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_35;
  }

LABEL_32:
  v13 = *(v5 + 72);
  if (!v13)
  {
    v13 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v13, a2, a4);
  if ((*(v5 + 84) & 0x200) != 0)
  {
LABEL_35:
    v14 = *(v5 + 52);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, v14, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationMicroLocationClusteringStatistics::ByteSize(awd::metrics::LocationMicroLocationClusteringStatistics *this)
{
  v2 = *(this + 21);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_56;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 21);
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v4 = *(this + 12);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 11;
  }

  else if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 21);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_13:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      v6 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 16);
    }

    v7 = awd::metrics::LocationMicroLocationSignificanceMetric::ByteSize(v6);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    }

    else
    {
      v9 = 1;
    }

    v3 = (v3 + v8 + v9 + 1);
    v2 = *(this + 21);
    if ((v2 & 8) == 0)
    {
LABEL_15:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_15;
  }

  v10 = *(this + 3);
  if (!v10)
  {
    v10 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 24);
  }

  v11 = awd::metrics::LocationMicroLocationSignificanceMetric::ByteSize(v10);
  v12 = v11;
  if (v11 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
  }

  else
  {
    v13 = 1;
  }

  v3 = (v3 + v12 + v13 + 1);
  v2 = *(this + 21);
  if ((v2 & 0x10) == 0)
  {
LABEL_16:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_32:
  v14 = *(this + 4);
  if (!v14)
  {
    v14 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 32);
  }

  v15 = awd::metrics::LocationMicroLocationSignificanceMetric::ByteSize(v14);
  v16 = v15;
  if (v15 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
  }

  else
  {
    v17 = 1;
  }

  v3 = (v3 + v16 + v17 + 1);
  v2 = *(this + 21);
  if ((v2 & 0x20) == 0)
  {
LABEL_17:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_38:
  v18 = *(this + 5);
  if (!v18)
  {
    v18 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 40);
  }

  v19 = awd::metrics::LocationMicroLocationSignificanceMetric::ByteSize(v18);
  v20 = v19;
  if (v19 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
  }

  else
  {
    v21 = 1;
  }

  v3 = (v3 + v20 + v21 + 1);
  v2 = *(this + 21);
  if ((v2 & 0x40) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_50;
  }

LABEL_44:
  v22 = *(this + 7);
  if (!v22)
  {
    v22 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 56);
  }

  v23 = awd::metrics::LocationMicroLocationSignificanceMetric::ByteSize(v22);
  v24 = v23;
  if (v23 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
  }

  else
  {
    v25 = 1;
  }

  v3 = (v3 + v24 + v25 + 1);
  v2 = *(this + 21);
  if ((v2 & 0x80) != 0)
  {
LABEL_50:
    v26 = *(this + 8);
    if (!v26)
    {
      v26 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 64);
    }

    v27 = awd::metrics::LocationMicroLocationSignificanceMetric::ByteSize(v26);
    v28 = v27;
    if (v27 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
    }

    else
    {
      v29 = 1;
    }

    v3 = (v3 + v28 + v29 + 1);
    v2 = *(this + 21);
  }

LABEL_56:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v30 = *(this + 9);
      if (!v30)
      {
        v30 = *(awd::metrics::LocationMicroLocationClusteringStatistics::default_instance_ + 72);
      }

      v31 = awd::metrics::LocationMicroLocationSignificanceMetric::ByteSize(v30);
      v32 = v31;
      if (v31 >= 0x80)
      {
        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
      }

      else
      {
        v33 = 1;
      }

      v3 = (v3 + v32 + v33 + 1);
      v2 = *(this + 21);
    }

    if ((v2 & 0x200) != 0)
    {
      v34 = *(this + 13);
      if ((v34 & 0x80000000) != 0)
      {
        v35 = 11;
      }

      else if (v34 >= 0x80)
      {
        v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 1;
      }

      else
      {
        v35 = 2;
      }

      v3 = (v35 + v3);
    }
  }

  *(this + 20) = v3;
  return v3;
}

void awd::metrics::LocationMicroLocationClusteringStatistics::CheckTypeAndMergeFrom(awd::metrics::LocationMicroLocationClusteringStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationMicroLocationClusteringStatistics::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMicroLocationClusteringStatistics::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMicroLocationClusteringStatistics::CopyFrom(awd::metrics::LocationMicroLocationClusteringStatistics *this, const awd::metrics::LocationMicroLocationClusteringStatistics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMicroLocationClusteringStatistics::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationMicroLocationClusteringStatistics::Swap(uint64_t this, awd::metrics::LocationMicroLocationClusteringStatistics *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
    v3 = *(this + 8);
    v4 = *(this + 16);
    v5 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v5;
    *(a2 + 1) = v3;
    *(a2 + 2) = v4;
    v6 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v6;
    v7 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v7;
    v8 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v8;
    v9 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v9;
    v10 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v10;
    v11 = *(this + 72);
    *(this + 72) = *(a2 + 9);
    *(a2 + 9) = v11;
    LODWORD(v11) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v11;
    LODWORD(v11) = *(this + 84);
    *(this + 84) = *(a2 + 21);
    *(a2 + 21) = v11;
    LODWORD(v11) = *(this + 80);
    *(this + 80) = *(a2 + 20);
    *(a2 + 20) = v11;
  }

  return this;
}

uint64_t awd::metrics::LocationMicroLocationLearningState::SharedCtor(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0xFFFFFFFFLL;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::LocationMicroLocationLearningState *awd::metrics::LocationMicroLocationLearningState::LocationMicroLocationLearningState(awd::metrics::LocationMicroLocationLearningState *this, const awd::metrics::LocationMicroLocationLearningState *a2)
{
  *this = &unk_2A1D52788;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0xFFFFFFFFLL;
  *(this + 10) = 0;
  *(this + 2) = 0;
  awd::metrics::LocationMicroLocationLearningState::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationMicroLocationLearningState::MergeFrom(awd::metrics::LocationMicroLocationLearningState *this, const awd::metrics::LocationMicroLocationLearningState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v5 = *(a2 + 1);
      *(this + 10) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 10);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 8);
      if ((v6 + 1) >= 3)
      {
        awd::metrics::LocationMicroLocationLearningState::MergeFrom();
      }

      *(this + 10) |= 2u;
      *(this + 8) = v6;
      v4 = *(a2 + 10);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 2);
      *(this + 10) |= 4u;
      *(this + 2) = v7;
      v4 = *(a2 + 10);
    }

    if ((v4 & 8) != 0)
    {
      v8 = *(a2 + 3);
      *(this + 10) |= 8u;
      *(this + 3) = v8;
    }
  }
}

void sub_2964896A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMicroLocationLearningState::~LocationMicroLocationLearningState(awd::metrics::LocationMicroLocationLearningState *this)
{
  *this = &unk_2A1D52788;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52788;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52788;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationMicroLocationLearningState::default_instance(awd::metrics::LocationMicroLocationLearningState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationMicroLocationLearningState::default_instance_;
  if (!awd::metrics::LocationMicroLocationLearningState::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationMicroLocationLearningState::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationMicroLocationLearningState::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 32) = -1;
    *(this + 24) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::LocationMicroLocationLearningState::MergePartialFromCodedStream(awd::metrics::LocationMicroLocationLearningState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_39;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_47;
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
      v7 = *(a2 + 2);
      if (v11 >= v7 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v12;
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 10) |= 1u;
      if (v13 < v7 && *v13 == 16)
      {
        v8 = v13 + 1;
        *(a2 + 1) = v8;
LABEL_29:
        v22 = 0;
        if (v8 >= v7 || (v15 = *v8, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
          if (!result)
          {
            return result;
          }

          v15 = v22;
        }

        else
        {
          *(a2 + 1) = v8 + 1;
        }

        if (v15 + 1 <= 2)
        {
          *(this + 10) |= 2u;
          *(this + 8) = v15;
        }

        v16 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v16 < v9 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_39:
          if (v14 >= v9 || (v17 = *v14, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v17;
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 10) |= 4u;
          if (v18 < v9 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_47:
            if (v10 >= v9 || (v19 = *v10, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v20 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v19;
              v20 = v10 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 10) |= 8u;
            if (v20 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
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

uint64_t awd::metrics::LocationMicroLocationLearningState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
      if ((*(v5 + 40) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 32), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, v7, a2, a4);
}

uint64_t awd::metrics::LocationMicroLocationLearningState::ByteSize(awd::metrics::LocationMicroLocationLearningState *this)
{
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if ((*(this + 40) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_7:
    v4 = *(this + 8);
    if ((v4 & 0x80000000) != 0)
    {
      v5 = 11;
    }

    else if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 10);
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
    goto LABEL_13;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 10);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_13:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    if ((*(this + 10) & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((v2 & 8) != 0)
  {
LABEL_15:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  }

LABEL_16:
  *(this + 9) = v3;
  return v3;
}

void awd::metrics::LocationMicroLocationLearningState::CheckTypeAndMergeFrom(awd::metrics::LocationMicroLocationLearningState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationMicroLocationLearningState::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMicroLocationLearningState::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMicroLocationLearningState::CopyFrom(awd::metrics::LocationMicroLocationLearningState *this, const awd::metrics::LocationMicroLocationLearningState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMicroLocationLearningState::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationMicroLocationLearningState::Swap(uint64_t this, awd::metrics::LocationMicroLocationLearningState *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    LODWORD(v4) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v4;
    LODWORD(v4) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v4;
  }

  return this;
}

uint64_t awd::metrics::LocationMicroLocationAnalyticsState::SharedCtor(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0xFFFFFFFFLL;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::LocationMicroLocationAnalyticsState *awd::metrics::LocationMicroLocationAnalyticsState::LocationMicroLocationAnalyticsState(awd::metrics::LocationMicroLocationAnalyticsState *this, const awd::metrics::LocationMicroLocationAnalyticsState *a2)
{
  *this = &unk_2A1D52800;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0xFFFFFFFFLL;
  *(this + 10) = 0;
  *(this + 2) = 0;
  awd::metrics::LocationMicroLocationAnalyticsState::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationMicroLocationAnalyticsState::MergeFrom(awd::metrics::LocationMicroLocationAnalyticsState *this, const awd::metrics::LocationMicroLocationAnalyticsState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v5 = *(a2 + 1);
      *(this + 10) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 10);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 8);
      if ((v6 + 1) >= 3)
      {
        awd::metrics::LocationMicroLocationAnalyticsState::MergeFrom();
      }

      *(this + 10) |= 2u;
      *(this + 8) = v6;
      v4 = *(a2 + 10);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 2);
      *(this + 10) |= 4u;
      *(this + 2) = v7;
      v4 = *(a2 + 10);
    }

    if ((v4 & 8) != 0)
    {
      v8 = *(a2 + 3);
      *(this + 10) |= 8u;
      *(this + 3) = v8;
    }
  }
}

void sub_296489F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMicroLocationAnalyticsState::~LocationMicroLocationAnalyticsState(awd::metrics::LocationMicroLocationAnalyticsState *this)
{
  *this = &unk_2A1D52800;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52800;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52800;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationMicroLocationAnalyticsState::default_instance(awd::metrics::LocationMicroLocationAnalyticsState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationMicroLocationAnalyticsState::default_instance_;
  if (!awd::metrics::LocationMicroLocationAnalyticsState::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationMicroLocationAnalyticsState::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationMicroLocationAnalyticsState::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 32) = -1;
    *(this + 24) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::LocationMicroLocationAnalyticsState::MergePartialFromCodedStream(awd::metrics::LocationMicroLocationAnalyticsState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_39;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_47;
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
      v7 = *(a2 + 2);
      if (v11 >= v7 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v12;
        v13 = v11 + 1;
        *(a2 + 1) = v13;
      }

      *(this + 10) |= 1u;
      if (v13 < v7 && *v13 == 16)
      {
        v8 = v13 + 1;
        *(a2 + 1) = v8;
LABEL_29:
        v22 = 0;
        if (v8 >= v7 || (v15 = *v8, (v15 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
          if (!result)
          {
            return result;
          }

          v15 = v22;
        }

        else
        {
          *(a2 + 1) = v8 + 1;
        }

        if (v15 + 1 <= 2)
        {
          *(this + 10) |= 2u;
          *(this + 8) = v15;
        }

        v16 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v16 < v9 && *v16 == 24)
        {
          v14 = v16 + 1;
          *(a2 + 1) = v14;
LABEL_39:
          if (v14 >= v9 || (v17 = *v14, v17 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v17;
            v18 = v14 + 1;
            *(a2 + 1) = v18;
          }

          *(this + 10) |= 4u;
          if (v18 < v9 && *v18 == 32)
          {
            v10 = v18 + 1;
            *(a2 + 1) = v10;
LABEL_47:
            if (v10 >= v9 || (v19 = *v10, v19 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v20 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v19;
              v20 = v10 + 1;
              *(a2 + 1) = v20;
            }

            *(this + 10) |= 8u;
            if (v20 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
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

uint64_t awd::metrics::LocationMicroLocationAnalyticsState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
      if ((*(v5 + 40) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 32), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, v7, a2, a4);
}

uint64_t awd::metrics::LocationMicroLocationAnalyticsState::ByteSize(awd::metrics::LocationMicroLocationAnalyticsState *this)
{
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if ((*(this + 40) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_7:
    v4 = *(this + 8);
    if ((v4 & 0x80000000) != 0)
    {
      v5 = 11;
    }

    else if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 10);
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
    goto LABEL_13;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 10);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_13:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    if ((*(this + 10) & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((v2 & 8) != 0)
  {
LABEL_15:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  }

LABEL_16:
  *(this + 9) = v3;
  return v3;
}

void awd::metrics::LocationMicroLocationAnalyticsState::CheckTypeAndMergeFrom(awd::metrics::LocationMicroLocationAnalyticsState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationMicroLocationAnalyticsState::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMicroLocationAnalyticsState::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMicroLocationAnalyticsState::CopyFrom(awd::metrics::LocationMicroLocationAnalyticsState *this, const awd::metrics::LocationMicroLocationAnalyticsState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMicroLocationAnalyticsState::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationMicroLocationAnalyticsState::Swap(uint64_t this, awd::metrics::LocationMicroLocationAnalyticsState *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    LODWORD(v4) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v4;
    LODWORD(v4) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v4;
  }

  return this;
}

void *awd::metrics::LocationMicroLocationStatistics::SharedCtor(void *this)
{
  this[30] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

awd::metrics::LocationMicroLocationStatistics *awd::metrics::LocationMicroLocationStatistics::LocationMicroLocationStatistics(awd::metrics::LocationMicroLocationStatistics *this, const awd::metrics::LocationMicroLocationStatistics *a2)
{
  *this = &unk_2A1D52878;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 6) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 9) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 12) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 15) = 0;
  *(this + 19) = 0;
  *(this + 18) = 0;
  *(this + 40) = 0;
  *(this + 46) = 0;
  *(this + 21) = 0;
  *(this + 24) = 0u;
  *(this + 24) = 0;
  *(this + 22) = 0;
  *(this + 25) = 0;
  *(this + 52) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 30) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0u;
  awd::metrics::LocationMicroLocationStatistics::MergeFrom(this, a2);
  return this;
}

void sub_29648A754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventClusteringStatistics>::TypeHandler>(v16);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationClusteringByModel>::TypeHandler>(v19);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationClusteringStatistics>::TypeHandler>(v18);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationAnalyticsState>::TypeHandler>(v17);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationLearningState>::TypeHandler>(v15);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationModelState>::TypeHandler>(v14);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationLocalizationStatistics>::TypeHandler>(v12);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationUserEventStatistics>::TypeHandler>(v11);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationMeasurementStatistics>::TypeHandler>(v13);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v10);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMicroLocationStatistics::MergeFrom(awd::metrics::LocationMicroLocationStatistics *this, const awd::metrics::LocationMicroLocationStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v80);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v80);
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
      awd::metrics::LocationMicroLocationMeasurementStatistics::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 8);
    }

    while (v7 < v6);
  }

  v12 = *(this + 14);
  v13 = *(a2 + 14);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
  LODWORD(v14) = *(a2 + 14);
  if (v14 >= 1)
  {
    v15 = 0;
    do
    {
      if (v15 >= v14)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v80);
      }

      v16 = *(*(a2 + 6) + 8 * v15);
      v17 = *(this + 15);
      v18 = *(this + 14);
      if (v18 >= v17)
      {
        if (v17 == *(this + 16))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
          v17 = *(this + 15);
        }

        *(this + 15) = v17 + 1;
        operator new();
      }

      v19 = *(this + 6);
      *(this + 14) = v18 + 1;
      awd::metrics::LocationMicroLocationUserEventStatistics::MergeFrom(*(v19 + 8 * v18), v16);
      ++v15;
      v14 = *(a2 + 14);
    }

    while (v15 < v14);
  }

  v20 = *(this + 20);
  v21 = *(a2 + 20);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72));
  LODWORD(v22) = *(a2 + 20);
  if (v22 >= 1)
  {
    v23 = 0;
    do
    {
      if (v23 >= v22)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v80);
      }

      v24 = *(*(a2 + 9) + 8 * v23);
      v25 = *(this + 21);
      v26 = *(this + 20);
      if (v26 >= v25)
      {
        if (v25 == *(this + 22))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72));
          v25 = *(this + 21);
        }

        *(this + 21) = v25 + 1;
        operator new();
      }

      v27 = *(this + 9);
      *(this + 20) = v26 + 1;
      awd::metrics::LocationMicroLocationLocalizationStatistics::MergeFrom(*(v27 + 8 * v26), v24);
      ++v23;
      v22 = *(a2 + 20);
    }

    while (v23 < v22);
  }

  v28 = *(this + 26);
  v29 = *(a2 + 26);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96));
  LODWORD(v30) = *(a2 + 26);
  if (v30 >= 1)
  {
    v31 = 0;
    do
    {
      if (v31 >= v30)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v80);
      }

      v32 = *(*(a2 + 12) + 8 * v31);
      v33 = *(this + 27);
      v34 = *(this + 26);
      if (v34 >= v33)
      {
        if (v33 == *(this + 28))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96));
          v33 = *(this + 27);
        }

        *(this + 27) = v33 + 1;
        operator new();
      }

      v35 = *(this + 12);
      *(this + 26) = v34 + 1;
      awd::metrics::LocationMicroLocationModelState::MergeFrom(*(v35 + 8 * v34), v32);
      ++v31;
      v30 = *(a2 + 26);
    }

    while (v31 < v30);
  }

  v36 = *(this + 32);
  v37 = *(a2 + 32);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 120));
  LODWORD(v38) = *(a2 + 32);
  if (v38 >= 1)
  {
    v39 = 0;
    do
    {
      if (v39 >= v38)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v80);
      }

      v40 = *(*(a2 + 15) + 8 * v39);
      v41 = *(this + 33);
      v42 = *(this + 32);
      if (v42 >= v41)
      {
        if (v41 == *(this + 34))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 120));
          v41 = *(this + 33);
        }

        *(this + 33) = v41 + 1;
        operator new();
      }

      v43 = *(this + 15);
      *(this + 32) = v42 + 1;
      awd::metrics::LocationMicroLocationLearningState::MergeFrom(*(v43 + 8 * v42), v40);
      ++v39;
      v38 = *(a2 + 32);
    }

    while (v39 < v38);
  }

  v44 = *(this + 38);
  v45 = *(a2 + 38);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 144));
  LODWORD(v46) = *(a2 + 38);
  if (v46 >= 1)
  {
    v47 = 0;
    do
    {
      if (v47 >= v46)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v80);
      }

      v48 = *(*(a2 + 18) + 8 * v47);
      v49 = *(this + 39);
      v50 = *(this + 38);
      if (v50 >= v49)
      {
        if (v49 == *(this + 40))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 144));
          v49 = *(this + 39);
        }

        *(this + 39) = v49 + 1;
        operator new();
      }

      v51 = *(this + 18);
      *(this + 38) = v50 + 1;
      awd::metrics::LocationMicroLocationAnalyticsState::MergeFrom(*(v51 + 8 * v50), v48);
      ++v47;
      v46 = *(a2 + 38);
    }

    while (v47 < v46);
  }

  v52 = *(this + 44);
  v53 = *(a2 + 44);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 168));
  LODWORD(v54) = *(a2 + 44);
  if (v54 >= 1)
  {
    v55 = 0;
    do
    {
      if (v55 >= v54)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v80);
      }

      v56 = *(*(a2 + 21) + 8 * v55);
      v57 = *(this + 45);
      v58 = *(this + 44);
      if (v58 >= v57)
      {
        if (v57 == *(this + 46))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 168));
          v57 = *(this + 45);
        }

        *(this + 45) = v57 + 1;
        operator new();
      }

      v59 = *(this + 21);
      *(this + 44) = v58 + 1;
      awd::metrics::LocationMicroLocationClusteringStatistics::MergeFrom(*(v59 + 8 * v58), v56);
      ++v55;
      v54 = *(a2 + 44);
    }

    while (v55 < v54);
  }

  v60 = *(this + 50);
  v61 = *(a2 + 50);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 192));
  LODWORD(v62) = *(a2 + 50);
  if (v62 >= 1)
  {
    v63 = 0;
    do
    {
      if (v63 >= v62)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v80);
      }

      v64 = *(*(a2 + 24) + 8 * v63);
      v65 = *(this + 51);
      v66 = *(this + 50);
      if (v66 >= v65)
      {
        if (v65 == *(this + 52))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 192));
          v65 = *(this + 51);
        }

        *(this + 51) = v65 + 1;
        operator new();
      }

      v67 = *(this + 24);
      *(this + 50) = v66 + 1;
      awd::metrics::LocationMicroLocationClusteringByModel::MergeFrom(*(v67 + 8 * v66), v64);
      ++v63;
      v62 = *(a2 + 50);
    }

    while (v63 < v62);
  }

  v68 = *(this + 56);
  v69 = *(a2 + 56);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 216));
  LODWORD(v70) = *(a2 + 56);
  if (v70 >= 1)
  {
    v71 = 0;
    do
    {
      if (v71 >= v70)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v80);
      }

      v72 = *(*(a2 + 27) + 8 * v71);
      v73 = *(this + 57);
      v74 = *(this + 56);
      if (v74 >= v73)
      {
        if (v73 == *(this + 58))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 216));
          v73 = *(this + 57);
        }

        *(this + 57) = v73 + 1;
        operator new();
      }

      v75 = *(this + 27);
      *(this + 56) = v74 + 1;
      awd::metrics::LocationMicroLocationEventClusteringStatistics::MergeFrom(*(v75 + 8 * v74), v72);
      ++v71;
      v70 = *(a2 + 56);
    }

    while (v71 < v70);
  }

  LOBYTE(v76) = *(a2 + 244);
  if (v76)
  {
    if (*(a2 + 244))
    {
      v77 = *(a2 + 1);
      *(this + 61) |= 1u;
      *(this + 1) = v77;
      v76 = *(a2 + 61);
    }

    if ((v76 & 2) != 0)
    {
      *(this + 61) |= 2u;
      v78 = *(this + 2);
      if (!v78)
      {
        operator new();
      }

      v79 = *(a2 + 2);
      if (!v79)
      {
        v79 = *(awd::metrics::LocationMicroLocationStatistics::default_instance_ + 16);
      }

      awd::metrics::LocationMicroLocationMetaData::MergeFrom(v78, v79);
    }
  }
}

void sub_29648B3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationMicroLocationStatistics::~LocationMicroLocationStatistics(awd::metrics::LocationMicroLocationStatistics *this)
{
  *this = &unk_2A1D52878;
  if (awd::metrics::LocationMicroLocationStatistics::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventClusteringStatistics>::TypeHandler>(this + 27);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationClusteringByModel>::TypeHandler>(this + 24);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationClusteringStatistics>::TypeHandler>(this + 21);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationAnalyticsState>::TypeHandler>(this + 18);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationLearningState>::TypeHandler>(this + 15);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationModelState>::TypeHandler>(this + 12);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationLocalizationStatistics>::TypeHandler>(this + 9);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationUserEventStatistics>::TypeHandler>(this + 6);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationMeasurementStatistics>::TypeHandler>(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationMicroLocationStatistics::~LocationMicroLocationStatistics(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::LocationMicroLocationStatistics::SharedDtor(void *this)
{
  if (awd::metrics::LocationMicroLocationStatistics::default_instance_ != this)
  {
    this = this[2];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t awd::metrics::LocationMicroLocationStatistics::default_instance(awd::metrics::LocationMicroLocationStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationMicroLocationStatistics::default_instance_;
  if (!awd::metrics::LocationMicroLocationStatistics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_MicroLocation_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationMicroLocationStatistics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationMicroLocationStatistics::Clear(awd::metrics::LocationMicroLocationStatistics *this)
{
  v2 = *(this + 244);
  if (v2)
  {
    *(this + 1) = 0;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 2);
      if (v3)
      {
        awd::metrics::LocationMicroLocationMetaData::Clear(v3);
      }
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationMeasurementStatistics>::TypeHandler>(this + 24);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationUserEventStatistics>::TypeHandler>(this + 48);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationLocalizationStatistics>::TypeHandler>(this + 72);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationModelState>::TypeHandler>(this + 96);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationLearningState>::TypeHandler>(this + 120);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationAnalyticsState>::TypeHandler>(this + 144);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationClusteringStatistics>::TypeHandler>(this + 168);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationClusteringByModel>::TypeHandler>(this + 192);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventClusteringStatistics>::TypeHandler>(this + 216);
  *(this + 61) = 0;
  return result;
}

uint64_t awd::metrics::LocationMicroLocationStatistics::MergePartialFromCodedStream(awd::metrics::LocationMicroLocationStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_1:
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
          if (TagFallback >> 3 <= 5)
          {
            break;
          }

          if (TagFallback >> 3 > 8)
          {
            if (v6 == 9)
            {
              if (v7 == 2)
              {
                goto LABEL_173;
              }

              goto LABEL_43;
            }

            if (v6 == 10)
            {
              if (v7 != 2)
              {
                goto LABEL_43;
              }

              while (2)
              {
                v92 = *(this + 51);
                v93 = *(this + 50);
                if (v93 >= v92)
                {
                  if (v92 == *(this + 52))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 192));
                    v92 = *(this + 51);
                  }

                  *(this + 51) = v92 + 1;
                  operator new();
                }

                v94 = *(this + 24);
                *(this + 50) = v93 + 1;
                v95 = *(v94 + 8 * v93);
                v112 = 0;
                v96 = *(a2 + 1);
                if (v96 >= *(a2 + 2) || *v96 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112))
                  {
                    return 0;
                  }
                }

                else
                {
                  v112 = *v96;
                  *(a2 + 1) = v96 + 1;
                }

                v97 = *(a2 + 14);
                v98 = *(a2 + 15);
                *(a2 + 14) = v97 + 1;
                if (v97 >= v98)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                if (!awd::metrics::LocationMicroLocationClusteringByModel::MergePartialFromCodedStream(v95, a2) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v99 = *(a2 + 14);
                v19 = __OFSUB__(v99, 1);
                v100 = v99 - 1;
                if (v100 < 0 == v19)
                {
                  *(a2 + 14) = v100;
                }

                v21 = *(a2 + 1);
                if (v21 < *(a2 + 2))
                {
                  v101 = *v21;
                  if (v101 == 82)
                  {
LABEL_190:
                    *(a2 + 1) = v21 + 1;
                    continue;
                  }

                  if (v101 == 90)
                  {
                    goto LABEL_208;
                  }
                }

                break;
              }
            }

            else
            {
              if (v6 != 11 || v7 != 2)
              {
                goto LABEL_43;
              }

              while (2)
              {
                v102 = *(this + 57);
                v103 = *(this + 56);
                if (v103 >= v102)
                {
                  if (v102 == *(this + 58))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 216));
                    v102 = *(this + 57);
                  }

                  *(this + 57) = v102 + 1;
                  operator new();
                }

                v104 = *(this + 27);
                *(this + 56) = v103 + 1;
                v105 = *(v104 + 8 * v103);
                v112 = 0;
                v106 = *(a2 + 1);
                if (v106 >= *(a2 + 2) || *v106 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112))
                  {
                    return 0;
                  }
                }

                else
                {
                  v112 = *v106;
                  *(a2 + 1) = v106 + 1;
                }

                v107 = *(a2 + 14);
                v108 = *(a2 + 15);
                *(a2 + 14) = v107 + 1;
                if (v107 >= v108)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                if (!awd::metrics::LocationMicroLocationEventClusteringStatistics::MergePartialFromCodedStream(v105, a2) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v109 = *(a2 + 14);
                v19 = __OFSUB__(v109, 1);
                v110 = v109 - 1;
                if (v110 < 0 == v19)
                {
                  *(a2 + 14) = v110;
                }

                v21 = *(a2 + 1);
                v111 = *(a2 + 2);
                if (v21 < v111 && *v21 == 90)
                {
LABEL_208:
                  *(a2 + 1) = v21 + 1;
                  continue;
                }

                break;
              }

              if (v21 == v111 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }
            }
          }

          else if (v6 == 6)
          {
            if (v7 != 2)
            {
              goto LABEL_43;
            }

            while (1)
            {
              v52 = *(this + 27);
              v53 = *(this + 26);
              if (v53 >= v52)
              {
                if (v52 == *(this + 28))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96));
                  v52 = *(this + 27);
                }

                *(this + 27) = v52 + 1;
                operator new();
              }

              v54 = *(this + 12);
              *(this + 26) = v53 + 1;
              v55 = *(v54 + 8 * v53);
              v112 = 0;
              v56 = *(a2 + 1);
              if (v56 >= *(a2 + 2) || *v56 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112))
                {
                  return 0;
                }
              }

              else
              {
                v112 = *v56;
                *(a2 + 1) = v56 + 1;
              }

              v57 = *(a2 + 14);
              v58 = *(a2 + 15);
              *(a2 + 14) = v57 + 1;
              if (v57 >= v58)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!awd::metrics::LocationMicroLocationModelState::MergePartialFromCodedStream(v55, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v59 = *(a2 + 14);
              v19 = __OFSUB__(v59, 1);
              v60 = v59 - 1;
              if (v60 < 0 == v19)
              {
                *(a2 + 14) = v60;
              }

              v21 = *(a2 + 1);
              if (v21 >= *(a2 + 2))
              {
                break;
              }

              v61 = *v21;
              if (v61 != 50)
              {
                if (v61 != 58)
                {
                  goto LABEL_1;
                }

                goto LABEL_136;
              }

LABEL_118:
              *(a2 + 1) = v21 + 1;
            }
          }

          else if (v6 == 7)
          {
            if (v7 != 2)
            {
              goto LABEL_43;
            }

            while (1)
            {
              v62 = *(this + 33);
              v63 = *(this + 32);
              if (v63 >= v62)
              {
                if (v62 == *(this + 34))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 120));
                  v62 = *(this + 33);
                }

                *(this + 33) = v62 + 1;
                operator new();
              }

              v64 = *(this + 15);
              *(this + 32) = v63 + 1;
              v65 = *(v64 + 8 * v63);
              v112 = 0;
              v66 = *(a2 + 1);
              if (v66 >= *(a2 + 2) || *v66 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112))
                {
                  return 0;
                }
              }

              else
              {
                v112 = *v66;
                *(a2 + 1) = v66 + 1;
              }

              v67 = *(a2 + 14);
              v68 = *(a2 + 15);
              *(a2 + 14) = v67 + 1;
              if (v67 >= v68)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!awd::metrics::LocationMicroLocationLearningState::MergePartialFromCodedStream(v65, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v69 = *(a2 + 14);
              v19 = __OFSUB__(v69, 1);
              v70 = v69 - 1;
              if (v70 < 0 == v19)
              {
                *(a2 + 14) = v70;
              }

              v21 = *(a2 + 1);
              if (v21 >= *(a2 + 2))
              {
                break;
              }

              v71 = *v21;
              if (v71 != 58)
              {
                if (v71 == 66)
                {
                  goto LABEL_154;
                }

                goto LABEL_1;
              }

LABEL_136:
              *(a2 + 1) = v21 + 1;
            }
          }

          else
          {
            if (v6 != 8 || v7 != 2)
            {
              goto LABEL_43;
            }

            while (1)
            {
              v72 = *(this + 39);
              v73 = *(this + 38);
              if (v73 >= v72)
              {
                if (v72 == *(this + 40))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 144));
                  v72 = *(this + 39);
                }

                *(this + 39) = v72 + 1;
                operator new();
              }

              v74 = *(this + 18);
              *(this + 38) = v73 + 1;
              v75 = *(v74 + 8 * v73);
              v112 = 0;
              v76 = *(a2 + 1);
              if (v76 >= *(a2 + 2) || *v76 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112))
                {
                  return 0;
                }
              }

              else
              {
                v112 = *v76;
                *(a2 + 1) = v76 + 1;
              }

              v77 = *(a2 + 14);
              v78 = *(a2 + 15);
              *(a2 + 14) = v77 + 1;
              if (v77 >= v78)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!awd::metrics::LocationMicroLocationAnalyticsState::MergePartialFromCodedStream(v75, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v79 = *(a2 + 14);
              v19 = __OFSUB__(v79, 1);
              v80 = v79 - 1;
              if (v80 < 0 == v19)
              {
                *(a2 + 14) = v80;
              }

              v21 = *(a2 + 1);
              if (v21 >= *(a2 + 2))
              {
                break;
              }

              v81 = *v21;
              if (v81 != 66)
              {
                if (v81 == 74)
                {
                  while (1)
                  {
                    *(a2 + 1) = v21 + 1;
LABEL_173:
                    v82 = *(this + 45);
                    v83 = *(this + 44);
                    if (v83 >= v82)
                    {
                      if (v82 == *(this + 46))
                      {
                        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 168));
                        v82 = *(this + 45);
                      }

                      *(this + 45) = v82 + 1;
                      operator new();
                    }

                    v84 = *(this + 21);
                    *(this + 44) = v83 + 1;
                    v85 = *(v84 + 8 * v83);
                    v112 = 0;
                    v86 = *(a2 + 1);
                    if (v86 >= *(a2 + 2) || *v86 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v112 = *v86;
                      *(a2 + 1) = v86 + 1;
                    }

                    v87 = *(a2 + 14);
                    v88 = *(a2 + 15);
                    *(a2 + 14) = v87 + 1;
                    if (v87 >= v88)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                    if (!awd::metrics::LocationMicroLocationClusteringStatistics::MergePartialFromCodedStream(v85, a2) || *(a2 + 36) != 1)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                    v89 = *(a2 + 14);
                    v19 = __OFSUB__(v89, 1);
                    v90 = v89 - 1;
                    if (v90 < 0 == v19)
                    {
                      *(a2 + 14) = v90;
                    }

                    v21 = *(a2 + 1);
                    if (v21 >= *(a2 + 2))
                    {
                      break;
                    }

                    v91 = *v21;
                    if (v91 != 74)
                    {
                      if (v91 == 82)
                      {
                        goto LABEL_190;
                      }

                      goto LABEL_1;
                    }
                  }
                }

                goto LABEL_1;
              }

LABEL_154:
              *(a2 + 1) = v21 + 1;
            }
          }
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_43;
          }

          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v10 >= v9 || (v11 = *v10, v11 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v12 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v11;
            v12 = v10 + 1;
            *(a2 + 1) = v12;
          }

          v8 = *(this + 61) | 1;
          *(this + 61) = v8;
          if (v12 < v9 && *v12 == 18)
          {
            *(a2 + 1) = v12 + 1;
            goto LABEL_51;
          }
        }

        else
        {
          if (v6 != 2 || v7 != 2)
          {
            goto LABEL_43;
          }

          v8 = *(this + 61);
LABEL_51:
          *(this + 61) = v8 | 2;
          v14 = *(this + 2);
          if (!v14)
          {
            operator new();
          }

          v112 = 0;
          v15 = *(a2 + 1);
          if (v15 >= *(a2 + 2) || *v15 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112))
            {
              return 0;
            }
          }

          else
          {
            v112 = *v15;
            *(a2 + 1) = v15 + 1;
          }

          v16 = *(a2 + 14);
          v17 = *(a2 + 15);
          *(a2 + 14) = v16 + 1;
          if (v16 >= v17)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!awd::metrics::LocationMicroLocationMetaData::MergePartialFromCodedStream(v14, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v18 = *(a2 + 14);
          v19 = __OFSUB__(v18, 1);
          v20 = v18 - 1;
          if (v20 < 0 == v19)
          {
            *(a2 + 14) = v20;
          }

          v21 = *(a2 + 1);
          if (v21 < *(a2 + 2) && *v21 == 26)
          {
            while (1)
            {
              *(a2 + 1) = v21 + 1;
LABEL_65:
              v22 = *(this + 9);
              v23 = *(this + 8);
              if (v23 >= v22)
              {
                if (v22 == *(this + 10))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
                  v22 = *(this + 9);
                }

                *(this + 9) = v22 + 1;
                operator new();
              }

              v24 = *(this + 3);
              *(this + 8) = v23 + 1;
              v25 = *(v24 + 8 * v23);
              v112 = 0;
              v26 = *(a2 + 1);
              if (v26 >= *(a2 + 2) || *v26 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112))
                {
                  return 0;
                }
              }

              else
              {
                v112 = *v26;
                *(a2 + 1) = v26 + 1;
              }

              v27 = *(a2 + 14);
              v28 = *(a2 + 15);
              *(a2 + 14) = v27 + 1;
              if (v27 >= v28)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!awd::metrics::LocationMicroLocationMeasurementStatistics::MergePartialFromCodedStream(v25, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v29 = *(a2 + 14);
              v19 = __OFSUB__(v29, 1);
              v30 = v29 - 1;
              if (v30 < 0 == v19)
              {
                *(a2 + 14) = v30;
              }

              v21 = *(a2 + 1);
              if (v21 >= *(a2 + 2))
              {
                break;
              }

              v31 = *v21;
              if (v31 != 26)
              {
                if (v31 == 34)
                {
                  while (1)
                  {
                    *(a2 + 1) = v21 + 1;
LABEL_83:
                    v32 = *(this + 15);
                    v33 = *(this + 14);
                    if (v33 >= v32)
                    {
                      if (v32 == *(this + 16))
                      {
                        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
                        v32 = *(this + 15);
                      }

                      *(this + 15) = v32 + 1;
                      operator new();
                    }

                    v34 = *(this + 6);
                    *(this + 14) = v33 + 1;
                    v35 = *(v34 + 8 * v33);
                    v112 = 0;
                    v36 = *(a2 + 1);
                    if (v36 >= *(a2 + 2) || *v36 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v112 = *v36;
                      *(a2 + 1) = v36 + 1;
                    }

                    v37 = *(a2 + 14);
                    v38 = *(a2 + 15);
                    *(a2 + 14) = v37 + 1;
                    if (v37 >= v38)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                    if (!awd::metrics::LocationMicroLocationUserEventStatistics::MergePartialFromCodedStream(v35, a2) || *(a2 + 36) != 1)
                    {
                      return 0;
                    }

                    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                    v39 = *(a2 + 14);
                    v19 = __OFSUB__(v39, 1);
                    v40 = v39 - 1;
                    if (v40 < 0 == v19)
                    {
                      *(a2 + 14) = v40;
                    }

                    v21 = *(a2 + 1);
                    if (v21 >= *(a2 + 2))
                    {
                      break;
                    }

                    v41 = *v21;
                    if (v41 != 34)
                    {
                      if (v41 != 42)
                      {
                        goto LABEL_1;
                      }

                      goto LABEL_100;
                    }
                  }
                }

                goto LABEL_1;
              }
            }
          }
        }
      }

      if (v6 == 3)
      {
        if (v7 != 2)
        {
          break;
        }

        goto LABEL_65;
      }

      if (v6 == 4)
      {
        if (v7 != 2)
        {
          break;
        }

        goto LABEL_83;
      }

      if (v6 != 5 || v7 != 2)
      {
        break;
      }

      while (1)
      {
        v42 = *(this + 21);
        v43 = *(this + 20);
        if (v43 >= v42)
        {
          if (v42 == *(this + 22))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72));
            v42 = *(this + 21);
          }

          *(this + 21) = v42 + 1;
          operator new();
        }

        v44 = *(this + 9);
        *(this + 20) = v43 + 1;
        v45 = *(v44 + 8 * v43);
        v112 = 0;
        v46 = *(a2 + 1);
        if (v46 >= *(a2 + 2) || *v46 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v112))
          {
            return 0;
          }
        }

        else
        {
          v112 = *v46;
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
        if (!awd::metrics::LocationMicroLocationLocalizationStatistics::MergePartialFromCodedStream(v45, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v49 = *(a2 + 14);
        v19 = __OFSUB__(v49, 1);
        v50 = v49 - 1;
        if (v50 < 0 == v19)
        {
          *(a2 + 14) = v50;
        }

        v21 = *(a2 + 1);
        if (v21 >= *(a2 + 2))
        {
          break;
        }

        v51 = *v21;
        if (v51 != 42)
        {
          if (v51 != 50)
          {
            goto LABEL_1;
          }

          goto LABEL_118;
        }

LABEL_100:
        *(a2 + 1) = v21 + 1;
      }
    }

LABEL_43:
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

uint64_t awd::metrics::LocationMicroLocationStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 244);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 244);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);
    if (!v7)
    {
      v7 = *(awd::metrics::LocationMicroLocationStatistics::default_instance_ + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 24) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 32));
  }

  if (*(v5 + 56) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 48) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 56));
  }

  if (*(v5 + 80) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 72) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 80));
  }

  if (*(v5 + 104) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, *(*(v5 + 96) + 8 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 104));
  }

  if (*(v5 + 128) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, *(*(v5 + 120) + 8 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 128));
  }

  if (*(v5 + 152) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, *(*(v5 + 144) + 8 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 152));
  }

  if (*(v5 + 176) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, *(*(v5 + 168) + 8 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 176));
  }

  if (*(v5 + 200) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, *(*(v5 + 192) + 8 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 200));
  }

  if (*(v5 + 224) >= 1)
  {
    v16 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, *(*(v5 + 216) + 8 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 224));
  }

  return this;
}

uint64_t awd::metrics::LocationMicroLocationStatistics::ByteSize(awd::metrics::LocationMicroLocationStatistics *this)
{
  if (!*(this + 244))
  {
    v2 = 0;
    goto LABEL_13;
  }

  if (*(this + 244))
  {
    v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    if ((*(this + 61) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v2 = 0;
    if ((*(this + 244) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v3 = *(this + 2);
  if (!v3)
  {
    v3 = *(awd::metrics::LocationMicroLocationStatistics::default_instance_ + 16);
  }

  v4 = awd::metrics::LocationMicroLocationMetaData::ByteSize(v3);
  v5 = v4;
  if (v4 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
  }

  else
  {
    v6 = 1;
  }

  v2 += v5 + v6 + 1;
LABEL_13:
  v7 = *(this + 8);
  v8 = v7 + v2;
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = awd::metrics::LocationMicroLocationMeasurementStatistics::ByteSize(*(*(this + 3) + 8 * v9));
      v11 = v10;
      if (v10 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      }

      else
      {
        v12 = 1;
      }

      v8 += v11 + v12;
      ++v9;
    }

    while (v9 < *(this + 8));
  }

  v13 = *(this + 14);
  v14 = v13 + v8;
  if (v13 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = awd::metrics::LocationMicroLocationUserEventStatistics::ByteSize(*(*(this + 6) + 8 * v15));
      v17 = v16;
      if (v16 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      }

      else
      {
        v18 = 1;
      }

      v14 += v17 + v18;
      ++v15;
    }

    while (v15 < *(this + 14));
  }

  v19 = *(this + 20);
  v20 = v19 + v14;
  if (v19 >= 1)
  {
    v21 = 0;
    do
    {
      v22 = awd::metrics::LocationMicroLocationLocalizationStatistics::ByteSize(*(*(this + 9) + 8 * v21));
      v23 = v22;
      if (v22 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      }

      else
      {
        v24 = 1;
      }

      v20 += v23 + v24;
      ++v21;
    }

    while (v21 < *(this + 20));
  }

  v25 = *(this + 26);
  v26 = v25 + v20;
  if (v25 >= 1)
  {
    v27 = 0;
    do
    {
      v28 = awd::metrics::LocationMicroLocationModelState::ByteSize(*(*(this + 12) + 8 * v27));
      v29 = v28;
      if (v28 >= 0x80)
      {
        v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
      }

      else
      {
        v30 = 1;
      }

      v26 += v29 + v30;
      ++v27;
    }

    while (v27 < *(this + 26));
  }

  v31 = *(this + 32);
  v32 = v31 + v26;
  if (v31 >= 1)
  {
    v33 = 0;
    do
    {
      v34 = awd::metrics::LocationMicroLocationLearningState::ByteSize(*(*(this + 15) + 8 * v33));
      v35 = v34;
      if (v34 >= 0x80)
      {
        v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34);
      }

      else
      {
        v36 = 1;
      }

      v32 += v35 + v36;
      ++v33;
    }

    while (v33 < *(this + 32));
  }

  v37 = *(this + 38);
  v38 = v37 + v32;
  if (v37 >= 1)
  {
    v39 = 0;
    do
    {
      v40 = awd::metrics::LocationMicroLocationAnalyticsState::ByteSize(*(*(this + 18) + 8 * v39));
      v41 = v40;
      if (v40 >= 0x80)
      {
        v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40);
      }

      else
      {
        v42 = 1;
      }

      v38 += v41 + v42;
      ++v39;
    }

    while (v39 < *(this + 38));
  }

  v43 = *(this + 44);
  v44 = v43 + v38;
  if (v43 >= 1)
  {
    v45 = 0;
    do
    {
      v46 = awd::metrics::LocationMicroLocationClusteringStatistics::ByteSize(*(*(this + 21) + 8 * v45));
      v47 = v46;
      if (v46 >= 0x80)
      {
        v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46);
      }

      else
      {
        v48 = 1;
      }

      v44 += v47 + v48;
      ++v45;
    }

    while (v45 < *(this + 44));
  }

  v49 = *(this + 50);
  v50 = v49 + v44;
  if (v49 >= 1)
  {
    v51 = 0;
    do
    {
      v52 = awd::metrics::LocationMicroLocationClusteringByModel::ByteSize(*(*(this + 24) + 8 * v51));
      v53 = v52;
      if (v52 >= 0x80)
      {
        v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52);
      }

      else
      {
        v54 = 1;
      }

      v50 += v53 + v54;
      ++v51;
    }

    while (v51 < *(this + 50));
  }

  v55 = *(this + 56);
  v56 = (v55 + v50);
  if (v55 >= 1)
  {
    v57 = 0;
    do
    {
      v58 = awd::metrics::LocationMicroLocationEventClusteringStatistics::ByteSize(*(*(this + 27) + 8 * v57));
      v59 = v58;
      if (v58 >= 0x80)
      {
        v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58);
      }

      else
      {
        v60 = 1;
      }

      v56 = (v59 + v56 + v60);
      ++v57;
    }

    while (v57 < *(this + 56));
  }

  *(this + 60) = v56;
  return v56;
}

void awd::metrics::LocationMicroLocationStatistics::CheckTypeAndMergeFrom(awd::metrics::LocationMicroLocationStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationMicroLocationStatistics::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationMicroLocationStatistics::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationMicroLocationStatistics::CopyFrom(awd::metrics::LocationMicroLocationStatistics *this, const awd::metrics::LocationMicroLocationStatistics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationMicroLocationStatistics::MergeFrom(this, a2);
  }
}

awd::metrics::LocationMicroLocationStatistics *awd::metrics::LocationMicroLocationStatistics::Swap(awd::metrics::LocationMicroLocationStatistics *this, awd::metrics::LocationMicroLocationStatistics *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    v5 = *(this + 2);
    v6 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v6;
    *(a2 + 1) = v4;
    *(a2 + 2) = v5;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v7 = *(v3 + 61);
    *(v3 + 61) = *(a2 + 61);
    *(a2 + 61) = v7;
    v8 = *(v3 + 60);
    *(v3 + 60) = *(a2 + 60);
    *(a2 + 60) = v8;
  }

  return this;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventHistogram>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_29648CF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventSignificanceMetric>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_29648D02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventTypeAndCount>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventHistogram>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventSignificanceMetric>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationMeasurementStatistics>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationUserEventStatistics>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationLocalizationStatistics>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationModelState>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationLearningState>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationAnalyticsState>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationClusteringStatistics>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationClusteringByModel>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventClusteringStatistics>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventTypeAndCount>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventHistogram>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventHistogram>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventHistogram>::TypeHandler>(a2, v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      awd::metrics::LocationMicroLocationEventHistogram::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventSignificanceMetric>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventSignificanceMetric>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventSignificanceMetric>::TypeHandler>(a2, v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      awd::metrics::LocationMicroLocationEventSignificanceMetric::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationMeasurementStatistics>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationUserEventStatistics>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationLocalizationStatistics>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationModelState>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationLearningState>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationAnalyticsState>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationClusteringStatistics>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationClusteringByModel>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationMicroLocationEventClusteringStatistics>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t awd::metrics::protobuf_ShutdownFile_LocationPeerRanging_2eproto(awd::metrics *this)
{
  if (awd::metrics::LocationPeerRangingMetaData::default_instance_)
  {
    (*(*awd::metrics::LocationPeerRangingMetaData::default_instance_ + 8))(awd::metrics::LocationPeerRangingMetaData::default_instance_);
  }

  if (awd::metrics::LocationPeerRangingEstimatorConfiguration::default_instance_)
  {
    (*(*awd::metrics::LocationPeerRangingEstimatorConfiguration::default_instance_ + 8))(awd::metrics::LocationPeerRangingEstimatorConfiguration::default_instance_);
  }

  if (awd::metrics::LocationPeerRangingMeasurementMetrics::default_instance_)
  {
    (*(*awd::metrics::LocationPeerRangingMeasurementMetrics::default_instance_ + 8))(awd::metrics::LocationPeerRangingMeasurementMetrics::default_instance_);
  }

  if (awd::metrics::LocationPeerRangingBurstMetrics::default_instance_)
  {
    (*(*awd::metrics::LocationPeerRangingBurstMetrics::default_instance_ + 8))(awd::metrics::LocationPeerRangingBurstMetrics::default_instance_);
  }

  if (awd::metrics::LocationPeerRangingEarlyTerminateMetrics::default_instance_)
  {
    (*(*awd::metrics::LocationPeerRangingEarlyTerminateMetrics::default_instance_ + 8))(awd::metrics::LocationPeerRangingEarlyTerminateMetrics::default_instance_);
  }

  if (awd::metrics::LocationPeerRangingDecision::default_instance_)
  {
    (*(*awd::metrics::LocationPeerRangingDecision::default_instance_ + 8))(awd::metrics::LocationPeerRangingDecision::default_instance_);
  }

  if (awd::metrics::LocationPeerRangingUnlockDecisionMetrics::default_instance_)
  {
    (*(*awd::metrics::LocationPeerRangingUnlockDecisionMetrics::default_instance_ + 8))(awd::metrics::LocationPeerRangingUnlockDecisionMetrics::default_instance_);
  }

  result = awd::metrics::LocationPeerRangingMetrics::default_instance_;
  if (awd::metrics::LocationPeerRangingMetrics::default_instance_)
  {
    v2 = *(*awd::metrics::LocationPeerRangingMetrics::default_instance_ + 8);

    return v2();
  }

  return result;
}

void awd::metrics::protobuf_AddDesc_LocationPeerRanging_2eproto(awd::metrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((awd::metrics::protobuf_AddDesc_LocationPeerRanging_2eproto(void)::already_here & 1) == 0)
  {
    awd::metrics::protobuf_AddDesc_LocationPeerRanging_2eproto(void)::already_here = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "codegen/cpp/LocationPeerRanging.pb.cc", a4);
    operator new();
  }
}

void *awd::metrics::LocationPeerRangingMetaData::LocationPeerRangingMetaData(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1D52A58;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1D52A58;
  return this;
}

uint64_t awd::metrics::LocationPeerRangingEstimatorConfiguration::LocationPeerRangingEstimatorConfiguration(uint64_t this)
{
  *this = &unk_2A1D52AD0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_2A1D52AD0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  return this;
}

double awd::metrics::LocationPeerRangingMeasurementMetrics::LocationPeerRangingMeasurementMetrics(awd::metrics::LocationPeerRangingMeasurementMetrics *this)
{
  *this = &unk_2A1D52B48;
  *(this + 15) = 0;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0;
  return result;
}

{
  *this = &unk_2A1D52B48;
  *(this + 15) = 0;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0;
  return result;
}

double awd::metrics::LocationPeerRangingBurstMetrics::LocationPeerRangingBurstMetrics(awd::metrics::LocationPeerRangingBurstMetrics *this)
{
  *this = &unk_2A1D52BC0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_2A1D52BC0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t awd::metrics::LocationPeerRangingEarlyTerminateMetrics::LocationPeerRangingEarlyTerminateMetrics(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2A1D52C38;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2A1D52C38;
  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationPeerRangingDecision::LocationPeerRangingDecision(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2A1D52CB0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2A1D52CB0;
  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationPeerRangingUnlockDecisionMetrics::LocationPeerRangingUnlockDecisionMetrics(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2A1D52D28;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2A1D52D28;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::LocationPeerRangingMetrics::LocationPeerRangingMetrics(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 144) = 0;
  *(this + 152) = 0;
  *(this + 160) = 0;
  *this = &unk_2A1D52DA0;
  *(this + 8) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 144) = 0;
  *(this + 152) = 0;
  *(this + 160) = 0;
  *this = &unk_2A1D52DA0;
  *(this + 8) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationPeerRangingMetaData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::LocationPeerRangingMetaData *awd::metrics::LocationPeerRangingMetaData::LocationPeerRangingMetaData(awd::metrics::LocationPeerRangingMetaData *this, const awd::metrics::LocationPeerRangingMetaData *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D52A58;
  awd::metrics::LocationPeerRangingMetaData::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationPeerRangingMetaData::MergeFrom(awd::metrics::LocationPeerRangingMetaData *this, const awd::metrics::LocationPeerRangingMetaData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    v4 = *(a2 + 1);
    *(this + 5) |= 1u;
    *(this + 1) = v4;
  }
}

void sub_29648E6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationPeerRangingMetaData::~LocationPeerRangingMetaData(awd::metrics::LocationPeerRangingMetaData *this)
{
  *this = &unk_2A1D52A58;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52A58;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52A58;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationPeerRangingMetaData::default_instance(awd::metrics::LocationPeerRangingMetaData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationPeerRangingMetaData::default_instance_;
  if (!awd::metrics::LocationPeerRangingMetaData::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_LocationPeerRanging_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationPeerRangingMetaData::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationPeerRangingMetaData::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::LocationPeerRangingMetaData::MergePartialFromCodedStream(awd::metrics::LocationPeerRangingMetaData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
      }

      if (TagFallback != 8)
      {
        break;
      }

      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, v8 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v8;
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 5) |= 1u;
      if (v9 == v6 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t awd::metrics::LocationPeerRangingMetaData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationPeerRangingMetaData::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 20))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

void awd::metrics::LocationPeerRangingMetaData::CheckTypeAndMergeFrom(awd::metrics::LocationPeerRangingMetaData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationPeerRangingMetaData::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationPeerRangingMetaData::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationPeerRangingMetaData::CopyFrom(awd::metrics::LocationPeerRangingMetaData *this, const awd::metrics::LocationPeerRangingMetaData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationPeerRangingMetaData::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationPeerRangingMetaData::Swap(uint64_t this, awd::metrics::LocationPeerRangingMetaData *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
  }

  return this;
}

uint64_t awd::metrics::LocationPeerRangingEstimatorConfiguration::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::LocationPeerRangingEstimatorConfiguration *awd::metrics::LocationPeerRangingEstimatorConfiguration::LocationPeerRangingEstimatorConfiguration(awd::metrics::LocationPeerRangingEstimatorConfiguration *this, const awd::metrics::LocationPeerRangingEstimatorConfiguration *a2)
{
  *this = &unk_2A1D52AD0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  awd::metrics::LocationPeerRangingEstimatorConfiguration::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationPeerRangingEstimatorConfiguration::MergeFrom(awd::metrics::LocationPeerRangingEstimatorConfiguration *this, const awd::metrics::LocationPeerRangingEstimatorConfiguration *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 36))
  {
    v5 = *(a2 + 2);
    if (v5 >= 6)
    {
      awd::metrics::LocationPeerRangingEstimatorConfiguration::MergeFrom();
    }

    *(this + 9) |= 1u;
    *(this + 2) = v5;
    v4 = *(a2 + 9);
  }

  if ((v4 & 2) == 0)
  {
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v8 = *(a2 + 2);
    *(this + 9) |= 4u;
    *(this + 2) = v8;
    v4 = *(a2 + 9);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    goto LABEL_15;
  }

  v7 = *(a2 + 12);
  *(this + 9) |= 2u;
  *(this + 12) = v7;
  v4 = *(a2 + 9);
  if ((v4 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v4 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_15:
  v9 = *(a2 + 13);
  *(this + 9) |= 8u;
  *(this + 13) = v9;
  if ((*(a2 + 9) & 0x10) != 0)
  {
LABEL_11:
    v6 = *(a2 + 3);
    *(this + 9) |= 0x10u;
    *(this + 3) = v6;
  }
}

void sub_29648ECA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationPeerRangingEstimatorConfiguration::~LocationPeerRangingEstimatorConfiguration(awd::metrics::LocationPeerRangingEstimatorConfiguration *this)
{
  *this = &unk_2A1D52AD0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52AD0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52AD0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationPeerRangingEstimatorConfiguration::default_instance(awd::metrics::LocationPeerRangingEstimatorConfiguration *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationPeerRangingEstimatorConfiguration::default_instance_;
  if (!awd::metrics::LocationPeerRangingEstimatorConfiguration::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_LocationPeerRanging_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationPeerRangingEstimatorConfiguration::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationPeerRangingEstimatorConfiguration::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
    *(this + 12) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::LocationPeerRangingEstimatorConfiguration::MergePartialFromCodedStream(awd::metrics::LocationPeerRangingEstimatorConfiguration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
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
          if (v7 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_42;
        }

        if (v6 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
LABEL_46:
          v21[0] = 0;
          if (v11 >= v10 || (v19 = *v11, (v19 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v21);
            if (!result)
            {
              return result;
            }

            v19 = v21[0];
            v20 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            v20 = v11 + 1;
            *(a2 + 1) = v20;
          }

          *(this + 13) = v19 != 0;
          *(this + 9) |= 8u;
          if (v20 < v10 && *v20 == 41)
          {
            *(a2 + 1) = v20 + 1;
            goto LABEL_54;
          }
        }

        else
        {
          if (v6 != 5 || v7 != 1)
          {
            goto LABEL_21;
          }

LABEL_54:
          *v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = *v21;
          *(this + 9) |= 0x10u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v21[0] = 0;
      v12 = *(a2 + 1);
      if (v12 >= *(a2 + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v21);
        if (!result)
        {
          return result;
        }

        v13 = v21[0];
      }

      else
      {
        *(a2 + 1) = v12 + 1;
      }

      if (v13 <= 5)
      {
        *(this + 9) |= 1u;
        *(this + 2) = v13;
      }

      v15 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v15 < v8 && *v15 == 16)
      {
        v9 = v15 + 1;
        *(a2 + 1) = v9;
LABEL_34:
        v21[0] = 0;
        if (v9 >= v8 || (v16 = *v9, (v16 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v21);
          if (!result)
          {
            return result;
          }

          v16 = v21[0];
          v17 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v17 = v9 + 1;
          *(a2 + 1) = v17;
        }

        *(this + 12) = v16 != 0;
        *(this + 9) |= 2u;
        if (v17 < v8 && *v17 == 25)
        {
          *(a2 + 1) = v17 + 1;
LABEL_42:
          *v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 2) = *v21;
          *(this + 9) |= 4u;
          v18 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v18 < v10 && *v18 == 32)
          {
            v11 = v18 + 1;
            *(a2 + 1) = v11;
            goto LABEL_46;
          }
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_34;
    }

LABEL_21:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::LocationPeerRangingEstimatorConfiguration::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 13), a2, a4);
    if ((*(v5 + 36) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 36);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, v7, a3);
}

uint64_t awd::metrics::LocationPeerRangingEstimatorConfiguration::ByteSize(awd::metrics::LocationPeerRangingEstimatorConfiguration *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    if (v2)
    {
      v5 = *(this + 2);
      if ((v5 & 0x80000000) != 0)
      {
        v3 = 11;
      }

      else if (v5 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(this + 9);
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }

    v6 = (v2 & 2) + v3;
    if ((v2 & 4) != 0)
    {
      v6 += 9;
    }

    v7 = v6 + ((v2 >> 2) & 2);
    if ((v2 & 0x10) != 0)
    {
      result = v7 + 9;
    }

    else
    {
      result = v7;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 8) = result;
  return result;
}

void awd::metrics::LocationPeerRangingEstimatorConfiguration::CheckTypeAndMergeFrom(awd::metrics::LocationPeerRangingEstimatorConfiguration *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationPeerRangingEstimatorConfiguration::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationPeerRangingEstimatorConfiguration::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationPeerRangingEstimatorConfiguration::CopyFrom(awd::metrics::LocationPeerRangingEstimatorConfiguration *this, const awd::metrics::LocationPeerRangingEstimatorConfiguration *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationPeerRangingEstimatorConfiguration::MergeFrom(this, a2);
  }
}

double awd::metrics::LocationPeerRangingEstimatorConfiguration::Swap(awd::metrics::LocationPeerRangingEstimatorConfiguration *this, awd::metrics::LocationPeerRangingEstimatorConfiguration *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    LOBYTE(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    LOBYTE(v2) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v2;
    result = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = result;
    v5 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v5;
    v6 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v6;
  }

  return result;
}

uint64_t awd::metrics::LocationPeerRangingMeasurementMetrics::SharedCtor(uint64_t this)
{
  *(this + 60) = 0;
  *(this + 56) = 0;
  return this;
}

awd::metrics::LocationPeerRangingMeasurementMetrics *awd::metrics::LocationPeerRangingMeasurementMetrics::LocationPeerRangingMeasurementMetrics(awd::metrics::LocationPeerRangingMeasurementMetrics *this, const awd::metrics::LocationPeerRangingMeasurementMetrics *a2)
{
  *this = &unk_2A1D52B48;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0;
  awd::metrics::LocationPeerRangingMeasurementMetrics::MergeFrom(this, a2);
  return this;
}

void sub_29648F484(_Unwind_Exception *a1)
{
  v5 = *(v1 + 5);
  if (v5)
  {
    MEMORY[0x29C25A710](v5, 0x1000C8000313F17);
  }

  awd::metrics::LocationPeerRangingMeasurementMetrics::LocationPeerRangingMeasurementMetrics(v3, v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationPeerRangingMeasurementMetrics::MergeFrom(awd::metrics::LocationPeerRangingMeasurementMetrics *this, const awd::metrics::LocationPeerRangingMeasurementMetrics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v4 = *(a2 + 4);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 1, *(this + 4) + v4);
    memcpy((*(this + 1) + 8 * *(this + 4)), *(a2 + 1), 8 * *(a2 + 4));
    *(this + 4) += *(a2 + 4);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 3, *(this + 8) + v5);
    memcpy((*(this + 3) + 8 * *(this + 8)), *(a2 + 3), 8 * *(a2 + 8));
    *(this + 8) += *(a2 + 8);
  }

  v6 = *(a2 + 12);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 5, *(this + 12) + v6);
    memcpy((*(this + 5) + 8 * *(this + 12)), *(a2 + 5), 8 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  if ((*(a2 + 64) & 2) != 0)
  {
    v7 = *(a2 + 56);
    *(this + 16) |= 2u;
    *(this + 56) = v7;
  }
}

void sub_29648F618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationPeerRangingMeasurementMetrics::~LocationPeerRangingMeasurementMetrics(awd::metrics::LocationPeerRangingMeasurementMetrics *this)
{
  *this = &unk_2A1D52B48;
  v2 = *(this + 5);
  if (v2)
  {
    MEMORY[0x29C25A710](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x29C25A710](v3, 0x1000C8000313F17);
  }

  v4 = *(this + 1);
  if (v4)
  {
    MEMORY[0x29C25A710](v4, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationPeerRangingMeasurementMetrics::~LocationPeerRangingMeasurementMetrics(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationPeerRangingMeasurementMetrics::default_instance(awd::metrics::LocationPeerRangingMeasurementMetrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationPeerRangingMeasurementMetrics::default_instance_;
  if (!awd::metrics::LocationPeerRangingMeasurementMetrics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_LocationPeerRanging_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationPeerRangingMeasurementMetrics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationPeerRangingMeasurementMetrics::Clear(uint64_t this)
{
  if ((*(this + 64) & 0x1FE) != 0)
  {
    *(this + 56) = 0;
  }

  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 48) = 0;
  *(this + 64) = 0;
  return this;
}

uint64_t awd::metrics::LocationPeerRangingMeasurementMetrics::MergePartialFromCodedStream(awd::metrics::LocationPeerRangingMeasurementMetrics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_1:
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
          break;
        }

        if (v6 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            if (v7 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 8);
              if (!result)
              {
                return result;
              }

              goto LABEL_49;
            }

            goto LABEL_23;
          }

          v12 = *(a2 + 1);
          v8 = *(a2 + 2);
          while (1)
          {
            v49 = 0;
            if (v12 >= v8 || (*v12 & 0x8000000000000000) != 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v49))
              {
                return 0;
              }
            }

            else
            {
              v49 = *v12;
              *(a2 + 1) = v12 + 1;
            }

            v14 = *(this + 4);
            v15 = *(this + 5);
            if (v14 == v15)
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 1, v14 + 1);
              v14 = *(this + 4);
              v15 = *(this + 5);
            }

            v16 = v49;
            v17 = *(this + 1);
            v18 = v14 + 1;
            *(this + 4) = v14 + 1;
            *(v17 + 8 * v14) = v16;
            if (v15 - (v14 + 1) >= 1)
            {
              v19 = v15 - v14;
              do
              {
                v20 = *(a2 + 1);
                v21 = *(a2 + 2);
                if (v20 >= v21 || *v20 != 8)
                {
                  break;
                }

                *(a2 + 1) = v20 + 1;
                if ((v20 + 1) >= v21 || (v20[1] & 0x8000000000000000) != 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v49))
                  {
                    return 0;
                  }

                  v18 = *(this + 4);
                }

                else
                {
                  v49 = v20[1];
                  *(a2 + 1) = v20 + 2;
                }

                if (v18 >= *(this + 5))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v50);
                  v18 = *(this + 4);
                }

                v22 = v49;
                v23 = *(this + 1);
                *(this + 4) = v18 + 1;
                *(v23 + 8 * v18) = v22;
                --v19;
                ++v18;
              }

              while (v19 > 1);
            }

LABEL_49:
            v24 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v24 >= v8)
            {
              break;
            }

            v25 = *v24;
            if (v25 == 16)
            {
              v9 = (v24 + 1);
              *(a2 + 1) = v9;
              goto LABEL_54;
            }

            if (v25 != 8)
            {
              goto LABEL_1;
            }

            v12 = (v24 + 1);
            *(a2 + 1) = v12;
          }
        }

        else
        {
          if (v6 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_23;
          }

          v9 = *(a2 + 1);
          v8 = *(a2 + 2);
LABEL_54:
          v50[0] = 0;
          if (v9 >= v8 || (v26 = *v9, (v26 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v50);
            if (!result)
            {
              return result;
            }

            v26 = v50[0];
            v27 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v27 = v9 + 1;
            *(a2 + 1) = v27;
          }

          *(this + 56) = v26 != 0;
          *(this + 16) |= 2u;
          if (v27 < v8)
          {
            v28 = *v27;
            goto LABEL_61;
          }
        }
      }

      if (v6 != 3)
      {
        if (v6 == 4)
        {
          if ((TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_84;
          }

          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 40);
            if (!result)
            {
              return result;
            }

            goto LABEL_102;
          }
        }

        goto LABEL_23;
      }

      if ((TagFallback & 7) != 0)
      {
        break;
      }

      v13 = *(a2 + 1);
      v8 = *(a2 + 2);
      while (1)
      {
        v49 = 0;
        if (v13 >= v8 || (*v13 & 0x8000000000000000) != 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v49))
          {
            return 0;
          }
        }

        else
        {
          v49 = *v13;
          *(a2 + 1) = v13 + 1;
        }

        v29 = *(this + 8);
        v30 = *(this + 9);
        if (v29 == v30)
        {
          wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 3, v29 + 1);
          v29 = *(this + 8);
          v30 = *(this + 9);
        }

        v31 = v49;
        v32 = *(this + 3);
        v33 = v29 + 1;
        *(this + 8) = v29 + 1;
        *(v32 + 8 * v29) = v31;
        if (v30 - (v29 + 1) >= 1)
        {
          v34 = v30 - v29;
          do
          {
            v35 = *(a2 + 1);
            v36 = *(a2 + 2);
            if (v35 >= v36 || *v35 != 24)
            {
              break;
            }

            *(a2 + 1) = v35 + 1;
            if ((v35 + 1) >= v36 || (v35[1] & 0x8000000000000000) != 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v49))
              {
                return 0;
              }

              v33 = *(this + 8);
            }

            else
            {
              v49 = v35[1];
              *(a2 + 1) = v35 + 2;
            }

            if (v33 >= *(this + 9))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v50);
              v33 = *(this + 8);
            }

            v37 = v49;
            v38 = *(this + 3);
            *(this + 8) = v33 + 1;
            *(v38 + 8 * v33) = v37;
            --v34;
            ++v33;
          }

          while (v34 > 1);
        }

LABEL_81:
        v27 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v27 >= v8)
        {
          break;
        }

        v28 = *v27;
        if (v28 == 32)
        {
          do
          {
            v11 = v27 + 1;
            *(a2 + 1) = v11;
LABEL_84:
            v49 = 0;
            if (v11 >= v8 || (*v11 & 0x8000000000000000) != 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v49))
              {
                return 0;
              }
            }

            else
            {
              v49 = *v11;
              *(a2 + 1) = v11 + 1;
            }

            v39 = *(this + 12);
            v40 = *(this + 13);
            if (v39 == v40)
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(this + 5, v39 + 1);
              v39 = *(this + 12);
              v40 = *(this + 13);
            }

            v41 = v49;
            v42 = *(this + 5);
            v43 = v39 + 1;
            *(this + 12) = v39 + 1;
            *(v42 + 8 * v39) = v41;
            if (v40 - (v39 + 1) >= 1)
            {
              v44 = v40 - v39;
              do
              {
                v45 = *(a2 + 1);
                v46 = *(a2 + 2);
                if (v45 >= v46 || *v45 != 32)
                {
                  break;
                }

                *(a2 + 1) = v45 + 1;
                if ((v45 + 1) >= v46 || (v45[1] & 0x8000000000000000) != 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v49))
                  {
                    return 0;
                  }

                  v43 = *(this + 12);
                }

                else
                {
                  v49 = v45[1];
                  *(a2 + 1) = v45 + 2;
                }

                if (v43 >= *(this + 13))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v50);
                  v43 = *(this + 12);
                }

                v47 = v49;
                v48 = *(this + 5);
                *(this + 12) = v43 + 1;
                *(v48 + 8 * v43) = v47;
                --v44;
                ++v43;
              }

              while (v44 > 1);
            }

LABEL_102:
            v27 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          while (v27 < v8 && *v27 == 32);
          if (v27 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

LABEL_61:
        if (v28 != 24)
        {
          goto LABEL_1;
        }

        v13 = v27 + 1;
        *(a2 + 1) = v13;
      }
    }

    if (v7 == 2)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned long long,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)4>(a2, this + 24);
      if (!result)
      {
        return result;
      }

      goto LABEL_81;
    }

LABEL_23:
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

void sub_29648FDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::LocationPeerRangingMeasurementMetrics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 16) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  if ((*(v5 + 64) & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 56), a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(*(v5 + 24) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 32));
  }

  if (*(v5 + 48) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(*(v5 + 40) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 48));
  }

  return this;
}

uint64_t awd::metrics::LocationPeerRangingMeasurementMetrics::ByteSize(awd::metrics::LocationPeerRangingMeasurementMetrics *this)
{
  v2 = *(this + 16);
  LODWORD(v3) = *(this + 4);
  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v5 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(this + 1) + 8 * v4++));
      v3 = *(this + 4);
    }

    while (v4 < v3);
  }

  LODWORD(v6) = *(this + 8);
  if (v6 < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v8 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(this + 3) + 8 * v7++));
      v6 = *(this + 8);
    }

    while (v7 < v6);
  }

  LODWORD(v9) = *(this + 12);
  if (v9 < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v11 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(this + 5) + 8 * v10++));
      v9 = *(this + 12);
    }

    while (v10 < v9);
  }

  v12 = v2 & 2;
  if ((v2 & 0x1FE) == 0)
  {
    v12 = 0;
  }

  result = (v5 + v3 + v8 + v12 + v6 + v9 + v11);
  *(this + 15) = result;
  return result;
}

void awd::metrics::LocationPeerRangingMeasurementMetrics::CheckTypeAndMergeFrom(awd::metrics::LocationPeerRangingMeasurementMetrics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationPeerRangingMeasurementMetrics::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationPeerRangingMeasurementMetrics::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationPeerRangingMeasurementMetrics::CopyFrom(awd::metrics::LocationPeerRangingMeasurementMetrics *this, const awd::metrics::LocationPeerRangingMeasurementMetrics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationPeerRangingMeasurementMetrics::MergeFrom(this, a2);
  }
}

double awd::metrics::LocationPeerRangingMeasurementMetrics::Swap(awd::metrics::LocationPeerRangingMeasurementMetrics *this, awd::metrics::LocationPeerRangingMeasurementMetrics *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    v3 = *(a2 + 2);
    *(a2 + 1) = v2;
    v4 = *(this + 2);
    *(this + 2) = v3;
    *(a2 + 2) = v4;
    LOBYTE(v2) = *(this + 56);
    *(this + 56) = *(a2 + 56);
    *(a2 + 56) = v2;
    v5 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    v6 = *(a2 + 4);
    *(a2 + 3) = v5;
    v7 = *(this + 4);
    *(this + 4) = v6;
    *(a2 + 4) = v7;
    v8 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    result = *(a2 + 6);
    *(a2 + 5) = v8;
    v10 = *(this + 6);
    *(this + 6) = result;
    *(a2 + 6) = v10;
    LODWORD(v8) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v8;
    LODWORD(v8) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v8;
  }

  return result;
}

double awd::metrics::LocationPeerRangingBurstMetrics::SharedCtor(awd::metrics::LocationPeerRangingBurstMetrics *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::LocationPeerRangingBurstMetrics *awd::metrics::LocationPeerRangingBurstMetrics::LocationPeerRangingBurstMetrics(awd::metrics::LocationPeerRangingBurstMetrics *this, const awd::metrics::LocationPeerRangingBurstMetrics *a2)
{
  *this = &unk_2A1D52BC0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  awd::metrics::LocationPeerRangingBurstMetrics::MergeFrom(this, a2);
  return this;
}

double awd::metrics::LocationPeerRangingBurstMetrics::MergeFrom(awd::metrics::LocationPeerRangingBurstMetrics *this, const awd::metrics::LocationPeerRangingBurstMetrics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      v7 = *(a2 + 1);
      *(this + 11) |= 1u;
      *(this + 1) = v7;
      v5 = *(a2 + 11);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 2);
    *(this + 11) |= 2u;
    *(this + 2) = v8;
    v5 = *(a2 + 11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_12:
    result = *(a2 + 3);
    *(this + 11) |= 4u;
    *(this + 3) = result;
    if ((*(a2 + 11) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    v6 = *(a2 + 4);
    *(this + 11) |= 8u;
    *(this + 4) = v6;
  }

  return result;
}

void sub_296490320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationPeerRangingBurstMetrics::~LocationPeerRangingBurstMetrics(awd::metrics::LocationPeerRangingBurstMetrics *this)
{
  *this = &unk_2A1D52BC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52BC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52BC0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationPeerRangingBurstMetrics::default_instance(awd::metrics::LocationPeerRangingBurstMetrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationPeerRangingBurstMetrics::default_instance_;
  if (!awd::metrics::LocationPeerRangingBurstMetrics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_LocationPeerRanging_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationPeerRangingBurstMetrics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationPeerRangingBurstMetrics::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t awd::metrics::LocationPeerRangingBurstMetrics::MergePartialFromCodedStream(awd::metrics::LocationPeerRangingBurstMetrics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
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

        if (v6 != 3)
        {
          if (v6 == 4 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_40;
          }

          goto LABEL_20;
        }

        if (v7 != 1)
        {
          goto LABEL_20;
        }

LABEL_36:
        v21 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v21) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v21;
        *(this + 11) |= 4u;
        v18 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v18 < v10 && *v18 == 32)
        {
          v11 = v18 + 1;
          *(a2 + 1) = v11;
LABEL_40:
          if (v11 >= v10 || (v19 = *v11, v19 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v20 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v19;
            v20 = v11 + 1;
            *(a2 + 1) = v20;
          }

          *(this + 11) |= 8u;
          if (v20 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
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

      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v12 >= v8 || (v13 = *v12, v13 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v13;
        v14 = v12 + 1;
        *(a2 + 1) = v14;
      }

      *(this + 11) |= 1u;
      if (v14 < v8 && *v14 == 16)
      {
        v9 = v14 + 1;
        *(a2 + 1) = v9;
LABEL_28:
        if (v9 >= v8 || (v16 = *v9, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v16;
          v17 = v9 + 1;
          *(a2 + 1) = v17;
        }

        *(this + 11) |= 2u;
        if (v17 < v8 && *v17 == 25)
        {
          *(a2 + 1) = v17 + 1;
          goto LABEL_36;
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_28;
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

uint64_t awd::metrics::LocationPeerRangingBurstMetrics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
      if ((*(v5 + 44) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 44);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, v7, a2, a4);
}

uint64_t awd::metrics::LocationPeerRangingBurstMetrics::ByteSize(awd::metrics::LocationPeerRangingBurstMetrics *this)
{
  LOBYTE(v2) = *(this + 44);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((*(this + 44) & 1) == 0)
  {
    LODWORD(v3) = 0;
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  LODWORD(v3) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 11);
  if ((v2 & 2) != 0)
  {
LABEL_7:
    LODWORD(v3) = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 11);
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 = (v3 + 9);
  }

  else
  {
    v3 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
  }

LABEL_13:
  *(this + 10) = v3;
  return v3;
}

double awd::metrics::LocationPeerRangingBurstMetrics::CheckTypeAndMergeFrom(awd::metrics::LocationPeerRangingBurstMetrics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationPeerRangingBurstMetrics::CheckTypeAndMergeFrom();
  }

  return awd::metrics::LocationPeerRangingBurstMetrics::MergeFrom(this, lpsrc);
}

double awd::metrics::LocationPeerRangingBurstMetrics::CopyFrom(awd::metrics::LocationPeerRangingBurstMetrics *this, const awd::metrics::LocationPeerRangingBurstMetrics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return awd::metrics::LocationPeerRangingBurstMetrics::MergeFrom(this, a2);
  }

  return result;
}

double awd::metrics::LocationPeerRangingBurstMetrics::Swap(awd::metrics::LocationPeerRangingBurstMetrics *this, awd::metrics::LocationPeerRangingBurstMetrics *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    result = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = result;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    LODWORD(v5) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v5;
  }

  return result;
}

uint64_t awd::metrics::LocationPeerRangingEarlyTerminateMetrics::SharedCtor(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationPeerRangingEarlyTerminateMetrics *awd::metrics::LocationPeerRangingEarlyTerminateMetrics::LocationPeerRangingEarlyTerminateMetrics(awd::metrics::LocationPeerRangingEarlyTerminateMetrics *this, const awd::metrics::LocationPeerRangingEarlyTerminateMetrics *a2)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D52C38;
  *(this + 24) = 0;
  awd::metrics::LocationPeerRangingEarlyTerminateMetrics::MergeFrom(this, a2);
  return this;
}

double awd::metrics::LocationPeerRangingEarlyTerminateMetrics::MergeFrom(awd::metrics::LocationPeerRangingEarlyTerminateMetrics *this, const awd::metrics::LocationPeerRangingEarlyTerminateMetrics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v7 = *(a2 + 24);
      *(this + 8) |= 1u;
      *(this + 24) = v7;
      v5 = *(a2 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 1);
    *(this + 8) |= 2u;
    *(this + 1) = result;
    if ((*(a2 + 8) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    v6 = *(a2 + 2);
    *(this + 8) |= 4u;
    *(this + 2) = v6;
  }

  return result;
}

void sub_296490AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationPeerRangingEarlyTerminateMetrics::~LocationPeerRangingEarlyTerminateMetrics(awd::metrics::LocationPeerRangingEarlyTerminateMetrics *this)
{
  *this = &unk_2A1D52C38;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52C38;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52C38;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationPeerRangingEarlyTerminateMetrics::default_instance(awd::metrics::LocationPeerRangingEarlyTerminateMetrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationPeerRangingEarlyTerminateMetrics::default_instance_;
  if (!awd::metrics::LocationPeerRangingEarlyTerminateMetrics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_LocationPeerRanging_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationPeerRangingEarlyTerminateMetrics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationPeerRangingEarlyTerminateMetrics::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::LocationPeerRangingEarlyTerminateMetrics::MergePartialFromCodedStream(awd::metrics::LocationPeerRangingEarlyTerminateMetrics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 == 3)
      {
        if ((TagFallback & 7) == 0)
        {
          v13 = *(a2 + 1);
          v12 = *(a2 + 2);
          goto LABEL_29;
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
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v18);
        if (!result)
        {
          return result;
        }

        v10 = v18;
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 24) = v10 != 0;
      *(this + 8) |= 1u;
      if (v11 < v8 && *v11 == 17)
      {
        *(a2 + 1) = v11 + 1;
LABEL_25:
        v19 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v19) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = v19;
        *(this + 8) |= 2u;
        v15 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v15 < v12 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_29:
          if (v13 >= v12 || (v16 = *v13, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v12 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 8) |= 4u;
          if (v17 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v7 == 1)
    {
      goto LABEL_25;
    }

LABEL_16:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::LocationPeerRangingEarlyTerminateMetrics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 24), a2, a4);
  v6 = *(v5 + 32);
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
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

uint64_t awd::metrics::LocationPeerRangingEarlyTerminateMetrics::ByteSize(awd::metrics::LocationPeerRangingEarlyTerminateMetrics *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    if ((v2 & 2) != 0)
    {
      v3 = (2 * (v2 & 1)) | 9u;
    }

    else
    {
      v3 = 2 * (v2 & 1u);
    }

    if ((v2 & 4) != 0)
    {
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    }
  }

  else
  {
    v3 = 0;
  }

  *(this + 7) = v3;
  return v3;
}

double awd::metrics::LocationPeerRangingEarlyTerminateMetrics::CheckTypeAndMergeFrom(awd::metrics::LocationPeerRangingEarlyTerminateMetrics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationPeerRangingEarlyTerminateMetrics::CheckTypeAndMergeFrom();
  }

  return awd::metrics::LocationPeerRangingEarlyTerminateMetrics::MergeFrom(this, lpsrc);
}

double awd::metrics::LocationPeerRangingEarlyTerminateMetrics::CopyFrom(awd::metrics::LocationPeerRangingEarlyTerminateMetrics *this, const awd::metrics::LocationPeerRangingEarlyTerminateMetrics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return awd::metrics::LocationPeerRangingEarlyTerminateMetrics::MergeFrom(this, a2);
  }

  return result;
}

double awd::metrics::LocationPeerRangingEarlyTerminateMetrics::Swap(awd::metrics::LocationPeerRangingEarlyTerminateMetrics *this, awd::metrics::LocationPeerRangingEarlyTerminateMetrics *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v2;
    result = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = result;
    v4 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v4;
    LODWORD(v4) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
    LODWORD(v4) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v4;
  }

  return result;
}

uint64_t awd::metrics::LocationPeerRangingDecision::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::LocationPeerRangingDecision *awd::metrics::LocationPeerRangingDecision::LocationPeerRangingDecision(awd::metrics::LocationPeerRangingDecision *this, const awd::metrics::LocationPeerRangingDecision *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D52CB0;
  *(this + 6) = 0;
  awd::metrics::LocationPeerRangingDecision::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationPeerRangingDecision::MergeFrom(awd::metrics::LocationPeerRangingDecision *this, const awd::metrics::LocationPeerRangingDecision *a2)
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
      if (v5 >= 7)
      {
        awd::metrics::LocationPeerRangingDecision::MergeFrom();
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

void sub_2964911E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationPeerRangingDecision::~LocationPeerRangingDecision(awd::metrics::LocationPeerRangingDecision *this)
{
  *this = &unk_2A1D52CB0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52CB0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D52CB0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationPeerRangingDecision::default_instance(awd::metrics::LocationPeerRangingDecision *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationPeerRangingDecision::default_instance_;
  if (!awd::metrics::LocationPeerRangingDecision::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_LocationPeerRanging_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationPeerRangingDecision::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationPeerRangingDecision::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::LocationPeerRangingDecision::MergePartialFromCodedStream(awd::metrics::LocationPeerRangingDecision *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (v7 <= 6)
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

uint64_t awd::metrics::LocationPeerRangingDecision::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::LocationPeerRangingDecision::ByteSize(awd::metrics::LocationPeerRangingDecision *this)
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

void awd::metrics::LocationPeerRangingDecision::CheckTypeAndMergeFrom(awd::metrics::LocationPeerRangingDecision *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationPeerRangingDecision::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationPeerRangingDecision::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationPeerRangingDecision::CopyFrom(awd::metrics::LocationPeerRangingDecision *this, const awd::metrics::LocationPeerRangingDecision *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationPeerRangingDecision::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::LocationPeerRangingDecision::Swap(uint64_t this, awd::metrics::LocationPeerRangingDecision *a2)
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

void *awd::metrics::LocationPeerRangingUnlockDecisionMetrics::SharedCtor(void *this)
{
  this[4] = 0;
  this[5] = 0;
  this[6] = 0;
  return this;
}

awd::metrics::LocationPeerRangingUnlockDecisionMetrics *awd::metrics::LocationPeerRangingUnlockDecisionMetrics::LocationPeerRangingUnlockDecisionMetrics(awd::metrics::LocationPeerRangingUnlockDecisionMetrics *this, const awd::metrics::LocationPeerRangingUnlockDecisionMetrics *a2)
{
  *(this + 1) = 0;
  *this = &unk_2A1D52D28;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  awd::metrics::LocationPeerRangingUnlockDecisionMetrics::MergeFrom(this, a2);
  return this;
}

void sub_2964917C0(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingDecision>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationPeerRangingUnlockDecisionMetrics::MergeFrom(awd::metrics::LocationPeerRangingUnlockDecisionMetrics *this, const awd::metrics::LocationPeerRangingUnlockDecisionMetrics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingDecision>::TypeHandler>((this + 8), a2 + 8);
  v4 = *(a2 + 13);
  if ((v4 & 0x1FE) != 0)
  {
    if ((v4 & 2) != 0)
    {
      v5 = *(a2 + 4);
      *(this + 13) |= 2u;
      *(this + 4) = v5;
      v4 = *(a2 + 13);
    }

    if ((v4 & 4) != 0)
    {
      v6 = *(a2 + 5);
      *(this + 13) |= 4u;
      *(this + 5) = v6;
    }
  }
}

void sub_29649189C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationPeerRangingUnlockDecisionMetrics::~LocationPeerRangingUnlockDecisionMetrics(awd::metrics::LocationPeerRangingUnlockDecisionMetrics *this)
{
  *this = &unk_2A1D52D28;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingDecision>::TypeHandler>(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationPeerRangingUnlockDecisionMetrics::~LocationPeerRangingUnlockDecisionMetrics(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationPeerRangingUnlockDecisionMetrics::default_instance(awd::metrics::LocationPeerRangingUnlockDecisionMetrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationPeerRangingUnlockDecisionMetrics::default_instance_;
  if (!awd::metrics::LocationPeerRangingUnlockDecisionMetrics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_LocationPeerRanging_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationPeerRangingUnlockDecisionMetrics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationPeerRangingUnlockDecisionMetrics::Clear(awd::metrics::LocationPeerRangingUnlockDecisionMetrics *this)
{
  if ((*(this + 26) & 0x1FE) != 0)
  {
    *(this + 4) = 0;
    *(this + 5) = 0;
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingDecision>::TypeHandler>(this + 8);
  *(this + 13) = 0;
  return result;
}

uint64_t awd::metrics::LocationPeerRangingUnlockDecisionMetrics::MergePartialFromCodedStream(awd::metrics::LocationPeerRangingUnlockDecisionMetrics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_1:
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v24 = *(a2 + 1);
        v18 = *(a2 + 2);
LABEL_45:
        if (v24 >= v18 || (v26 = *v24, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v18 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v26;
          v27 = v24 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 13) |= 4u;
        if (v27 == v18 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_36;
      }

      v21 = *(a2 + 1);
      v18 = *(a2 + 2);
LABEL_32:
      if (v21 >= v18 || (v22 = *v21, v22 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v23 = *(a2 + 1);
        v18 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v22;
        v23 = v21 + 1;
        *(a2 + 1) = v23;
      }

      *(this + 13) |= 2u;
      if (v23 < v18 && *v23 == 24)
      {
        v24 = v23 + 1;
        *(a2 + 1) = v24;
        goto LABEL_45;
      }
    }

    if (v6 == 1 && v7 == 2)
    {
      while (1)
      {
        v8 = *(this + 5);
        v9 = *(this + 4);
        if (v9 >= v8)
        {
          if (v8 == *(this + 6))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
            v8 = *(this + 5);
          }

          *(this + 5) = v8 + 1;
          operator new();
        }

        v10 = *(this + 1);
        *(this + 4) = v9 + 1;
        v11 = *(v10 + 8 * v9);
        v28 = 0;
        v12 = *(a2 + 1);
        if (v12 >= *(a2 + 2) || *v12 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28))
          {
            return 0;
          }
        }

        else
        {
          v28 = *v12;
          *(a2 + 1) = v12 + 1;
        }

        v13 = *(a2 + 14);
        v14 = *(a2 + 15);
        *(a2 + 14) = v13 + 1;
        if (v13 >= v14)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationPeerRangingDecision::MergePartialFromCodedStream(v11, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v15 = *(a2 + 14);
        v16 = __OFSUB__(v15, 1);
        v17 = v15 - 1;
        if (v17 < 0 == v16)
        {
          *(a2 + 14) = v17;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v19 >= v18)
        {
          goto LABEL_1;
        }

        v20 = *v19;
        if (v20 != 10)
        {
          if (v20 != 16)
          {
            goto LABEL_1;
          }

          v21 = (v19 + 1);
          *(a2 + 1) = v21;
          goto LABEL_32;
        }

        *(a2 + 1) = v19 + 1;
      }
    }

LABEL_36:
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

uint64_t awd::metrics::LocationPeerRangingUnlockDecisionMetrics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 16) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  v7 = *(v5 + 52);
  if ((v7 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 32), a2, a4);
    v7 = *(v5 + 52);
  }

  if ((v7 & 4) != 0)
  {
    v8 = *(v5 + 40);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v8, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::LocationPeerRangingUnlockDecisionMetrics::ByteSize(awd::metrics::LocationPeerRangingUnlockDecisionMetrics *this)
{
  v2 = *(this + 13);
  if ((v2 & 0x1FE) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if ((v2 & 2) != 0)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
    if ((*(this + 13) & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 4) != 0)
  {
LABEL_7:
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  }

LABEL_8:
  v4 = *(this + 4);
  v5 = (v4 + v3);
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = awd::metrics::LocationPeerRangingDecision::ByteSize(*(*(this + 1) + 8 * v6));
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      }

      else
      {
        v9 = 1;
      }

      v5 = (v8 + v5 + v9);
      ++v6;
    }

    while (v6 < *(this + 4));
  }

  *(this + 12) = v5;
  return v5;
}

void awd::metrics::LocationPeerRangingUnlockDecisionMetrics::CheckTypeAndMergeFrom(awd::metrics::LocationPeerRangingUnlockDecisionMetrics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationPeerRangingUnlockDecisionMetrics::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationPeerRangingUnlockDecisionMetrics::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationPeerRangingUnlockDecisionMetrics::CopyFrom(awd::metrics::LocationPeerRangingUnlockDecisionMetrics *this, const awd::metrics::LocationPeerRangingUnlockDecisionMetrics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationPeerRangingUnlockDecisionMetrics::MergeFrom(this, a2);
  }
}

awd::metrics::LocationPeerRangingUnlockDecisionMetrics *awd::metrics::LocationPeerRangingUnlockDecisionMetrics::Swap(awd::metrics::LocationPeerRangingUnlockDecisionMetrics *this, awd::metrics::LocationPeerRangingUnlockDecisionMetrics *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 4);
    *(v3 + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(v3 + 5);
    *(v3 + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    LODWORD(v5) = *(v3 + 13);
    *(v3 + 13) = *(a2 + 13);
    *(a2 + 13) = v5;
    LODWORD(v5) = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v5;
  }

  return this;
}

uint64_t awd::metrics::LocationPeerRangingMetrics::SharedCtor(uint64_t this)
{
  *(this + 160) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::LocationPeerRangingMetrics *awd::metrics::LocationPeerRangingMetrics::LocationPeerRangingMetrics(awd::metrics::LocationPeerRangingMetrics *this, const awd::metrics::LocationPeerRangingMetrics *a2)
{
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 11) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 14) = 0;
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 17) = 0;
  *(this + 2) = 0;
  *(this + 20) = 0;
  *this = &unk_2A1D52DA0;
  *(this + 1) = 0;
  *(this + 8) = 0;
  *(this + 3) = 0;
  awd::metrics::LocationPeerRangingMetrics::MergeFrom(this, a2);
  return this;
}

void sub_29649214C(_Unwind_Exception *a1)
{
  v8 = v6;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingUnlockDecisionMetrics>::TypeHandler>(v8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingEarlyTerminateMetrics>::TypeHandler>(v7);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingBurstMetrics>::TypeHandler>(v5);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingMeasurementMetrics>::TypeHandler>(v4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingEstimatorConfiguration>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingMetaData>::TypeHandler>(v3);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationPeerRangingMetrics::MergeFrom(awd::metrics::LocationPeerRangingMetrics *this, const awd::metrics::LocationPeerRangingMetrics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingMetaData>::TypeHandler>((this + 16), a2 + 16);
  v4 = *(this + 12);
  v5 = *(a2 + 12);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40));
  LODWORD(v6) = *(a2 + 12);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
      }

      v8 = *(*(a2 + 5) + 8 * v7);
      v9 = *(this + 13);
      v10 = *(this + 12);
      if (v10 >= v9)
      {
        if (v9 == *(this + 14))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40));
          v9 = *(this + 13);
        }

        *(this + 13) = v9 + 1;
        operator new();
      }

      v11 = *(this + 5);
      *(this + 12) = v10 + 1;
      awd::metrics::LocationPeerRangingEstimatorConfiguration::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 12);
    }

    while (v7 < v6);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingMeasurementMetrics>::TypeHandler>((this + 64), a2 + 64);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingBurstMetrics>::TypeHandler>((this + 88), a2 + 88);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingEarlyTerminateMetrics>::TypeHandler>((this + 112), a2 + 112);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingUnlockDecisionMetrics>::TypeHandler>((this + 136), a2 + 136);
  if (*(a2 + 164))
  {
    v12 = *(a2 + 1);
    *(this + 41) |= 1u;
    *(this + 1) = v12;
  }
}

void sub_2964923C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationPeerRangingMetrics::~LocationPeerRangingMetrics(awd::metrics::LocationPeerRangingMetrics *this)
{
  *this = &unk_2A1D52DA0;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingUnlockDecisionMetrics>::TypeHandler>(this + 17);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingEarlyTerminateMetrics>::TypeHandler>(this + 14);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingBurstMetrics>::TypeHandler>(this + 11);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingMeasurementMetrics>::TypeHandler>(this + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingEstimatorConfiguration>::TypeHandler>(this + 5);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingMetaData>::TypeHandler>(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::LocationPeerRangingMetrics::~LocationPeerRangingMetrics(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationPeerRangingMetrics::default_instance(awd::metrics::LocationPeerRangingMetrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationPeerRangingMetrics::default_instance_;
  if (!awd::metrics::LocationPeerRangingMetrics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_LocationPeerRanging_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationPeerRangingMetrics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationPeerRangingMetrics::Clear(awd::metrics::LocationPeerRangingMetrics *this)
{
  if (*(this + 164))
  {
    *(this + 1) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingMetaData>::TypeHandler>(this + 16);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingEstimatorConfiguration>::TypeHandler>(this + 40);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingMeasurementMetrics>::TypeHandler>(this + 64);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingBurstMetrics>::TypeHandler>(this + 88);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingEarlyTerminateMetrics>::TypeHandler>(this + 112);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingUnlockDecisionMetrics>::TypeHandler>(this + 136);
  *(this + 41) = 0;
  return result;
}

uint64_t awd::metrics::LocationPeerRangingMetrics::MergePartialFromCodedStream(awd::metrics::LocationPeerRangingMetrics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_1:
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (TagFallback >> 3 > 5)
          {
            if (v6 == 6)
            {
              if (v7 != 2)
              {
                goto LABEL_30;
              }

              while (2)
              {
                v54 = *(this + 31);
                v55 = *(this + 30);
                if (v55 >= v54)
                {
                  if (v54 == *(this + 32))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 112));
                    v54 = *(this + 31);
                  }

                  *(this + 31) = v54 + 1;
                  operator new();
                }

                v56 = *(this + 14);
                *(this + 30) = v55 + 1;
                v57 = *(v56 + 8 * v55);
                v74 = 0;
                v58 = *(a2 + 1);
                if (v58 >= *(a2 + 2) || *v58 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v74))
                  {
                    return 0;
                  }
                }

                else
                {
                  v74 = *v58;
                  *(a2 + 1) = v58 + 1;
                }

                v59 = *(a2 + 14);
                v60 = *(a2 + 15);
                *(a2 + 14) = v59 + 1;
                if (v59 >= v60)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                if (!awd::metrics::LocationPeerRangingEarlyTerminateMetrics::MergePartialFromCodedStream(v57, a2) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v61 = *(a2 + 14);
                v21 = __OFSUB__(v61, 1);
                v62 = v61 - 1;
                if (v62 < 0 == v21)
                {
                  *(a2 + 14) = v62;
                }

                v11 = *(a2 + 1);
                if (v11 < *(a2 + 2))
                {
                  v63 = *v11;
                  if (v63 == 50)
                  {
LABEL_109:
                    *(a2 + 1) = v11 + 1;
                    continue;
                  }

                  if (v63 == 58)
                  {
                    goto LABEL_127;
                  }
                }

                break;
              }
            }

            else
            {
              if (v6 != 7 || v7 != 2)
              {
                goto LABEL_30;
              }

              while (2)
              {
                v64 = *(this + 37);
                v65 = *(this + 36);
                if (v65 >= v64)
                {
                  if (v64 == *(this + 38))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 136));
                    v64 = *(this + 37);
                  }

                  *(this + 37) = v64 + 1;
                  operator new();
                }

                v66 = *(this + 17);
                *(this + 36) = v65 + 1;
                v67 = *(v66 + 8 * v65);
                v74 = 0;
                v68 = *(a2 + 1);
                if (v68 >= *(a2 + 2) || *v68 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v74))
                  {
                    return 0;
                  }
                }

                else
                {
                  v74 = *v68;
                  *(a2 + 1) = v68 + 1;
                }

                v69 = *(a2 + 14);
                v70 = *(a2 + 15);
                *(a2 + 14) = v69 + 1;
                if (v69 >= v70)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                if (!awd::metrics::LocationPeerRangingUnlockDecisionMetrics::MergePartialFromCodedStream(v67, a2) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v71 = *(a2 + 14);
                v21 = __OFSUB__(v71, 1);
                v72 = v71 - 1;
                if (v72 < 0 == v21)
                {
                  *(a2 + 14) = v72;
                }

                v11 = *(a2 + 1);
                v73 = *(a2 + 2);
                if (v11 < v73 && *v11 == 58)
                {
LABEL_127:
                  *(a2 + 1) = v11 + 1;
                  continue;
                }

                break;
              }

              if (v11 == v73 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }
            }
          }

          else
          {
            if (v6 == 4)
            {
              if (v7 != 2)
              {
                goto LABEL_30;
              }

              goto LABEL_74;
            }

            if (v6 != 5 || v7 != 2)
            {
              goto LABEL_30;
            }

            while (1)
            {
              v44 = *(this + 25);
              v45 = *(this + 24);
              if (v45 >= v44)
              {
                if (v44 == *(this + 26))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88));
                  v44 = *(this + 25);
                }

                *(this + 25) = v44 + 1;
                operator new();
              }

              v46 = *(this + 11);
              *(this + 24) = v45 + 1;
              v47 = *(v46 + 8 * v45);
              v74 = 0;
              v48 = *(a2 + 1);
              if (v48 >= *(a2 + 2) || *v48 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v74))
                {
                  return 0;
                }
              }

              else
              {
                v74 = *v48;
                *(a2 + 1) = v48 + 1;
              }

              v49 = *(a2 + 14);
              v50 = *(a2 + 15);
              *(a2 + 14) = v49 + 1;
              if (v49 >= v50)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!awd::metrics::LocationPeerRangingBurstMetrics::MergePartialFromCodedStream(v47, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v51 = *(a2 + 14);
              v21 = __OFSUB__(v51, 1);
              v52 = v51 - 1;
              if (v52 < 0 == v21)
              {
                *(a2 + 14) = v52;
              }

              v11 = *(a2 + 1);
              if (v11 >= *(a2 + 2))
              {
                break;
              }

              v53 = *v11;
              if (v53 != 42)
              {
                if (v53 == 50)
                {
                  goto LABEL_109;
                }

                goto LABEL_1;
              }

LABEL_91:
              *(a2 + 1) = v11 + 1;
            }
          }
        }

        if (v6 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_30;
        }

        v8 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v8 >= v9 || (v10 = *v8, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v11 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v10;
          v11 = v8 + 1;
          *(a2 + 1) = v11;
        }

        *(this + 41) |= 1u;
        if (v11 < v9 && *v11 == 18)
        {
          while (1)
          {
            *(a2 + 1) = v11 + 1;
LABEL_38:
            v13 = *(this + 7);
            v14 = *(this + 6);
            if (v14 >= v13)
            {
              if (v13 == *(this + 8))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
                v13 = *(this + 7);
              }

              *(this + 7) = v13 + 1;
              operator new();
            }

            v15 = *(this + 2);
            *(this + 6) = v14 + 1;
            v16 = *(v15 + 8 * v14);
            v74 = 0;
            v17 = *(a2 + 1);
            if (v17 >= *(a2 + 2) || *v17 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v74))
              {
                return 0;
              }
            }

            else
            {
              v74 = *v17;
              *(a2 + 1) = v17 + 1;
            }

            v18 = *(a2 + 14);
            v19 = *(a2 + 15);
            *(a2 + 14) = v18 + 1;
            if (v18 >= v19)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!awd::metrics::LocationPeerRangingMetaData::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v20 = *(a2 + 14);
            v21 = __OFSUB__(v20, 1);
            v22 = v20 - 1;
            if (v22 < 0 == v21)
            {
              *(a2 + 14) = v22;
            }

            v11 = *(a2 + 1);
            if (v11 >= *(a2 + 2))
            {
              break;
            }

            v23 = *v11;
            if (v23 != 18)
            {
              if (v23 != 26)
              {
                goto LABEL_1;
              }

              goto LABEL_55;
            }
          }
        }
      }

      if (v6 == 2)
      {
        if (v7 != 2)
        {
          break;
        }

        goto LABEL_38;
      }

      if (v6 != 3 || v7 != 2)
      {
        break;
      }

      while (1)
      {
        v24 = *(this + 13);
        v25 = *(this + 12);
        if (v25 >= v24)
        {
          if (v24 == *(this + 14))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40));
            v24 = *(this + 13);
          }

          *(this + 13) = v24 + 1;
          operator new();
        }

        v26 = *(this + 5);
        *(this + 12) = v25 + 1;
        v27 = *(v26 + 8 * v25);
        v74 = 0;
        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v74))
          {
            return 0;
          }
        }

        else
        {
          v74 = *v28;
          *(a2 + 1) = v28 + 1;
        }

        v29 = *(a2 + 14);
        v30 = *(a2 + 15);
        *(a2 + 14) = v29 + 1;
        if (v29 >= v30)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::LocationPeerRangingEstimatorConfiguration::MergePartialFromCodedStream(v27, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v31 = *(a2 + 14);
        v21 = __OFSUB__(v31, 1);
        v32 = v31 - 1;
        if (v32 < 0 == v21)
        {
          *(a2 + 14) = v32;
        }

        v11 = *(a2 + 1);
        if (v11 >= *(a2 + 2))
        {
          break;
        }

        v33 = *v11;
        if (v33 != 26)
        {
          if (v33 == 34)
          {
            while (1)
            {
              *(a2 + 1) = v11 + 1;
LABEL_74:
              v34 = *(this + 19);
              v35 = *(this + 18);
              if (v35 >= v34)
              {
                if (v34 == *(this + 20))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 64));
                  v34 = *(this + 19);
                }

                *(this + 19) = v34 + 1;
                operator new();
              }

              v36 = *(this + 8);
              *(this + 18) = v35 + 1;
              v37 = *(v36 + 8 * v35);
              v74 = 0;
              v38 = *(a2 + 1);
              if (v38 >= *(a2 + 2) || *v38 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v74))
                {
                  return 0;
                }
              }

              else
              {
                v74 = *v38;
                *(a2 + 1) = v38 + 1;
              }

              v39 = *(a2 + 14);
              v40 = *(a2 + 15);
              *(a2 + 14) = v39 + 1;
              if (v39 >= v40)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!awd::metrics::LocationPeerRangingMeasurementMetrics::MergePartialFromCodedStream(v37, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v41 = *(a2 + 14);
              v21 = __OFSUB__(v41, 1);
              v42 = v41 - 1;
              if (v42 < 0 == v21)
              {
                *(a2 + 14) = v42;
              }

              v11 = *(a2 + 1);
              if (v11 >= *(a2 + 2))
              {
                break;
              }

              v43 = *v11;
              if (v43 != 34)
              {
                if (v43 == 42)
                {
                  goto LABEL_91;
                }

                goto LABEL_1;
              }
            }
          }

          goto LABEL_1;
        }

LABEL_55:
        *(a2 + 1) = v11 + 1;
      }
    }

LABEL_30:
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

uint64_t awd::metrics::LocationPeerRangingMetrics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 164))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 40) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 48));
  }

  if (*(v5 + 72) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 64) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 72));
  }

  if (*(v5 + 96) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 88) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 96));
  }

  if (*(v5 + 120) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, *(*(v5 + 112) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 120));
  }

  if (*(v5 + 144) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, *(*(v5 + 136) + 8 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 144));
  }

  return this;
}

uint64_t awd::metrics::LocationPeerRangingMetrics::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 164))
  {
    v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 6);
  v4 = v3 + v2;
  if (v3 >= 1)
  {
    for (i = 0; i < *(this + 6); ++i)
    {
      v6 = *(this[2] + i);
      if (*(v6 + 20))
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v6 + 8));
        v7 = v8 + 1;
        *(v6 + 16) = v8 + 1;
        if ((v8 + 1) >= 0x80)
        {
          v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((v8 + 1));
          goto LABEL_11;
        }
      }

      else
      {
        v7 = 0;
        *(v6 + 16) = 0;
      }

      v9 = 1;
LABEL_11:
      v4 += v7 + v9;
    }
  }

  v10 = *(this + 12);
  v11 = v10 + v4;
  if (v10 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = awd::metrics::LocationPeerRangingEstimatorConfiguration::ByteSize(*(this[5] + v12));
      v14 = v13;
      if (v13 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
      }

      else
      {
        v15 = 1;
      }

      v11 += v14 + v15;
      ++v12;
    }

    while (v12 < *(this + 12));
  }

  v16 = *(this + 18);
  v17 = v16 + v11;
  if (v16 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = awd::metrics::LocationPeerRangingMeasurementMetrics::ByteSize(*(this[8] + v18));
      v20 = v19;
      if (v19 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
      }

      else
      {
        v21 = 1;
      }

      v17 += v20 + v21;
      ++v18;
    }

    while (v18 < *(this + 18));
  }

  v22 = *(this + 24);
  v23 = v22 + v17;
  if (v22 >= 1)
  {
    v24 = 0;
    do
    {
      v25 = awd::metrics::LocationPeerRangingBurstMetrics::ByteSize(*(this[11] + v24));
      v26 = v25;
      if (v25 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
      }

      else
      {
        v27 = 1;
      }

      v23 += v26 + v27;
      ++v24;
    }

    while (v24 < *(this + 24));
  }

  v28 = *(this + 30);
  v29 = v28 + v23;
  if (v28 >= 1)
  {
    v30 = 0;
    do
    {
      v31 = awd::metrics::LocationPeerRangingEarlyTerminateMetrics::ByteSize(*(this[14] + v30));
      v32 = v31;
      if (v31 >= 0x80)
      {
        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
      }

      else
      {
        v33 = 1;
      }

      v29 += v32 + v33;
      ++v30;
    }

    while (v30 < *(this + 30));
  }

  v34 = *(this + 36);
  v35 = (v34 + v29);
  if (v34 >= 1)
  {
    v36 = 0;
    do
    {
      v37 = awd::metrics::LocationPeerRangingUnlockDecisionMetrics::ByteSize(*(this[17] + v36));
      v38 = v37;
      if (v37 >= 0x80)
      {
        v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
      }

      else
      {
        v39 = 1;
      }

      v35 = (v38 + v35 + v39);
      ++v36;
    }

    while (v36 < *(this + 36));
  }

  *(this + 40) = v35;
  return v35;
}

void awd::metrics::LocationPeerRangingMetrics::CheckTypeAndMergeFrom(awd::metrics::LocationPeerRangingMetrics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationPeerRangingMetrics::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationPeerRangingMetrics::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationPeerRangingMetrics::CopyFrom(awd::metrics::LocationPeerRangingMetrics *this, const awd::metrics::LocationPeerRangingMetrics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationPeerRangingMetrics::MergeFrom(this, a2);
  }
}

awd::metrics::LocationPeerRangingMetrics *awd::metrics::LocationPeerRangingMetrics::Swap(awd::metrics::LocationPeerRangingMetrics *this, awd::metrics::LocationPeerRangingMetrics *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 41);
    *(v3 + 41) = *(a2 + 41);
    *(a2 + 41) = v5;
    v6 = *(v3 + 40);
    *(v3 + 40) = *(a2 + 40);
    *(a2 + 40) = v6;
  }

  return this;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingDecision>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_296493634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingMetaData>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_2964936C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingMeasurementMetrics>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_29649375C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingBurstMetrics>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_2964937F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingEarlyTerminateMetrics>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_296493884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingUnlockDecisionMetrics>::TypeHandler>(uint64_t a1, int a2)
{
  if (*(a1 + 8) <= a2)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  return *(*a1 + 8 * a2);
}

void sub_296493918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingDecision>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingMetaData>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingEstimatorConfiguration>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingMeasurementMetrics>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingBurstMetrics>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingEarlyTerminateMetrics>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingUnlockDecisionMetrics>::TypeHandler>(uint64_t result)
{
  v1 = result;
  if (*(result + 8) >= 1)
  {
    v2 = 0;
    do
    {
      result = (*(**(*v1 + 8 * v2) + 32))(*(*v1 + 8 * v2));
      ++v2;
    }

    while (v2 < *(v1 + 8));
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingDecision>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingDecision>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingDecision>::TypeHandler>(a2, v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      awd::metrics::LocationPeerRangingDecision::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingMetaData>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingEstimatorConfiguration>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingMeasurementMetrics>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingBurstMetrics>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingEarlyTerminateMetrics>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingUnlockDecisionMetrics>::TypeHandler>(uint64_t *a1)
{
  v2 = *(a1 + 3);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 3);
      }
    }
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingMetaData>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingMetaData>::TypeHandler>(a2, v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      awd::metrics::LocationPeerRangingMetaData::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingMeasurementMetrics>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingMeasurementMetrics>::TypeHandler>(a2, v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      awd::metrics::LocationPeerRangingMeasurementMetrics::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingBurstMetrics>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingBurstMetrics>::TypeHandler>(a2, v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      awd::metrics::LocationPeerRangingBurstMetrics::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingEarlyTerminateMetrics>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingEarlyTerminateMetrics>::TypeHandler>(a2, v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      awd::metrics::LocationPeerRangingEarlyTerminateMetrics::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingUnlockDecisionMetrics>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::LocationPeerRangingUnlockDecisionMetrics>::TypeHandler>(a2, v5);
      v7 = *(a1 + 3);
      v8 = *(a1 + 2);
      if (v8 >= v7)
      {
        if (v7 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v7 = *(a1 + 3);
        }

        *(a1 + 3) = v7 + 1;
        operator new();
      }

      v9 = *a1;
      *(a1 + 2) = v8 + 1;
      awd::metrics::LocationPeerRangingUnlockDecisionMetrics::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

void awd::metrics::LocationEmergencySessionStatistics::MergeFrom()
{
  __assert_rtn("set_methodtype", "Location.pb.h", 23421, "::awd::metrics::LocationEmergencySessionStatistics_PositionMethod_IsValid(value)");
}

{
  __assert_rtn("set_sessiontype", "Location.pb.h", 23444, "::awd::metrics::LocationEmergencySessionStatistics_PositionSession_IsValid(value)");
}

{
  __assert_rtn("set_protocoltype", "Location.pb.h", 23467, "::awd::metrics::LocationEmergencySessionStatistics_PositionProtocol_IsValid(value)");
}

{
  __assert_rtn("set_rattype", "Location.pb.h", 23490, "::awd::metrics::LocationEmergencySessionStatistics_RadioAccessTechnology_IsValid(value)");
}

{
  __assert_rtn("set_requestedpositionreporttype", "Location.pb.h", 23645, "::awd::metrics::LocationEmergencySessionStatistics_PositionReport_IsValid(value)");
}

{
  __assert_rtn("set_errorcode", "Location.pb.h", 23712, "::awd::metrics::LocationEmergencySessionStatistics_SessionErrorCode_IsValid(value)");
}

{
  __assert_rtn("set_heloused", "Location.pb.h", 23779, "::awd::metrics::LocationEmergencySessionStatistics_HELOUsage_IsValid(value)");
}

{
  __assert_rtn("set_tandemcapability", "Location.pb.h", 24000, "::awd::metrics::LocationEmergencySessionStatistics_TandemCapability_IsValid(value)");
}

{
  __assert_rtn("set_phonenumbersavailable", "Location.pb.h", 24309, "::awd::metrics::LocationEmergencySessionStatistics_PhoneNumberAvailability_IsValid(value)");
}

{
  __assert_rtn("set_commtype", "Location.pb.h", 24486, "::awd::metrics::LocationEmergencySessionStatistics_CommunicationType_IsValid(value)");
}

{
  __assert_rtn("set_envtype", "Location.pb.h", 24509, "::awd::metrics::LocationEmergencySessionStatistics_GnssSignalEnvironmentType_IsValid(value)");
}

{
  __assert_rtn("set_abortcause", "Location.pb.h", 24554, "::awd::metrics::LocationEmergencySessionStatistics_AbortCauseType_IsValid(value)");
}

{
  __assert_rtn("set_supersededsessiontype", "Location.pb.h", 24577, "::awd::metrics::LocationEmergencySessionStatistics_PositionSession_IsValid(value)");
}

{
  __assert_rtn("set_supersededcommtype", "Location.pb.h", 24600, "::awd::metrics::LocationEmergencySessionStatistics_CommunicationType_IsValid(value)");
}

{
  __assert_rtn("set_discardedposmsgtype", "Location.pb.h", 25159, "::awd::metrics::LocationEmergencySessionStatistics_DiscardedPosMsgType_IsValid(value)");
}

{
  __assert_rtn("set_callmode", "Location.pb.h", 25248, "::awd::metrics::LocationEmergencySessionStatistics_CallMode_IsValid(value)");
}

{
  __assert_rtn("set_calltriggertype", "Location.pb.h", 25337, "::awd::metrics::LocationEmergencySessionStatistics_CallTriggerType_IsValid(value)");
}

{
  __assert_rtn("set_dsaavailability", "Location.pb.h", 25360, "::awd::metrics::LocationEmergencySessionStatistics_ADRFieldAvailability_IsValid(value)");
}

{
  __assert_rtn("set_nameavailability", "Location.pb.h", 25383, "::awd::metrics::LocationEmergencySessionStatistics_ADRFieldAvailability_IsValid(value)");
}

{
  __assert_rtn("set_ageavailability", "Location.pb.h", 25406, "::awd::metrics::LocationEmergencySessionStatistics_ADRFieldAvailability_IsValid(value)");
}

{
  __assert_rtn("set_weightavailability", "Location.pb.h", 25429, "::awd::metrics::LocationEmergencySessionStatistics_ADRFieldAvailability_IsValid(value)");
}

{
  __assert_rtn("set_heightavailability", "Location.pb.h", 25452, "::awd::metrics::LocationEmergencySessionStatistics_ADRFieldAvailability_IsValid(value)");
}

{
  __assert_rtn("set_bloodtypeavailability", "Location.pb.h", 25475, "::awd::metrics::LocationEmergencySessionStatistics_ADRFieldAvailability_IsValid(value)");
}

{
  __assert_rtn("set_medicalnotesavailability", "Location.pb.h", 25498, "::awd::metrics::LocationEmergencySessionStatistics_ADRFieldAvailability_IsValid(value)");
}

{
  __assert_rtn("set_allergydetailavailability", "Location.pb.h", 25521, "::awd::metrics::LocationEmergencySessionStatistics_ADRFieldAvailability_IsValid(value)");
}

{
  __assert_rtn("set_medicationsavailability", "Location.pb.h", 25544, "::awd::metrics::LocationEmergencySessionStatistics_ADRFieldAvailability_IsValid(value)");
}

{
  __assert_rtn("set_emergencycontactsavailability", "Location.pb.h", 25567, "::awd::metrics::LocationEmergencySessionStatistics_ADRFieldAvailability_IsValid(value)");
}

{
  __assert_rtn("set_medicalconditionsavailability", "Location.pb.h", 25590, "::awd::metrics::LocationEmergencySessionStatistics_ADRFieldAvailability_IsValid(value)");
}

void awd::metrics::CompassSession::MergeFrom()
{
  __assert_rtn("set_initstate", "Location.pb.h", 27221, "::awd::metrics::CompassSession_CalibrationLevel_IsValid(value)");
}

{
  __assert_rtn("set_coverkeyboardstate", "Location.pb.h", 27420, "::awd::metrics::CompassSession_CoverState_IsValid(value)");
}

void awd::metrics::MotionFitnessSession::MergeFrom()
{
  __assert_rtn("set_workouttype", "Location.pb.h", 28850, "::awd::metrics::MotionFitnessSession_WorkoutType_IsValid(value)");
}

{
  __assert_rtn("set_hrsource", "Location.pb.h", 29075, "::awd::metrics::MotionFitnessSession_HRSource_IsValid(value)");
}

{
  __assert_rtn("set_palestimationstatus", "Location.pb.h", 29120, "::awd::metrics::MotionFitnessSession_MotionCalibrationStatus_IsValid(value)");
}

{
  __assert_rtn("set_vo2maxestimationstatus", "Location.pb.h", 29143, "::awd::metrics::MotionFitnessSession_MotionCalibrationStatus_IsValid(value)");
}

{
  __assert_rtn("set_walkcalibrationstatus", "Location.pb.h", 29254, "::awd::metrics::MotionFitnessSession_StrideCalibrationStatus_IsValid(value)");
}

{
  __assert_rtn("set_runcalibrationstatus", "Location.pb.h", 29277, "::awd::metrics::MotionFitnessSession_StrideCalibrationStatus_IsValid(value)");
}

{
  __assert_rtn("set_activitytypewhenstopdisabled", "Location.pb.h", 30953, "::awd::metrics::MotionFitnessSession_WorkoutType_IsValid(value)");
}

{
  __assert_rtn("set_activitytypewhenstartdisabled", "Location.pb.h", 30976, "::awd::metrics::MotionFitnessSession_WorkoutType_IsValid(value)");
}

uint64_t awd::metrics::MotionPressureTemperature::MotionPressureTemperature(uint64_t *a1, void *a2, void *a3, uint64_t *a4)
{
  v7 = *a1;
  if (v7)
  {
    MEMORY[0x29C25A710](v7, 0x1000C8052888210);
  }

  if (*a2)
  {
    MEMORY[0x29C25A710](*a2, 0x1000C8052888210);
  }

  if (*a3)
  {
    MEMORY[0x29C25A710](*a3, 0x1000C8052888210);
  }

  result = *a4;
  if (*a4)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

void awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics::MergeFrom()
{
  __assert_rtn("set_last_gpsd_exit_category", "Location.pb.h", 39735, "::awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics_GpsdExitCategory_IsValid(value)");
}

{
  __assert_rtn("set_last_gpsd_exception_category", "Location.pb.h", 39934, "::awd::metrics::LocationGPSSessionStatistics_LocationGpsPersistentStatistics_GpsdExceptionCategory_IsValid(value)");
}

void awd::metrics::LocationGPSSessionStatistics::MergeFrom()
{
  __assert_rtn("set_ratoccupancy", "Location.pb.h", 41526, "::awd::metrics::LocationGPSSessionStatistics_RadioAccessTechnology_IsValid(value)");
}

{
  __assert_rtn("set_ephemerisfileintegritycheckresult", "Location.pb.h", 41800, "::awd::metrics::LocationGPSSessionStatistics_EphemerisFileIntegrityCheckType_IsValid(value)");
}

void awd::metrics::LocationVisibilityAssertion::MergeFrom()
{
  __assert_rtn("set_invalidationreason", "Location.pb.h", 44131, "::awd::metrics::LocationVisibilityAssertion_InvalidationReason_IsValid(value)");
}

{
  __assert_rtn("set_authorizationstate", "Location.pb.h", 44154, "::awd::metrics::LocationAuthorizationState_IsValid(value)");
}

void awd::metrics::LocationMobileAssetStatistics::MergeFrom()
{
  __assert_rtn("set_assetevent", "Location.pb.h", 44708, "::awd::metrics::LocationMobileAssetStatistics_AssetEvent_IsValid(value)");
}

{
  __assert_rtn("set_assettype", "Location.pb.h", 44731, "::awd::metrics::LocationMobileAssetStatistics_AssetType_IsValid(value)");
}

{
  __assert_rtn("set_component", "Location.pb.h", 44754, "::awd::metrics::LocationMobileAssetStatistics_AssetComponent_IsValid(value)");
}

void awd::metrics::LocationEmergencyPOIStatistics::MergeFrom()
{
  __assert_rtn("set_nearestpoisource", "Location.pb.h", 45283, "::awd::metrics::LocationEmergencyPOIStatistics_POISource_IsValid(value)");
}

{
  __assert_rtn("set_nearestpoitype", "Location.pb.h", 45306, "::awd::metrics::LocationEmergencyPOIStatistics_POIType_IsValid(value)");
}

{
  __assert_rtn("set_loiqueryresult", "Location.pb.h", 45373, "::awd::metrics::LocationEmergencyPOIStatistics_LOIQueryResult_IsValid(value)");
}

{
  __assert_rtn("set_submissiontype", "Location.pb.h", 45396, "::awd::metrics::LocationEmergencyPOIStatistics_SubmissionType_IsValid(value)");
}

{
  __assert_rtn("set_dsaresult", "Location.pb.h", 45419, "::awd::metrics::LocationEmergencyPOIStatistics_DSAResult_IsValid(value)");
}

uint64_t awd::metrics::LocationTileFileUsage::LocationTileFileUsage(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    JUMPOUT(0x29C25A710);
  }

  return result;
}

void awd::metrics::LocationMicroLocationClusteringByModel::MergeFrom()
{
  __assert_rtn("set_modeltype", "MicroLocation.pb.h", 2523, "::awd::metrics::LocationMicroLocationModelType_IsValid(value)");
}

{
  __assert_rtn("set_loitype", "MicroLocation.pb.h", 2571, "::awd::metrics::LOIType_IsValid(value)");
}

void awd::metrics::LocationMicroLocationUserEventStatistics::MergeFrom()
{
  __assert_rtn("set_loitype", "MicroLocation.pb.h", 2946, "::awd::metrics::LOIType_IsValid(value)");
}

{
  __assert_rtn("set_modeltype", "MicroLocation.pb.h", 3145, "::awd::metrics::LocationMicroLocationModelType_IsValid(value)");
}

void awd::metrics::LocationMicroLocationEventClusteringStatistics::MergeFrom()
{
  __assert_rtn("set_loitype", "MicroLocation.pb.h", 3172, "::awd::metrics::LOIType_IsValid(value)");
}

{
  __assert_rtn("set_modeltype", "MicroLocation.pb.h", 3195, "::awd::metrics::LocationMicroLocationModelType_IsValid(value)");
}

void awd::metrics::LocationMicroLocationModelState::MergeFrom()
{
  __assert_rtn("set_loitype", "MicroLocation.pb.h", 3384, "::awd::metrics::LOIType_IsValid(value)");
}

{
  __assert_rtn("set_generationalgorithm", "MicroLocation.pb.h", 3407, "::awd::metrics::LocationMicroLocationGenerationAlgorithm_IsValid(value)");
}

{
  __assert_rtn("set_modeltype", "MicroLocation.pb.h", 3474, "::awd::metrics::LocationMicroLocationModelType_IsValid(value)");
}

void awd::metrics::LocationMicroLocationClusteringStatistics::MergeFrom()
{
  __assert_rtn("set_loitype", "MicroLocation.pb.h", 3523, "::awd::metrics::LOIType_IsValid(value)");
}

{
  __assert_rtn("set_modeltype", "MicroLocation.pb.h", 3840, "::awd::metrics::LocationMicroLocationModelType_IsValid(value)");
}

uint64_t awd::metrics::LocationPeerRangingMeasurementMetrics::LocationPeerRangingMeasurementMetrics(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (v3)
  {
    MEMORY[0x29C25A710](v3, 0x1000C8000313F17);
  }

  result = *a2;
  if (*a2)
  {

    JUMPOUT(0x29C25A710);
  }

  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}