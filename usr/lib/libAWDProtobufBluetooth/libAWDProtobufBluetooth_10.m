void sub_2963A577C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo1::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 212))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(*(v5 + 16) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(*(v5 + 32) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 48) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(*(v5 + 64) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 80) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 88));
  }

  if (*(v5 + 104) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(*(v5 + 96) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 104));
  }

  if (*(v5 + 120) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(*(v5 + 112) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 120));
  }

  if (*(v5 + 136) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(*(v5 + 128) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 136));
  }

  if (*(v5 + 152) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(*(v5 + 144) + 4 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 152));
  }

  if (*(v5 + 168) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(*(v5 + 160) + 4 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 168));
  }

  if (*(v5 + 184) >= 1)
  {
    v16 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(*(v5 + 176) + 4 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 184));
  }

  v17 = *(v5 + 212);
  if ((v17 & 0x1000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 192), a2, a4);
    v17 = *(v5 + 212);
    if ((v17 & 0x2000) == 0)
    {
LABEL_38:
      if ((v17 & 0x4000) == 0)
      {
        goto LABEL_39;
      }

LABEL_43:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 200), a2, a4);
      if ((*(v5 + 212) & 0x8000) == 0)
      {
        return this;
      }

      goto LABEL_44;
    }
  }

  else if ((v17 & 0x2000) == 0)
  {
    goto LABEL_38;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 196), a2, a4);
  v17 = *(v5 + 212);
  if ((v17 & 0x4000) != 0)
  {
    goto LABEL_43;
  }

LABEL_39:
  if ((v17 & 0x8000) == 0)
  {
    return this;
  }

LABEL_44:
  v18 = *(v5 + 204);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, v18, a2, a4);
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo1::ByteSize(awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *this)
{
  v2 = *(this + 53);
  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xFF000) == 0)
  {
    goto LABEL_26;
  }

  if ((v2 & 0x1000) != 0)
  {
    v4 = *(this + 48);
    if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 53);
    }

    else
    {
      v5 = 2;
    }

    v3 += v5;
    if ((v2 & 0x2000) == 0)
    {
LABEL_7:
      if ((v2 & 0x4000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 0x2000) == 0)
  {
    goto LABEL_7;
  }

  v6 = *(this + 49);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v7 = 2;
  }

  v3 += v7;
  if ((v2 & 0x4000) == 0)
  {
LABEL_8:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_18:
  v8 = *(this + 50);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v9 = 2;
  }

  v3 += v9;
  if ((v2 & 0x8000) != 0)
  {
LABEL_22:
    v10 = *(this + 51);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 2;
    }

    else
    {
      v11 = 3;
    }

    v3 += v11;
  }

LABEL_26:
  v81 = v3;
  v12 = *(this + 6);
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
      v15 = *(*(this + 2) + 4 * v13);
      if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
        v12 = *(this + 6);
      }

      else
      {
        v16 = 1;
      }

      v14 += v16;
      ++v13;
    }

    while (v13 < v12);
  }

  v17 = *(this + 10);
  if (v17 < 1)
  {
    v19 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(*(this + 4) + 4 * v18);
      if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
        v17 = *(this + 10);
      }

      else
      {
        v21 = 1;
      }

      v19 += v21;
      ++v18;
    }

    while (v18 < v17);
  }

  v22 = *(this + 14);
  if (v22 < 1)
  {
    v24 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = *(*(this + 6) + 4 * v23);
      if (v25 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
        v22 = *(this + 14);
      }

      else
      {
        v26 = 1;
      }

      v24 += v26;
      ++v23;
    }

    while (v23 < v22);
  }

  v27 = *(this + 18);
  if (v27 < 1)
  {
    v29 = 0;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = *(*(this + 8) + 4 * v28);
      if (v30 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
        v27 = *(this + 18);
      }

      else
      {
        v31 = 1;
      }

      v29 += v31;
      ++v28;
    }

    while (v28 < v27);
  }

  v80 = v12;
  v32 = *(this + 22);
  if (v32 < 1)
  {
    v34 = 0;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = *(*(this + 10) + 4 * v33);
      if (v35 >= 0x80)
      {
        v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
        v32 = *(this + 22);
      }

      else
      {
        v36 = 1;
      }

      v34 += v36;
      ++v33;
    }

    while (v33 < v32);
  }

  v73 = v32;
  v76 = v22;
  v37 = *(this + 26);
  if (v37 < 1)
  {
    v39 = 0;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    do
    {
      v40 = *(*(this + 12) + 4 * v38);
      if (v40 >= 0x80)
      {
        v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40);
        v37 = *(this + 26);
      }

      else
      {
        v41 = 1;
      }

      v39 += v41;
      ++v38;
    }

    while (v38 < v37);
  }

  v72 = v37;
  v79 = v14;
  v42 = *(this + 30);
  if (v42 < 1)
  {
    v44 = 0;
  }

  else
  {
    v43 = 0;
    v44 = 0;
    do
    {
      v45 = *(*(this + 14) + 4 * v43);
      if (v45 >= 0x80)
      {
        v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45);
        v42 = *(this + 30);
      }

      else
      {
        v46 = 1;
      }

      v44 += v46;
      ++v43;
    }

    while (v43 < v42);
  }

  v71 = v42;
  v74 = v27;
  v47 = *(this + 34);
  if (v47 < 1)
  {
    v49 = 0;
  }

  else
  {
    v48 = 0;
    v49 = 0;
    do
    {
      v50 = *(*(this + 16) + 4 * v48);
      if (v50 >= 0x80)
      {
        v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50);
        v47 = *(this + 34);
      }

      else
      {
        v51 = 1;
      }

      v49 += v51;
      ++v48;
    }

    while (v48 < v47);
  }

  v70 = v47;
  v78 = v17;
  v52 = *(this + 38);
  if (v52 < 1)
  {
    v54 = 0;
  }

  else
  {
    v53 = 0;
    v54 = 0;
    do
    {
      v55 = *(*(this + 18) + 4 * v53);
      if (v55 >= 0x80)
      {
        v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55);
        v52 = *(this + 38);
      }

      else
      {
        v56 = 1;
      }

      v54 += v56;
      ++v53;
    }

    while (v53 < v52);
  }

  v69 = v52;
  v77 = v19;
  v57 = *(this + 42);
  if (v57 < 1)
  {
    v59 = 0;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    do
    {
      v60 = *(*(this + 20) + 4 * v58);
      if (v60 >= 0x80)
      {
        v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60);
        v57 = *(this + 42);
      }

      else
      {
        v61 = 1;
      }

      v59 += v61;
      ++v58;
    }

    while (v58 < v57);
  }

  v75 = v24;
  v62 = *(this + 46);
  v68 = v57;
  if (v62 < 1)
  {
    v64 = 0;
  }

  else
  {
    v63 = 0;
    v64 = 0;
    do
    {
      v65 = *(*(this + 22) + 4 * v63);
      if (v65 >= 0x80)
      {
        v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65);
        v62 = *(this + 46);
      }

      else
      {
        v66 = 1;
      }

      v64 += v66;
      ++v63;
    }

    while (v63 < v62);
  }

  result = (v79 + v81 + v80 + v77 + v78 + v75 + v76 + v29 + v74 + v34 + v73 + v39 + v72 + v44 + v71 + v49 + v70 + v54 + v69 + v59 + v68 + v64 + v62);
  *(this + 52) = result;
  return result;
}

void awd::metrics::BluetoothACIAudioVoiceLinkInfo1::CheckTypeAndMergeFrom(awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothACIAudioVoiceLinkInfo1::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothACIAudioVoiceLinkInfo1::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothACIAudioVoiceLinkInfo1::CopyFrom(awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *this, const awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothACIAudioVoiceLinkInfo1::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothACIAudioVoiceLinkInfo1::Swap(awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *this, awd::metrics::BluetoothACIAudioVoiceLinkInfo1 *a2)
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
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    v8 = *(a2 + 5);
    *(a2 + 4) = v7;
    v9 = *(this + 5);
    *(this + 5) = v8;
    *(a2 + 5) = v9;
    v10 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    v11 = *(a2 + 7);
    *(a2 + 6) = v10;
    v12 = *(this + 7);
    *(this + 7) = v11;
    *(a2 + 7) = v12;
    v13 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    v14 = *(a2 + 9);
    *(a2 + 8) = v13;
    v15 = *(this + 9);
    *(this + 9) = v14;
    *(a2 + 9) = v15;
    v16 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    v17 = *(a2 + 11);
    *(a2 + 10) = v16;
    v18 = *(this + 11);
    *(this + 11) = v17;
    *(a2 + 11) = v18;
    v19 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    v20 = *(a2 + 13);
    *(a2 + 12) = v19;
    v21 = *(this + 13);
    *(this + 13) = v20;
    *(a2 + 13) = v21;
    v22 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    v23 = *(a2 + 15);
    *(a2 + 14) = v22;
    v24 = *(this + 15);
    *(this + 15) = v23;
    *(a2 + 15) = v24;
    v25 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    v26 = *(a2 + 17);
    *(a2 + 16) = v25;
    v27 = *(this + 17);
    *(this + 17) = v26;
    *(a2 + 17) = v27;
    v28 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    v29 = *(a2 + 19);
    *(a2 + 18) = v28;
    v30 = *(this + 19);
    *(this + 19) = v29;
    *(a2 + 19) = v30;
    v31 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    v32 = *(a2 + 21);
    *(a2 + 20) = v31;
    v33 = *(this + 21);
    *(this + 21) = v32;
    *(a2 + 21) = v33;
    v34 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    result = *(a2 + 23);
    *(a2 + 22) = v34;
    v36 = *(this + 23);
    *(this + 23) = result;
    *(a2 + 23) = v36;
    LODWORD(v34) = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v34;
    LODWORD(v34) = *(this + 49);
    *(this + 49) = *(a2 + 49);
    *(a2 + 49) = v34;
    LODWORD(v34) = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v34;
    LODWORD(v34) = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = v34;
    LODWORD(v34) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v34;
    LODWORD(v34) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v34;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo2::SharedCtor(uint64_t this)
{
  *(this + 80) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *awd::metrics::BluetoothACIAudioVoiceLinkInfo2::BluetoothACIAudioVoiceLinkInfo2(awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *this, const awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *a2)
{
  *this = &unk_2A1D4BEE0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  awd::metrics::BluetoothACIAudioVoiceLinkInfo2::MergeFrom(this, a2);
  return this;
}

void sub_2963A63E0(_Unwind_Exception *a1)
{
  v3 = v1[8];
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  awd::metrics::BluetoothACIAudioVoiceLinkInfo2::BluetoothACIAudioVoiceLinkInfo2((v1 + 6), v1 + 4, v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIAudioVoiceLinkInfo2::MergeFrom(awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *this, const awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 10);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, *(this + 10) + v5);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, *(this + 14) + v6);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v7 = *(a2 + 18);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 18) + v7);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  if (*(a2 + 84))
  {
    v8 = *(a2 + 1);
    *(this + 21) |= 1u;
    *(this + 1) = v8;
  }
}

void sub_2963A65BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIAudioVoiceLinkInfo2::~BluetoothACIAudioVoiceLinkInfo2(awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *this)
{
  *this = &unk_2A1D4BEE0;
  v2 = *(this + 8);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 6);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 4);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 2);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothACIAudioVoiceLinkInfo2::~BluetoothACIAudioVoiceLinkInfo2(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo2::default_instance(awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothACIAudioVoiceLinkInfo2::default_instance_;
  if (!awd::metrics::BluetoothACIAudioVoiceLinkInfo2::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothACIAudioVoiceLinkInfo2::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo2::Clear(uint64_t this)
{
  if (*(this + 84))
  {
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 84) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo2::MergePartialFromCodedStream(awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 <= 2)
      {
        break;
      }

      switch(v6)
      {
        case 3u:
          if ((TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_65;
          }

          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 32);
            if (result)
            {
              goto LABEL_82;
            }

            return result;
          }

          break;
        case 4u:
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_87;
          }

          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 48);
            if (result)
            {
              goto LABEL_104;
            }

            return result;
          }

          break;
        case 5u:
          if ((TagFallback & 7) == 0)
          {
            v15 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_109;
          }

          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 64);
            if (result)
            {
              goto LABEL_126;
            }

            return result;
          }

          break;
      }

LABEL_29:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v6 != 1)
    {
      break;
    }

    if ((TagFallback & 7) != 0)
    {
      goto LABEL_29;
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

    *(this + 21) |= 1u;
    if (v12 < v9)
    {
      v17 = *v12;
      while (v17 == 16)
      {
        v16 = v12 + 1;
        *(a2 + 1) = v16;
LABEL_45:
        v60 = 0;
        if (v16 >= v9 || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v60))
          {
            return 0;
          }
        }

        else
        {
          v60 = *v16;
          *(a2 + 1) = v16 + 1;
        }

        v18 = *(this + 6);
        if (v18 == *(this + 7))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, v18 + 1);
          v18 = *(this + 6);
        }

        v19 = v60;
        v20 = *(this + 2);
        *(this + 6) = v18 + 1;
        *(v20 + 4 * v18) = v19;
        v21 = *(this + 7) - *(this + 6);
        if (v21 >= 1)
        {
          v22 = v21 + 1;
          do
          {
            v23 = *(a2 + 1);
            v24 = *(a2 + 2);
            if (v23 >= v24 || *v23 != 16)
            {
              break;
            }

            *(a2 + 1) = v23 + 1;
            if ((v23 + 1) >= v24 || v23[1] < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v60))
              {
                return 0;
              }
            }

            else
            {
              v60 = v23[1];
              *(a2 + 1) = v23 + 2;
            }

            v25 = *(this + 6);
            if (v25 >= *(this + 7))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v61);
              v25 = *(this + 6);
            }

            v26 = v60;
            v27 = *(this + 2);
            *(this + 6) = v25 + 1;
            *(v27 + 4 * v25) = v26;
            --v22;
          }

          while (v22 > 1);
        }

LABEL_62:
        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v12 >= v9)
        {
          break;
        }

        v17 = *v12;
        if (v17 == 24)
        {
          while (1)
          {
            v13 = v12 + 1;
            *(a2 + 1) = v13;
LABEL_65:
            v60 = 0;
            if (v13 >= v9 || *v13 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v60))
              {
                return 0;
              }
            }

            else
            {
              v60 = *v13;
              *(a2 + 1) = v13 + 1;
            }

            v28 = *(this + 10);
            if (v28 == *(this + 11))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v28 + 1);
              v28 = *(this + 10);
            }

            v29 = v60;
            v30 = *(this + 4);
            *(this + 10) = v28 + 1;
            *(v30 + 4 * v28) = v29;
            v31 = *(this + 11) - *(this + 10);
            if (v31 >= 1)
            {
              v32 = v31 + 1;
              do
              {
                v33 = *(a2 + 1);
                v34 = *(a2 + 2);
                if (v33 >= v34 || *v33 != 24)
                {
                  break;
                }

                *(a2 + 1) = v33 + 1;
                if ((v33 + 1) >= v34 || v33[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v60))
                  {
                    return 0;
                  }
                }

                else
                {
                  v60 = v33[1];
                  *(a2 + 1) = v33 + 2;
                }

                v35 = *(this + 10);
                if (v35 >= *(this + 11))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v61);
                  v35 = *(this + 10);
                }

                v36 = v60;
                v37 = *(this + 4);
                *(this + 10) = v35 + 1;
                *(v37 + 4 * v35) = v36;
                --v32;
              }

              while (v32 > 1);
            }

LABEL_82:
            v12 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v12 >= v9)
            {
              goto LABEL_1;
            }

            v38 = *v12;
            if (v38 == 32)
            {
              while (1)
              {
                v14 = v12 + 1;
                *(a2 + 1) = v14;
LABEL_87:
                v60 = 0;
                if (v14 >= v9 || *v14 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v60))
                  {
                    return 0;
                  }
                }

                else
                {
                  v60 = *v14;
                  *(a2 + 1) = v14 + 1;
                }

                v39 = *(this + 14);
                if (v39 == *(this + 15))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, v39 + 1);
                  v39 = *(this + 14);
                }

                v40 = v60;
                v41 = *(this + 6);
                *(this + 14) = v39 + 1;
                *(v41 + 4 * v39) = v40;
                v42 = *(this + 15) - *(this + 14);
                if (v42 >= 1)
                {
                  v43 = v42 + 1;
                  do
                  {
                    v44 = *(a2 + 1);
                    v45 = *(a2 + 2);
                    if (v44 >= v45 || *v44 != 32)
                    {
                      break;
                    }

                    *(a2 + 1) = v44 + 1;
                    if ((v44 + 1) >= v45 || v44[1] < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v60))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v60 = v44[1];
                      *(a2 + 1) = v44 + 2;
                    }

                    v46 = *(this + 14);
                    if (v46 >= *(this + 15))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v61);
                      v46 = *(this + 14);
                    }

                    v47 = v60;
                    v48 = *(this + 6);
                    *(this + 14) = v46 + 1;
                    *(v48 + 4 * v46) = v47;
                    --v43;
                  }

                  while (v43 > 1);
                }

LABEL_104:
                v12 = *(a2 + 1);
                v9 = *(a2 + 2);
                if (v12 >= v9)
                {
                  goto LABEL_1;
                }

                v49 = *v12;
                if (v49 == 40)
                {
                  do
                  {
                    v15 = v12 + 1;
                    *(a2 + 1) = v15;
LABEL_109:
                    v60 = 0;
                    if (v15 >= v9 || *v15 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v60))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v60 = *v15;
                      *(a2 + 1) = v15 + 1;
                    }

                    v50 = *(this + 18);
                    if (v50 == *(this + 19))
                    {
                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v50 + 1);
                      v50 = *(this + 18);
                    }

                    v51 = v60;
                    v52 = *(this + 8);
                    *(this + 18) = v50 + 1;
                    *(v52 + 4 * v50) = v51;
                    v53 = *(this + 19) - *(this + 18);
                    if (v53 >= 1)
                    {
                      v54 = v53 + 1;
                      do
                      {
                        v55 = *(a2 + 1);
                        v56 = *(a2 + 2);
                        if (v55 >= v56 || *v55 != 40)
                        {
                          break;
                        }

                        *(a2 + 1) = v55 + 1;
                        if ((v55 + 1) >= v56 || v55[1] < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v60))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v60 = v55[1];
                          *(a2 + 1) = v55 + 2;
                        }

                        v57 = *(this + 18);
                        if (v57 >= *(this + 19))
                        {
                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v61);
                          v57 = *(this + 18);
                        }

                        v58 = v60;
                        v59 = *(this + 8);
                        *(this + 18) = v57 + 1;
                        *(v59 + 4 * v57) = v58;
                        --v54;
                      }

                      while (v54 > 1);
                    }

LABEL_126:
                    v12 = *(a2 + 1);
                    v9 = *(a2 + 2);
                  }

                  while (v12 < v9 && *v12 == 40);
                  if (v12 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                  {
                    *(a2 + 8) = 0;
                    result = 1;
                    *(a2 + 36) = 1;
                    return result;
                  }

                  goto LABEL_1;
                }

                if (v49 != 32)
                {
                  goto LABEL_1;
                }
              }
            }

            if (v38 != 24)
            {
              goto LABEL_1;
            }
          }
        }
      }
    }
  }

  if (v6 != 2)
  {
    goto LABEL_29;
  }

  if ((TagFallback & 7) == 0)
  {
    v16 = *(a2 + 1);
    v9 = *(a2 + 2);
    goto LABEL_45;
  }

  if (v7 != 2)
  {
    goto LABEL_29;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 16);
  if (result)
  {
    goto LABEL_62;
  }

  return result;
}

void sub_2963A6ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo2::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 84))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(*(v5 + 16) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(*(v5 + 32) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 48) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(*(v5 + 64) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 72));
  }

  return this;
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo2::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 84))
  {
    v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 6);
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
      v6 = *(this[2] + v4);
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
        v3 = *(this + 6);
      }

      else
      {
        v7 = 1;
      }

      v5 += v7;
      ++v4;
    }

    while (v4 < v3);
  }

  v8 = *(this + 10);
  if (v8 < 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *(this[4] + v9);
      if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
        v8 = *(this + 10);
      }

      else
      {
        v12 = 1;
      }

      v10 += v12;
      ++v9;
    }

    while (v9 < v8);
  }

  v13 = *(this + 14);
  if (v13 < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(this[6] + v14);
      if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
        v13 = *(this + 14);
      }

      else
      {
        v17 = 1;
      }

      v15 += v17;
      ++v14;
    }

    while (v14 < v13);
  }

  v18 = *(this + 18);
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
      v21 = *(this[8] + v19);
      if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
        v18 = *(this + 18);
      }

      else
      {
        v22 = 1;
      }

      v20 += v22;
      ++v19;
    }

    while (v19 < v18);
  }

  result = (v5 + v2 + v3 + v10 + v8 + v15 + v13 + v20 + v18);
  *(this + 20) = result;
  return result;
}

void awd::metrics::BluetoothACIAudioVoiceLinkInfo2::CheckTypeAndMergeFrom(awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothACIAudioVoiceLinkInfo2::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothACIAudioVoiceLinkInfo2::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothACIAudioVoiceLinkInfo2::CopyFrom(awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *this, const awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothACIAudioVoiceLinkInfo2::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothACIAudioVoiceLinkInfo2::Swap(awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *this, awd::metrics::BluetoothACIAudioVoiceLinkInfo2 *a2)
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
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    v8 = *(a2 + 5);
    *(a2 + 4) = v7;
    v9 = *(this + 5);
    *(this + 5) = v8;
    *(a2 + 5) = v9;
    v10 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    v11 = *(a2 + 7);
    *(a2 + 6) = v10;
    v12 = *(this + 7);
    *(this + 7) = v11;
    *(a2 + 7) = v12;
    v13 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    result = *(a2 + 9);
    *(a2 + 8) = v13;
    v15 = *(this + 9);
    *(this + 9) = result;
    *(a2 + 9) = v15;
    LODWORD(v13) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v13;
    LODWORD(v13) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v13;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIReservedAwdInfo::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::BluetoothACIReservedAwdInfo *awd::metrics::BluetoothACIReservedAwdInfo::BluetoothACIReservedAwdInfo(awd::metrics::BluetoothACIReservedAwdInfo *this, const awd::metrics::BluetoothACIReservedAwdInfo *a2)
{
  *this = &unk_2A1D4BF58;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  awd::metrics::BluetoothACIReservedAwdInfo::MergeFrom(this, a2);
  return this;
}

void sub_2963A7400(_Unwind_Exception *a1)
{
  v3 = *(v1 + 2);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIReservedAwdInfo::MergeFrom(awd::metrics::BluetoothACIReservedAwdInfo *this, const awd::metrics::BluetoothACIReservedAwdInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  if (*(a2 + 36))
  {
    v5 = *(a2 + 1);
    *(this + 9) |= 1u;
    *(this + 1) = v5;
  }
}

void sub_2963A7500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIReservedAwdInfo::~BluetoothACIReservedAwdInfo(awd::metrics::BluetoothACIReservedAwdInfo *this)
{
  *this = &unk_2A1D4BF58;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothACIReservedAwdInfo::~BluetoothACIReservedAwdInfo(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothACIReservedAwdInfo::default_instance(awd::metrics::BluetoothACIReservedAwdInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothACIReservedAwdInfo::default_instance_;
  if (!awd::metrics::BluetoothACIReservedAwdInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothACIReservedAwdInfo::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIReservedAwdInfo::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothACIReservedAwdInfo::MergePartialFromCodedStream(awd::metrics::BluetoothACIReservedAwdInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v6 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_14;
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

      *(this + 9) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        do
        {
          v12 = v10 + 1;
          *(a2 + 1) = v12;
LABEL_25:
          v23 = 0;
          if (v12 >= v7 || *v12 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
            {
              return 0;
            }
          }

          else
          {
            v23 = *v12;
            *(a2 + 1) = v12 + 1;
          }

          v13 = *(this + 6);
          if (v13 == *(this + 7))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, v13 + 1);
            v13 = *(this + 6);
          }

          v14 = v23;
          v15 = *(this + 2);
          *(this + 6) = v13 + 1;
          *(v15 + 4 * v13) = v14;
          v16 = *(this + 7) - *(this + 6);
          if (v16 >= 1)
          {
            v17 = v16 + 1;
            do
            {
              v18 = *(a2 + 1);
              v19 = *(a2 + 2);
              if (v18 >= v19 || *v18 != 16)
              {
                break;
              }

              *(a2 + 1) = v18 + 1;
              if ((v18 + 1) >= v19 || v18[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
                {
                  return 0;
                }
              }

              else
              {
                v23 = v18[1];
                *(a2 + 1) = v18 + 2;
              }

              v20 = *(this + 6);
              if (v20 >= *(this + 7))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
                v20 = *(this + 6);
              }

              v21 = v23;
              v22 = *(this + 2);
              *(this + 6) = v20 + 1;
              *(v22 + 4 * v20) = v21;
              --v17;
            }

            while (v17 > 1);
          }

LABEL_42:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        while (v10 < v7 && *v10 == 16);
        if (v10 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v12 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_25;
    }

    if (v6 == 2)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 16);
      if (!result)
      {
        return result;
      }

      goto LABEL_42;
    }

LABEL_14:
    if (v6 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

void sub_2963A7938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothACIReservedAwdInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 36))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(*(v5 + 16) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  return this;
}

uint64_t awd::metrics::BluetoothACIReservedAwdInfo::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 36))
  {
    v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 6);
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
      v6 = *(this[2] + v4);
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
        v3 = *(this + 6);
      }

      else
      {
        v7 = 1;
      }

      v5 += v7;
      ++v4;
    }

    while (v4 < v3);
  }

  result = (v5 + v2 + v3);
  *(this + 8) = result;
  return result;
}

void awd::metrics::BluetoothACIReservedAwdInfo::CheckTypeAndMergeFrom(awd::metrics::BluetoothACIReservedAwdInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothACIReservedAwdInfo::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothACIReservedAwdInfo::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothACIReservedAwdInfo::CopyFrom(awd::metrics::BluetoothACIReservedAwdInfo *this, const awd::metrics::BluetoothACIReservedAwdInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothACIReservedAwdInfo::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothACIReservedAwdInfo::Swap(awd::metrics::BluetoothACIReservedAwdInfo *this, awd::metrics::BluetoothACIReservedAwdInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    v4 = *(a2 + 2);
    *(this + 1) = *(a2 + 1);
    *(this + 2) = v4;
    result = *(a2 + 3);
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v6 = *(this + 3);
    *(this + 3) = result;
    *(a2 + 3) = v6;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo1::SharedCtor(uint64_t this)
{
  *(this + 96) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::BluetoothACIMagnetLinkInfo1 *awd::metrics::BluetoothACIMagnetLinkInfo1::BluetoothACIMagnetLinkInfo1(awd::metrics::BluetoothACIMagnetLinkInfo1 *this, const awd::metrics::BluetoothACIMagnetLinkInfo1 *a2)
{
  *this = &unk_2A1D4BFD0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  awd::metrics::BluetoothACIMagnetLinkInfo1::MergeFrom(this, a2);
  return this;
}

void sub_2963A7C64(_Unwind_Exception *a1)
{
  v3 = v1[10];
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  awd::metrics::BluetoothACIMagnetLinkInfo1::BluetoothACIMagnetLinkInfo1((v1 + 8), v1 + 6, v1 + 4, v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIMagnetLinkInfo1::MergeFrom(awd::metrics::BluetoothACIMagnetLinkInfo1 *this, const awd::metrics::BluetoothACIMagnetLinkInfo1 *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 10);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, *(this + 10) + v5);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, *(this + 14) + v6);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v7 = *(a2 + 18);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 18) + v7);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v8 = *(a2 + 22);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, *(this + 22) + v8);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  if (*(a2 + 100))
  {
    v9 = *(a2 + 1);
    *(this + 25) |= 1u;
    *(this + 1) = v9;
  }
}

void sub_2963A7E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIMagnetLinkInfo1::~BluetoothACIMagnetLinkInfo1(awd::metrics::BluetoothACIMagnetLinkInfo1 *this)
{
  *this = &unk_2A1D4BFD0;
  v2 = *(this + 10);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 8);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 6);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 4);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 2);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothACIMagnetLinkInfo1::~BluetoothACIMagnetLinkInfo1(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo1::default_instance(awd::metrics::BluetoothACIMagnetLinkInfo1 *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothACIMagnetLinkInfo1::default_instance_;
  if (!awd::metrics::BluetoothACIMagnetLinkInfo1::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothACIMagnetLinkInfo1::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo1::Clear(uint64_t this)
{
  if (*(this + 100))
  {
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 100) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo1::MergePartialFromCodedStream(awd::metrics::BluetoothACIMagnetLinkInfo1 *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 == 2)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_51;
            }

            if (v7 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 16);
              if (!result)
              {
                return result;
              }

              goto LABEL_68;
            }
          }

          else if (v6 == 3)
          {
            if ((TagFallback & 7) == 0)
            {
              v14 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_71;
            }

            if (v7 == 2)
            {
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 32);
              if (!result)
              {
                return result;
              }

              goto LABEL_88;
            }
          }

          goto LABEL_35;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
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

        *(this + 25) |= 1u;
        if (v12 < v9)
        {
          v18 = *v12;
          while (v18 == 16)
          {
            v16 = v12 + 1;
            *(a2 + 1) = v16;
LABEL_51:
            v72 = 0;
            if (v16 >= v9 || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v72))
              {
                return 0;
              }
            }

            else
            {
              v72 = *v16;
              *(a2 + 1) = v16 + 1;
            }

            v19 = *(this + 6);
            if (v19 == *(this + 7))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, v19 + 1);
              v19 = *(this + 6);
            }

            v20 = v72;
            v21 = *(this + 2);
            *(this + 6) = v19 + 1;
            *(v21 + 4 * v19) = v20;
            v22 = *(this + 7) - *(this + 6);
            if (v22 >= 1)
            {
              v23 = v22 + 1;
              do
              {
                v24 = *(a2 + 1);
                v25 = *(a2 + 2);
                if (v24 >= v25 || *v24 != 16)
                {
                  break;
                }

                *(a2 + 1) = v24 + 1;
                if ((v24 + 1) >= v25 || v24[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v72))
                  {
                    return 0;
                  }
                }

                else
                {
                  v72 = v24[1];
                  *(a2 + 1) = v24 + 2;
                }

                v26 = *(this + 6);
                if (v26 >= *(this + 7))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v73);
                  v26 = *(this + 6);
                }

                v27 = v72;
                v28 = *(this + 2);
                *(this + 6) = v26 + 1;
                *(v28 + 4 * v26) = v27;
                --v23;
              }

              while (v23 > 1);
            }

LABEL_68:
            v12 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v12 >= v9)
            {
              break;
            }

            v18 = *v12;
            if (v18 == 24)
            {
              do
              {
                v14 = v12 + 1;
                *(a2 + 1) = v14;
LABEL_71:
                v72 = 0;
                if (v14 >= v9 || *v14 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v72))
                  {
                    return 0;
                  }
                }

                else
                {
                  v72 = *v14;
                  *(a2 + 1) = v14 + 1;
                }

                v29 = *(this + 10);
                if (v29 == *(this + 11))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v29 + 1);
                  v29 = *(this + 10);
                }

                v30 = v72;
                v31 = *(this + 4);
                *(this + 10) = v29 + 1;
                *(v31 + 4 * v29) = v30;
                v32 = *(this + 11) - *(this + 10);
                if (v32 >= 1)
                {
                  v33 = v32 + 1;
                  do
                  {
                    v34 = *(a2 + 1);
                    v35 = *(a2 + 2);
                    if (v34 >= v35 || *v34 != 24)
                    {
                      break;
                    }

                    *(a2 + 1) = v34 + 1;
                    if ((v34 + 1) >= v35 || v34[1] < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v72))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v72 = v34[1];
                      *(a2 + 1) = v34 + 2;
                    }

                    v36 = *(this + 10);
                    if (v36 >= *(this + 11))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v73);
                      v36 = *(this + 10);
                    }

                    v37 = v72;
                    v38 = *(this + 4);
                    *(this + 10) = v36 + 1;
                    *(v38 + 4 * v36) = v37;
                    --v33;
                  }

                  while (v33 > 1);
                }

LABEL_88:
                v12 = *(a2 + 1);
                v9 = *(a2 + 2);
                if (v12 >= v9)
                {
                  break;
                }

                v39 = *v12;
                if (v39 == 32)
                {
                  goto LABEL_92;
                }
              }

              while (v39 == 24);
              goto LABEL_1;
            }
          }
        }
      }

      if (v6 != 4)
      {
        if (v6 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v17 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_115;
          }

          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 64);
            if (!result)
            {
              return result;
            }

            goto LABEL_132;
          }
        }

        else if (v6 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_137;
          }

          if (v7 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 80);
            if (!result)
            {
              return result;
            }

            goto LABEL_154;
          }
        }

        goto LABEL_35;
      }

      if ((TagFallback & 7) != 0)
      {
        break;
      }

      v13 = *(a2 + 1);
      v9 = *(a2 + 2);
      while (1)
      {
        v72 = 0;
        if (v13 >= v9 || *v13 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v72))
          {
            return 0;
          }
        }

        else
        {
          v72 = *v13;
          *(a2 + 1) = v13 + 1;
        }

        v40 = *(this + 14);
        if (v40 == *(this + 15))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, v40 + 1);
          v40 = *(this + 14);
        }

        v41 = v72;
        v42 = *(this + 6);
        *(this + 14) = v40 + 1;
        *(v42 + 4 * v40) = v41;
        v43 = *(this + 15) - *(this + 14);
        if (v43 >= 1)
        {
          v44 = v43 + 1;
          do
          {
            v45 = *(a2 + 1);
            v46 = *(a2 + 2);
            if (v45 >= v46 || *v45 != 32)
            {
              break;
            }

            *(a2 + 1) = v45 + 1;
            if ((v45 + 1) >= v46 || v45[1] < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v72))
              {
                return 0;
              }
            }

            else
            {
              v72 = v45[1];
              *(a2 + 1) = v45 + 2;
            }

            v47 = *(this + 14);
            if (v47 >= *(this + 15))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v73);
              v47 = *(this + 14);
            }

            v48 = v72;
            v49 = *(this + 6);
            *(this + 14) = v47 + 1;
            *(v49 + 4 * v47) = v48;
            --v44;
          }

          while (v44 > 1);
        }

LABEL_110:
        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v12 >= v9)
        {
          break;
        }

        v50 = *v12;
        if (v50 == 40)
        {
          while (1)
          {
            v17 = v12 + 1;
            *(a2 + 1) = v17;
LABEL_115:
            v72 = 0;
            if (v17 >= v9 || *v17 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v72))
              {
                return 0;
              }
            }

            else
            {
              v72 = *v17;
              *(a2 + 1) = v17 + 1;
            }

            v51 = *(this + 18);
            if (v51 == *(this + 19))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v51 + 1);
              v51 = *(this + 18);
            }

            v52 = v72;
            v53 = *(this + 8);
            *(this + 18) = v51 + 1;
            *(v53 + 4 * v51) = v52;
            v54 = *(this + 19) - *(this + 18);
            if (v54 >= 1)
            {
              v55 = v54 + 1;
              do
              {
                v56 = *(a2 + 1);
                v57 = *(a2 + 2);
                if (v56 >= v57 || *v56 != 40)
                {
                  break;
                }

                *(a2 + 1) = v56 + 1;
                if ((v56 + 1) >= v57 || v56[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v72))
                  {
                    return 0;
                  }
                }

                else
                {
                  v72 = v56[1];
                  *(a2 + 1) = v56 + 2;
                }

                v58 = *(this + 18);
                if (v58 >= *(this + 19))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v73);
                  v58 = *(this + 18);
                }

                v59 = v72;
                v60 = *(this + 8);
                *(this + 18) = v58 + 1;
                *(v60 + 4 * v58) = v59;
                --v55;
              }

              while (v55 > 1);
            }

LABEL_132:
            v12 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v12 >= v9)
            {
              goto LABEL_1;
            }

            v61 = *v12;
            if (v61 == 48)
            {
              do
              {
                v15 = v12 + 1;
                *(a2 + 1) = v15;
LABEL_137:
                v72 = 0;
                if (v15 >= v9 || *v15 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v72))
                  {
                    return 0;
                  }
                }

                else
                {
                  v72 = *v15;
                  *(a2 + 1) = v15 + 1;
                }

                v62 = *(this + 22);
                if (v62 == *(this + 23))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, v62 + 1);
                  v62 = *(this + 22);
                }

                v63 = v72;
                v64 = *(this + 10);
                *(this + 22) = v62 + 1;
                *(v64 + 4 * v62) = v63;
                v65 = *(this + 23) - *(this + 22);
                if (v65 >= 1)
                {
                  v66 = v65 + 1;
                  do
                  {
                    v67 = *(a2 + 1);
                    v68 = *(a2 + 2);
                    if (v67 >= v68 || *v67 != 48)
                    {
                      break;
                    }

                    *(a2 + 1) = v67 + 1;
                    if ((v67 + 1) >= v68 || v67[1] < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v72))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v72 = v67[1];
                      *(a2 + 1) = v67 + 2;
                    }

                    v69 = *(this + 22);
                    if (v69 >= *(this + 23))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v73);
                      v69 = *(this + 22);
                    }

                    v70 = v72;
                    v71 = *(this + 10);
                    *(this + 22) = v69 + 1;
                    *(v71 + 4 * v69) = v70;
                    --v66;
                  }

                  while (v66 > 1);
                }

LABEL_154:
                v12 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              while (v12 < v9 && *v12 == 48);
              if (v12 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }

              goto LABEL_1;
            }

            if (v61 != 40)
            {
              goto LABEL_1;
            }
          }
        }

        if (v50 != 32)
        {
          goto LABEL_1;
        }

LABEL_92:
        v13 = v12 + 1;
        *(a2 + 1) = v13;
      }
    }

    if (v7 == 2)
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 48);
      if (!result)
      {
        return result;
      }

      goto LABEL_110;
    }

LABEL_35:
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

void sub_2963A8938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo1::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 100))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(*(v5 + 16) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(*(v5 + 32) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 48) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(*(v5 + 64) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 80) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 88));
  }

  return this;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo1::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 100))
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v29 = 0;
  }

  v2 = *(this + 6);
  if (v2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(this[2] + v3);
      if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
        v2 = *(this + 6);
      }

      else
      {
        v6 = 1;
      }

      v4 += v6;
      ++v3;
    }

    while (v3 < v2);
  }

  v7 = *(this + 10);
  if (v7 < 1)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(this[4] + v8);
      if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
        v7 = *(this + 10);
      }

      else
      {
        v11 = 1;
      }

      v9 += v11;
      ++v8;
    }

    while (v8 < v7);
  }

  v12 = *(this + 14);
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
      v15 = *(this[6] + v13);
      if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
        v12 = *(this + 14);
      }

      else
      {
        v16 = 1;
      }

      v14 += v16;
      ++v13;
    }

    while (v13 < v12);
  }

  v17 = *(this + 18);
  if (v17 < 1)
  {
    v19 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(this[8] + v18);
      if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
        v17 = *(this + 18);
      }

      else
      {
        v21 = 1;
      }

      v19 += v21;
      ++v18;
    }

    while (v18 < v17);
  }

  v28 = v2;
  v22 = *(this + 22);
  if (v22 < 1)
  {
    v24 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = *(this[10] + v23);
      if (v25 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
        v22 = *(this + 22);
      }

      else
      {
        v26 = 1;
      }

      v24 += v26;
      ++v23;
    }

    while (v23 < v22);
  }

  result = (v4 + v29 + v28 + v9 + v7 + v14 + v12 + v19 + v17 + v24 + v22);
  *(this + 24) = result;
  return result;
}

void awd::metrics::BluetoothACIMagnetLinkInfo1::CheckTypeAndMergeFrom(awd::metrics::BluetoothACIMagnetLinkInfo1 *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothACIMagnetLinkInfo1::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothACIMagnetLinkInfo1::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothACIMagnetLinkInfo1::CopyFrom(awd::metrics::BluetoothACIMagnetLinkInfo1 *this, const awd::metrics::BluetoothACIMagnetLinkInfo1 *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothACIMagnetLinkInfo1::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothACIMagnetLinkInfo1::Swap(awd::metrics::BluetoothACIMagnetLinkInfo1 *this, awd::metrics::BluetoothACIMagnetLinkInfo1 *a2)
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
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    v8 = *(a2 + 5);
    *(a2 + 4) = v7;
    v9 = *(this + 5);
    *(this + 5) = v8;
    *(a2 + 5) = v9;
    v10 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    v11 = *(a2 + 7);
    *(a2 + 6) = v10;
    v12 = *(this + 7);
    *(this + 7) = v11;
    *(a2 + 7) = v12;
    v13 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    v14 = *(a2 + 9);
    *(a2 + 8) = v13;
    v15 = *(this + 9);
    *(this + 9) = v14;
    *(a2 + 9) = v15;
    v16 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    result = *(a2 + 11);
    *(a2 + 10) = v16;
    v18 = *(this + 11);
    *(this + 11) = result;
    *(a2 + 11) = v18;
    LODWORD(v16) = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v16;
    LODWORD(v16) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v16;
  }

  return result;
}

void *awd::metrics::BluetoothACIMagnetLinkInfo2::SharedCtor(void *this)
{
  this[16] = 0;
  this[1] = 0;
  this[4] = 0;
  this[5] = 0;
  return this;
}

awd::metrics::BluetoothACIMagnetLinkInfo2 *awd::metrics::BluetoothACIMagnetLinkInfo2::BluetoothACIMagnetLinkInfo2(awd::metrics::BluetoothACIMagnetLinkInfo2 *this, const awd::metrics::BluetoothACIMagnetLinkInfo2 *a2)
{
  *this = &unk_2A1D4C048;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  awd::metrics::BluetoothACIMagnetLinkInfo2::MergeFrom(this, a2);
  return this;
}

void sub_2963A8F6C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 14);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 12);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(v1 + 10);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(v1 + 8);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(v1 + 6);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(v1 + 2);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIMagnetLinkInfo2::MergeFrom(awd::metrics::BluetoothACIMagnetLinkInfo2 *this, const awd::metrics::BluetoothACIMagnetLinkInfo2 *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 14);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, *(this + 14) + v5);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v6 = *(a2 + 18);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 18) + v6);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v7 = *(a2 + 22);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, *(this + 22) + v7);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v8 = *(a2 + 26);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 26) + v8);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  v9 = *(a2 + 30);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 14, *(this + 30) + v9);
    memcpy((*(this + 14) + 4 * *(this + 30)), *(a2 + 14), 4 * *(a2 + 30));
    *(this + 30) += *(a2 + 30);
  }

  LOBYTE(v10) = *(a2 + 132);
  if (v10)
  {
    if (*(a2 + 132))
    {
      v12 = *(a2 + 1);
      *(this + 33) |= 1u;
      *(this + 1) = v12;
      v10 = *(a2 + 33);
      if ((v10 & 4) == 0)
      {
LABEL_18:
        if ((v10 & 8) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_25;
      }
    }

    else if ((*(a2 + 132) & 4) == 0)
    {
      goto LABEL_18;
    }

    v13 = *(a2 + 8);
    *(this + 33) |= 4u;
    *(this + 8) = v13;
    v10 = *(a2 + 33);
    if ((v10 & 8) == 0)
    {
LABEL_19:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }

LABEL_25:
    v14 = *(a2 + 9);
    *(this + 33) |= 8u;
    *(this + 9) = v14;
    v10 = *(a2 + 33);
    if ((v10 & 0x10) == 0)
    {
LABEL_20:
      if ((v10 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_21;
    }

LABEL_26:
    v15 = *(a2 + 10);
    *(this + 33) |= 0x10u;
    *(this + 10) = v15;
    if ((*(a2 + 33) & 0x20) == 0)
    {
      return;
    }

LABEL_21:
    v11 = *(a2 + 11);
    *(this + 33) |= 0x20u;
    *(this + 11) = v11;
  }
}

void sub_2963A92A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIMagnetLinkInfo2::~BluetoothACIMagnetLinkInfo2(awd::metrics::BluetoothACIMagnetLinkInfo2 *this)
{
  *this = &unk_2A1D4C048;
  v2 = *(this + 14);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 12);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 10);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 8);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 6);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 2);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothACIMagnetLinkInfo2::~BluetoothACIMagnetLinkInfo2(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo2::default_instance(awd::metrics::BluetoothACIMagnetLinkInfo2 *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothACIMagnetLinkInfo2::default_instance_;
  if (!awd::metrics::BluetoothACIMagnetLinkInfo2::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothACIMagnetLinkInfo2::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo2::Clear(uint64_t this)
{
  if (*(this + 132))
  {
    *(this + 8) = 0;
    *(this + 32) = 0;
    *(this + 40) = 0;
  }

  *(this + 24) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 104) = 0;
  *(this + 120) = 0;
  *(this + 132) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo2::MergePartialFromCodedStream(awd::metrics::BluetoothACIMagnetLinkInfo2 *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
            if (v6 != 9)
            {
              if (v6 == 10)
              {
                if ((TagFallback & 7) == 0)
                {
                  v19 = *(a2 + 1);
                  v9 = *(a2 + 2);
                  goto LABEL_188;
                }

                if (v7 == 2)
                {
                  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 96);
                  if (!result)
                  {
                    return result;
                  }

                  goto LABEL_205;
                }
              }

              else if (v6 == 11)
              {
                if ((TagFallback & 7) == 0)
                {
                  v21 = *(a2 + 1);
                  v9 = *(a2 + 2);
                  goto LABEL_210;
                }

                if (v7 == 2)
                {
                  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 112);
                  if (!result)
                  {
                    return result;
                  }

                  goto LABEL_227;
                }
              }

              goto LABEL_54;
            }

            if ((TagFallback & 7) != 0)
            {
              if (v7 == 2)
              {
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 80);
                if (!result)
                {
                  return result;
                }

                goto LABEL_183;
              }

              goto LABEL_54;
            }

            v22 = *(a2 + 1);
            v9 = *(a2 + 2);
            while (1)
            {
              v96 = 0;
              if (v22 >= v9 || *v22 < 0)
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

              v64 = *(this + 22);
              if (v64 == *(this + 23))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, v64 + 1);
                v64 = *(this + 22);
              }

              v65 = v96;
              v66 = *(this + 10);
              *(this + 22) = v64 + 1;
              *(v66 + 4 * v64) = v65;
              v67 = *(this + 23) - *(this + 22);
              if (v67 >= 1)
              {
                v68 = v67 + 1;
                do
                {
                  v69 = *(a2 + 1);
                  v70 = *(a2 + 2);
                  if (v69 >= v70 || *v69 != 72)
                  {
                    break;
                  }

                  *(a2 + 1) = v69 + 1;
                  if ((v69 + 1) >= v70 || v69[1] < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v96))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v96 = v69[1];
                    *(a2 + 1) = v69 + 2;
                  }

                  v71 = *(this + 22);
                  if (v71 >= *(this + 23))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v97);
                    v71 = *(this + 22);
                  }

                  v72 = v96;
                  v73 = *(this + 10);
                  *(this + 22) = v71 + 1;
                  *(v73 + 4 * v71) = v72;
                  --v68;
                }

                while (v68 > 1);
              }

LABEL_183:
              v41 = *(a2 + 1);
              v9 = *(a2 + 2);
              if (v41 >= v9)
              {
                break;
              }

              v74 = *v41;
              if (v74 == 80)
              {
                while (1)
                {
                  v19 = v41 + 1;
                  *(a2 + 1) = v19;
LABEL_188:
                  v96 = 0;
                  if (v19 >= v9 || *v19 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v96))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v96 = *v19;
                    *(a2 + 1) = v19 + 1;
                  }

                  v75 = *(this + 26);
                  if (v75 == *(this + 27))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v75 + 1);
                    v75 = *(this + 26);
                  }

                  v76 = v96;
                  v77 = *(this + 12);
                  *(this + 26) = v75 + 1;
                  *(v77 + 4 * v75) = v76;
                  v78 = *(this + 27) - *(this + 26);
                  if (v78 >= 1)
                  {
                    v79 = v78 + 1;
                    do
                    {
                      v80 = *(a2 + 1);
                      v81 = *(a2 + 2);
                      if (v80 >= v81 || *v80 != 80)
                      {
                        break;
                      }

                      *(a2 + 1) = v80 + 1;
                      if ((v80 + 1) >= v81 || v80[1] < 0)
                      {
                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v96))
                        {
                          return 0;
                        }
                      }

                      else
                      {
                        v96 = v80[1];
                        *(a2 + 1) = v80 + 2;
                      }

                      v82 = *(this + 26);
                      if (v82 >= *(this + 27))
                      {
                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v97);
                        v82 = *(this + 26);
                      }

                      v83 = v96;
                      v84 = *(this + 12);
                      *(this + 26) = v82 + 1;
                      *(v84 + 4 * v82) = v83;
                      --v79;
                    }

                    while (v79 > 1);
                  }

LABEL_205:
                  v41 = *(a2 + 1);
                  v9 = *(a2 + 2);
                  if (v41 >= v9)
                  {
                    goto LABEL_1;
                  }

                  v85 = *v41;
                  if (v85 == 88)
                  {
                    do
                    {
                      v21 = v41 + 1;
                      *(a2 + 1) = v21;
LABEL_210:
                      v96 = 0;
                      if (v21 >= v9 || *v21 < 0)
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

                      v86 = *(this + 30);
                      if (v86 == *(this + 31))
                      {
                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 14, v86 + 1);
                        v86 = *(this + 30);
                      }

                      v87 = v96;
                      v88 = *(this + 14);
                      *(this + 30) = v86 + 1;
                      *(v88 + 4 * v86) = v87;
                      v89 = *(this + 31) - *(this + 30);
                      if (v89 >= 1)
                      {
                        v90 = v89 + 1;
                        do
                        {
                          v91 = *(a2 + 1);
                          v92 = *(a2 + 2);
                          if (v91 >= v92 || *v91 != 88)
                          {
                            break;
                          }

                          *(a2 + 1) = v91 + 1;
                          if ((v91 + 1) >= v92 || v91[1] < 0)
                          {
                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v96))
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v96 = v91[1];
                            *(a2 + 1) = v91 + 2;
                          }

                          v93 = *(this + 30);
                          if (v93 >= *(this + 31))
                          {
                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v97);
                            v93 = *(this + 30);
                          }

                          v94 = v96;
                          v95 = *(this + 14);
                          *(this + 30) = v93 + 1;
                          *(v95 + 4 * v93) = v94;
                          --v90;
                        }

                        while (v90 > 1);
                      }

LABEL_227:
                      v41 = *(a2 + 1);
                      v9 = *(a2 + 2);
                    }

                    while (v41 < v9 && *v41 == 88);
                    if (v41 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                    {
                      *(a2 + 8) = 0;
                      result = 1;
                      *(a2 + 36) = 1;
                      return result;
                    }

                    goto LABEL_1;
                  }

                  if (v85 != 80)
                  {
                    goto LABEL_1;
                  }
                }
              }

              if (v74 != 72)
              {
                goto LABEL_1;
              }

LABEL_165:
              v22 = v41 + 1;
              *(a2 + 1) = v22;
            }
          }

          else
          {
            if (v6 != 6)
            {
              if (v6 == 7)
              {
                if ((TagFallback & 7) == 0)
                {
                  v18 = *(a2 + 1);
                  v9 = *(a2 + 2);
                  goto LABEL_124;
                }

                if (v7 == 2)
                {
                  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 48);
                  if (!result)
                  {
                    return result;
                  }

                  goto LABEL_141;
                }
              }

              else if (v6 == 8)
              {
                if ((TagFallback & 7) == 0)
                {
                  v20 = *(a2 + 1);
                  v9 = *(a2 + 2);
                  goto LABEL_144;
                }

                if (v7 == 2)
                {
                  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 64);
                  if (!result)
                  {
                    return result;
                  }

                  goto LABEL_161;
                }
              }

              goto LABEL_54;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_54;
            }

            v16 = *(a2 + 1);
            v9 = *(a2 + 2);
LABEL_115:
            if (v16 >= v9 || (v40 = *v16, v40 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
              if (!result)
              {
                return result;
              }

              v41 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 11) = v40;
              v41 = v16 + 1;
              *(a2 + 1) = v41;
            }

            *(this + 33) |= 0x20u;
            if (v41 < v9)
            {
              v42 = *v41;
              while (v42 == 56)
              {
                v18 = v41 + 1;
                *(a2 + 1) = v18;
LABEL_124:
                v96 = 0;
                if (v18 >= v9 || *v18 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v96))
                  {
                    return 0;
                  }
                }

                else
                {
                  v96 = *v18;
                  *(a2 + 1) = v18 + 1;
                }

                v43 = *(this + 14);
                if (v43 == *(this + 15))
                {
                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, v43 + 1);
                  v43 = *(this + 14);
                }

                v44 = v96;
                v45 = *(this + 6);
                *(this + 14) = v43 + 1;
                *(v45 + 4 * v43) = v44;
                v46 = *(this + 15) - *(this + 14);
                if (v46 >= 1)
                {
                  v47 = v46 + 1;
                  do
                  {
                    v48 = *(a2 + 1);
                    v49 = *(a2 + 2);
                    if (v48 >= v49 || *v48 != 56)
                    {
                      break;
                    }

                    *(a2 + 1) = v48 + 1;
                    if ((v48 + 1) >= v49 || v48[1] < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v96))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v96 = v48[1];
                      *(a2 + 1) = v48 + 2;
                    }

                    v50 = *(this + 14);
                    if (v50 >= *(this + 15))
                    {
                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v97);
                      v50 = *(this + 14);
                    }

                    v51 = v96;
                    v52 = *(this + 6);
                    *(this + 14) = v50 + 1;
                    *(v52 + 4 * v50) = v51;
                    --v47;
                  }

                  while (v47 > 1);
                }

LABEL_141:
                v41 = *(a2 + 1);
                v9 = *(a2 + 2);
                if (v41 >= v9)
                {
                  break;
                }

                v42 = *v41;
                if (v42 == 64)
                {
                  do
                  {
                    v20 = v41 + 1;
                    *(a2 + 1) = v20;
LABEL_144:
                    v96 = 0;
                    if (v20 >= v9 || *v20 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v96))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v96 = *v20;
                      *(a2 + 1) = v20 + 1;
                    }

                    v53 = *(this + 18);
                    if (v53 == *(this + 19))
                    {
                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v53 + 1);
                      v53 = *(this + 18);
                    }

                    v54 = v96;
                    v55 = *(this + 8);
                    *(this + 18) = v53 + 1;
                    *(v55 + 4 * v53) = v54;
                    v56 = *(this + 19) - *(this + 18);
                    if (v56 >= 1)
                    {
                      v57 = v56 + 1;
                      do
                      {
                        v58 = *(a2 + 1);
                        v59 = *(a2 + 2);
                        if (v58 >= v59 || *v58 != 64)
                        {
                          break;
                        }

                        *(a2 + 1) = v58 + 1;
                        if ((v58 + 1) >= v59 || v58[1] < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v96))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v96 = v58[1];
                          *(a2 + 1) = v58 + 2;
                        }

                        v60 = *(this + 18);
                        if (v60 >= *(this + 19))
                        {
                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v97);
                          v60 = *(this + 18);
                        }

                        v61 = v96;
                        v62 = *(this + 8);
                        *(this + 18) = v60 + 1;
                        *(v62 + 4 * v60) = v61;
                        --v57;
                      }

                      while (v57 > 1);
                    }

LABEL_161:
                    v41 = *(a2 + 1);
                    v9 = *(a2 + 2);
                    if (v41 >= v9)
                    {
                      break;
                    }

                    v63 = *v41;
                    if (v63 == 72)
                    {
                      goto LABEL_165;
                    }
                  }

                  while (v63 == 64);
                  goto LABEL_1;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 == 3)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_54;
          }

          v15 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_91:
          if (v15 >= v9 || (v34 = *v15, v34 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
            if (!result)
            {
              return result;
            }

            v35 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 8) = v34;
            v35 = v15 + 1;
            *(a2 + 1) = v35;
          }

          *(this + 33) |= 4u;
          if (v35 < v9 && *v35 == 32)
          {
            v14 = v35 + 1;
            *(a2 + 1) = v14;
            goto LABEL_99;
          }
        }

        else
        {
          if (v6 != 4)
          {
            if (v6 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_54;
            }

            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_107;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_54;
          }

          v14 = *(a2 + 1);
          v9 = *(a2 + 2);
LABEL_99:
          if (v14 >= v9 || (v36 = *v14, v36 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
            if (!result)
            {
              return result;
            }

            v37 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 9) = v36;
            v37 = v14 + 1;
            *(a2 + 1) = v37;
          }

          *(this + 33) |= 8u;
          if (v37 < v9 && *v37 == 40)
          {
            v10 = v37 + 1;
            *(a2 + 1) = v10;
LABEL_107:
            if (v10 >= v9 || (v38 = *v10, v38 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
              if (!result)
              {
                return result;
              }

              v39 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 10) = v38;
              v39 = v10 + 1;
              *(a2 + 1) = v39;
            }

            *(this + 33) |= 0x10u;
            if (v39 < v9 && *v39 == 48)
            {
              v16 = v39 + 1;
              *(a2 + 1) = v16;
              goto LABEL_115;
            }
          }
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_54;
      }

      v11 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v11 >= v9 || (v12 = *v11, v12 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v12;
        v13 = (v11 + 1);
        *(a2 + 1) = v13;
      }

      *(this + 33) |= 1u;
      if (v13 < v9)
      {
        v23 = *v13;
        while (v23 == 16)
        {
          v17 = (v13 + 1);
          *(a2 + 1) = v17;
LABEL_71:
          v96 = 0;
          if (v17 >= v9 || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v96))
            {
              return 0;
            }
          }

          else
          {
            v96 = *v17;
            *(a2 + 1) = v17 + 1;
          }

          v24 = *(this + 6);
          if (v24 == *(this + 7))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, v24 + 1);
            v24 = *(this + 6);
          }

          v25 = v96;
          v26 = *(this + 2);
          *(this + 6) = v24 + 1;
          *(v26 + 4 * v24) = v25;
          v27 = *(this + 7) - *(this + 6);
          if (v27 >= 1)
          {
            v28 = v27 + 1;
            do
            {
              v29 = *(a2 + 1);
              v30 = *(a2 + 2);
              if (v29 >= v30 || *v29 != 16)
              {
                break;
              }

              *(a2 + 1) = v29 + 1;
              if ((v29 + 1) >= v30 || v29[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v96))
                {
                  return 0;
                }
              }

              else
              {
                v96 = v29[1];
                *(a2 + 1) = v29 + 2;
              }

              v31 = *(this + 6);
              if (v31 >= *(this + 7))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v97);
                v31 = *(this + 6);
              }

              v32 = v96;
              v33 = *(this + 2);
              *(this + 6) = v31 + 1;
              *(v33 + 4 * v31) = v32;
              --v28;
            }

            while (v28 > 1);
          }

LABEL_88:
          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
          if (v13 >= v9)
          {
            break;
          }

          v23 = *v13;
          if (v23 == 24)
          {
            v15 = (v13 + 1);
            *(a2 + 1) = v15;
            goto LABEL_91;
          }
        }
      }
    }

    if (v6 == 2)
    {
      if ((TagFallback & 7) == 0)
      {
        v17 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_71;
      }

      if (v7 == 2)
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 16);
        if (!result)
        {
          return result;
        }

        goto LABEL_88;
      }
    }

LABEL_54:
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

void sub_2963AA0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo2::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 132))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(*(v5 + 16) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  v7 = *(v5 + 132);
  if ((v7 & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 32), a2, a4);
    v7 = *(v5 + 132);
    if ((v7 & 8) == 0)
    {
LABEL_8:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  else if ((v7 & 8) == 0)
  {
    goto LABEL_8;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 36), a2, a4);
  v7 = *(v5 + 132);
  if ((v7 & 0x10) == 0)
  {
LABEL_9:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 40), a2, a4);
  if ((*(v5 + 132) & 0x20) != 0)
  {
LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 44), a2, a4);
  }

LABEL_11:
  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(*(v5 + 48) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(*(v5 + 64) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(*(v5 + 80) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 88));
  }

  if (*(v5 + 104) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(*(v5 + 96) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 104));
  }

  if (*(v5 + 120) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(*(v5 + 112) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 120));
  }

  return this;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo2::ByteSize(awd::metrics::BluetoothACIMagnetLinkInfo2 *this)
{
  LOBYTE(v2) = *(this + 132);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_27;
  }

  if (*(this + 132))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 33);
    if ((v2 & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 132) & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 8);
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
  if ((v2 & 8) != 0)
  {
    v6 = *(this + 9);
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
    if ((v2 & 0x10) == 0)
    {
LABEL_13:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(this + 10);
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
  if ((v2 & 0x20) != 0)
  {
LABEL_23:
    v10 = *(this + 11);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    }

    else
    {
      v11 = 2;
    }

    v3 += v11;
  }

LABEL_27:
  v46 = v3;
  v12 = *(this + 6);
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
      v15 = *(*(this + 2) + 4 * v13);
      if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
        v12 = *(this + 6);
      }

      else
      {
        v16 = 1;
      }

      v14 += v16;
      ++v13;
    }

    while (v13 < v12);
  }

  v17 = *(this + 14);
  if (v17 < 1)
  {
    v19 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(*(this + 6) + 4 * v18);
      if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
        v17 = *(this + 14);
      }

      else
      {
        v21 = 1;
      }

      v19 += v21;
      ++v18;
    }

    while (v18 < v17);
  }

  v22 = *(this + 18);
  if (v22 < 1)
  {
    v24 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
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

      v24 += v26;
      ++v23;
    }

    while (v23 < v22);
  }

  v27 = *(this + 22);
  if (v27 < 1)
  {
    v29 = 0;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = *(*(this + 10) + 4 * v28);
      if (v30 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
        v27 = *(this + 22);
      }

      else
      {
        v31 = 1;
      }

      v29 += v31;
      ++v28;
    }

    while (v28 < v27);
  }

  v44 = v17;
  v45 = v12;
  v32 = *(this + 26);
  if (v32 < 1)
  {
    v34 = 0;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = *(*(this + 12) + 4 * v33);
      if (v35 >= 0x80)
      {
        v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
        v32 = *(this + 26);
      }

      else
      {
        v36 = 1;
      }

      v34 += v36;
      ++v33;
    }

    while (v33 < v32);
  }

  v43 = v22;
  v37 = *(this + 30);
  if (v37 < 1)
  {
    v39 = 0;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    do
    {
      v40 = *(*(this + 14) + 4 * v38);
      if (v40 >= 0x80)
      {
        v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40);
        v37 = *(this + 30);
      }

      else
      {
        v41 = 1;
      }

      v39 += v41;
      ++v38;
    }

    while (v38 < v37);
  }

  result = (v14 + v46 + v45 + v19 + v44 + v24 + v43 + v29 + v27 + v34 + v32 + v39 + v37);
  *(this + 32) = result;
  return result;
}

void awd::metrics::BluetoothACIMagnetLinkInfo2::CheckTypeAndMergeFrom(awd::metrics::BluetoothACIMagnetLinkInfo2 *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothACIMagnetLinkInfo2::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothACIMagnetLinkInfo2::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothACIMagnetLinkInfo2::CopyFrom(awd::metrics::BluetoothACIMagnetLinkInfo2 *this, const awd::metrics::BluetoothACIMagnetLinkInfo2 *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothACIMagnetLinkInfo2::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothACIMagnetLinkInfo2::Swap(awd::metrics::BluetoothACIMagnetLinkInfo2 *this, awd::metrics::BluetoothACIMagnetLinkInfo2 *a2)
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
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    v8 = *(a2 + 7);
    *(a2 + 6) = v7;
    v9 = *(this + 7);
    *(this + 7) = v8;
    *(a2 + 7) = v9;
    v10 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    v11 = *(a2 + 9);
    *(a2 + 8) = v10;
    v12 = *(this + 9);
    *(this + 9) = v11;
    *(a2 + 9) = v12;
    v13 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    v14 = *(a2 + 11);
    *(a2 + 10) = v13;
    v15 = *(this + 11);
    *(this + 11) = v14;
    *(a2 + 11) = v15;
    v16 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    v17 = *(a2 + 13);
    *(a2 + 12) = v16;
    v18 = *(this + 13);
    *(this + 13) = v17;
    *(a2 + 13) = v18;
    v19 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    result = *(a2 + 15);
    *(a2 + 14) = v19;
    v21 = *(this + 15);
    *(this + 15) = result;
    *(a2 + 15) = v21;
    LODWORD(v19) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v19;
    LODWORD(v19) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v19;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo3::SharedCtor(uint64_t this)
{
  *(this + 208) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::BluetoothACIMagnetLinkInfo3 *awd::metrics::BluetoothACIMagnetLinkInfo3::BluetoothACIMagnetLinkInfo3(awd::metrics::BluetoothACIMagnetLinkInfo3 *this, const awd::metrics::BluetoothACIMagnetLinkInfo3 *a2)
{
  *this = &unk_2A1D4C0C0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  awd::metrics::BluetoothACIMagnetLinkInfo3::MergeFrom(this, a2);
  return this;
}

void sub_2963AA940(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 22);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(v1 + 20);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(v1 + 18);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(v1 + 16);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(v1 + 14);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(v1 + 12);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(v1 + 10);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(v1 + 8);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(v1 + 6);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  v13 = *(v1 + 4);
  if (v13)
  {
    MEMORY[0x29C259EE0](v13, 0x1000C8052888210);
  }

  v14 = *(v1 + 2);
  if (v14)
  {
    MEMORY[0x29C259EE0](v14, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIMagnetLinkInfo3::MergeFrom(awd::metrics::BluetoothACIMagnetLinkInfo3 *this, const awd::metrics::BluetoothACIMagnetLinkInfo3 *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  v5 = *(a2 + 10);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, *(this + 10) + v5);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, *(this + 14) + v6);
    memcpy((*(this + 6) + 4 * *(this + 14)), *(a2 + 6), 4 * *(a2 + 14));
    *(this + 14) += *(a2 + 14);
  }

  v7 = *(a2 + 18);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, *(this + 18) + v7);
    memcpy((*(this + 8) + 4 * *(this + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(this + 18) += *(a2 + 18);
  }

  v8 = *(a2 + 22);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, *(this + 22) + v8);
    memcpy((*(this + 10) + 4 * *(this + 22)), *(a2 + 10), 4 * *(a2 + 22));
    *(this + 22) += *(a2 + 22);
  }

  v9 = *(a2 + 26);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, *(this + 26) + v9);
    memcpy((*(this + 12) + 4 * *(this + 26)), *(a2 + 12), 4 * *(a2 + 26));
    *(this + 26) += *(a2 + 26);
  }

  v10 = *(a2 + 30);
  if (v10)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 14, *(this + 30) + v10);
    memcpy((*(this + 14) + 4 * *(this + 30)), *(a2 + 14), 4 * *(a2 + 30));
    *(this + 30) += *(a2 + 30);
  }

  v11 = *(a2 + 34);
  if (v11)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, *(this + 34) + v11);
    memcpy((*(this + 16) + 4 * *(this + 34)), *(a2 + 16), 4 * *(a2 + 34));
    *(this + 34) += *(a2 + 34);
  }

  v12 = *(a2 + 38);
  if (v12)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, *(this + 38) + v12);
    memcpy((*(this + 18) + 4 * *(this + 38)), *(a2 + 18), 4 * *(a2 + 38));
    *(this + 38) += *(a2 + 38);
  }

  v13 = *(a2 + 42);
  if (v13)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, *(this + 42) + v13);
    memcpy((*(this + 20) + 4 * *(this + 42)), *(a2 + 20), 4 * *(a2 + 42));
    *(this + 42) += *(a2 + 42);
  }

  v14 = *(a2 + 46);
  if (v14)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, *(this + 46) + v14);
    memcpy((*(this + 22) + 4 * *(this + 46)), *(a2 + 22), 4 * *(a2 + 46));
    *(this + 46) += *(a2 + 46);
  }

  v15 = *(a2 + 50);
  if (v15)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, *(this + 50) + v15);
    memcpy((*(this + 24) + 4 * *(this + 50)), *(a2 + 24), 4 * *(a2 + 50));
    *(this + 50) += *(a2 + 50);
  }

  if (*(a2 + 212))
  {
    v16 = *(a2 + 1);
    *(this + 53) |= 1u;
    *(this + 1) = v16;
  }
}

void sub_2963AADEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothACIMagnetLinkInfo3::~BluetoothACIMagnetLinkInfo3(awd::metrics::BluetoothACIMagnetLinkInfo3 *this)
{
  *this = &unk_2A1D4C0C0;
  v2 = *(this + 24);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 22);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 20);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 18);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 16);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  v7 = *(this + 14);
  if (v7)
  {
    MEMORY[0x29C259EE0](v7, 0x1000C8052888210);
  }

  v8 = *(this + 12);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, 0x1000C8052888210);
  }

  v9 = *(this + 10);
  if (v9)
  {
    MEMORY[0x29C259EE0](v9, 0x1000C8052888210);
  }

  v10 = *(this + 8);
  if (v10)
  {
    MEMORY[0x29C259EE0](v10, 0x1000C8052888210);
  }

  v11 = *(this + 6);
  if (v11)
  {
    MEMORY[0x29C259EE0](v11, 0x1000C8052888210);
  }

  v12 = *(this + 4);
  if (v12)
  {
    MEMORY[0x29C259EE0](v12, 0x1000C8052888210);
  }

  v13 = *(this + 2);
  if (v13)
  {
    MEMORY[0x29C259EE0](v13, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothACIMagnetLinkInfo3::~BluetoothACIMagnetLinkInfo3(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo3::default_instance(awd::metrics::BluetoothACIMagnetLinkInfo3 *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothACIMagnetLinkInfo3::default_instance_;
  if (!awd::metrics::BluetoothACIMagnetLinkInfo3::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothACIMagnetLinkInfo3::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo3::Clear(uint64_t this)
{
  if (*(this + 212))
  {
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 56) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 104) = 0;
  *(this + 120) = 0;
  *(this + 136) = 0;
  *(this + 152) = 0;
  *(this + 168) = 0;
  *(this + 184) = 0;
  *(this + 200) = 0;
  *(this + 212) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo3::MergePartialFromCodedStream(awd::metrics::BluetoothACIMagnetLinkInfo3 *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
LABEL_1:
  while (2)
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

    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_57;
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

        *(this + 53) |= 1u;
        if (v10 >= v7)
        {
          continue;
        }

        v24 = *v10;
        goto LABEL_78;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 16);
            if (!result)
            {
              return result;
            }

            goto LABEL_97;
          }

          goto LABEL_57;
        }

        v19 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v155 = 0;
          if (v19 >= v7 || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
            {
              return 0;
            }
          }

          else
          {
            v155 = *v19;
            *(a2 + 1) = v19 + 1;
          }

          v25 = *(this + 6);
          if (v25 == *(this + 7))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 2, v25 + 1);
            v25 = *(this + 6);
          }

          v26 = v155;
          v27 = *(this + 2);
          *(this + 6) = v25 + 1;
          *(v27 + 4 * v25) = v26;
          v28 = *(this + 7) - *(this + 6);
          if (v28 >= 1)
          {
            v29 = v28 + 1;
            do
            {
              v30 = *(a2 + 1);
              v31 = *(a2 + 2);
              if (v30 >= v31 || *v30 != 16)
              {
                break;
              }

              *(a2 + 1) = v30 + 1;
              if ((v30 + 1) >= v31 || v30[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
                {
                  return 0;
                }
              }

              else
              {
                v155 = v30[1];
                *(a2 + 1) = v30 + 2;
              }

              v32 = *(this + 6);
              if (v32 >= *(this + 7))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v156);
                v32 = *(this + 6);
              }

              v33 = v155;
              v34 = *(this + 2);
              *(this + 6) = v32 + 1;
              *(v34 + 4 * v32) = v33;
              --v29;
            }

            while (v29 > 1);
          }

LABEL_97:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v24 = *v10;
          if (v24 == 24)
          {
            goto LABEL_99;
          }

LABEL_78:
          if (v24 != 16)
          {
            goto LABEL_1;
          }

          v19 = v10 + 1;
          *(a2 + 1) = v19;
        }

      case 3u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 32);
            if (!result)
            {
              return result;
            }

            goto LABEL_117;
          }

          goto LABEL_57;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v155 = 0;
          if (v16 >= v7 || *v16 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
            {
              return 0;
            }
          }

          else
          {
            v155 = *v16;
            *(a2 + 1) = v16 + 1;
          }

          v35 = *(this + 10);
          if (v35 == *(this + 11))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v35 + 1);
            v35 = *(this + 10);
          }

          v36 = v155;
          v37 = *(this + 4);
          *(this + 10) = v35 + 1;
          *(v37 + 4 * v35) = v36;
          v38 = *(this + 11) - *(this + 10);
          if (v38 >= 1)
          {
            v39 = v38 + 1;
            do
            {
              v40 = *(a2 + 1);
              v41 = *(a2 + 2);
              if (v40 >= v41 || *v40 != 24)
              {
                break;
              }

              *(a2 + 1) = v40 + 1;
              if ((v40 + 1) >= v41 || v40[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
                {
                  return 0;
                }
              }

              else
              {
                v155 = v40[1];
                *(a2 + 1) = v40 + 2;
              }

              v42 = *(this + 10);
              if (v42 >= *(this + 11))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v156);
                v42 = *(this + 10);
              }

              v43 = v155;
              v44 = *(this + 4);
              *(this + 10) = v42 + 1;
              *(v44 + 4 * v42) = v43;
              --v39;
            }

            while (v39 > 1);
          }

LABEL_117:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v45 = *v10;
          if (v45 == 32)
          {
            goto LABEL_121;
          }

          if (v45 != 24)
          {
            goto LABEL_1;
          }

LABEL_99:
          v16 = v10 + 1;
          *(a2 + 1) = v16;
        }

      case 4u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 48);
            if (!result)
            {
              return result;
            }

            goto LABEL_139;
          }

          goto LABEL_57;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v155 = 0;
          if (v17 >= v7 || *v17 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
            {
              return 0;
            }
          }

          else
          {
            v155 = *v17;
            *(a2 + 1) = v17 + 1;
          }

          v46 = *(this + 14);
          if (v46 == *(this + 15))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, v46 + 1);
            v46 = *(this + 14);
          }

          v47 = v155;
          v48 = *(this + 6);
          *(this + 14) = v46 + 1;
          *(v48 + 4 * v46) = v47;
          v49 = *(this + 15) - *(this + 14);
          if (v49 >= 1)
          {
            v50 = v49 + 1;
            do
            {
              v51 = *(a2 + 1);
              v52 = *(a2 + 2);
              if (v51 >= v52 || *v51 != 32)
              {
                break;
              }

              *(a2 + 1) = v51 + 1;
              if ((v51 + 1) >= v52 || v51[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
                {
                  return 0;
                }
              }

              else
              {
                v155 = v51[1];
                *(a2 + 1) = v51 + 2;
              }

              v53 = *(this + 14);
              if (v53 >= *(this + 15))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v156);
                v53 = *(this + 14);
              }

              v54 = v155;
              v55 = *(this + 6);
              *(this + 14) = v53 + 1;
              *(v55 + 4 * v53) = v54;
              --v50;
            }

            while (v50 > 1);
          }

LABEL_139:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v56 = *v10;
          if (v56 == 40)
          {
            goto LABEL_143;
          }

          if (v56 != 32)
          {
            goto LABEL_1;
          }

LABEL_121:
          v17 = v10 + 1;
          *(a2 + 1) = v17;
        }

      case 5u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 64);
            if (!result)
            {
              return result;
            }

            goto LABEL_161;
          }

          goto LABEL_57;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v155 = 0;
          if (v13 >= v7 || *v13 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
            {
              return 0;
            }
          }

          else
          {
            v155 = *v13;
            *(a2 + 1) = v13 + 1;
          }

          v57 = *(this + 18);
          if (v57 == *(this + 19))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 8, v57 + 1);
            v57 = *(this + 18);
          }

          v58 = v155;
          v59 = *(this + 8);
          *(this + 18) = v57 + 1;
          *(v59 + 4 * v57) = v58;
          v60 = *(this + 19) - *(this + 18);
          if (v60 >= 1)
          {
            v61 = v60 + 1;
            do
            {
              v62 = *(a2 + 1);
              v63 = *(a2 + 2);
              if (v62 >= v63 || *v62 != 40)
              {
                break;
              }

              *(a2 + 1) = v62 + 1;
              if ((v62 + 1) >= v63 || v62[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
                {
                  return 0;
                }
              }

              else
              {
                v155 = v62[1];
                *(a2 + 1) = v62 + 2;
              }

              v64 = *(this + 18);
              if (v64 >= *(this + 19))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v156);
                v64 = *(this + 18);
              }

              v65 = v155;
              v66 = *(this + 8);
              *(this + 18) = v64 + 1;
              *(v66 + 4 * v64) = v65;
              --v61;
            }

            while (v61 > 1);
          }

LABEL_161:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v67 = *v10;
          if (v67 == 48)
          {
            goto LABEL_165;
          }

          if (v67 != 40)
          {
            goto LABEL_1;
          }

LABEL_143:
          v13 = v10 + 1;
          *(a2 + 1) = v13;
        }

      case 6u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 80);
            if (!result)
            {
              return result;
            }

            goto LABEL_183;
          }

          goto LABEL_57;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v155 = 0;
          if (v20 >= v7 || *v20 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
            {
              return 0;
            }
          }

          else
          {
            v155 = *v20;
            *(a2 + 1) = v20 + 1;
          }

          v68 = *(this + 22);
          if (v68 == *(this + 23))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 10, v68 + 1);
            v68 = *(this + 22);
          }

          v69 = v155;
          v70 = *(this + 10);
          *(this + 22) = v68 + 1;
          *(v70 + 4 * v68) = v69;
          v71 = *(this + 23) - *(this + 22);
          if (v71 >= 1)
          {
            v72 = v71 + 1;
            do
            {
              v73 = *(a2 + 1);
              v74 = *(a2 + 2);
              if (v73 >= v74 || *v73 != 48)
              {
                break;
              }

              *(a2 + 1) = v73 + 1;
              if ((v73 + 1) >= v74 || v73[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
                {
                  return 0;
                }
              }

              else
              {
                v155 = v73[1];
                *(a2 + 1) = v73 + 2;
              }

              v75 = *(this + 22);
              if (v75 >= *(this + 23))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v156);
                v75 = *(this + 22);
              }

              v76 = v155;
              v77 = *(this + 10);
              *(this + 22) = v75 + 1;
              *(v77 + 4 * v75) = v76;
              --v72;
            }

            while (v72 > 1);
          }

LABEL_183:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v78 = *v10;
          if (v78 == 56)
          {
            goto LABEL_187;
          }

          if (v78 != 48)
          {
            goto LABEL_1;
          }

LABEL_165:
          v20 = v10 + 1;
          *(a2 + 1) = v20;
        }

      case 7u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 96);
            if (!result)
            {
              return result;
            }

            goto LABEL_205;
          }

          goto LABEL_57;
        }

        v21 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v155 = 0;
          if (v21 >= v7 || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
            {
              return 0;
            }
          }

          else
          {
            v155 = *v21;
            *(a2 + 1) = v21 + 1;
          }

          v79 = *(this + 26);
          if (v79 == *(this + 27))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 12, v79 + 1);
            v79 = *(this + 26);
          }

          v80 = v155;
          v81 = *(this + 12);
          *(this + 26) = v79 + 1;
          *(v81 + 4 * v79) = v80;
          v82 = *(this + 27) - *(this + 26);
          if (v82 >= 1)
          {
            v83 = v82 + 1;
            do
            {
              v84 = *(a2 + 1);
              v85 = *(a2 + 2);
              if (v84 >= v85 || *v84 != 56)
              {
                break;
              }

              *(a2 + 1) = v84 + 1;
              if ((v84 + 1) >= v85 || v84[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
                {
                  return 0;
                }
              }

              else
              {
                v155 = v84[1];
                *(a2 + 1) = v84 + 2;
              }

              v86 = *(this + 26);
              if (v86 >= *(this + 27))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v156);
                v86 = *(this + 26);
              }

              v87 = v155;
              v88 = *(this + 12);
              *(this + 26) = v86 + 1;
              *(v88 + 4 * v86) = v87;
              --v83;
            }

            while (v83 > 1);
          }

LABEL_205:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v89 = *v10;
          if (v89 == 64)
          {
            goto LABEL_209;
          }

          if (v89 != 56)
          {
            goto LABEL_1;
          }

LABEL_187:
          v21 = v10 + 1;
          *(a2 + 1) = v21;
        }

      case 8u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 112);
            if (!result)
            {
              return result;
            }

            goto LABEL_227;
          }

          goto LABEL_57;
        }

        v18 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v155 = 0;
          if (v18 >= v7 || *v18 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
            {
              return 0;
            }
          }

          else
          {
            v155 = *v18;
            *(a2 + 1) = v18 + 1;
          }

          v90 = *(this + 30);
          if (v90 == *(this + 31))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 14, v90 + 1);
            v90 = *(this + 30);
          }

          v91 = v155;
          v92 = *(this + 14);
          *(this + 30) = v90 + 1;
          *(v92 + 4 * v90) = v91;
          v93 = *(this + 31) - *(this + 30);
          if (v93 >= 1)
          {
            v94 = v93 + 1;
            do
            {
              v95 = *(a2 + 1);
              v96 = *(a2 + 2);
              if (v95 >= v96 || *v95 != 64)
              {
                break;
              }

              *(a2 + 1) = v95 + 1;
              if ((v95 + 1) >= v96 || v95[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
                {
                  return 0;
                }
              }

              else
              {
                v155 = v95[1];
                *(a2 + 1) = v95 + 2;
              }

              v97 = *(this + 30);
              if (v97 >= *(this + 31))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v156);
                v97 = *(this + 30);
              }

              v98 = v155;
              v99 = *(this + 14);
              *(this + 30) = v97 + 1;
              *(v99 + 4 * v97) = v98;
              --v94;
            }

            while (v94 > 1);
          }

LABEL_227:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v100 = *v10;
          if (v100 == 72)
          {
            goto LABEL_231;
          }

          if (v100 != 64)
          {
            goto LABEL_1;
          }

LABEL_209:
          v18 = v10 + 1;
          *(a2 + 1) = v18;
        }

      case 9u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 128);
            if (!result)
            {
              return result;
            }

            goto LABEL_249;
          }

          goto LABEL_57;
        }

        v23 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v155 = 0;
          if (v23 >= v7 || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
            {
              return 0;
            }
          }

          else
          {
            v155 = *v23;
            *(a2 + 1) = v23 + 1;
          }

          v101 = *(this + 34);
          if (v101 == *(this + 35))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 16, v101 + 1);
            v101 = *(this + 34);
          }

          v102 = v155;
          v103 = *(this + 16);
          *(this + 34) = v101 + 1;
          *(v103 + 4 * v101) = v102;
          v104 = *(this + 35) - *(this + 34);
          if (v104 >= 1)
          {
            v105 = v104 + 1;
            do
            {
              v106 = *(a2 + 1);
              v107 = *(a2 + 2);
              if (v106 >= v107 || *v106 != 72)
              {
                break;
              }

              *(a2 + 1) = v106 + 1;
              if ((v106 + 1) >= v107 || v106[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
                {
                  return 0;
                }
              }

              else
              {
                v155 = v106[1];
                *(a2 + 1) = v106 + 2;
              }

              v108 = *(this + 34);
              if (v108 >= *(this + 35))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v156);
                v108 = *(this + 34);
              }

              v109 = v155;
              v110 = *(this + 16);
              *(this + 34) = v108 + 1;
              *(v110 + 4 * v108) = v109;
              --v105;
            }

            while (v105 > 1);
          }

LABEL_249:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v111 = *v10;
          if (v111 == 80)
          {
            goto LABEL_253;
          }

          if (v111 != 72)
          {
            goto LABEL_1;
          }

LABEL_231:
          v23 = v10 + 1;
          *(a2 + 1) = v23;
        }

      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 144);
            if (!result)
            {
              return result;
            }

            goto LABEL_271;
          }

          goto LABEL_57;
        }

        v15 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v155 = 0;
          if (v15 >= v7 || *v15 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
            {
              return 0;
            }
          }

          else
          {
            v155 = *v15;
            *(a2 + 1) = v15 + 1;
          }

          v112 = *(this + 38);
          if (v112 == *(this + 39))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, v112 + 1);
            v112 = *(this + 38);
          }

          v113 = v155;
          v114 = *(this + 18);
          *(this + 38) = v112 + 1;
          *(v114 + 4 * v112) = v113;
          v115 = *(this + 39) - *(this + 38);
          if (v115 >= 1)
          {
            v116 = v115 + 1;
            do
            {
              v117 = *(a2 + 1);
              v118 = *(a2 + 2);
              if (v117 >= v118 || *v117 != 80)
              {
                break;
              }

              *(a2 + 1) = v117 + 1;
              if ((v117 + 1) >= v118 || v117[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
                {
                  return 0;
                }
              }

              else
              {
                v155 = v117[1];
                *(a2 + 1) = v117 + 2;
              }

              v119 = *(this + 38);
              if (v119 >= *(this + 39))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v156);
                v119 = *(this + 38);
              }

              v120 = v155;
              v121 = *(this + 18);
              *(this + 38) = v119 + 1;
              *(v121 + 4 * v119) = v120;
              --v116;
            }

            while (v116 > 1);
          }

LABEL_271:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v122 = *v10;
          if (v122 == 88)
          {
            goto LABEL_275;
          }

          if (v122 != 80)
          {
            goto LABEL_1;
          }

LABEL_253:
          v15 = v10 + 1;
          *(a2 + 1) = v15;
        }

      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 160);
            if (!result)
            {
              return result;
            }

            goto LABEL_293;
          }

          goto LABEL_57;
        }

        v22 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v155 = 0;
          if (v22 >= v7 || *v22 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
            {
              return 0;
            }
          }

          else
          {
            v155 = *v22;
            *(a2 + 1) = v22 + 1;
          }

          v123 = *(this + 42);
          if (v123 == *(this + 43))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 20, v123 + 1);
            v123 = *(this + 42);
          }

          v124 = v155;
          v125 = *(this + 20);
          *(this + 42) = v123 + 1;
          *(v125 + 4 * v123) = v124;
          v126 = *(this + 43) - *(this + 42);
          if (v126 >= 1)
          {
            v127 = v126 + 1;
            do
            {
              v128 = *(a2 + 1);
              v129 = *(a2 + 2);
              if (v128 >= v129 || *v128 != 88)
              {
                break;
              }

              *(a2 + 1) = v128 + 1;
              if ((v128 + 1) >= v129 || v128[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
                {
                  return 0;
                }
              }

              else
              {
                v155 = v128[1];
                *(a2 + 1) = v128 + 2;
              }

              v130 = *(this + 42);
              if (v130 >= *(this + 43))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v156);
                v130 = *(this + 42);
              }

              v131 = v155;
              v132 = *(this + 20);
              *(this + 42) = v130 + 1;
              *(v132 + 4 * v130) = v131;
              --v127;
            }

            while (v127 > 1);
          }

LABEL_293:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v133 = *v10;
          if (v133 == 96)
          {
            goto LABEL_297;
          }

          if (v133 != 88)
          {
            goto LABEL_1;
          }

LABEL_275:
          v22 = v10 + 1;
          *(a2 + 1) = v22;
        }

      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 176);
            if (!result)
            {
              return result;
            }

            goto LABEL_315;
          }

          goto LABEL_57;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        while (1)
        {
          v155 = 0;
          if (v12 >= v7 || *v12 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
            {
              return 0;
            }
          }

          else
          {
            v155 = *v12;
            *(a2 + 1) = v12 + 1;
          }

          v134 = *(this + 46);
          if (v134 == *(this + 47))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 22, v134 + 1);
            v134 = *(this + 46);
          }

          v135 = v155;
          v136 = *(this + 22);
          *(this + 46) = v134 + 1;
          *(v136 + 4 * v134) = v135;
          v137 = *(this + 47) - *(this + 46);
          if (v137 >= 1)
          {
            v138 = v137 + 1;
            do
            {
              v139 = *(a2 + 1);
              v140 = *(a2 + 2);
              if (v139 >= v140 || *v139 != 96)
              {
                break;
              }

              *(a2 + 1) = v139 + 1;
              if ((v139 + 1) >= v140 || v139[1] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
                {
                  return 0;
                }
              }

              else
              {
                v155 = v139[1];
                *(a2 + 1) = v139 + 2;
              }

              v141 = *(this + 46);
              if (v141 >= *(this + 47))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v156);
                v141 = *(this + 46);
              }

              v142 = v155;
              v143 = *(this + 22);
              *(this + 46) = v141 + 1;
              *(v143 + 4 * v141) = v142;
              --v138;
            }

            while (v138 > 1);
          }

LABEL_315:
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v10 >= v7)
          {
            goto LABEL_1;
          }

          v144 = *v10;
          if (v144 == 104)
          {
            goto LABEL_319;
          }

          if (v144 != 96)
          {
            goto LABEL_1;
          }

LABEL_297:
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

      case 0xDu:
        if ((TagFallback & 7) == 0)
        {
          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
          while (1)
          {
            v155 = 0;
            if (v14 >= v7 || *v14 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
              {
                return 0;
              }
            }

            else
            {
              v155 = *v14;
              *(a2 + 1) = v14 + 1;
            }

            v145 = *(this + 50);
            if (v145 == *(this + 51))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, v145 + 1);
              v145 = *(this + 50);
            }

            v146 = v155;
            v147 = *(this + 24);
            *(this + 50) = v145 + 1;
            *(v147 + 4 * v145) = v146;
            v148 = *(this + 51) - *(this + 50);
            if (v148 >= 1)
            {
              v149 = v148 + 1;
              do
              {
                v150 = *(a2 + 1);
                v151 = *(a2 + 2);
                if (v150 >= v151 || *v150 != 104)
                {
                  break;
                }

                *(a2 + 1) = v150 + 1;
                if ((v150 + 1) >= v151 || v150[1] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v155))
                  {
                    return 0;
                  }
                }

                else
                {
                  v155 = v150[1];
                  *(a2 + 1) = v150 + 2;
                }

                v152 = *(this + 50);
                if (v152 >= *(this + 51))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v156);
                  v152 = *(this + 50);
                }

                v153 = v155;
                v154 = *(this + 24);
                *(this + 50) = v152 + 1;
                *(v154 + 4 * v152) = v153;
                --v149;
              }

              while (v149 > 1);
            }

LABEL_337:
            v10 = *(a2 + 1);
            v7 = *(a2 + 2);
            if (v10 >= v7 || *v10 != 104)
            {
              break;
            }

LABEL_319:
            v14 = v10 + 1;
            *(a2 + 1) = v14;
          }

          if (v10 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          continue;
        }

        if (v6 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 192);
          if (!result)
          {
            return result;
          }

          goto LABEL_337;
        }

LABEL_57:
        if (v6 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      default:
        goto LABEL_57;
    }
  }
}

void sub_2963AC3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo3::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 212))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(*(v5 + 16) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 40) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(*(v5 + 32) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 40));
  }

  if (*(v5 + 56) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 48) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 56));
  }

  if (*(v5 + 72) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(*(v5 + 64) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 72));
  }

  if (*(v5 + 88) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(*(v5 + 80) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 88));
  }

  if (*(v5 + 104) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(*(v5 + 96) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 104));
  }

  if (*(v5 + 120) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(*(v5 + 112) + 4 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 120));
  }

  if (*(v5 + 136) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(*(v5 + 128) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 136));
  }

  if (*(v5 + 152) >= 1)
  {
    v14 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(*(v5 + 144) + 4 * v14++), a2, a4);
    }

    while (v14 < *(v5 + 152));
  }

  if (*(v5 + 168) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(*(v5 + 160) + 4 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 168));
  }

  if (*(v5 + 184) >= 1)
  {
    v16 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(*(v5 + 176) + 4 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 184));
  }

  if (*(v5 + 200) >= 1)
  {
    v17 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(*(v5 + 192) + 4 * v17++), a2, a4);
    }

    while (v17 < *(v5 + 200));
  }

  return this;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo3::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 212))
  {
    v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v78 = 0;
  }

  v2 = *(this + 6);
  if (v2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(this[2] + v3);
      if (v5 >= 0x80)
      {
        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
        v2 = *(this + 6);
      }

      else
      {
        v6 = 1;
      }

      v4 += v6;
      ++v3;
    }

    while (v3 < v2);
  }

  v7 = *(this + 10);
  if (v7 < 1)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(this[4] + v8);
      if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
        v7 = *(this + 10);
      }

      else
      {
        v11 = 1;
      }

      v9 += v11;
      ++v8;
    }

    while (v8 < v7);
  }

  v12 = *(this + 14);
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
      v15 = *(this[6] + v13);
      if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
        v12 = *(this + 14);
      }

      else
      {
        v16 = 1;
      }

      v14 += v16;
      ++v13;
    }

    while (v13 < v12);
  }

  v17 = *(this + 18);
  if (v17 < 1)
  {
    v19 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = *(this[8] + v18);
      if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
        v17 = *(this + 18);
      }

      else
      {
        v21 = 1;
      }

      v19 += v21;
      ++v18;
    }

    while (v18 < v17);
  }

  v77 = v2;
  v22 = *(this + 22);
  if (v22 < 1)
  {
    v24 = 0;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = *(this[10] + v23);
      if (v25 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
        v22 = *(this + 22);
      }

      else
      {
        v26 = 1;
      }

      v24 += v26;
      ++v23;
    }

    while (v23 < v22);
  }

  v69 = v22;
  v73 = v12;
  v27 = *(this + 26);
  if (v27 < 1)
  {
    v29 = 0;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = *(this[12] + v28);
      if (v30 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
        v27 = *(this + 26);
      }

      else
      {
        v31 = 1;
      }

      v29 += v31;
      ++v28;
    }

    while (v28 < v27);
  }

  v68 = v27;
  v76 = v4;
  v32 = *(this + 30);
  if (v32 < 1)
  {
    v34 = 0;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = *(this[14] + v33);
      if (v35 >= 0x80)
      {
        v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
        v32 = *(this + 30);
      }

      else
      {
        v36 = 1;
      }

      v34 += v36;
      ++v33;
    }

    while (v33 < v32);
  }

  v67 = v32;
  v71 = v17;
  v37 = *(this + 34);
  if (v37 < 1)
  {
    v39 = 0;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    do
    {
      v40 = *(this[16] + v38);
      if (v40 >= 0x80)
      {
        v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40);
        v37 = *(this + 34);
      }

      else
      {
        v41 = 1;
      }

      v39 += v41;
      ++v38;
    }

    while (v38 < v37);
  }

  v66 = v37;
  v75 = v7;
  v42 = *(this + 38);
  if (v42 < 1)
  {
    v44 = 0;
  }

  else
  {
    v43 = 0;
    v44 = 0;
    do
    {
      v45 = *(this[18] + v43);
      if (v45 >= 0x80)
      {
        v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45);
        v42 = *(this + 38);
      }

      else
      {
        v46 = 1;
      }

      v44 += v46;
      ++v43;
    }

    while (v43 < v42);
  }

  v65 = v42;
  v74 = v9;
  v47 = *(this + 42);
  if (v47 < 1)
  {
    v49 = 0;
  }

  else
  {
    v48 = 0;
    v49 = 0;
    do
    {
      v50 = *(this[20] + v48);
      if (v50 >= 0x80)
      {
        v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50);
        v47 = *(this + 42);
      }

      else
      {
        v51 = 1;
      }

      v49 += v51;
      ++v48;
    }

    while (v48 < v47);
  }

  v64 = v47;
  v72 = v14;
  v52 = *(this + 46);
  if (v52 < 1)
  {
    v54 = 0;
  }

  else
  {
    v53 = 0;
    v54 = 0;
    do
    {
      v55 = *(this[22] + v53);
      if (v55 >= 0x80)
      {
        v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55);
        v52 = *(this + 46);
      }

      else
      {
        v56 = 1;
      }

      v54 += v56;
      ++v53;
    }

    while (v53 < v52);
  }

  v70 = v19;
  v57 = *(this + 50);
  v63 = v52;
  if (v57 < 1)
  {
    v59 = 0;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    do
    {
      v60 = *(this[24] + v58);
      if (v60 >= 0x80)
      {
        v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60);
        v57 = *(this + 50);
      }

      else
      {
        v61 = 1;
      }

      v59 += v61;
      ++v58;
    }

    while (v58 < v57);
  }

  result = (v76 + v78 + v77 + v74 + v75 + v72 + v73 + v70 + v71 + v24 + v69 + v29 + v68 + v34 + v67 + v39 + v66 + v44 + v65 + v49 + v64 + v54 + v63 + v59 + v57);
  *(this + 52) = result;
  return result;
}

void awd::metrics::BluetoothACIMagnetLinkInfo3::CheckTypeAndMergeFrom(awd::metrics::BluetoothACIMagnetLinkInfo3 *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothACIMagnetLinkInfo3::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothACIMagnetLinkInfo3::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothACIMagnetLinkInfo3::CopyFrom(awd::metrics::BluetoothACIMagnetLinkInfo3 *this, const awd::metrics::BluetoothACIMagnetLinkInfo3 *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothACIMagnetLinkInfo3::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothACIMagnetLinkInfo3::Swap(awd::metrics::BluetoothACIMagnetLinkInfo3 *this, awd::metrics::BluetoothACIMagnetLinkInfo3 *a2)
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
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    v8 = *(a2 + 5);
    *(a2 + 4) = v7;
    v9 = *(this + 5);
    *(this + 5) = v8;
    *(a2 + 5) = v9;
    v10 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    v11 = *(a2 + 7);
    *(a2 + 6) = v10;
    v12 = *(this + 7);
    *(this + 7) = v11;
    *(a2 + 7) = v12;
    v13 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    v14 = *(a2 + 9);
    *(a2 + 8) = v13;
    v15 = *(this + 9);
    *(this + 9) = v14;
    *(a2 + 9) = v15;
    v16 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    v17 = *(a2 + 11);
    *(a2 + 10) = v16;
    v18 = *(this + 11);
    *(this + 11) = v17;
    *(a2 + 11) = v18;
    v19 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    v20 = *(a2 + 13);
    *(a2 + 12) = v19;
    v21 = *(this + 13);
    *(this + 13) = v20;
    *(a2 + 13) = v21;
    v22 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    v23 = *(a2 + 15);
    *(a2 + 14) = v22;
    v24 = *(this + 15);
    *(this + 15) = v23;
    *(a2 + 15) = v24;
    v25 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    v26 = *(a2 + 17);
    *(a2 + 16) = v25;
    v27 = *(this + 17);
    *(this + 17) = v26;
    *(a2 + 17) = v27;
    v28 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    v29 = *(a2 + 19);
    *(a2 + 18) = v28;
    v30 = *(this + 19);
    *(this + 19) = v29;
    *(a2 + 19) = v30;
    v31 = *(this + 20);
    *(this + 20) = *(a2 + 20);
    v32 = *(a2 + 21);
    *(a2 + 20) = v31;
    v33 = *(this + 21);
    *(this + 21) = v32;
    *(a2 + 21) = v33;
    v34 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    v35 = *(a2 + 23);
    *(a2 + 22) = v34;
    v36 = *(this + 23);
    *(this + 23) = v35;
    *(a2 + 23) = v36;
    v37 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    result = *(a2 + 25);
    *(a2 + 24) = v37;
    v39 = *(this + 25);
    *(this + 25) = result;
    *(a2 + 25) = v39;
    LODWORD(v37) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v37;
    LODWORD(v37) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v37;
  }

  return result;
}

uint64_t awd::metrics::BluetoothResetMechanism::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::BluetoothResetMechanism *awd::metrics::BluetoothResetMechanism::BluetoothResetMechanism(awd::metrics::BluetoothResetMechanism *this, const awd::metrics::BluetoothResetMechanism *a2)
{
  *this = &unk_2A1D4C138;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::BluetoothResetMechanism::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothResetMechanism::MergeFrom(awd::metrics::BluetoothResetMechanism *this, const awd::metrics::BluetoothResetMechanism *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 1);
      *(this + 8) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 8);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 6);
      if (v6 >= 5)
      {
        awd::metrics::BluetoothResetMechanism::MergeFrom();
      }

      *(this + 8) |= 2u;
      *(this + 6) = v6;
      v4 = *(a2 + 8);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 2);
      *(this + 8) |= 4u;
      *(this + 2) = v7;
    }
  }
}

void sub_2963AD024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothResetMechanism::~BluetoothResetMechanism(awd::metrics::BluetoothResetMechanism *this)
{
  *this = &unk_2A1D4C138;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C138;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C138;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothResetMechanism::default_instance(awd::metrics::BluetoothResetMechanism *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothResetMechanism::default_instance_;
  if (!awd::metrics::BluetoothResetMechanism::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothResetMechanism::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothResetMechanism::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothResetMechanism::MergePartialFromCodedStream(awd::metrics::BluetoothResetMechanism *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          v13 = *(a2 + 1);
          v12 = *(a2 + 2);
          goto LABEL_35;
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

      *(this + 8) |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(a2 + 1) = v11;
LABEL_25:
        v19 = 0;
        if (v11 >= v7 || (v14 = *v11, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19);
          if (!result)
          {
            return result;
          }

          v14 = v19;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v14 <= 4)
        {
          *(this + 8) |= 2u;
          *(this + 6) = v14;
        }

        v15 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v15 < v12 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_35:
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

uint64_t awd::metrics::BluetoothResetMechanism::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
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

uint64_t awd::metrics::BluetoothResetMechanism::ByteSize(awd::metrics::BluetoothResetMechanism *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (*(this + 32))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_7:
    v4 = *(this + 6);
    if ((v4 & 0x80000000) != 0)
    {
      v5 = 11;
    }

    else if (v4 >= 0x80)
    {
      v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 8);
    }

    else
    {
      v5 = 2;
    }

    v3 = (v5 + v3);
    goto LABEL_13;
  }

  v3 = 0;
  if ((*(this + 32) & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_13:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
  }

LABEL_15:
  *(this + 7) = v3;
  return v3;
}

void awd::metrics::BluetoothResetMechanism::CheckTypeAndMergeFrom(awd::metrics::BluetoothResetMechanism *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothResetMechanism::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothResetMechanism::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothResetMechanism::CopyFrom(awd::metrics::BluetoothResetMechanism *this, const awd::metrics::BluetoothResetMechanism *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothResetMechanism::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothResetMechanism::Swap(uint64_t this, awd::metrics::BluetoothResetMechanism *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return this;
}

void *awd::metrics::BluetoothDeviceQuiesceMetric::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

awd::metrics::BluetoothDeviceQuiesceMetric *awd::metrics::BluetoothDeviceQuiesceMetric::BluetoothDeviceQuiesceMetric(awd::metrics::BluetoothDeviceQuiesceMetric *this, const awd::metrics::BluetoothDeviceQuiesceMetric *a2)
{
  *this = &unk_2A1D4C1B0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::BluetoothDeviceQuiesceMetric::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothDeviceQuiesceMetric::MergeFrom(awd::metrics::BluetoothDeviceQuiesceMetric *this, const awd::metrics::BluetoothDeviceQuiesceMetric *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v5 = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 2);
      *(this + 7) |= 2u;
      *(this + 2) = v6;
    }
  }
}

void sub_2963AD748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothDeviceQuiesceMetric::~BluetoothDeviceQuiesceMetric(awd::metrics::BluetoothDeviceQuiesceMetric *this)
{
  *this = &unk_2A1D4C1B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C1B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C1B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothDeviceQuiesceMetric::default_instance(awd::metrics::BluetoothDeviceQuiesceMetric *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothDeviceQuiesceMetric::default_instance_;
  if (!awd::metrics::BluetoothDeviceQuiesceMetric::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothDeviceQuiesceMetric::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothDeviceQuiesceMetric::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothDeviceQuiesceMetric::MergePartialFromCodedStream(awd::metrics::BluetoothDeviceQuiesceMetric *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      *(this + 7) |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        if (v10 >= v6 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 7) |= 2u;
        if (v12 == v6 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v10 = *(a2 + 1);
      v6 = *(a2 + 2);
      goto LABEL_22;
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

uint64_t awd::metrics::BluetoothDeviceQuiesceMetric::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::BluetoothDeviceQuiesceMetric::ByteSize(awd::metrics::BluetoothDeviceQuiesceMetric *this)
{
  if (*(this + 28))
  {
    if ((*(this + 28) & 1) == 0)
    {
      v2 = 0;
      if ((*(this + 28) & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    if ((*(this + 7) & 2) != 0)
    {
LABEL_7:
      v2 = v2 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    }
  }

  else
  {
    v2 = 0;
  }

LABEL_8:
  *(this + 6) = v2;
  return v2;
}

void awd::metrics::BluetoothDeviceQuiesceMetric::CheckTypeAndMergeFrom(awd::metrics::BluetoothDeviceQuiesceMetric *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothDeviceQuiesceMetric::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothDeviceQuiesceMetric::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothDeviceQuiesceMetric::CopyFrom(awd::metrics::BluetoothDeviceQuiesceMetric *this, const awd::metrics::BluetoothDeviceQuiesceMetric *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothDeviceQuiesceMetric::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothDeviceQuiesceMetric::Swap(uint64_t this, awd::metrics::BluetoothDeviceQuiesceMetric *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
  }

  return this;
}

uint64_t awd::metrics::BluetoothEncryptionKeySize::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 21) = 0;
  return this;
}

awd::metrics::BluetoothEncryptionKeySize *awd::metrics::BluetoothEncryptionKeySize::BluetoothEncryptionKeySize(awd::metrics::BluetoothEncryptionKeySize *this, const awd::metrics::BluetoothEncryptionKeySize *a2)
{
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D4C228;
  *(this + 21) = 0;
  awd::metrics::BluetoothEncryptionKeySize::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothEncryptionKeySize::MergeFrom(awd::metrics::BluetoothEncryptionKeySize *this, const awd::metrics::BluetoothEncryptionKeySize *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 1);
      *(this + 10) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 10);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 10) |= 2u;
    *(this + 4) = v7;
    v4 = *(a2 + 10);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:
    v8 = *(a2 + 5);
    *(this + 10) |= 4u;
    *(this + 5) = v8;
    v4 = *(a2 + 10);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_15:
    v9 = *(a2 + 6);
    *(this + 10) |= 8u;
    *(this + 6) = v9;
    v4 = *(a2 + 10);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_16:
    v10 = *(a2 + 28);
    *(this + 10) |= 0x10u;
    *(this + 28) = v10;
    if ((*(a2 + 10) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = *(a2 + 8);
    *(this + 10) |= 0x20u;
    *(this + 8) = v5;
  }
}

void sub_2963ADE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothEncryptionKeySize::~BluetoothEncryptionKeySize(awd::metrics::BluetoothEncryptionKeySize *this)
{
  *this = &unk_2A1D4C228;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C228;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C228;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothEncryptionKeySize::default_instance(awd::metrics::BluetoothEncryptionKeySize *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothEncryptionKeySize::default_instance_;
  if (!awd::metrics::BluetoothEncryptionKeySize::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothEncryptionKeySize::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothEncryptionKeySize::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 32) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 21) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothEncryptionKeySize::MergePartialFromCodedStream(awd::metrics::BluetoothEncryptionKeySize *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 3)
        {
          if (v6 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v13 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_51;
            }
          }

          else if (v6 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_59;
            }
          }

          else if (v6 == 6 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_67;
          }

          goto LABEL_26;
        }

        if (v6 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v10 >= v7 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 10) |= 1u;
        if (v12 < v7 && *v12 == 16)
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
          goto LABEL_35;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_26;
      }

      v14 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_35:
      if (v14 >= v7 || (v16 = *v14, v16 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v16;
        v17 = v14 + 1;
        *(a2 + 1) = v17;
      }

      *(this + 10) |= 2u;
      if (v17 < v7 && *v17 == 24)
      {
        v8 = v17 + 1;
        *(a2 + 1) = v8;
LABEL_43:
        if (v8 >= v7 || (v18 = *v8, v18 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v19 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v18;
          v19 = v8 + 1;
          *(a2 + 1) = v19;
        }

        *(this + 10) |= 4u;
        if (v19 < v7 && *v19 == 32)
        {
          v13 = v19 + 1;
          *(a2 + 1) = v13;
LABEL_51:
          if (v13 >= v7 || (v20 = *v13, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v21 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v20;
            v21 = v13 + 1;
            *(a2 + 1) = v21;
          }

          *(this + 10) |= 8u;
          if (v21 < v7 && *v21 == 40)
          {
            v15 = v21 + 1;
            *(a2 + 1) = v15;
LABEL_59:
            v27 = 0;
            if (v15 >= v7 || (v22 = *v15, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27);
              if (!result)
              {
                return result;
              }

              v22 = v27;
              v23 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v23 = v15 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 28) = v22 != 0;
            *(this + 10) |= 0x10u;
            if (v23 < v7 && *v23 == 48)
            {
              v9 = v23 + 1;
              *(a2 + 1) = v9;
LABEL_67:
              if (v9 >= v7 || (v24 = *v9, v24 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v25 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v24;
                v25 = v9 + 1;
                *(a2 + 1) = v25;
              }

              *(this + 10) |= 0x20u;
              if (v25 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 3 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_43;
    }

LABEL_26:
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

uint64_t awd::metrics::BluetoothEncryptionKeySize::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 28), a2, a4);
    if ((*(v5 + 40) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothEncryptionKeySize::ByteSize(awd::metrics::BluetoothEncryptionKeySize *this)
{
  v2 = *(this + 10);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_27;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 10);
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

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 10);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_11:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v7 = *(this + 5);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(this + 10);
  }

  else
  {
    v8 = 2;
  }

  v3 += v8;
  if ((v2 & 8) != 0)
  {
LABEL_18:
    v9 = *(this + 6);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v2 = *(this + 10);
    }

    else
    {
      v10 = 2;
    }

    v3 += v10;
  }

LABEL_22:
  v4 = ((v2 >> 3) & 2) + v3;
  if ((v2 & 0x20) != 0)
  {
    v11 = *(this + 8);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    }

    else
    {
      v12 = 2;
    }

    v4 = (v12 + v4);
  }

LABEL_27:
  *(this + 9) = v4;
  return v4;
}

void awd::metrics::BluetoothEncryptionKeySize::CheckTypeAndMergeFrom(awd::metrics::BluetoothEncryptionKeySize *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothEncryptionKeySize::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothEncryptionKeySize::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothEncryptionKeySize::CopyFrom(awd::metrics::BluetoothEncryptionKeySize *this, const awd::metrics::BluetoothEncryptionKeySize *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothEncryptionKeySize::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothEncryptionKeySize::Swap(uint64_t this, awd::metrics::BluetoothEncryptionKeySize *a2)
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
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LOBYTE(v2) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
  }

  return this;
}

double awd::metrics::BluetoothLeAudioSessionStats::SharedCtor(awd::metrics::BluetoothLeAudioSessionStats *this)
{
  *(this + 22) = 0;
  result = 0.0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::BluetoothLeAudioSessionStats *awd::metrics::BluetoothLeAudioSessionStats::BluetoothLeAudioSessionStats(awd::metrics::BluetoothLeAudioSessionStats *this, const awd::metrics::BluetoothLeAudioSessionStats *a2)
{
  *this = &unk_2A1D4C2A0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  awd::metrics::BluetoothLeAudioSessionStats::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothLeAudioSessionStats::MergeFrom(awd::metrics::BluetoothLeAudioSessionStats *this, const awd::metrics::BluetoothLeAudioSessionStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
  }

  v4 = *(a2 + 22);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v9 = *(a2 + 1);
    *(this + 22) |= 1u;
    *(this + 1) = v9;
    v4 = *(a2 + 22);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 4);
  *(this + 22) |= 2u;
  *(this + 4) = v10;
  v4 = *(a2 + 22);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v11 = *(a2 + 5);
  *(this + 22) |= 4u;
  *(this + 5) = v11;
  v4 = *(a2 + 22);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v12 = *(a2 + 6);
  *(this + 22) |= 8u;
  *(this + 6) = v12;
  v4 = *(a2 + 22);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_34:
    v14 = *(a2 + 8);
    *(this + 22) |= 0x20u;
    *(this + 8) = v14;
    v4 = *(a2 + 22);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_33:
  v13 = *(a2 + 7);
  *(this + 22) |= 0x10u;
  *(this + 7) = v13;
  v4 = *(a2 + 22);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_34;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_35:
  v15 = *(a2 + 9);
  *(this + 22) |= 0x40u;
  *(this + 9) = v15;
  v4 = *(a2 + 22);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 10);
    *(this + 22) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(a2 + 22);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v4 & 0x100) != 0)
  {
    v16 = *(a2 + 11);
    *(this + 22) |= 0x100u;
    *(this + 11) = v16;
    v4 = *(a2 + 22);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_39;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v17 = *(a2 + 12);
  *(this + 22) |= 0x200u;
  *(this + 12) = v17;
  v4 = *(a2 + 22);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  v18 = *(a2 + 13);
  *(this + 22) |= 0x400u;
  *(this + 13) = v18;
  v4 = *(a2 + 22);
  if ((v4 & 0x800) == 0)
  {
LABEL_18:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  v19 = *(a2 + 14);
  *(this + 22) |= 0x800u;
  *(this + 14) = v19;
  v4 = *(a2 + 22);
  if ((v4 & 0x1000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  v20 = *(a2 + 15);
  *(this + 22) |= 0x1000u;
  *(this + 15) = v20;
  v4 = *(a2 + 22);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  v21 = *(a2 + 16);
  *(this + 22) |= 0x2000u;
  *(this + 16) = v21;
  v4 = *(a2 + 22);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_43:
  v22 = *(a2 + 17);
  *(this + 22) |= 0x4000u;
  *(this + 17) = v22;
  v4 = *(a2 + 22);
  if ((v4 & 0x8000) != 0)
  {
LABEL_22:
    v6 = *(a2 + 18);
    *(this + 22) |= 0x8000u;
    *(this + 18) = v6;
    v4 = *(a2 + 22);
  }

LABEL_23:
  if ((v4 & 0xFF0000) != 0)
  {
    if ((v4 & 0x10000) != 0)
    {
      v7 = *(a2 + 19);
      *(this + 22) |= 0x10000u;
      *(this + 19) = v7;
      v4 = *(a2 + 22);
    }

    if ((v4 & 0x20000) != 0)
    {
      v8 = *(a2 + 20);
      *(this + 22) |= 0x20000u;
      *(this + 20) = v8;
    }
  }
}

void sub_2963AE9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLeAudioSessionStats::~BluetoothLeAudioSessionStats(awd::metrics::BluetoothLeAudioSessionStats *this)
{
  *this = &unk_2A1D4C2A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C2A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C2A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothLeAudioSessionStats::default_instance(awd::metrics::BluetoothLeAudioSessionStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLeAudioSessionStats::default_instance_;
  if (!awd::metrics::BluetoothLeAudioSessionStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLeAudioSessionStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLeAudioSessionStats::Clear(uint64_t this)
{
  v1 = *(this + 88);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 60) = 0u;
    *(this + 44) = 0u;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 76) = 0;
    *(this + 80) = 0;
  }

  *(this + 88) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothLeAudioSessionStats::MergePartialFromCodedStream(awd::metrics::BluetoothLeAudioSessionStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (2)
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

    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v7 = *(a2 + 1);
        v6 = *(a2 + 2);
        if (v7 < v6)
        {
          v8 = *v7;
          if ((v8 & 0x8000000000000000) == 0)
          {
            *(this + 1) = v8;
            v9 = v7 + 1;
            *(a2 + 1) = v9;
LABEL_50:
            *(this + 22) |= 1u;
            if (v9 < v6 && *v9 == 16)
            {
              v20 = v9 + 1;
              *(a2 + 1) = v20;
              goto LABEL_53;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (result)
        {
          v9 = *(a2 + 1);
          v6 = *(a2 + 2);
          goto LABEL_50;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v20 = *(a2 + 1);
        v6 = *(a2 + 2);
LABEL_53:
        if (v20 >= v6 || (v27 = *v20, v27 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v28 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v27;
          v28 = v20 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 22) |= 2u;
        if (v28 >= v6 || *v28 != 24)
        {
          continue;
        }

        v16 = v28 + 1;
        *(a2 + 1) = v16;
LABEL_61:
        if (v16 >= v6 || (v29 = *v16, v29 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v30 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v29;
          v30 = v16 + 1;
          *(a2 + 1) = v30;
        }

        *(this + 22) |= 4u;
        if (v30 >= v6 || *v30 != 32)
        {
          continue;
        }

        v18 = v30 + 1;
        *(a2 + 1) = v18;
LABEL_69:
        if (v18 >= v6 || (v31 = *v18, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v31;
          v32 = v18 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 22) |= 8u;
        if (v32 >= v6 || *v32 != 40)
        {
          continue;
        }

        v13 = v32 + 1;
        *(a2 + 1) = v13;
LABEL_77:
        if (v13 >= v6 || (v33 = *v13, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v33;
          v34 = v13 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 22) |= 0x10u;
        if (v34 >= v6 || *v34 != 48)
        {
          continue;
        }

        v22 = v34 + 1;
        *(a2 + 1) = v22;
LABEL_85:
        if (v22 >= v6 || (v35 = *v22, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v35;
          v36 = v22 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 22) |= 0x20u;
        if (v36 >= v6 || *v36 != 56)
        {
          continue;
        }

        v24 = v36 + 1;
        *(a2 + 1) = v24;
LABEL_93:
        if (v24 >= v6 || (v37 = *v24, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v37;
          v38 = v24 + 1;
          *(a2 + 1) = v38;
        }

        *(this + 22) |= 0x40u;
        if (v38 >= v6 || *v38 != 64)
        {
          continue;
        }

        v19 = v38 + 1;
        *(a2 + 1) = v19;
LABEL_101:
        v63 = 0;
        if (v19 >= v6 || (v39 = *v19, (v39 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v63);
          if (!result)
          {
            return result;
          }

          v39 = v63;
          v40 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v40 = v19 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 10) = v39;
        *(this + 22) |= 0x80u;
        if (v40 >= v6 || *v40 != 72)
        {
          continue;
        }

        v26 = v40 + 1;
        *(a2 + 1) = v26;
LABEL_109:
        if (v26 >= v6 || (v41 = *v26, v41 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v42 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v41;
          v42 = v26 + 1;
          *(a2 + 1) = v42;
        }

        *(this + 22) |= 0x100u;
        if (v42 >= v6 || *v42 != 80)
        {
          continue;
        }

        v15 = v42 + 1;
        *(a2 + 1) = v15;
LABEL_117:
        if (v15 >= v6 || (v43 = *v15, v43 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v44 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v43;
          v44 = v15 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 22) |= 0x200u;
        if (v44 >= v6 || *v44 != 88)
        {
          continue;
        }

        v25 = v44 + 1;
        *(a2 + 1) = v25;
LABEL_125:
        if (v25 >= v6 || (v45 = *v25, v45 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v46 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v45;
          v46 = v25 + 1;
          *(a2 + 1) = v46;
        }

        *(this + 22) |= 0x400u;
        if (v46 >= v6 || *v46 != 96)
        {
          continue;
        }

        v12 = v46 + 1;
        *(a2 + 1) = v12;
LABEL_133:
        if (v12 >= v6 || (v47 = *v12, v47 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v48 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v47;
          v48 = v12 + 1;
          *(a2 + 1) = v48;
        }

        *(this + 22) |= 0x800u;
        if (v48 >= v6 || *v48 != 104)
        {
          continue;
        }

        v14 = v48 + 1;
        *(a2 + 1) = v14;
LABEL_141:
        if (v14 >= v6 || (v49 = *v14, v49 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v50 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v49;
          v50 = v14 + 1;
          *(a2 + 1) = v50;
        }

        *(this + 22) |= 0x1000u;
        if (v50 >= v6 || *v50 != 112)
        {
          continue;
        }

        v23 = v50 + 1;
        *(a2 + 1) = v23;
LABEL_149:
        v62 = 0;
        if (v23 >= v6 || (v51 = *v23, (v51 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v62);
          if (!result)
          {
            return result;
          }

          v51 = v62;
          v52 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v52 = v23 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 16) = v51;
        *(this + 22) |= 0x2000u;
        if (v52 >= v6 || *v52 != 120)
        {
          continue;
        }

        v11 = v52 + 1;
        *(a2 + 1) = v11;
LABEL_157:
        if (v11 >= v6 || (v53 = *v11, v53 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v54 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v53;
          v54 = (v11 + 1);
          *(a2 + 1) = v54;
        }

        *(this + 22) |= 0x4000u;
        if (v6 - v54 < 2 || *v54 != 128 || v54[1] != 1)
        {
          continue;
        }

        v17 = (v54 + 2);
        *(a2 + 1) = v17;
LABEL_166:
        if (v17 >= v6 || (v55 = *v17, v55 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v56 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v55;
          v56 = (v17 + 1);
          *(a2 + 1) = v56;
        }

        *(this + 22) |= 0x8000u;
        if (v6 - v56 < 2 || *v56 != 136 || v56[1] != 1)
        {
          continue;
        }

        v10 = (v56 + 2);
        *(a2 + 1) = v10;
LABEL_175:
        if (v10 >= v6 || (v57 = *v10, v57 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v58 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v57;
          v58 = (v10 + 1);
          *(a2 + 1) = v58;
        }

        *(this + 22) |= 0x10000u;
        if (v6 - v58 < 2 || *v58 != 144 || v58[1] != 1)
        {
          continue;
        }

        v21 = (v58 + 2);
        *(a2 + 1) = v21;
LABEL_184:
        if (v21 >= v6 || (v59 = *v21, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v60 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v59;
          v60 = v21 + 1;
          *(a2 + 1) = v60;
        }

        *(this + 22) |= 0x20000u;
        if (v60 != v6 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v16 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_61;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v18 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_69;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v13 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_77;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v22 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_85;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v24 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_93;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v19 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_101;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v26 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_109;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v15 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_117;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v25 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_125;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v12 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_133;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v14 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_141;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v23 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_149;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v11 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_157;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v17 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_166;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v10 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_175;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_44;
        }

        v21 = *(a2 + 1);
        v6 = *(a2 + 2);
        goto LABEL_184;
      default:
LABEL_44:
        if ((TagFallback & 7) == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}