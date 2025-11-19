uint64_t awd::metrics::AvcSidecarVideoStream::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  v1 = this;
  v2 = *(this + 51);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
    v2 = *(v1 + 51);
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
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v1 + 2)) + 1;
    v2 = *(v1 + 51);
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v1 + 3)) + 1;
    v2 = *(v1 + 51);
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_55;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v1 + 4)) + 1;
  v2 = *(v1 + 51);
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v1 + 5)) + 1;
  v2 = *(v1 + 51);
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_68;
  }

LABEL_56:
  v23 = v1;
  v24 = *(v1 + 6);
  v25 = *(v24 + 23);
  v26 = v25;
  v27 = *(v24 + 8);
  if ((v25 & 0x80u) == 0)
  {
    v28 = *(v24 + 23);
  }

  else
  {
    v28 = v27;
  }

  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28);
    v25 = *(v24 + 23);
    v27 = *(v24 + 8);
    v2 = *(v23 + 51);
    v26 = *(v24 + 23);
  }

  else
  {
    v29 = 1;
  }

  v1 = v23;
  if (v26 < 0)
  {
    v25 = v27;
  }

  v3 += v29 + v25 + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_68:
  v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v1 + 7)) + 1;
  v2 = *(v1 + 51);
  if ((v2 & 0x80) != 0)
  {
LABEL_14:
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v1 + 8)) + 1;
    v2 = *(v1 + 51);
  }

LABEL_15:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_20;
  }

  if ((v2 & 0x100) != 0)
  {
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v1 + 9)) + 1;
    v2 = *(v1 + 51);
    if ((v2 & 0x200) == 0)
    {
LABEL_18:
      if ((v2 & 0x8000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_18;
  }

  v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v1 + 10)) + 1;
  v2 = *(v1 + 51);
  if ((v2 & 0x8000) != 0)
  {
LABEL_19:
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v1 + 21)) + 2;
    v2 = *(v1 + 51);
  }

LABEL_20:
  if ((v2 & 0x10000) != 0)
  {
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v1 + 22)) + 2;
  }

  LODWORD(v4) = *(v1 + 24);
  if (v4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v6 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(v1 + 11) + 8 * v5++));
      v4 = *(v1 + 24);
    }

    while (v5 < v4);
  }

  v32 = v4;
  LODWORD(v4) = *(v1 + 28);
  if (v4 < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v8 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(v1 + 13) + 8 * v7++));
      v4 = *(v1 + 28);
    }

    while (v7 < v4);
  }

  v31 = v4;
  LODWORD(v9) = *(v1 + 32);
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
      v11 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(v1 + 15) + 8 * v10++));
      v9 = *(v1 + 32);
    }

    while (v10 < v9);
  }

  LODWORD(v12) = *(v1 + 36);
  v33 = v6;
  if (v12 < 1)
  {
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v14 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(v1 + 17) + 8 * v13++));
      v12 = *(v1 + 36);
    }

    while (v13 < v12);
  }

  LODWORD(v15) = *(v1 + 40);
  if (v15 < 1)
  {
    v17 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v17 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(v1 + 19) + 8 * v16++));
      v15 = *(v1 + 40);
    }

    while (v16 < v15);
  }

  LODWORD(v18) = *(v1 + 48);
  if (v18 < 1)
  {
    v21 = 0;
  }

  else
  {
    v30 = v3;
    v19 = v1;
    v20 = 0;
    v21 = 0;
    do
    {
      v21 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(v19 + 23) + 8 * v20++));
      v18 = *(v19 + 48);
    }

    while (v20 < v18);
    v1 = v19;
    v3 = v30;
  }

  result = (v33 + v3 + v32 + v8 + v31 + v11 + v9 + v14 + v12 + v17 + v15 + v21 + 2 * v18);
  *(v1 + 50) = result;
  return result;
}

void awd::metrics::AvcSidecarVideoStream::CheckTypeAndMergeFrom(awd::metrics::AvcSidecarVideoStream *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::AvcSidecarVideoStream::CheckTypeAndMergeFrom();
  }

  awd::metrics::AvcSidecarVideoStream::MergeFrom(this, lpsrc);
}

void awd::metrics::AvcSidecarVideoStream::CopyFrom(awd::metrics::AvcSidecarVideoStream *this, const awd::metrics::AvcSidecarVideoStream *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::AvcSidecarVideoStream::MergeFrom(this, a2);
  }
}

double awd::metrics::AvcSidecarVideoStream::Swap(awd::metrics::AvcSidecarVideoStream *this, awd::metrics::AvcSidecarVideoStream *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    v7 = *(this + 6);
    v8 = *(a2 + 6);
    *(this + 5) = *(a2 + 5);
    *(this + 6) = v8;
    *(a2 + 5) = v6;
    *(a2 + 6) = v7;
    v9 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v9;
    v10 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v10;
    v11 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v11;
    v12 = *(this + 10);
    v13 = *(this + 11);
    v14 = *(a2 + 11);
    *(this + 10) = *(a2 + 10);
    *(this + 11) = v14;
    *(a2 + 10) = v12;
    *(a2 + 11) = v13;
    v15 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v15;
    v16 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v16;
    v17 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v17;
    v18 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v18;
    v19 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v19;
    v20 = *(this + 22);
    v21 = *(this + 23);
    v22 = *(a2 + 23);
    *(this + 22) = *(a2 + 22);
    *(this + 23) = v22;
    v23 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v23;
    v24 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v24;
    v25 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v25;
    v26 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v26;
    v27 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v27;
    result = *(a2 + 24);
    *(a2 + 22) = v20;
    *(a2 + 23) = v21;
    v29 = *(this + 24);
    *(this + 24) = result;
    *(a2 + 24) = v29;
    LODWORD(v20) = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = v20;
    LODWORD(v20) = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v20;
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::FaceTimeAudioTierReport_AudioTierCounter>::TypeHandler>(uint64_t result)
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

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::RTCSessionEndMetric_InterfaceStats>::TypeHandler>(uint64_t result)
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

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::FaceTimeCallAggregatedReport_SegmentStats>::TypeHandler>(uint64_t result)
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

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE31CB8, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

uint64_t *wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = *result;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v4 = 4;
    }

    *(result + 3) = v4;
    operator new[]();
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::FaceTimeAudioTierReport_AudioTierCounter>::TypeHandler>(uint64_t *a1)
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

    JUMPOUT(0x29C25A1D0);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::RTCSessionEndMetric_InterfaceStats>::TypeHandler>(uint64_t *a1)
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

    JUMPOUT(0x29C25A1D0);
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::FaceTimeCallAggregatedReport_SegmentStats>::TypeHandler>(uint64_t *a1)
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

    JUMPOUT(0x29C25A1D0);
  }

  return result;
}

uint64_t *wireless_diagnostics::google::protobuf::RepeatedField<unsigned long long>::Reserve(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = *result;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v4 = 4;
    }

    *(result + 3) = v4;
    operator new[]();
  }

  return result;
}

uint64_t awd::metrics::protobuf_ShutdownFile_HomeKitNetworking_2eproto(awd::metrics *this)
{
  result = awd::metrics::HomeKitIPCameraNetworkStatistics::default_instance_;
  if (awd::metrics::HomeKitIPCameraNetworkStatistics::default_instance_)
  {
    return (*(*awd::metrics::HomeKitIPCameraNetworkStatistics::default_instance_ + 8))();
  }

  return result;
}

void awd::metrics::protobuf_AddDesc_HomeKitNetworking_2eproto(awd::metrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((awd::metrics::protobuf_AddDesc_HomeKitNetworking_2eproto(void)::already_here & 1) == 0)
  {
    awd::metrics::protobuf_AddDesc_HomeKitNetworking_2eproto(void)::already_here = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "codegen/cpp/HomeKitNetworking.pb.cc", a4);
    operator new();
  }
}

double awd::metrics::HomeKitIPCameraNetworkStatistics::HomeKitIPCameraNetworkStatistics(awd::metrics::HomeKitIPCameraNetworkStatistics *this)
{
  *this = &unk_2A1D4E548;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  v2 = MEMORY[0x29EDC9758];
  *(this + 104) = 0u;
  *(this + 15) = v2;
  *(this + 16) = 0;
  *(this + 34) = 0;
  return result;
}

{
  *this = &unk_2A1D4E548;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  v2 = MEMORY[0x29EDC9758];
  *(this + 104) = 0u;
  *(this + 15) = v2;
  *(this + 16) = 0;
  *(this + 34) = 0;
  return result;
}

double awd::metrics::HomeKitIPCameraNetworkStatistics::SharedCtor(awd::metrics::HomeKitIPCameraNetworkStatistics *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 15) = MEMORY[0x29EDC9758];
  *(this + 16) = 0;
  *(this + 34) = 0;
  return result;
}

awd::metrics::HomeKitIPCameraNetworkStatistics *awd::metrics::HomeKitIPCameraNetworkStatistics::HomeKitIPCameraNetworkStatistics(awd::metrics::HomeKitIPCameraNetworkStatistics *this, const awd::metrics::HomeKitIPCameraNetworkStatistics *a2)
{
  *this = &unk_2A1D4E548;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = MEMORY[0x29EDC9758];
  *(this + 16) = 0;
  *(this + 34) = 0;
  awd::metrics::HomeKitIPCameraNetworkStatistics::MergeFrom(this, a2);
  return this;
}

void sub_2963F3890(_Unwind_Exception *a1)
{
  v7 = *(v1 + 13);
  if (v7)
  {
    MEMORY[0x29C25A1D0](v7, 0x1000C8052888210);
  }

  awd::metrics::HomeKitIPCameraNetworkStatistics::HomeKitIPCameraNetworkStatistics(v5, v4, v3, v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::HomeKitIPCameraNetworkStatistics::MergeFrom(awd::metrics::HomeKitIPCameraNetworkStatistics *this, const awd::metrics::HomeKitIPCameraNetworkStatistics *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
  }

  v4 = *(a2 + 12);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 5, *(this + 12) + v4);
    memcpy((*(this + 5) + 4 * *(this + 12)), *(a2 + 5), 4 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 7, *(this + 16) + v5);
    memcpy((*(this + 7) + 4 * *(this + 16)), *(a2 + 7), 4 * *(a2 + 16));
    *(this + 16) += *(a2 + 16);
  }

  v6 = *(a2 + 20);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 9, *(this + 20) + v6);
    memcpy((*(this + 9) + 4 * *(this + 20)), *(a2 + 9), 4 * *(a2 + 20));
    *(this + 20) += *(a2 + 20);
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 11, *(this + 24) + v7);
    memcpy((*(this + 11) + 4 * *(this + 24)), *(a2 + 11), 4 * *(a2 + 24));
    *(this + 24) += *(a2 + 24);
  }

  v8 = *(a2 + 28);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 13, *(this + 28) + v8);
    memcpy((*(this + 13) + 4 * *(this + 28)), *(a2 + 13), 4 * *(a2 + 28));
    *(this + 28) += *(a2 + 28);
  }

  v9 = *(a2 + 34);
  if (!v9)
  {
    goto LABEL_22;
  }

  if (v9)
  {
    v14 = *(a2 + 1);
    *(this + 34) |= 1u;
    *(this + 1) = v14;
    v9 = *(a2 + 34);
    if ((v9 & 2) == 0)
    {
LABEL_16:
      if ((v9 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_32;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 4);
  *(this + 34) |= 2u;
  *(this + 4) = v15;
  v9 = *(a2 + 34);
  if ((v9 & 4) == 0)
  {
LABEL_17:
    if ((v9 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = *(a2 + 5);
  *(this + 34) |= 4u;
  *(this + 5) = v16;
  v9 = *(a2 + 34);
  if ((v9 & 8) == 0)
  {
LABEL_18:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_19;
    }

LABEL_34:
    v18 = *(a2 + 7);
    *(this + 34) |= 0x10u;
    *(this + 7) = v18;
    v9 = *(a2 + 34);
    if ((v9 & 0x20) == 0)
    {
LABEL_20:
      if ((v9 & 0x40) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_35;
  }

LABEL_33:
  v17 = *(a2 + 6);
  *(this + 34) |= 8u;
  *(this + 6) = v17;
  v9 = *(a2 + 34);
  if ((v9 & 0x10) != 0)
  {
    goto LABEL_34;
  }

LABEL_19:
  if ((v9 & 0x20) == 0)
  {
    goto LABEL_20;
  }

LABEL_35:
  v19 = *(a2 + 8);
  *(this + 34) |= 0x20u;
  *(this + 8) = v19;
  v9 = *(a2 + 34);
  if ((v9 & 0x40) != 0)
  {
LABEL_21:
    v10 = *(a2 + 9);
    *(this + 34) |= 0x40u;
    *(this + 9) = v10;
    v9 = *(a2 + 34);
  }

LABEL_22:
  if ((v9 & 0xFF000) != 0)
  {
    if ((v9 & 0x1000) != 0)
    {
      v11 = *(a2 + 15);
      *(this + 34) |= 0x1000u;
      v12 = *(this + 15);
      if (v12 == MEMORY[0x29EDC9758])
      {
        operator new();
      }

      std::string::operator=(v12, v11);
      v9 = *(a2 + 34);
    }

    if ((v9 & 0x2000) != 0)
    {
      v13 = *(a2 + 32);
      *(this + 34) |= 0x2000u;
      *(this + 32) = v13;
    }
  }
}

void sub_2963F3C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::HomeKitIPCameraNetworkStatistics::~HomeKitIPCameraNetworkStatistics(awd::metrics::HomeKitIPCameraNetworkStatistics *this)
{
  *this = &unk_2A1D4E548;
  awd::metrics::HomeKitIPCameraNetworkStatistics::SharedDtor(this);
  v2 = *(this + 13);
  if (v2)
  {
    MEMORY[0x29C25A1D0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 11);
  if (v3)
  {
    MEMORY[0x29C25A1D0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 9);
  if (v4)
  {
    MEMORY[0x29C25A1D0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 7);
  if (v5)
  {
    MEMORY[0x29C25A1D0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 5);
  if (v6)
  {
    MEMORY[0x29C25A1D0](v6, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::HomeKitIPCameraNetworkStatistics::~HomeKitIPCameraNetworkStatistics(this);

  JUMPOUT(0x29C25A1F0);
}

uint64_t awd::metrics::HomeKitIPCameraNetworkStatistics::SharedDtor(uint64_t this)
{
  v1 = *(this + 120);
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

uint64_t awd::metrics::HomeKitIPCameraNetworkStatistics::default_instance(awd::metrics::HomeKitIPCameraNetworkStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::HomeKitIPCameraNetworkStatistics::default_instance_;
  if (!awd::metrics::HomeKitIPCameraNetworkStatistics::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_HomeKitNetworking_2eproto(0, a2, a3, a4);
    return awd::metrics::HomeKitIPCameraNetworkStatistics::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::HomeKitIPCameraNetworkStatistics::Clear(uint64_t this)
{
  v1 = *(this + 136);
  if (v1)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF000) != 0)
  {
    if ((v1 & 0x1000) != 0)
    {
      v2 = *(this + 120);
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

    *(this + 128) = 0;
  }

  *(this + 48) = 0;
  *(this + 64) = 0;
  *(this + 80) = 0;
  *(this + 96) = 0;
  *(this + 112) = 0;
  *(this + 136) = 0;
  return this;
}

uint64_t awd::metrics::HomeKitIPCameraNetworkStatistics::MergePartialFromCodedStream(awd::metrics::HomeKitIPCameraNetworkStatistics *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
LABEL_2:
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
          goto LABEL_47;
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

        *(this + 34) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v18 = v11 + 1;
          *(a2 + 1) = v18;
          goto LABEL_62;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_62:
        if (v18 >= v8 || (v26 = *v18, v26 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v27 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v26;
          v27 = v18 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 34) |= 2u;
        if (v27 >= v8 || *v27 != 24)
        {
          continue;
        }

        v16 = v27 + 1;
        *(a2 + 1) = v16;
LABEL_70:
        if (v16 >= v8 || (v28 = *v16, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v29 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v28;
          v29 = v16 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 34) |= 4u;
        if (v29 >= v8 || *v29 != 32)
        {
          continue;
        }

        v17 = v29 + 1;
        *(a2 + 1) = v17;
LABEL_78:
        if (v17 >= v8 || (v30 = *v17, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v30;
          v31 = v17 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 34) |= 8u;
        if (v31 >= v8 || *v31 != 40)
        {
          continue;
        }

        v15 = v31 + 1;
        *(a2 + 1) = v15;
LABEL_86:
        if (v15 >= v8 || (v32 = *v15, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v32;
          v33 = v15 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 34) |= 0x10u;
        if (v33 >= v8 || *v33 != 48)
        {
          continue;
        }

        v19 = v33 + 1;
        *(a2 + 1) = v19;
LABEL_94:
        if (v19 >= v8 || (v34 = *v19, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v34;
          v35 = v19 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 34) |= 0x20u;
        if (v35 >= v8 || *v35 != 56)
        {
          continue;
        }

        v20 = v35 + 1;
        *(a2 + 1) = v20;
LABEL_102:
        if (v20 >= v8 || (v36 = *v20, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v36;
          v37 = (v20 + 1);
          *(a2 + 1) = v37;
        }

        *(this + 34) |= 0x40u;
        if (v37 >= v8)
        {
          continue;
        }

        v38 = *v37;
        goto LABEL_109;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_70;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_78;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_86;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v19 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_94;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v20 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_102;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 40);
            if (!result)
            {
              return result;
            }

            goto LABEL_128;
          }

          goto LABEL_47;
        }

        v23 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v96 = 0;
          if (v23 >= v8 || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v96))
            {
              return 0;
            }
          }

          else
          {
            v96 = *v23;
            *(a2 + 1) = v23 + 1;
          }

          v39 = *(this + 12);
          if (v39 == *(this + 13))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 5, v39 + 1);
            v39 = *(this + 12);
          }

          v40 = v96;
          v41 = *(this + 5);
          *(this + 12) = v39 + 1;
          *(v41 + 4 * v39) = v40;
          v42 = *(this + 13) - *(this + 12);
          if (v42 >= 1)
          {
            v43 = v42 + 1;
            do
            {
              v44 = *(a2 + 1);
              v45 = *(a2 + 2);
              if (v44 >= v45 || *v44 != 64)
              {
                break;
              }

              *(a2 + 1) = v44 + 1;
              if ((v44 + 1) >= v45 || v44[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v96))
                {
                  return 0;
                }
              }

              else
              {
                v96 = v44[1];
                *(a2 + 1) = v44 + 2;
              }

              v46 = *(this + 12);
              if (v46 >= *(this + 13))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v97);
                v46 = *(this + 12);
              }

              v47 = v96;
              v48 = *(this + 5);
              *(this + 12) = v46 + 1;
              *(v48 + 4 * v46) = v47;
              --v43;
            }

            while (v43 > 1);
          }

LABEL_128:
          v37 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v37 >= v8)
          {
            goto LABEL_2;
          }

          v38 = *v37;
          if (v38 == 72)
          {
            goto LABEL_130;
          }

LABEL_109:
          if (v38 != 64)
          {
            goto LABEL_2;
          }

          v23 = (v37 + 1);
          *(a2 + 1) = v23;
        }

      case 9u:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 56);
            if (!result)
            {
              return result;
            }

            goto LABEL_148;
          }

          goto LABEL_47;
        }

        v25 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v96 = 0;
          if (v25 >= v8 || *v25 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v96))
            {
              return 0;
            }
          }

          else
          {
            v96 = *v25;
            *(a2 + 1) = v25 + 1;
          }

          v49 = *(this + 16);
          if (v49 == *(this + 17))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 7, v49 + 1);
            v49 = *(this + 16);
          }

          v50 = v96;
          v51 = *(this + 7);
          *(this + 16) = v49 + 1;
          *(v51 + 4 * v49) = v50;
          v52 = *(this + 17) - *(this + 16);
          if (v52 >= 1)
          {
            v53 = v52 + 1;
            do
            {
              v54 = *(a2 + 1);
              v55 = *(a2 + 2);
              if (v54 >= v55 || *v54 != 72)
              {
                break;
              }

              *(a2 + 1) = v54 + 1;
              if ((v54 + 1) >= v55 || v54[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v96))
                {
                  return 0;
                }
              }

              else
              {
                v96 = v54[1];
                *(a2 + 1) = v54 + 2;
              }

              v56 = *(this + 16);
              if (v56 >= *(this + 17))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v97);
                v56 = *(this + 16);
              }

              v57 = v96;
              v58 = *(this + 7);
              *(this + 16) = v56 + 1;
              *(v58 + 4 * v56) = v57;
              --v53;
            }

            while (v53 > 1);
          }

LABEL_148:
          v37 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v37 >= v8)
          {
            goto LABEL_2;
          }

          v59 = *v37;
          if (v59 == 80)
          {
            goto LABEL_152;
          }

          if (v59 != 72)
          {
            goto LABEL_2;
          }

LABEL_130:
          v25 = (v37 + 1);
          *(a2 + 1) = v25;
        }

      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 72);
            if (!result)
            {
              return result;
            }

            goto LABEL_170;
          }

          goto LABEL_47;
        }

        v22 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v96 = 0;
          if (v22 >= v8 || *v22 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v96))
            {
              return 0;
            }
          }

          else
          {
            v96 = *v22;
            *(a2 + 1) = v22 + 1;
          }

          v60 = *(this + 20);
          if (v60 == *(this + 21))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 9, v60 + 1);
            v60 = *(this + 20);
          }

          v61 = v96;
          v62 = *(this + 9);
          *(this + 20) = v60 + 1;
          *(v62 + 4 * v60) = v61;
          v63 = *(this + 21) - *(this + 20);
          if (v63 >= 1)
          {
            v64 = v63 + 1;
            do
            {
              v65 = *(a2 + 1);
              v66 = *(a2 + 2);
              if (v65 >= v66 || *v65 != 80)
              {
                break;
              }

              *(a2 + 1) = v65 + 1;
              if ((v65 + 1) >= v66 || v65[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v96))
                {
                  return 0;
                }
              }

              else
              {
                v96 = v65[1];
                *(a2 + 1) = v65 + 2;
              }

              v67 = *(this + 20);
              if (v67 >= *(this + 21))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v97);
                v67 = *(this + 20);
              }

              v68 = v96;
              v69 = *(this + 9);
              *(this + 20) = v67 + 1;
              *(v69 + 4 * v67) = v68;
              --v64;
            }

            while (v64 > 1);
          }

LABEL_170:
          v37 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v37 >= v8)
          {
            goto LABEL_2;
          }

          v70 = *v37;
          if (v70 == 88)
          {
            goto LABEL_174;
          }

          if (v70 != 80)
          {
            goto LABEL_2;
          }

LABEL_152:
          v22 = (v37 + 1);
          *(a2 + 1) = v22;
        }

      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 88);
            if (!result)
            {
              return result;
            }

            goto LABEL_192;
          }

          goto LABEL_47;
        }

        v24 = *(a2 + 1);
        v8 = *(a2 + 2);
        while (1)
        {
          v96 = 0;
          if (v24 >= v8 || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v96))
            {
              return 0;
            }
          }

          else
          {
            v96 = *v24;
            *(a2 + 1) = v24 + 1;
          }

          v71 = *(this + 24);
          if (v71 == *(this + 25))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 11, v71 + 1);
            v71 = *(this + 24);
          }

          v72 = v96;
          v73 = *(this + 11);
          *(this + 24) = v71 + 1;
          *(v73 + 4 * v71) = v72;
          v74 = *(this + 25) - *(this + 24);
          if (v74 >= 1)
          {
            v75 = v74 + 1;
            do
            {
              v76 = *(a2 + 1);
              v77 = *(a2 + 2);
              if (v76 >= v77 || *v76 != 88)
              {
                break;
              }

              *(a2 + 1) = v76 + 1;
              if ((v76 + 1) >= v77 || v76[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v96))
                {
                  return 0;
                }
              }

              else
              {
                v96 = v76[1];
                *(a2 + 1) = v76 + 2;
              }

              v78 = *(this + 24);
              if (v78 >= *(this + 25))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v97);
                v78 = *(this + 24);
              }

              v79 = v96;
              v80 = *(this + 11);
              *(this + 24) = v78 + 1;
              *(v80 + 4 * v78) = v79;
              --v75;
            }

            while (v75 > 1);
          }

LABEL_192:
          v37 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v37 >= v8)
          {
            goto LABEL_2;
          }

          v81 = *v37;
          if (v81 == 96)
          {
            goto LABEL_196;
          }

          if (v81 != 88)
          {
            goto LABEL_2;
          }

LABEL_174:
          v24 = (v37 + 1);
          *(a2 + 1) = v24;
        }

      case 0xCu:
        if ((TagFallback & 7) == 0)
        {
          v21 = *(a2 + 1);
          v8 = *(a2 + 2);
          while (1)
          {
            v96 = 0;
            if (v21 >= v8 || *v21 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v96))
              {
                return 0;
              }
            }

            else
            {
              v96 = *v21;
              *(a2 + 1) = v21 + 1;
            }

            v82 = *(this + 28);
            if (v82 == *(this + 29))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 13, v82 + 1);
              v82 = *(this + 28);
            }

            v83 = v96;
            v84 = *(this + 13);
            *(this + 28) = v82 + 1;
            *(v84 + 4 * v82) = v83;
            v85 = *(this + 29) - *(this + 28);
            if (v85 >= 1)
            {
              v86 = v85 + 1;
              do
              {
                v87 = *(a2 + 1);
                v88 = *(a2 + 2);
                if (v87 >= v88 || *v87 != 96)
                {
                  break;
                }

                *(a2 + 1) = v87 + 1;
                if ((v87 + 1) >= v88 || v87[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v96))
                  {
                    return 0;
                  }
                }

                else
                {
                  v96 = v87[1];
                  *(a2 + 1) = v87 + 2;
                }

                v89 = *(this + 28);
                if (v89 >= *(this + 29))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v97);
                  v89 = *(this + 28);
                }

                v90 = v96;
                v91 = *(this + 13);
                *(this + 28) = v89 + 1;
                *(v91 + 4 * v89) = v90;
                --v86;
              }

              while (v86 > 1);
            }

LABEL_214:
            v37 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v37 >= v8)
            {
              goto LABEL_2;
            }

            v92 = *v37;
            if (v92 == 106)
            {
              *(a2 + 1) = v37 + 1;
LABEL_219:
              *(this + 34) |= 0x1000u;
              if (*(this + 15) == v4)
              {
                operator new();
              }

              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              v93 = *(a2 + 1);
              v12 = *(a2 + 2);
              if (v12 - v93 >= 2 && *v93 == 152 && v93[1] == 6)
              {
                v13 = (v93 + 2);
                *(a2 + 1) = v13;
LABEL_226:
                if (v13 >= v12 || (v94 = *v13, v94 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
                  if (!result)
                  {
                    return result;
                  }

                  v95 = *(a2 + 1);
                  v12 = *(a2 + 2);
                }

                else
                {
                  *(this + 32) = v94;
                  v95 = v13 + 1;
                  *(a2 + 1) = v95;
                }

                *(this + 34) |= 0x2000u;
                if (v95 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }

              goto LABEL_2;
            }

            if (v92 != 96)
            {
              goto LABEL_2;
            }

LABEL_196:
            v21 = (v37 + 1);
            *(a2 + 1) = v21;
          }
        }

        if (v7 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 104);
          if (!result)
          {
            return result;
          }

          goto LABEL_214;
        }

LABEL_47:
        if (v7 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      case 0xDu:
        if (v7 == 2)
        {
          goto LABEL_219;
        }

        goto LABEL_47;
      default:
        if (TagFallback >> 3 != 99 || (TagFallback & 7) != 0)
        {
          goto LABEL_47;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_226;
    }
  }
}

void sub_2963F4AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::HomeKitIPCameraNetworkStatistics::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 136);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 136);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 136);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  if ((*(v5 + 136) & 0x40) != 0)
  {
LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  }

LABEL_9:
  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(*(v5 + 40) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 48));
  }

  if (*(v5 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(*(v5 + 56) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 64));
  }

  if (*(v5 + 80) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(*(v5 + 72) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 80));
  }

  if (*(v5 + 96) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(*(v5 + 88) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 96));
  }

  if (*(v5 + 112) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(*(v5 + 104) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 112));
  }

  v12 = *(v5 + 136);
  if ((v12 & 0x1000) != 0)
  {
    v13 = *(v5 + 120);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v12 = *(v5 + 136);
  }

  if ((v12 & 0x2000) != 0)
  {
    v14 = *(v5 + 128);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x63, v14, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::HomeKitIPCameraNetworkStatistics::ByteSize(awd::metrics::HomeKitIPCameraNetworkStatistics *this)
{
  v2 = *(this + 34);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_37;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 34);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 34);
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
      v2 = *(this + 34);
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
    if ((v2 & 8) == 0)
    {
LABEL_13:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(this + 6);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 34);
  }

  else
  {
    v9 = 2;
  }

  v3 += v9;
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_25:
  v10 = *(this + 7);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 34);
  }

  else
  {
    v11 = 2;
  }

  v3 += v11;
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_29:
  v12 = *(this + 8);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 34);
  }

  else
  {
    v13 = 2;
  }

  v3 += v13;
  if ((v2 & 0x40) != 0)
  {
LABEL_33:
    v14 = *(this + 9);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v2 = *(this + 34);
    }

    else
    {
      v15 = 2;
    }

    v3 += v15;
  }

LABEL_37:
  if ((v2 & 0xFF000) != 0)
  {
    if ((v2 & 0x1000) != 0)
    {
      v16 = *(this + 15);
      v17 = *(v16 + 23);
      v18 = v17;
      v19 = *(v16 + 8);
      if ((v17 & 0x80u) == 0)
      {
        v20 = *(v16 + 23);
      }

      else
      {
        v20 = v19;
      }

      if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
        v17 = *(v16 + 23);
        v19 = *(v16 + 8);
        v2 = *(this + 34);
        v18 = *(v16 + 23);
      }

      else
      {
        v21 = 1;
      }

      if (v18 < 0)
      {
        v17 = v19;
      }

      v3 += v21 + v17 + 1;
    }

    if ((v2 & 0x2000) != 0)
    {
      v22 = *(this + 32);
      if (v22 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 2;
      }

      else
      {
        v23 = 3;
      }

      v3 += v23;
    }
  }

  v24 = *(this + 12);
  if (v24 < 1)
  {
    v26 = 0;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = *(*(this + 5) + 4 * v25);
      if (v27 >= 0x80)
      {
        v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
        v24 = *(this + 12);
      }

      else
      {
        v28 = 1;
      }

      v26 += v28;
      ++v25;
    }

    while (v25 < v24);
  }

  v50 = v24;
  v29 = *(this + 16);
  if (v29 < 1)
  {
    v31 = 0;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = *(*(this + 7) + 4 * v30);
      if (v32 >= 0x80)
      {
        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32);
        v29 = *(this + 16);
      }

      else
      {
        v33 = 1;
      }

      v31 += v33;
      ++v30;
    }

    while (v30 < v29);
  }

  v34 = *(this + 20);
  if (v34 < 1)
  {
    v36 = 0;
  }

  else
  {
    v35 = 0;
    v36 = 0;
    do
    {
      v37 = *(*(this + 9) + 4 * v35);
      if (v37 >= 0x80)
      {
        v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
        v34 = *(this + 20);
      }

      else
      {
        v38 = 1;
      }

      v36 += v38;
      ++v35;
    }

    while (v35 < v34);
  }

  v39 = *(this + 24);
  if (v39 < 1)
  {
    v41 = 0;
  }

  else
  {
    v40 = 0;
    v41 = 0;
    do
    {
      v42 = *(*(this + 11) + 4 * v40);
      if (v42 >= 0x80)
      {
        v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42);
        v39 = *(this + 24);
      }

      else
      {
        v43 = 1;
      }

      v41 += v43;
      ++v40;
    }

    while (v40 < v39);
  }

  v51 = v3;
  v44 = *(this + 28);
  if (v44 < 1)
  {
    v46 = 0;
  }

  else
  {
    v45 = 0;
    v46 = 0;
    do
    {
      v47 = *(*(this + 13) + 4 * v45);
      if (v47 >= 0x80)
      {
        v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47);
        v44 = *(this + 28);
      }

      else
      {
        v48 = 1;
      }

      v46 += v48;
      ++v45;
    }

    while (v45 < v44);
  }

  result = (v26 + v51 + v50 + v31 + v29 + v36 + v34 + v41 + v39 + v46 + v44);
  *(this + 33) = result;
  return result;
}

void awd::metrics::HomeKitIPCameraNetworkStatistics::CheckTypeAndMergeFrom(awd::metrics::HomeKitIPCameraNetworkStatistics *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::HomeKitIPCameraNetworkStatistics::CheckTypeAndMergeFrom();
  }

  awd::metrics::HomeKitIPCameraNetworkStatistics::MergeFrom(this, lpsrc);
}

void awd::metrics::HomeKitIPCameraNetworkStatistics::CopyFrom(awd::metrics::HomeKitIPCameraNetworkStatistics *this, const awd::metrics::HomeKitIPCameraNetworkStatistics *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::HomeKitIPCameraNetworkStatistics::MergeFrom(this, a2);
  }
}

double awd::metrics::HomeKitIPCameraNetworkStatistics::Swap(awd::metrics::HomeKitIPCameraNetworkStatistics *this, awd::metrics::HomeKitIPCameraNetworkStatistics *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v2;
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
    v3 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    v4 = *(a2 + 6);
    *(a2 + 5) = v3;
    v5 = *(this + 6);
    *(this + 6) = v4;
    *(a2 + 6) = v5;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    v7 = *(a2 + 8);
    *(a2 + 7) = v6;
    v8 = *(this + 8);
    *(this + 8) = v7;
    *(a2 + 8) = v8;
    v9 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    v10 = *(a2 + 10);
    *(a2 + 9) = v9;
    v11 = *(this + 10);
    *(this + 10) = v10;
    *(a2 + 10) = v11;
    v12 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    v13 = *(a2 + 12);
    *(a2 + 11) = v12;
    v14 = *(this + 12);
    *(this + 12) = v13;
    *(a2 + 12) = v14;
    v15 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    result = *(a2 + 14);
    *(a2 + 13) = v15;
    v17 = *(this + 14);
    *(this + 14) = result;
    *(a2 + 14) = v17;
    v18 = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v18;
    LODWORD(v18) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v18;
    LODWORD(v18) = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v18;
    LODWORD(v18) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v18;
  }

  return result;
}

uint64_t awd::metrics::FaceTimeBasebandStats::FaceTimeBasebandStats(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = OUTLINED_FUNCTION_0(a1);
  if (v6)
  {
    MEMORY[0x29C25A1D0](v6, v3);
  }

  if (*a2)
  {
    MEMORY[0x29C25A1D0](*a2, v3);
  }

  result = *a3;
  if (*a3)
  {

    JUMPOUT(0x29C25A1D0);
  }

  return result;
}

uint64_t awd::metrics::FaceTimeVideoStatus::FaceTimeVideoStatus(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = OUTLINED_FUNCTION_0(a1);
  if (v6)
  {
    MEMORY[0x29C25A1D0](v6, v3);
  }

  if (*a2)
  {
    MEMORY[0x29C25A1D0](*a2, v3);
  }

  result = *a3;
  if (*a3)
  {

    JUMPOUT(0x29C25A1D0);
  }

  return result;
}

uint64_t awd::metrics::FaceTimeCallAggregatedReport::FaceTimeCallAggregatedReport(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v8 = OUTLINED_FUNCTION_0(a1);
  if (v8)
  {
    MEMORY[0x29C25A1D0](v8, v4);
  }

  if (*a2)
  {
    MEMORY[0x29C25A1D0](*a2, v4);
  }

  if (*a3)
  {
    MEMORY[0x29C25A1D0](*a3, v4);
  }

  result = *a4;
  if (*a4)
  {

    JUMPOUT(0x29C25A1D0);
  }

  return result;
}

uint64_t awd::metrics::HomeKitIPCameraNetworkStatistics::HomeKitIPCameraNetworkStatistics(uint64_t *a1, void *a2, void *a3, uint64_t *a4)
{
  v7 = *a1;
  if (v7)
  {
    MEMORY[0x29C25A1D0](v7, 0x1000C8052888210);
  }

  if (*a2)
  {
    MEMORY[0x29C25A1D0](*a2, 0x1000C8052888210);
  }

  if (*a3)
  {
    MEMORY[0x29C25A1D0](*a3, 0x1000C8052888210);
  }

  result = *a4;
  if (*a4)
  {

    JUMPOUT(0x29C25A1D0);
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