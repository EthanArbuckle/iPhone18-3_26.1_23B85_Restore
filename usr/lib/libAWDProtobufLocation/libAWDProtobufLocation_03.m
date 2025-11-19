uint64_t awd::metrics::CompassSession::ByteSize(awd::metrics::CompassSession *this)
{
  v2 = *(this + 53);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_54;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 53);
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
    v2 = *(this + 53);
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
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
    v2 = *(this + 53);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v10 = *(this + 8);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 11;
  }

  else if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v11 = 2;
  }

  v3 = (v11 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_30:
  v12 = *(this + 9);
  if ((v12 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v13 = 2;
  }

  v3 = (v13 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_20:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_36:
  v14 = *(this + 10);
  if ((v14 & 0x80000000) != 0)
  {
    v15 = 11;
  }

  else if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v15 = 2;
  }

  v3 = (v15 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_21:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

LABEL_42:
  v16 = *(this + 11);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v2 = *(this + 53);
  }

  else
  {
    v17 = 2;
  }

  v3 = (v17 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_48:
    v18 = *(this + 12);
    if ((v18 & 0x80000000) != 0)
    {
      v19 = 11;
    }

    else if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v2 = *(this + 53);
    }

    else
    {
      v19 = 2;
    }

    v3 = (v19 + v3);
  }

LABEL_54:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_126;
  }

  if ((v2 & 0x100) != 0)
  {
    v20 = *(this + 13);
    if ((v20 & 0x80000000) != 0)
    {
      v21 = 11;
    }

    else if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      v2 = *(this + 53);
    }

    else
    {
      v21 = 2;
    }

    LODWORD(v3) = v21 + v3;
    if ((v2 & 0x200) == 0)
    {
LABEL_57:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_78;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  v22 = *(this + 7);
  if (!v22)
  {
    v22 = *(awd::metrics::CompassSession::default_instance_ + 56);
  }

  v23 = *(v22 + 24);
  if (*(v22 + 24))
  {
    v24 = (v23 << 31 >> 31) & 5;
    if ((v23 & 2) != 0)
    {
      v24 += 5;
    }

    if ((v23 & 4) != 0)
    {
      v23 = v24 + 5;
    }

    else
    {
      v23 = v24;
    }
  }

  *(v22 + 20) = v23;
  LODWORD(v3) = v3 + v23 + 2;
  v2 = *(this + 53);
  if ((v2 & 0x400) == 0)
  {
LABEL_58:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_87;
  }

LABEL_78:
  v25 = *(this + 8);
  if (!v25)
  {
    v25 = *(awd::metrics::CompassSession::default_instance_ + 64);
  }

  v26 = *(v25 + 24);
  if (*(v25 + 24))
  {
    v27 = (v26 << 31 >> 31) & 5;
    if ((v26 & 2) != 0)
    {
      v27 += 5;
    }

    if ((v26 & 4) != 0)
    {
      v26 = v27 + 5;
    }

    else
    {
      v26 = v27;
    }
  }

  *(v25 + 20) = v26;
  LODWORD(v3) = v3 + v26 + 2;
  v2 = *(this + 53);
  if ((v2 & 0x800) == 0)
  {
LABEL_59:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_96;
  }

LABEL_87:
  v28 = *(this + 9);
  if (!v28)
  {
    v28 = *(awd::metrics::CompassSession::default_instance_ + 72);
  }

  v29 = *(v28 + 24);
  if (*(v28 + 24))
  {
    v30 = (v29 << 31 >> 31) & 5;
    if ((v29 & 2) != 0)
    {
      v30 += 5;
    }

    if ((v29 & 4) != 0)
    {
      v29 = v30 + 5;
    }

    else
    {
      v29 = v30;
    }
  }

  *(v28 + 20) = v29;
  LODWORD(v3) = v3 + v29 + 3;
  v2 = *(this + 53);
  if ((v2 & 0x1000) == 0)
  {
LABEL_60:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_61;
    }

LABEL_105:
    v34 = *(this + 11);
    if (!v34)
    {
      v34 = *(awd::metrics::CompassSession::default_instance_ + 88);
    }

    v35 = *(v34 + 24);
    if (*(v34 + 24))
    {
      v36 = (v35 << 31 >> 31) & 5;
      if ((v35 & 2) != 0)
      {
        v36 += 5;
      }

      if ((v35 & 4) != 0)
      {
        v35 = v36 + 5;
      }

      else
      {
        v35 = v36;
      }
    }

    *(v34 + 20) = v35;
    LODWORD(v3) = v3 + v35 + 3;
    v2 = *(this + 53);
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_114;
  }

LABEL_96:
  v31 = *(this + 10);
  if (!v31)
  {
    v31 = *(awd::metrics::CompassSession::default_instance_ + 80);
  }

  v32 = *(v31 + 24);
  if (*(v31 + 24))
  {
    v33 = (v32 << 31 >> 31) & 5;
    if ((v32 & 2) != 0)
    {
      v33 += 5;
    }

    if ((v32 & 4) != 0)
    {
      v32 = v33 + 5;
    }

    else
    {
      v32 = v33;
    }
  }

  *(v31 + 20) = v32;
  LODWORD(v3) = v3 + v32 + 3;
  v2 = *(this + 53);
  if ((v2 & 0x2000) != 0)
  {
    goto LABEL_105;
  }

LABEL_61:
  if ((v2 & 0x4000) != 0)
  {
LABEL_114:
    v37 = *(this + 12);
    if (!v37)
    {
      v37 = *(awd::metrics::CompassSession::default_instance_ + 96);
    }

    v38 = *(v37 + 24);
    if (*(v37 + 24))
    {
      v39 = (v38 << 31 >> 31) & 5;
      if ((v38 & 2) != 0)
      {
        v39 += 5;
      }

      if ((v38 & 4) != 0)
      {
        v38 = v39 + 5;
      }

      else
      {
        v38 = v39;
      }
    }

    *(v37 + 20) = v38;
    LODWORD(v3) = v3 + v38 + 3;
    v2 = *(this + 53);
  }

LABEL_123:
  if ((v2 & 0x8000) != 0)
  {
    v3 = (v3 + 6);
  }

  else
  {
    v3 = v3;
  }

LABEL_126:
  if ((v2 & 0xFF0000) != 0)
  {
    v40 = v3 + 6;
    if ((v2 & 0x10000) == 0)
    {
      v40 = v3;
    }

    if ((v2 & 0x20000) != 0)
    {
      v40 += 6;
    }

    if ((v2 & 0x40000) != 0)
    {
      v40 += 6;
    }

    if ((v2 & 0x80000) != 0)
    {
      v40 += 6;
    }

    if ((v2 & 0x100000) != 0)
    {
      v40 += 6;
    }

    if ((v2 & 0x200000) != 0)
    {
      v3 = v40 + 6;
    }

    else
    {
      v3 = v40;
    }

    if ((v2 & 0x400000) != 0)
    {
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 16)) + 2;
      v2 = *(this + 53);
    }

    if ((v2 & 0x800000) != 0)
    {
      v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 18)) + 2;
      v2 = *(this + 53);
    }
  }

  if (!HIBYTE(v2))
  {
    goto LABEL_188;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v41 = *(this + 35);
    if ((v41 & 0x80000000) != 0)
    {
      v42 = 12;
    }

    else if (v41 >= 0x80)
    {
      v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41) + 2;
      v2 = *(this + 53);
    }

    else
    {
      v42 = 3;
    }

    v3 = (v42 + v3);
    if ((v2 & 0x2000000) == 0)
    {
LABEL_147:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_148;
      }

      goto LABEL_164;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_147;
  }

  v43 = *(this + 38);
  if (v43 >= 0x80)
  {
    v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43) + 2;
    v2 = *(this + 53);
  }

  else
  {
    v44 = 3;
  }

  v3 = (v44 + v3);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_148:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_168;
  }

LABEL_164:
  v45 = *(this + 39);
  if (v45 >= 0x80)
  {
    v46 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45) + 2;
    v2 = *(this + 53);
  }

  else
  {
    v46 = 3;
  }

  v3 = (v46 + v3);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_149:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_172;
  }

LABEL_168:
  v47 = *(this + 40);
  if (v47 >= 0x80)
  {
    v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47) + 2;
    v2 = *(this + 53);
  }

  else
  {
    v48 = 3;
  }

  v3 = (v48 + v3);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_150:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_151;
    }

LABEL_176:
    v51 = *(this + 42);
    if (v51 >= 0x80)
    {
      v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51) + 2;
      v2 = *(this + 53);
    }

    else
    {
      v52 = 3;
    }

    v3 = (v52 + v3);
    if ((v2 & 0x40000000) == 0)
    {
LABEL_152:
      if ((v2 & 0x80000000) == 0)
      {
        goto LABEL_188;
      }

      goto LABEL_184;
    }

    goto LABEL_180;
  }

LABEL_172:
  v49 = *(this + 41);
  if (v49 >= 0x80)
  {
    v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49) + 2;
    v2 = *(this + 53);
  }

  else
  {
    v50 = 3;
  }

  v3 = (v50 + v3);
  if ((v2 & 0x20000000) != 0)
  {
    goto LABEL_176;
  }

LABEL_151:
  if ((v2 & 0x40000000) == 0)
  {
    goto LABEL_152;
  }

LABEL_180:
  v53 = *(this + 43);
  if (v53 >= 0x80)
  {
    v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53) + 2;
    v2 = *(this + 53);
  }

  else
  {
    v54 = 3;
  }

  v3 = (v54 + v3);
  if ((v2 & 0x80000000) != 0)
  {
LABEL_184:
    v55 = *(this + 44);
    if (v55 >= 0x80)
    {
      v56 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v55) + 2;
    }

    else
    {
      v56 = 3;
    }

    v3 = (v56 + v3);
  }

LABEL_188:
  LOBYTE(v57) = *(this + 216);
  if (!v57)
  {
    goto LABEL_221;
  }

  if (*(this + 216))
  {
    LODWORD(v3) = v3 + 6;
  }

  if ((*(this + 216) & 2) != 0)
  {
    v58 = *(this + 46);
    if ((v58 & 0x80000000) != 0)
    {
      v59 = 12;
    }

    else if (v58 >= 0x80)
    {
      v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58) + 2;
      v57 = *(this + 54);
    }

    else
    {
      v59 = 3;
    }

    LODWORD(v3) = v59 + v3;
    if ((v57 & 4) == 0)
    {
LABEL_193:
      if ((v57 & 8) == 0)
      {
        goto LABEL_194;
      }

      goto LABEL_208;
    }
  }

  else if ((*(this + 216) & 4) == 0)
  {
    goto LABEL_193;
  }

  v60 = *(this + 47);
  if ((v60 & 0x80000000) != 0)
  {
    v61 = 12;
  }

  else if (v60 >= 0x80)
  {
    v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60) + 2;
    v57 = *(this + 54);
  }

  else
  {
    v61 = 3;
  }

  LODWORD(v3) = v61 + v3;
  if ((v57 & 8) == 0)
  {
LABEL_194:
    if ((v57 & 0x10) == 0)
    {
      goto LABEL_216;
    }

    goto LABEL_212;
  }

LABEL_208:
  v62 = *(this + 48);
  if (v62 >= 0x80)
  {
    v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62) + 2;
    v57 = *(this + 54);
  }

  else
  {
    v63 = 3;
  }

  LODWORD(v3) = v63 + v3;
  if ((v57 & 0x10) != 0)
  {
LABEL_212:
    v64 = *(this + 49);
    if (v64 >= 0x80)
    {
      v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64) + 2;
      v57 = *(this + 54);
    }

    else
    {
      v65 = 3;
    }

    LODWORD(v3) = v65 + v3;
  }

LABEL_216:
  v66 = v3 + 3;
  if ((v57 & 0x20) == 0)
  {
    v66 = v3;
  }

  if ((v57 & 0x40) != 0)
  {
    v3 = v66 + 6;
  }

  else
  {
    v3 = v66;
  }

LABEL_221:
  *(this + 52) = v3;
  return v3;
}

void awd::metrics::CompassSession::CheckTypeAndMergeFrom(awd::metrics::CompassSession *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::CompassSession::CheckTypeAndMergeFrom();
  }

  awd::metrics::CompassSession::MergeFrom(this, lpsrc);
}

void awd::metrics::CompassSession::CopyFrom(awd::metrics::CompassSession *this, const awd::metrics::CompassSession *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::CompassSession::MergeFrom(this, a2);
  }
}

float awd::metrics::CompassSession::Swap(awd::metrics::CompassSession *this, awd::metrics::CompassSession *a2)
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
    v5 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v5;
    LODWORD(v5) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
    LODWORD(v5) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v5;
    LODWORD(v5) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v5;
    LODWORD(v5) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v5;
    LODWORD(v5) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v5;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v8;
    v9 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v9;
    v10 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v10;
    v11 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v11;
    v12 = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v12;
    v13 = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v13;
    v14 = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v14;
    v15 = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v15;
    v16 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v16;
    v17 = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v17;
    v18 = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v18;
    v19 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v19;
    v20 = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v20;
    LODWORD(v20) = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v20;
    LODWORD(v20) = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v20;
    LODWORD(v20) = *(this + 39);
    *(this + 39) = *(a2 + 39);
    *(a2 + 39) = v20;
    LODWORD(v20) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v20;
    LODWORD(v20) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v20;
    LODWORD(v20) = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v20;
    LODWORD(v20) = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v20;
    LODWORD(v20) = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v20;
    v21 = *(this + 45);
    *(this + 45) = *(a2 + 45);
    *(a2 + 45) = v21;
    LODWORD(v20) = *(this + 46);
    *(this + 46) = *(a2 + 46);
    *(a2 + 46) = v20;
    LODWORD(v20) = *(this + 47);
    *(this + 47) = *(a2 + 47);
    *(a2 + 47) = v20;
    LODWORD(v20) = *(this + 48);
    *(this + 48) = *(a2 + 48);
    *(a2 + 48) = v20;
    LODWORD(v20) = *(this + 49);
    *(this + 49) = *(a2 + 49);
    *(a2 + 49) = v20;
    LOBYTE(v20) = *(this + 200);
    *(this + 200) = *(a2 + 200);
    *(a2 + 200) = v20;
    result = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = result;
    LODWORD(v20) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v20;
    LODWORD(v20) = *(this + 54);
    *(this + 54) = *(a2 + 54);
    *(a2 + 54) = v20;
    LODWORD(v20) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v20;
  }

  return result;
}

double awd::metrics::LocationCompassSaturations::SharedCtor(awd::metrics::LocationCompassSaturations *this)
{
  *(this + 7) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::LocationCompassSaturations *awd::metrics::LocationCompassSaturations::LocationCompassSaturations(awd::metrics::LocationCompassSaturations *this, const awd::metrics::LocationCompassSaturations *a2)
{
  *this = &unk_2A1D4EFA8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  awd::metrics::LocationCompassSaturations::MergeFrom(this, a2);
  return this;
}

void awd::metrics::LocationCompassSaturations::MergeFrom(awd::metrics::LocationCompassSaturations *this, const awd::metrics::LocationCompassSaturations *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(a2 + 15);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 15) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 15);
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

  v8 = *(a2 + 2);
  *(this + 15) |= 2u;
  *(this + 2) = v8;
  v4 = *(a2 + 15);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 3);
  *(this + 15) |= 4u;
  *(this + 3) = v9;
  v4 = *(a2 + 15);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 8);
  *(this + 15) |= 8u;
  *(this + 8) = v10;
  v4 = *(a2 + 15);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v12 = *(a2 + 10);
    *(this + 15) |= 0x20u;
    *(this + 10) = v12;
    v4 = *(a2 + 15);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_20:
  v11 = *(a2 + 9);
  *(this + 15) |= 0x10u;
  *(this + 9) = v11;
  v4 = *(a2 + 15);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v13 = *(a2 + 11);
  *(this + 15) |= 0x40u;
  *(this + 11) = v13;
  v4 = *(a2 + 15);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 12);
    *(this + 15) |= 0x80u;
    *(this + 12) = v5;
    v4 = *(a2 + 15);
  }

LABEL_13:
  if ((v4 & 0x100) != 0)
  {
    v6 = *(a2 + 13);
    *(this + 15) |= 0x100u;
    *(this + 13) = v6;
  }
}

void sub_296416FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::LocationCompassSaturations::~LocationCompassSaturations(awd::metrics::LocationCompassSaturations *this)
{
  *this = &unk_2A1D4EFA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EFA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4EFA8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::LocationCompassSaturations::default_instance(awd::metrics::LocationCompassSaturations *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::LocationCompassSaturations::default_instance_;
  if (!awd::metrics::LocationCompassSaturations::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::LocationCompassSaturations::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::LocationCompassSaturations::Clear(uint64_t this)
{
  v1 = *(this + 60);
  if (v1)
  {
    *(this + 36) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 52) = 0;
  }

  *(this + 60) = 0;
  return this;
}

uint64_t awd::metrics::LocationCompassSaturations::MergePartialFromCodedStream(awd::metrics::LocationCompassSaturations *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
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
          if (TagFallback >> 3 > 4)
          {
            break;
          }

          if (TagFallback >> 3 > 2)
          {
            if (v6 != 3)
            {
              if (v6 != 4 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v12 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_62;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v16 = *(a2 + 1);
            v10 = *(a2 + 2);
LABEL_54:
            if (v16 >= v10 || (v23 = *v16, v23 < 0))
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
              v24 = v16 + 1;
              *(a2 + 1) = v24;
            }

            *(this + 15) |= 4u;
            if (v24 < v10 && *v24 == 32)
            {
              v12 = v24 + 1;
              *(a2 + 1) = v12;
LABEL_62:
              v36 = 0;
              if (v12 >= v10 || (v25 = *v12, (v25 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
                if (!result)
                {
                  return result;
                }

                v25 = v36;
                v26 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                v26 = v12 + 1;
                *(a2 + 1) = v26;
              }

              *(this + 8) = v25;
              *(this + 15) |= 8u;
              if (v26 < v10 && *v26 == 40)
              {
                v18 = v26 + 1;
                *(a2 + 1) = v18;
                goto LABEL_70;
              }
            }
          }

          else
          {
            if (v6 != 1)
            {
              if (v6 != 2 || (TagFallback & 7) != 0)
              {
                goto LABEL_37;
              }

              v11 = *(a2 + 1);
              v10 = *(a2 + 2);
              goto LABEL_46;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_37;
            }

            v13 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v13 >= v10 || (v14 = *v13, v14 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
              if (!result)
              {
                return result;
              }

              v15 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 1) = v14;
              v15 = v13 + 1;
              *(a2 + 1) = v15;
            }

            *(this + 15) |= 1u;
            if (v15 < v10 && *v15 == 16)
            {
              v11 = v15 + 1;
              *(a2 + 1) = v11;
LABEL_46:
              if (v11 >= v10 || (v21 = *v11, v21 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
                if (!result)
                {
                  return result;
                }

                v22 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 2) = v21;
                v22 = v11 + 1;
                *(a2 + 1) = v22;
              }

              *(this + 15) |= 2u;
              if (v22 < v10 && *v22 == 24)
              {
                v16 = v22 + 1;
                *(a2 + 1) = v16;
                goto LABEL_54;
              }
            }
          }
        }

        if (TagFallback >> 3 > 6)
        {
          break;
        }

        if (v6 != 5)
        {
          if (v6 != 6 || v7 != 5)
          {
            goto LABEL_37;
          }

          goto LABEL_78;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v18 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_70:
        v36 = 0;
        if (v18 >= v10 || (v27 = *v18, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
          if (!result)
          {
            return result;
          }

          v27 = v36;
          v28 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          v28 = v18 + 1;
          *(a2 + 1) = v28;
        }

        *(this + 9) = v27;
        *(this + 15) |= 0x10u;
        if (v28 < v10 && *v28 == 53)
        {
          *(a2 + 1) = v28 + 1;
LABEL_78:
          v36 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v36) & 1) == 0)
          {
            return 0;
          }

          *(this + 10) = v36;
          *(this + 15) |= 0x20u;
          v29 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v29 < v8 && *v29 == 56)
          {
            v17 = v29 + 1;
            *(a2 + 1) = v17;
LABEL_82:
            v36 = 0;
            if (v17 >= v8 || (v30 = *v17, (v30 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
              if (!result)
              {
                return result;
              }

              v30 = v36;
              v31 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v31 = v17 + 1;
              *(a2 + 1) = v31;
            }

            *(this + 11) = v30;
            *(this + 15) |= 0x40u;
            if (v31 < v8 && *v31 == 64)
            {
              v19 = v31 + 1;
              *(a2 + 1) = v19;
              goto LABEL_90;
            }
          }
        }
      }

      if (v6 == 7)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_37;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_82;
      }

      if (v6 != 8)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_37;
      }

      v19 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_90:
      v36 = 0;
      if (v19 >= v8 || (v32 = *v19, (v32 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
        if (!result)
        {
          return result;
        }

        v32 = v36;
        v33 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v33 = v19 + 1;
        *(a2 + 1) = v33;
      }

      *(this + 12) = v32;
      *(this + 15) |= 0x80u;
      if (v33 < v8 && *v33 == 72)
      {
        v9 = v33 + 1;
        *(a2 + 1) = v9;
LABEL_98:
        if (v9 >= v8 || (v34 = *v9, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v34;
          v35 = v9 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 15) |= 0x100u;
        if (v35 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 9 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_98;
    }

LABEL_37:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::LocationCompassSaturations::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 36), a2, a4);
  v6 = *(v5 + 60);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 40), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 48), a2, a4);
    if ((*(v5 + 60) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 44), a2, a4);
  v6 = *(v5 + 60);
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
  v7 = *(v5 + 52);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v7, a2, a4);
}

uint64_t awd::metrics::LocationCompassSaturations::ByteSize(awd::metrics::LocationCompassSaturations *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    v3 = 0;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_45;
  }

  if (v2)
  {
    LODWORD(v3) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 15);
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LODWORD(v3) = 0;
  if ((v2 & 2) != 0)
  {
LABEL_8:
    LODWORD(v3) = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 15);
  }

LABEL_9:
  if ((v2 & 4) != 0)
  {
    LODWORD(v3) = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
    v2 = *(this + 15);
    if ((v2 & 8) == 0)
    {
LABEL_11:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_11;
  }

  v4 = *(this + 8);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 11;
  }

  else if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v5 = 2;
  }

  LODWORD(v3) = v5 + v3;
  if ((v2 & 0x10) != 0)
  {
LABEL_20:
    v6 = *(this + 9);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 15);
    }

    else
    {
      v7 = 2;
    }

    LODWORD(v3) = v7 + v3;
  }

LABEL_26:
  if ((v2 & 0x20) != 0)
  {
    v3 = (v3 + 5);
  }

  else
  {
    v3 = v3;
  }

  if ((v2 & 0x40) != 0)
  {
    v8 = *(this + 11);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v2 = *(this + 15);
    }

    else
    {
      v9 = 2;
    }

    v3 = (v9 + v3);
    if ((v2 & 0x80) == 0)
    {
LABEL_31:
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_31;
  }

  v10 = *(this + 12);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 11;
  }

  else if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 15);
  }

  else
  {
    v11 = 2;
  }

  v3 = (v11 + v3);
  if ((v2 & 0x100) != 0)
  {
LABEL_45:
    v12 = *(this + 13);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    }

    else
    {
      v13 = 2;
    }

    v3 = (v13 + v3);
  }

LABEL_49:
  *(this + 14) = v3;
  return v3;
}

void awd::metrics::LocationCompassSaturations::CheckTypeAndMergeFrom(awd::metrics::LocationCompassSaturations *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::LocationCompassSaturations::CheckTypeAndMergeFrom();
  }

  awd::metrics::LocationCompassSaturations::MergeFrom(this, lpsrc);
}

void awd::metrics::LocationCompassSaturations::CopyFrom(awd::metrics::LocationCompassSaturations *this, const awd::metrics::LocationCompassSaturations *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::LocationCompassSaturations::MergeFrom(this, a2);
  }
}

float awd::metrics::LocationCompassSaturations::Swap(awd::metrics::LocationCompassSaturations *this, awd::metrics::LocationCompassSaturations *a2)
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
    LODWORD(v4) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
    LODWORD(v4) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
    result = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = result;
    LODWORD(v4) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v4;
    LODWORD(v4) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v4;
    LODWORD(v4) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v4;
    LODWORD(v4) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v4;
    LODWORD(v4) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v4;
  }

  return result;
}

uint64_t awd::metrics::MotionState::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = 0;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 28) = 0;
  return this;
}

awd::metrics::MotionState *awd::metrics::MotionState::MotionState(awd::metrics::MotionState *this, const awd::metrics::MotionState *a2)
{
  *(this + 4) = 0;
  *this = &unk_2A1D4F020;
  *(this + 1) = 0;
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 6) = 0;
  *(this + 28) = 0;
  awd::metrics::MotionState::MergeFrom(this, a2);
  return this;
}

void awd::metrics::MotionState::MergeFrom(awd::metrics::MotionState *this, const awd::metrics::MotionState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
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

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 9) |= 2u;
    v8 = *(this + 2);
    if (v8 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v8, v7);
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

LABEL_14:
    v9 = *(a2 + 6);
    *(this + 9) |= 4u;
    *(this + 6) = v9;
    if ((*(a2 + 9) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 28);
    *(this + 9) |= 8u;
    *(this + 28) = v5;
  }
}

void sub_296417C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionState::~MotionState(awd::metrics::MotionState *this)
{
  *this = &unk_2A1D4F020;
  awd::metrics::MotionState::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F020;
  awd::metrics::MotionState::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F020;
  awd::metrics::MotionState::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionState::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::MotionState::default_instance(awd::metrics::MotionState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionState::default_instance_;
  if (!awd::metrics::MotionState::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionState::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionState::Clear(uint64_t this)
{
  v1 = *(this + 36);
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
    *(this + 28) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::MotionState::MergePartialFromCodedStream(awd::metrics::MotionState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
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
      if (TagFallback >> 3 > 2)
      {
        break;
      }

      if (v7 == 1)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
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

        v9 = *(this + 9) | 1;
        *(this + 9) = v9;
        if (v15 < v12 && *v15 == 18)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_30;
        }
      }

      else
      {
        if (v7 != 2 || v8 != 2)
        {
          goto LABEL_21;
        }

        v9 = *(this + 9);
LABEL_30:
        *(this + 9) = v9 | 2;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v17 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v17 < v10 && *v17 == 24)
        {
          v16 = v17 + 1;
          *(a2 + 1) = v16;
LABEL_36:
          v24 = 0;
          if (v16 >= v10 || (v18 = *v16, (v18 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
            if (!result)
            {
              return result;
            }

            v18 = v24;
            v19 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            v19 = v16 + 1;
            *(a2 + 1) = v19;
          }

          *(this + 6) = v18;
          *(this + 9) |= 4u;
          if (v19 < v10 && *v19 == 32)
          {
            v11 = v19 + 1;
            *(a2 + 1) = v11;
LABEL_44:
            v23 = 0;
            if (v11 >= v10 || (v20 = *v11, (v20 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
              if (!result)
              {
                return result;
              }

              v20 = v23;
              v21 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v21 = v11 + 1;
              *(a2 + 1) = v21;
            }

            *(this + 28) = v20 != 0;
            *(this + 9) |= 8u;
            if (v21 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 3)
    {
      if ((TagFallback & 7) == 0)
      {
        v16 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_36;
      }
    }

    else if (v7 == 4 && (TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_44;
    }

LABEL_21:
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

uint64_t awd::metrics::MotionState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(3, *(v5 + 24), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
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

  v7 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 36);
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
  v8 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v8, a2, a4);
}

uint64_t awd::metrics::MotionState::ByteSize(awd::metrics::MotionState *this)
{
  v2 = *(this + 9);
  if (!v2)
  {
    result = 0;
    goto LABEL_24;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_7:
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
      v2 = *(this + 9);
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
    goto LABEL_16;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 9);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  if ((v2 & 4) != 0)
  {
    v11 = *(this + 6);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 9);
    }

    else
    {
      v12 = 2;
    }

    v3 += v12;
  }

  result = ((v2 >> 2) & 2) + v3;
LABEL_24:
  *(this + 8) = result;
  return result;
}

void awd::metrics::MotionState::CheckTypeAndMergeFrom(awd::metrics::MotionState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::MotionState::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionState::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionState::CopyFrom(awd::metrics::MotionState *this, const awd::metrics::MotionState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionState::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::MotionState::Swap(uint64_t this, awd::metrics::MotionState *a2)
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
    LOBYTE(v2) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return this;
}

void *awd::metrics::MotionTrigger::SharedCtor(void *this)
{
  this[8] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[1] = 0;
  this[2] = v1;
  this[3] = 0;
  this[4] = 0;
  return this;
}

awd::metrics::MotionTrigger *awd::metrics::MotionTrigger::MotionTrigger(awd::metrics::MotionTrigger *this, const awd::metrics::MotionTrigger *a2)
{
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 8) = 0;
  *this = &unk_2A1D4F098;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = v3;
  awd::metrics::MotionTrigger::MergeFrom(this, a2);
  return this;
}

void sub_296418590(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void *awd::metrics::MotionTrigger::MergeFrom(awd::metrics::MotionTrigger *this, const awd::metrics::MotionTrigger *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  result = wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 40), a2 + 40);
  LOBYTE(v5) = *(a2 + 68);
  if (v5)
  {
    if (*(a2 + 68))
    {
      v7 = *(a2 + 1);
      *(this + 17) |= 1u;
      *(this + 1) = v7;
      v5 = *(a2 + 17);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 68) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 2);
    *(this + 17) |= 2u;
    v9 = *(this + 2);
    if (v9 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    result = std::string::operator=(v9, v8);
    v5 = *(a2 + 17);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    v10 = *(a2 + 3);
    *(this + 17) |= 4u;
    *(this + 3) = v10;
    v5 = *(a2 + 17);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_16:
    v11 = *(a2 + 8);
    *(this + 17) |= 8u;
    *(this + 8) = v11;
    if ((*(a2 + 17) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    v6 = *(a2 + 9);
    *(this + 17) |= 0x10u;
    *(this + 9) = v6;
  }

  return result;
}

void sub_296418714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionTrigger::~MotionTrigger(awd::metrics::MotionTrigger *this)
{
  *this = &unk_2A1D4F098;
  v2 = (this + 40);
  awd::metrics::MotionTrigger::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MotionTrigger::~MotionTrigger(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionTrigger::SharedDtor(uint64_t this)
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

uint64_t awd::metrics::MotionTrigger::default_instance(awd::metrics::MotionTrigger *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionTrigger::default_instance_;
  if (!awd::metrics::MotionTrigger::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionTrigger::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionTrigger::Clear(awd::metrics::MotionTrigger *this)
{
  v2 = *(this + 68);
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
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 40);
  *(this + 17) = 0;
  return result;
}

uint64_t awd::metrics::MotionTrigger::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v3 = this;
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
          if (v5 >= *(a2 + 2) || (v6 = *v5, (v6 & 0x80000000) != 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            v6 = this;
            *(a2 + 8) = this;
            if (!this)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = v6;
            *(a2 + 1) = v5 + 1;
            if (!v6)
            {
              return 1;
            }
          }

          v7 = v6 >> 3;
          v8 = v6 & 7;
          if (v6 >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if ((v6 & 7) == 0)
            {
              v15 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_50;
            }

            goto LABEL_27;
          }

          if (v7 == 5)
          {
            if ((v6 & 7) == 0)
            {
              v17 = *(a2 + 1);
              v9 = *(a2 + 2);
              goto LABEL_58;
            }

            goto LABEL_27;
          }

          if (v7 != 6 || v8 != 2)
          {
            goto LABEL_27;
          }

          while (2)
          {
            v25 = *(v3 + 52);
            v26 = *(v3 + 48);
            if (v26 >= v25)
            {
              if (v25 == *(v3 + 56))
              {
                this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 40));
                v25 = *(v3 + 52);
              }

              *(v3 + 52) = v25 + 1;
              v29 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
              v30 = *(v3 + 40);
              v31 = *(v3 + 48);
              *(v3 + 48) = v31 + 1;
              *(v30 + 8 * v31) = v29;
            }

            else
            {
              v27 = *(v3 + 40);
              *(v3 + 48) = v26 + 1;
              v28 = *(v27 + 8 * v26);
            }

            this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!this)
            {
              return this;
            }

            v24 = *(a2 + 1);
            v32 = *(a2 + 2);
            if (v24 < v32 && *v24 == 50)
            {
LABEL_65:
              *(a2 + 1) = v24 + 1;
              continue;
            }

            break;
          }

          if (v24 == v32 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            this = 1;
            *(a2 + 36) = 1;
            return this;
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if ((v6 & 7) != 0)
        {
          goto LABEL_27;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v12 >= v11 || (v13 = *v12, v13 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 8));
          if (!this)
          {
            return this;
          }

          v14 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 8) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        v16 = *(v3 + 68) | 1;
        *(v3 + 68) = v16;
        if (v14 < v11 && *v14 == 18)
        {
          *(a2 + 1) = v14 + 1;
          goto LABEL_36;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_27;
      }

      v16 = *(v3 + 68);
LABEL_36:
      *(v3 + 68) = v16 | 2;
      if (*(v3 + 16) == v4)
      {
        operator new();
      }

      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!this)
      {
        return this;
      }

      v18 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v18 < v9 && *v18 == 24)
      {
        v10 = v18 + 1;
        *(a2 + 1) = v10;
LABEL_42:
        if (v10 >= v9 || (v19 = *v10, v19 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 24));
          if (!this)
          {
            return this;
          }

          v20 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(v3 + 24) = v19;
          v20 = v10 + 1;
          *(a2 + 1) = v20;
        }

        *(v3 + 68) |= 4u;
        if (v20 < v9 && *v20 == 32)
        {
          v15 = v20 + 1;
          *(a2 + 1) = v15;
LABEL_50:
          v34 = 0;
          if (v15 >= v9 || (v21 = *v15, (v21 & 0x80000000) != 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34);
            if (!this)
            {
              return this;
            }

            v21 = v34;
            v22 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            v22 = v15 + 1;
            *(a2 + 1) = v22;
          }

          *(v3 + 32) = v21;
          *(v3 + 68) |= 8u;
          if (v22 < v9 && *v22 == 40)
          {
            v17 = v22 + 1;
            *(a2 + 1) = v17;
LABEL_58:
            v33 = 0;
            if (v17 >= v9 || (v23 = *v17, (v23 & 0x80000000) != 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
              if (!this)
              {
                return this;
              }

              v23 = v33;
              v24 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v24 = v17 + 1;
              *(a2 + 1) = v24;
            }

            *(v3 + 36) = v23;
            *(v3 + 68) |= 0x10u;
            if (v24 < v9 && *v24 == 50)
            {
              goto LABEL_65;
            }
          }
        }
      }
    }

    if (v7 == 3 && (v6 & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_42;
    }

LABEL_27:
    if (v8 == 4)
    {
      return 1;
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v6);
    if ((this & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::MotionTrigger::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 68);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 32), a2, a4);
  if ((*(v5 + 68) & 0x10) != 0)
  {
LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 36), a2, a4);
  }

LABEL_7:
  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(v5 + 40) + 8 * v7);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v7;
    }

    while (v7 < *(v5 + 48));
  }

  return this;
}

uint64_t awd::metrics::MotionTrigger::ByteSize(awd::metrics::MotionTrigger *this)
{
  LOBYTE(v2) = *(this + 68);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_33;
  }

  if (*(this + 68))
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
    if ((*(this + 68) & 2) == 0)
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

  v3 += v9 + v5 + 1;
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
    v2 = *(this + 17);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_27;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v10 = *(this + 8);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 11;
  }

  else if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 17);
  }

  else
  {
    v11 = 2;
  }

  v3 += v11;
  if ((v2 & 0x10) != 0)
  {
LABEL_27:
    v12 = *(this + 9);
    if ((v12 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    }

    else
    {
      v13 = 2;
    }

    v3 += v13;
  }

LABEL_33:
  v14 = *(this + 12);
  v15 = (v14 + v3);
  if (v14 >= 1)
  {
    for (i = 0; i < v14; ++i)
    {
      v17 = *(*(this + 5) + 8 * i);
      v18 = *(v17 + 23);
      v19 = v18;
      v20 = *(v17 + 8);
      if ((v18 & 0x80u) == 0)
      {
        v21 = *(v17 + 23);
      }

      else
      {
        v21 = v20;
      }

      if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
        v18 = *(v17 + 23);
        v20 = *(v17 + 8);
        v14 = *(this + 12);
        v19 = *(v17 + 23);
      }

      else
      {
        v22 = 1;
      }

      if (v19 < 0)
      {
        v18 = v20;
      }

      v15 = (v22 + v15 + v18);
    }
  }

  *(this + 16) = v15;
  return v15;
}

void *awd::metrics::MotionTrigger::CheckTypeAndMergeFrom(awd::metrics::MotionTrigger *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::MotionTrigger::CheckTypeAndMergeFrom();
  }

  return awd::metrics::MotionTrigger::MergeFrom(this, lpsrc);
}

wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase *wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
      }

      v8 = *(*a2 + 8 * v7);
      v9 = *(a1 + 3);
      v10 = *(a1 + 2);
      if (v10 >= v9)
      {
        if (v9 == *(a1 + 4))
        {
          result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v9 = *(a1 + 3);
        }

        *(a1 + 3) = v9 + 1;
        v12 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
        v13 = *a1;
        v14 = *(a1 + 2);
        *(a1 + 2) = v14 + 1;
        *(v13 + 8 * v14) = v12;
      }

      else
      {
        v11 = *a1;
        *(a1 + 2) = v10 + 1;
        v12 = *(v11 + 8 * v10);
      }

      result = std::string::operator=(v12, v8);
      ++v7;
      v6 = *(a2 + 8);
    }

    while (v7 < v6);
  }

  return result;
}

void sub_29641916C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const awd::metrics::MotionTrigger *awd::metrics::MotionTrigger::CopyFrom(const awd::metrics::MotionTrigger *this, const awd::metrics::MotionTrigger *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);

    return awd::metrics::MotionTrigger::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t awd::metrics::MotionTrigger::Swap(uint64_t this, awd::metrics::MotionTrigger *a2)
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
    LODWORD(v7) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v7;
    LODWORD(v7) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v7;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v8 = *(v3 + 68);
    *(v3 + 68) = *(a2 + 17);
    *(a2 + 17) = v8;
    v9 = *(v3 + 64);
    *(v3 + 64) = *(a2 + 16);
    *(a2 + 16) = v9;
  }

  return this;
}

void *awd::metrics::MotionGyroMiniCal::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

awd::metrics::MotionGyroMiniCal *awd::metrics::MotionGyroMiniCal::MotionGyroMiniCal(awd::metrics::MotionGyroMiniCal *this, const awd::metrics::MotionGyroMiniCal *a2)
{
  *this = &unk_2A1D4F110;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::MotionGyroMiniCal::MergeFrom(this, a2);
  return this;
}

void awd::metrics::MotionGyroMiniCal::MergeFrom(awd::metrics::MotionGyroMiniCal *this, const awd::metrics::MotionGyroMiniCal *a2)
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

void sub_2964193DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionGyroMiniCal::~MotionGyroMiniCal(awd::metrics::MotionGyroMiniCal *this)
{
  *this = &unk_2A1D4F110;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F110;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F110;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionGyroMiniCal::default_instance(awd::metrics::MotionGyroMiniCal *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionGyroMiniCal::default_instance_;
  if (!awd::metrics::MotionGyroMiniCal::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionGyroMiniCal::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionGyroMiniCal::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::MotionGyroMiniCal::MergePartialFromCodedStream(awd::metrics::MotionGyroMiniCal *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t awd::metrics::MotionGyroMiniCal::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::MotionGyroMiniCal::ByteSize(awd::metrics::MotionGyroMiniCal *this)
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

void awd::metrics::MotionGyroMiniCal::CheckTypeAndMergeFrom(awd::metrics::MotionGyroMiniCal *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::MotionGyroMiniCal::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionGyroMiniCal::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionGyroMiniCal::CopyFrom(awd::metrics::MotionGyroMiniCal *this, const awd::metrics::MotionGyroMiniCal *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionGyroMiniCal::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::MotionGyroMiniCal::Swap(uint64_t this, awd::metrics::MotionGyroMiniCal *a2)
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

double awd::metrics::MotionDropDetection::SharedCtor(awd::metrics::MotionDropDetection *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::MotionDropDetection *awd::metrics::MotionDropDetection::MotionDropDetection(awd::metrics::MotionDropDetection *this, const awd::metrics::MotionDropDetection *a2)
{
  *this = &unk_2A1D4F188;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  awd::metrics::MotionDropDetection::MergeFrom(this, a2);
  return this;
}

float awd::metrics::MotionDropDetection::MergeFrom(awd::metrics::MotionDropDetection *this, const awd::metrics::MotionDropDetection *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (v5)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 1);
      *(this + 10) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 10);
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

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 10) |= 2u;
    *(this + 2) = v7;
    v5 = *(a2 + 10);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    result = *(a2 + 6);
    *(this + 10) |= 4u;
    *(this + 6) = result;
    v5 = *(a2 + 10);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_14:
    result = *(a2 + 7);
    *(this + 10) |= 8u;
    *(this + 7) = result;
    if ((*(a2 + 10) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    result = *(a2 + 8);
    *(this + 10) |= 0x10u;
    *(this + 8) = result;
  }

  return result;
}

void sub_296419A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionDropDetection::~MotionDropDetection(awd::metrics::MotionDropDetection *this)
{
  *this = &unk_2A1D4F188;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F188;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F188;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionDropDetection::default_instance(awd::metrics::MotionDropDetection *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionDropDetection::default_instance_;
  if (!awd::metrics::MotionDropDetection::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionDropDetection::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionDropDetection::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 32) = 0;
    *(this + 24) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::MotionDropDetection::MergePartialFromCodedStream(awd::metrics::MotionDropDetection *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || v7 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
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

        *(this + 10) |= 1u;
        if (v13 < v10 && *v13 == 21)
        {
          *(a2 + 1) = v13 + 1;
LABEL_32:
          v22 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v22) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v22;
          *(this + 10) |= 4u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 29)
          {
            *(a2 + 1) = v15 + 1;
LABEL_36:
            v21 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
            {
              return 0;
            }

            *(this + 7) = v21;
            *(this + 10) |= 8u;
            v16 = *(a2 + 1);
            if (v16 < *(a2 + 2) && *v16 == 37)
            {
              *(a2 + 1) = v16 + 1;
              goto LABEL_40;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if (v7 != 5)
        {
          goto LABEL_21;
        }

        goto LABEL_36;
      }

      if (v6 != 4)
      {
        break;
      }

      if (v7 != 5)
      {
        goto LABEL_21;
      }

LABEL_40:
      v20 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v20) & 1) == 0)
      {
        return 0;
      }

      *(this + 8) = v20;
      *(this + 10) |= 0x10u;
      v17 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v17 < v8 && *v17 == 40)
      {
        v9 = v17 + 1;
        *(a2 + 1) = v9;
LABEL_44:
        if (v9 >= v8 || (v18 = *v9, v18 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v19 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v18;
          v19 = v9 + 1;
          *(a2 + 1) = v19;
        }

        *(this + 10) |= 2u;
        if (v19 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_44;
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

uint64_t awd::metrics::MotionDropDetection::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 24), a3);
  v6 = *(v5 + 40);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 40) & 2) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 28), a3);
  v6 = *(v5 + 40);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 2) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, v7, a2, a4);
}

uint64_t awd::metrics::MotionDropDetection::ByteSize(awd::metrics::MotionDropDetection *this)
{
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    result = 0;
    goto LABEL_15;
  }

  if ((*(this + 40) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 10);
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 10);
  }

LABEL_8:
  v5 = v3 + 5;
  if ((v2 & 4) == 0)
  {
    v5 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v5 += 5;
  }

  if ((v2 & 0x10) != 0)
  {
    result = v5 + 5;
  }

  else
  {
    result = v5;
  }

LABEL_15:
  *(this + 9) = result;
  return result;
}

float awd::metrics::MotionDropDetection::CheckTypeAndMergeFrom(awd::metrics::MotionDropDetection *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::MotionDropDetection::CheckTypeAndMergeFrom();
  }

  return awd::metrics::MotionDropDetection::MergeFrom(this, lpsrc);
}

float awd::metrics::MotionDropDetection::CopyFrom(awd::metrics::MotionDropDetection *this, const awd::metrics::MotionDropDetection *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return awd::metrics::MotionDropDetection::MergeFrom(this, a2);
  }

  return result;
}

float awd::metrics::MotionDropDetection::Swap(awd::metrics::MotionDropDetection *this, awd::metrics::MotionDropDetection *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v4;
    v5 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v5;
    result = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = result;
    LODWORD(v3) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v3;
    LODWORD(v3) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v3;
  }

  return result;
}

double awd::metrics::MotionPedometerCalibration::SharedCtor(awd::metrics::MotionPedometerCalibration *this)
{
  result = 0.0;
  *(this + 36) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::MotionPedometerCalibration *awd::metrics::MotionPedometerCalibration::MotionPedometerCalibration(awd::metrics::MotionPedometerCalibration *this, const awd::metrics::MotionPedometerCalibration *a2)
{
  *this = &unk_2A1D4F200;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  awd::metrics::MotionPedometerCalibration::MergeFrom(this, a2);
  return this;
}

float awd::metrics::MotionPedometerCalibration::MergeFrom(awd::metrics::MotionPedometerCalibration *this, const awd::metrics::MotionPedometerCalibration *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 48);
  if (v5)
  {
    if (*(a2 + 48))
    {
      v6 = *(a2 + 1);
      *(this + 12) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 12);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 12) |= 2u;
    *(this + 4) = v7;
    v5 = *(a2 + 12);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    result = *(a2 + 5);
    *(this + 12) |= 4u;
    *(this + 5) = result;
    v5 = *(a2 + 12);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    result = *(a2 + 6);
    *(this + 12) |= 8u;
    *(this + 6) = result;
    v5 = *(a2 + 12);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

LABEL_18:
    result = *(a2 + 7);
    *(this + 12) |= 0x10u;
    *(this + 7) = result;
    v5 = *(a2 + 12);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }

LABEL_19:
    result = *(a2 + 8);
    *(this + 12) |= 0x20u;
    *(this + 8) = result;
    v5 = *(a2 + 12);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_12;
    }

LABEL_20:
    result = *(a2 + 9);
    *(this + 12) |= 0x40u;
    *(this + 9) = result;
    if ((*(a2 + 12) & 0x80) == 0)
    {
      return result;
    }

LABEL_12:
    result = *(a2 + 10);
    *(this + 12) |= 0x80u;
    *(this + 10) = result;
  }

  return result;
}

void sub_29641A390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionPedometerCalibration::~MotionPedometerCalibration(awd::metrics::MotionPedometerCalibration *this)
{
  *this = &unk_2A1D4F200;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F200;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F200;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionPedometerCalibration::default_instance(awd::metrics::MotionPedometerCalibration *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionPedometerCalibration::default_instance_;
  if (!awd::metrics::MotionPedometerCalibration::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionPedometerCalibration::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionPedometerCalibration::Clear(uint64_t this)
{
  if (*(this + 48))
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t awd::metrics::MotionPedometerCalibration::MergePartialFromCodedStream(awd::metrics::MotionPedometerCalibration *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 4)
        {
          break;
        }

        if (TagFallback >> 3 <= 6)
        {
          if (v6 == 5)
          {
            if (v7 == 5)
            {
              goto LABEL_58;
            }
          }

          else if (v6 == 6 && v7 == 5)
          {
            goto LABEL_62;
          }

          goto LABEL_34;
        }

        if (v6 == 7)
        {
          if (v7 != 5)
          {
            goto LABEL_34;
          }

LABEL_66:
          v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 9) = v21;
          *(this + 12) |= 0x40u;
          v20 = *(a2 + 1);
          if (v20 < *(a2 + 2) && *v20 == 69)
          {
            *(a2 + 1) = v20 + 1;
            goto LABEL_70;
          }
        }

        else
        {
          if (v6 != 8 || v7 != 5)
          {
            goto LABEL_34;
          }

LABEL_70:
          v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 10) = v21;
          *(this + 12) |= 0x80u;
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
        if (v6 == 3)
        {
          if (v7 == 5)
          {
            goto LABEL_50;
          }
        }

        else if (v6 == 4 && v7 == 5)
        {
          goto LABEL_54;
        }

        goto LABEL_34;
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
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

      *(this + 12) |= 1u;
      if (v12 < v8 && *v12 == 16)
      {
        v9 = v12 + 1;
        *(a2 + 1) = v9;
LABEL_42:
        if (v9 >= v8 || (v14 = *v9, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v14;
          v15 = v9 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 12) |= 2u;
        if (v15 < v8 && *v15 == 29)
        {
          *(a2 + 1) = v15 + 1;
LABEL_50:
          v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v21;
          *(this + 12) |= 4u;
          v16 = *(a2 + 1);
          if (v16 < *(a2 + 2) && *v16 == 37)
          {
            *(a2 + 1) = v16 + 1;
LABEL_54:
            v21 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
            {
              return 0;
            }

            *(this + 6) = v21;
            *(this + 12) |= 8u;
            v17 = *(a2 + 1);
            if (v17 < *(a2 + 2) && *v17 == 45)
            {
              *(a2 + 1) = v17 + 1;
LABEL_58:
              v21 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
              {
                return 0;
              }

              *(this + 7) = v21;
              *(this + 12) |= 0x10u;
              v18 = *(a2 + 1);
              if (v18 < *(a2 + 2) && *v18 == 53)
              {
                *(a2 + 1) = v18 + 1;
LABEL_62:
                v21 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
                {
                  return 0;
                }

                *(this + 8) = v21;
                *(this + 12) |= 0x20u;
                v19 = *(a2 + 1);
                if (v19 < *(a2 + 2) && *v19 == 61)
                {
                  *(a2 + 1) = v19 + 1;
                  goto LABEL_66;
                }
              }
            }
          }
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_42;
    }

LABEL_34:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t awd::metrics::MotionPedometerCalibration::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 48);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 48);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 28), a3);
  v6 = *(v5 + 48);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 36), a3);
    if ((*(v5 + 48) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 32), a3);
  v6 = *(v5 + 48);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_17:
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, v7, a3);
}

uint64_t awd::metrics::MotionPedometerCalibration::ByteSize(awd::metrics::MotionPedometerCalibration *this)
{
  LOBYTE(v2) = *(this + 48);
  if (!v2)
  {
    result = 0;
    goto LABEL_24;
  }

  if ((*(this + 48) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 48) & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v5 = *(this + 4);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 12);
    }

    else
    {
      v6 = 2;
    }

    v3 += v6;
    goto LABEL_11;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 12);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v7 = v3 + 5;
  if ((v2 & 4) == 0)
  {
    v7 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v7 += 5;
  }

  if ((v2 & 0x10) != 0)
  {
    v7 += 5;
  }

  if ((v2 & 0x20) != 0)
  {
    v7 += 5;
  }

  if ((v2 & 0x40) != 0)
  {
    v7 += 5;
  }

  if ((v2 & 0x80) != 0)
  {
    result = v7 + 5;
  }

  else
  {
    result = v7;
  }

LABEL_24:
  *(this + 11) = result;
  return result;
}

float awd::metrics::MotionPedometerCalibration::CheckTypeAndMergeFrom(awd::metrics::MotionPedometerCalibration *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::MotionPedometerCalibration::CheckTypeAndMergeFrom();
  }

  return awd::metrics::MotionPedometerCalibration::MergeFrom(this, lpsrc);
}

float awd::metrics::MotionPedometerCalibration::CopyFrom(awd::metrics::MotionPedometerCalibration *this, const awd::metrics::MotionPedometerCalibration *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return awd::metrics::MotionPedometerCalibration::MergeFrom(this, a2);
  }

  return result;
}

float awd::metrics::MotionPedometerCalibration::Swap(awd::metrics::MotionPedometerCalibration *this, awd::metrics::MotionPedometerCalibration *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v3;
    v4 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v4;
    v5 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v5;
    v6 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v6;
    v7 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v7;
    result = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = result;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
  }

  return result;
}

double awd::metrics::MotionGyroBiasEstimation_EndCount::SharedCtor(awd::metrics::MotionGyroBiasEstimation_EndCount *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::MotionGyroBiasEstimation_EndCount *awd::metrics::MotionGyroBiasEstimation_EndCount::MotionGyroBiasEstimation_EndCount(awd::metrics::MotionGyroBiasEstimation_EndCount *this, const awd::metrics::MotionGyroBiasEstimation_EndCount *a2)
{
  *this = &unk_2A1D4F278;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  awd::metrics::MotionGyroBiasEstimation_EndCount::MergeFrom(this, a2);
  return this;
}

void awd::metrics::MotionGyroBiasEstimation_EndCount::MergeFrom(awd::metrics::MotionGyroBiasEstimation_EndCount *this, const awd::metrics::MotionGyroBiasEstimation_EndCount *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 2);
      *(this + 9) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 9);
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

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 9) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 9);
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
    v8 = *(a2 + 4);
    *(this + 9) |= 4u;
    *(this + 4) = v8;
    v4 = *(a2 + 9);
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
    v9 = *(a2 + 5);
    *(this + 9) |= 8u;
    *(this + 5) = v9;
    v4 = *(a2 + 9);
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
    v10 = *(a2 + 6);
    *(this + 9) |= 0x10u;
    *(this + 6) = v10;
    if ((*(a2 + 9) & 0x20) == 0)
    {
      return;
    }

LABEL_10:
    v5 = *(a2 + 7);
    *(this + 9) |= 0x20u;
    *(this + 7) = v5;
  }
}

void sub_29641AE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionGyroBiasEstimation_EndCount::~MotionGyroBiasEstimation_EndCount(awd::metrics::MotionGyroBiasEstimation_EndCount *this)
{
  *this = &unk_2A1D4F278;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F278;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4F278;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionGyroBiasEstimation_EndCount::default_instance(awd::metrics::MotionGyroBiasEstimation_EndCount *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionGyroBiasEstimation_EndCount::default_instance_;
  if (!awd::metrics::MotionGyroBiasEstimation_EndCount::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionGyroBiasEstimation_EndCount::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionGyroBiasEstimation_EndCount::Clear(uint64_t this)
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

uint64_t awd::metrics::MotionGyroBiasEstimation_EndCount::MergePartialFromCodedStream(awd::metrics::MotionGyroBiasEstimation_EndCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 9) |= 1u;
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
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
        if (!result)
        {
          return result;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 3) = v16;
        v17 = v14 + 1;
        *(a2 + 1) = v17;
      }

      *(this + 9) |= 2u;
      if (v17 < v7 && *v17 == 24)
      {
        v8 = v17 + 1;
        *(a2 + 1) = v8;
LABEL_43:
        if (v8 >= v7 || (v18 = *v8, v18 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v19 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v18;
          v19 = v8 + 1;
          *(a2 + 1) = v19;
        }

        *(this + 9) |= 4u;
        if (v19 < v7 && *v19 == 32)
        {
          v13 = v19 + 1;
          *(a2 + 1) = v13;
LABEL_51:
          if (v13 >= v7 || (v20 = *v13, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v21 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v20;
            v21 = v13 + 1;
            *(a2 + 1) = v21;
          }

          *(this + 9) |= 8u;
          if (v21 < v7 && *v21 == 40)
          {
            v15 = v21 + 1;
            *(a2 + 1) = v15;
LABEL_59:
            if (v15 >= v7 || (v22 = *v15, v22 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
              if (!result)
              {
                return result;
              }

              v23 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 6) = v22;
              v23 = v15 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 9) |= 0x10u;
            if (v23 < v7 && *v23 == 48)
            {
              v9 = v23 + 1;
              *(a2 + 1) = v9;
LABEL_67:
              if (v9 >= v7 || (v24 = *v9, v24 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
                if (!result)
                {
                  return result;
                }

                v25 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 7) = v24;
                v25 = v9 + 1;
                *(a2 + 1) = v25;
              }

              *(this + 9) |= 0x20u;
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

unsigned int *awd::metrics::MotionGyroBiasEstimation_EndCount::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[9];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[9];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[9];
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
  v6 = v5[9];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[6], a2, a4);
    if ((v5[9] & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[5], a2, a4);
  v6 = v5[9];
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
  v7 = v5[7];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v7, a2, a4);
}

uint64_t awd::metrics::MotionGyroBiasEstimation_EndCount::ByteSize(awd::metrics::MotionGyroBiasEstimation_EndCount *this)
{
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_35;
  }

  if (*(this + 36))
  {
    v4 = *(this + 2);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 9);
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 3);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 9);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v7 = *(this + 4);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(this + 9);
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_16:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_27;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_16;
  }

  v9 = *(this + 5);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(this + 9);
  }

  else
  {
    v10 = 2;
  }

  v3 = (v10 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_17:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

LABEL_27:
  v11 = *(this + 6);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(this + 9);
  }

  else
  {
    v12 = 2;
  }

  v3 = (v12 + v3);
  if ((v2 & 0x20) != 0)
  {
LABEL_31:
    v13 = *(this + 7);
    if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    }

    else
    {
      v14 = 2;
    }

    v3 = (v14 + v3);
  }

LABEL_35:
  *(this + 8) = v3;
  return v3;
}

void awd::metrics::MotionGyroBiasEstimation_EndCount::CheckTypeAndMergeFrom(awd::metrics::MotionGyroBiasEstimation_EndCount *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::MotionGyroBiasEstimation_EndCount::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionGyroBiasEstimation_EndCount::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionGyroBiasEstimation_EndCount::CopyFrom(awd::metrics::MotionGyroBiasEstimation_EndCount *this, const awd::metrics::MotionGyroBiasEstimation_EndCount *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionGyroBiasEstimation_EndCount::MergeFrom(this, a2);
  }
}

awd::metrics::MotionGyroBiasEstimation_EndCount *awd::metrics::MotionGyroBiasEstimation_EndCount::Swap(awd::metrics::MotionGyroBiasEstimation_EndCount *this, awd::metrics::MotionGyroBiasEstimation_EndCount *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v6;
    v7 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v7;
    v8 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v8;
    v9 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v9;
  }

  return this;
}

uint64_t awd::metrics::MotionGyroBiasEstimation::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 52) = 0;
  *(this + 68) = 0;
  *(this + 60) = 0;
  *(this + 76) = 0;
  return this;
}

awd::metrics::MotionGyroBiasEstimation *awd::metrics::MotionGyroBiasEstimation::MotionGyroBiasEstimation(awd::metrics::MotionGyroBiasEstimation *this, const awd::metrics::MotionGyroBiasEstimation *a2)
{
  *this = &unk_2A1D4F2F0;
  *(this + 52) = 0;
  *(this + 68) = 0;
  *(this + 60) = 0;
  *(this + 19) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  awd::metrics::MotionGyroBiasEstimation::MergeFrom(this, a2);
  return this;
}

void sub_29641B730(_Unwind_Exception *a1)
{
  v3 = *(v1 + 4);
  if (v3)
  {
    MEMORY[0x29C25A710](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionGyroBiasEstimation::MergeFrom(awd::metrics::MotionGyroBiasEstimation *this, const awd::metrics::MotionGyroBiasEstimation *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 10);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, *(this + 10) + v4);
    memcpy((*(this + 4) + 4 * *(this + 10)), *(a2 + 4), 4 * *(a2 + 10));
    *(this + 10) += *(a2 + 10);
  }

  v5 = *(a2 + 19);
  if (!v5)
  {
    goto LABEL_14;
  }

  if (v5)
  {
    v8 = *(a2 + 1);
    *(this + 19) |= 1u;
    *(this + 1) = v8;
    v5 = *(a2 + 19);
    if ((v5 & 2) == 0)
    {
LABEL_8:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

  *(this + 19) |= 2u;
  v9 = *(this + 2);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (!v10)
  {
    v10 = *(awd::metrics::MotionGyroBiasEstimation::default_instance_ + 16);
  }

  awd::metrics::MotionGyroBiasEstimation_EndCount::MergeFrom(v9, v10);
  v5 = *(a2 + 19);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_23:
  *(this + 19) |= 4u;
  v11 = *(this + 3);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 3);
  if (!v12)
  {
    v12 = *(awd::metrics::MotionGyroBiasEstimation::default_instance_ + 24);
  }

  awd::metrics::MotionGyroBiasEstimation_EndCount::MergeFrom(v11, v12);
  v5 = *(a2 + 19);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_29:
    v14 = *(a2 + 14);
    *(this + 19) |= 0x20u;
    *(this + 14) = v14;
    v5 = *(a2 + 19);
    if ((v5 & 0x40) == 0)
    {
LABEL_12:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_28:
  v13 = *(a2 + 13);
  *(this + 19) |= 0x10u;
  *(this + 13) = v13;
  v5 = *(a2 + 19);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_30:
  v15 = *(a2 + 15);
  *(this + 19) |= 0x40u;
  *(this + 15) = v15;
  v5 = *(a2 + 19);
  if ((v5 & 0x80) != 0)
  {
LABEL_13:
    v6 = *(a2 + 16);
    *(this + 19) |= 0x80u;
    *(this + 16) = v6;
    v5 = *(a2 + 19);
  }

LABEL_14:
  if ((v5 & 0x100) != 0)
  {
    v7 = *(a2 + 17);
    *(this + 19) |= 0x100u;
    *(this + 17) = v7;
  }
}

void sub_29641B9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionGyroBiasEstimation::~MotionGyroBiasEstimation(awd::metrics::MotionGyroBiasEstimation *this)
{
  *this = &unk_2A1D4F2F0;
  awd::metrics::MotionGyroBiasEstimation::SharedDtor(this);
  v2 = *(this + 4);
  if (v2)
  {
    MEMORY[0x29C25A710](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MotionGyroBiasEstimation::~MotionGyroBiasEstimation(this);

  JUMPOUT(0x29C25A730);
}

void *awd::metrics::MotionGyroBiasEstimation::SharedDtor(void *this)
{
  if (awd::metrics::MotionGyroBiasEstimation::default_instance_ != this)
  {
    v1 = this;
    v2 = this[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[3];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

uint64_t awd::metrics::MotionGyroBiasEstimation::default_instance(awd::metrics::MotionGyroBiasEstimation *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionGyroBiasEstimation::default_instance_;
  if (!awd::metrics::MotionGyroBiasEstimation::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionGyroBiasEstimation::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionGyroBiasEstimation::Clear(uint64_t this)
{
  v1 = *(this + 76);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
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
        v1 = *(this + 76);
      }
    }

    if ((v1 & 4) != 0)
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
        v1 = *(this + 76);
      }
    }

    *(this + 60) = 0;
    *(this + 52) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 68) = 0;
  }

  *(this + 40) = 0;
  *(this + 76) = 0;
  return this;
}

uint64_t awd::metrics::MotionGyroBiasEstimation::MergePartialFromCodedStream(awd::metrics::MotionGyroBiasEstimation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 <= 4)
          {
            break;
          }

          if (TagFallback >> 3 <= 6)
          {
            if (v6 != 5)
            {
              if (v6 != 6 || (TagFallback & 7) != 0)
              {
                goto LABEL_38;
              }

              v13 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_102;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_38;
            }

            v19 = *(a2 + 1);
            v8 = *(a2 + 2);
LABEL_94:
            if (v19 >= v8 || (v42 = *v19, v42 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
              if (!result)
              {
                return result;
              }

              v43 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 13) = v42;
              v43 = v19 + 1;
              *(a2 + 1) = v43;
            }

            *(this + 19) |= 0x10u;
            if (v43 < v8 && *v43 == 48)
            {
              v13 = v43 + 1;
              *(a2 + 1) = v13;
LABEL_102:
              if (v13 >= v8 || (v44 = *v13, v44 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
                if (!result)
                {
                  return result;
                }

                v45 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 14) = v44;
                v45 = v13 + 1;
                *(a2 + 1) = v45;
              }

              *(this + 19) |= 0x20u;
              if (v45 < v8 && *v45 == 56)
              {
                v18 = v45 + 1;
                *(a2 + 1) = v18;
LABEL_110:
                if (v18 >= v8 || (v46 = *v18, v46 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
                  if (!result)
                  {
                    return result;
                  }

                  v47 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  *(this + 15) = v46;
                  v47 = v18 + 1;
                  *(a2 + 1) = v47;
                }

                *(this + 19) |= 0x40u;
                if (v47 < v8 && *v47 == 64)
                {
                  v20 = v47 + 1;
                  *(a2 + 1) = v20;
                  goto LABEL_118;
                }
              }
            }
          }

          else
          {
            if (v6 == 7)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_38;
              }

              v18 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_110;
            }

            if (v6 == 8)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_38;
              }

              v20 = *(a2 + 1);
              v8 = *(a2 + 2);
LABEL_118:
              v53 = 0;
              if (v20 >= v8 || (v48 = *v20, (v48 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
                if (!result)
                {
                  return result;
                }

                v48 = v53;
                v49 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                v49 = v20 + 1;
                *(a2 + 1) = v49;
              }

              *(this + 16) = v48;
              *(this + 19) |= 0x80u;
              if (v49 < v8 && *v49 == 72)
              {
                v9 = v49 + 1;
                *(a2 + 1) = v9;
LABEL_126:
                v53 = 0;
                if (v9 >= v8 || (v50 = *v9, (v50 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53);
                  if (!result)
                  {
                    return result;
                  }

                  v50 = v53;
                  v51 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  v51 = v9 + 1;
                  *(a2 + 1) = v51;
                }

                *(this + 17) = v50;
                *(this + 19) |= 0x100u;
                if (v51 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
              if (v6 == 9 && (TagFallback & 7) == 0)
              {
                v9 = *(a2 + 1);
                v8 = *(a2 + 2);
                goto LABEL_126;
              }

LABEL_38:
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
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || v7 != 2)
          {
            goto LABEL_38;
          }

          v10 = *(this + 19);
          goto LABEL_49;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
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

        v10 = *(this + 19) | 1;
        *(this + 19) = v10;
        if (v17 < v14 && *v17 == 18)
        {
          *(a2 + 1) = v17 + 1;
LABEL_49:
          *(this + 19) = v10 | 2;
          v22 = *(this + 2);
          if (!v22)
          {
            operator new();
          }

          v53 = 0;
          v23 = *(a2 + 1);
          if (v23 >= *(a2 + 2) || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
            {
              return 0;
            }
          }

          else
          {
            v53 = *v23;
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
          if (!awd::metrics::MotionGyroBiasEstimation_EndCount::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
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

          v29 = *(a2 + 1);
          if (v29 < *(a2 + 2) && *v29 == 26)
          {
            *(a2 + 1) = v29 + 1;
            goto LABEL_63;
          }
        }
      }

      if (v6 == 3)
      {
        break;
      }

      if (v6 != 4)
      {
        goto LABEL_38;
      }

      if ((TagFallback & 7) != 0)
      {
        if (v7 != 2)
        {
          goto LABEL_38;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_77;
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(1, 0x22u, a2, this + 32);
      if (!result)
      {
        return result;
      }

LABEL_91:
      v41 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v41 < v8 && *v41 == 40)
      {
        v19 = v41 + 1;
        *(a2 + 1) = v19;
        goto LABEL_94;
      }
    }

    if (v7 != 2)
    {
      goto LABEL_38;
    }

LABEL_63:
    *(this + 19) |= 4u;
    v30 = *(this + 3);
    if (!v30)
    {
      operator new();
    }

    v53 = 0;
    v31 = *(a2 + 1);
    if (v31 >= *(a2 + 2) || *v31 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
      {
        return 0;
      }
    }

    else
    {
      v53 = *v31;
      *(a2 + 1) = v31 + 1;
    }

    v32 = *(a2 + 14);
    v33 = *(a2 + 15);
    *(a2 + 14) = v32 + 1;
    if (v32 >= v33)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!awd::metrics::MotionGyroBiasEstimation_EndCount::MergePartialFromCodedStream(v30, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v34 = *(a2 + 14);
    v27 = __OFSUB__(v34, 1);
    v35 = v34 - 1;
    if (v35 < 0 == v27)
    {
      *(a2 + 14) = v35;
    }

    v36 = *(a2 + 1);
    v11 = *(a2 + 2);
    if (v36 < v11 && *v36 == 34)
    {
      v12 = v36 + 1;
      *(a2 + 1) = v12;
LABEL_77:
      v53 = 0;
      if (v12 >= v11 || *v12 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v53))
        {
          return 0;
        }
      }

      else
      {
        v53 = *v12;
        *(a2 + 1) = v12 + 1;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(a2) >= 1)
      {
        v52 = 0;
        v37 = *(a2 + 1);
        if (v37 >= *(a2 + 2) || *v37 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v52))
          {
            return 0;
          }
        }

        else
        {
          v52 = *v37;
          *(a2 + 1) = v37 + 1;
        }

        v38 = *(this + 10);
        if (v38 == *(this + 11))
        {
          wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 4, v38 + 1);
          v38 = *(this + 10);
        }

        v39 = v52;
        v40 = *(this + 4);
        *(this + 10) = v38 + 1;
        *(v40 + 4 * v38) = v39;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      goto LABEL_91;
    }
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadRepeatedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(int a1, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a4)
{
  v21 = 0;
  v7 = *(this + 1);
  if (v7 >= *(this + 2) || *v7 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v21 = *v7;
    *(this + 1) = v7 + 1;
  }

  v9 = *(a4 + 8);
  if (v9 == *(a4 + 12))
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(a4, v9 + 1);
    v9 = *(a4 + 8);
  }

  v10 = v21;
  v11 = *a4;
  *(a4 + 8) = v9 + 1;
  *(v11 + 4 * v9) = v10;
  v12 = *(a4 + 12) - *(a4 + 8);
  if (v12 >= 1)
  {
    v13 = v12 + 1;
    do
    {
      if (a2 > 0x7F)
      {
        if (a2 >> 14)
        {
          return 1;
        }

        v17 = *(this + 1);
        v14 = *(this + 2);
        if (v14 - v17 < 2 || (a2 & 0x7F | 0x80) != *v17 || a2 >> 7 != v17[1])
        {
          return 1;
        }

        v16 = (v17 + 2);
      }

      else
      {
        v15 = *(this + 1);
        v14 = *(this + 2);
        if (v15 >= v14 || *v15 != a2)
        {
          return 1;
        }

        v16 = (v15 + 1);
      }

      *(this + 1) = v16;
      if (v16 >= v14 || *v16 < 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v21);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v21 = *v16;
        *(this + 1) = v16 + 1;
      }

      v18 = *(a4 + 8);
      if (v18 >= *(a4 + 12))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
        v18 = *(a4 + 8);
      }

      v19 = v21;
      v20 = *a4;
      *(a4 + 8) = v18 + 1;
      *(v20 + 4 * v18) = v19;
      --v13;
    }

    while (v13 > 1);
  }

  return 1;
}

void sub_29641C508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::MotionGyroBiasEstimation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 76);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 76);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(awd::metrics::MotionGyroBiasEstimation::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  if ((*(v5 + 76) & 4) != 0)
  {
LABEL_9:
    v8 = *(v5 + 24);
    if (!v8)
    {
      v8 = *(awd::metrics::MotionGyroBiasEstimation::default_instance_ + 24);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  }

LABEL_12:
  if (*(v5 + 40) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v9 = *(v5 + 48);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 40) >= 1)
    {
      v10 = 0;
      do
      {
        v11 = *(*(v5 + 32) + 4 * v10);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v10;
      }

      while (v10 < *(v5 + 40));
    }
  }

  v12 = *(v5 + 76);
  if ((v12 & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 52), a2, a4);
    v12 = *(v5 + 76);
    if ((v12 & 0x20) == 0)
    {
LABEL_18:
      if ((v12 & 0x40) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_24;
    }
  }

  else if ((v12 & 0x20) == 0)
  {
    goto LABEL_18;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 56), a2, a4);
  v12 = *(v5 + 76);
  if ((v12 & 0x40) == 0)
  {
LABEL_19:
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 64), a2, a4);
    if ((*(v5 + 76) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_26;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 60), a2, a4);
  v12 = *(v5 + 76);
  if ((v12 & 0x80) != 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  if ((v12 & 0x100) == 0)
  {
    return this;
  }

LABEL_26:
  v13 = *(v5 + 68);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(9, v13, a2, a4);
}

uint64_t awd::metrics::MotionGyroBiasEstimation::ByteSize(awd::metrics::MotionGyroBiasEstimation *this)
{
  v2 = *(this + 19);
  if (!v2)
  {
    v3 = 0;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_45;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 19);
    if ((v2 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v4 = *(this + 2);
  if (!v4)
  {
    v4 = *(awd::metrics::MotionGyroBiasEstimation::default_instance_ + 16);
  }

  v5 = awd::metrics::MotionGyroBiasEstimation_EndCount::ByteSize(v4);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 += v6 + v7 + 1;
  v2 = *(this + 19);
LABEL_14:
  if ((v2 & 4) != 0)
  {
    v8 = *(this + 3);
    if (!v8)
    {
      v8 = *(awd::metrics::MotionGyroBiasEstimation::default_instance_ + 24);
    }

    v9 = awd::metrics::MotionGyroBiasEstimation_EndCount::ByteSize(v8);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v3 += v10 + v11 + 1;
    v2 = *(this + 19);
    if ((v2 & 0x10) == 0)
    {
LABEL_16:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_31;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_16;
  }

  v12 = *(this + 13);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 19);
  }

  else
  {
    v13 = 2;
  }

  v3 += v13;
  if ((v2 & 0x20) == 0)
  {
LABEL_17:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_31:
  v14 = *(this + 14);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 19);
  }

  else
  {
    v15 = 2;
  }

  v3 += v15;
  if ((v2 & 0x40) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_35:
  v16 = *(this + 15);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v2 = *(this + 19);
  }

  else
  {
    v17 = 2;
  }

  v3 += v17;
  if ((v2 & 0x80) == 0)
  {
LABEL_19:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_45;
  }

LABEL_39:
  v18 = *(this + 16);
  if ((v18 & 0x80000000) != 0)
  {
    v19 = 11;
  }

  else if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v2 = *(this + 19);
  }

  else
  {
    v19 = 2;
  }

  v3 += v19;
  if ((v2 & 0x100) != 0)
  {
LABEL_45:
    v20 = *(this + 17);
    if ((v20 & 0x80000000) != 0)
    {
      v21 = 11;
    }

    else if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    }

    else
    {
      v21 = 2;
    }

    v3 += v21;
  }

LABEL_51:
  v22 = *(this + 10);
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
      v25 = *(*(this + 4) + 4 * v23);
      if (v25 >= 0x80)
      {
        v26 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
        v22 = *(this + 10);
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

      v3 += v27;
    }
  }

  *(this + 12) = v24;
  result = (v3 + v24);
  *(this + 18) = result;
  return result;
}

void awd::metrics::MotionGyroBiasEstimation::CheckTypeAndMergeFrom(awd::metrics::MotionGyroBiasEstimation *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::MotionGyroBiasEstimation::CheckTypeAndMergeFrom();
  }

  awd::metrics::MotionGyroBiasEstimation::MergeFrom(this, lpsrc);
}

void awd::metrics::MotionGyroBiasEstimation::CopyFrom(awd::metrics::MotionGyroBiasEstimation *this, const awd::metrics::MotionGyroBiasEstimation *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::MotionGyroBiasEstimation::MergeFrom(this, a2);
  }
}

double awd::metrics::MotionGyroBiasEstimation::Swap(awd::metrics::MotionGyroBiasEstimation *this, awd::metrics::MotionGyroBiasEstimation *a2)
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
    v5 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    result = *(a2 + 5);
    *(a2 + 4) = v6;
    v8 = *(this + 5);
    *(this + 5) = result;
    *(a2 + 5) = v8;
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
    LODWORD(v6) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v6;
    LODWORD(v6) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v6;
  }

  return result;
}

double awd::metrics::MotionFitnessSession::SharedCtor(awd::metrics::MotionFitnessSession *this)
{
  *(this + 112) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 52) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 460) = 0;
  *(this + 452) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v1;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 53) = 0u;
  *(this + 69) = 0u;
  *(this + 85) = 0u;
  *(this + 101) = 0u;
  *(this + 117) = 0u;
  *(this + 133) = 0u;
  *(this + 149) = 0u;
  *(this + 165) = 0u;
  *(this + 181) = 0u;
  *(this + 197) = 0u;
  *(this + 213) = 0u;
  *(this + 14) = 0u;
  *(this + 365) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 16) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  return result;
}

awd::metrics::MotionFitnessSession *awd::metrics::MotionFitnessSession::MotionFitnessSession(awd::metrics::MotionFitnessSession *this, const awd::metrics::MotionFitnessSession *a2)
{
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 112) = 0;
  *this = &unk_2A1D4F368;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 52) = 0;
  *(this + 2) = 0;
  *(this + 3) = v3;
  *(this + 460) = 0;
  *(this + 452) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 53) = 0u;
  *(this + 69) = 0u;
  *(this + 85) = 0u;
  *(this + 101) = 0u;
  *(this + 117) = 0u;
  *(this + 133) = 0u;
  *(this + 149) = 0u;
  *(this + 165) = 0u;
  *(this + 181) = 0u;
  *(this + 197) = 0u;
  *(this + 213) = 0u;
  *(this + 14) = 0u;
  *(this + 365) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 16) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  awd::metrics::MotionFitnessSession::MergeFrom(this, a2);
  return this;
}

void sub_29641CD10(_Unwind_Exception *a1)
{
  v3 = v2;
  if (*v3)
  {
    MEMORY[0x29C25A710](*v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionFitnessSession::MergeFrom(awd::metrics::MotionFitnessSession *this, const awd::metrics::MotionFitnessSession *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v116);
  }

  v4 = *(a2 + 62);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 30, *(this + 62) + v4);
    memcpy((*(this + 30) + 4 * *(this + 62)), *(a2 + 30), 4 * *(a2 + 62));
    *(this + 62) += *(a2 + 62);
  }

  v5 = *(a2 + 113);
  if (!v5)
  {
    goto LABEL_18;
  }

  if (v5)
  {
    v6 = *(a2 + 1);
    *(this + 113) |= 1u;
    *(this + 1) = v6;
    v5 = *(a2 + 113);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(a2 + 4);
    if (v7 >= 0x19)
    {
      awd::metrics::MotionFitnessSession::MergeFrom();
    }

    *(this + 113) |= 2u;
    *(this + 4) = v7;
    v5 = *(a2 + 113);
  }

  if ((v5 & 4) != 0)
  {
    v27 = *(a2 + 52);
    *(this + 113) |= 4u;
    *(this + 52) = v27;
    v5 = *(a2 + 113);
    if ((v5 & 8) == 0)
    {
LABEL_13:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_142;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_13;
  }

  v28 = *(a2 + 3);
  *(this + 113) |= 8u;
  v29 = *(this + 3);
  if (v29 == MEMORY[0x29EDC9758])
  {
    operator new();
  }

  std::string::operator=(v29, v28);
  v5 = *(a2 + 113);
  if ((v5 & 0x10) == 0)
  {
LABEL_14:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_143:
    v31 = *(a2 + 8);
    *(this + 113) |= 0x20u;
    *(this + 8) = v31;
    v5 = *(a2 + 113);
    if ((v5 & 0x40) == 0)
    {
LABEL_16:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    goto LABEL_144;
  }

LABEL_142:
  v30 = *(a2 + 5);
  *(this + 113) |= 0x10u;
  *(this + 5) = v30;
  v5 = *(a2 + 113);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_143;
  }

LABEL_15:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_144:
  v32 = *(a2 + 9);
  *(this + 113) |= 0x40u;
  *(this + 9) = v32;
  v5 = *(a2 + 113);
  if ((v5 & 0x80) != 0)
  {
LABEL_17:
    v8 = *(a2 + 10);
    *(this + 113) |= 0x80u;
    *(this + 10) = v8;
    v5 = *(a2 + 113);
  }

LABEL_18:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_36;
  }

  if ((v5 & 0x100) != 0)
  {
    v9 = *(a2 + 53);
    *(this + 113) |= 0x100u;
    *(this + 53) = v9;
    v5 = *(a2 + 113);
  }

  if ((v5 & 0x200) != 0)
  {
    v10 = *(a2 + 11);
    if (v10 >= 2)
    {
      awd::metrics::MotionFitnessSession::MergeFrom();
    }

    *(this + 113) |= 0x200u;
    *(this + 11) = v10;
    v5 = *(a2 + 113);
  }

  if ((v5 & 0x400) != 0)
  {
    v11 = *(a2 + 12);
    *(this + 113) |= 0x400u;
    *(this + 12) = v11;
    v5 = *(a2 + 113);
  }

  if ((v5 & 0x800) != 0)
  {
    v12 = *(a2 + 14);
    if (v12 >= 5)
    {
      awd::metrics::MotionFitnessSession::MergeFrom();
    }

    *(this + 113) |= 0x800u;
    *(this + 14) = v12;
    v5 = *(a2 + 113);
  }

  if ((v5 & 0x1000) != 0)
  {
    v13 = *(a2 + 15);
    if (v13 >= 5)
    {
      awd::metrics::MotionFitnessSession::MergeFrom();
    }

    *(this + 113) |= 0x1000u;
    *(this + 15) = v13;
    v5 = *(a2 + 113);
  }

  if ((v5 & 0x2000) != 0)
  {
    v33 = *(a2 + 16);
    *(this + 113) |= 0x2000u;
    *(this + 16) = v33;
    v5 = *(a2 + 113);
    if ((v5 & 0x4000) == 0)
    {
LABEL_34:
      if ((v5 & 0x8000) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  else if ((v5 & 0x4000) == 0)
  {
    goto LABEL_34;
  }

  v34 = *(a2 + 17);
  *(this + 113) |= 0x4000u;
  *(this + 17) = v34;
  v5 = *(a2 + 113);
  if ((v5 & 0x8000) != 0)
  {
LABEL_35:
    v14 = *(a2 + 54);
    *(this + 113) |= 0x8000u;
    *(this + 54) = v14;
    v5 = *(a2 + 113);
  }

LABEL_36:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_51;
  }

  if ((v5 & 0x10000) != 0)
  {
    v15 = *(a2 + 55);
    *(this + 113) |= 0x10000u;
    *(this + 55) = v15;
    v5 = *(a2 + 113);
  }

  if ((v5 & 0x20000) != 0)
  {
    v16 = *(a2 + 18);
    if (v16 >= 5)
    {
      awd::metrics::MotionFitnessSession::MergeFrom();
    }

    *(this + 113) |= 0x20000u;
    *(this + 18) = v16;
    v5 = *(a2 + 113);
  }

  if ((v5 & 0x40000) != 0)
  {
    v17 = *(a2 + 19);
    if (v17 >= 5)
    {
      awd::metrics::MotionFitnessSession::MergeFrom();
    }

    *(this + 113) |= 0x40000u;
    *(this + 19) = v17;
    v5 = *(a2 + 113);
  }

  if ((v5 & 0x80000) != 0)
  {
    v77 = *(a2 + 20);
    *(this + 113) |= 0x80000u;
    *(this + 20) = v77;
    v5 = *(a2 + 113);
    if ((v5 & 0x100000) == 0)
    {
LABEL_47:
      if ((v5 & 0x200000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_199;
    }
  }

  else if ((v5 & 0x100000) == 0)
  {
    goto LABEL_47;
  }

  v78 = *(a2 + 21);
  *(this + 113) |= 0x100000u;
  *(this + 21) = v78;
  v5 = *(a2 + 113);
  if ((v5 & 0x200000) == 0)
  {
LABEL_48:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_200;
  }

LABEL_199:
  v79 = *(a2 + 22);
  *(this + 113) |= 0x200000u;
  *(this + 22) = v79;
  v5 = *(a2 + 113);
  if ((v5 & 0x400000) == 0)
  {
LABEL_49:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_200:
  v80 = *(a2 + 23);
  *(this + 113) |= 0x400000u;
  *(this + 23) = v80;
  v5 = *(a2 + 113);
  if ((v5 & 0x800000) != 0)
  {
LABEL_50:
    v18 = *(a2 + 24);
    *(this + 113) |= 0x800000u;
    *(this + 24) = v18;
    v5 = *(a2 + 113);
  }

LABEL_51:
  if (!HIBYTE(v5))
  {
    goto LABEL_60;
  }

  if ((v5 & 0x1000000) != 0)
  {
    v81 = *(a2 + 25);
    *(this + 113) |= 0x1000000u;
    *(this + 25) = v81;
    v5 = *(a2 + 113);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_54:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_204;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_54;
  }

  v82 = *(a2 + 26);
  *(this + 113) |= 0x2000000u;
  *(this + 26) = v82;
  v5 = *(a2 + 113);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_55:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_205;
  }

LABEL_204:
  v83 = *(a2 + 27);
  *(this + 113) |= 0x4000000u;
  *(this + 27) = v83;
  v5 = *(a2 + 113);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_56:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_206;
  }

LABEL_205:
  v84 = *(a2 + 28);
  *(this + 113) |= 0x8000000u;
  *(this + 28) = v84;
  v5 = *(a2 + 113);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_57:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_207;
  }

LABEL_206:
  v85 = *(a2 + 29);
  *(this + 113) |= 0x10000000u;
  *(this + 29) = v85;
  v5 = *(a2 + 113);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_58:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_59;
    }

LABEL_208:
    v87 = *(a2 + 31);
    *(this + 113) |= 0x40000000u;
    *(this + 31) = v87;
    if ((*(a2 + 113) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_209;
  }

LABEL_207:
  v86 = *(a2 + 30);
  *(this + 113) |= 0x20000000u;
  *(this + 30) = v86;
  v5 = *(a2 + 113);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_208;
  }

LABEL_59:
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_60;
  }

LABEL_209:
  v88 = *(a2 + 32);
  *(this + 113) |= 0x80000000;
  *(this + 32) = v88;
LABEL_60:
  v19 = *(a2 + 114);
  if (!v19)
  {
    goto LABEL_70;
  }

  if (v19)
  {
    v35 = *(a2 + 33);
    *(this + 114) |= 1u;
    *(this + 33) = v35;
    v19 = *(a2 + 114);
    if ((v19 & 2) == 0)
    {
LABEL_63:
      if ((v19 & 4) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_151;
    }
  }

  else if ((v19 & 2) == 0)
  {
    goto LABEL_63;
  }

  v36 = *(a2 + 34);
  *(this + 114) |= 2u;
  *(this + 34) = v36;
  v19 = *(a2 + 114);
  if ((v19 & 4) == 0)
  {
LABEL_64:
    if ((v19 & 8) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_152;
  }

LABEL_151:
  v37 = *(a2 + 35);
  *(this + 114) |= 4u;
  *(this + 35) = v37;
  v19 = *(a2 + 114);
  if ((v19 & 8) == 0)
  {
LABEL_65:
    if ((v19 & 0x10) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_153;
  }

LABEL_152:
  v38 = *(a2 + 36);
  *(this + 114) |= 8u;
  *(this + 36) = v38;
  v19 = *(a2 + 114);
  if ((v19 & 0x10) == 0)
  {
LABEL_66:
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_154;
  }

LABEL_153:
  v39 = *(a2 + 37);
  *(this + 114) |= 0x10u;
  *(this + 37) = v39;
  v19 = *(a2 + 114);
  if ((v19 & 0x20) == 0)
  {
LABEL_67:
    if ((v19 & 0x40) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_155;
  }

LABEL_154:
  v40 = *(a2 + 224);
  *(this + 114) |= 0x20u;
  *(this + 224) = v40;
  v19 = *(a2 + 114);
  if ((v19 & 0x40) == 0)
  {
LABEL_68:
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_155:
  v41 = *(a2 + 38);
  *(this + 114) |= 0x40u;
  *(this + 38) = v41;
  v19 = *(a2 + 114);
  if ((v19 & 0x80) != 0)
  {
LABEL_69:
    v20 = *(a2 + 39);
    *(this + 114) |= 0x80u;
    *(this + 39) = v20;
    v19 = *(a2 + 114);
  }

LABEL_70:
  if ((v19 & 0xFF00) == 0)
  {
    goto LABEL_80;
  }

  if ((v19 & 0x100) != 0)
  {
    v42 = *(a2 + 40);
    *(this + 114) |= 0x100u;
    *(this + 40) = v42;
    v19 = *(a2 + 114);
    if ((v19 & 0x200) == 0)
    {
LABEL_73:
      if ((v19 & 0x400) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_159;
    }
  }

  else if ((v19 & 0x200) == 0)
  {
    goto LABEL_73;
  }

  v43 = *(a2 + 225);
  *(this + 114) |= 0x200u;
  *(this + 225) = v43;
  v19 = *(a2 + 114);
  if ((v19 & 0x400) == 0)
  {
LABEL_74:
    if ((v19 & 0x800) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_160;
  }

LABEL_159:
  v44 = *(a2 + 41);
  *(this + 114) |= 0x400u;
  *(this + 41) = v44;
  v19 = *(a2 + 114);
  if ((v19 & 0x800) == 0)
  {
LABEL_75:
    if ((v19 & 0x1000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_161;
  }

LABEL_160:
  v45 = *(a2 + 42);
  *(this + 114) |= 0x800u;
  *(this + 42) = v45;
  v19 = *(a2 + 114);
  if ((v19 & 0x1000) == 0)
  {
LABEL_76:
    if ((v19 & 0x2000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_162;
  }

LABEL_161:
  v46 = *(a2 + 43);
  *(this + 114) |= 0x1000u;
  *(this + 43) = v46;
  v19 = *(a2 + 114);
  if ((v19 & 0x2000) == 0)
  {
LABEL_77:
    if ((v19 & 0x4000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_163;
  }

LABEL_162:
  v47 = *(a2 + 44);
  *(this + 114) |= 0x2000u;
  *(this + 44) = v47;
  v19 = *(a2 + 114);
  if ((v19 & 0x4000) == 0)
  {
LABEL_78:
    if ((v19 & 0x8000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

LABEL_163:
  v48 = *(a2 + 45);
  *(this + 114) |= 0x4000u;
  *(this + 45) = v48;
  v19 = *(a2 + 114);
  if ((v19 & 0x8000) != 0)
  {
LABEL_79:
    v21 = *(a2 + 46);
    *(this + 114) |= 0x8000u;
    *(this + 46) = v21;
    v19 = *(a2 + 114);
  }

LABEL_80:
  if ((v19 & 0xFF0000) == 0)
  {
    goto LABEL_90;
  }

  if ((v19 & 0x10000) != 0)
  {
    v49 = *(a2 + 47);
    *(this + 114) |= 0x10000u;
    *(this + 47) = v49;
    v19 = *(a2 + 114);
    if ((v19 & 0x20000) == 0)
    {
LABEL_83:
      if ((v19 & 0x40000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_167;
    }
  }

  else if ((v19 & 0x20000) == 0)
  {
    goto LABEL_83;
  }

  v50 = *(a2 + 48);
  *(this + 114) |= 0x20000u;
  *(this + 48) = v50;
  v19 = *(a2 + 114);
  if ((v19 & 0x40000) == 0)
  {
LABEL_84:
    if ((v19 & 0x80000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_168;
  }

LABEL_167:
  v51 = *(a2 + 49);
  *(this + 114) |= 0x40000u;
  *(this + 49) = v51;
  v19 = *(a2 + 114);
  if ((v19 & 0x80000) == 0)
  {
LABEL_85:
    if ((v19 & 0x100000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_169;
  }

LABEL_168:
  v52 = *(a2 + 50);
  *(this + 114) |= 0x80000u;
  *(this + 50) = v52;
  v19 = *(a2 + 114);
  if ((v19 & 0x100000) == 0)
  {
LABEL_86:
    if ((v19 & 0x200000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_170;
  }

LABEL_169:
  v53 = *(a2 + 51);
  *(this + 114) |= 0x100000u;
  *(this + 51) = v53;
  v19 = *(a2 + 114);
  if ((v19 & 0x200000) == 0)
  {
LABEL_87:
    if ((v19 & 0x400000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_171;
  }

LABEL_170:
  v54 = *(a2 + 52);
  *(this + 114) |= 0x200000u;
  *(this + 52) = v54;
  v19 = *(a2 + 114);
  if ((v19 & 0x400000) == 0)
  {
LABEL_88:
    if ((v19 & 0x800000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

LABEL_171:
  v55 = *(a2 + 53);
  *(this + 114) |= 0x400000u;
  *(this + 53) = v55;
  v19 = *(a2 + 114);
  if ((v19 & 0x800000) != 0)
  {
LABEL_89:
    v22 = *(a2 + 54);
    *(this + 114) |= 0x800000u;
    *(this + 54) = v22;
    v19 = *(a2 + 114);
  }

LABEL_90:
  if (!HIBYTE(v19))
  {
    goto LABEL_98;
  }

  if ((v19 & 0x1000000) != 0)
  {
    v89 = *(a2 + 55);
    *(this + 114) |= 0x1000000u;
    *(this + 55) = v89;
    v19 = *(a2 + 114);
    if ((v19 & 0x2000000) == 0)
    {
LABEL_93:
      if ((v19 & 0x4000000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_212;
    }
  }

  else if ((v19 & 0x2000000) == 0)
  {
    goto LABEL_93;
  }

  v90 = *(a2 + 226);
  *(this + 114) |= 0x2000000u;
  *(this + 226) = v90;
  v19 = *(a2 + 114);
  if ((v19 & 0x4000000) == 0)
  {
LABEL_94:
    if ((v19 & 0x8000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_213;
  }

LABEL_212:
  v91 = *(a2 + 57);
  *(this + 114) |= 0x4000000u;
  *(this + 57) = v91;
  v19 = *(a2 + 114);
  if ((v19 & 0x8000000) == 0)
  {
LABEL_95:
    if ((v19 & 0x10000000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_214;
  }

LABEL_213:
  v92 = *(a2 + 58);
  *(this + 114) |= 0x8000000u;
  *(this + 58) = v92;
  v19 = *(a2 + 114);
  if ((v19 & 0x10000000) == 0)
  {
LABEL_96:
    if ((v19 & 0x20000000) == 0)
    {
      goto LABEL_97;
    }

LABEL_215:
    v94 = *(a2 + 64);
    *(this + 114) |= 0x20000000u;
    *(this + 64) = v94;
    if ((*(a2 + 114) & 0x80000000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_216;
  }

LABEL_214:
  v93 = *(a2 + 59);
  *(this + 114) |= 0x10000000u;
  *(this + 59) = v93;
  v19 = *(a2 + 114);
  if ((v19 & 0x20000000) != 0)
  {
    goto LABEL_215;
  }

LABEL_97:
  if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_98;
  }

LABEL_216:
  v95 = *(a2 + 33);
  *(this + 114) |= 0x80000000;
  *(this + 33) = v95;
LABEL_98:
  v23 = *(a2 + 115);
  if (!v23)
  {
    goto LABEL_108;
  }

  if (v23)
  {
    v56 = *(a2 + 65);
    *(this + 115) |= 1u;
    *(this + 65) = v56;
    v23 = *(a2 + 115);
    if ((v23 & 2) == 0)
    {
LABEL_101:
      if ((v23 & 4) == 0)
      {
        goto LABEL_102;
      }

      goto LABEL_175;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_101;
  }

  v57 = *(a2 + 68);
  *(this + 115) |= 2u;
  *(this + 68) = v57;
  v23 = *(a2 + 115);
  if ((v23 & 4) == 0)
  {
LABEL_102:
    if ((v23 & 8) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_176;
  }

LABEL_175:
  v58 = *(a2 + 69);
  *(this + 115) |= 4u;
  *(this + 69) = v58;
  v23 = *(a2 + 115);
  if ((v23 & 8) == 0)
  {
LABEL_103:
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_177;
  }

LABEL_176:
  v59 = *(a2 + 70);
  *(this + 115) |= 8u;
  *(this + 70) = v59;
  v23 = *(a2 + 115);
  if ((v23 & 0x10) == 0)
  {
LABEL_104:
    if ((v23 & 0x20) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_178;
  }

LABEL_177:
  v60 = *(a2 + 71);
  *(this + 115) |= 0x10u;
  *(this + 71) = v60;
  v23 = *(a2 + 115);
  if ((v23 & 0x20) == 0)
  {
LABEL_105:
    if ((v23 & 0x40) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_179;
  }

LABEL_178:
  v61 = *(a2 + 72);
  *(this + 115) |= 0x20u;
  *(this + 72) = v61;
  v23 = *(a2 + 115);
  if ((v23 & 0x40) == 0)
  {
LABEL_106:
    if ((v23 & 0x80) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_107;
  }

LABEL_179:
  v62 = *(a2 + 73);
  *(this + 115) |= 0x40u;
  *(this + 73) = v62;
  v23 = *(a2 + 115);
  if ((v23 & 0x80) != 0)
  {
LABEL_107:
    v24 = *(a2 + 74);
    *(this + 115) |= 0x80u;
    *(this + 74) = v24;
    v23 = *(a2 + 115);
  }

LABEL_108:
  if ((v23 & 0xFF00) == 0)
  {
    goto LABEL_118;
  }

  if ((v23 & 0x100) != 0)
  {
    v63 = *(a2 + 75);
    *(this + 115) |= 0x100u;
    *(this + 75) = v63;
    v23 = *(a2 + 115);
    if ((v23 & 0x200) == 0)
    {
LABEL_111:
      if ((v23 & 0x400) == 0)
      {
        goto LABEL_112;
      }

      goto LABEL_183;
    }
  }

  else if ((v23 & 0x200) == 0)
  {
    goto LABEL_111;
  }

  v64 = *(a2 + 76);
  *(this + 115) |= 0x200u;
  *(this + 76) = v64;
  v23 = *(a2 + 115);
  if ((v23 & 0x400) == 0)
  {
LABEL_112:
    if ((v23 & 0x800) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_184;
  }

LABEL_183:
  v65 = *(a2 + 77);
  *(this + 115) |= 0x400u;
  *(this + 77) = v65;
  v23 = *(a2 + 115);
  if ((v23 & 0x800) == 0)
  {
LABEL_113:
    if ((v23 & 0x1000) == 0)
    {
      goto LABEL_114;
    }

    goto LABEL_185;
  }

LABEL_184:
  v66 = *(a2 + 78);
  *(this + 115) |= 0x800u;
  *(this + 78) = v66;
  v23 = *(a2 + 115);
  if ((v23 & 0x1000) == 0)
  {
LABEL_114:
    if ((v23 & 0x2000) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_186;
  }

LABEL_185:
  v67 = *(a2 + 79);
  *(this + 115) |= 0x1000u;
  *(this + 79) = v67;
  v23 = *(a2 + 115);
  if ((v23 & 0x2000) == 0)
  {
LABEL_115:
    if ((v23 & 0x4000) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_187;
  }

LABEL_186:
  v68 = *(a2 + 80);
  *(this + 115) |= 0x2000u;
  *(this + 80) = v68;
  v23 = *(a2 + 115);
  if ((v23 & 0x4000) == 0)
  {
LABEL_116:
    if ((v23 & 0x8000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_117;
  }

LABEL_187:
  v69 = *(a2 + 81);
  *(this + 115) |= 0x4000u;
  *(this + 81) = v69;
  v23 = *(a2 + 115);
  if ((v23 & 0x8000) != 0)
  {
LABEL_117:
    v25 = *(a2 + 82);
    *(this + 115) |= 0x8000u;
    *(this + 82) = v25;
    v23 = *(a2 + 115);
  }

LABEL_118:
  if ((v23 & 0xFF0000) == 0)
  {
    goto LABEL_128;
  }

  if ((v23 & 0x10000) != 0)
  {
    v70 = *(a2 + 83);
    *(this + 115) |= 0x10000u;
    *(this + 83) = v70;
    v23 = *(a2 + 115);
    if ((v23 & 0x20000) == 0)
    {
LABEL_121:
      if ((v23 & 0x40000) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_191;
    }
  }

  else if ((v23 & 0x20000) == 0)
  {
    goto LABEL_121;
  }

  v71 = *(a2 + 84);
  *(this + 115) |= 0x20000u;
  *(this + 84) = v71;
  v23 = *(a2 + 115);
  if ((v23 & 0x40000) == 0)
  {
LABEL_122:
    if ((v23 & 0x80000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_192;
  }

LABEL_191:
  v72 = *(a2 + 85);
  *(this + 115) |= 0x40000u;
  *(this + 85) = v72;
  v23 = *(a2 + 115);
  if ((v23 & 0x80000) == 0)
  {
LABEL_123:
    if ((v23 & 0x100000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_193;
  }

LABEL_192:
  v73 = *(a2 + 86);
  *(this + 115) |= 0x80000u;
  *(this + 86) = v73;
  v23 = *(a2 + 115);
  if ((v23 & 0x100000) == 0)
  {
LABEL_124:
    if ((v23 & 0x200000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_194;
  }

LABEL_193:
  v74 = *(a2 + 87);
  *(this + 115) |= 0x100000u;
  *(this + 87) = v74;
  v23 = *(a2 + 115);
  if ((v23 & 0x200000) == 0)
  {
LABEL_125:
    if ((v23 & 0x400000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_195;
  }

LABEL_194:
  v75 = *(a2 + 88);
  *(this + 115) |= 0x200000u;
  *(this + 88) = v75;
  v23 = *(a2 + 115);
  if ((v23 & 0x400000) == 0)
  {
LABEL_126:
    if ((v23 & 0x800000) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_195:
  v76 = *(a2 + 89);
  *(this + 115) |= 0x400000u;
  *(this + 89) = v76;
  v23 = *(a2 + 115);
  if ((v23 & 0x800000) != 0)
  {
LABEL_127:
    v26 = *(a2 + 90);
    *(this + 115) |= 0x800000u;
    *(this + 90) = v26;
    v23 = *(a2 + 115);
  }

LABEL_128:
  if (!HIBYTE(v23))
  {
    goto LABEL_227;
  }

  if ((v23 & 0x1000000) != 0)
  {
    v96 = *(a2 + 91);
    *(this + 115) |= 0x1000000u;
    *(this + 91) = v96;
    v23 = *(a2 + 115);
    if ((v23 & 0x2000000) == 0)
    {
LABEL_131:
      if ((v23 & 0x4000000) == 0)
      {
        goto LABEL_132;
      }

      goto LABEL_219;
    }
  }

  else if ((v23 & 0x2000000) == 0)
  {
    goto LABEL_131;
  }

  v97 = *(a2 + 92);
  *(this + 115) |= 0x2000000u;
  *(this + 92) = v97;
  v23 = *(a2 + 115);
  if ((v23 & 0x4000000) == 0)
  {
LABEL_132:
    if ((v23 & 0x8000000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_220;
  }

LABEL_219:
  v98 = *(a2 + 93);
  *(this + 115) |= 0x4000000u;
  *(this + 93) = v98;
  v23 = *(a2 + 115);
  if ((v23 & 0x8000000) == 0)
  {
LABEL_133:
    if ((v23 & 0x10000000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_221;
  }

LABEL_220:
  v99 = *(a2 + 94);
  *(this + 115) |= 0x8000000u;
  *(this + 94) = v99;
  v23 = *(a2 + 115);
  if ((v23 & 0x10000000) == 0)
  {
LABEL_134:
    if ((v23 & 0x20000000) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_222;
  }

LABEL_221:
  v100 = *(a2 + 227);
  *(this + 115) |= 0x10000000u;
  *(this + 227) = v100;
  v23 = *(a2 + 115);
  if ((v23 & 0x20000000) == 0)
  {
LABEL_135:
    if ((v23 & 0x40000000) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_223;
  }

LABEL_222:
  v101 = *(a2 + 380);
  *(this + 115) |= 0x20000000u;
  *(this + 380) = v101;
  v23 = *(a2 + 115);
  if ((v23 & 0x40000000) == 0)
  {
LABEL_136:
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_227;
    }

    goto LABEL_225;
  }

LABEL_223:
  v102 = *(a2 + 96);
  if (v102 >= 0x19)
  {
    awd::metrics::MotionFitnessSession::MergeFrom();
  }

  *(this + 115) |= 0x40000000u;
  *(this + 96) = v102;
  if ((*(a2 + 115) & 0x80000000) != 0)
  {
LABEL_225:
    v103 = *(a2 + 97);
    if (v103 >= 0x19)
    {
      awd::metrics::MotionFitnessSession::MergeFrom();
    }

    *(this + 115) |= 0x80000000;
    *(this + 97) = v103;
  }

LABEL_227:
  v104 = *(a2 + 116);
  if (!v104)
  {
    goto LABEL_237;
  }

  if (v104)
  {
    v107 = *(a2 + 49);
    *(this + 116) |= 1u;
    *(this + 49) = v107;
    v104 = *(a2 + 116);
    if ((v104 & 2) == 0)
    {
LABEL_230:
      if ((v104 & 4) == 0)
      {
        goto LABEL_231;
      }

      goto LABEL_245;
    }
  }

  else if ((v104 & 2) == 0)
  {
    goto LABEL_230;
  }

  v108 = *(a2 + 50);
  *(this + 116) |= 2u;
  *(this + 50) = v108;
  v104 = *(a2 + 116);
  if ((v104 & 4) == 0)
  {
LABEL_231:
    if ((v104 & 8) == 0)
    {
      goto LABEL_232;
    }

    goto LABEL_246;
  }

LABEL_245:
  v109 = *(a2 + 51);
  *(this + 116) |= 4u;
  *(this + 51) = v109;
  v104 = *(a2 + 116);
  if ((v104 & 8) == 0)
  {
LABEL_232:
    if ((v104 & 0x10) == 0)
    {
      goto LABEL_233;
    }

    goto LABEL_247;
  }

LABEL_246:
  v110 = *(a2 + 104);
  *(this + 116) |= 8u;
  *(this + 104) = v110;
  v104 = *(a2 + 116);
  if ((v104 & 0x10) == 0)
  {
LABEL_233:
    if ((v104 & 0x20) == 0)
    {
      goto LABEL_234;
    }

    goto LABEL_248;
  }

LABEL_247:
  v111 = *(a2 + 105);
  *(this + 116) |= 0x10u;
  *(this + 105) = v111;
  v104 = *(a2 + 116);
  if ((v104 & 0x20) == 0)
  {
LABEL_234:
    if ((v104 & 0x40) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_249;
  }

LABEL_248:
  v112 = *(a2 + 106);
  *(this + 116) |= 0x20u;
  *(this + 106) = v112;
  v104 = *(a2 + 116);
  if ((v104 & 0x40) == 0)
  {
LABEL_235:
    if ((v104 & 0x80) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_236;
  }

LABEL_249:
  v113 = *(a2 + 107);
  *(this + 116) |= 0x40u;
  *(this + 107) = v113;
  v104 = *(a2 + 116);
  if ((v104 & 0x80) != 0)
  {
LABEL_236:
    v105 = *(a2 + 108);
    *(this + 116) |= 0x80u;
    *(this + 108) = v105;
    v104 = *(a2 + 116);
  }

LABEL_237:
  if ((v104 & 0xFF00) == 0)
  {
    return;
  }

  if ((v104 & 0x100) != 0)
  {
    v114 = *(a2 + 109);
    *(this + 116) |= 0x100u;
    *(this + 109) = v114;
    v104 = *(a2 + 116);
    if ((v104 & 0x200) == 0)
    {
LABEL_240:
      if ((v104 & 0x400) == 0)
      {
        return;
      }

      goto LABEL_241;
    }
  }

  else if ((v104 & 0x200) == 0)
  {
    goto LABEL_240;
  }

  v115 = *(a2 + 110);
  *(this + 116) |= 0x200u;
  *(this + 110) = v115;
  if ((*(a2 + 116) & 0x400) != 0)
  {
LABEL_241:
    v106 = *(a2 + 111);
    *(this + 116) |= 0x400u;
    *(this + 111) = v106;
  }
}

void sub_29641DC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MotionFitnessSession::~MotionFitnessSession(awd::metrics::MotionFitnessSession *this)
{
  *this = &unk_2A1D4F368;
  awd::metrics::MotionFitnessSession::SharedDtor(this);
  v2 = *(this + 30);
  if (v2)
  {
    MEMORY[0x29C25A710](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::MotionFitnessSession::~MotionFitnessSession(this);

  JUMPOUT(0x29C25A730);
}

uint64_t awd::metrics::MotionFitnessSession::SharedDtor(uint64_t this)
{
  v1 = *(this + 24);
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

uint64_t awd::metrics::MotionFitnessSession::default_instance(awd::metrics::MotionFitnessSession *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MotionFitnessSession::default_instance_;
  if (!awd::metrics::MotionFitnessSession::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Location_2eproto(0, a2, a3, a4);
    return awd::metrics::MotionFitnessSession::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::MotionFitnessSession::Clear(uint64_t this)
{
  v1 = *(this + 452);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 52) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(this + 24);
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

    *(this + 20) = 0;
    *(this + 32) = 0;
    *(this + 40) = 0;
    v1 = *(this + 452);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 53) = 0;
    *(this + 44) = 0;
    *(this + 48) = 0;
    *(this + 56) = 0;
    *(this + 64) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 55) = 0;
    *(this + 80) = 0;
    *(this + 88) = 0;
    *(this + 72) = 0;
    *(this + 96) = 0;
  }

  if (HIBYTE(v1))
  {
    *(this + 116) = 0u;
    *(this + 100) = 0u;
  }

  v3 = *(this + 456);
  if (v3)
  {
    *(this + 224) = 0;
    *(this + 132) = 0;
    *(this + 148) = 0;
    *(this + 140) = 0;
    *(this + 156) = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    *(this + 225) = 0;
    *(this + 168) = 0;
    *(this + 176) = 0;
    *(this + 160) = 0;
    *(this + 184) = 0;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    *(this + 204) = 0u;
    *(this + 188) = 0u;
  }

  if (HIBYTE(v3))
  {
    *(this + 220) = 0;
    *(this + 226) = 0;
    *(this + 232) = 0;
    *(this + 228) = 0;
    *(this + 256) = 0;
    *(this + 264) = 0;
  }

  v4 = *(this + 460);
  if (v4)
  {
    *(this + 260) = 0;
    *(this + 280) = 0;
    *(this + 288) = 0;
    *(this + 272) = 0;
    *(this + 296) = 0;
  }

  if ((v4 & 0xFF00) != 0)
  {
    *(this + 300) = 0u;
    *(this + 316) = 0u;
  }

  if ((v4 & 0xFF0000) != 0)
  {
    *(this + 332) = 0u;
    *(this + 348) = 0u;
  }

  if (HIBYTE(v4))
  {
    *(this + 227) = 0;
    *(this + 384) = 0;
    *(this + 380) = 0;
    *(this + 372) = 0;
    *(this + 364) = 0;
  }

  v5 = *(this + 464);
  if (v5)
  {
    *(this + 420) = 0u;
    *(this + 392) = 0u;
    *(this + 408) = 0u;
  }

  if ((v5 & 0xFF00) != 0)
  {
    *(this + 436) = 0;
    *(this + 440) = 0;
  }

  *(this + 248) = 0;
  *(this + 452) = 0;
  *(this + 460) = 0;
  return this;
}

uint64_t awd::metrics::MotionFitnessSession::MergePartialFromCodedStream(awd::metrics::MotionFitnessSession *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = (this + 256);
  v5 = (this + 260);
  v6 = (this + 272);
  v7 = (this + 276);
  v8 = (this + 280);
  v9 = (this + 284);
  v10 = (this + 288);
  v11 = (this + 292);
  v379 = (this + 300);
  v380 = (this + 296);
  v377 = (this + 312);
  v378 = (this + 304);
  v375 = (this + 328);
  v376 = (this + 320);
  v373 = (this + 336);
  v374 = (this + 332);
  v371 = (this + 344);
  v372 = (this + 340);
  v369 = (this + 352);
  v370 = (this + 348);
  v367 = (this + 360);
  v368 = (this + 356);
  v365 = (this + 368);
  v366 = (this + 364);
  v363 = (this + 376);
  v364 = (this + 372);
  v358 = (this + 416);
  v359 = (this + 420);
  v360 = (this + 424);
  v361 = (this + 440);
  v362 = (this + 444);
LABEL_2:
  while (2)
  {
    v12 = *(a2 + 1);
    if (v12 >= *(a2 + 2) || (TagFallback = *v12, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v12 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v14 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v16 >= v15 || (v17 = *v16, v17 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v18 = *(a2 + 1);
          v15 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v17;
          v18 = v16 + 1;
          *(a2 + 1) = v18;
        }

        *(this + 113) |= 1u;
        if (v18 < v15 && *v18 == 16)
        {
          v80 = v18 + 1;
          *(a2 + 1) = v80;
          goto LABEL_235;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v80 = *(a2 + 1);
        v15 = *(a2 + 2);
LABEL_235:
        v382[0] = 0;
        if (v80 >= v15 || (v135 = *v80, (v135 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v135 = v382[0];
        }

        else
        {
          *(a2 + 1) = v80 + 1;
        }

        if (v135 <= 0x18)
        {
          *(this + 113) |= 2u;
          *(this + 4) = v135;
        }

        v136 = *(a2 + 1);
        v74 = *(a2 + 2);
        if (v136 >= v74 || *v136 != 24)
        {
          continue;
        }

        v75 = v136 + 1;
        *(a2 + 1) = v75;
LABEL_245:
        v382[0] = 0;
        if (v75 >= v74 || (v137 = *v75, (v137 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v137 = v382[0];
          v138 = *(a2 + 1);
          v74 = *(a2 + 2);
        }

        else
        {
          v138 = v75 + 1;
          *(a2 + 1) = v138;
        }

        *(this + 52) = v137 != 0;
        v78 = *(this + 113) | 4;
        *(this + 113) = v78;
        if (v138 >= v74 || *v138 != 34)
        {
          continue;
        }

        *(a2 + 1) = v138 + 1;
LABEL_253:
        *(this + 113) = v78 | 8;
        if (*(this + 3) == MEMORY[0x29EDC9758])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v139 = *(a2 + 1);
        v64 = *(a2 + 2);
        if (v139 >= v64 || *v139 != 40)
        {
          continue;
        }

        v65 = v139 + 1;
        *(a2 + 1) = v65;
LABEL_259:
        if (v65 >= v64 || (v140 = *v65, v140 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v141 = *(a2 + 1);
          v64 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v140;
          v141 = v65 + 1;
          *(a2 + 1) = v141;
        }

        *(this + 113) |= 0x10u;
        if (v141 >= v64 || *v141 != 48)
        {
          continue;
        }

        v90 = v141 + 1;
        *(a2 + 1) = v90;
LABEL_267:
        if (v90 >= v64 || (v142 = *v90, v142 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v143 = *(a2 + 1);
          v64 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v142;
          v143 = v90 + 1;
          *(a2 + 1) = v143;
        }

        *(this + 113) |= 0x20u;
        if (v143 >= v64 || *v143 != 56)
        {
          continue;
        }

        v95 = v143 + 1;
        *(a2 + 1) = v95;
LABEL_275:
        v382[0] = 0;
        if (v95 >= v64 || (v144 = *v95, (v144 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v144 = v382[0];
          v145 = *(a2 + 1);
          v64 = *(a2 + 2);
        }

        else
        {
          v145 = v95 + 1;
          *(a2 + 1) = v145;
        }

        *(this + 9) = v144;
        *(this + 113) |= 0x40u;
        if (v145 >= v64 || *v145 != 64)
        {
          continue;
        }

        v79 = v145 + 1;
        *(a2 + 1) = v79;
LABEL_283:
        if (v79 >= v64 || (v146 = *v79, v146 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v147 = *(a2 + 1);
          v64 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v146;
          v147 = v79 + 1;
          *(a2 + 1) = v147;
        }

        *(this + 113) |= 0x80u;
        if (v147 >= v64 || *v147 != 72)
        {
          continue;
        }

        v99 = v147 + 1;
        *(a2 + 1) = v99;
LABEL_291:
        v382[0] = 0;
        if (v99 >= v64 || (v148 = *v99, (v148 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v148 = v382[0];
          v149 = *(a2 + 1);
          v64 = *(a2 + 2);
        }

        else
        {
          v149 = v99 + 1;
          *(a2 + 1) = v149;
        }

        *(this + 53) = v148 != 0;
        *(this + 113) |= 0x100u;
        if (v149 >= v64 || *v149 != 80)
        {
          continue;
        }

        v71 = v149 + 1;
        *(a2 + 1) = v71;
LABEL_299:
        v382[0] = 0;
        if (v71 >= v64 || (v150 = *v71, (v150 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v150 = v382[0];
        }

        else
        {
          *(a2 + 1) = v71 + 1;
        }

        if (v150 <= 1)
        {
          *(this + 113) |= 0x200u;
          *(this + 11) = v150;
        }

        v151 = *(a2 + 1);
        v60 = *(a2 + 2);
        if (v151 >= v60 || *v151 != 88)
        {
          continue;
        }

        v98 = v151 + 1;
        *(a2 + 1) = v98;
LABEL_309:
        if (v98 >= v60 || (v152 = *v98, v152 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v153 = *(a2 + 1);
          v60 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v152;
          v153 = v98 + 1;
          *(a2 + 1) = v153;
        }

        *(this + 113) |= 0x400u;
        if (v153 >= v60 || *v153 != 96)
        {
          continue;
        }

        v61 = v153 + 1;
        *(a2 + 1) = v61;
LABEL_317:
        v382[0] = 0;
        if (v61 >= v60 || (v154 = *v61, (v154 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v154 = v382[0];
        }

        else
        {
          *(a2 + 1) = v61 + 1;
        }

        if (v154 <= 4)
        {
          *(this + 113) |= 0x800u;
          *(this + 14) = v154;
        }

        v155 = *(a2 + 1);
        v69 = *(a2 + 2);
        if (v155 >= v69 || *v155 != 104)
        {
          continue;
        }

        v70 = v155 + 1;
        *(a2 + 1) = v70;
LABEL_327:
        v382[0] = 0;
        if (v70 >= v69 || (v156 = *v70, (v156 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v156 = v382[0];
        }

        else
        {
          *(a2 + 1) = v70 + 1;
        }

        if (v156 <= 4)
        {
          *(this + 113) |= 0x1000u;
          *(this + 15) = v156;
        }

        v157 = *(a2 + 1);
        v52 = *(a2 + 2);
        if (v157 >= v52 || *v157 != 112)
        {
          continue;
        }

        v94 = v157 + 1;
        *(a2 + 1) = v94;
LABEL_337:
        if (v94 >= v52 || (v158 = *v94, v158 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v159 = *(a2 + 1);
          v52 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v158;
          v159 = v94 + 1;
          *(a2 + 1) = v159;
        }

        *(this + 113) |= 0x2000u;
        if (v159 >= v52 || *v159 != 120)
        {
          continue;
        }

        v56 = v159 + 1;
        *(a2 + 1) = v56;
LABEL_345:
        if (v56 >= v52 || (v160 = *v56, v160 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v161 = *(a2 + 1);
          v52 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v160;
          v161 = (v56 + 1);
          *(a2 + 1) = v161;
        }

        *(this + 113) |= 0x4000u;
        if (v52 - v161 < 2 || *v161 != 128 || v161[1] != 1)
        {
          continue;
        }

        v76 = (v161 + 2);
        *(a2 + 1) = v76;
LABEL_354:
        v382[0] = 0;
        if (v76 >= v52 || (v162 = *v76, (v162 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v162 = v382[0];
          v163 = *(a2 + 1);
          v52 = *(a2 + 2);
        }

        else
        {
          v163 = (v76 + 1);
          *(a2 + 1) = v163;
        }

        *(this + 54) = v162 != 0;
        *(this + 113) |= 0x8000u;
        if (v52 - v163 < 2 || *v163 != 136 || v163[1] != 1)
        {
          continue;
        }

        v53 = (v163 + 2);
        *(a2 + 1) = v53;
LABEL_363:
        v382[0] = 0;
        if (v53 >= v52 || (v164 = *v53, (v164 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v164 = v382[0];
          v165 = *(a2 + 1);
          v52 = *(a2 + 2);
        }

        else
        {
          v165 = (v53 + 1);
          *(a2 + 1) = v165;
        }

        *(this + 55) = v164 != 0;
        *(this + 113) |= 0x10000u;
        if (v52 - v165 < 2 || *v165 != 144 || v165[1] != 1)
        {
          continue;
        }

        v84 = (v165 + 2);
        *(a2 + 1) = v84;
LABEL_372:
        v382[0] = 0;
        if (v84 >= v52 || (v166 = *v84, (v166 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v166 = v382[0];
        }

        else
        {
          *(a2 + 1) = v84 + 1;
        }

        if (v166 <= 4)
        {
          *(this + 113) |= 0x20000u;
          *(this + 18) = v166;
        }

        v167 = *(a2 + 1);
        v96 = *(a2 + 2);
        if (v96 - v167 < 2 || *v167 != 152 || v167[1] != 1)
        {
          continue;
        }

        v97 = (v167 + 2);
        *(a2 + 1) = v97;
LABEL_383:
        v382[0] = 0;
        if (v97 >= v96 || (v168 = *v97, (v168 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v168 = v382[0];
        }

        else
        {
          *(a2 + 1) = v97 + 1;
        }

        if (v168 <= 4)
        {
          *(this + 113) |= 0x40000u;
          *(this + 19) = v168;
        }

        v169 = *(a2 + 1);
        v49 = *(a2 + 2);
        if (v49 - v169 < 2 || *v169 != 160 || v169[1] != 1)
        {
          continue;
        }

        v104 = (v169 + 2);
        *(a2 + 1) = v104;
LABEL_394:
        if (v104 >= v49 || (v170 = *v104, v170 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v171 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v170;
          v171 = (v104 + 1);
          *(a2 + 1) = v171;
        }

        *(this + 113) |= 0x80000u;
        if (v49 - v171 < 2 || *v171 != 168 || v171[1] != 1)
        {
          continue;
        }

        v88 = (v171 + 2);
        *(a2 + 1) = v88;
LABEL_403:
        if (v88 >= v49 || (v172 = *v88, v172 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v173 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v172;
          v173 = (v88 + 1);
          *(a2 + 1) = v173;
        }

        *(this + 113) |= 0x100000u;
        if (v49 - v173 < 2 || *v173 != 176 || v173[1] != 1)
        {
          continue;
        }

        v93 = (v173 + 2);
        *(a2 + 1) = v93;
LABEL_412:
        v382[0] = 0;
        if (v93 >= v49 || (v174 = *v93, (v174 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v174 = v382[0];
          v175 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          v175 = (v93 + 1);
          *(a2 + 1) = v175;
        }

        *(this + 22) = v174;
        *(this + 113) |= 0x200000u;
        if (v49 - v175 < 2 || *v175 != 184 || v175[1] != 1)
        {
          continue;
        }

        v101 = (v175 + 2);
        *(a2 + 1) = v101;
LABEL_421:
        if (v101 >= v49 || (v176 = *v101, v176 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
          if (!result)
          {
            return result;
          }

          v177 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          *(this + 23) = v176;
          v177 = (v101 + 1);
          *(a2 + 1) = v177;
        }

        *(this + 113) |= 0x400000u;
        if (v49 - v177 < 2 || *v177 != 192 || v177[1] != 1)
        {
          continue;
        }

        v108 = (v177 + 2);
        *(a2 + 1) = v108;
LABEL_430:
        if (v108 >= v49 || (v178 = *v108, v178 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
          if (!result)
          {
            return result;
          }

          v179 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          *(this + 24) = v178;
          v179 = (v108 + 1);
          *(a2 + 1) = v179;
        }

        *(this + 113) |= 0x800000u;
        if (v49 - v179 < 2 || *v179 != 200 || v179[1] != 1)
        {
          continue;
        }

        v73 = (v179 + 2);
        *(a2 + 1) = v73;
LABEL_439:
        if (v73 >= v49 || (v180 = *v73, v180 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
          if (!result)
          {
            return result;
          }

          v181 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          *(this + 25) = v180;
          v181 = (v73 + 1);
          *(a2 + 1) = v181;
        }

        *(this + 113) |= 0x1000000u;
        if (v49 - v181 < 2 || *v181 != 208 || v181[1] != 1)
        {
          continue;
        }

        v72 = (v181 + 2);
        *(a2 + 1) = v72;
LABEL_448:
        if (v72 >= v49 || (v182 = *v72, v182 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
          if (!result)
          {
            return result;
          }

          v183 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          *(this + 26) = v182;
          v183 = (v72 + 1);
          *(a2 + 1) = v183;
        }

        *(this + 113) |= 0x2000000u;
        if (v49 - v183 < 2 || *v183 != 216 || v183[1] != 1)
        {
          continue;
        }

        v112 = (v183 + 2);
        *(a2 + 1) = v112;
LABEL_457:
        if (v112 >= v49 || (v184 = *v112, v184 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
          if (!result)
          {
            return result;
          }

          v185 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          *(this + 27) = v184;
          v185 = (v112 + 1);
          *(a2 + 1) = v185;
        }

        *(this + 113) |= 0x4000000u;
        if (v49 - v185 < 2 || *v185 != 224 || v185[1] != 1)
        {
          continue;
        }

        v50 = (v185 + 2);
        *(a2 + 1) = v50;
LABEL_466:
        if (v50 >= v49 || (v186 = *v50, v186 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
          if (!result)
          {
            return result;
          }

          v187 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          *(this + 28) = v186;
          v187 = (v50 + 1);
          *(a2 + 1) = v187;
        }

        *(this + 113) |= 0x8000000u;
        if (v49 - v187 < 2 || *v187 != 232 || v187[1] != 1)
        {
          continue;
        }

        v109 = (v187 + 2);
        *(a2 + 1) = v109;
LABEL_475:
        if (v109 >= v49 || (v188 = *v109, v188 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 29);
          if (!result)
          {
            return result;
          }

          v189 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          *(this + 29) = v188;
          v189 = (v109 + 1);
          *(a2 + 1) = v189;
        }

        *(this + 113) |= 0x10000000u;
        if (v49 - v189 < 2 || *v189 != 240 || v189[1] != 1)
        {
          continue;
        }

        v110 = (v189 + 2);
        *(a2 + 1) = v110;
LABEL_484:
        if (v110 >= v49 || (v190 = *v110, v190 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
          if (!result)
          {
            return result;
          }

          v191 = *(a2 + 1);
          v49 = *(a2 + 2);
        }

        else
        {
          *(this + 30) = v190;
          v191 = (v110 + 1);
          *(a2 + 1) = v191;
        }

        *(this + 113) |= 0x20000000u;
        if (v49 - v191 < 2 || *v191 != 253 || v191[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v191 + 2;
LABEL_493:
        v382[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v382) & 1) == 0)
        {
          return 0;
        }

        *(this + 31) = v382[0];
        *(this + 113) |= 0x40000000u;
        v192 = *(a2 + 1);
        v82 = *(a2 + 2);
        if (v82 - v192 < 2 || *v192 != 128 || v192[1] != 2)
        {
          continue;
        }

        v83 = (v192 + 2);
        *(a2 + 1) = v83;
LABEL_498:
        if (v83 >= v82 || (v193 = *v83, v193 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
          if (!result)
          {
            return result;
          }

          v194 = *(a2 + 1);
          v82 = *(a2 + 2);
        }

        else
        {
          *(this + 32) = v193;
          v194 = (v83 + 1);
          *(a2 + 1) = v194;
        }

        *(this + 113) |= 0x80000000;
        if (v82 - v194 < 2 || *v194 != 141 || v194[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v194 + 2;
LABEL_507:
        v382[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v382) & 1) == 0)
        {
          return 0;
        }

        *(this + 33) = v382[0];
        *(this + 114) |= 1u;
        v195 = *(a2 + 1);
        if (*(a2 + 4) - v195 < 2 || *v195 != 149 || v195[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v195 + 2;
LABEL_512:
        v382[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v382) & 1) == 0)
        {
          return 0;
        }

        *(this + 34) = v382[0];
        *(this + 114) |= 2u;
        v196 = *(a2 + 1);
        v35 = *(a2 + 2);
        if (v35 - v196 < 2 || *v196 != 152 || v196[1] != 2)
        {
          continue;
        }

        v51 = (v196 + 2);
        *(a2 + 1) = v51;
LABEL_517:
        if (v51 >= v35 || (v197 = *v51, v197 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 35);
          if (!result)
          {
            return result;
          }

          v198 = *(a2 + 1);
          v35 = *(a2 + 2);
        }

        else
        {
          *(this + 35) = v197;
          v198 = (v51 + 1);
          *(a2 + 1) = v198;
        }

        *(this + 114) |= 4u;
        if (v35 - v198 < 2 || *v198 != 160 || v198[1] != 2)
        {
          continue;
        }

        v46 = (v198 + 2);
        *(a2 + 1) = v46;
LABEL_526:
        if (v46 >= v35 || (v199 = *v46, v199 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 36);
          if (!result)
          {
            return result;
          }

          v200 = *(a2 + 1);
          v35 = *(a2 + 2);
        }

        else
        {
          *(this + 36) = v199;
          v200 = (v46 + 1);
          *(a2 + 1) = v200;
        }

        *(this + 114) |= 8u;
        if (v35 - v200 < 2 || *v200 != 168 || v200[1] != 2)
        {
          continue;
        }

        v47 = (v200 + 2);
        *(a2 + 1) = v47;
LABEL_535:
        if (v47 >= v35 || (v201 = *v47, v201 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 37);
          if (!result)
          {
            return result;
          }

          v202 = *(a2 + 1);
          v35 = *(a2 + 2);
        }

        else
        {
          *(this + 37) = v201;
          v202 = (v47 + 1);
          *(a2 + 1) = v202;
        }

        *(this + 114) |= 0x10u;
        if (v35 - v202 < 2 || *v202 != 176 || v202[1] != 2)
        {
          continue;
        }

        v41 = (v202 + 2);
        *(a2 + 1) = v41;
LABEL_544:
        v382[0] = 0;
        if (v41 >= v35 || (v203 = *v41, (v203 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v203 = v382[0];
          v204 = *(a2 + 1);
          v35 = *(a2 + 2);
        }

        else
        {
          v204 = (v41 + 1);
          *(a2 + 1) = v204;
        }

        *(this + 224) = v203 != 0;
        *(this + 114) |= 0x20u;
        if (v35 - v204 < 2 || *v204 != 184 || v204[1] != 2)
        {
          continue;
        }

        v111 = (v204 + 2);
        *(a2 + 1) = v111;
LABEL_553:
        if (v111 >= v35 || (v205 = *v111, v205 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 38);
          if (!result)
          {
            return result;
          }

          v206 = *(a2 + 1);
          v35 = *(a2 + 2);
        }

        else
        {
          *(this + 38) = v205;
          v206 = (v111 + 1);
          *(a2 + 1) = v206;
        }

        *(this + 114) |= 0x40u;
        if (v35 - v206 < 2 || *v206 != 192 || v206[1] != 2)
        {
          continue;
        }

        v103 = (v206 + 2);
        *(a2 + 1) = v103;
LABEL_562:
        if (v103 >= v35 || (v207 = *v103, v207 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 39);
          if (!result)
          {
            return result;
          }

          v208 = *(a2 + 1);
          v35 = *(a2 + 2);
        }

        else
        {
          *(this + 39) = v207;
          v208 = (v103 + 1);
          *(a2 + 1) = v208;
        }

        *(this + 114) |= 0x80u;
        if (v35 - v208 < 2 || *v208 != 200 || v208[1] != 2)
        {
          continue;
        }

        v66 = (v208 + 2);
        *(a2 + 1) = v66;
LABEL_571:
        if (v66 >= v35 || (v209 = *v66, v209 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 40);
          if (!result)
          {
            return result;
          }

          v210 = *(a2 + 1);
          v35 = *(a2 + 2);
        }

        else
        {
          *(this + 40) = v209;
          v210 = (v66 + 1);
          *(a2 + 1) = v210;
        }

        *(this + 114) |= 0x100u;
        if (v35 - v210 < 2 || *v210 != 208 || v210[1] != 2)
        {
          continue;
        }

        v86 = (v210 + 2);
        *(a2 + 1) = v86;
LABEL_580:
        v382[0] = 0;
        if (v86 >= v35 || (v211 = *v86, (v211 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v211 = v382[0];
          v212 = *(a2 + 1);
          v35 = *(a2 + 2);
        }

        else
        {
          v212 = (v86 + 1);
          *(a2 + 1) = v212;
        }

        *(this + 225) = v211 != 0;
        *(this + 114) |= 0x200u;
        if (v35 - v212 < 2 || *v212 != 216 || v212[1] != 2)
        {
          continue;
        }

        v106 = (v212 + 2);
        *(a2 + 1) = v106;
LABEL_589:
        if (v106 >= v35 || (v213 = *v106, v213 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 41);
          if (!result)
          {
            return result;
          }

          v214 = *(a2 + 1);
          v35 = *(a2 + 2);
        }

        else
        {
          *(this + 41) = v213;
          v214 = (v106 + 1);
          *(a2 + 1) = v214;
        }

        *(this + 114) |= 0x400u;
        if (v35 - v214 < 2 || *v214 != 224 || v214[1] != 2)
        {
          continue;
        }

        v36 = (v214 + 2);
        *(a2 + 1) = v36;
LABEL_598:
        if (v36 >= v35 || (v215 = *v36, v215 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 42);
          if (!result)
          {
            return result;
          }

          v216 = *(a2 + 1);
          v35 = *(a2 + 2);
        }

        else
        {
          *(this + 42) = v215;
          v216 = (v36 + 1);
          *(a2 + 1) = v216;
        }

        *(this + 114) |= 0x800u;
        if (v35 - v216 < 2 || *v216 != 232 || v216[1] != 2)
        {
          continue;
        }

        v55 = (v216 + 2);
        *(a2 + 1) = v55;
LABEL_607:
        if (v55 >= v35 || (v217 = *v55, v217 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 43);
          if (!result)
          {
            return result;
          }

          v218 = *(a2 + 1);
          v35 = *(a2 + 2);
        }

        else
        {
          *(this + 43) = v217;
          v218 = (v55 + 1);
          *(a2 + 1) = v218;
        }

        *(this + 114) |= 0x1000u;
        if (v35 - v218 < 2 || *v218 != 245 || v218[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v218 + 2;
LABEL_616:
        v382[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v382) & 1) == 0)
        {
          return 0;
        }

        *(this + 44) = v382[0];
        *(this + 114) |= 0x2000u;
        v219 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v19 - v219 < 2 || *v219 != 248 || v219[1] != 2)
        {
          continue;
        }

        v117 = (v219 + 2);
        *(a2 + 1) = v117;
LABEL_621:
        if (v117 >= v19 || (v220 = *v117, v220 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 45);
          if (!result)
          {
            return result;
          }

          v221 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *(this + 45) = v220;
          v221 = (v117 + 1);
          *(a2 + 1) = v221;
        }

        *(this + 114) |= 0x4000u;
        if (v19 - v221 < 2 || *v221 != 128 || v221[1] != 3)
        {
          continue;
        }

        v43 = (v221 + 2);
        *(a2 + 1) = v43;
LABEL_630:
        if (v43 >= v19 || (v222 = *v43, v222 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 46);
          if (!result)
          {
            return result;
          }

          v223 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *(this + 46) = v222;
          v223 = (v43 + 1);
          *(a2 + 1) = v223;
        }

        *(this + 114) |= 0x8000u;
        if (v19 - v223 < 2 || *v223 != 136 || v223[1] != 3)
        {
          continue;
        }

        v57 = (v223 + 2);
        *(a2 + 1) = v57;
LABEL_639:
        if (v57 >= v19 || (v224 = *v57, v224 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 47);
          if (!result)
          {
            return result;
          }

          v225 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *(this + 47) = v224;
          v225 = (v57 + 1);
          *(a2 + 1) = v225;
        }

        *(this + 114) |= 0x10000u;
        if (v19 - v225 < 2 || *v225 != 144 || v225[1] != 3)
        {
          continue;
        }

        v63 = (v225 + 2);
        *(a2 + 1) = v63;
LABEL_648:
        if (v63 >= v19 || (v226 = *v63, v226 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 48);
          if (!result)
          {
            return result;
          }

          v227 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *(this + 48) = v226;
          v227 = (v63 + 1);
          *(a2 + 1) = v227;
        }

        *(this + 114) |= 0x20000u;
        if (v19 - v227 < 2 || *v227 != 152 || v227[1] != 3)
        {
          continue;
        }

        v33 = (v227 + 2);
        *(a2 + 1) = v33;
LABEL_657:
        if (v33 >= v19 || (v228 = *v33, v228 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 49);
          if (!result)
          {
            return result;
          }

          v229 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *(this + 49) = v228;
          v229 = (v33 + 1);
          *(a2 + 1) = v229;
        }

        *(this + 114) |= 0x40000u;
        if (v19 - v229 < 2 || *v229 != 160 || v229[1] != 3)
        {
          continue;
        }

        v122 = (v229 + 2);
        *(a2 + 1) = v122;
LABEL_666:
        if (v122 >= v19 || (v230 = *v122, v230 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 50);
          if (!result)
          {
            return result;
          }

          v231 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *(this + 50) = v230;
          v231 = (v122 + 1);
          *(a2 + 1) = v231;
        }

        *(this + 114) |= 0x80000u;
        if (v19 - v231 < 2 || *v231 != 168 || v231[1] != 3)
        {
          continue;
        }

        v116 = (v231 + 2);
        *(a2 + 1) = v116;
LABEL_675:
        if (v116 >= v19 || (v232 = *v116, v232 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 51);
          if (!result)
          {
            return result;
          }

          v233 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *(this + 51) = v232;
          v233 = (v116 + 1);
          *(a2 + 1) = v233;
        }

        *(this + 114) |= 0x100000u;
        if (v19 - v233 < 2 || *v233 != 176 || v233[1] != 3)
        {
          continue;
        }

        v42 = (v233 + 2);
        *(a2 + 1) = v42;
LABEL_684:
        if (v42 >= v19 || (v234 = *v42, v234 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 52);
          if (!result)
          {
            return result;
          }

          v235 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *(this + 52) = v234;
          v235 = (v42 + 1);
          *(a2 + 1) = v235;
        }

        *(this + 114) |= 0x200000u;
        if (v19 - v235 < 2 || *v235 != 184 || v235[1] != 3)
        {
          continue;
        }

        v113 = (v235 + 2);
        *(a2 + 1) = v113;
LABEL_693:
        if (v113 >= v19 || (v236 = *v113, v236 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 53);
          if (!result)
          {
            return result;
          }

          v237 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *(this + 53) = v236;
          v237 = (v113 + 1);
          *(a2 + 1) = v237;
        }

        *(this + 114) |= 0x400000u;
        if (v19 - v237 < 2 || *v237 != 192 || v237[1] != 3)
        {
          continue;
        }

        v115 = (v237 + 2);
        *(a2 + 1) = v115;
LABEL_702:
        if (v115 >= v19 || (v238 = *v115, v238 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 54);
          if (!result)
          {
            return result;
          }

          v239 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *(this + 54) = v238;
          v239 = (v115 + 1);
          *(a2 + 1) = v239;
        }

        *(this + 114) |= 0x800000u;
        if (v19 - v239 < 2 || *v239 != 200 || v239[1] != 3)
        {
          continue;
        }

        v44 = (v239 + 2);
        *(a2 + 1) = v44;
LABEL_711:
        if (v44 >= v19 || (v240 = *v44, v240 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 55);
          if (!result)
          {
            return result;
          }

          v241 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *(this + 55) = v240;
          v241 = (v44 + 1);
          *(a2 + 1) = v241;
        }

        *(this + 114) |= 0x1000000u;
        if (v19 - v241 < 2 || *v241 != 208 || v241[1] != 3)
        {
          continue;
        }

        v105 = (v241 + 2);
        *(a2 + 1) = v105;
LABEL_720:
        v382[0] = 0;
        if (v105 >= v19 || (v242 = *v105, (v242 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v242 = v382[0];
          v243 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          v243 = (v105 + 1);
          *(a2 + 1) = v243;
        }

        *(this + 226) = v242 != 0;
        *(this + 114) |= 0x2000000u;
        if (v19 - v243 < 2 || *v243 != 216 || v243[1] != 3)
        {
          continue;
        }

        v58 = (v243 + 2);
        *(a2 + 1) = v58;
LABEL_729:
        if (v58 >= v19 || (v244 = *v58, v244 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 57);
          if (!result)
          {
            return result;
          }

          v245 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *(this + 57) = v244;
          v245 = (v58 + 1);
          *(a2 + 1) = v245;
        }

        *(this + 114) |= 0x4000000u;
        if (v19 - v245 < 2 || *v245 != 224 || v245[1] != 3)
        {
          continue;
        }

        v107 = (v245 + 2);
        *(a2 + 1) = v107;
LABEL_738:
        if (v107 >= v19 || (v246 = *v107, v246 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 58);
          if (!result)
          {
            return result;
          }

          v247 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *(this + 58) = v246;
          v247 = (v107 + 1);
          *(a2 + 1) = v247;
        }

        *(this + 114) |= 0x8000000u;
        if (v19 - v247 < 2 || *v247 != 232 || v247[1] != 3)
        {
          continue;
        }

        v67 = (v247 + 2);
        *(a2 + 1) = v67;
LABEL_747:
        if (v67 >= v19 || (v248 = *v67, v248 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 59);
          if (!result)
          {
            return result;
          }

          v249 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *(this + 59) = v248;
          v249 = (v67 + 1);
          *(a2 + 1) = v249;
        }

        *(this + 114) |= 0x10000000u;
        if (v19 - v249 < 2 || *v249 != 240 || v249[1] != 3)
        {
          continue;
        }

        v89 = (v249 + 2);
        *(a2 + 1) = v89;
LABEL_756:
        if (v89 >= v19 || (v250 = *v89, (v250 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v4);
          if (!result)
          {
            return result;
          }

          v251 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *v4 = v250;
          v251 = (v89 + 1);
          *(a2 + 1) = v251;
        }

        *(this + 114) |= 0x20000000u;
        if (v19 - v251 >= 2 && *v251 == 248 && v251[1] == 3)
        {
          goto LABEL_764;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v75 = *(a2 + 1);
        v74 = *(a2 + 2);
        goto LABEL_245;
      case 4u:
        if (v14 != 2)
        {
          goto LABEL_225;
        }

        v78 = *(this + 113);
        goto LABEL_253;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v65 = *(a2 + 1);
        v64 = *(a2 + 2);
        goto LABEL_259;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v90 = *(a2 + 1);
        v64 = *(a2 + 2);
        goto LABEL_267;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v95 = *(a2 + 1);
        v64 = *(a2 + 2);
        goto LABEL_275;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v79 = *(a2 + 1);
        v64 = *(a2 + 2);
        goto LABEL_283;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v99 = *(a2 + 1);
        v64 = *(a2 + 2);
        goto LABEL_291;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v71 = *(a2 + 1);
        v64 = *(a2 + 2);
        goto LABEL_299;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v98 = *(a2 + 1);
        v60 = *(a2 + 2);
        goto LABEL_309;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v61 = *(a2 + 1);
        v60 = *(a2 + 2);
        goto LABEL_317;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v70 = *(a2 + 1);
        v69 = *(a2 + 2);
        goto LABEL_327;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v94 = *(a2 + 1);
        v52 = *(a2 + 2);
        goto LABEL_337;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v56 = *(a2 + 1);
        v52 = *(a2 + 2);
        goto LABEL_345;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v76 = *(a2 + 1);
        v52 = *(a2 + 2);
        goto LABEL_354;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v53 = *(a2 + 1);
        v52 = *(a2 + 2);
        goto LABEL_363;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v84 = *(a2 + 1);
        v52 = *(a2 + 2);
        goto LABEL_372;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v97 = *(a2 + 1);
        v96 = *(a2 + 2);
        goto LABEL_383;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v104 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_394;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v88 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_403;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v93 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_412;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v101 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_421;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v108 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_430;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v73 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_439;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v72 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_448;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v112 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_457;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v50 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_466;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v109 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_475;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v110 = *(a2 + 1);
        v49 = *(a2 + 2);
        goto LABEL_484;
      case 0x1Fu:
        if (v14 == 5)
        {
          goto LABEL_493;
        }

        goto LABEL_225;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v83 = *(a2 + 1);
        v82 = *(a2 + 2);
        goto LABEL_498;
      case 0x21u:
        if (v14 == 5)
        {
          goto LABEL_507;
        }

        goto LABEL_225;
      case 0x22u:
        if (v14 == 5)
        {
          goto LABEL_512;
        }

        goto LABEL_225;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v51 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_517;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v46 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_526;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v47 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_535;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v41 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_544;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v111 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_553;
      case 0x28u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v103 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_562;
      case 0x29u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v66 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_571;
      case 0x2Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v86 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_580;
      case 0x2Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v106 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_589;
      case 0x2Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v36 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_598;
      case 0x2Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v55 = *(a2 + 1);
        v35 = *(a2 + 2);
        goto LABEL_607;
      case 0x2Eu:
        if (v14 == 5)
        {
          goto LABEL_616;
        }

        goto LABEL_225;
      case 0x2Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v117 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_621;
      case 0x30u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v43 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_630;
      case 0x31u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v57 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_639;
      case 0x32u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v63 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_648;
      case 0x33u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v33 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_657;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v122 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_666;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v116 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_675;
      case 0x36u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v42 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_684;
      case 0x37u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v113 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_693;
      case 0x38u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v115 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_702;
      case 0x39u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v44 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_711;
      case 0x3Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v105 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_720;
      case 0x3Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v58 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_729;
      case 0x3Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v107 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_738;
      case 0x3Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v67 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_747;
      case 0x3Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v89 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_756;
      case 0x3Fu:
        if ((TagFallback & 7) != 0)
        {
          if (v14 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 240);
            if (!result)
            {
              return result;
            }

            goto LABEL_784;
          }

LABEL_225:
          if (v14 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        v134 = *(a2 + 1);
        v19 = *(a2 + 2);
        while (1)
        {
          v357 = v11;
          v252 = v10;
          v253 = v9;
          v254 = v8;
          v255 = v7;
          v256 = v6;
          v257 = v5;
          v258 = v4;
          v381 = 0;
          if (v134 >= v19 || *v134 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v381))
            {
              return 0;
            }
          }

          else
          {
            v381 = *v134;
            *(a2 + 1) = v134 + 1;
          }

          v259 = *(this + 62);
          if (v259 == *(this + 63))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 30, v259 + 1);
            v259 = *(this + 62);
          }

          v260 = v381;
          v261 = *(this + 30);
          *(this + 62) = v259 + 1;
          *(v261 + 4 * v259) = v260;
          v262 = *(this + 63) - *(this + 62);
          if (v262 >= 1)
          {
            v263 = v262 + 1;
            do
            {
              v264 = *(a2 + 1);
              v265 = *(a2 + 2);
              if (v265 - v264 < 2 || *v264 != 248 || v264[1] != 3)
              {
                break;
              }

              *(a2 + 1) = v264 + 2;
              if ((v264 + 2) >= v265 || v264[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v381))
                {
                  return 0;
                }
              }

              else
              {
                v381 = v264[2];
                *(a2 + 1) = v264 + 3;
              }

              v266 = *(this + 62);
              if (v266 >= *(this + 63))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v382);
                v266 = *(this + 62);
              }

              v267 = v381;
              v268 = *(this + 30);
              *(this + 62) = v266 + 1;
              *(v268 + 4 * v266) = v267;
              --v263;
            }

            while (v263 > 1);
          }

          v4 = v258;
          v5 = v257;
          v6 = v256;
          v7 = v255;
          v8 = v254;
          v9 = v253;
          v10 = v252;
          v11 = v357;
LABEL_784:
          v251 = *(a2 + 1);
          v19 = *(a2 + 2);
          if (v19 - v251 < 2)
          {
            goto LABEL_2;
          }

          v269 = *v251;
          if (v269 == 128)
          {
            break;
          }

          if (v269 != 248 || v251[1] != 3)
          {
            goto LABEL_2;
          }

LABEL_764:
          v134 = (v251 + 2);
          *(a2 + 1) = v134;
        }

        if (v251[1] != 4)
        {
          continue;
        }

        v77 = (v251 + 2);
        *(a2 + 1) = v77;
LABEL_791:
        *v382 = 0;
        if (v77 >= v19 || (v270 = *v77, v270 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v270 = *v382;
          v271 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          v271 = (v77 + 1);
          *(a2 + 1) = v271;
        }

        *(this + 33) = v270;
        *(this + 114) |= 0x80000000;
        if (v19 - v271 < 2 || *v271 != 136 || v271[1] != 4)
        {
          continue;
        }

        v68 = (v271 + 2);
        *(a2 + 1) = v68;
LABEL_800:
        if (v68 >= v19 || (v272 = *v68, (v272 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
          if (!result)
          {
            return result;
          }

          v273 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *v5 = v272;
          v273 = (v68 + 1);
          *(a2 + 1) = v273;
        }

        *(this + 115) |= 1u;
        if (v19 - v273 < 2 || *v273 != 144 || v273[1] != 4)
        {
          continue;
        }

        v91 = (v273 + 2);
        *(a2 + 1) = v91;
LABEL_809:
        if (v91 >= v19 || (v274 = *v91, (v274 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
          if (!result)
          {
            return result;
          }

          v275 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *v6 = v274;
          v275 = (v91 + 1);
          *(a2 + 1) = v275;
        }

        *(this + 115) |= 2u;
        if (v19 - v275 < 2 || *v275 != 152 || v275[1] != 4)
        {
          continue;
        }

        v38 = (v275 + 2);
        *(a2 + 1) = v38;
LABEL_818:
        if (v38 >= v19 || (v276 = *v38, (v276 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v7);
          if (!result)
          {
            return result;
          }

          v277 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *v7 = v276;
          v277 = (v38 + 1);
          *(a2 + 1) = v277;
        }

        *(this + 115) |= 4u;
        if (v19 - v277 < 2 || *v277 != 160 || v277[1] != 4)
        {
          continue;
        }

        v54 = (v277 + 2);
        *(a2 + 1) = v54;
LABEL_827:
        if (v54 >= v19 || (v278 = *v54, (v278 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v8);
          if (!result)
          {
            return result;
          }

          v279 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *v8 = v278;
          v279 = (v54 + 1);
          *(a2 + 1) = v279;
        }

        *(this + 115) |= 8u;
        if (v19 - v279 < 2 || *v279 != 168 || v279[1] != 4)
        {
          continue;
        }

        v126 = (v279 + 2);
        *(a2 + 1) = v126;
LABEL_836:
        if (v126 >= v19 || (v280 = *v126, (v280 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v9);
          if (!result)
          {
            return result;
          }

          v281 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *v9 = v280;
          v281 = (v126 + 1);
          *(a2 + 1) = v281;
        }

        *(this + 115) |= 0x10u;
        if (v19 - v281 < 2 || *v281 != 176 || v281[1] != 4)
        {
          continue;
        }

        v48 = (v281 + 2);
        *(a2 + 1) = v48;
LABEL_845:
        if (v48 >= v19 || (v282 = *v48, (v282 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v10);
          if (!result)
          {
            return result;
          }

          v283 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *v10 = v282;
          v283 = (v48 + 1);
          *(a2 + 1) = v283;
        }

        *(this + 115) |= 0x20u;
        if (v19 - v283 < 2 || *v283 != 184 || v283[1] != 4)
        {
          continue;
        }

        v30 = (v283 + 2);
        *(a2 + 1) = v30;
LABEL_854:
        if (v30 >= v19 || (v284 = *v30, (v284 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v11);
          if (!result)
          {
            return result;
          }

          v285 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *v11 = v284;
          v285 = (v30 + 1);
          *(a2 + 1) = v285;
        }

        *(this + 115) |= 0x40u;
        if (v19 - v285 < 2 || *v285 != 192 || v285[1] != 4)
        {
          continue;
        }

        v40 = (v285 + 2);
        *(a2 + 1) = v40;
LABEL_863:
        if (v40 >= v19 || (v286 = *v40, (v286 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v380);
          if (!result)
          {
            return result;
          }

          v287 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *v380 = v286;
          v287 = (v40 + 1);
          *(a2 + 1) = v287;
        }

        *(this + 115) |= 0x80u;
        if (v19 - v287 < 2 || *v287 != 200 || v287[1] != 4)
        {
          continue;
        }

        v114 = (v287 + 2);
        *(a2 + 1) = v114;
LABEL_872:
        if (v114 >= v19 || (v288 = *v114, (v288 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v379);
          if (!result)
          {
            return result;
          }

          v289 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *v379 = v288;
          v289 = (v114 + 1);
          *(a2 + 1) = v289;
        }

        *(this + 115) |= 0x100u;
        if (v19 - v289 < 2 || *v289 != 208 || v289[1] != 4)
        {
          continue;
        }

        v118 = (v289 + 2);
        *(a2 + 1) = v118;
LABEL_881:
        if (v118 >= v19 || (v290 = *v118, (v290 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v378);
          if (!result)
          {
            return result;
          }

          v291 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *v378 = v290;
          v291 = (v118 + 1);
          *(a2 + 1) = v291;
        }

        *(this + 115) |= 0x200u;
        if (v19 - v291 < 2 || *v291 != 216 || v291[1] != 4)
        {
          continue;
        }

        v120 = (v291 + 2);
        *(a2 + 1) = v120;
LABEL_890:
        v382[0] = 0;
        if (v120 >= v19 || (v292 = *v120, (v292 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v292 = v382[0];
          v293 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          v293 = (v120 + 1);
          *(a2 + 1) = v293;
        }

        *(this + 77) = v292;
        *(this + 115) |= 0x400u;
        if (v19 - v293 < 2 || *v293 != 224 || v293[1] != 4)
        {
          continue;
        }

        v45 = (v293 + 2);
        *(a2 + 1) = v45;
LABEL_899:
        if (v45 >= v19 || (v294 = *v45, (v294 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v377);
          if (!result)
          {
            return result;
          }

          v295 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *v377 = v294;
          v295 = (v45 + 1);
          *(a2 + 1) = v295;
        }

        *(this + 115) |= 0x800u;
        if (v19 - v295 < 2 || *v295 != 232 || v295[1] != 4)
        {
          continue;
        }

        v87 = (v295 + 2);
        *(a2 + 1) = v87;
LABEL_908:
        v382[0] = 0;
        if (v87 >= v19 || (v296 = *v87, (v296 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v296 = v382[0];
          v297 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          v297 = (v87 + 1);
          *(a2 + 1) = v297;
        }

        *(this + 79) = v296;
        *(this + 115) |= 0x1000u;
        if (v19 - v297 < 2 || *v297 != 240 || v297[1] != 4)
        {
          continue;
        }

        v31 = (v297 + 2);
        *(a2 + 1) = v31;
LABEL_917:
        if (v31 >= v19 || (v298 = *v31, (v298 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v376);
          if (!result)
          {
            return result;
          }

          v299 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *v376 = v298;
          v299 = (v31 + 1);
          *(a2 + 1) = v299;
        }

        *(this + 115) |= 0x2000u;
        if (v19 - v299 < 2 || *v299 != 248 || v299[1] != 4)
        {
          continue;
        }

        v124 = (v299 + 2);
        *(a2 + 1) = v124;
LABEL_926:
        v382[0] = 0;
        if (v124 >= v19 || (v300 = *v124, (v300 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v300 = v382[0];
          v301 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          v301 = (v124 + 1);
          *(a2 + 1) = v301;
        }

        *(this + 81) = v300;
        *(this + 115) |= 0x4000u;
        if (v19 - v301 < 2 || *v301 != 128 || v301[1] != 5)
        {
          continue;
        }

        v26 = (v301 + 2);
        *(a2 + 1) = v26;
LABEL_935:
        if (v26 >= v19 || (v302 = *v26, (v302 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v375);
          if (!result)
          {
            return result;
          }

          v303 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *v375 = v302;
          v303 = (v26 + 1);
          *(a2 + 1) = v303;
        }

        *(this + 115) |= 0x8000u;
        if (v19 - v303 < 2 || *v303 != 136 || v303[1] != 5)
        {
          continue;
        }

        v39 = (v303 + 2);
        *(a2 + 1) = v39;
LABEL_944:
        if (v39 >= v19 || (v304 = *v39, (v304 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v374);
          if (!result)
          {
            return result;
          }

          v305 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *v374 = v304;
          v305 = (v39 + 1);
          *(a2 + 1) = v305;
        }

        *(this + 115) |= 0x10000u;
        if (v19 - v305 < 2 || *v305 != 144 || v305[1] != 5)
        {
          continue;
        }

        v62 = (v305 + 2);
        *(a2 + 1) = v62;
LABEL_953:
        if (v62 >= v19 || (v306 = *v62, (v306 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v373);
          if (!result)
          {
            return result;
          }

          v307 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *v373 = v306;
          v307 = (v62 + 1);
          *(a2 + 1) = v307;
        }

        *(this + 115) |= 0x20000u;
        if (v19 - v307 < 2 || *v307 != 152 || v307[1] != 5)
        {
          continue;
        }

        v59 = (v307 + 2);
        *(a2 + 1) = v59;
LABEL_962:
        if (v59 >= v19 || (v308 = *v59, (v308 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v372);
          if (!result)
          {
            return result;
          }

          v309 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *v372 = v308;
          v309 = (v59 + 1);
          *(a2 + 1) = v309;
        }

        *(this + 115) |= 0x40000u;
        if (v19 - v309 < 2 || *v309 != 160 || v309[1] != 5)
        {
          continue;
        }

        v21 = (v309 + 2);
        *(a2 + 1) = v21;
LABEL_971:
        if (v21 >= v19 || (v310 = *v21, (v310 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v371);
          if (!result)
          {
            return result;
          }

          v311 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          *v371 = v310;
          v311 = (v21 + 1);
          *(a2 + 1) = v311;
        }

        *(this + 115) |= 0x80000u;
        if (v19 - v311 < 2 || *v311 != 168 || v311[1] != 5)
        {
          continue;
        }

        v20 = (v311 + 2);
        *(a2 + 1) = v20;
LABEL_980:
        if (v20 >= v19 || (v312 = *v20, (v312 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v370);
          if (!result)
          {
            return result;
          }

          v313 = *(a2 + 1);
        }

        else
        {
          *v370 = v312;
          v313 = (v20 + 1);
          *(a2 + 1) = v313;
        }

        *(this + 115) |= 0x100000u;
        v22 = *(a2 + 2);
        if (v22 - v313 < 2 || *v313 != 176 || v313[1] != 5)
        {
          continue;
        }

        v100 = (v313 + 2);
        *(a2 + 1) = v100;
LABEL_989:
        if (v100 >= v22 || (v314 = *v100, (v314 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v369);
          if (!result)
          {
            return result;
          }

          v315 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v369 = v314;
          v315 = (v100 + 1);
          *(a2 + 1) = v315;
        }

        *(this + 115) |= 0x200000u;
        if (v22 - v315 < 2 || *v315 != 184 || v315[1] != 5)
        {
          continue;
        }

        v102 = (v315 + 2);
        *(a2 + 1) = v102;
LABEL_998:
        if (v102 >= v22 || (v316 = *v102, (v316 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v368);
          if (!result)
          {
            return result;
          }

          v317 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v368 = v316;
          v317 = (v102 + 1);
          *(a2 + 1) = v317;
        }

        *(this + 115) |= 0x400000u;
        if (v22 - v317 < 2 || *v317 != 192 || v317[1] != 5)
        {
          continue;
        }

        v119 = (v317 + 2);
        *(a2 + 1) = v119;
LABEL_1007:
        if (v119 >= v22 || (v318 = *v119, (v318 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v367);
          if (!result)
          {
            return result;
          }

          v319 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v367 = v318;
          v319 = (v119 + 1);
          *(a2 + 1) = v319;
        }

        *(this + 115) |= 0x800000u;
        if (v22 - v319 < 2 || *v319 != 200 || v319[1] != 5)
        {
          continue;
        }

        v34 = (v319 + 2);
        *(a2 + 1) = v34;
LABEL_1016:
        if (v34 >= v22 || (v320 = *v34, (v320 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v366);
          if (!result)
          {
            return result;
          }

          v321 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v366 = v320;
          v321 = (v34 + 1);
          *(a2 + 1) = v321;
        }

        *(this + 115) |= 0x1000000u;
        if (v22 - v321 < 2 || *v321 != 208 || v321[1] != 5)
        {
          continue;
        }

        v131 = (v321 + 2);
        *(a2 + 1) = v131;
LABEL_1025:
        if (v131 >= v22 || (v322 = *v131, (v322 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v365);
          if (!result)
          {
            return result;
          }

          v323 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v365 = v322;
          v323 = (v131 + 1);
          *(a2 + 1) = v323;
        }

        *(this + 115) |= 0x2000000u;
        if (v22 - v323 < 2 || *v323 != 216 || v323[1] != 5)
        {
          continue;
        }

        v130 = (v323 + 2);
        *(a2 + 1) = v130;
LABEL_1034:
        if (v130 >= v22 || (v324 = *v130, (v324 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v364);
          if (!result)
          {
            return result;
          }

          v325 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v364 = v324;
          v325 = (v130 + 1);
          *(a2 + 1) = v325;
        }

        *(this + 115) |= 0x4000000u;
        if (v22 - v325 < 2 || *v325 != 224 || v325[1] != 5)
        {
          continue;
        }

        v23 = (v325 + 2);
        *(a2 + 1) = v23;
LABEL_1043:
        if (v23 >= v22 || (v326 = *v23, (v326 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v363);
          if (!result)
          {
            return result;
          }

          v327 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          *v363 = v326;
          v327 = (v23 + 1);
          *(a2 + 1) = v327;
        }

        *(this + 115) |= 0x8000000u;
        if (v22 - v327 < 2 || *v327 != 232 || v327[1] != 5)
        {
          continue;
        }

        v81 = (v327 + 2);
        *(a2 + 1) = v81;
LABEL_1052:
        v382[0] = 0;
        if (v81 >= v22 || (v328 = *v81, (v328 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v328 = v382[0];
          v329 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          v329 = (v81 + 1);
          *(a2 + 1) = v329;
        }

        *(this + 227) = v328 != 0;
        *(this + 115) |= 0x10000000u;
        if (v22 - v329 < 2 || *v329 != 240 || v329[1] != 5)
        {
          continue;
        }

        v32 = (v329 + 2);
        *(a2 + 1) = v32;
LABEL_1061:
        v382[0] = 0;
        if (v32 >= v22 || (v330 = *v32, (v330 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v330 = v382[0];
          v331 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        else
        {
          v331 = (v32 + 1);
          *(a2 + 1) = v331;
        }

        *(this + 380) = v330 != 0;
        *(this + 115) |= 0x20000000u;
        if (v22 - v331 < 2 || *v331 != 248 || v331[1] != 5)
        {
          continue;
        }

        v85 = (v331 + 2);
        *(a2 + 1) = v85;
LABEL_1070:
        v382[0] = 0;
        if (v85 >= v22 || (v332 = *v85, (v332 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v332 = v382[0];
        }

        else
        {
          *(a2 + 1) = v85 + 1;
        }

        if (v332 <= 0x18)
        {
          *(this + 115) |= 0x40000000u;
          *(this + 96) = v332;
        }

        v333 = *(a2 + 1);
        v127 = *(a2 + 2);
        if (v127 - v333 < 2 || *v333 != 128 || v333[1] != 6)
        {
          continue;
        }

        v128 = (v333 + 2);
        *(a2 + 1) = v128;
LABEL_1081:
        v382[0] = 0;
        if (v128 >= v127 || (v334 = *v128, (v334 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v334 = v382[0];
        }

        else
        {
          *(a2 + 1) = v128 + 1;
        }

        if (v334 <= 0x18)
        {
          *(this + 115) |= 0x80000000;
          *(this + 97) = v334;
        }

        v335 = *(a2 + 1);
        v27 = *(a2 + 2);
        if (v27 - v335 < 2 || *v335 != 136 || v335[1] != 6)
        {
          continue;
        }

        v28 = (v335 + 2);
        *(a2 + 1) = v28;
LABEL_1092:
        *v382 = 0;
        if (v28 >= v27 || (v336 = *v28, v336 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v336 = *v382;
          v337 = *(a2 + 1);
          v27 = *(a2 + 2);
        }

        else
        {
          v337 = (v28 + 1);
          *(a2 + 1) = v337;
        }

        *(this + 49) = v336;
        *(this + 116) |= 1u;
        if (v27 - v337 < 2 || *v337 != 144 || v337[1] != 6)
        {
          continue;
        }

        v132 = (v337 + 2);
        *(a2 + 1) = v132;
LABEL_1101:
        *v382 = 0;
        if (v132 >= v27 || (v338 = *v132, v338 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v382);
          if (!result)
          {
            return result;
          }

          v338 = *v382;
          v339 = *(a2 + 1);
          v27 = *(a2 + 2);
        }

        else
        {
          v339 = (v132 + 1);
          *(a2 + 1) = v339;
        }

        *(this + 50) = v338;
        *(this + 116) |= 2u;
        if (v27 - v339 < 2 || *v339 != 153 || v339[1] != 6)
        {
          continue;
        }

        *(a2 + 1) = v339 + 2;
LABEL_1110:
        *v382 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v382))
        {
          *(this + 51) = *v382;
          *(this + 116) |= 4u;
          v340 = *(a2 + 1);
          v24 = *(a2 + 2);
          if (v24 - v340 >= 2 && *v340 == 160 && v340[1] == 6)
          {
            v133 = (v340 + 2);
            *(a2 + 1) = v133;
LABEL_1115:
            if (v133 >= v24 || (v341 = *v133, (v341 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v358);
              if (!result)
              {
                return result;
              }

              v342 = *(a2 + 1);
              v24 = *(a2 + 2);
            }

            else
            {
              *v358 = v341;
              v342 = (v133 + 1);
              *(a2 + 1) = v342;
            }

            *(this + 116) |= 8u;
            if (v24 - v342 >= 2 && *v342 == 168 && v342[1] == 6)
            {
              v129 = (v342 + 2);
              *(a2 + 1) = v129;
LABEL_1124:
              if (v129 >= v24 || (v343 = *v129, (v343 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v359);
                if (!result)
                {
                  return result;
                }

                v344 = *(a2 + 1);
                v24 = *(a2 + 2);
              }

              else
              {
                *v359 = v343;
                v344 = (v129 + 1);
                *(a2 + 1) = v344;
              }

              *(this + 116) |= 0x10u;
              if (v24 - v344 >= 2 && *v344 == 176 && v344[1] == 6)
              {
                v125 = (v344 + 2);
                *(a2 + 1) = v125;
LABEL_1133:
                if (v125 >= v24 || (v345 = *v125, (v345 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v360);
                  if (!result)
                  {
                    return result;
                  }

                  v346 = *(a2 + 1);
                  v24 = *(a2 + 2);
                }

                else
                {
                  *v360 = v345;
                  v346 = (v125 + 1);
                  *(a2 + 1) = v346;
                }

                *(this + 116) |= 0x20u;
                if (v24 - v346 >= 2 && *v346 == 184 && v346[1] == 6)
                {
                  v37 = (v346 + 2);
                  *(a2 + 1) = v37;
LABEL_1142:
                  v382[0] = 0;
                  if (v37 >= v24 || (v347 = *v37, (v347 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
                    if (!result)
                    {
                      return result;
                    }

                    v347 = v382[0];
                    v348 = *(a2 + 1);
                    v24 = *(a2 + 2);
                  }

                  else
                  {
                    v348 = (v37 + 1);
                    *(a2 + 1) = v348;
                  }

                  *(this + 107) = v347;
                  *(this + 116) |= 0x40u;
                  if (v24 - v348 >= 2 && *v348 == 192 && v348[1] == 6)
                  {
                    v123 = (v348 + 2);
                    *(a2 + 1) = v123;
LABEL_1151:
                    v382[0] = 0;
                    if (v123 >= v24 || (v349 = *v123, (v349 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
                      if (!result)
                      {
                        return result;
                      }

                      v349 = v382[0];
                      v350 = *(a2 + 1);
                      v24 = *(a2 + 2);
                    }

                    else
                    {
                      v350 = (v123 + 1);
                      *(a2 + 1) = v350;
                    }

                    *(this + 108) = v349;
                    *(this + 116) |= 0x80u;
                    if (v24 - v350 >= 2 && *v350 == 200 && v350[1] == 6)
                    {
                      v121 = (v350 + 2);
                      *(a2 + 1) = v121;
LABEL_1160:
                      v382[0] = 0;
                      if (v121 >= v24 || (v351 = *v121, (v351 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v382);
                        if (!result)
                        {
                          return result;
                        }

                        v351 = v382[0];
                        v352 = *(a2 + 1);
                        v24 = *(a2 + 2);
                      }

                      else
                      {
                        v352 = (v121 + 1);
                        *(a2 + 1) = v352;
                      }

                      *(this + 109) = v351;
                      *(this + 116) |= 0x100u;
                      if (v24 - v352 >= 2 && *v352 == 208 && v352[1] == 6)
                      {
                        v29 = (v352 + 2);
                        *(a2 + 1) = v29;
LABEL_1169:
                        if (v29 >= v24 || (v353 = *v29, (v353 & 0x80000000) != 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v361);
                          if (!result)
                          {
                            return result;
                          }

                          v354 = *(a2 + 1);
                          v24 = *(a2 + 2);
                        }

                        else
                        {
                          *v361 = v353;
                          v354 = (v29 + 1);
                          *(a2 + 1) = v354;
                        }

                        *(this + 116) |= 0x200u;
                        if (v24 - v354 >= 2 && *v354 == 216 && v354[1] == 6)
                        {
                          v25 = (v354 + 2);
                          *(a2 + 1) = v25;
LABEL_1178:
                          if (v25 >= v24 || (v355 = *v25, (v355 & 0x80000000) != 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v362);
                            if (!result)
                            {
                              return result;
                            }

                            v356 = *(a2 + 1);
                            v24 = *(a2 + 2);
                          }

                          else
                          {
                            *v362 = v355;
                            v356 = v25 + 1;
                            *(a2 + 1) = v356;
                          }

                          *(this + 116) |= 0x400u;
                          if (v356 == v24 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

          continue;
        }

        return 0;
      case 0x40u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v77 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_791;
      case 0x41u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v68 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_800;
      case 0x42u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v91 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_809;
      case 0x43u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v38 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_818;
      case 0x44u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v54 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_827;
      case 0x45u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v126 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_836;
      case 0x46u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v48 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_845;
      case 0x47u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v30 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_854;
      case 0x48u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v40 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_863;
      case 0x49u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v114 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_872;
      case 0x4Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v118 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_881;
      case 0x4Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v120 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_890;
      case 0x4Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v45 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_899;
      case 0x4Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v87 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_908;
      case 0x4Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v31 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_917;
      case 0x4Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v124 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_926;
      case 0x50u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v26 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_935;
      case 0x51u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v39 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_944;
      case 0x52u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v62 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_953;
      case 0x53u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v59 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_962;
      case 0x54u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v21 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_971;
      case 0x55u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_980;
      case 0x56u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v100 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_989;
      case 0x57u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v102 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_998;
      case 0x58u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v119 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1007;
      case 0x59u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v34 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1016;
      case 0x5Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v131 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1025;
      case 0x5Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v130 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1034;
      case 0x5Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1043;
      case 0x5Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v81 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1052;
      case 0x5Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v32 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1061;
      case 0x5Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v85 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_1070;
      case 0x60u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v128 = *(a2 + 1);
        v127 = *(a2 + 2);
        goto LABEL_1081;
      case 0x61u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v28 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_1092;
      case 0x62u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v132 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_1101;
      case 0x63u:
        if (v14 == 1)
        {
          goto LABEL_1110;
        }

        goto LABEL_225;
      case 0x64u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v133 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_1115;
      case 0x65u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v129 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_1124;
      case 0x66u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v125 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_1133;
      case 0x67u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v37 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_1142;
      case 0x68u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v123 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_1151;
      case 0x69u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v121 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_1160;
      case 0x6Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v29 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_1169;
      case 0x6Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_225;
        }

        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_1178;
      default:
        goto LABEL_225;
    }
  }
}