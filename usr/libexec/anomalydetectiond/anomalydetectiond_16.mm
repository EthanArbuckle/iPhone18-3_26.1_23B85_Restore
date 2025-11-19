BOOL CMMsl::DopplerRawDataInput::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 164);
  v3 = *(a2 + 164);
  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000000) != 0)
  {
    if ((v3 & 0x20000000) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000000) != 0)
  {
    if ((v3 & 0x40000000) == 0 || *(a1 + 148) != *(a2 + 148))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000000) != 0)
  {
    if ((v3 & 0x100000000) == 0 || *(a1 + 156) != *(a2 + 156))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000000) != 0)
  {
    if ((v3 & 0x200000000) == 0 || *(a1 + 160) != *(a2 + 160))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000000) != 0)
  {
    if ((v3 & 0x10000000) == 0 || *(a1 + 140) != *(a2 + 140))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    if ((v3 & 0x800000) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000000) != 0)
  {
    if ((v3 & 0x2000000) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000000) != 0)
  {
    if ((v3 & 0x8000000) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000000) != 0)
  {
    if ((v3 & 0x4000000) == 0 || *(a1 + 132) != *(a2 + 132))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000) != 0)
  {
    if ((v3 & 0x400000) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000) != 0)
  {
    if ((v3 & 0x1000000) == 0 || *(a1 + 124) != *(a2 + 124))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000000) != 0)
  {
    if ((v3 & 0x80000000) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 108) != *(a2 + 108))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  v4 = (*(a2 + 164) & 0x800) == 0;
  if ((v2 & 0x800) != 0)
  {
    return (v3 & 0x800) != 0 && *(a1 + 72) == *(a2 + 72);
  }

  return v4;
}

uint64_t CMMsl::DopplerRawDataInput::hash_value(CMMsl::DopplerRawDataInput *this)
{
  v1 = *(this + 164);
  if ((v1 & 0x10) != 0)
  {
    if (*(this + 5) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 5);
    }
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 0x80000) == 0)
  {
    v51 = 0;
    if ((v1 & 0x20000000) != 0)
    {
      goto LABEL_8;
    }

LABEL_62:
    v50 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_11;
    }

LABEL_63:
    v49 = 0;
    if ((v1 & 0x40000000) != 0)
    {
      goto LABEL_14;
    }

LABEL_64:
    v48 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_17;
    }

LABEL_65:
    v47 = 0;
    if ((v1 & 0x100000000) != 0)
    {
      goto LABEL_20;
    }

LABEL_66:
    v46 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

  v42 = *(this + 26);
  v43 = LODWORD(v42);
  if (v42 == 0.0)
  {
    v43 = 0;
  }

  v51 = v43;
  if ((v1 & 0x20000000) == 0)
  {
    goto LABEL_62;
  }

LABEL_8:
  v3 = *(this + 36);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  v50 = v4;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_63;
  }

LABEL_11:
  v5 = *(this + 12);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  v49 = v6;
  if ((v1 & 0x40000000) == 0)
  {
    goto LABEL_64;
  }

LABEL_14:
  v7 = *(this + 37);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  v48 = v8;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_65;
  }

LABEL_17:
  v9 = *(this + 13);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  v47 = v10;
  if ((v1 & 0x100000000) == 0)
  {
    goto LABEL_66;
  }

LABEL_20:
  v11 = *(this + 39);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  v46 = v12;
  if ((v1 & 0x2000) != 0)
  {
LABEL_23:
    v45 = *(this + 20);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_68;
  }

LABEL_67:
  v45 = 0;
  if ((v1 & 0x1000) != 0)
  {
LABEL_24:
    v13 = *(this + 19);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_69;
  }

LABEL_68:
  v13 = 0;
  if ((v1 & 0x80) != 0)
  {
LABEL_25:
    v14 = *(this + 14);
    if ((v1 & 0x200000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

LABEL_69:
  v14 = 0;
  if ((v1 & 0x200000000) != 0)
  {
LABEL_26:
    v15 = *(this + 40);
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_71;
  }

LABEL_70:
  v15 = 0;
  if ((v1 & 0x10000000) != 0)
  {
LABEL_27:
    v16 = *(this + 35);
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_72;
  }

LABEL_71:
  v16 = 0;
  if ((v1 & 0x400) != 0)
  {
LABEL_28:
    v17 = *(this + 17);
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_73;
  }

LABEL_72:
  v17 = 0;
  if ((v1 & 0x4000) != 0)
  {
LABEL_29:
    v18 = *(this + 21);
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_74;
  }

LABEL_73:
  v18 = 0;
  if ((v1 & 0x800000) != 0)
  {
LABEL_30:
    v19 = *(this + 30);
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_75;
  }

LABEL_74:
  v19 = 0;
  if ((v1 & 0x2000000) != 0)
  {
LABEL_31:
    v20 = *(this + 32);
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_76;
  }

LABEL_75:
  v20 = 0;
  if ((v1 & 0x8000000) != 0)
  {
LABEL_32:
    v21 = *(this + 34);
    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_77;
  }

LABEL_76:
  v21 = 0;
  if ((v1 & 0x4000000) != 0)
  {
LABEL_33:
    v22 = *(this + 33);
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_78;
  }

LABEL_77:
  v22 = 0;
  if ((v1 & 0x400000) != 0)
  {
LABEL_34:
    v23 = *(this + 29);
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_79;
  }

LABEL_78:
  v23 = 0;
  if ((v1 & 0x1000000) != 0)
  {
LABEL_35:
    v24 = *(this + 31);
    if ((v1 & 0x80000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_80;
  }

LABEL_79:
  v24 = 0;
  if ((v1 & 0x80000000) != 0)
  {
LABEL_36:
    v25 = *(this + 38);
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_81;
  }

LABEL_80:
  v25 = 0;
  if ((v1 & 0x8000) != 0)
  {
LABEL_37:
    v26 = *(this + 22);
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_82;
  }

LABEL_81:
  v26 = 0;
  if ((v1 & 0x100000) != 0)
  {
LABEL_38:
    v27 = *(this + 27);
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_39;
    }

LABEL_83:
    v29 = 0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_43;
    }

LABEL_84:
    v31 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_47;
    }

LABEL_85:
    v33 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_86;
  }

LABEL_82:
  v27 = 0;
  if ((v1 & 0x100) == 0)
  {
    goto LABEL_83;
  }

LABEL_39:
  v28 = *(this + 15);
  if (v28 == 0.0)
  {
    v29 = 0;
  }

  else
  {
    v29 = LODWORD(v28);
  }

  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_84;
  }

LABEL_43:
  v30 = *(this + 28);
  if (v30 == 0.0)
  {
    v31 = 0;
  }

  else
  {
    v31 = LODWORD(v30);
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_85;
  }

LABEL_47:
  v32 = *(this + 16);
  if (v32 == 0.0)
  {
    v33 = 0;
  }

  else
  {
    v33 = LODWORD(v32);
  }

  if ((v1 & 0x20000) != 0)
  {
LABEL_51:
    v34 = *(this + 24);
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_87;
  }

LABEL_86:
  v34 = 0;
  if ((v1 & 0x40000) != 0)
  {
LABEL_52:
    v35 = *(this + 25);
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_88;
  }

LABEL_87:
  v35 = 0;
  if ((v1 & 0x10000) != 0)
  {
LABEL_53:
    v36 = *(this + 23);
    if ((v1 & 8) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_89;
  }

LABEL_88:
  v36 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_54:
    v37 = *(this + 4);
    if ((v1 & 4) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_90;
  }

LABEL_89:
  v37 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_55:
    v38 = *(this + 3);
    if (v1)
    {
      goto LABEL_56;
    }

    goto LABEL_91;
  }

LABEL_90:
  v38 = 0;
  if (v1)
  {
LABEL_56:
    v39 = *(this + 1);
    if ((v1 & 2) != 0)
    {
      goto LABEL_57;
    }

LABEL_92:
    v40 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_58;
    }

LABEL_93:
    v41 = 0;
    return v51 ^ v2 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v29 ^ v31 ^ v33 ^ v34 ^ v35 ^ v36 ^ v37 ^ v38 ^ v39 ^ v40 ^ v41;
  }

LABEL_91:
  v39 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_92;
  }

LABEL_57:
  v40 = *(this + 2);
  if ((v1 & 0x800) == 0)
  {
    goto LABEL_93;
  }

LABEL_58:
  v41 = *(this + 18);
  return v51 ^ v2 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v29 ^ v31 ^ v33 ^ v34 ^ v35 ^ v36 ^ v37 ^ v38 ^ v39 ^ v40 ^ v41;
}

uint64_t CMMsl::DopplerSample::DopplerSample(uint64_t this)
{
  *this = off_10041DEE8;
  *(this + 20) = 0;
  return this;
}

{
  *this = off_10041DEE8;
  *(this + 20) = 0;
  return this;
}

void CMMsl::DopplerSample::~DopplerSample(CMMsl::DopplerSample *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::DopplerSample::DopplerSample(uint64_t this, const CMMsl::DopplerSample *a2)
{
  *this = off_10041DEE8;
  *(this + 20) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 1);
    *(this + 20) = 1;
    *(this + 8) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 4);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

const CMMsl::DopplerSample *CMMsl::DopplerSample::operator=(const CMMsl::DopplerSample *a1, const CMMsl::DopplerSample *a2)
{
  if (a1 != a2)
  {
    CMMsl::DopplerSample::DopplerSample(v7, a2);
    v3 = v9;
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    *(a1 + 1) = v8;
    *(a1 + 2) = v3;
    v8 = v4;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::DopplerSample *a2, CMMsl::DopplerSample *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  return result;
}

double CMMsl::DopplerSample::DopplerSample(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041DEE8;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = off_10041DEE8;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::DopplerSample::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8[0] = off_10041DEE8;
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    *(a2 + 20) = 0;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    v8[1] = v5;
    v8[2] = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::DopplerSample::formatText(CMMsl::DopplerSample *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "proximityState", *(this + 4));
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::DopplerSample::readFrom(CMMsl::DopplerSample *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_54;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 2u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v33 = v2 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_49;
            }

            v36 = v35;
            v37 = *v34;
            *(a2 + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            v35 = v36 + 1;
            v14 = v32++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_48;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_48:
          v2 = v36;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v2 = v29;
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_49:
        *(this + 4) = v27;
      }

      else if (v22 == 1)
      {
        *(this + 20) |= 1u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
        {
          v38 = 0;
          return v38 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_54:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::DopplerSample::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(a2, v5, 2u);
  }

  return this;
}

BOOL CMMsl::DopplerSample::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::DopplerSample::hash_value(CMMsl::DopplerSample *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0;
    return v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 4);
  return v2 ^ *&v1;
}

uint64_t CMMsl::DoubleTap::DoubleTap(uint64_t this)
{
  *this = off_10041DF20;
  *(this + 28) = -1;
  *(this + 48) = 0;
  return this;
}

{
  *this = off_10041DF20;
  *(this + 28) = -1;
  *(this + 48) = 0;
  return this;
}

void CMMsl::DoubleTap::~DoubleTap(CMMsl::DoubleTap *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::DoubleTap::DoubleTap(uint64_t this, const CMMsl::DoubleTap *a2)
{
  *this = off_10041DF20;
  *(this + 28) = -1;
  *(this + 48) = 0;
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 48) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 24);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x80) != 0)
  {
LABEL_5:
    v5 = *(a2 + 10);
    v3 |= 0x80u;
    *(this + 48) = v3;
    *(this + 40) = v5;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 7);
    v3 |= 0x10u;
    *(this + 48) = v3;
    *(this + 28) = v6;
    v2 = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 4);
  v3 |= 2u;
  *(this + 48) = v3;
  *(this + 16) = v7;
  v2 = *(a2 + 24);
  if ((v2 & 4) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a2 + 5);
  v3 |= 4u;
  *(this + 48) = v3;
  *(this + 20) = v8;
  v2 = *(a2 + 24);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 48) = v3;
  *(this + 32) = v9;
  v2 = *(a2 + 24);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 48) = v3;
  *(this + 36) = v10;
  v2 = *(a2 + 24);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 8) == 0)
    {
      return this;
    }

LABEL_20:
    v12 = *(a2 + 6);
    *(this + 48) = v3 | 8;
    *(this + 24) = v12;
    return this;
  }

LABEL_19:
  v11 = *(a2 + 11);
  v3 |= 0x100u;
  *(this + 48) = v3;
  *(this + 44) = v11;
  if ((*(a2 + 24) & 8) != 0)
  {
    goto LABEL_20;
  }

  return this;
}

uint64_t CMMsl::DoubleTap::operator=(uint64_t a1, const CMMsl::DoubleTap *a2)
{
  if (a1 != a2)
  {
    CMMsl::DoubleTap::DoubleTap(v13, a2);
    v3 = v15;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    *(a1 + 8) = v14;
    *(a1 + 16) = v3;
    v14 = v4;
    v15 = v5;
    v6 = *(a1 + 44);
    *(a1 + 44) = v19;
    v19 = v6;
    v7 = v17;
    v9 = *(a1 + 24);
    v8 = *(a1 + 32);
    *(a1 + 24) = v16;
    *(a1 + 32) = v7;
    v10 = *(a1 + 48);
    *(a1 + 48) = v20;
    v20 = v10;
    v11 = *(a1 + 40);
    *(a1 + 40) = v18;
    v18 = v11;
    v16 = v9;
    v17 = v8;
    PB::Base::~Base(v13);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::DoubleTap *a2, CMMsl::DoubleTap *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  result = *(a2 + 3);
  v7 = *(this + 3);
  *(this + 3) = result;
  *(a2 + 3) = v7;
  return result;
}

double CMMsl::DoubleTap::DoubleTap(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041DF20;
  *(a1 + 28) = -1;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 44) = *(a2 + 44);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t CMMsl::DoubleTap::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::DoubleTap::DoubleTap(v13, a2);
    v3 = v15;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    *(a1 + 8) = v14;
    *(a1 + 16) = v3;
    v14 = v4;
    v15 = v5;
    v6 = *(a1 + 44);
    *(a1 + 44) = v19;
    v19 = v6;
    v7 = v17;
    v9 = *(a1 + 24);
    v8 = *(a1 + 32);
    *(a1 + 24) = v16;
    *(a1 + 32) = v7;
    v10 = *(a1 + 48);
    *(a1 + 48) = v20;
    v20 = v10;
    v11 = *(a1 + 40);
    *(a1 + 40) = v18;
    v18 = v11;
    v16 = v9;
    v17 = v8;
    PB::Base::~Base(v13);
  }

  return a1;
}

uint64_t CMMsl::DoubleTap::formatText(CMMsl::DoubleTap *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "currentMeanAngleY", *(this + 4));
    v5 = *(this + 24);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "deltaMeanAngleY", *(this + 5));
  v5 = *(this + 24);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "doubleTapCounter", *(this + 6));
  v5 = *(this + 24);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "doubleTapStatus", *(this + 7));
  v5 = *(this + 24);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "entropyConcha", *(this + 8));
  v5 = *(this + 24);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "entropyTragus", *(this + 9));
  v5 = *(this + 24);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "location", *(this + 10));
  v5 = *(this + 24);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "tapInterval", *(this + 11));
  if (*(this + 24))
  {
LABEL_10:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_11:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::DoubleTap::readFrom(CMMsl::DoubleTap *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_121;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 4)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *(this + 24) |= 0x10u;
            v39 = *(a2 + 1);
            v2 = *(a2 + 2);
            v40 = *a2;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v54 = 0;
              v55 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(a2 + 1);
              }

              v56 = v2 - v39;
              v57 = (v40 + v39);
              v58 = v39 + 1;
              while (1)
              {
                if (!v56)
                {
                  LODWORD(v43) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_112;
                }

                v59 = v58;
                v60 = *v57;
                *(a2 + 1) = v59;
                v43 |= (v60 & 0x7F) << v54;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                --v56;
                ++v57;
                v58 = v59 + 1;
                v14 = v55++ > 8;
                if (v14)
                {
                  LODWORD(v43) = 0;
                  goto LABEL_111;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_111:
              v2 = v59;
            }

            else
            {
              v41 = 0;
              v42 = 0;
              v43 = 0;
              v44 = (v40 + v39);
              v45 = v39 + 1;
              while (1)
              {
                v2 = v45;
                *(a2 + 1) = v45;
                v46 = *v44++;
                v43 |= (v46 & 0x7F) << v41;
                if ((v46 & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                ++v45;
                v14 = v42++ > 8;
                if (v14)
                {
                  LODWORD(v43) = 0;
                  break;
                }
              }
            }

LABEL_112:
            *(this + 7) = v43;
            goto LABEL_117;
          }

          if (v22 == 4)
          {
            *(this + 24) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
LABEL_72:
              *(a2 + 24) = 1;
              goto LABEL_117;
            }

            *(this + 4) = *(*a2 + v2);
LABEL_100:
            v2 = *(a2 + 1) + 4;
LABEL_101:
            *(a2 + 1) = v2;
            goto LABEL_117;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(this + 24) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_72;
            }

            *(this + 1) = *(*a2 + v2);
            v2 = *(a2 + 1) + 8;
            goto LABEL_101;
          }

          if (v22 == 2)
          {
            *(this + 24) |= 0x80u;
            v31 = *(a2 + 1);
            v2 = *(a2 + 2);
            v32 = *a2;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v47 = 0;
              v48 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(a2 + 1);
              }

              v49 = v2 - v31;
              v50 = (v32 + v31);
              v51 = v31 + 1;
              while (1)
              {
                if (!v49)
                {
                  LODWORD(v35) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_108;
                }

                v52 = v51;
                v53 = *v50;
                *(a2 + 1) = v52;
                v35 |= (v53 & 0x7F) << v47;
                if ((v53 & 0x80) == 0)
                {
                  break;
                }

                v47 += 7;
                --v49;
                ++v50;
                v51 = v52 + 1;
                v14 = v48++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  goto LABEL_107;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_107:
              v2 = v52;
            }

            else
            {
              v33 = 0;
              v34 = 0;
              v35 = 0;
              v36 = (v32 + v31);
              v37 = v31 + 1;
              while (1)
              {
                v2 = v37;
                *(a2 + 1) = v37;
                v38 = *v36++;
                v35 |= (v38 & 0x7F) << v33;
                if ((v38 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                ++v37;
                v14 = v34++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  break;
                }
              }
            }

LABEL_108:
            *(this + 10) = v35;
            goto LABEL_117;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(this + 24) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_72;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_100;
        }

        if (v22 == 6)
        {
          *(this + 24) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_72;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_100;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(this + 24) |= 0x40u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_72;
            }

            *(this + 9) = *(*a2 + v2);
            goto LABEL_100;
          case 8:
            *(this + 24) |= 0x100u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_72;
            }

            *(this + 11) = *(*a2 + v2);
            goto LABEL_100;
          case 9:
            *(this + 24) |= 8u;
            v23 = *(a2 + 1);
            v2 = *(a2 + 2);
            v24 = *a2;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v61 = 0;
              v62 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(a2 + 1);
              }

              v63 = v2 - v23;
              v64 = (v24 + v23);
              v65 = v23 + 1;
              while (1)
              {
                if (!v63)
                {
                  LODWORD(v27) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_116;
                }

                v66 = v65;
                v67 = *v64;
                *(a2 + 1) = v66;
                v27 |= (v67 & 0x7F) << v61;
                if ((v67 & 0x80) == 0)
                {
                  break;
                }

                v61 += 7;
                --v63;
                ++v64;
                v65 = v66 + 1;
                v14 = v62++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_115;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_115:
              v2 = v66;
            }

            else
            {
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = (v24 + v23);
              v29 = v23 + 1;
              while (1)
              {
                v2 = v29;
                *(a2 + 1) = v29;
                v30 = *v28++;
                v27 |= (v30 & 0x7F) << v25;
                if ((v30 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                ++v29;
                v14 = v26++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_116:
            *(this + 6) = v27;
            goto LABEL_117;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v68 = 0;
        return v68 & 1;
      }

      v2 = *(a2 + 1);
LABEL_117:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_121:
  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t CMMsl::DoubleTap::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 48);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 48);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 2u);
  v4 = *(v3 + 48);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::writeVarInt(a2, *(v3 + 28), 3u);
  v4 = *(v3 + 48);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 16), 4u);
  v4 = *(v3 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 20), 5u);
  v4 = *(v3 + 48);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 32), 6u);
  v4 = *(v3 + 48);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = PB::Writer::write(a2, *(v3 + 44), 8u);
    if ((*(v3 + 48) & 8) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 36), 7u);
  v4 = *(v3 + 48);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_19:
  v5 = *(v3 + 24);

  return PB::Writer::writeVarInt(a2, v5, 9u);
}

BOOL CMMsl::DoubleTap::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a2 + 48);
  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((*(a1 + 48) & 0x100) != 0)
  {
    if ((*(a2 + 48) & 0x100) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 0x100) != 0)
  {
    return 0;
  }

  v4 = (v3 & 8) == 0;
  if ((v2 & 8) != 0)
  {
    return (v3 & 8) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v4;
}

uint64_t CMMsl::DoubleTap::hash_value(CMMsl::DoubleTap *this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v2 = *(this + 1);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    if ((v1 & 0x80) != 0)
    {
LABEL_3:
      v3 = *(this + 10);
      if ((v1 & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v2 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 0x10) != 0)
  {
LABEL_4:
    v4 = *(this + 7);
    if ((v1 & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_26:
    v6 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_8;
    }

LABEL_27:
    v8 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_11;
    }

LABEL_28:
    v10 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_14;
    }

LABEL_29:
    v12 = 0;
    if ((*(this + 24) & 0x100) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_25:
  v4 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_26;
  }

LABEL_5:
  v5 = *(this + 4);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_27;
  }

LABEL_8:
  v7 = *(this + 5);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_28;
  }

LABEL_11:
  v9 = *(this + 8);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_14:
  v11 = *(this + 9);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((*(this + 24) & 0x100) != 0)
  {
LABEL_17:
    v13 = *(this + 11);
    v14 = LODWORD(v13);
    if (v13 == 0.0)
    {
      v14 = 0;
    }

    if ((v1 & 8) != 0)
    {
      goto LABEL_20;
    }

LABEL_31:
    v15 = 0;
    return v3 ^ *&v2 ^ v4 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v15;
  }

LABEL_30:
  v14 = 0;
  if ((v1 & 8) == 0)
  {
    goto LABEL_31;
  }

LABEL_20:
  v15 = *(this + 6);
  return v3 ^ *&v2 ^ v4 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v15;
}

uint64_t CMMsl::ElevationBatchProcessingTimestamps::ElevationBatchProcessingTimestamps(uint64_t this)
{
  *this = off_10041DF58;
  *(this + 28) = 0;
  return this;
}

{
  *this = off_10041DF58;
  *(this + 28) = 0;
  return this;
}

void CMMsl::ElevationBatchProcessingTimestamps::~ElevationBatchProcessingTimestamps(CMMsl::ElevationBatchProcessingTimestamps *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::ElevationBatchProcessingTimestamps::ElevationBatchProcessingTimestamps(uint64_t this, const CMMsl::ElevationBatchProcessingTimestamps *a2)
{
  *this = off_10041DF58;
  *(this + 28) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 2);
    v3 = 2;
    *(this + 28) = 2;
    *(this + 16) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 28))
  {
LABEL_5:
    v5 = *(a2 + 1);
    v3 |= 1u;
    *(this + 28) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 6);
    *(this + 28) = v3 | 4;
    *(this + 24) = v6;
  }

  return this;
}

uint64_t CMMsl::ElevationBatchProcessingTimestamps::operator=(uint64_t a1, const CMMsl::ElevationBatchProcessingTimestamps *a2)
{
  if (a1 != a2)
  {
    CMMsl::ElevationBatchProcessingTimestamps::ElevationBatchProcessingTimestamps(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    *&v3 = *(a1 + 24);
    *(a1 + 24) = v7;
    v7 = v3;
    PB::Base::~Base(&v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::ElevationBatchProcessingTimestamps *a2, CMMsl::ElevationBatchProcessingTimestamps *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  return result;
}

double CMMsl::ElevationBatchProcessingTimestamps::ElevationBatchProcessingTimestamps(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041DF58;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  return result;
}

{
  *a1 = off_10041DF58;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = *(a2 + 24);
  return result;
}

uint64_t CMMsl::ElevationBatchProcessingTimestamps::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = off_10041DF58;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    *(a2 + 28) = 0;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8 = v5;
    *&v3 = *(a1 + 24);
    *(a1 + 24) = v4;
    v9 = v3;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::ElevationBatchProcessingTimestamps::formatText(CMMsl::ElevationBatchProcessingTimestamps *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if (v5)
  {
    PB::TextFormatter::format(a2, "endTime", *(this + 1));
    v5 = *(this + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "startTime", *(this + 2));
  if ((*(this + 28) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "taskType", *(this + 6));
  }

LABEL_5:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::ElevationBatchProcessingTimestamps::readFrom(CMMsl::ElevationBatchProcessingTimestamps *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_59;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_59;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 28) |= 4u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v33 = v2 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_54;
            }

            v36 = v35;
            v37 = *v34;
            *(a2 + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            v35 = v36 + 1;
            v14 = v32++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_53;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_53:
          v2 = v36;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v2 = v29;
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_54:
        *(this + 6) = v27;
        goto LABEL_55;
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(this + 28) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_30;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_49:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_55;
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(a2 + 1);
LABEL_55:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_59;
      }
    }

    *(this + 28) |= 1u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_30:
      *(a2 + 24) = 1;
      goto LABEL_55;
    }

    *(this + 1) = *(*a2 + v2);
    goto LABEL_49;
  }

LABEL_59:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::ElevationBatchProcessingTimestamps::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if ((v4 & 2) == 0)
  {
    if ((*(this + 28) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 8), 2u);
    if ((*(v3 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 16), 1u);
  v4 = *(v3 + 28);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v5 = *(v3 + 24);

  return PB::Writer::writeVarInt(a2, v5, 3u);
}

BOOL CMMsl::ElevationBatchProcessingTimestamps::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 28) & 2) != 0)
  {
    if ((*(a2 + 28) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 4) == 0;
  if ((*(a1 + 28) & 4) != 0)
  {
    return (*(a2 + 28) & 4) != 0 && *(a1 + 24) == *(a2 + 24);
  }

  return v2;
}

uint64_t CMMsl::ElevationBatchProcessingTimestamps::hash_value(CMMsl::ElevationBatchProcessingTimestamps *this)
{
  if ((*(this + 28) & 2) != 0)
  {
    v1 = *(this + 2);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if (*(this + 28))
    {
LABEL_3:
      v2 = *(this + 1);
      if (v2 == 0.0)
      {
        v2 = 0.0;
      }

      if ((*(this + 28) & 4) != 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      v3 = 0;
      return *&v2 ^ *&v1 ^ v3;
    }
  }

  else
  {
    v1 = 0.0;
    if (*(this + 28))
    {
      goto LABEL_3;
    }
  }

  v2 = 0.0;
  if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v3 = *(this + 6);
  return *&v2 ^ *&v1 ^ v3;
}

uint64_t CMMsl::ElevationChange::ElevationChange(uint64_t this)
{
  *this = off_10041DF90;
  *(this + 60) = 0;
  return this;
}

{
  *this = off_10041DF90;
  *(this + 60) = 0;
  return this;
}

void CMMsl::ElevationChange::~ElevationChange(CMMsl::ElevationChange *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::ElevationChange::ElevationChange(uint64_t this, const CMMsl::ElevationChange *a2)
{
  *this = off_10041DF90;
  *(this + 60) = 0;
  v2 = *(a2 + 30);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 2);
    v3 = 2;
    *(this + 60) = 2;
    *(this + 16) = v4;
    v2 = *(a2 + 30);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (v2)
  {
LABEL_5:
    v5 = *(a2 + 1);
    v3 |= 1u;
    *(this + 60) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 30);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(a2 + 8);
    v3 |= 0x10u;
    *(this + 60) = v3;
    *(this + 32) = v6;
    v2 = *(a2 + 30);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 9);
  v3 |= 0x20u;
  *(this + 60) = v3;
  *(this + 36) = v7;
  v2 = *(a2 + 30);
  if ((v2 & 0x200) == 0)
  {
LABEL_9:
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = *(a2 + 13);
  v3 |= 0x200u;
  *(this + 60) = v3;
  *(this + 52) = v8;
  v2 = *(a2 + 30);
  if ((v2 & 8) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = *(a2 + 7);
  v3 |= 8u;
  *(this + 60) = v3;
  *(this + 28) = v9;
  v2 = *(a2 + 30);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = *(a2 + 10);
  v3 |= 0x40u;
  *(this + 60) = v3;
  *(this + 40) = v10;
  v2 = *(a2 + 30);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = *(a2 + 12);
  v3 |= 0x100u;
  *(this + 60) = v3;
  *(this + 48) = v11;
  v2 = *(a2 + 30);
  if ((v2 & 0x80) == 0)
  {
LABEL_13:
    if ((v2 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = *(a2 + 11);
  v3 |= 0x80u;
  *(this + 60) = v3;
  *(this + 44) = v12;
  v2 = *(a2 + 30);
  if ((v2 & 4) == 0)
  {
LABEL_14:
    if ((v2 & 0x400) == 0)
    {
      return this;
    }

LABEL_24:
    v14 = *(a2 + 56);
    *(this + 60) = v3 | 0x400;
    *(this + 56) = v14;
    return this;
  }

LABEL_23:
  v13 = *(a2 + 6);
  v3 |= 4u;
  *(this + 60) = v3;
  *(this + 24) = v13;
  if ((*(a2 + 30) & 0x400) != 0)
  {
    goto LABEL_24;
  }

  return this;
}

CMMsl *CMMsl::ElevationChange::operator=(CMMsl *a1, const CMMsl::ElevationChange *a2)
{
  if (a1 != a2)
  {
    CMMsl::ElevationChange::ElevationChange(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::ElevationChange *a2, CMMsl::ElevationChange *a3)
{
  v3 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  v7 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v7;
  v8 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v8;
  v9 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v9;
  LODWORD(v5) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  v10 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v10;
  v11 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v11;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  LOBYTE(v11) = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v11;
  return result;
}

float CMMsl::ElevationChange::ElevationChange(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041DF90;
  *(a1 + 60) = *(a2 + 60);
  *(a2 + 60) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 44) = *(a2 + 44);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 56) = *(a2 + 56);
  return result;
}

CMMsl *CMMsl::ElevationChange::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::ElevationChange::ElevationChange(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::ElevationChange::formatText(CMMsl::ElevationChange *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 30);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "averageFilteredPressure", *(this + 6));
    v5 = *(this + 30);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "deltaStepCount", *(this + 7));
  v5 = *(this + 30);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "elevationAscended", *(this + 8));
  v5 = *(this + 30);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "elevationDescended", *(this + 9));
  v5 = *(this + 30);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "isWorkoutElevationFusion", *(this + 56));
  v5 = *(this + 30);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "pressureAmplitude", *(this + 10));
  v5 = *(this + 30);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "pressureFailureState", *(this + 11));
  v5 = *(this + 30);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "pressureQuality", *(this + 12));
  v5 = *(this + 30);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "source", *(this + 13));
  v5 = *(this + 30);
  if ((v5 & 1) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "startTime", *(this + 1));
  if ((*(this + 30) & 2) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

LABEL_13:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::ElevationChange::readFrom(CMMsl::ElevationChange *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_182;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(this + 30) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
LABEL_71:
              *(a2 + 24) = 1;
              goto LABEL_178;
            }

            *(this + 2) = *(*a2 + v2);
            goto LABEL_58;
          }

          if (v22 == 2)
          {
            *(this + 30) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_71;
            }

            *(this + 1) = *(*a2 + v2);
LABEL_58:
            v2 = *(a2 + 1) + 8;
            goto LABEL_147;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(this + 30) |= 0x10u;
              v49 = *(a2 + 1);
              v2 = *(a2 + 2);
              v50 = *a2;
              if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
              {
                v87 = 0;
                v88 = 0;
                v53 = 0;
                if (v2 <= v49)
                {
                  v2 = *(a2 + 1);
                }

                v89 = v2 - v49;
                v90 = (v50 + v49);
                v91 = v49 + 1;
                while (1)
                {
                  if (!v89)
                  {
                    LODWORD(v53) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_165;
                  }

                  v92 = v91;
                  v93 = *v90;
                  *(a2 + 1) = v92;
                  v53 |= (v93 & 0x7F) << v87;
                  if ((v93 & 0x80) == 0)
                  {
                    break;
                  }

                  v87 += 7;
                  --v89;
                  ++v90;
                  v91 = v92 + 1;
                  v14 = v88++ > 8;
                  if (v14)
                  {
                    LODWORD(v53) = 0;
                    goto LABEL_164;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v53) = 0;
                }

LABEL_164:
                v2 = v92;
              }

              else
              {
                v51 = 0;
                v52 = 0;
                v53 = 0;
                v54 = (v50 + v49);
                v55 = v49 + 1;
                while (1)
                {
                  v2 = v55;
                  *(a2 + 1) = v55;
                  v56 = *v54++;
                  v53 |= (v56 & 0x7F) << v51;
                  if ((v56 & 0x80) == 0)
                  {
                    break;
                  }

                  v51 += 7;
                  ++v55;
                  v14 = v52++ > 8;
                  if (v14)
                  {
                    LODWORD(v53) = 0;
                    break;
                  }
                }
              }

LABEL_165:
              *(this + 8) = v53;
              goto LABEL_178;
            case 4:
              *(this + 30) |= 0x20u;
              v41 = *(a2 + 1);
              v2 = *(a2 + 2);
              v42 = *a2;
              if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
              {
                v73 = 0;
                v74 = 0;
                v45 = 0;
                if (v2 <= v41)
                {
                  v2 = *(a2 + 1);
                }

                v75 = v2 - v41;
                v76 = (v42 + v41);
                v77 = v41 + 1;
                while (1)
                {
                  if (!v75)
                  {
                    LODWORD(v45) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_157;
                  }

                  v78 = v77;
                  v79 = *v76;
                  *(a2 + 1) = v78;
                  v45 |= (v79 & 0x7F) << v73;
                  if ((v79 & 0x80) == 0)
                  {
                    break;
                  }

                  v73 += 7;
                  --v75;
                  ++v76;
                  v77 = v78 + 1;
                  v14 = v74++ > 8;
                  if (v14)
                  {
                    LODWORD(v45) = 0;
                    goto LABEL_156;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v45) = 0;
                }

LABEL_156:
                v2 = v78;
              }

              else
              {
                v43 = 0;
                v44 = 0;
                v45 = 0;
                v46 = (v42 + v41);
                v47 = v41 + 1;
                while (1)
                {
                  v2 = v47;
                  *(a2 + 1) = v47;
                  v48 = *v46++;
                  v45 |= (v48 & 0x7F) << v43;
                  if ((v48 & 0x80) == 0)
                  {
                    break;
                  }

                  v43 += 7;
                  ++v47;
                  v14 = v44++ > 8;
                  if (v14)
                  {
                    LODWORD(v45) = 0;
                    break;
                  }
                }
              }

LABEL_157:
              *(this + 9) = v45;
              goto LABEL_178;
            case 5:
              *(this + 30) |= 0x200u;
              v31 = *(a2 + 1);
              v2 = *(a2 + 2);
              v32 = *a2;
              if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
              {
                v80 = 0;
                v81 = 0;
                v35 = 0;
                if (v2 <= v31)
                {
                  v2 = *(a2 + 1);
                }

                v82 = v2 - v31;
                v83 = (v32 + v31);
                v84 = v31 + 1;
                while (1)
                {
                  if (!v82)
                  {
                    LODWORD(v35) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_161;
                  }

                  v85 = v84;
                  v86 = *v83;
                  *(a2 + 1) = v85;
                  v35 |= (v86 & 0x7F) << v80;
                  if ((v86 & 0x80) == 0)
                  {
                    break;
                  }

                  v80 += 7;
                  --v82;
                  ++v83;
                  v84 = v85 + 1;
                  v14 = v81++ > 8;
                  if (v14)
                  {
                    LODWORD(v35) = 0;
                    goto LABEL_160;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v35) = 0;
                }

LABEL_160:
                v2 = v85;
              }

              else
              {
                v33 = 0;
                v34 = 0;
                v35 = 0;
                v36 = (v32 + v31);
                v37 = v31 + 1;
                while (1)
                {
                  v2 = v37;
                  *(a2 + 1) = v37;
                  v38 = *v36++;
                  v35 |= (v38 & 0x7F) << v33;
                  if ((v38 & 0x80) == 0)
                  {
                    break;
                  }

                  v33 += 7;
                  ++v37;
                  v14 = v34++ > 8;
                  if (v14)
                  {
                    LODWORD(v35) = 0;
                    break;
                  }
                }
              }

LABEL_161:
              *(this + 13) = v35;
              goto LABEL_178;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(this + 30) |= 0x80u;
            v65 = *(a2 + 1);
            v2 = *(a2 + 2);
            v66 = *a2;
            if (v65 > 0xFFFFFFFFFFFFFFF5 || v65 + 10 > v2)
            {
              v108 = 0;
              v109 = 0;
              v69 = 0;
              if (v2 <= v65)
              {
                v2 = *(a2 + 1);
              }

              v110 = v2 - v65;
              v111 = (v66 + v65);
              v112 = v65 + 1;
              while (1)
              {
                if (!v110)
                {
                  LODWORD(v69) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_177;
                }

                v113 = v112;
                v114 = *v111;
                *(a2 + 1) = v113;
                v69 |= (v114 & 0x7F) << v108;
                if ((v114 & 0x80) == 0)
                {
                  break;
                }

                v108 += 7;
                --v110;
                ++v111;
                v112 = v113 + 1;
                v14 = v109++ > 8;
                if (v14)
                {
                  LODWORD(v69) = 0;
                  goto LABEL_176;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v69) = 0;
              }

LABEL_176:
              v2 = v113;
            }

            else
            {
              v67 = 0;
              v68 = 0;
              v69 = 0;
              v70 = (v66 + v65);
              v71 = v65 + 1;
              while (1)
              {
                v2 = v71;
                *(a2 + 1) = v71;
                v72 = *v70++;
                v69 |= (v72 & 0x7F) << v67;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v67 += 7;
                ++v71;
                v14 = v68++ > 8;
                if (v14)
                {
                  LODWORD(v69) = 0;
                  break;
                }
              }
            }

LABEL_177:
            *(this + 11) = v69;
            goto LABEL_178;
          case 0xA:
            *(this + 30) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_71;
            }

            *(this + 6) = *(*a2 + v2);
LABEL_146:
            v2 = *(a2 + 1) + 4;
LABEL_147:
            *(a2 + 1) = v2;
            goto LABEL_178;
          case 0xB:
            *(this + 30) |= 0x400u;
            v2 = *(a2 + 1);
            if (v2 >= *(a2 + 2))
            {
              v40 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v39 = *(*a2 + v2++);
              *(a2 + 1) = v2;
              v40 = v39 != 0;
            }

            *(this + 56) = v40;
            goto LABEL_178;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(this + 30) |= 8u;
            v57 = *(a2 + 1);
            v2 = *(a2 + 2);
            v58 = *a2;
            if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v2)
            {
              v101 = 0;
              v102 = 0;
              v61 = 0;
              if (v2 <= v57)
              {
                v2 = *(a2 + 1);
              }

              v103 = v2 - v57;
              v104 = (v58 + v57);
              v105 = v57 + 1;
              while (1)
              {
                if (!v103)
                {
                  LODWORD(v61) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_173;
                }

                v106 = v105;
                v107 = *v104;
                *(a2 + 1) = v106;
                v61 |= (v107 & 0x7F) << v101;
                if ((v107 & 0x80) == 0)
                {
                  break;
                }

                v101 += 7;
                --v103;
                ++v104;
                v105 = v106 + 1;
                v14 = v102++ > 8;
                if (v14)
                {
                  LODWORD(v61) = 0;
                  goto LABEL_172;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v61) = 0;
              }

LABEL_172:
              v2 = v106;
            }

            else
            {
              v59 = 0;
              v60 = 0;
              v61 = 0;
              v62 = (v58 + v57);
              v63 = v57 + 1;
              while (1)
              {
                v2 = v63;
                *(a2 + 1) = v63;
                v64 = *v62++;
                v61 |= (v64 & 0x7F) << v59;
                if ((v64 & 0x80) == 0)
                {
                  break;
                }

                v59 += 7;
                ++v63;
                v14 = v60++ > 8;
                if (v14)
                {
                  LODWORD(v61) = 0;
                  break;
                }
              }
            }

LABEL_173:
            *(this + 7) = v61;
            goto LABEL_178;
          case 7:
            *(this + 30) |= 0x40u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
            {
              goto LABEL_71;
            }

            *(this + 10) = *(*a2 + v2);
            goto LABEL_146;
          case 8:
            *(this + 30) |= 0x100u;
            v23 = *(a2 + 1);
            v2 = *(a2 + 2);
            v24 = *a2;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v94 = 0;
              v95 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(a2 + 1);
              }

              v96 = v2 - v23;
              v97 = (v24 + v23);
              v98 = v23 + 1;
              while (1)
              {
                if (!v96)
                {
                  LODWORD(v27) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_169;
                }

                v99 = v98;
                v100 = *v97;
                *(a2 + 1) = v99;
                v27 |= (v100 & 0x7F) << v94;
                if ((v100 & 0x80) == 0)
                {
                  break;
                }

                v94 += 7;
                --v96;
                ++v97;
                v98 = v99 + 1;
                v14 = v95++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_168;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_168:
              v2 = v99;
            }

            else
            {
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v28 = (v24 + v23);
              v29 = v23 + 1;
              while (1)
              {
                v2 = v29;
                *(a2 + 1) = v29;
                v30 = *v28++;
                v27 |= (v30 & 0x7F) << v25;
                if ((v30 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                ++v29;
                v14 = v26++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_169:
            *(this + 12) = v27;
            goto LABEL_178;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v115 = 0;
        return v115 & 1;
      }

      v2 = *(a2 + 1);
LABEL_178:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_182:
  v115 = v4 ^ 1;
  return v115 & 1;
}

uint64_t CMMsl::ElevationChange::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 60);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16), 1u);
    v4 = *(v3 + 60);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 8), 2u);
  v4 = *(v3 + 60);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 3u);
  v4 = *(v3 + 60);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::writeVarInt(a2, *(v3 + 36), 4u);
  v4 = *(v3 + 60);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::writeVarInt(a2, *(v3 + 52), 5u);
  v4 = *(v3 + 60);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::writeVarInt(a2, *(v3 + 28), 6u);
  v4 = *(v3 + 60);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 40), 7u);
  v4 = *(v3 + 60);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 8u);
  v4 = *(v3 + 60);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = PB::Writer::write(a2, *(v3 + 24), 0xAu);
    if ((*(v3 + 60) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = PB::Writer::writeVarInt(a2, *(v3 + 44), 9u);
  v4 = *(v3 + 60);
  if ((v4 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x400) == 0)
  {
    return this;
  }

LABEL_23:
  v5 = *(v3 + 56);

  return PB::Writer::write(a2, v5, 0xBu);
}

BOOL CMMsl::ElevationChange::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 60);
  v3 = *(a2 + 60);
  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((*(a1 + 60) & 0x200) != 0)
  {
    if ((*(a2 + 60) & 0x200) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((*(a1 + 60) & 0x100) != 0)
  {
    if ((*(a2 + 60) & 0x100) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x400) == 0;
  if ((*(a1 + 60) & 0x400) != 0)
  {
    return (*(a2 + 60) & 0x400) != 0 && *(a1 + 56) == *(a2 + 56);
  }

  return v4;
}

uint64_t CMMsl::ElevationChange::hash_value(CMMsl::ElevationChange *this)
{
  v1 = *(this + 30);
  if ((v1 & 2) == 0)
  {
    v2 = 0.0;
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_22:
    v3 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

  v2 = *(this + 2);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_3:
  v3 = *(this + 1);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 0x10) != 0)
  {
LABEL_6:
    v4 = *(this + 8);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v4 = 0;
  if ((v1 & 0x20) != 0)
  {
LABEL_7:
    v5 = *(this + 9);
    if ((*(this + 30) & 0x200) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v5 = 0;
  if ((*(this + 30) & 0x200) != 0)
  {
LABEL_8:
    v6 = *(this + 13);
    if ((v1 & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v6 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_9:
    v7 = *(this + 7);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_10;
    }

LABEL_27:
    v9 = 0;
    if ((*(this + 30) & 0x100) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_26:
  v7 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_10:
  v8 = *(this + 10);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  if ((*(this + 30) & 0x100) != 0)
  {
LABEL_13:
    v10 = *(this + 12);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v10 = 0;
  if ((v1 & 0x80) != 0)
  {
LABEL_14:
    v11 = *(this + 11);
    if ((v1 & 4) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  v11 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_15:
    v12 = *(this + 6);
    v13 = LODWORD(v12);
    if (v12 == 0.0)
    {
      v13 = 0;
    }

    if ((*(this + 30) & 0x400) != 0)
    {
      goto LABEL_18;
    }

LABEL_31:
    v14 = 0;
    return *&v3 ^ *&v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14;
  }

LABEL_30:
  v13 = 0;
  if ((*(this + 30) & 0x400) == 0)
  {
    goto LABEL_31;
  }

LABEL_18:
  v14 = *(this + 56);
  return *&v3 ^ *&v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v9 ^ v10 ^ v11 ^ v13 ^ v14;
}

uint64_t CMMsl::ElevationGradeEstimator::ElevationGradeEstimator(uint64_t this)
{
  *this = off_10041DFC8;
  *(this + 92) = 0;
  return this;
}

{
  *this = off_10041DFC8;
  *(this + 92) = 0;
  return this;
}

void CMMsl::ElevationGradeEstimator::~ElevationGradeEstimator(CMMsl::ElevationGradeEstimator *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::ElevationGradeEstimator::ElevationGradeEstimator(uint64_t this, const CMMsl::ElevationGradeEstimator *a2)
{
  *this = off_10041DFC8;
  *(this + 92) = 0;
  v2 = *(a2 + 23);
  if ((v2 & 8) != 0)
  {
    v4 = *(a2 + 4);
    v3 = 8;
    *(this + 92) = 8;
    *(this + 32) = v4;
    v2 = *(a2 + 23);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 2);
    v3 |= 2u;
    *(this + 92) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 23);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 3);
    v3 |= 4u;
    *(this + 92) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 23);
    if ((v2 & 0x1000) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }
  }

  else if ((v2 & 0x1000) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 19);
  v3 |= 0x1000u;
  *(this + 92) = v3;
  *(this + 76) = v7;
  v2 = *(a2 + 23);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v8 = *(a2 + 12);
  v3 |= 0x20u;
  *(this + 92) = v3;
  *(this + 48) = v8;
  v2 = *(a2 + 23);
  if ((v2 & 0x4000) == 0)
  {
LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = *(a2 + 21);
  v3 |= 0x4000u;
  *(this + 92) = v3;
  *(this + 84) = v9;
  v2 = *(a2 + 23);
  if ((v2 & 0x100) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = *(a2 + 15);
  v3 |= 0x100u;
  *(this + 92) = v3;
  *(this + 60) = v10;
  v2 = *(a2 + 23);
  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = *(a2 + 14);
  v3 |= 0x80u;
  *(this + 92) = v3;
  *(this + 56) = v11;
  v2 = *(a2 + 23);
  if ((v2 & 0x8000) == 0)
  {
LABEL_13:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = *(a2 + 88);
  v3 |= 0x8000u;
  *(this + 92) = v3;
  *(this + 88) = v12;
  v2 = *(a2 + 23);
  if ((v2 & 0x200) == 0)
  {
LABEL_14:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = *(a2 + 16);
  v3 |= 0x200u;
  *(this + 92) = v3;
  *(this + 64) = v13;
  v2 = *(a2 + 23);
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 92) = v3;
  *(this + 40) = v14;
  v2 = *(a2 + 23);
  if ((v2 & 0x40) == 0)
  {
LABEL_16:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  v15 = *(a2 + 13);
  v3 |= 0x40u;
  *(this + 92) = v3;
  *(this + 52) = v15;
  v2 = *(a2 + 23);
  if ((v2 & 0x2000) == 0)
  {
LABEL_17:
    if ((v2 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = *(a2 + 20);
  v3 |= 0x2000u;
  *(this + 92) = v3;
  *(this + 80) = v16;
  v2 = *(a2 + 23);
  if ((v2 & 1) == 0)
  {
LABEL_18:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = *(a2 + 1);
  v3 |= 1u;
  *(this + 92) = v3;
  *(this + 8) = v17;
  v2 = *(a2 + 23);
  if ((v2 & 0x400) == 0)
  {
LABEL_19:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  v18 = *(a2 + 17);
  v3 |= 0x400u;
  *(this + 92) = v3;
  *(this + 68) = v18;
  v2 = *(a2 + 23);
  if ((v2 & 0x800) == 0)
  {
LABEL_20:
    if ((v2 & 0x10000) == 0)
    {
      return this;
    }

LABEL_36:
    v20 = *(a2 + 89);
    *(this + 92) = v3 | 0x10000;
    *(this + 89) = v20;
    return this;
  }

LABEL_35:
  v19 = *(a2 + 18);
  v3 |= 0x800u;
  *(this + 92) = v3;
  *(this + 72) = v19;
  if ((*(a2 + 23) & 0x10000) != 0)
  {
    goto LABEL_36;
  }

  return this;
}

CMMsl *CMMsl::ElevationGradeEstimator::operator=(CMMsl *a1, const CMMsl::ElevationGradeEstimator *a2)
{
  if (a1 != a2)
  {
    CMMsl::ElevationGradeEstimator::ElevationGradeEstimator(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::ElevationGradeEstimator *a2, CMMsl::ElevationGradeEstimator *a3)
{
  v3 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LODWORD(v6) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v6;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v4) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v4;
  LODWORD(v6) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v6;
  LODWORD(v4) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  LOBYTE(v6) = *(this + 88);
  *(this + 88) = *(a2 + 88);
  *(a2 + 88) = v6;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  v7 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  LODWORD(v7) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v7;
  LODWORD(v7) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  LODWORD(v8) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v8;
  result = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = result;
  LOBYTE(v6) = *(this + 89);
  *(this + 89) = *(a2 + 89);
  *(a2 + 89) = v6;
  return result;
}

float CMMsl::ElevationGradeEstimator::ElevationGradeEstimator(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041DFC8;
  *(a1 + 92) = *(a2 + 92);
  *(a2 + 92) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 68) = *(a2 + 68);
  result = *(a2 + 72);
  *(a1 + 72) = result;
  *(a1 + 89) = *(a2 + 89);
  return result;
}

CMMsl *CMMsl::ElevationGradeEstimator::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::ElevationGradeEstimator::ElevationGradeEstimator(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::ElevationGradeEstimator::formatText(CMMsl::ElevationGradeEstimator *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 23);
  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "altitudeDelta", *(this + 12));
    v5 = *(this + 23);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "altitudeDeltaStreaming", *(this + 13));
  v5 = *(this + 23);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "deltaTime", *(this + 14));
  v5 = *(this + 23);
  if ((v5 & 0x8000) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "didEstimate", *(this + 88));
  v5 = *(this + 23);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "downhillStartTime", *(this + 1));
  v5 = *(this + 23);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "elevationAscended", *(this + 2));
  v5 = *(this + 23);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "elevationDescended", *(this + 3));
  v5 = *(this + 23);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "gradeType", *(this + 15));
  v5 = *(this + 23);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "heightRef", *(this + 16));
  v5 = *(this + 23);
  if ((v5 & 0x10000) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "isWorkoutElevationFusion", *(this + 89));
  v5 = *(this + 23);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "predictionError", *(this + 17));
  v5 = *(this + 23);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "predictionIntercept", *(this + 18));
  v5 = *(this + 23);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "source", *(this + 19));
  v5 = *(this + 23);
  if ((v5 & 8) == 0)
  {
LABEL_15:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "startTime", *(this + 4));
  v5 = *(this + 23);
  if ((v5 & 0x2000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "timeDeltaStreaming", *(this + 20));
  v5 = *(this + 23);
  if ((v5 & 0x10) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "timeRef", *(this + 5));
  if ((*(this + 23) & 0x4000) != 0)
  {
LABEL_18:
    PB::TextFormatter::format(a2, "verticalSpeed", *(this + 21));
  }

LABEL_19:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::ElevationGradeEstimator::readFrom(CMMsl::ElevationGradeEstimator *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_154;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 23) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_88;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_128;
        case 2u:
          *(this + 23) |= 2u;
          v40 = *(a2 + 1);
          v2 = *(a2 + 2);
          v41 = *a2;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v72 = 0;
            v73 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v2 = *(a2 + 1);
            }

            v74 = v2 - v40;
            v75 = (v41 + v40);
            v76 = v40 + 1;
            while (1)
            {
              if (!v74)
              {
                v44 = 0;
                *(a2 + 24) = 1;
                goto LABEL_145;
              }

              v77 = v76;
              v78 = *v75;
              *(a2 + 1) = v77;
              v44 |= (v78 & 0x7F) << v72;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v72 += 7;
              --v74;
              ++v75;
              v76 = v77 + 1;
              v14 = v73++ > 8;
              if (v14)
              {
                v44 = 0;
LABEL_144:
                v2 = v77;
                goto LABEL_145;
              }
            }

            if (*(a2 + 24))
            {
              v44 = 0;
            }

            goto LABEL_144;
          }

          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = (v41 + v40);
          v46 = v40 + 1;
          do
          {
            v2 = v46;
            *(a2 + 1) = v46;
            v47 = *v45++;
            v44 |= (v47 & 0x7F) << v42;
            if ((v47 & 0x80) == 0)
            {
              goto LABEL_145;
            }

            v42 += 7;
            ++v46;
            v14 = v43++ > 8;
          }

          while (!v14);
          v44 = 0;
LABEL_145:
          *(this + 2) = v44;
          goto LABEL_150;
        case 3u:
          *(this + 23) |= 4u;
          v24 = *(a2 + 1);
          v2 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v58 = 0;
            v59 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(a2 + 1);
            }

            v60 = v2 - v24;
            v61 = (v25 + v24);
            v62 = v24 + 1;
            while (1)
            {
              if (!v60)
              {
                v28 = 0;
                *(a2 + 24) = 1;
                goto LABEL_137;
              }

              v63 = v62;
              v64 = *v61;
              *(a2 + 1) = v63;
              v28 |= (v64 & 0x7F) << v58;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              --v60;
              ++v61;
              v62 = v63 + 1;
              v14 = v59++ > 8;
              if (v14)
              {
                v28 = 0;
LABEL_136:
                v2 = v63;
                goto LABEL_137;
              }
            }

            if (*(a2 + 24))
            {
              v28 = 0;
            }

            goto LABEL_136;
          }

          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          do
          {
            v2 = v30;
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_137;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          v28 = 0;
LABEL_137:
          *(this + 3) = v28;
          goto LABEL_150;
        case 4u:
          *(this + 23) |= 0x1000u;
          v32 = *(a2 + 1);
          v2 = *(a2 + 2);
          v33 = *a2;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v65 = 0;
            v66 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v2 = *(a2 + 1);
            }

            v67 = v2 - v32;
            v68 = (v33 + v32);
            v69 = v32 + 1;
            while (1)
            {
              if (!v67)
              {
                LODWORD(v36) = 0;
                *(a2 + 24) = 1;
                goto LABEL_141;
              }

              v70 = v69;
              v71 = *v68;
              *(a2 + 1) = v70;
              v36 |= (v71 & 0x7F) << v65;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v65 += 7;
              --v67;
              ++v68;
              v69 = v70 + 1;
              v14 = v66++ > 8;
              if (v14)
              {
                LODWORD(v36) = 0;
LABEL_140:
                v2 = v70;
                goto LABEL_141;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v36) = 0;
            }

            goto LABEL_140;
          }

          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = (v33 + v32);
          v38 = v32 + 1;
          do
          {
            v2 = v38;
            *(a2 + 1) = v38;
            v39 = *v37++;
            v36 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              goto LABEL_141;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          LODWORD(v36) = 0;
LABEL_141:
          *(this + 19) = v36;
          goto LABEL_150;
        case 5u:
          *(this + 23) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_88;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_75;
        case 6u:
          *(this + 23) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_88;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_75;
        case 7u:
          *(this + 23) |= 0x100u;
          v48 = *(a2 + 1);
          v2 = *(a2 + 2);
          v49 = *a2;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v79 = 0;
            v80 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(a2 + 1);
            }

            v81 = v2 - v48;
            v82 = (v49 + v48);
            v83 = v48 + 1;
            while (1)
            {
              if (!v81)
              {
                LODWORD(v52) = 0;
                *(a2 + 24) = 1;
                goto LABEL_149;
              }

              v84 = v83;
              v85 = *v82;
              *(a2 + 1) = v84;
              v52 |= (v85 & 0x7F) << v79;
              if ((v85 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              --v81;
              ++v82;
              v83 = v84 + 1;
              v14 = v80++ > 8;
              if (v14)
              {
                LODWORD(v52) = 0;
LABEL_148:
                v2 = v84;
                goto LABEL_149;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_148;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = (v49 + v48);
          v54 = v48 + 1;
          do
          {
            v2 = v54;
            *(a2 + 1) = v54;
            v55 = *v53++;
            v52 |= (v55 & 0x7F) << v50;
            if ((v55 & 0x80) == 0)
            {
              goto LABEL_149;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_149:
          *(this + 15) = v52;
          goto LABEL_150;
        case 8u:
          *(this + 23) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_88;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_75;
        case 9u:
          *(this + 23) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v57 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v56 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v57 = v56 != 0;
          }

          *(this + 88) = v57;
          goto LABEL_150;
        case 0xAu:
          *(this + 23) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_88;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_75;
        case 0xBu:
          *(this + 23) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_88;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_128;
        case 0xCu:
          *(this + 23) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_88;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_75;
        case 0xDu:
          *(this + 23) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_88;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_75;
        case 0xEu:
          *(this + 23) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_88;
          }

          *(this + 1) = *(*a2 + v2);
LABEL_128:
          v2 = *(a2 + 1) + 8;
          goto LABEL_129;
        case 0xFu:
          *(this + 23) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_88;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_75;
        case 0x10u:
          *(this + 23) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_88:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 18) = *(*a2 + v2);
LABEL_75:
            v2 = *(a2 + 1) + 4;
LABEL_129:
            *(a2 + 1) = v2;
          }

          goto LABEL_150;
        case 0x11u:
          *(this + 23) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v23 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v22 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v23 = v22 != 0;
          }

          *(this + 89) = v23;
          goto LABEL_150;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v86 = 0;
            return v86 & 1;
          }

          v2 = *(a2 + 1);
LABEL_150:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_154;
          }

          break;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_154:
  v86 = v4 ^ 1;
  return v86 & 1;
}

uint64_t CMMsl::ElevationGradeEstimator::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 92);
  if ((v4 & 8) != 0)
  {
    this = PB::Writer::write(a2, *(this + 32), 1u);
    v4 = *(v3 + 92);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 16), 2u);
  v4 = *(v3 + 92);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::writeVarInt(a2, *(v3 + 24), 3u);
  v4 = *(v3 + 92);
  if ((v4 & 0x1000) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::writeVarInt(a2, *(v3 + 76), 4u);
  v4 = *(v3 + 92);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 48), 5u);
  v4 = *(v3 + 92);
  if ((v4 & 0x4000) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 84), 6u);
  v4 = *(v3 + 92);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::writeVarInt(a2, *(v3 + 60), 7u);
  v4 = *(v3 + 92);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 56), 8u);
  v4 = *(v3 + 92);
  if ((v4 & 0x8000) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 88), 9u);
  v4 = *(v3 + 92);
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 64), 0xAu);
  v4 = *(v3 + 92);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 40), 0xBu);
  v4 = *(v3 + 92);
  if ((v4 & 0x40) == 0)
  {
LABEL_13:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 52), 0xCu);
  v4 = *(v3 + 92);
  if ((v4 & 0x2000) == 0)
  {
LABEL_14:
    if ((v4 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 80), 0xDu);
  v4 = *(v3 + 92);
  if ((v4 & 1) == 0)
  {
LABEL_15:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 8), 0xEu);
  v4 = *(v3 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_16:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    this = PB::Writer::write(a2, *(v3 + 72), 0x10u);
    if ((*(v3 + 92) & 0x10000) == 0)
    {
      return this;
    }

    goto LABEL_35;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 68), 0xFu);
  v4 = *(v3 + 92);
  if ((v4 & 0x800) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v4 & 0x10000) == 0)
  {
    return this;
  }

LABEL_35:
  v5 = *(v3 + 89);

  return PB::Writer::write(a2, v5, 0x11u);
}

BOOL CMMsl::ElevationGradeEstimator::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 92);
  v3 = *(a2 + 92);
  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x10000) == 0;
  if ((v2 & 0x10000) != 0)
  {
    return (v3 & 0x10000) != 0 && *(a1 + 89) == *(a2 + 89);
  }

  return v4;
}

uint64_t CMMsl::ElevationGradeEstimator::hash_value(CMMsl::ElevationGradeEstimator *this)
{
  v1 = *(this + 23);
  if ((v1 & 8) != 0)
  {
    v2 = *(this + 4);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    if ((v1 & 2) != 0)
    {
LABEL_3:
      v3 = *(this + 2);
      if ((v1 & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }
  }

  else
  {
    v2 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_4:
    v4 = *(this + 3);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_43:
  v4 = 0;
  if ((v1 & 0x1000) != 0)
  {
LABEL_5:
    v5 = *(this + 19);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_45:
    v7 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_9;
    }

LABEL_46:
    v9 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_44:
  v5 = 0;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_45;
  }

LABEL_6:
  v6 = *(this + 12);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_46;
  }

LABEL_9:
  v8 = *(this + 21);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  if ((v1 & 0x100) != 0)
  {
LABEL_12:
    v10 = *(this + 15);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_13;
    }

LABEL_48:
    v12 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_47:
  v10 = 0;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_48;
  }

LABEL_13:
  v11 = *(this + 14);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x8000) != 0)
  {
LABEL_16:
    v13 = *(this + 88);
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_17;
    }

LABEL_50:
    v15 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_20;
    }

LABEL_51:
    v16 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_23;
    }

LABEL_52:
    v18 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_26;
    }

LABEL_53:
    v20 = 0;
    if (v1)
    {
      goto LABEL_29;
    }

LABEL_54:
    v21 = 0.0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_32;
    }

LABEL_55:
    v23 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_56;
  }

LABEL_49:
  v13 = 0;
  if ((v1 & 0x200) == 0)
  {
    goto LABEL_50;
  }

LABEL_17:
  v14 = *(this + 16);
  v15 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_51;
  }

LABEL_20:
  v16 = *(this + 5);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_52;
  }

LABEL_23:
  v17 = *(this + 13);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_53;
  }

LABEL_26:
  v19 = *(this + 20);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_29:
  v21 = *(this + 1);
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_55;
  }

LABEL_32:
  v22 = *(this + 17);
  v23 = LODWORD(v22);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  if ((v1 & 0x800) != 0)
  {
LABEL_35:
    v24 = *(this + 18);
    v25 = LODWORD(v24);
    if (v24 == 0.0)
    {
      v25 = 0;
    }

    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_38;
    }

LABEL_57:
    v26 = 0;
    return v3 ^ *&v2 ^ v4 ^ v5 ^ v7 ^ v9 ^ v10 ^ v12 ^ v13 ^ v15 ^ *&v16 ^ v18 ^ v20 ^ *&v21 ^ v23 ^ v25 ^ v26;
  }

LABEL_56:
  v25 = 0;
  if ((v1 & 0x10000) == 0)
  {
    goto LABEL_57;
  }

LABEL_38:
  v26 = *(this + 89);
  return v3 ^ *&v2 ^ v4 ^ v5 ^ v7 ^ v9 ^ v10 ^ v12 ^ v13 ^ v15 ^ *&v16 ^ v18 ^ v20 ^ *&v21 ^ v23 ^ v25 ^ v26;
}

uint64_t CMMsl::ElevationThreshold::ElevationThreshold(uint64_t this)
{
  *this = off_10041E000;
  *(this + 8) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_10041E000;
  *(this + 8) = 0;
  *(this + 32) = 0;
  return this;
}

void CMMsl::ElevationThreshold::~ElevationThreshold(CMMsl::ElevationThreshold *this)
{
  *this = off_10041E000;
  v4 = *(this + 1);
  v2 = (this + 8);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100011018(v2, v3);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::ElevationThreshold::~ElevationThreshold(this);

  operator delete();
}

uint64_t CMMsl::ElevationThreshold::ElevationThreshold(uint64_t this, const CMMsl::ElevationThreshold *a2)
{
  *this = off_10041E000;
  *(this + 8) = 0;
  *(this + 32) = 0;
  if (*(a2 + 32))
  {
    v2 = *(a2 + 2);
    *(this + 32) = 1;
    *(this + 16) = v2;
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  v3 = *(a2 + 32);
  if ((v3 & 2) != 0)
  {
    v4 = *(a2 + 6);
    *(this + 32) |= 2u;
    *(this + 24) = v4;
    v3 = *(a2 + 32);
  }

  if ((v3 & 4) != 0)
  {
    v5 = *(a2 + 28);
    *(this + 32) |= 4u;
    *(this + 28) = v5;
  }

  return this;
}

uint64_t CMMsl::ElevationThreshold::operator=(uint64_t a1, const CMMsl::ElevationThreshold *a2)
{
  if (a1 != a2)
  {
    CMMsl::ElevationThreshold::ElevationThreshold(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    LODWORD(v4) = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v4;
    LOBYTE(v5) = *(a1 + 28);
    *(a1 + 28) = v11;
    v11 = v5;
    CMMsl::ElevationThreshold::~ElevationThreshold(v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::ElevationThreshold *a2, CMMsl::ElevationThreshold *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  LOBYTE(v5) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v5;
  return result;
}

uint64_t CMMsl::ElevationThreshold::ElevationThreshold(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041E000;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 8);
  *(a2 + 8) = 0;
  v6 = *v4;
  *v4 = v5;
  if (v6)
  {
    sub_100011018(v4, v6);
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

uint64_t CMMsl::ElevationThreshold::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::ElevationThreshold::ElevationThreshold(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v3;
    v4 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    LODWORD(v4) = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v4;
    LOBYTE(v5) = *(a1 + 28);
    *(a1 + 28) = v11;
    v11 = v5;
    CMMsl::ElevationThreshold::~ElevationThreshold(v7);
  }

  return a1;
}

uint64_t CMMsl::ElevationThreshold::formatText(CMMsl::ElevationThreshold *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if ((*(this + 32) & 4) != 0)
  {
    PB::TextFormatter::format(a2, "active", *(this + 28));
  }

  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 32);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "threshold", *(this + 6));
    v5 = *(this + 32);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::ElevationThreshold::readFrom(CMMsl::ElevationThreshold *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_46;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(this + 32) |= 2u;
          v29 = *(a2 + 1);
          if (v29 > 0xFFFFFFFFFFFFFFFBLL || v29 + 4 > *(a2 + 2))
          {
LABEL_37:
            *(a2 + 24) = 1;
            goto LABEL_42;
          }

          *(this + 6) = *(*a2 + v29);
          v28 = *(a2 + 1) + 4;
          goto LABEL_41;
        }

        if (v22 == 4)
        {
          *(this + 32) |= 4u;
          v23 = *(a2 + 1);
          if (v23 >= *(a2 + 2))
          {
            v26 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v24 = v23 + 1;
            v25 = *(*a2 + v23);
            *(a2 + 1) = v24;
            v26 = v25 != 0;
          }

          *(this + 28) = v26;
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 32) |= 1u;
          v27 = *(a2 + 1);
          if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(a2 + 2))
          {
            goto LABEL_37;
          }

          *(this + 2) = *(*a2 + v27);
          v28 = *(a2 + 1) + 8;
LABEL_41:
          *(a2 + 1) = v28;
          goto LABEL_42;
        }

        if (v22 == 2)
        {
          operator new();
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v31 = 0;
        return v31 & 1;
      }

LABEL_42:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_46:
  v31 = v4 ^ 1;
  return v31 & 1;
}

uint64_t CMMsl::ElevationThreshold::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 32))
  {
    this = PB::Writer::write(a2, *(this + 16), 1u);
  }

  if (*(v3 + 8))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 32);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 24), 3u);
    v4 = *(v3 + 32);
  }

  if ((v4 & 4) != 0)
  {
    v5 = *(v3 + 28);

    return PB::Writer::write(a2, v5, 4u);
  }

  return this;
}

BOOL CMMsl::ElevationThreshold::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4)
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *(v6 + 23);
    if (v8 >= 0)
    {
      v9 = *(v6 + 23);
    }

    else
    {
      v9 = *(v6 + 8);
    }

    v10 = *(v7 + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(v7 + 8);
    }

    if (v9 != v10)
    {
      return 0;
    }

    v12 = v8 >= 0 ? *(a1 + 8) : *v6;
    v13 = v11 >= 0 ? *(a2 + 8) : *v7;
    if (memcmp(v12, v13, v9))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((v4 & 2) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_30;
    }

    return 0;
  }

  if ((v5 & 2) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

LABEL_30:
  result = (v5 & 4) == 0;
  if ((v4 & 4) != 0)
  {
    return (v5 & 4) != 0 && *(a1 + 28) == *(a2 + 28);
  }

  return result;
}

unint64_t CMMsl::ElevationThreshold::hash_value(CMMsl::ElevationThreshold *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    if (*(this + 2) == 0.0)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(this + 2);
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 1);
  if (v4)
  {
    v5 = sub_100011074(&v10, v4);
    v2 = *(this + 32);
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v8 = *(this + 6);
    v6 = LODWORD(v8);
    if (v8 == 0.0)
    {
      v6 = 0;
    }

    if ((v2 & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v7 = 0;
    return v5 ^ v3 ^ v6 ^ v7;
  }

  v5 = 0;
  if ((v2 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v6 = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v7 = *(this + 28);
  return v5 ^ v3 ^ v6 ^ v7;
}

uint64_t CMMsl::EmergencyState::EmergencyState(uint64_t this)
{
  *this = off_10041E038;
  *(this + 12) = 0;
  return this;
}

{
  *this = off_10041E038;
  *(this + 12) = 0;
  return this;
}

void CMMsl::EmergencyState::~EmergencyState(CMMsl::EmergencyState *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::EmergencyState::EmergencyState(uint64_t this, const CMMsl::EmergencyState *a2)
{
  *this = off_10041E038;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

{
  *this = off_10041E038;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::EmergencyState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = off_10041E038;
    v3 = *(a2 + 12) & 1;
    v4 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v6[0] = off_10041E038;
    v3 = *(a2 + 8);
    *(a2 + 12) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::EmergencyState *a2, CMMsl::EmergencyState *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

uint64_t CMMsl::EmergencyState::EmergencyState(uint64_t result, uint64_t a2)
{
  *result = off_10041E038;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = off_10041E038;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t CMMsl::EmergencyState::formatText(CMMsl::EmergencyState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    PB::TextFormatter::format(a2, "state", *(this + 2));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::EmergencyState::readFrom(CMMsl::EmergencyState *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v2 >= v3;
        v19 = v2 - v3;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v3);
        v21 = v3 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_51;
          }

          v22 = *v20;
          *(a2 + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        v10 = (v4 & 1) != 0 ? 0 : v17;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v33 = v3 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_46;
            }

            v36 = v35;
            v37 = *v34;
            *(a2 + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            v35 = v36 + 1;
            v14 = v32++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_45;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_45:
          v3 = v36;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v3 = v29;
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_46:
        *(this + 2) = v27;
      }

      else
      {
        if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
        {
          v38 = 0;
          return v38 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (*(a2 + 24) & 1) == 0);
  }

LABEL_51:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::EmergencyState::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    return PB::Writer::writeVarInt(a2, *(this + 8), 1u);
  }

  return this;
}

BOOL CMMsl::EmergencyState::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t CMMsl::EmergencyState::hash_value(CMMsl::EmergencyState *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t CMMsl::EnhancedDeviceMotion::EnhancedDeviceMotion(uint64_t this)
{
  *this = off_10041E070;
  *(this + 96) = 0;
  return this;
}

{
  *this = off_10041E070;
  *(this + 96) = 0;
  return this;
}

void CMMsl::EnhancedDeviceMotion::~EnhancedDeviceMotion(CMMsl::EnhancedDeviceMotion *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::EnhancedDeviceMotion::EnhancedDeviceMotion(uint64_t this, const CMMsl::EnhancedDeviceMotion *a2)
{
  *this = off_10041E070;
  *(this + 96) = 0;
  v2 = *(a2 + 24);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 5);
    v3 = 16;
    *(this + 96) = 16;
    *(this + 40) = v4;
    v2 = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 2);
    v3 |= 2u;
    *(this + 96) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 3);
    v3 |= 4u;
    *(this + 96) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 24);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 4);
  v3 |= 8u;
  *(this + 96) = v3;
  *(this + 32) = v7;
  v2 = *(a2 + 24);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v8 = *(a2 + 1);
  v3 |= 1u;
  *(this + 96) = v3;
  *(this + 8) = v8;
  v2 = *(a2 + 24);
  if ((v2 & 0x1000) == 0)
  {
LABEL_10:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v9 = *(a2 + 19);
  v3 |= 0x1000u;
  *(this + 96) = v3;
  *(this + 76) = v9;
  v2 = *(a2 + 24);
  if ((v2 & 0x2000) == 0)
  {
LABEL_11:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v10 = *(a2 + 20);
  v3 |= 0x2000u;
  *(this + 96) = v3;
  *(this + 80) = v10;
  v2 = *(a2 + 24);
  if ((v2 & 0x4000) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v11 = *(a2 + 21);
  v3 |= 0x4000u;
  *(this + 96) = v3;
  *(this + 84) = v11;
  v2 = *(a2 + 24);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v12 = *(a2 + 16);
  v3 |= 0x200u;
  *(this + 96) = v3;
  *(this + 64) = v12;
  v2 = *(a2 + 24);
  if ((v2 & 0x400) == 0)
  {
LABEL_14:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v13 = *(a2 + 17);
  v3 |= 0x400u;
  *(this + 96) = v3;
  *(this + 68) = v13;
  v2 = *(a2 + 24);
  if ((v2 & 0x800) == 0)
  {
LABEL_15:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  v14 = *(a2 + 18);
  v3 |= 0x800u;
  *(this + 96) = v3;
  *(this + 72) = v14;
  v2 = *(a2 + 24);
  if ((v2 & 0x40) == 0)
  {
LABEL_16:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  v15 = *(a2 + 13);
  v3 |= 0x40u;
  *(this + 96) = v3;
  *(this + 52) = v15;
  v2 = *(a2 + 24);
  if ((v2 & 0x80) == 0)
  {
LABEL_17:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  v16 = *(a2 + 14);
  v3 |= 0x80u;
  *(this + 96) = v3;
  *(this + 56) = v16;
  v2 = *(a2 + 24);
  if ((v2 & 0x100) == 0)
  {
LABEL_18:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_34:
  v17 = *(a2 + 15);
  v3 |= 0x100u;
  *(this + 96) = v3;
  *(this + 60) = v17;
  v2 = *(a2 + 24);
  if ((v2 & 0x20) == 0)
  {
LABEL_19:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_36;
  }

LABEL_35:
  v18 = *(a2 + 12);
  v3 |= 0x20u;
  *(this + 96) = v3;
  *(this + 48) = v18;
  v2 = *(a2 + 24);
  if ((v2 & 0x10000) == 0)
  {
LABEL_20:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  v19 = *(a2 + 92);
  v3 |= 0x10000u;
  *(this + 96) = v3;
  *(this + 92) = v19;
  v2 = *(a2 + 24);
  if ((v2 & 0x20000) == 0)
  {
LABEL_21:
    if ((v2 & 0x8000) == 0)
    {
      return this;
    }

LABEL_38:
    v21 = *(a2 + 22);
    *(this + 96) = v3 | 0x8000;
    *(this + 88) = v21;
    return this;
  }

LABEL_37:
  v20 = *(a2 + 93);
  v3 |= 0x20000u;
  *(this + 96) = v3;
  *(this + 93) = v20;
  if ((*(a2 + 24) & 0x8000) != 0)
  {
    goto LABEL_38;
  }

  return this;
}

CMMsl *CMMsl::EnhancedDeviceMotion::operator=(CMMsl *a1, const CMMsl::EnhancedDeviceMotion *a2)
{
  if (a1 != a2)
  {
    CMMsl::EnhancedDeviceMotion::EnhancedDeviceMotion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::EnhancedDeviceMotion *a2, CMMsl::EnhancedDeviceMotion *a3)
{
  v3 = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  LODWORD(v8) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v8;
  LODWORD(v8) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v8;
  LODWORD(v8) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v8;
  LODWORD(v8) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v8;
  LODWORD(v8) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v8;
  LODWORD(v8) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v8;
  LODWORD(v8) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v8;
  LODWORD(v8) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v8;
  result = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = result;
  v10 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v10;
  LOBYTE(v10) = *(this + 92);
  *(this + 92) = *(a2 + 92);
  *(a2 + 92) = v10;
  LOBYTE(v10) = *(this + 93);
  *(this + 93) = *(a2 + 93);
  *(a2 + 93) = v10;
  v11 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v11;
  return result;
}

float CMMsl::EnhancedDeviceMotion::EnhancedDeviceMotion(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041E070;
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  result = *(a2 + 60);
  *(a1 + 60) = result;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 88) = *(a2 + 88);
  return result;
}

CMMsl *CMMsl::EnhancedDeviceMotion::operator=(CMMsl *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::EnhancedDeviceMotion::EnhancedDeviceMotion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::EnhancedDeviceMotion::formatText(CMMsl::EnhancedDeviceMotion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if ((v5 & 0x10000) != 0)
  {
    PB::TextFormatter::format(a2, "doingBiasEstimation", *(this + 92));
    v5 = *(this + 24);
    if ((v5 & 0x20000) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "doingYawCorrection", *(this + 93));
  v5 = *(this + 24);
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "magneticFieldCalibrationLevel", *(this + 12));
  v5 = *(this + 24);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "magneticFieldX", *(this + 13));
  v5 = *(this + 24);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "magneticFieldY", *(this + 14));
  v5 = *(this + 24);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "magneticFieldZ", *(this + 15));
  v5 = *(this + 24);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "quaternionW", *(this + 1));
  v5 = *(this + 24);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "quaternionX", *(this + 2));
  v5 = *(this + 24);
  if ((v5 & 4) == 0)
  {
LABEL_10:
    if ((v5 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "quaternionY", *(this + 3));
  v5 = *(this + 24);
  if ((v5 & 8) == 0)
  {
LABEL_11:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "quaternionZ", *(this + 4));
  v5 = *(this + 24);
  if ((v5 & 0x200) == 0)
  {
LABEL_12:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "rotationRateX", *(this + 16));
  v5 = *(this + 24);
  if ((v5 & 0x400) == 0)
  {
LABEL_13:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "rotationRateY", *(this + 17));
  v5 = *(this + 24);
  if ((v5 & 0x800) == 0)
  {
LABEL_14:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "rotationRateZ", *(this + 18));
  v5 = *(this + 24);
  if ((v5 & 0x10) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "timestamp", *(this + 5));
  v5 = *(this + 24);
  if ((v5 & 0x1000) == 0)
  {
LABEL_16:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "userAccelerationX", *(this + 19));
  v5 = *(this + 24);
  if ((v5 & 0x2000) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "userAccelerationY", *(this + 20));
  v5 = *(this + 24);
  if ((v5 & 0x4000) == 0)
  {
LABEL_18:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "userAccelerationZ", *(this + 21));
  if ((*(this + 24) & 0x8000) != 0)
  {
LABEL_19:
    PB::TextFormatter::format(a2, "variant", *(this + 22));
  }

LABEL_20:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::EnhancedDeviceMotion::readFrom(CMMsl::EnhancedDeviceMotion *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_18;
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_123;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 24) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_85;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_61;
        case 2u:
          *(this + 24) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_85;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_61;
        case 3u:
          *(this + 24) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_85;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_61;
        case 4u:
          *(this + 24) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_85;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_61;
        case 5u:
          *(this + 24) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_85;
          }

          *(this + 1) = *(*a2 + v2);
LABEL_61:
          v2 = *(a2 + 1) + 8;
          goto LABEL_108;
        case 6u:
          *(this + 24) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_85;
          }

          *(this + 19) = *(*a2 + v2);
          goto LABEL_107;
        case 7u:
          *(this + 24) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_85;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_107;
        case 8u:
          *(this + 24) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_85;
          }

          *(this + 21) = *(*a2 + v2);
          goto LABEL_107;
        case 9u:
          *(this + 24) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_85;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_107;
        case 0xAu:
          *(this + 24) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_85;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_107;
        case 0xBu:
          *(this + 24) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_85;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_107;
        case 0xCu:
          *(this + 24) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_85;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_107;
        case 0xDu:
          *(this + 24) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_85;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_107;
        case 0xEu:
          *(this + 24) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_85:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 15) = *(*a2 + v2);
LABEL_107:
            v2 = *(a2 + 1) + 4;
LABEL_108:
            *(a2 + 1) = v2;
          }

          goto LABEL_119;
        case 0xFu:
          *(this + 24) |= 0x20u;
          v24 = *(a2 + 1);
          v2 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v42 = 0;
            v43 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(a2 + 1);
            }

            v44 = v2 - v24;
            v45 = (v25 + v24);
            v46 = v24 + 1;
            while (1)
            {
              if (!v44)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_114;
              }

              v47 = v46;
              v48 = *v45;
              *(a2 + 1) = v47;
              v28 |= (v48 & 0x7F) << v42;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              --v44;
              ++v45;
              v46 = v47 + 1;
              v14 = v43++ > 8;
              if (v14)
              {
                LODWORD(v28) = 0;
LABEL_113:
                v2 = v47;
                goto LABEL_114;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_113;
          }

          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          do
          {
            v2 = v30;
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_114;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_114:
          *(this + 12) = v28;
          goto LABEL_119;
        case 0x10u:
          *(this + 24) |= 0x10000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v33 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v32 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v33 = v32 != 0;
          }

          *(this + 92) = v33;
          goto LABEL_119;
        case 0x11u:
          *(this + 24) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v23 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v22 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v23 = v22 != 0;
          }

          *(this + 93) = v23;
          goto LABEL_119;
        case 0x12u:
          *(this + 24) |= 0x8000u;
          v34 = *(a2 + 1);
          v2 = *(a2 + 2);
          v35 = *a2;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v2)
          {
            v49 = 0;
            v50 = 0;
            v38 = 0;
            if (v2 <= v34)
            {
              v2 = *(a2 + 1);
            }

            v51 = v2 - v34;
            v52 = (v35 + v34);
            v53 = v34 + 1;
            while (1)
            {
              if (!v51)
              {
                LODWORD(v38) = 0;
                *(a2 + 24) = 1;
                goto LABEL_118;
              }

              v54 = v53;
              v55 = *v52;
              *(a2 + 1) = v54;
              v38 |= (v55 & 0x7F) << v49;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              --v51;
              ++v52;
              v53 = v54 + 1;
              v14 = v50++ > 8;
              if (v14)
              {
                LODWORD(v38) = 0;
LABEL_117:
                v2 = v54;
                goto LABEL_118;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v38) = 0;
            }

            goto LABEL_117;
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = (v35 + v34);
          v40 = v34 + 1;
          do
          {
            v2 = v40;
            *(a2 + 1) = v40;
            v41 = *v39++;
            v38 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              goto LABEL_118;
            }

            v36 += 7;
            ++v40;
            v14 = v37++ > 8;
          }

          while (!v14);
          LODWORD(v38) = 0;
LABEL_118:
          *(this + 22) = v38;
          goto LABEL_119;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v56 = 0;
            return v56 & 1;
          }

          v2 = *(a2 + 1);
LABEL_119:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_123;
          }

          break;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = (v7 + v2);
    v20 = v2 + 1;
    while (v18)
    {
      v21 = *v19;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
      }

      v15 += 7;
      --v18;
      ++v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
LABEL_18:
        v10 = 0;
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_123:
  v56 = v4 ^ 1;
  return v56 & 1;
}

uint64_t CMMsl::EnhancedDeviceMotion::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 96);
  if ((v4 & 0x10) != 0)
  {
    this = PB::Writer::write(a2, *(this + 40), 1u);
    v4 = *(v3 + 96);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16), 2u);
  v4 = *(v3 + 96);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 24), 3u);
  v4 = *(v3 + 96);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 32), 4u);
  v4 = *(v3 + 96);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 8), 5u);
  v4 = *(v3 + 96);
  if ((v4 & 0x1000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 76), 6u);
  v4 = *(v3 + 96);
  if ((v4 & 0x2000) == 0)
  {
LABEL_8:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 80), 7u);
  v4 = *(v3 + 96);
  if ((v4 & 0x4000) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 84), 8u);
  v4 = *(v3 + 96);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 64), 9u);
  v4 = *(v3 + 96);
  if ((v4 & 0x400) == 0)
  {
LABEL_11:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 68), 0xAu);
  v4 = *(v3 + 96);
  if ((v4 & 0x800) == 0)
  {
LABEL_12:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::write(a2, *(v3 + 72), 0xBu);
  v4 = *(v3 + 96);
  if ((v4 & 0x40) == 0)
  {
LABEL_13:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 52), 0xCu);
  v4 = *(v3 + 96);
  if ((v4 & 0x80) == 0)
  {
LABEL_14:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 56), 0xDu);
  v4 = *(v3 + 96);
  if ((v4 & 0x100) == 0)
  {
LABEL_15:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 60), 0xEu);
  v4 = *(v3 + 96);
  if ((v4 & 0x20) == 0)
  {
LABEL_16:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 0xFu);
  v4 = *(v3 + 96);
  if ((v4 & 0x10000) == 0)
  {
LABEL_17:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    this = PB::Writer::write(a2, *(v3 + 93), 0x11u);
    if ((*(v3 + 96) & 0x8000) == 0)
    {
      return this;
    }

    goto LABEL_37;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 92), 0x10u);
  v4 = *(v3 + 96);
  if ((v4 & 0x20000) != 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((v4 & 0x8000) == 0)
  {
    return this;
  }

LABEL_37:
  v5 = *(v3 + 88);

  return PB::Writer::writeVarInt(a2, v5, 0x12u);
}

BOOL CMMsl::EnhancedDeviceMotion::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  v3 = *(a2 + 96);
  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 93) != *(a2 + 93))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  v4 = (*(a2 + 96) & 0x8000) == 0;
  if ((v2 & 0x8000) != 0)
  {
    return (v3 & 0x8000) != 0 && *(a1 + 88) == *(a2 + 88);
  }

  return v4;
}

uint64_t CMMsl::EnhancedDeviceMotion::hash_value(CMMsl::EnhancedDeviceMotion *this)
{
  v1 = *(this + 24);
  if ((v1 & 0x10) == 0)
  {
    v2 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_47:
    v3 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_48:
    v4 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_49:
    v5 = 0.0;
    if (v1)
    {
      goto LABEL_12;
    }

LABEL_50:
    v6 = 0.0;
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_15;
    }

LABEL_51:
    v8 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_18;
    }

LABEL_52:
    v10 = 0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_21;
    }

LABEL_53:
    v12 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_24;
    }

LABEL_54:
    v14 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_27;
    }

LABEL_55:
    v16 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_30;
    }

LABEL_56:
    v18 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_33;
    }

LABEL_57:
    v20 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_36;
    }

LABEL_58:
    v22 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_39;
    }

LABEL_59:
    v24 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_42;
    }

LABEL_60:
    v25 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_61;
  }

  v2 = *(this + 5);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_47;
  }

LABEL_3:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_48;
  }

LABEL_6:
  v4 = *(this + 3);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_49;
  }

LABEL_9:
  v5 = *(this + 4);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_12:
  v6 = *(this + 1);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 0x1000) == 0)
  {
    goto LABEL_51;
  }

LABEL_15:
  v7 = *(this + 19);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_52;
  }

LABEL_18:
  v9 = *(this + 20);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_53;
  }

LABEL_21:
  v11 = *(this + 21);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_54;
  }

LABEL_24:
  v13 = *(this + 16);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_55;
  }

LABEL_27:
  v15 = *(this + 17);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_56;
  }

LABEL_30:
  v17 = *(this + 18);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_57;
  }

LABEL_33:
  v19 = *(this + 13);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_58;
  }

LABEL_36:
  v21 = *(this + 14);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_59;
  }

LABEL_39:
  v23 = *(this + 15);
  v24 = LODWORD(v23);
  if (v23 == 0.0)
  {
    v24 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_60;
  }

LABEL_42:
  v25 = *(this + 12);
  if ((v1 & 0x10000) != 0)
  {
LABEL_43:
    v26 = *(this + 92);
    goto LABEL_62;
  }

LABEL_61:
  v26 = 0;
LABEL_62:
  if ((v1 & 0x20000) != 0)
  {
    v27 = *(this + 93);
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_64;
    }

LABEL_66:
    v28 = 0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
  }

  v27 = 0;
  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_66;
  }

LABEL_64:
  v28 = *(this + 22);
  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
}

uint64_t CMMsl::FaceBlendShapeCoefficients::FaceBlendShapeCoefficients(uint64_t this)
{
  *this = off_10041E0A8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = off_10041E0A8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

void CMMsl::FaceBlendShapeCoefficients::~FaceBlendShapeCoefficients(CMMsl::FaceBlendShapeCoefficients *this)
{
  PB::Base::~Base(this);

  operator delete();
}