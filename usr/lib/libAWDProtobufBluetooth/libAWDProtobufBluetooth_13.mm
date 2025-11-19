uint64_t awd::metrics::BluetoothLEScan::ByteSize(awd::metrics::BluetoothLEScan *this)
{
  v2 = *(this + 63);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 63);
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
    v2 = *(this + 63);
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
      v2 = *(this + 63);
    }

    else
    {
      v7 = 2;
    }

    v3 = (v7 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_13:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
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
    v2 = *(this + 63);
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_26:
  v10 = *(this + 7);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 63);
  }

  else
  {
    v11 = 2;
  }

  v3 = (v11 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_30:
  v12 = *(this + 8);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 63);
  }

  else
  {
    v13 = 2;
  }

  v3 = (v13 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_16:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:
  v14 = *(this + 9);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 63);
  }

  else
  {
    v15 = 2;
  }

  v3 = (v15 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_38:
    v16 = *(this + 10);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = *(this + 63);
    }

    else
    {
      v17 = 2;
    }

    v3 = (v17 + v3);
  }

LABEL_42:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_84;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = *(this + 11);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v2 = *(this + 63);
    }

    else
    {
      v19 = 2;
    }

    v3 = (v19 + v3);
    if ((v2 & 0x200) == 0)
    {
LABEL_45:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_60;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v20 = *(this + 12);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 63);
  }

  else
  {
    v21 = 2;
  }

  v3 = (v21 + v3);
  if ((v2 & 0x400) == 0)
  {
LABEL_46:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_64;
  }

LABEL_60:
  v22 = *(this + 13);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v2 = *(this + 63);
  }

  else
  {
    v23 = 2;
  }

  v3 = (v23 + v3);
  if ((v2 & 0x800) == 0)
  {
LABEL_47:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_68;
  }

LABEL_64:
  v24 = *(this + 14);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v2 = *(this + 63);
  }

  else
  {
    v25 = 2;
  }

  v3 = (v25 + v3);
  if ((v2 & 0x1000) == 0)
  {
LABEL_48:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_72;
  }

LABEL_68:
  v26 = *(this + 15);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v2 = *(this + 63);
  }

  else
  {
    v27 = 2;
  }

  v3 = (v27 + v3);
  if ((v2 & 0x2000) == 0)
  {
LABEL_49:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_76;
  }

LABEL_72:
  v28 = *(this + 16);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v2 = *(this + 63);
  }

  else
  {
    v29 = 2;
  }

  v3 = (v29 + v3);
  if ((v2 & 0x4000) == 0)
  {
LABEL_50:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_80;
  }

LABEL_76:
  v30 = *(this + 17);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
    v2 = *(this + 63);
  }

  else
  {
    v31 = 2;
  }

  v3 = (v31 + v3);
  if ((v2 & 0x8000) != 0)
  {
LABEL_80:
    v32 = *(this + 18);
    if (v32 >= 0x80)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
      v2 = *(this + 63);
    }

    else
    {
      v33 = 3;
    }

    v3 = (v33 + v3);
  }

LABEL_84:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_126;
  }

  if ((v2 & 0x10000) != 0)
  {
    v34 = *(this + 19);
    if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
      v2 = *(this + 63);
    }

    else
    {
      v35 = 3;
    }

    v3 = (v35 + v3);
    if ((v2 & 0x20000) == 0)
    {
LABEL_87:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_102;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_87;
  }

  v36 = *(this + 20);
  if (v36 >= 0x80)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
    v2 = *(this + 63);
  }

  else
  {
    v37 = 3;
  }

  v3 = (v37 + v3);
  if ((v2 & 0x40000) == 0)
  {
LABEL_88:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_106;
  }

LABEL_102:
  v38 = *(this + 21);
  if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
    v2 = *(this + 63);
  }

  else
  {
    v39 = 3;
  }

  v3 = (v39 + v3);
  if ((v2 & 0x80000) == 0)
  {
LABEL_89:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_110;
  }

LABEL_106:
  v40 = *(this + 22);
  if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 2;
    v2 = *(this + 63);
  }

  else
  {
    v41 = 3;
  }

  v3 = (v41 + v3);
  if ((v2 & 0x100000) == 0)
  {
LABEL_90:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_114;
  }

LABEL_110:
  v42 = *(this + 23);
  if (v42 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 2;
    v2 = *(this + 63);
  }

  else
  {
    v43 = 3;
  }

  v3 = (v43 + v3);
  if ((v2 & 0x200000) == 0)
  {
LABEL_91:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_118;
  }

LABEL_114:
  v44 = *(this + 24);
  if (v44 >= 0x80)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
    v2 = *(this + 63);
  }

  else
  {
    v45 = 3;
  }

  v3 = (v45 + v3);
  if ((v2 & 0x400000) == 0)
  {
LABEL_92:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_122;
  }

LABEL_118:
  v46 = *(this + 25);
  if (v46 >= 0x80)
  {
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 2;
    v2 = *(this + 63);
  }

  else
  {
    v47 = 3;
  }

  v3 = (v47 + v3);
  if ((v2 & 0x800000) != 0)
  {
LABEL_122:
    v48 = *(this + 26);
    if (v48 >= 0x80)
    {
      v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48) + 2;
      v2 = *(this + 63);
    }

    else
    {
      v49 = 3;
    }

    v3 = (v49 + v3);
  }

LABEL_126:
  if (!HIBYTE(v2))
  {
    goto LABEL_168;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v50 = *(this + 27);
    if (v50 >= 0x80)
    {
      v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50) + 2;
      v2 = *(this + 63);
    }

    else
    {
      v51 = 3;
    }

    v3 = (v51 + v3);
    if ((v2 & 0x2000000) == 0)
    {
LABEL_129:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_144;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_129;
  }

  v52 = *(this + 28);
  if (v52 >= 0x80)
  {
    v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52) + 2;
    v2 = *(this + 63);
  }

  else
  {
    v53 = 3;
  }

  v3 = (v53 + v3);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_130:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_148;
  }

LABEL_144:
  v54 = *(this + 29);
  if (v54 >= 0x80)
  {
    v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54) + 2;
    v2 = *(this + 63);
  }

  else
  {
    v55 = 3;
  }

  v3 = (v55 + v3);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_131:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_152;
  }

LABEL_148:
  v56 = *(this + 30);
  if (v56 >= 0x80)
  {
    v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56) + 2;
    v2 = *(this + 63);
  }

  else
  {
    v57 = 3;
  }

  v3 = (v57 + v3);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_132:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_133;
    }

    goto LABEL_156;
  }

LABEL_152:
  v58 = *(this + 31);
  if (v58 >= 0x80)
  {
    v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58) + 2;
    v2 = *(this + 63);
  }

  else
  {
    v59 = 3;
  }

  v3 = (v59 + v3);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_133:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_160;
  }

LABEL_156:
  v60 = *(this + 32);
  if (v60 >= 0x80)
  {
    v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60) + 2;
    v2 = *(this + 63);
  }

  else
  {
    v61 = 3;
  }

  v3 = (v61 + v3);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_134:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_164;
  }

LABEL_160:
  v62 = *(this + 33);
  if (v62 >= 0x80)
  {
    v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62) + 2;
    v2 = *(this + 63);
  }

  else
  {
    v63 = 3;
  }

  v3 = (v63 + v3);
  if ((v2 & 0x80000000) != 0)
  {
LABEL_164:
    v64 = *(this + 34);
    if (v64 >= 0x80)
    {
      v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64) + 2;
    }

    else
    {
      v65 = 3;
    }

    v3 = (v65 + v3);
  }

LABEL_168:
  v66 = *(this + 64);
  if (!v66)
  {
    goto LABEL_210;
  }

  if (v66)
  {
    v67 = *(this + 35);
    if (v67 >= 0x80)
    {
      v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v67) + 2;
      v66 = *(this + 64);
    }

    else
    {
      v68 = 3;
    }

    v3 = (v68 + v3);
    if ((v66 & 2) == 0)
    {
LABEL_171:
      if ((v66 & 4) == 0)
      {
        goto LABEL_172;
      }

      goto LABEL_186;
    }
  }

  else if ((v66 & 2) == 0)
  {
    goto LABEL_171;
  }

  v69 = *(this + 36);
  if (v69 >= 0x80)
  {
    v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69) + 2;
    v66 = *(this + 64);
  }

  else
  {
    v70 = 3;
  }

  v3 = (v70 + v3);
  if ((v66 & 4) == 0)
  {
LABEL_172:
    if ((v66 & 8) == 0)
    {
      goto LABEL_173;
    }

    goto LABEL_190;
  }

LABEL_186:
  v71 = *(this + 37);
  if (v71 >= 0x80)
  {
    v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71) + 2;
    v66 = *(this + 64);
  }

  else
  {
    v72 = 3;
  }

  v3 = (v72 + v3);
  if ((v66 & 8) == 0)
  {
LABEL_173:
    if ((v66 & 0x10) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_194;
  }

LABEL_190:
  v73 = *(this + 38);
  if (v73 >= 0x80)
  {
    v74 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v73) + 2;
    v66 = *(this + 64);
  }

  else
  {
    v74 = 3;
  }

  v3 = (v74 + v3);
  if ((v66 & 0x10) == 0)
  {
LABEL_174:
    if ((v66 & 0x20) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_198;
  }

LABEL_194:
  v75 = *(this + 39);
  if (v75 >= 0x80)
  {
    v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v75) + 2;
    v66 = *(this + 64);
  }

  else
  {
    v76 = 3;
  }

  v3 = (v76 + v3);
  if ((v66 & 0x20) == 0)
  {
LABEL_175:
    if ((v66 & 0x40) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_202;
  }

LABEL_198:
  v77 = *(this + 40);
  if (v77 >= 0x80)
  {
    v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77) + 2;
    v66 = *(this + 64);
  }

  else
  {
    v78 = 3;
  }

  v3 = (v78 + v3);
  if ((v66 & 0x40) == 0)
  {
LABEL_176:
    if ((v66 & 0x80) == 0)
    {
      goto LABEL_210;
    }

    goto LABEL_206;
  }

LABEL_202:
  v79 = *(this + 41);
  if (v79 >= 0x80)
  {
    v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79) + 2;
    v66 = *(this + 64);
  }

  else
  {
    v80 = 3;
  }

  v3 = (v80 + v3);
  if ((v66 & 0x80) != 0)
  {
LABEL_206:
    v81 = *(this + 42);
    if (v81 >= 0x80)
    {
      v82 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v81) + 2;
      v66 = *(this + 64);
    }

    else
    {
      v82 = 3;
    }

    v3 = (v82 + v3);
  }

LABEL_210:
  if ((v66 & 0xFF00) == 0)
  {
    goto LABEL_252;
  }

  if ((v66 & 0x100) != 0)
  {
    v83 = *(this + 43);
    if (v83 >= 0x80)
    {
      v84 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v83) + 2;
      v66 = *(this + 64);
    }

    else
    {
      v84 = 3;
    }

    v3 = (v84 + v3);
    if ((v66 & 0x200) == 0)
    {
LABEL_213:
      if ((v66 & 0x400) == 0)
      {
        goto LABEL_214;
      }

      goto LABEL_228;
    }
  }

  else if ((v66 & 0x200) == 0)
  {
    goto LABEL_213;
  }

  v85 = *(this + 44);
  if (v85 >= 0x80)
  {
    v86 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v85) + 2;
    v66 = *(this + 64);
  }

  else
  {
    v86 = 3;
  }

  v3 = (v86 + v3);
  if ((v66 & 0x400) == 0)
  {
LABEL_214:
    if ((v66 & 0x800) == 0)
    {
      goto LABEL_215;
    }

    goto LABEL_232;
  }

LABEL_228:
  v87 = *(this + 45);
  if (v87 >= 0x80)
  {
    v88 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v87) + 2;
    v66 = *(this + 64);
  }

  else
  {
    v88 = 3;
  }

  v3 = (v88 + v3);
  if ((v66 & 0x800) == 0)
  {
LABEL_215:
    if ((v66 & 0x1000) == 0)
    {
      goto LABEL_216;
    }

    goto LABEL_236;
  }

LABEL_232:
  v89 = *(this + 46);
  if (v89 >= 0x80)
  {
    v90 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v89) + 2;
    v66 = *(this + 64);
  }

  else
  {
    v90 = 3;
  }

  v3 = (v90 + v3);
  if ((v66 & 0x1000) == 0)
  {
LABEL_216:
    if ((v66 & 0x2000) == 0)
    {
      goto LABEL_217;
    }

    goto LABEL_240;
  }

LABEL_236:
  v91 = *(this + 47);
  if (v91 >= 0x80)
  {
    v92 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v91) + 2;
    v66 = *(this + 64);
  }

  else
  {
    v92 = 3;
  }

  v3 = (v92 + v3);
  if ((v66 & 0x2000) == 0)
  {
LABEL_217:
    if ((v66 & 0x4000) == 0)
    {
      goto LABEL_218;
    }

    goto LABEL_244;
  }

LABEL_240:
  v93 = *(this + 48);
  if (v93 >= 0x80)
  {
    v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93) + 2;
    v66 = *(this + 64);
  }

  else
  {
    v94 = 3;
  }

  v3 = (v94 + v3);
  if ((v66 & 0x4000) == 0)
  {
LABEL_218:
    if ((v66 & 0x8000) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_248;
  }

LABEL_244:
  v95 = *(this + 49);
  if (v95 >= 0x80)
  {
    v96 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v95) + 2;
    v66 = *(this + 64);
  }

  else
  {
    v96 = 3;
  }

  v3 = (v96 + v3);
  if ((v66 & 0x8000) != 0)
  {
LABEL_248:
    v97 = *(this + 50);
    if (v97 >= 0x80)
    {
      v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97) + 2;
      v66 = *(this + 64);
    }

    else
    {
      v98 = 3;
    }

    v3 = (v98 + v3);
  }

LABEL_252:
  if ((v66 & 0xFF0000) == 0)
  {
    goto LABEL_294;
  }

  if ((v66 & 0x10000) != 0)
  {
    v99 = *(this + 51);
    if (v99 >= 0x80)
    {
      v100 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v99) + 2;
      v66 = *(this + 64);
    }

    else
    {
      v100 = 3;
    }

    v3 = (v100 + v3);
    if ((v66 & 0x20000) == 0)
    {
LABEL_255:
      if ((v66 & 0x40000) == 0)
      {
        goto LABEL_256;
      }

      goto LABEL_270;
    }
  }

  else if ((v66 & 0x20000) == 0)
  {
    goto LABEL_255;
  }

  v101 = *(this + 52);
  if (v101 >= 0x80)
  {
    v102 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v101) + 2;
    v66 = *(this + 64);
  }

  else
  {
    v102 = 3;
  }

  v3 = (v102 + v3);
  if ((v66 & 0x40000) == 0)
  {
LABEL_256:
    if ((v66 & 0x80000) == 0)
    {
      goto LABEL_257;
    }

    goto LABEL_274;
  }

LABEL_270:
  v103 = *(this + 53);
  if (v103 >= 0x80)
  {
    v104 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v103) + 2;
    v66 = *(this + 64);
  }

  else
  {
    v104 = 3;
  }

  v3 = (v104 + v3);
  if ((v66 & 0x80000) == 0)
  {
LABEL_257:
    if ((v66 & 0x100000) == 0)
    {
      goto LABEL_258;
    }

    goto LABEL_278;
  }

LABEL_274:
  v105 = *(this + 54);
  if (v105 >= 0x80)
  {
    v106 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v105) + 2;
    v66 = *(this + 64);
  }

  else
  {
    v106 = 3;
  }

  v3 = (v106 + v3);
  if ((v66 & 0x100000) == 0)
  {
LABEL_258:
    if ((v66 & 0x200000) == 0)
    {
      goto LABEL_259;
    }

    goto LABEL_282;
  }

LABEL_278:
  v107 = *(this + 55);
  if (v107 >= 0x80)
  {
    v108 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v107) + 2;
    v66 = *(this + 64);
  }

  else
  {
    v108 = 3;
  }

  v3 = (v108 + v3);
  if ((v66 & 0x200000) == 0)
  {
LABEL_259:
    if ((v66 & 0x400000) == 0)
    {
      goto LABEL_260;
    }

    goto LABEL_286;
  }

LABEL_282:
  v109 = *(this + 56);
  if (v109 >= 0x80)
  {
    v110 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v109) + 2;
    v66 = *(this + 64);
  }

  else
  {
    v110 = 3;
  }

  v3 = (v110 + v3);
  if ((v66 & 0x400000) == 0)
  {
LABEL_260:
    if ((v66 & 0x800000) == 0)
    {
      goto LABEL_294;
    }

    goto LABEL_290;
  }

LABEL_286:
  v111 = *(this + 57);
  if (v111 >= 0x80)
  {
    v112 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v111) + 2;
    v66 = *(this + 64);
  }

  else
  {
    v112 = 3;
  }

  v3 = (v112 + v3);
  if ((v66 & 0x800000) != 0)
  {
LABEL_290:
    v113 = *(this + 58);
    if (v113 >= 0x80)
    {
      v114 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v113) + 2;
      v66 = *(this + 64);
    }

    else
    {
      v114 = 3;
    }

    v3 = (v114 + v3);
  }

LABEL_294:
  if (!HIBYTE(v66))
  {
    goto LABEL_311;
  }

  if ((v66 & 0x1000000) != 0)
  {
    v115 = *(this + 59);
    if (v115 >= 0x80)
    {
      v116 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v115) + 2;
      v66 = *(this + 64);
    }

    else
    {
      v116 = 3;
    }

    v3 = (v116 + v3);
    if ((v66 & 0x2000000) == 0)
    {
LABEL_297:
      if ((v66 & 0x4000000) == 0)
      {
        goto LABEL_311;
      }

      goto LABEL_307;
    }
  }

  else if ((v66 & 0x2000000) == 0)
  {
    goto LABEL_297;
  }

  v117 = *(this + 60);
  if (v117 >= 0x80)
  {
    v118 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v117) + 2;
    v66 = *(this + 64);
  }

  else
  {
    v118 = 3;
  }

  v3 = (v118 + v3);
  if ((v66 & 0x4000000) != 0)
  {
LABEL_307:
    v119 = *(this + 61);
    if (v119 >= 0x80)
    {
      v120 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v119) + 2;
    }

    else
    {
      v120 = 3;
    }

    v3 = (v120 + v3);
  }

LABEL_311:
  *(this + 62) = v3;
  return v3;
}

void awd::metrics::BluetoothLEScan::CheckTypeAndMergeFrom(awd::metrics::BluetoothLEScan *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothLEScan::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLEScan::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLEScan::CopyFrom(awd::metrics::BluetoothLEScan *this, const awd::metrics::BluetoothLEScan *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLEScan::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothLEScan::Swap(uint64_t this, awd::metrics::BluetoothLEScan *a2)
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
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v2;
    LODWORD(v2) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v2;
    LODWORD(v2) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v2;
    LODWORD(v2) = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v2;
    LODWORD(v2) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v2;
    LODWORD(v2) = *(this + 80);
    *(this + 80) = *(a2 + 20);
    *(a2 + 20) = v2;
    LODWORD(v2) = *(this + 84);
    *(this + 84) = *(a2 + 21);
    *(a2 + 21) = v2;
    LODWORD(v2) = *(this + 88);
    *(this + 88) = *(a2 + 22);
    *(a2 + 22) = v2;
    LODWORD(v2) = *(this + 92);
    *(this + 92) = *(a2 + 23);
    *(a2 + 23) = v2;
    LODWORD(v2) = *(this + 96);
    *(this + 96) = *(a2 + 24);
    *(a2 + 24) = v2;
    LODWORD(v2) = *(this + 100);
    *(this + 100) = *(a2 + 25);
    *(a2 + 25) = v2;
    LODWORD(v2) = *(this + 104);
    *(this + 104) = *(a2 + 26);
    *(a2 + 26) = v2;
    LODWORD(v2) = *(this + 108);
    *(this + 108) = *(a2 + 27);
    *(a2 + 27) = v2;
    LODWORD(v2) = *(this + 112);
    *(this + 112) = *(a2 + 28);
    *(a2 + 28) = v2;
    LODWORD(v2) = *(this + 116);
    *(this + 116) = *(a2 + 29);
    *(a2 + 29) = v2;
    LODWORD(v2) = *(this + 120);
    *(this + 120) = *(a2 + 30);
    *(a2 + 30) = v2;
    LODWORD(v2) = *(this + 124);
    *(this + 124) = *(a2 + 31);
    *(a2 + 31) = v2;
    LODWORD(v2) = *(this + 128);
    *(this + 128) = *(a2 + 32);
    *(a2 + 32) = v2;
    LODWORD(v2) = *(this + 132);
    *(this + 132) = *(a2 + 33);
    *(a2 + 33) = v2;
    LODWORD(v2) = *(this + 136);
    *(this + 136) = *(a2 + 34);
    *(a2 + 34) = v2;
    LODWORD(v2) = *(this + 140);
    *(this + 140) = *(a2 + 35);
    *(a2 + 35) = v2;
    LODWORD(v2) = *(this + 144);
    *(this + 144) = *(a2 + 36);
    *(a2 + 36) = v2;
    LODWORD(v2) = *(this + 148);
    *(this + 148) = *(a2 + 37);
    *(a2 + 37) = v2;
    LODWORD(v2) = *(this + 152);
    *(this + 152) = *(a2 + 38);
    *(a2 + 38) = v2;
    LODWORD(v2) = *(this + 156);
    *(this + 156) = *(a2 + 39);
    *(a2 + 39) = v2;
    LODWORD(v2) = *(this + 160);
    *(this + 160) = *(a2 + 40);
    *(a2 + 40) = v2;
    LODWORD(v2) = *(this + 164);
    *(this + 164) = *(a2 + 41);
    *(a2 + 41) = v2;
    LODWORD(v2) = *(this + 168);
    *(this + 168) = *(a2 + 42);
    *(a2 + 42) = v2;
    LODWORD(v2) = *(this + 172);
    *(this + 172) = *(a2 + 43);
    *(a2 + 43) = v2;
    LODWORD(v2) = *(this + 176);
    *(this + 176) = *(a2 + 44);
    *(a2 + 44) = v2;
    LODWORD(v2) = *(this + 180);
    *(this + 180) = *(a2 + 45);
    *(a2 + 45) = v2;
    LODWORD(v2) = *(this + 184);
    *(this + 184) = *(a2 + 46);
    *(a2 + 46) = v2;
    LODWORD(v2) = *(this + 188);
    *(this + 188) = *(a2 + 47);
    *(a2 + 47) = v2;
    LODWORD(v2) = *(this + 192);
    *(this + 192) = *(a2 + 48);
    *(a2 + 48) = v2;
    LODWORD(v2) = *(this + 196);
    *(this + 196) = *(a2 + 49);
    *(a2 + 49) = v2;
    LODWORD(v2) = *(this + 200);
    *(this + 200) = *(a2 + 50);
    *(a2 + 50) = v2;
    LODWORD(v2) = *(this + 204);
    *(this + 204) = *(a2 + 51);
    *(a2 + 51) = v2;
    LODWORD(v2) = *(this + 208);
    *(this + 208) = *(a2 + 52);
    *(a2 + 52) = v2;
    LODWORD(v2) = *(this + 212);
    *(this + 212) = *(a2 + 53);
    *(a2 + 53) = v2;
    LODWORD(v2) = *(this + 216);
    *(this + 216) = *(a2 + 54);
    *(a2 + 54) = v2;
    LODWORD(v2) = *(this + 220);
    *(this + 220) = *(a2 + 55);
    *(a2 + 55) = v2;
    LODWORD(v2) = *(this + 224);
    *(this + 224) = *(a2 + 56);
    *(a2 + 56) = v2;
    LODWORD(v2) = *(this + 228);
    *(this + 228) = *(a2 + 57);
    *(a2 + 57) = v2;
    LODWORD(v2) = *(this + 232);
    *(this + 232) = *(a2 + 58);
    *(a2 + 58) = v2;
    LODWORD(v2) = *(this + 236);
    *(this + 236) = *(a2 + 59);
    *(a2 + 59) = v2;
    LODWORD(v2) = *(this + 240);
    *(this + 240) = *(a2 + 60);
    *(a2 + 60) = v2;
    LODWORD(v2) = *(this + 244);
    *(this + 244) = *(a2 + 61);
    *(a2 + 61) = v2;
    LODWORD(v2) = *(this + 252);
    *(this + 252) = *(a2 + 63);
    *(a2 + 63) = v2;
    LODWORD(v2) = *(this + 256);
    *(this + 256) = *(a2 + 64);
    *(a2 + 64) = v2;
    LODWORD(v2) = *(this + 248);
    *(this + 248) = *(a2 + 62);
    *(a2 + 62) = v2;
  }

  return this;
}

double awd::metrics::BluetoothLEConnectionScan::SharedCtor(awd::metrics::BluetoothLEConnectionScan *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

awd::metrics::BluetoothLEConnectionScan *awd::metrics::BluetoothLEConnectionScan::BluetoothLEConnectionScan(awd::metrics::BluetoothLEConnectionScan *this, const awd::metrics::BluetoothLEConnectionScan *a2)
{
  *this = &unk_2A1D4C9A8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  awd::metrics::BluetoothLEConnectionScan::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothLEConnectionScan::MergeFrom(awd::metrics::BluetoothLEConnectionScan *this, const awd::metrics::BluetoothLEConnectionScan *a2)
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

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 9) |= 2u;
    *(this + 4) = v7;
    v4 = *(a2 + 9);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 5);
    *(this + 9) |= 4u;
    *(this + 5) = v8;
    v4 = *(a2 + 9);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 6);
    *(this + 9) |= 8u;
    *(this + 6) = v9;
    if ((*(a2 + 9) & 0x10) == 0)
    {
      return;
    }

LABEL_9:
    v5 = *(a2 + 7);
    *(this + 9) |= 0x10u;
    *(this + 7) = v5;
  }
}

void sub_2963C1750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLEConnectionScan::~BluetoothLEConnectionScan(awd::metrics::BluetoothLEConnectionScan *this)
{
  *this = &unk_2A1D4C9A8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C9A8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4C9A8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothLEConnectionScan::default_instance(awd::metrics::BluetoothLEConnectionScan *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLEConnectionScan::default_instance_;
  if (!awd::metrics::BluetoothLEConnectionScan::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLEConnectionScan::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLEConnectionScan::Clear(uint64_t this)
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

uint64_t awd::metrics::BluetoothLEConnectionScan::MergePartialFromCodedStream(awd::metrics::BluetoothLEConnectionScan *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v9 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v12 >= v7 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 9) |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v9 = v14 + 1;
          *(a2 + 1) = v9;
LABEL_32:
          if (v9 >= v7 || (v15 = *v9, v15 < 0))
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
            v16 = v9 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 9) |= 2u;
          if (v16 < v7 && *v16 == 24)
          {
            v10 = v16 + 1;
            *(a2 + 1) = v10;
LABEL_40:
            if (v10 >= v7 || (v17 = *v10, v17 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
              if (!result)
              {
                return result;
              }

              v18 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 5) = v17;
              v18 = v10 + 1;
              *(a2 + 1) = v18;
            }

            *(this + 9) |= 4u;
            if (v18 < v7 && *v18 == 32)
            {
              v11 = v18 + 1;
              *(a2 + 1) = v11;
              goto LABEL_48;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_40;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_48:
      if (v11 >= v7 || (v19 = *v11, v19 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 6) = v19;
        v20 = v11 + 1;
        *(a2 + 1) = v20;
      }

      *(this + 9) |= 8u;
      if (v20 < v7 && *v20 == 40)
      {
        v8 = v20 + 1;
        *(a2 + 1) = v8;
LABEL_56:
        if (v8 >= v7 || (v21 = *v8, v21 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v22 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v21;
          v22 = v8 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 9) |= 0x10u;
        if (v22 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_56;
    }

LABEL_21:
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

uint64_t awd::metrics::BluetoothLEConnectionScan::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[9];
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[9];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
    if ((v5[9] & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[9];
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
  v7 = v5[7];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothLEConnectionScan::ByteSize(awd::metrics::BluetoothLEConnectionScan *this)
{
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_27;
  }

  if (*(this + 36))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 9);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 9);
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
      v2 = *(this + 9);
    }

    else
    {
      v7 = 2;
    }

    v3 = (v7 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_13:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_23;
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
    v2 = *(this + 9);
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
  if ((v2 & 0x10) != 0)
  {
LABEL_23:
    v10 = *(this + 7);
    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    }

    else
    {
      v11 = 2;
    }

    v3 = (v11 + v3);
  }

LABEL_27:
  *(this + 8) = v3;
  return v3;
}

void awd::metrics::BluetoothLEConnectionScan::CheckTypeAndMergeFrom(awd::metrics::BluetoothLEConnectionScan *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothLEConnectionScan::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLEConnectionScan::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLEConnectionScan::CopyFrom(awd::metrics::BluetoothLEConnectionScan *this, const awd::metrics::BluetoothLEConnectionScan *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLEConnectionScan::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothLEConnectionScan::Swap(uint64_t this, awd::metrics::BluetoothLEConnectionScan *a2)
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
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return this;
}

double awd::metrics::BluetoothPageScanDevice::SharedCtor(awd::metrics::BluetoothPageScanDevice *this)
{
  *(this + 1) = 0;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  return result;
}

awd::metrics::BluetoothPageScanDevice *awd::metrics::BluetoothPageScanDevice::BluetoothPageScanDevice(awd::metrics::BluetoothPageScanDevice *this, const awd::metrics::BluetoothPageScanDevice *a2)
{
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *this = &unk_2A1D4CA20;
  *(this + 1) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::BluetoothPageScanDevice::MergeFrom(this, a2);
  return this;
}

void sub_2963C1F90(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v3);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase *awd::metrics::BluetoothPageScanDevice::MergeFrom(awd::metrics::BluetoothPageScanDevice *this, const awd::metrics::BluetoothPageScanDevice *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v21);
  }

  wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 16), a2 + 16);
  result = wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::MergeFrom((this + 40), a2 + 40);
  v5 = *(a2 + 31);
  if (!v5)
  {
    goto LABEL_11;
  }

  if (v5)
  {
    v9 = *(a2 + 1);
    *(this + 31) |= 1u;
    *(this + 1) = v9;
    v5 = *(a2 + 31);
    if ((v5 & 8) == 0)
    {
LABEL_6:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 16);
  *(this + 31) |= 8u;
  *(this + 16) = v10;
  v5 = *(a2 + 31);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_27:
    v12 = *(a2 + 18);
    *(this + 31) |= 0x20u;
    *(this + 18) = v12;
    v5 = *(a2 + 31);
    if ((v5 & 0x40) == 0)
    {
LABEL_9:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_26:
  v11 = *(a2 + 17);
  *(this + 31) |= 0x10u;
  *(this + 17) = v11;
  v5 = *(a2 + 31);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_8:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_28:
  v13 = *(a2 + 19);
  *(this + 31) |= 0x40u;
  *(this + 19) = v13;
  v5 = *(a2 + 31);
  if ((v5 & 0x80) != 0)
  {
LABEL_10:
    v6 = *(a2 + 20);
    *(this + 31) |= 0x80u;
    *(this + 20) = v6;
    v5 = *(a2 + 31);
  }

LABEL_11:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v5 & 0x100) != 0)
  {
    v14 = *(a2 + 21);
    *(this + 31) |= 0x100u;
    *(this + 21) = v14;
    v5 = *(a2 + 31);
    if ((v5 & 0x200) == 0)
    {
LABEL_14:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_32;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  v15 = *(a2 + 22);
  *(this + 31) |= 0x200u;
  *(this + 22) = v15;
  v5 = *(a2 + 31);
  if ((v5 & 0x400) == 0)
  {
LABEL_15:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = *(a2 + 23);
  *(this + 31) |= 0x400u;
  *(this + 23) = v16;
  v5 = *(a2 + 31);
  if ((v5 & 0x800) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = *(a2 + 24);
  *(this + 31) |= 0x800u;
  *(this + 24) = v17;
  v5 = *(a2 + 31);
  if ((v5 & 0x1000) == 0)
  {
LABEL_17:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v18 = *(a2 + 25);
  *(this + 31) |= 0x1000u;
  *(this + 25) = v18;
  v5 = *(a2 + 31);
  if ((v5 & 0x2000) == 0)
  {
LABEL_18:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  v19 = *(a2 + 26);
  *(this + 31) |= 0x2000u;
  *(this + 26) = v19;
  v5 = *(a2 + 31);
  if ((v5 & 0x4000) == 0)
  {
LABEL_19:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_36:
  v20 = *(a2 + 27);
  *(this + 31) |= 0x4000u;
  *(this + 27) = v20;
  v5 = *(a2 + 31);
  if ((v5 & 0x8000) != 0)
  {
LABEL_20:
    v7 = *(a2 + 28);
    *(this + 31) |= 0x8000u;
    *(this + 28) = v7;
    v5 = *(a2 + 31);
  }

LABEL_21:
  if ((v5 & 0x10000) != 0)
  {
    v8 = *(a2 + 29);
    *(this + 31) |= 0x10000u;
    *(this + 29) = v8;
  }

  return result;
}

void sub_2963C2230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothPageScanDevice::~BluetoothPageScanDevice(awd::metrics::BluetoothPageScanDevice *this)
{
  *this = &unk_2A1D4CA20;
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 10);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 4);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothPageScanDevice::~BluetoothPageScanDevice(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothPageScanDevice::default_instance(awd::metrics::BluetoothPageScanDevice *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothPageScanDevice::default_instance_;
  if (!awd::metrics::BluetoothPageScanDevice::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothPageScanDevice::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothPageScanDevice::Clear(awd::metrics::BluetoothPageScanDevice *this)
{
  v2 = *(this + 31);
  if (v2)
  {
    *(this + 1) = 0;
    *(this + 8) = 0;
    *(this + 9) = 0;
    *(this + 20) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 100) = 0u;
    *(this + 84) = 0u;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(this + 29) = 0;
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 16);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 40);
  *(this + 31) = 0;
  return result;
}

uint64_t awd::metrics::BluetoothPageScanDevice::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v3 = this;
LABEL_2:
  while (2)
  {
    v4 = *(a2 + 1);
    if (v4 >= *(a2 + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
    {
      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      v5 = this;
      *(a2 + 8) = this;
      if (!this)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = v5;
      *(a2 + 1) = v4 + 1;
      if (!v5)
      {
        return 1;
      }
    }

    v6 = v5 & 7;
    switch(v5 >> 3)
    {
      case 1u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_43;
        }

        v8 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v8 < v7)
        {
          v9 = *v8;
          if ((v9 & 0x8000000000000000) == 0)
          {
            *(v3 + 8) = v9;
            v10 = v8 + 1;
            *(a2 + 1) = v10;
LABEL_49:
            *(v3 + 124) |= 1u;
            if (v10 >= v7 || *v10 != 18)
            {
              continue;
            }

            goto LABEL_51;
          }
        }

        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, (v3 + 8));
        if (this)
        {
          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_49;
        }

        break;
      case 2u:
        if (v6 != 2)
        {
          goto LABEL_43;
        }

LABEL_52:
        v26 = *(v3 + 28);
        v27 = *(v3 + 24);
        if (v27 >= v26)
        {
          if (v26 == *(v3 + 32))
          {
            this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 16));
            v26 = *(v3 + 28);
          }

          *(v3 + 28) = v26 + 1;
          v30 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
          v31 = *(v3 + 16);
          v32 = *(v3 + 24);
          *(v3 + 24) = v32 + 1;
          *(v31 + 8 * v32) = v30;
        }

        else
        {
          v28 = *(v3 + 16);
          *(v3 + 24) = v27 + 1;
          v29 = *(v28 + 8 * v27);
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!this)
        {
          return this;
        }

        v10 = *(a2 + 1);
        if (v10 >= *(a2 + 2))
        {
          continue;
        }

        v33 = *v10;
        if (v33 == 18)
        {
LABEL_51:
          *(a2 + 1) = v10 + 1;
          goto LABEL_52;
        }

        if (v33 != 26)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v10 + 1;
LABEL_62:
          v34 = *(v3 + 52);
          v35 = *(v3 + 48);
          if (v35 >= v34)
          {
            if (v34 == *(v3 + 56))
            {
              this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v3 + 40));
              v34 = *(v3 + 52);
            }

            *(v3 + 52) = v34 + 1;
            v38 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
            v39 = *(v3 + 40);
            v40 = *(v3 + 48);
            *(v3 + 48) = v40 + 1;
            *(v39 + 8 * v40) = v38;
          }

          else
          {
            v36 = *(v3 + 40);
            *(v3 + 48) = v35 + 1;
            v37 = *(v36 + 8 * v35);
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
          if (!this)
          {
            return this;
          }

          v10 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v10 >= v11)
          {
            goto LABEL_2;
          }

          v41 = *v10;
        }

        while (v41 == 26);
        if (v41 != 32)
        {
          continue;
        }

        v19 = v10 + 1;
        *(a2 + 1) = v19;
LABEL_72:
        if (v19 >= v11 || (v42 = *v19, v42 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 64));
          if (!this)
          {
            return this;
          }

          v43 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 64) = v42;
          v43 = v19 + 1;
          *(a2 + 1) = v43;
        }

        *(v3 + 124) |= 8u;
        if (v43 >= v11 || *v43 != 40)
        {
          continue;
        }

        v15 = v43 + 1;
        *(a2 + 1) = v15;
LABEL_80:
        if (v15 >= v11 || (v44 = *v15, v44 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 68));
          if (!this)
          {
            return this;
          }

          v45 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 68) = v44;
          v45 = v15 + 1;
          *(a2 + 1) = v45;
        }

        *(v3 + 124) |= 0x10u;
        if (v45 >= v11 || *v45 != 48)
        {
          continue;
        }

        v21 = v45 + 1;
        *(a2 + 1) = v21;
LABEL_88:
        if (v21 >= v11 || (v46 = *v21, v46 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 72));
          if (!this)
          {
            return this;
          }

          v47 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 72) = v46;
          v47 = v21 + 1;
          *(a2 + 1) = v47;
        }

        *(v3 + 124) |= 0x20u;
        if (v47 >= v11 || *v47 != 56)
        {
          continue;
        }

        v23 = v47 + 1;
        *(a2 + 1) = v23;
LABEL_96:
        if (v23 >= v11 || (v48 = *v23, v48 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 76));
          if (!this)
          {
            return this;
          }

          v49 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 76) = v48;
          v49 = v23 + 1;
          *(a2 + 1) = v49;
        }

        *(v3 + 124) |= 0x40u;
        if (v49 >= v11 || *v49 != 64)
        {
          continue;
        }

        v20 = v49 + 1;
        *(a2 + 1) = v20;
LABEL_104:
        if (v20 >= v11 || (v50 = *v20, v50 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 80));
          if (!this)
          {
            return this;
          }

          v51 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 80) = v50;
          v51 = v20 + 1;
          *(a2 + 1) = v51;
        }

        *(v3 + 124) |= 0x80u;
        if (v51 >= v11 || *v51 != 72)
        {
          continue;
        }

        v25 = v51 + 1;
        *(a2 + 1) = v25;
LABEL_112:
        if (v25 >= v11 || (v52 = *v25, v52 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 84));
          if (!this)
          {
            return this;
          }

          v53 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 84) = v52;
          v53 = v25 + 1;
          *(a2 + 1) = v53;
        }

        *(v3 + 124) |= 0x100u;
        if (v53 >= v11 || *v53 != 80)
        {
          continue;
        }

        v17 = v53 + 1;
        *(a2 + 1) = v17;
LABEL_120:
        if (v17 >= v11 || (v54 = *v17, v54 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 88));
          if (!this)
          {
            return this;
          }

          v55 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 88) = v54;
          v55 = v17 + 1;
          *(a2 + 1) = v55;
        }

        *(v3 + 124) |= 0x200u;
        if (v55 >= v11 || *v55 != 88)
        {
          continue;
        }

        v24 = v55 + 1;
        *(a2 + 1) = v24;
LABEL_128:
        if (v24 >= v11 || (v56 = *v24, v56 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 92));
          if (!this)
          {
            return this;
          }

          v57 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 92) = v56;
          v57 = v24 + 1;
          *(a2 + 1) = v57;
        }

        *(v3 + 124) |= 0x400u;
        if (v57 >= v11 || *v57 != 96)
        {
          continue;
        }

        v14 = v57 + 1;
        *(a2 + 1) = v14;
LABEL_136:
        if (v14 >= v11 || (v58 = *v14, v58 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 96));
          if (!this)
          {
            return this;
          }

          v59 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 96) = v58;
          v59 = v14 + 1;
          *(a2 + 1) = v59;
        }

        *(v3 + 124) |= 0x800u;
        if (v59 >= v11 || *v59 != 104)
        {
          continue;
        }

        v16 = v59 + 1;
        *(a2 + 1) = v16;
LABEL_144:
        if (v16 >= v11 || (v60 = *v16, v60 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 100));
          if (!this)
          {
            return this;
          }

          v61 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 100) = v60;
          v61 = v16 + 1;
          *(a2 + 1) = v61;
        }

        *(v3 + 124) |= 0x1000u;
        if (v61 >= v11 || *v61 != 112)
        {
          continue;
        }

        v22 = v61 + 1;
        *(a2 + 1) = v22;
LABEL_152:
        if (v22 >= v11 || (v62 = *v22, v62 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 104));
          if (!this)
          {
            return this;
          }

          v63 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 104) = v62;
          v63 = v22 + 1;
          *(a2 + 1) = v63;
        }

        *(v3 + 124) |= 0x2000u;
        if (v63 >= v11 || *v63 != 120)
        {
          continue;
        }

        v13 = v63 + 1;
        *(a2 + 1) = v13;
LABEL_160:
        if (v13 >= v11 || (v64 = *v13, v64 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 108));
          if (!this)
          {
            return this;
          }

          v65 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 108) = v64;
          v65 = (v13 + 1);
          *(a2 + 1) = v65;
        }

        *(v3 + 124) |= 0x4000u;
        if (v11 - v65 < 2 || *v65 != 128 || v65[1] != 1)
        {
          continue;
        }

        v18 = (v65 + 2);
        *(a2 + 1) = v18;
LABEL_169:
        if (v18 >= v11 || (v66 = *v18, v66 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 112));
          if (!this)
          {
            return this;
          }

          v67 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 112) = v66;
          v67 = (v18 + 1);
          *(a2 + 1) = v67;
        }

        *(v3 + 124) |= 0x8000u;
        if (v11 - v67 < 2 || *v67 != 136 || v67[1] != 1)
        {
          continue;
        }

        v12 = (v67 + 2);
        *(a2 + 1) = v12;
LABEL_178:
        if (v12 >= v11 || (v68 = *v12, v68 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v3 + 116));
          if (!this)
          {
            return this;
          }

          v69 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          *(v3 + 116) = v68;
          v69 = v12 + 1;
          *(a2 + 1) = v69;
        }

        *(v3 + 124) |= 0x10000u;
        if (v69 != v11 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        this = 1;
        *(a2 + 36) = 1;
        return this;
      case 3u:
        if (v6 == 2)
        {
          goto LABEL_62;
        }

        goto LABEL_43;
      case 4u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_43;
        }

        v19 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_72;
      case 5u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_43;
        }

        v15 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_80;
      case 6u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_43;
        }

        v21 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_88;
      case 7u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_43;
        }

        v23 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_96;
      case 8u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_43;
        }

        v20 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_104;
      case 9u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_43;
        }

        v25 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_112;
      case 0xAu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_43;
        }

        v17 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_120;
      case 0xBu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_43;
        }

        v24 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_128;
      case 0xCu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_43;
        }

        v14 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_136;
      case 0xDu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_43;
        }

        v16 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_144;
      case 0xEu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_43;
        }

        v22 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_152;
      case 0xFu:
        if ((v5 & 7) != 0)
        {
          goto LABEL_43;
        }

        v13 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_160;
      case 0x10u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_43;
        }

        v18 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_169;
      case 0x11u:
        if ((v5 & 7) != 0)
        {
          goto LABEL_43;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_178;
      default:
LABEL_43:
        if (v6 == 4)
        {
          return 1;
        }

        this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v5);
        if (this)
        {
          continue;
        }

        return 0;
    }

    return this;
  }
}

uint64_t awd::metrics::BluetoothPageScanDevice::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 124))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v5 + 16) + 8 * v6);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      ++v6;
    }

    while (v6 < *(v5 + 24));
  }

  if (*(v5 + 48) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(v5 + 40) + 8 * v8);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
      ++v8;
    }

    while (v8 < *(v5 + 48));
  }

  v10 = *(v5 + 124);
  if ((v10 & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 64), a2, a4);
    v10 = *(v5 + 124);
    if ((v10 & 0x10) == 0)
    {
LABEL_11:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }
  }

  else if ((v10 & 0x10) == 0)
  {
    goto LABEL_11;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 68), a2, a4);
  v10 = *(v5 + 124);
  if ((v10 & 0x20) == 0)
  {
LABEL_12:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 72), a2, a4);
  v10 = *(v5 + 124);
  if ((v10 & 0x40) == 0)
  {
LABEL_13:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 76), a2, a4);
  v10 = *(v5 + 124);
  if ((v10 & 0x80) == 0)
  {
LABEL_14:
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 80), a2, a4);
  v10 = *(v5 + 124);
  if ((v10 & 0x100) == 0)
  {
LABEL_15:
    if ((v10 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 84), a2, a4);
  v10 = *(v5 + 124);
  if ((v10 & 0x200) == 0)
  {
LABEL_16:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 88), a2, a4);
  v10 = *(v5 + 124);
  if ((v10 & 0x400) == 0)
  {
LABEL_17:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 92), a2, a4);
  v10 = *(v5 + 124);
  if ((v10 & 0x800) == 0)
  {
LABEL_18:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 96), a2, a4);
  v10 = *(v5 + 124);
  if ((v10 & 0x1000) == 0)
  {
LABEL_19:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 100), a2, a4);
  v10 = *(v5 + 124);
  if ((v10 & 0x2000) == 0)
  {
LABEL_20:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 104), a2, a4);
  v10 = *(v5 + 124);
  if ((v10 & 0x4000) == 0)
  {
LABEL_21:
    if ((v10 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

LABEL_36:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 112), a2, a4);
    if ((*(v5 + 124) & 0x10000) == 0)
    {
      return this;
    }

    goto LABEL_37;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 108), a2, a4);
  v10 = *(v5 + 124);
  if ((v10 & 0x8000) != 0)
  {
    goto LABEL_36;
  }

LABEL_22:
  if ((v10 & 0x10000) == 0)
  {
    return this;
  }

LABEL_37:
  v11 = *(v5 + 116);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, v11, a2, a4);
}

uint64_t awd::metrics::BluetoothPageScanDevice::ByteSize(awd::metrics::BluetoothPageScanDevice *this)
{
  v2 = *(this + 31);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_32;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 31);
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 16);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 31);
  }

  else
  {
    v5 = 2;
  }

  v3 += v5;
LABEL_11:
  if ((v2 & 0x10) != 0)
  {
    v6 = *(this + 17);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 31);
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
    if ((v2 & 0x20) == 0)
    {
LABEL_13:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_24;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(this + 18);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 31);
  }

  else
  {
    v9 = 2;
  }

  v3 += v9;
  if ((v2 & 0x40) == 0)
  {
LABEL_14:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

LABEL_24:
  v10 = *(this + 19);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 31);
  }

  else
  {
    v11 = 2;
  }

  v3 += v11;
  if ((v2 & 0x80) != 0)
  {
LABEL_28:
    v12 = *(this + 20);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
      v2 = *(this + 31);
    }

    else
    {
      v13 = 2;
    }

    v3 += v13;
  }

LABEL_32:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_41;
  }

  if ((v2 & 0x100) != 0)
  {
    v14 = *(this + 21);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v2 = *(this + 31);
    }

    else
    {
      v15 = 2;
    }

    v3 += v15;
    if ((v2 & 0x200) == 0)
    {
LABEL_35:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_51;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_35;
  }

  v16 = *(this + 22);
  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v2 = *(this + 31);
  }

  else
  {
    v17 = 2;
  }

  v3 += v17;
  if ((v2 & 0x400) == 0)
  {
LABEL_36:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_55;
  }

LABEL_51:
  v18 = *(this + 23);
  if (v18 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    v2 = *(this + 31);
  }

  else
  {
    v19 = 2;
  }

  v3 += v19;
  if ((v2 & 0x800) == 0)
  {
LABEL_37:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_59;
  }

LABEL_55:
  v20 = *(this + 24);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 31);
  }

  else
  {
    v21 = 2;
  }

  v3 += v21;
  if ((v2 & 0x1000) == 0)
  {
LABEL_38:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_63;
  }

LABEL_59:
  v22 = *(this + 25);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v2 = *(this + 31);
  }

  else
  {
    v23 = 2;
  }

  v3 += v23;
  if ((v2 & 0x2000) == 0)
  {
LABEL_39:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_67;
  }

LABEL_63:
  v24 = *(this + 26);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v2 = *(this + 31);
  }

  else
  {
    v25 = 2;
  }

  v3 += v25;
  if ((v2 & 0x4000) == 0)
  {
LABEL_40:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_71;
  }

LABEL_67:
  v26 = *(this + 27);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v2 = *(this + 31);
  }

  else
  {
    v27 = 2;
  }

  v3 += v27;
  if ((v2 & 0x8000) == 0)
  {
LABEL_41:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_75;
  }

LABEL_71:
  v28 = *(this + 28);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 2;
    v2 = *(this + 31);
  }

  else
  {
    v29 = 3;
  }

  v3 += v29;
  if ((v2 & 0x10000) != 0)
  {
LABEL_75:
    v30 = *(this + 29);
    if (v30 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 2;
    }

    else
    {
      v31 = 3;
    }

    v3 += v31;
  }

LABEL_79:
  v32 = *(this + 6);
  v33 = v32 + v3;
  if (v32 >= 1)
  {
    for (i = 0; i < v32; ++i)
    {
      v35 = *(*(this + 2) + 8 * i);
      v36 = *(v35 + 23);
      v37 = v36;
      v38 = *(v35 + 8);
      if ((v36 & 0x80u) == 0)
      {
        v39 = *(v35 + 23);
      }

      else
      {
        v39 = v38;
      }

      if (v39 >= 0x80)
      {
        v40 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39);
        v36 = *(v35 + 23);
        v38 = *(v35 + 8);
        v32 = *(this + 6);
        v37 = *(v35 + 23);
      }

      else
      {
        v40 = 1;
      }

      if (v37 < 0)
      {
        v36 = v38;
      }

      v33 += v40 + v36;
    }
  }

  v41 = *(this + 12);
  v42 = (v41 + v33);
  if (v41 >= 1)
  {
    for (j = 0; j < v41; ++j)
    {
      v44 = *(*(this + 5) + 8 * j);
      v45 = *(v44 + 23);
      v46 = v45;
      v47 = *(v44 + 8);
      if ((v45 & 0x80u) == 0)
      {
        v48 = *(v44 + 23);
      }

      else
      {
        v48 = v47;
      }

      if (v48 >= 0x80)
      {
        v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48);
        v45 = *(v44 + 23);
        v47 = *(v44 + 8);
        v41 = *(this + 12);
        v46 = *(v44 + 23);
      }

      else
      {
        v49 = 1;
      }

      if (v46 < 0)
      {
        v45 = v47;
      }

      v42 = (v49 + v42 + v45);
    }
  }

  *(this + 30) = v42;
  return v42;
}

wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase *awd::metrics::BluetoothPageScanDevice::CheckTypeAndMergeFrom(awd::metrics::BluetoothPageScanDevice *this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothPageScanDevice::CheckTypeAndMergeFrom();
  }

  return awd::metrics::BluetoothPageScanDevice::MergeFrom(this, lpsrc);
}

wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase *awd::metrics::BluetoothPageScanDevice::CopyFrom(wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase *this, const awd::metrics::BluetoothPageScanDevice *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))(this);

    return awd::metrics::BluetoothPageScanDevice::MergeFrom(v4, a2);
  }

  return this;
}

awd::metrics::BluetoothPageScanDevice *awd::metrics::BluetoothPageScanDevice::Swap(awd::metrics::BluetoothPageScanDevice *this, awd::metrics::BluetoothPageScanDevice *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 16);
    *(v3 + 16) = *(a2 + 16);
    *(a2 + 16) = v5;
    v6 = *(v3 + 17);
    *(v3 + 17) = *(a2 + 17);
    *(a2 + 17) = v6;
    v7 = *(v3 + 18);
    *(v3 + 18) = *(a2 + 18);
    *(a2 + 18) = v7;
    v8 = *(v3 + 19);
    *(v3 + 19) = *(a2 + 19);
    *(a2 + 19) = v8;
    v9 = *(v3 + 20);
    *(v3 + 20) = *(a2 + 20);
    *(a2 + 20) = v9;
    v10 = *(v3 + 21);
    *(v3 + 21) = *(a2 + 21);
    *(a2 + 21) = v10;
    v11 = *(v3 + 22);
    *(v3 + 22) = *(a2 + 22);
    *(a2 + 22) = v11;
    v12 = *(v3 + 23);
    *(v3 + 23) = *(a2 + 23);
    *(a2 + 23) = v12;
    v13 = *(v3 + 24);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 24) = v13;
    v14 = *(v3 + 25);
    *(v3 + 25) = *(a2 + 25);
    *(a2 + 25) = v14;
    v15 = *(v3 + 26);
    *(v3 + 26) = *(a2 + 26);
    *(a2 + 26) = v15;
    v16 = *(v3 + 27);
    *(v3 + 27) = *(a2 + 27);
    *(a2 + 27) = v16;
    v17 = *(v3 + 28);
    *(v3 + 28) = *(a2 + 28);
    *(a2 + 28) = v17;
    v18 = *(v3 + 29);
    *(v3 + 29) = *(a2 + 29);
    *(a2 + 29) = v18;
    v19 = *(v3 + 31);
    *(v3 + 31) = *(a2 + 31);
    *(a2 + 31) = v19;
    v20 = *(v3 + 30);
    *(v3 + 30) = *(a2 + 30);
    *(a2 + 30) = v20;
  }

  return this;
}

void *awd::metrics::BluetoothExposureNotificationState::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

awd::metrics::BluetoothExposureNotificationState *awd::metrics::BluetoothExposureNotificationState::BluetoothExposureNotificationState(awd::metrics::BluetoothExposureNotificationState *this, const awd::metrics::BluetoothExposureNotificationState *a2)
{
  *this = &unk_2A1D4CA98;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::BluetoothExposureNotificationState::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothExposureNotificationState::MergeFrom(awd::metrics::BluetoothExposureNotificationState *this, const awd::metrics::BluetoothExposureNotificationState *a2)
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

void sub_2963C3648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothExposureNotificationState::~BluetoothExposureNotificationState(awd::metrics::BluetoothExposureNotificationState *this)
{
  *this = &unk_2A1D4CA98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4CA98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4CA98;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothExposureNotificationState::default_instance(awd::metrics::BluetoothExposureNotificationState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothExposureNotificationState::default_instance_;
  if (!awd::metrics::BluetoothExposureNotificationState::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothExposureNotificationState::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothExposureNotificationState::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothExposureNotificationState::MergePartialFromCodedStream(awd::metrics::BluetoothExposureNotificationState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t awd::metrics::BluetoothExposureNotificationState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

uint64_t awd::metrics::BluetoothExposureNotificationState::ByteSize(awd::metrics::BluetoothExposureNotificationState *this)
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

void awd::metrics::BluetoothExposureNotificationState::CheckTypeAndMergeFrom(awd::metrics::BluetoothExposureNotificationState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothExposureNotificationState::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothExposureNotificationState::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothExposureNotificationState::CopyFrom(awd::metrics::BluetoothExposureNotificationState *this, const awd::metrics::BluetoothExposureNotificationState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothExposureNotificationState::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothExposureNotificationState::Swap(uint64_t this, awd::metrics::BluetoothExposureNotificationState *a2)
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

void *awd::metrics::BluetoothExposureNotificationOnboarding::SharedCtor(void *this)
{
  this[3] = 0;
  this[1] = 0;
  *(this + 14) = 0;
  return this;
}

awd::metrics::BluetoothExposureNotificationOnboarding *awd::metrics::BluetoothExposureNotificationOnboarding::BluetoothExposureNotificationOnboarding(awd::metrics::BluetoothExposureNotificationOnboarding *this, const awd::metrics::BluetoothExposureNotificationOnboarding *a2)
{
  *(this + 3) = 0;
  *this = &unk_2A1D4CB10;
  *(this + 1) = 0;
  *(this + 14) = 0;
  awd::metrics::BluetoothExposureNotificationOnboarding::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothExposureNotificationOnboarding::MergeFrom(awd::metrics::BluetoothExposureNotificationOnboarding *this, const awd::metrics::BluetoothExposureNotificationOnboarding *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
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
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 7) |= 2u;
    *(this + 4) = v7;
    v4 = *(a2 + 7);
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
    v8 = *(a2 + 20);
    *(this + 7) |= 4u;
    *(this + 20) = v8;
    if ((*(a2 + 7) & 8) == 0)
    {
      return;
    }

LABEL_8:
    v5 = *(a2 + 21);
    *(this + 7) |= 8u;
    *(this + 21) = v5;
  }
}

void sub_2963C3DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothExposureNotificationOnboarding::~BluetoothExposureNotificationOnboarding(awd::metrics::BluetoothExposureNotificationOnboarding *this)
{
  *this = &unk_2A1D4CB10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4CB10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4CB10;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothExposureNotificationOnboarding::default_instance(awd::metrics::BluetoothExposureNotificationOnboarding *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothExposureNotificationOnboarding::default_instance_;
  if (!awd::metrics::BluetoothExposureNotificationOnboarding::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothExposureNotificationOnboarding::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothExposureNotificationOnboarding::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 14) = 0;
    *(this + 8) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothExposureNotificationOnboarding::MergePartialFromCodedStream(awd::metrics::BluetoothExposureNotificationOnboarding *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
            v13 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_45;
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

      *(this + 7) |= 1u;
      if (v12 < v7 && *v12 == 16)
      {
        v8 = v12 + 1;
        *(a2 + 1) = v8;
LABEL_29:
        if (v8 >= v7 || (v14 = *v8, v14 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v15 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v14;
          v15 = v8 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 7) |= 2u;
        if (v15 < v7 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_37:
          v22 = 0;
          if (v13 >= v7 || (v16 = *v13, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
            if (!result)
            {
              return result;
            }

            v16 = v22;
            v17 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 20) = v16 != 0;
          *(this + 7) |= 4u;
          if (v17 < v7 && *v17 == 32)
          {
            v9 = v17 + 1;
            *(a2 + 1) = v9;
LABEL_45:
            v21 = 0;
            if (v9 >= v7 || (v18 = *v9, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
              if (!result)
              {
                return result;
              }

              v18 = v21;
              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v19 = v9 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 21) = v18 != 0;
            *(this + 7) |= 8u;
            if (v19 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t awd::metrics::BluetoothExposureNotificationOnboarding::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 28);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 20), a2, a4);
      if ((*(v5 + 28) & 8) == 0)
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 28);
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
  v7 = *(v5 + 21);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t awd::metrics::BluetoothExposureNotificationOnboarding::ByteSize(awd::metrics::BluetoothExposureNotificationOnboarding *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    if (v2)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v2 = *(this + 7);
      if ((v2 & 2) == 0)
      {
LABEL_11:
        result = ((v2 >> 1) & 2) + v3 + ((v2 >> 2) & 2);
        goto LABEL_12;
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
      v2 = *(this + 7);
    }

    else
    {
      v6 = 2;
    }

    v3 += v6;
    goto LABEL_11;
  }

  result = 0;
LABEL_12:
  *(this + 6) = result;
  return result;
}

void awd::metrics::BluetoothExposureNotificationOnboarding::CheckTypeAndMergeFrom(awd::metrics::BluetoothExposureNotificationOnboarding *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothExposureNotificationOnboarding::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothExposureNotificationOnboarding::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothExposureNotificationOnboarding::CopyFrom(awd::metrics::BluetoothExposureNotificationOnboarding *this, const awd::metrics::BluetoothExposureNotificationOnboarding *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothExposureNotificationOnboarding::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothExposureNotificationOnboarding::Swap(uint64_t this, awd::metrics::BluetoothExposureNotificationOnboarding *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LOBYTE(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
    LOBYTE(v2) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return this;
}

double awd::metrics::BluetoothAccessoryBatteryHealth::SharedCtor(awd::metrics::BluetoothAccessoryBatteryHealth *this)
{
  *(this + 50) = 0;
  *(this + 204) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  return result;
}

awd::metrics::BluetoothAccessoryBatteryHealth *awd::metrics::BluetoothAccessoryBatteryHealth::BluetoothAccessoryBatteryHealth(awd::metrics::BluetoothAccessoryBatteryHealth *this, const awd::metrics::BluetoothAccessoryBatteryHealth *a2)
{
  *this = &unk_2A1D4CB88;
  *(this + 72) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 196) = 0u;
  awd::metrics::BluetoothAccessoryBatteryHealth::MergeFrom(this, a2);
  return this;
}

void sub_2963C4554(_Unwind_Exception *a1)
{
  v4 = *(v1 + 23);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  awd::metrics::BluetoothAccessoryBatteryHealth::BluetoothAccessoryBatteryHealth(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryBatteryHealth::MergeFrom(awd::metrics::BluetoothAccessoryBatteryHealth *this, const awd::metrics::BluetoothAccessoryBatteryHealth *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v47);
  }

  v4 = *(a2 + 20);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 9, *(this + 20) + v4);
    memcpy((*(this + 9) + 4 * *(this + 20)), *(a2 + 9), 4 * *(a2 + 20));
    *(this + 20) += *(a2 + 20);
  }

  v5 = *(a2 + 48);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 23, *(this + 48) + v5);
    memcpy((*(this + 23) + 4 * *(this + 48)), *(a2 + 23), 4 * *(a2 + 48));
    *(this + 48) += *(a2 + 48);
  }

  v6 = *(a2 + 51);
  if (!v6)
  {
    goto LABEL_17;
  }

  if (v6)
  {
    v12 = *(a2 + 1);
    *(this + 51) |= 1u;
    *(this + 1) = v12;
    v6 = *(a2 + 51);
    if ((v6 & 2) == 0)
    {
LABEL_10:
      if ((v6 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_58;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_10;
  }

  v13 = *(a2 + 4);
  *(this + 51) |= 2u;
  *(this + 4) = v13;
  v6 = *(a2 + 51);
  if ((v6 & 4) == 0)
  {
LABEL_11:
    if ((v6 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  v14 = *(a2 + 5);
  *(this + 51) |= 4u;
  *(this + 5) = v14;
  v6 = *(a2 + 51);
  if ((v6 & 8) == 0)
  {
LABEL_12:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_59:
  v15 = *(a2 + 6);
  *(this + 51) |= 8u;
  *(this + 6) = v15;
  v6 = *(a2 + 51);
  if ((v6 & 0x10) == 0)
  {
LABEL_13:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_61:
    v17 = *(a2 + 8);
    *(this + 51) |= 0x20u;
    *(this + 8) = v17;
    v6 = *(a2 + 51);
    if ((v6 & 0x40) == 0)
    {
LABEL_15:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_62;
  }

LABEL_60:
  v16 = *(a2 + 7);
  *(this + 51) |= 0x10u;
  *(this + 7) = v16;
  v6 = *(a2 + 51);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_61;
  }

LABEL_14:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_62:
  v18 = *(a2 + 9);
  *(this + 51) |= 0x40u;
  *(this + 9) = v18;
  v6 = *(a2 + 51);
  if ((v6 & 0x80) != 0)
  {
LABEL_16:
    v7 = *(a2 + 10);
    *(this + 51) |= 0x80u;
    *(this + 10) = v7;
    v6 = *(a2 + 51);
  }

LABEL_17:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_27;
  }

  if ((v6 & 0x100) != 0)
  {
    v19 = *(a2 + 11);
    *(this + 51) |= 0x100u;
    *(this + 11) = v19;
    v6 = *(a2 + 51);
    if ((v6 & 0x200) == 0)
    {
LABEL_20:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_66;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v20 = *(a2 + 12);
  *(this + 51) |= 0x200u;
  *(this + 12) = v20;
  v6 = *(a2 + 51);
  if ((v6 & 0x400) == 0)
  {
LABEL_21:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_67;
  }

LABEL_66:
  v21 = *(a2 + 13);
  *(this + 51) |= 0x400u;
  *(this + 13) = v21;
  v6 = *(a2 + 51);
  if ((v6 & 0x800) == 0)
  {
LABEL_22:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_68;
  }

LABEL_67:
  v22 = *(a2 + 14);
  *(this + 51) |= 0x800u;
  *(this + 14) = v22;
  v6 = *(a2 + 51);
  if ((v6 & 0x1000) == 0)
  {
LABEL_23:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

LABEL_68:
  v23 = *(a2 + 15);
  *(this + 51) |= 0x1000u;
  *(this + 15) = v23;
  v6 = *(a2 + 51);
  if ((v6 & 0x2000) == 0)
  {
LABEL_24:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_70;
  }

LABEL_69:
  v24 = *(a2 + 16);
  *(this + 51) |= 0x2000u;
  *(this + 16) = v24;
  v6 = *(a2 + 51);
  if ((v6 & 0x4000) == 0)
  {
LABEL_25:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_70:
  v25 = *(a2 + 17);
  *(this + 51) |= 0x4000u;
  *(this + 17) = v25;
  v6 = *(a2 + 51);
  if ((v6 & 0x8000) != 0)
  {
LABEL_26:
    v8 = *(a2 + 22);
    *(this + 51) |= 0x8000u;
    *(this + 22) = v8;
    v6 = *(a2 + 51);
  }

LABEL_27:
  if ((v6 & 0x1FE0000) == 0)
  {
    goto LABEL_36;
  }

  if ((v6 & 0x20000) != 0)
  {
    v26 = *(a2 + 23);
    *(this + 51) |= 0x20000u;
    *(this + 23) = v26;
    v6 = *(a2 + 51);
    if ((v6 & 0x40000) == 0)
    {
LABEL_30:
      if ((v6 & 0x80000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_74;
    }
  }

  else if ((v6 & 0x40000) == 0)
  {
    goto LABEL_30;
  }

  v27 = *(a2 + 24);
  *(this + 51) |= 0x40000u;
  *(this + 24) = v27;
  v6 = *(a2 + 51);
  if ((v6 & 0x80000) == 0)
  {
LABEL_31:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  v28 = *(a2 + 25);
  *(this + 51) |= 0x80000u;
  *(this + 25) = v28;
  v6 = *(a2 + 51);
  if ((v6 & 0x100000) == 0)
  {
LABEL_32:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  v29 = *(a2 + 26);
  *(this + 51) |= 0x100000u;
  *(this + 26) = v29;
  v6 = *(a2 + 51);
  if ((v6 & 0x200000) == 0)
  {
LABEL_33:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  v30 = *(a2 + 27);
  *(this + 51) |= 0x200000u;
  *(this + 27) = v30;
  v6 = *(a2 + 51);
  if ((v6 & 0x400000) == 0)
  {
LABEL_34:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_77:
  v31 = *(a2 + 28);
  *(this + 51) |= 0x400000u;
  *(this + 28) = v31;
  v6 = *(a2 + 51);
  if ((v6 & 0x800000) != 0)
  {
LABEL_35:
    v9 = *(a2 + 29);
    *(this + 51) |= 0x800000u;
    *(this + 29) = v9;
    v6 = *(a2 + 51);
  }

LABEL_36:
  if (!HIBYTE(v6))
  {
    goto LABEL_45;
  }

  if ((v6 & 0x1000000) != 0)
  {
    v39 = *(a2 + 30);
    *(this + 51) |= 0x1000000u;
    *(this + 30) = v39;
    v6 = *(a2 + 51);
    if ((v6 & 0x2000000) == 0)
    {
LABEL_39:
      if ((v6 & 0x4000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_89;
    }
  }

  else if ((v6 & 0x2000000) == 0)
  {
    goto LABEL_39;
  }

  v40 = *(a2 + 31);
  *(this + 51) |= 0x2000000u;
  *(this + 31) = v40;
  v6 = *(a2 + 51);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_40:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_90;
  }

LABEL_89:
  v41 = *(a2 + 32);
  *(this + 51) |= 0x4000000u;
  *(this + 32) = v41;
  v6 = *(a2 + 51);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_41:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_91;
  }

LABEL_90:
  v42 = *(a2 + 33);
  *(this + 51) |= 0x8000000u;
  *(this + 33) = v42;
  v6 = *(a2 + 51);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_42:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_92;
  }

LABEL_91:
  v43 = *(a2 + 34);
  *(this + 51) |= 0x10000000u;
  *(this + 34) = v43;
  v6 = *(a2 + 51);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_43:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_93:
    v45 = *(a2 + 36);
    *(this + 51) |= 0x40000000u;
    *(this + 36) = v45;
    if ((*(a2 + 51) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_94;
  }

LABEL_92:
  v44 = *(a2 + 35);
  *(this + 51) |= 0x20000000u;
  *(this + 35) = v44;
  v6 = *(a2 + 51);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_93;
  }

LABEL_44:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

LABEL_94:
  v46 = *(a2 + 37);
  *(this + 51) |= 0x80000000;
  *(this + 37) = v46;
LABEL_45:
  LOBYTE(v10) = *(a2 + 208);
  if (!v10)
  {
    return;
  }

  if (*(a2 + 208))
  {
    v32 = *(a2 + 38);
    *(this + 52) |= 1u;
    *(this + 38) = v32;
    v10 = *(a2 + 52);
    if ((v10 & 2) == 0)
    {
LABEL_48:
      if ((v10 & 4) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_81;
    }
  }

  else if ((*(a2 + 208) & 2) == 0)
  {
    goto LABEL_48;
  }

  v33 = *(a2 + 39);
  *(this + 52) |= 2u;
  *(this + 39) = v33;
  v10 = *(a2 + 52);
  if ((v10 & 4) == 0)
  {
LABEL_49:
    if ((v10 & 8) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_82;
  }

LABEL_81:
  v34 = *(a2 + 40);
  *(this + 52) |= 4u;
  *(this + 40) = v34;
  v10 = *(a2 + 52);
  if ((v10 & 8) == 0)
  {
LABEL_50:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_83;
  }

LABEL_82:
  v35 = *(a2 + 41);
  *(this + 52) |= 8u;
  *(this + 41) = v35;
  v10 = *(a2 + 52);
  if ((v10 & 0x10) == 0)
  {
LABEL_51:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_84;
  }

LABEL_83:
  v36 = *(a2 + 42);
  *(this + 52) |= 0x10u;
  *(this + 42) = v36;
  v10 = *(a2 + 52);
  if ((v10 & 0x20) == 0)
  {
LABEL_52:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_85;
  }

LABEL_84:
  v37 = *(a2 + 43);
  *(this + 52) |= 0x20u;
  *(this + 43) = v37;
  v10 = *(a2 + 52);
  if ((v10 & 0x40) == 0)
  {
LABEL_53:
    if ((v10 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_54;
  }

LABEL_85:
  v38 = *(a2 + 44);
  *(this + 52) |= 0x40u;
  *(this + 44) = v38;
  if ((*(a2 + 52) & 0x80) != 0)
  {
LABEL_54:
    v11 = *(a2 + 45);
    *(this + 52) |= 0x80u;
    *(this + 45) = v11;
  }
}

void sub_2963C4B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryBatteryHealth::~BluetoothAccessoryBatteryHealth(awd::metrics::BluetoothAccessoryBatteryHealth *this)
{
  *this = &unk_2A1D4CB88;
  v2 = *(this + 23);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 9);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothAccessoryBatteryHealth::~BluetoothAccessoryBatteryHealth(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothAccessoryBatteryHealth::default_instance(awd::metrics::BluetoothAccessoryBatteryHealth *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAccessoryBatteryHealth::default_instance_;
  if (!awd::metrics::BluetoothAccessoryBatteryHealth::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAccessoryBatteryHealth::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryBatteryHealth::Clear(uint64_t this)
{
  v1 = *(this + 204);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 88) = 0;
    *(this + 44) = 0;
    *(this + 60) = 0;
    *(this + 52) = 0;
    *(this + 68) = 0;
  }

  if ((v1 & 0x1FE0000) != 0)
  {
    *(this + 100) = 0;
    *(this + 92) = 0;
    *(this + 116) = 0;
    *(this + 108) = 0;
  }

  if (HIBYTE(v1))
  {
    *(this + 136) = 0u;
    *(this + 120) = 0u;
  }

  if (*(this + 208))
  {
    *(this + 168) = 0u;
    *(this + 152) = 0u;
  }

  *(this + 80) = 0;
  *(this + 192) = 0;
  *(this + 204) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAccessoryBatteryHealth::MergePartialFromCodedStream(awd::metrics::BluetoothAccessoryBatteryHealth *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_94;
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

        *(this + 51) |= 1u;
        if (v10 < v7 && *v10 == 16)
        {
          v29 = v10 + 1;
          *(a2 + 1) = v29;
          goto LABEL_105;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v29 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_105:
        if (v29 >= v7 || (v53 = *v29, v53 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v54 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v53;
          v54 = v29 + 1;
          *(a2 + 1) = v54;
        }

        *(this + 51) |= 2u;
        if (v54 >= v7 || *v54 != 24)
        {
          continue;
        }

        v25 = v54 + 1;
        *(a2 + 1) = v25;
LABEL_113:
        if (v25 >= v7 || (v55 = *v25, v55 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v56 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v55;
          v56 = v25 + 1;
          *(a2 + 1) = v56;
        }

        *(this + 51) |= 4u;
        if (v56 >= v7 || *v56 != 32)
        {
          continue;
        }

        v27 = v56 + 1;
        *(a2 + 1) = v27;
LABEL_121:
        if (v27 >= v7 || (v57 = *v27, v57 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v58 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v57;
          v58 = v27 + 1;
          *(a2 + 1) = v58;
        }

        *(this + 51) |= 8u;
        if (v58 >= v7 || *v58 != 40)
        {
          continue;
        }

        v20 = v58 + 1;
        *(a2 + 1) = v20;
LABEL_129:
        if (v20 >= v7 || (v59 = *v20, v59 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v60 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v59;
          v60 = v20 + 1;
          *(a2 + 1) = v60;
        }

        *(this + 51) |= 0x10u;
        if (v60 >= v7 || *v60 != 48)
        {
          continue;
        }

        v33 = v60 + 1;
        *(a2 + 1) = v33;
LABEL_137:
        if (v33 >= v7 || (v61 = *v33, v61 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v62 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v61;
          v62 = v33 + 1;
          *(a2 + 1) = v62;
        }

        *(this + 51) |= 0x20u;
        if (v62 >= v7 || *v62 != 56)
        {
          continue;
        }

        v36 = v62 + 1;
        *(a2 + 1) = v36;
LABEL_145:
        if (v36 >= v7 || (v63 = *v36, v63 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v64 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v63;
          v64 = v36 + 1;
          *(a2 + 1) = v64;
        }

        *(this + 51) |= 0x40u;
        if (v64 >= v7 || *v64 != 64)
        {
          continue;
        }

        v28 = v64 + 1;
        *(a2 + 1) = v28;
LABEL_153:
        if (v28 >= v7 || (v65 = *v28, v65 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v66 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v65;
          v66 = v28 + 1;
          *(a2 + 1) = v66;
        }

        *(this + 51) |= 0x80u;
        if (v66 >= v7 || *v66 != 72)
        {
          continue;
        }

        v39 = v66 + 1;
        *(a2 + 1) = v39;
LABEL_161:
        if (v39 >= v7 || (v67 = *v39, v67 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v68 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v67;
          v68 = v39 + 1;
          *(a2 + 1) = v68;
        }

        *(this + 51) |= 0x100u;
        if (v68 >= v7 || *v68 != 80)
        {
          continue;
        }

        v22 = v68 + 1;
        *(a2 + 1) = v22;
LABEL_169:
        if (v22 >= v7 || (v69 = *v22, v69 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v70 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v69;
          v70 = v22 + 1;
          *(a2 + 1) = v70;
        }

        *(this + 51) |= 0x200u;
        if (v70 >= v7 || *v70 != 88)
        {
          continue;
        }

        v38 = v70 + 1;
        *(a2 + 1) = v38;
LABEL_177:
        if (v38 >= v7 || (v71 = *v38, v71 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v72 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v71;
          v72 = v38 + 1;
          *(a2 + 1) = v72;
        }

        *(this + 51) |= 0x400u;
        if (v72 >= v7 || *v72 != 96)
        {
          continue;
        }

        v19 = v72 + 1;
        *(a2 + 1) = v19;
LABEL_185:
        if (v19 >= v7 || (v73 = *v19, v73 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v74 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v73;
          v74 = v19 + 1;
          *(a2 + 1) = v74;
        }

        *(this + 51) |= 0x800u;
        if (v74 >= v7 || *v74 != 104)
        {
          continue;
        }

        v21 = v74 + 1;
        *(a2 + 1) = v21;
LABEL_193:
        if (v21 >= v7 || (v75 = *v21, v75 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v76 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v75;
          v76 = v21 + 1;
          *(a2 + 1) = v76;
        }

        *(this + 51) |= 0x1000u;
        if (v76 >= v7 || *v76 != 112)
        {
          continue;
        }

        v35 = v76 + 1;
        *(a2 + 1) = v35;
LABEL_201:
        if (v35 >= v7 || (v77 = *v35, v77 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v78 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v77;
          v78 = v35 + 1;
          *(a2 + 1) = v78;
        }

        *(this + 51) |= 0x2000u;
        if (v78 >= v7 || *v78 != 120)
        {
          continue;
        }

        v17 = v78 + 1;
        *(a2 + 1) = v17;
LABEL_209:
        if (v17 >= v7 || (v79 = *v17, v79 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v80 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v79;
          v80 = (v17 + 1);
          *(a2 + 1) = v80;
        }

        *(this + 51) |= 0x4000u;
        if (v7 - v80 < 2 || *v80 != 128 || v80[1] != 1)
        {
          continue;
        }

        v26 = (v80 + 2);
        *(a2 + 1) = v26;
LABEL_218:
        if (v26 >= v7 || (v81 = *v26, v81 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 22);
          if (!result)
          {
            return result;
          }

          v82 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 22) = v81;
          v82 = (v26 + 1);
          *(a2 + 1) = v82;
        }

        *(this + 51) |= 0x8000u;
        if (v7 - v82 >= 2 && *v82 == 136 && v82[1] == 1)
        {
          goto LABEL_226;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v25 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_113;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v27 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_121;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_129;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v33 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_137;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v36 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_145;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v28 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_153;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v39 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_161;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v22 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_169;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v38 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_177;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v19 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_185;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v21 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_193;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v35 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_201;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_209;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v26 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_218;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 72);
            if (!result)
            {
              return result;
            }

            goto LABEL_245;
          }

LABEL_94:
          if (v6 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v51 = *(a2 + 1);
          v7 = *(a2 + 2);
          while (1)
          {
            v150 = 0;
            if (v51 >= v7 || *v51 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v150))
              {
                return 0;
              }
            }

            else
            {
              v150 = *v51;
              *(a2 + 1) = v51 + 1;
            }

            v83 = *(this + 20);
            if (v83 == *(this + 21))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 9, v83 + 1);
              v83 = *(this + 20);
            }

            v84 = v150;
            v85 = *(this + 9);
            *(this + 20) = v83 + 1;
            *(v85 + 4 * v83) = v84;
            v86 = *(this + 21) - *(this + 20);
            if (v86 >= 1)
            {
              v87 = v86 + 1;
              do
              {
                v88 = *(a2 + 1);
                v89 = *(a2 + 2);
                if (v89 - v88 < 2 || *v88 != 136 || v88[1] != 1)
                {
                  break;
                }

                *(a2 + 1) = v88 + 2;
                if ((v88 + 2) >= v89 || v88[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v150))
                  {
                    return 0;
                  }
                }

                else
                {
                  v150 = v88[2];
                  *(a2 + 1) = v88 + 3;
                }

                v90 = *(this + 20);
                if (v90 >= *(this + 21))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v151);
                  v90 = *(this + 20);
                }

                v91 = v150;
                v92 = *(this + 9);
                *(this + 20) = v90 + 1;
                *(v92 + 4 * v90) = v91;
                --v87;
              }

              while (v87 > 1);
            }

LABEL_245:
            v82 = *(a2 + 1);
            v7 = *(a2 + 2);
            if (v7 - v82 < 2)
            {
              goto LABEL_1;
            }

            v93 = *v82;
            if (v93 == 144)
            {
              break;
            }

            if (v93 != 136 || v82[1] != 1)
            {
              goto LABEL_1;
            }

LABEL_226:
            v51 = (v82 + 2);
            *(a2 + 1) = v51;
          }

          if (v82[1] == 1)
          {
            v31 = (v82 + 2);
            *(a2 + 1) = v31;
LABEL_252:
            if (v31 >= v7 || (v94 = *v31, v94 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 23);
              if (!result)
              {
                return result;
              }

              v95 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 23) = v94;
              v95 = (v31 + 1);
              *(a2 + 1) = v95;
            }

            *(this + 51) |= 0x20000u;
            if (v7 - v95 >= 2 && *v95 == 152 && v95[1] == 1)
            {
              v37 = (v95 + 2);
              *(a2 + 1) = v37;
LABEL_261:
              if (v37 >= v7 || (v96 = *v37, v96 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 24);
                if (!result)
                {
                  return result;
                }

                v97 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 24) = v96;
                v97 = (v37 + 1);
                *(a2 + 1) = v97;
              }

              *(this + 51) |= 0x40000u;
              if (v7 - v97 >= 2 && *v97 == 160 && v97[1] == 1)
              {
                v45 = (v97 + 2);
                *(a2 + 1) = v45;
LABEL_270:
                if (v45 >= v7 || (v98 = *v45, v98 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 25);
                  if (!result)
                  {
                    return result;
                  }

                  v99 = *(a2 + 1);
                  v7 = *(a2 + 2);
                }

                else
                {
                  *(this + 25) = v98;
                  v99 = (v45 + 1);
                  *(a2 + 1) = v99;
                }

                *(this + 51) |= 0x80000u;
                if (v7 - v99 >= 2 && *v99 == 168 && v99[1] == 1)
                {
                  v32 = (v99 + 2);
                  *(a2 + 1) = v32;
LABEL_279:
                  if (v32 >= v7 || (v100 = *v32, v100 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 26);
                    if (!result)
                    {
                      return result;
                    }

                    v101 = *(a2 + 1);
                    v7 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 26) = v100;
                    v101 = (v32 + 1);
                    *(a2 + 1) = v101;
                  }

                  *(this + 51) |= 0x100000u;
                  if (v7 - v101 >= 2 && *v101 == 176 && v101[1] == 1)
                  {
                    v34 = (v101 + 2);
                    *(a2 + 1) = v34;
LABEL_288:
                    if (v34 >= v7 || (v102 = *v34, v102 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 27);
                      if (!result)
                      {
                        return result;
                      }

                      v103 = *(a2 + 1);
                      v7 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 27) = v102;
                      v103 = (v34 + 1);
                      *(a2 + 1) = v103;
                    }

                    *(this + 51) |= 0x200000u;
                    if (v7 - v103 >= 2 && *v103 == 184 && v103[1] == 1)
                    {
                      v42 = (v103 + 2);
                      *(a2 + 1) = v42;
LABEL_297:
                      if (v42 >= v7 || (v104 = *v42, v104 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 28);
                        if (!result)
                        {
                          return result;
                        }

                        v105 = *(a2 + 1);
                        v7 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 28) = v104;
                        v105 = (v42 + 1);
                        *(a2 + 1) = v105;
                      }

                      *(this + 51) |= 0x400000u;
                      if (v7 - v105 >= 2 && *v105 == 192 && v105[1] == 1)
                      {
                        v46 = (v105 + 2);
                        *(a2 + 1) = v46;
LABEL_306:
                        if (v46 >= v7 || (v106 = *v46, v106 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 29);
                          if (!result)
                          {
                            return result;
                          }

                          v107 = *(a2 + 1);
                          v7 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 29) = v106;
                          v107 = (v46 + 1);
                          *(a2 + 1) = v107;
                        }

                        *(this + 51) |= 0x800000u;
                        if (v7 - v107 >= 2 && *v107 == 200 && v107[1] == 1)
                        {
                          v24 = (v107 + 2);
                          *(a2 + 1) = v24;
LABEL_315:
                          if (v24 >= v7 || (v108 = *v24, v108 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
                            if (!result)
                            {
                              return result;
                            }

                            v109 = *(a2 + 1);
                            v7 = *(a2 + 2);
                          }

                          else
                          {
                            *(this + 30) = v108;
                            v109 = (v24 + 1);
                            *(a2 + 1) = v109;
                          }

                          *(this + 51) |= 0x1000000u;
                          if (v7 - v109 >= 2 && *v109 == 208 && v109[1] == 1)
                          {
                            v23 = (v109 + 2);
                            *(a2 + 1) = v23;
LABEL_324:
                            if (v23 >= v7 || (v110 = *v23, v110 < 0))
                            {
                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 31);
                              if (!result)
                              {
                                return result;
                              }

                              v111 = *(a2 + 1);
                              v7 = *(a2 + 2);
                            }

                            else
                            {
                              *(this + 31) = v110;
                              v111 = (v23 + 1);
                              *(a2 + 1) = v111;
                            }

                            *(this + 51) |= 0x2000000u;
                            if (v7 - v111 >= 2 && *v111 == 216 && v111[1] == 1)
                            {
                              v50 = (v111 + 2);
                              *(a2 + 1) = v50;
LABEL_333:
                              if (v50 >= v7 || (v112 = *v50, v112 < 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 32);
                                if (!result)
                                {
                                  return result;
                                }

                                v113 = *(a2 + 1);
                                v7 = *(a2 + 2);
                              }

                              else
                              {
                                *(this + 32) = v112;
                                v113 = (v50 + 1);
                                *(a2 + 1) = v113;
                              }

                              *(this + 51) |= 0x4000000u;
                              if (v7 - v113 >= 2 && *v113 == 224 && v113[1] == 1)
                              {
                                v14 = (v113 + 2);
                                *(a2 + 1) = v14;
LABEL_342:
                                if (v14 >= v7 || (v114 = *v14, v114 < 0))
                                {
                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 33);
                                  if (!result)
                                  {
                                    return result;
                                  }

                                  v115 = *(a2 + 1);
                                  v7 = *(a2 + 2);
                                }

                                else
                                {
                                  *(this + 33) = v114;
                                  v115 = (v14 + 1);
                                  *(a2 + 1) = v115;
                                }

                                *(this + 51) |= 0x8000000u;
                                if (v7 - v115 >= 2 && *v115 == 232 && v115[1] == 1)
                                {
                                  v47 = (v115 + 2);
                                  *(a2 + 1) = v47;
LABEL_351:
                                  if (v47 >= v7 || (v116 = *v47, v116 < 0))
                                  {
                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 34);
                                    if (!result)
                                    {
                                      return result;
                                    }

                                    v117 = *(a2 + 1);
                                    v7 = *(a2 + 2);
                                  }

                                  else
                                  {
                                    *(this + 34) = v116;
                                    v117 = (v47 + 1);
                                    *(a2 + 1) = v117;
                                  }

                                  *(this + 51) |= 0x10000000u;
                                  if (v7 - v117 >= 2 && *v117 == 240 && v117[1] == 1)
                                  {
                                    v48 = (v117 + 2);
                                    *(a2 + 1) = v48;
LABEL_360:
                                    if (v48 >= v7 || (v118 = *v48, v118 < 0))
                                    {
                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 35);
                                      if (!result)
                                      {
                                        return result;
                                      }

                                      v119 = *(a2 + 1);
                                      v7 = *(a2 + 2);
                                    }

                                    else
                                    {
                                      *(this + 35) = v118;
                                      v119 = (v48 + 1);
                                      *(a2 + 1) = v119;
                                    }

                                    *(this + 51) |= 0x20000000u;
                                    if (v7 - v119 >= 2 && *v119 == 248 && v119[1] == 1)
                                    {
                                      v40 = (v119 + 2);
                                      *(a2 + 1) = v40;
LABEL_369:
                                      if (v40 >= v7 || (v120 = *v40, v120 < 0))
                                      {
                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 36);
                                        if (!result)
                                        {
                                          return result;
                                        }

                                        v121 = *(a2 + 1);
                                        v7 = *(a2 + 2);
                                      }

                                      else
                                      {
                                        *(this + 36) = v120;
                                        v121 = (v40 + 1);
                                        *(a2 + 1) = v121;
                                      }

                                      *(this + 51) |= 0x40000000u;
                                      if (v7 - v121 >= 2 && *v121 == 128 && v121[1] == 2)
                                      {
                                        v30 = (v121 + 2);
                                        *(a2 + 1) = v30;
LABEL_378:
                                        if (v30 >= v7 || (v122 = *v30, v122 < 0))
                                        {
                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 37);
                                          if (!result)
                                          {
                                            return result;
                                          }

                                          v123 = *(a2 + 1);
                                          v7 = *(a2 + 2);
                                        }

                                        else
                                        {
                                          *(this + 37) = v122;
                                          v123 = (v30 + 1);
                                          *(a2 + 1) = v123;
                                        }

                                        *(this + 51) |= 0x80000000;
                                        if (v7 - v123 >= 2 && *v123 == 136 && v123[1] == 2)
                                        {
                                          v41 = (v123 + 2);
                                          *(a2 + 1) = v41;
LABEL_387:
                                          if (v41 >= v7 || (v124 = *v41, v124 < 0))
                                          {
                                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 38);
                                            if (!result)
                                            {
                                              return result;
                                            }

                                            v125 = *(a2 + 1);
                                            v7 = *(a2 + 2);
                                          }

                                          else
                                          {
                                            *(this + 38) = v124;
                                            v125 = (v41 + 1);
                                            *(a2 + 1) = v125;
                                          }

                                          *(this + 52) |= 1u;
                                          if (v7 - v125 >= 2 && *v125 == 144 && v125[1] == 2)
                                          {
                                            v18 = (v125 + 2);
                                            *(a2 + 1) = v18;
LABEL_396:
                                            if (v18 >= v7 || (v126 = *v18, v126 < 0))
                                            {
                                              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 39);
                                              if (!result)
                                              {
                                                return result;
                                              }

                                              v127 = *(a2 + 1);
                                              v7 = *(a2 + 2);
                                            }

                                            else
                                            {
                                              *(this + 39) = v126;
                                              v127 = (v18 + 1);
                                              *(a2 + 1) = v127;
                                            }

                                            *(this + 52) |= 2u;
                                            if (v7 - v127 >= 2 && *v127 == 152 && v127[1] == 2)
                                            {
                                              v15 = (v127 + 2);
                                              *(a2 + 1) = v15;
LABEL_405:
                                              if (v15 >= v7 || (v128 = *v15, v128 < 0))
                                              {
                                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 40);
                                                if (!result)
                                                {
                                                  return result;
                                                }

                                                v129 = *(a2 + 1);
                                                v7 = *(a2 + 2);
                                              }

                                              else
                                              {
                                                *(this + 40) = v128;
                                                v129 = (v15 + 1);
                                                *(a2 + 1) = v129;
                                              }

                                              *(this + 52) |= 4u;
                                              if (v7 - v129 >= 2 && *v129 == 160 && v129[1] == 2)
                                              {
                                                v12 = (v129 + 2);
                                                *(a2 + 1) = v12;
LABEL_414:
                                                if (v12 >= v7 || (v130 = *v12, v130 < 0))
                                                {
                                                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 41);
                                                  if (!result)
                                                  {
                                                    return result;
                                                  }

                                                  v131 = *(a2 + 1);
                                                  v7 = *(a2 + 2);
                                                }

                                                else
                                                {
                                                  *(this + 41) = v130;
                                                  v131 = (v12 + 1);
                                                  *(a2 + 1) = v131;
                                                }

                                                *(this + 52) |= 8u;
                                                if (v7 - v131 >= 2 && *v131 == 168 && v131[1] == 2)
                                                {
                                                  v13 = (v131 + 2);
                                                  *(a2 + 1) = v13;
LABEL_423:
                                                  if (v13 >= v7 || (v132 = *v13, v132 < 0))
                                                  {
                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 42);
                                                    if (!result)
                                                    {
                                                      return result;
                                                    }

                                                    v133 = *(a2 + 1);
                                                    v7 = *(a2 + 2);
                                                  }

                                                  else
                                                  {
                                                    *(this + 42) = v132;
                                                    v133 = (v13 + 1);
                                                    *(a2 + 1) = v133;
                                                  }

                                                  *(this + 52) |= 0x10u;
                                                  if (v7 - v133 >= 2 && *v133 == 176 && v133[1] == 2)
                                                  {
                                                    v11 = (v133 + 2);
                                                    *(a2 + 1) = v11;
LABEL_432:
                                                    if (v11 >= v7 || (v134 = *v11, v134 < 0))
                                                    {
                                                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 43);
                                                      if (!result)
                                                      {
                                                        return result;
                                                      }

                                                      v135 = *(a2 + 1);
                                                      v7 = *(a2 + 2);
                                                    }

                                                    else
                                                    {
                                                      *(this + 43) = v134;
                                                      v135 = (v11 + 1);
                                                      *(a2 + 1) = v135;
                                                    }

                                                    *(this + 52) |= 0x20u;
                                                    if (v7 - v135 >= 2 && *v135 == 184 && v135[1] == 2)
                                                    {
                                                      v49 = (v135 + 2);
                                                      *(a2 + 1) = v49;
LABEL_441:
                                                      if (v49 >= v7 || (v136 = *v49, v136 < 0))
                                                      {
                                                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 44);
                                                        if (!result)
                                                        {
                                                          return result;
                                                        }

                                                        v137 = *(a2 + 1);
                                                      }

                                                      else
                                                      {
                                                        *(this + 44) = v136;
                                                        v137 = (v49 + 1);
                                                        *(a2 + 1) = v137;
                                                      }

                                                      *(this + 52) |= 0x40u;
                                                      v43 = *(a2 + 2);
                                                      if (v43 - v137 >= 2 && *v137 == 192 && v137[1] == 2)
                                                      {
                                                        v44 = (v137 + 2);
                                                        *(a2 + 1) = v44;
LABEL_450:
                                                        if (v44 >= v43 || (v138 = *v44, v138 < 0))
                                                        {
                                                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 45);
                                                          if (!result)
                                                          {
                                                            return result;
                                                          }

                                                          v139 = *(a2 + 1);
                                                          v43 = *(a2 + 2);
                                                        }

                                                        else
                                                        {
                                                          *(this + 45) = v138;
                                                          v139 = (v44 + 1);
                                                          *(a2 + 1) = v139;
                                                        }

                                                        *(this + 52) |= 0x80u;
                                                        if (v43 - v139 >= 2 && *v139 == 200 && v139[1] == 2)
                                                        {
                                                          goto LABEL_458;
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
                    }
                  }
                }
              }
            }
          }
        }

        continue;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v31 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_252;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v37 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_261;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v45 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_270;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v32 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_279;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v34 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_288;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v42 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_297;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v46 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_306;
      case 0x19u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v24 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_315;
      case 0x1Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v23 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_324;
      case 0x1Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v50 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_333;
      case 0x1Cu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v14 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_342;
      case 0x1Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v47 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_351;
      case 0x1Eu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v48 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_360;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v40 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_369;
      case 0x20u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v30 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_378;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v41 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_387;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v18 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_396;
      case 0x23u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v15 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_405;
      case 0x24u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_414;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_423;
      case 0x26u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v11 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_432;
      case 0x27u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v49 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_441;
      case 0x28u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_94;
        }

        v44 = *(a2 + 1);
        v43 = *(a2 + 2);
        goto LABEL_450;
      case 0x29u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 != 2)
          {
            goto LABEL_94;
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 184);
          if (!result)
          {
            return result;
          }

LABEL_477:
          v139 = *(a2 + 1);
          v43 = *(a2 + 2);
          if (v43 - v139 >= 2 && *v139 == 200 && v139[1] == 2)
          {
LABEL_458:
            v52 = (v139 + 2);
            *(a2 + 1) = v52;
            goto LABEL_459;
          }

          if (v139 == v43 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          continue;
        }

        v52 = *(a2 + 1);
        v43 = *(a2 + 2);
LABEL_459:
        v150 = 0;
        if (v52 < v43 && (*v52 & 0x80000000) == 0)
        {
          v150 = *v52;
          *(a2 + 1) = v52 + 1;
          goto LABEL_463;
        }

        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v150))
        {
LABEL_463:
          v140 = *(this + 48);
          if (v140 == *(this + 49))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 23, v140 + 1);
            v140 = *(this + 48);
          }

          v141 = v150;
          v142 = *(this + 23);
          *(this + 48) = v140 + 1;
          *(v142 + 4 * v140) = v141;
          v143 = *(this + 49) - *(this + 48);
          if (v143 >= 1)
          {
            v144 = v143 + 1;
            do
            {
              v145 = *(a2 + 1);
              v146 = *(a2 + 2);
              if (v146 - v145 < 2 || *v145 != 200 || v145[1] != 2)
              {
                break;
              }

              *(a2 + 1) = v145 + 2;
              if ((v145 + 2) >= v146 || v145[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v150))
                {
                  return 0;
                }
              }

              else
              {
                v150 = v145[2];
                *(a2 + 1) = v145 + 3;
              }

              v147 = *(this + 48);
              if (v147 >= *(this + 49))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v151);
                v147 = *(this + 48);
              }

              v148 = v150;
              v149 = *(this + 23);
              *(this + 48) = v147 + 1;
              *(v149 + 4 * v147) = v148;
              --v144;
            }

            while (v144 > 1);
          }

          goto LABEL_477;
        }

        return 0;
      default:
        goto LABEL_94;
    }
  }
}

void sub_2963C6350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothAccessoryBatteryHealth::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 204);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 204);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_51;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 56), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 60), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 64), a2, a4);
  v6 = *(v5 + 204);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_63:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 68), a2, a4);
  if ((*(v5 + 204) & 0x8000) != 0)
  {
LABEL_17:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 88), a2, a4);
  }

LABEL_18:
  if (*(v5 + 80) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(*(v5 + 72) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 80));
  }

  v8 = *(v5 + 204);
  if ((v8 & 0x20000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 92), a2, a4);
    v8 = *(v5 + 204);
    if ((v8 & 0x40000) == 0)
    {
LABEL_23:
      if ((v8 & 0x80000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_67;
    }
  }

  else if ((v8 & 0x40000) == 0)
  {
    goto LABEL_23;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 96), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x80000) == 0)
  {
LABEL_24:
    if ((v8 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 100), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x100000) == 0)
  {
LABEL_25:
    if ((v8 & 0x200000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, *(v5 + 104), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x200000) == 0)
  {
LABEL_26:
    if ((v8 & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x16, *(v5 + 108), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x400000) == 0)
  {
LABEL_27:
    if ((v8 & 0x800000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x17, *(v5 + 112), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x800000) == 0)
  {
LABEL_28:
    if ((v8 & 0x1000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(v5 + 116), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x1000000) == 0)
  {
LABEL_29:
    if ((v8 & 0x2000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x19, *(v5 + 120), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x2000000) == 0)
  {
LABEL_30:
    if ((v8 & 0x4000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1A, *(v5 + 124), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x4000000) == 0)
  {
LABEL_31:
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1B, *(v5 + 128), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x8000000) == 0)
  {
LABEL_32:
    if ((v8 & 0x10000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1C, *(v5 + 132), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x10000000) == 0)
  {
LABEL_33:
    if ((v8 & 0x20000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(v5 + 136), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x20000000) == 0)
  {
LABEL_34:
    if ((v8 & 0x40000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_78:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1F, *(v5 + 144), a2, a4);
    if ((*(v5 + 204) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_77:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1E, *(v5 + 140), a2, a4);
  v8 = *(v5 + 204);
  if ((v8 & 0x40000000) != 0)
  {
    goto LABEL_78;
  }

LABEL_35:
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

LABEL_79:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x20, *(v5 + 148), a2, a4);
LABEL_36:
  v9 = *(v5 + 208);
  if (v9)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x21, *(v5 + 152), a2, a4);
    v9 = *(v5 + 208);
    if ((v9 & 2) == 0)
    {
LABEL_38:
      if ((v9 & 4) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_82;
    }
  }

  else if ((v9 & 2) == 0)
  {
    goto LABEL_38;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22, *(v5 + 156), a2, a4);
  v9 = *(v5 + 208);
  if ((v9 & 4) == 0)
  {
LABEL_39:
    if ((v9 & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x23, *(v5 + 160), a2, a4);
  v9 = *(v5 + 208);
  if ((v9 & 8) == 0)
  {
LABEL_40:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_84;
  }

LABEL_83:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x24, *(v5 + 164), a2, a4);
  v9 = *(v5 + 208);
  if ((v9 & 0x10) == 0)
  {
LABEL_41:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_85;
  }

LABEL_84:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x25, *(v5 + 168), a2, a4);
  v9 = *(v5 + 208);
  if ((v9 & 0x20) == 0)
  {
LABEL_42:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_86;
  }

LABEL_85:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x26, *(v5 + 172), a2, a4);
  v9 = *(v5 + 208);
  if ((v9 & 0x40) == 0)
  {
LABEL_43:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_86:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x27, *(v5 + 176), a2, a4);
  if ((*(v5 + 208) & 0x80) != 0)
  {
LABEL_44:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x28, *(v5 + 180), a2, a4);
  }

LABEL_45:
  if (*(v5 + 192) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x29, *(*(v5 + 184) + 4 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 192));
  }

  return this;
}

uint64_t awd::metrics::BluetoothAccessoryBatteryHealth::ByteSize(awd::metrics::BluetoothAccessoryBatteryHealth *this)
{
  v2 = *(this + 51);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 51);
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
    v2 = *(this + 51);
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
      v2 = *(this + 51);
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

      goto LABEL_26;
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
    v2 = *(this + 51);
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

    goto LABEL_30;
  }

LABEL_26:
  v10 = *(this + 7);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 51);
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
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_30:
  v12 = *(this + 8);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 51);
  }

  else
  {
    v13 = 2;
  }

  v3 += v13;
  if ((v2 & 0x40) == 0)
  {
LABEL_16:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:
  v14 = *(this + 9);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 51);
  }

  else
  {
    v15 = 2;
  }

  v3 += v15;
  if ((v2 & 0x80) != 0)
  {
LABEL_38:
    v16 = *(this + 10);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = *(this + 51);
    }

    else
    {
      v17 = 2;
    }

    v3 += v17;
  }

LABEL_42:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_84;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = *(this + 11);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v2 = *(this + 51);
    }

    else
    {
      v19 = 2;
    }

    v3 += v19;
    if ((v2 & 0x200) == 0)
    {
LABEL_45:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_60;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v20 = *(this + 12);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 51);
  }

  else
  {
    v21 = 2;
  }

  v3 += v21;
  if ((v2 & 0x400) == 0)
  {
LABEL_46:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_64;
  }

LABEL_60:
  v22 = *(this + 13);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v2 = *(this + 51);
  }

  else
  {
    v23 = 2;
  }

  v3 += v23;
  if ((v2 & 0x800) == 0)
  {
LABEL_47:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_68;
  }

LABEL_64:
  v24 = *(this + 14);
  if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v2 = *(this + 51);
  }

  else
  {
    v25 = 2;
  }

  v3 += v25;
  if ((v2 & 0x1000) == 0)
  {
LABEL_48:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_72;
  }

LABEL_68:
  v26 = *(this + 15);
  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
    v2 = *(this + 51);
  }

  else
  {
    v27 = 2;
  }

  v3 += v27;
  if ((v2 & 0x2000) == 0)
  {
LABEL_49:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_76;
  }

LABEL_72:
  v28 = *(this + 16);
  if (v28 >= 0x80)
  {
    v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
    v2 = *(this + 51);
  }

  else
  {
    v29 = 2;
  }

  v3 += v29;
  if ((v2 & 0x4000) == 0)
  {
LABEL_50:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_80;
  }

LABEL_76:
  v30 = *(this + 17);
  if (v30 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
    v2 = *(this + 51);
  }

  else
  {
    v31 = 2;
  }

  v3 += v31;
  if ((v2 & 0x8000) != 0)
  {
LABEL_80:
    v32 = *(this + 22);
    if (v32 >= 0x80)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
      v2 = *(this + 51);
    }

    else
    {
      v33 = 3;
    }

    v3 += v33;
  }

LABEL_84:
  if ((v2 & 0x1FE0000) == 0)
  {
    goto LABEL_121;
  }

  if ((v2 & 0x20000) != 0)
  {
    v34 = *(this + 23);
    if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
      v2 = *(this + 51);
    }

    else
    {
      v35 = 3;
    }

    v3 += v35;
    if ((v2 & 0x40000) == 0)
    {
LABEL_87:
      if ((v2 & 0x80000) == 0)
      {
        goto LABEL_88;
      }

      goto LABEL_101;
    }
  }

  else if ((v2 & 0x40000) == 0)
  {
    goto LABEL_87;
  }

  v36 = *(this + 24);
  if (v36 >= 0x80)
  {
    v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
    v2 = *(this + 51);
  }

  else
  {
    v37 = 3;
  }

  v3 += v37;
  if ((v2 & 0x80000) == 0)
  {
LABEL_88:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_105;
  }

LABEL_101:
  v38 = *(this + 25);
  if (v38 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
    v2 = *(this + 51);
  }

  else
  {
    v39 = 3;
  }

  v3 += v39;
  if ((v2 & 0x100000) == 0)
  {
LABEL_89:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_109;
  }

LABEL_105:
  v40 = *(this + 26);
  if (v40 >= 0x80)
  {
    v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40) + 2;
    v2 = *(this + 51);
  }

  else
  {
    v41 = 3;
  }

  v3 += v41;
  if ((v2 & 0x200000) == 0)
  {
LABEL_90:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_113;
  }

LABEL_109:
  v42 = *(this + 27);
  if (v42 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v42) + 2;
    v2 = *(this + 51);
  }

  else
  {
    v43 = 3;
  }

  v3 += v43;
  if ((v2 & 0x400000) == 0)
  {
LABEL_91:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_117;
  }

LABEL_113:
  v44 = *(this + 28);
  if (v44 >= 0x80)
  {
    v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v44) + 2;
    v2 = *(this + 51);
  }

  else
  {
    v45 = 3;
  }

  v3 += v45;
  if ((v2 & 0x800000) != 0)
  {
LABEL_117:
    v46 = *(this + 29);
    if (v46 >= 0x80)
    {
      v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 2;
      v2 = *(this + 51);
    }

    else
    {
      v47 = 3;
    }

    v3 += v47;
  }

LABEL_121:
  if (!HIBYTE(v2))
  {
    goto LABEL_163;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v48 = *(this + 30);
    if (v48 >= 0x80)
    {
      v49 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v48) + 2;
      v2 = *(this + 51);
    }

    else
    {
      v49 = 3;
    }

    v3 += v49;
    if ((v2 & 0x2000000) == 0)
    {
LABEL_124:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_139;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_124;
  }

  v50 = *(this + 31);
  if (v50 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50) + 2;
    v2 = *(this + 51);
  }

  else
  {
    v51 = 3;
  }

  v3 += v51;
  if ((v2 & 0x4000000) == 0)
  {
LABEL_125:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_143;
  }

LABEL_139:
  v52 = *(this + 32);
  if (v52 >= 0x80)
  {
    v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52) + 2;
    v2 = *(this + 51);
  }

  else
  {
    v53 = 3;
  }

  v3 += v53;
  if ((v2 & 0x8000000) == 0)
  {
LABEL_126:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_147;
  }

LABEL_143:
  v54 = *(this + 33);
  if (v54 >= 0x80)
  {
    v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54) + 2;
    v2 = *(this + 51);
  }

  else
  {
    v55 = 3;
  }

  v3 += v55;
  if ((v2 & 0x10000000) == 0)
  {
LABEL_127:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_151;
  }

LABEL_147:
  v56 = *(this + 34);
  if (v56 >= 0x80)
  {
    v57 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v56) + 2;
    v2 = *(this + 51);
  }

  else
  {
    v57 = 3;
  }

  v3 += v57;
  if ((v2 & 0x20000000) == 0)
  {
LABEL_128:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_155;
  }

LABEL_151:
  v58 = *(this + 35);
  if (v58 >= 0x80)
  {
    v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v58) + 2;
    v2 = *(this + 51);
  }

  else
  {
    v59 = 3;
  }

  v3 += v59;
  if ((v2 & 0x40000000) == 0)
  {
LABEL_129:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_159;
  }

LABEL_155:
  v60 = *(this + 36);
  if (v60 >= 0x80)
  {
    v61 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v60) + 2;
    v2 = *(this + 51);
  }

  else
  {
    v61 = 3;
  }

  v3 += v61;
  if ((v2 & 0x80000000) != 0)
  {
LABEL_159:
    v62 = *(this + 37);
    if (v62 >= 0x80)
    {
      v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v62) + 2;
    }

    else
    {
      v63 = 3;
    }

    v3 += v63;
  }

LABEL_163:
  LOBYTE(v64) = *(this + 208);
  if (!v64)
  {
    goto LABEL_205;
  }

  if (*(this + 208))
  {
    v65 = *(this + 38);
    if (v65 >= 0x80)
    {
      v66 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65) + 2;
      v64 = *(this + 52);
    }

    else
    {
      v66 = 3;
    }

    v3 += v66;
    if ((v64 & 2) == 0)
    {
LABEL_166:
      if ((v64 & 4) == 0)
      {
        goto LABEL_167;
      }

      goto LABEL_181;
    }
  }

  else if ((*(this + 208) & 2) == 0)
  {
    goto LABEL_166;
  }

  v67 = *(this + 39);
  if (v67 >= 0x80)
  {
    v68 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v67) + 2;
    v64 = *(this + 52);
  }

  else
  {
    v68 = 3;
  }

  v3 += v68;
  if ((v64 & 4) == 0)
  {
LABEL_167:
    if ((v64 & 8) == 0)
    {
      goto LABEL_168;
    }

    goto LABEL_185;
  }

LABEL_181:
  v69 = *(this + 40);
  if (v69 >= 0x80)
  {
    v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69) + 2;
    v64 = *(this + 52);
  }

  else
  {
    v70 = 3;
  }

  v3 += v70;
  if ((v64 & 8) == 0)
  {
LABEL_168:
    if ((v64 & 0x10) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_189;
  }

LABEL_185:
  v71 = *(this + 41);
  if (v71 >= 0x80)
  {
    v72 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v71) + 2;
    v64 = *(this + 52);
  }

  else
  {
    v72 = 3;
  }

  v3 += v72;
  if ((v64 & 0x10) == 0)
  {
LABEL_169:
    if ((v64 & 0x20) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_193;
  }

LABEL_189:
  v73 = *(this + 42);
  if (v73 >= 0x80)
  {
    v74 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v73) + 2;
    v64 = *(this + 52);
  }

  else
  {
    v74 = 3;
  }

  v3 += v74;
  if ((v64 & 0x20) == 0)
  {
LABEL_170:
    if ((v64 & 0x40) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_197;
  }

LABEL_193:
  v75 = *(this + 43);
  if (v75 >= 0x80)
  {
    v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v75) + 2;
    v64 = *(this + 52);
  }

  else
  {
    v76 = 3;
  }

  v3 += v76;
  if ((v64 & 0x40) == 0)
  {
LABEL_171:
    if ((v64 & 0x80) == 0)
    {
      goto LABEL_205;
    }

    goto LABEL_201;
  }

LABEL_197:
  v77 = *(this + 44);
  if (v77 >= 0x80)
  {
    v78 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77) + 2;
    v64 = *(this + 52);
  }

  else
  {
    v78 = 3;
  }

  v3 += v78;
  if ((v64 & 0x80) != 0)
  {
LABEL_201:
    v79 = *(this + 45);
    if (v79 >= 0x80)
    {
      v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v79) + 2;
    }

    else
    {
      v80 = 3;
    }

    v3 += v80;
  }

LABEL_205:
  v81 = *(this + 20);
  if (v81 < 1)
  {
    v83 = 0;
  }

  else
  {
    v82 = 0;
    v83 = 0;
    do
    {
      v84 = *(*(this + 9) + 4 * v82);
      if (v84 >= 0x80)
      {
        v85 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v84);
        v81 = *(this + 20);
      }

      else
      {
        v85 = 1;
      }

      v83 += v85;
      ++v82;
    }

    while (v82 < v81);
  }

  v86 = *(this + 48);
  if (v86 < 1)
  {
    v88 = 0;
  }

  else
  {
    v87 = 0;
    v88 = 0;
    do
    {
      v89 = *(*(this + 23) + 4 * v87);
      if (v89 >= 0x80)
      {
        v90 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v89);
        v86 = *(this + 48);
      }

      else
      {
        v90 = 1;
      }

      v88 += v90;
      ++v87;
    }

    while (v87 < v86);
  }

  result = (v83 + v3 + v88 + 2 * (v86 + v81));
  *(this + 50) = result;
  return result;
}

void awd::metrics::BluetoothAccessoryBatteryHealth::CheckTypeAndMergeFrom(awd::metrics::BluetoothAccessoryBatteryHealth *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothAccessoryBatteryHealth::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothAccessoryBatteryHealth::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothAccessoryBatteryHealth::CopyFrom(awd::metrics::BluetoothAccessoryBatteryHealth *this, const awd::metrics::BluetoothAccessoryBatteryHealth *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothAccessoryBatteryHealth::MergeFrom(this, a2);
  }
}

double awd::metrics::BluetoothAccessoryBatteryHealth::Swap(awd::metrics::BluetoothAccessoryBatteryHealth *this, awd::metrics::BluetoothAccessoryBatteryHealth *a2)
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
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v2;
    LODWORD(v2) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v2;
    LODWORD(v2) = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v2;
    v3 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    v4 = *(a2 + 10);
    *(a2 + 9) = v3;
    v5 = *(this + 10);
    *(this + 10) = v4;
    *(a2 + 10) = v5;
    LODWORD(v3) = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v3;
    LODWORD(v3) = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v3;
    LODWORD(v3) = *(this + 26);
    *(this + 26) = *(a2 + 26);
    *(a2 + 26) = v3;
    LODWORD(v3) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v3;
    LODWORD(v3) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v3;
    LODWORD(v3) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v3;
    LODWORD(v3) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v3;
    LODWORD(v3) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v3;
    LODWORD(v3) = *(this + 34);
    *(this + 34) = *(a2 + 34);
    *(a2 + 34) = v3;
    LODWORD(v3) = *(this + 35);
    *(this + 35) = *(a2 + 35);
    *(a2 + 35) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 36);
    *(a2 + 36) = v3;
    LODWORD(v3) = *(this + 37);
    *(this + 37) = *(a2 + 37);
    *(a2 + 37) = v3;
    LODWORD(v3) = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v3;
    LODWORD(v3) = *(this + 39);
    *(this + 39) = *(a2 + 39);
    *(a2 + 39) = v3;
    LODWORD(v3) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v3;
    LODWORD(v3) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v3;
    LODWORD(v3) = *(this + 42);
    *(this + 42) = *(a2 + 42);
    *(a2 + 42) = v3;
    LODWORD(v3) = *(this + 43);
    *(this + 43) = *(a2 + 43);
    *(a2 + 43) = v3;
    LODWORD(v3) = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v3;
    LODWORD(v3) = *(this + 45);
    *(this + 45) = *(a2 + 45);
    *(a2 + 45) = v3;
    v6 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    result = *(a2 + 24);
    *(a2 + 23) = v6;
    v8 = *(this + 24);
    *(this + 24) = result;
    *(a2 + 24) = v8;
    LODWORD(v6) = *(this + 51);
    *(this + 51) = *(a2 + 51);
    *(a2 + 51) = v6;
    LODWORD(v6) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v6;
    LODWORD(v6) = *(this + 50);
    *(this + 50) = *(a2 + 50);
    *(a2 + 50) = v6;
  }

  return result;
}

double awd::metrics::BluetoothAccessoryOhdSensors::SharedCtor(awd::metrics::BluetoothAccessoryOhdSensors *this)
{
  *(this + 23) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 26) = 0;
  *(this + 108) = 0;
  *(this + 228) = 0;
  *(this + 220) = 0;
  *(this + 59) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  return result;
}

awd::metrics::BluetoothAccessoryOhdSensors *awd::metrics::BluetoothAccessoryOhdSensors::BluetoothAccessoryOhdSensors(awd::metrics::BluetoothAccessoryOhdSensors *this, const awd::metrics::BluetoothAccessoryOhdSensors *a2)
{
  *this = &unk_2A1D4CC00;
  *(this + 104) = 0u;
  *(this + 136) = 0u;
  *(this + 168) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 152) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 108) = 0;
  *(this + 220) = 0u;
  *(this + 236) = 0u;
  *(this + 252) = 0u;
  *(this + 67) = 0;
  awd::metrics::BluetoothAccessoryOhdSensors::MergeFrom(this, a2);
  return this;
}

void sub_2963C75EC(_Unwind_Exception *a1)
{
  v6 = *(v1 + 30);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  awd::metrics::BluetoothAccessoryOhdSensors::BluetoothAccessoryOhdSensors(v1 + 192, v4, v3, v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

float awd::metrics::BluetoothAccessoryOhdSensors::MergeFrom(awd::metrics::BluetoothAccessoryOhdSensors *this, const awd::metrics::BluetoothAccessoryOhdSensors *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v33);
  }

  v5 = *(a2 + 28);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 13, *(this + 28) + v5);
    memcpy((*(this + 13) + 4 * *(this + 28)), *(a2 + 13), 4 * *(a2 + 28));
    *(this + 28) += *(a2 + 28);
  }

  v6 = *(a2 + 36);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 17, *(this + 36) + v6);
    memcpy((*(this + 17) + 4 * *(this + 36)), *(a2 + 17), 4 * *(a2 + 36));
    *(this + 36) += *(a2 + 36);
  }

  v7 = *(a2 + 44);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 21, *(this + 44) + v7);
    memcpy((*(this + 21) + 4 * *(this + 44)), *(a2 + 21), 4 * *(a2 + 44));
    *(this + 44) += *(a2 + 44);
  }

  v8 = *(a2 + 50);
  if (v8)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, *(this + 50) + v8);
    memcpy((*(this + 24) + 4 * *(this + 50)), *(a2 + 24), 4 * *(a2 + 50));
    *(this + 50) += *(a2 + 50);
  }

  v9 = *(a2 + 62);
  if (v9)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 30, *(this + 62) + v9);
    memcpy((*(this + 30) + 4 * *(this + 62)), *(a2 + 30), 4 * *(a2 + 62));
    *(this + 62) += *(a2 + 62);
  }

  v10 = *(a2 + 66);
  if (!v10)
  {
    goto LABEL_23;
  }

  if (v10)
  {
    v15 = *(a2 + 1);
    *(this + 66) |= 1u;
    *(this + 1) = v15;
    v10 = *(a2 + 66);
    if ((v10 & 2) == 0)
    {
LABEL_16:
      if ((v10 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_70;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_16;
  }

  v16 = *(a2 + 4);
  *(this + 66) |= 2u;
  *(this + 4) = v16;
  v10 = *(a2 + 66);
  if ((v10 & 4) == 0)
  {
LABEL_17:
    if ((v10 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_71;
  }

LABEL_70:
  v17 = *(a2 + 5);
  *(this + 66) |= 4u;
  *(this + 5) = v17;
  v10 = *(a2 + 66);
  if ((v10 & 8) == 0)
  {
LABEL_18:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_72;
  }

LABEL_71:
  v18 = *(a2 + 6);
  *(this + 66) |= 8u;
  *(this + 6) = v18;
  v10 = *(a2 + 66);
  if ((v10 & 0x10) == 0)
  {
LABEL_19:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_73:
    v20 = *(a2 + 8);
    *(this + 66) |= 0x20u;
    *(this + 8) = v20;
    v10 = *(a2 + 66);
    if ((v10 & 0x40) == 0)
    {
LABEL_21:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_74;
  }

LABEL_72:
  v19 = *(a2 + 7);
  *(this + 66) |= 0x10u;
  *(this + 7) = v19;
  v10 = *(a2 + 66);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_73;
  }

LABEL_20:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_74:
  v21 = *(a2 + 9);
  *(this + 66) |= 0x40u;
  *(this + 9) = v21;
  v10 = *(a2 + 66);
  if ((v10 & 0x80) != 0)
  {
LABEL_22:
    v11 = *(a2 + 10);
    *(this + 66) |= 0x80u;
    *(this + 10) = v11;
    v10 = *(a2 + 66);
  }

LABEL_23:
  if ((v10 & 0xFF00) == 0)
  {
    goto LABEL_33;
  }

  if ((v10 & 0x100) != 0)
  {
    v22 = *(a2 + 11);
    *(this + 66) |= 0x100u;
    *(this + 11) = v22;
    v10 = *(a2 + 66);
    if ((v10 & 0x200) == 0)
    {
LABEL_26:
      if ((v10 & 0x400) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_78;
    }
  }

  else if ((v10 & 0x200) == 0)
  {
    goto LABEL_26;
  }

  v23 = *(a2 + 12);
  *(this + 66) |= 0x200u;
  *(this + 12) = v23;
  v10 = *(a2 + 66);
  if ((v10 & 0x400) == 0)
  {
LABEL_27:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_79;
  }

LABEL_78:
  v24 = *(a2 + 13);
  *(this + 66) |= 0x400u;
  *(this + 13) = v24;
  v10 = *(a2 + 66);
  if ((v10 & 0x800) == 0)
  {
LABEL_28:
    if ((v10 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_80;
  }

LABEL_79:
  v25 = *(a2 + 14);
  *(this + 66) |= 0x800u;
  *(this + 14) = v25;
  v10 = *(a2 + 66);
  if ((v10 & 0x1000) == 0)
  {
LABEL_29:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_81;
  }

LABEL_80:
  v26 = *(a2 + 15);
  *(this + 66) |= 0x1000u;
  *(this + 15) = v26;
  v10 = *(a2 + 66);
  if ((v10 & 0x2000) == 0)
  {
LABEL_30:
    if ((v10 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_82;
  }

LABEL_81:
  v27 = *(a2 + 16);
  *(this + 66) |= 0x2000u;
  *(this + 16) = v27;
  v10 = *(a2 + 66);
  if ((v10 & 0x4000) == 0)
  {
LABEL_31:
    if ((v10 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_82:
  v28 = *(a2 + 17);
  *(this + 66) |= 0x4000u;
  *(this + 17) = v28;
  v10 = *(a2 + 66);
  if ((v10 & 0x8000) != 0)
  {
LABEL_32:
    v12 = *(a2 + 18);
    *(this + 66) |= 0x8000u;
    *(this + 18) = v12;
    v10 = *(a2 + 66);
  }

LABEL_33:
  if ((v10 & 0xFF0000) == 0)
  {
    goto LABEL_42;
  }

  if ((v10 & 0x10000) != 0)
  {
    v29 = *(a2 + 19);
    *(this + 66) |= 0x10000u;
    *(this + 19) = v29;
    v10 = *(a2 + 66);
    if ((v10 & 0x20000) == 0)
    {
LABEL_36:
      if ((v10 & 0x40000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_86;
    }
  }

  else if ((v10 & 0x20000) == 0)
  {
    goto LABEL_36;
  }

  v30 = *(a2 + 20);
  *(this + 66) |= 0x20000u;
  *(this + 20) = v30;
  v10 = *(a2 + 66);
  if ((v10 & 0x40000) == 0)
  {
LABEL_37:
    if ((v10 & 0x80000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_87;
  }

LABEL_86:
  v31 = *(a2 + 21);
  *(this + 66) |= 0x40000u;
  *(this + 21) = v31;
  v10 = *(a2 + 66);
  if ((v10 & 0x80000) == 0)
  {
LABEL_38:
    if ((v10 & 0x100000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_88;
  }

LABEL_87:
  result = *(a2 + 22);
  *(this + 66) |= 0x80000u;
  *(this + 22) = result;
  v10 = *(a2 + 66);
  if ((v10 & 0x100000) == 0)
  {
LABEL_39:
    if ((v10 & 0x200000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_89;
  }

LABEL_88:
  result = *(a2 + 23);
  *(this + 66) |= 0x100000u;
  *(this + 23) = result;
  v10 = *(a2 + 66);
  if ((v10 & 0x200000) == 0)
  {
LABEL_40:
    if ((v10 & 0x400000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_89:
  result = *(a2 + 24);
  *(this + 66) |= 0x200000u;
  *(this + 24) = result;
  v10 = *(a2 + 66);
  if ((v10 & 0x400000) != 0)
  {
LABEL_41:
    result = *(a2 + 25);
    *(this + 66) |= 0x400000u;
    *(this + 25) = result;
    v10 = *(a2 + 66);
  }

LABEL_42:
  if (!HIBYTE(v10))
  {
    goto LABEL_50;
  }

  if ((v10 & 0x1000000) != 0)
  {
    result = *(a2 + 30);
    *(this + 66) |= 0x1000000u;
    *(this + 30) = result;
    v10 = *(a2 + 66);
    if ((v10 & 0x2000000) == 0)
    {
LABEL_45:
      if ((v10 & 0x4000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_106;
    }
  }

  else if ((v10 & 0x2000000) == 0)
  {
    goto LABEL_45;
  }

  result = *(a2 + 31);
  *(this + 66) |= 0x2000000u;
  *(this + 31) = result;
  v10 = *(a2 + 66);
  if ((v10 & 0x4000000) == 0)
  {
LABEL_46:
    if ((v10 & 0x8000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_107;
  }

LABEL_106:
  result = *(a2 + 32);
  *(this + 66) |= 0x4000000u;
  *(this + 32) = result;
  v10 = *(a2 + 66);
  if ((v10 & 0x8000000) == 0)
  {
LABEL_47:
    if ((v10 & 0x20000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_108;
  }

LABEL_107:
  result = *(a2 + 33);
  *(this + 66) |= 0x8000000u;
  *(this + 33) = result;
  v10 = *(a2 + 66);
  if ((v10 & 0x20000000) == 0)
  {
LABEL_48:
    if ((v10 & 0x40000000) == 0)
    {
      goto LABEL_49;
    }

LABEL_109:
    result = *(a2 + 39);
    *(this + 66) |= 0x40000000u;
    *(this + 39) = result;
    if ((*(a2 + 66) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_110;
  }

LABEL_108:
  result = *(a2 + 38);
  *(this + 66) |= 0x20000000u;
  *(this + 38) = result;
  v10 = *(a2 + 66);
  if ((v10 & 0x40000000) != 0)
  {
    goto LABEL_109;
  }

LABEL_49:
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

LABEL_110:
  result = *(a2 + 40);
  *(this + 66) |= 0x80000000;
  *(this + 40) = result;
LABEL_50:
  v13 = *(a2 + 67);
  if (!v13)
  {
    goto LABEL_58;
  }

  if (v13)
  {
    v32 = *(a2 + 216);
    *(this + 67) |= 1u;
    *(this + 216) = v32;
    v13 = *(a2 + 67);
    if ((v13 & 4) == 0)
    {
LABEL_53:
      if ((v13 & 8) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_93;
    }
  }

  else if ((v13 & 4) == 0)
  {
    goto LABEL_53;
  }

  result = *(a2 + 41);
  *(this + 67) |= 4u;
  *(this + 41) = result;
  v13 = *(a2 + 67);
  if ((v13 & 8) == 0)
  {
LABEL_54:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_94;
  }

LABEL_93:
  result = *(a2 + 46);
  *(this + 67) |= 8u;
  *(this + 46) = result;
  v13 = *(a2 + 67);
  if ((v13 & 0x10) == 0)
  {
LABEL_55:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_95;
  }

LABEL_94:
  result = *(a2 + 47);
  *(this + 67) |= 0x10u;
  *(this + 47) = result;
  v13 = *(a2 + 67);
  if ((v13 & 0x20) == 0)
  {
LABEL_56:
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_95:
  result = *(a2 + 52);
  *(this + 67) |= 0x20u;
  *(this + 52) = result;
  v13 = *(a2 + 67);
  if ((v13 & 0x80) != 0)
  {
LABEL_57:
    result = *(a2 + 53);
    *(this + 67) |= 0x80u;
    *(this + 53) = result;
    v13 = *(a2 + 67);
  }

LABEL_58:
  if ((v13 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v13 & 0x100) != 0)
  {
    result = *(a2 + 55);
    *(this + 67) |= 0x100u;
    *(this + 55) = result;
    v13 = *(a2 + 67);
    if ((v13 & 0x200) == 0)
    {
LABEL_61:
      if ((v13 & 0x400) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_99;
    }
  }

  else if ((v13 & 0x200) == 0)
  {
    goto LABEL_61;
  }

  result = *(a2 + 56);
  *(this + 67) |= 0x200u;
  *(this + 56) = result;
  v13 = *(a2 + 67);
  if ((v13 & 0x400) == 0)
  {
LABEL_62:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_100;
  }

LABEL_99:
  result = *(a2 + 57);
  *(this + 67) |= 0x400u;
  *(this + 57) = result;
  v13 = *(a2 + 67);
  if ((v13 & 0x800) == 0)
  {
LABEL_63:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_101;
  }

LABEL_100:
  result = *(a2 + 58);
  *(this + 67) |= 0x800u;
  *(this + 58) = result;
  v13 = *(a2 + 67);
  if ((v13 & 0x1000) == 0)
  {
LABEL_64:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_102;
  }

LABEL_101:
  result = *(a2 + 59);
  *(this + 67) |= 0x1000u;
  *(this + 59) = result;
  v13 = *(a2 + 67);
  if ((v13 & 0x2000) == 0)
  {
LABEL_65:
    if ((v13 & 0x4000) == 0)
    {
      return result;
    }

    goto LABEL_66;
  }

LABEL_102:
  result = *(a2 + 64);
  *(this + 67) |= 0x2000u;
  *(this + 64) = result;
  if ((*(a2 + 67) & 0x4000) != 0)
  {
LABEL_66:
    v14 = *(a2 + 217);
    *(this + 67) |= 0x4000u;
    *(this + 217) = v14;
  }

  return result;
}

void sub_2963C7D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothAccessoryOhdSensors::~BluetoothAccessoryOhdSensors(awd::metrics::BluetoothAccessoryOhdSensors *this)
{
  *this = &unk_2A1D4CC00;
  v2 = *(this + 30);
  if (v2)
  {
    MEMORY[0x29C259EE0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 24);
  if (v3)
  {
    MEMORY[0x29C259EE0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 21);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, 0x1000C8052888210);
  }

  v5 = *(this + 17);
  if (v5)
  {
    MEMORY[0x29C259EE0](v5, 0x1000C8052888210);
  }

  v6 = *(this + 13);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::metrics::BluetoothAccessoryOhdSensors::~BluetoothAccessoryOhdSensors(this);

  JUMPOUT(0x29C259F00);
}