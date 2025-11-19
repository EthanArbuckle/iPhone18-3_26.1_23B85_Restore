uint64_t awd::metrics::BluetoothAccessoryOhdSensors::default_instance(awd::metrics::BluetoothAccessoryOhdSensors *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothAccessoryOhdSensors::default_instance_;
  if (!awd::metrics::BluetoothAccessoryOhdSensors::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothAccessoryOhdSensors::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryOhdSensors::Clear(uint64_t this)
{
  v1 = *(this + 264);
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
    *(this + 84) = 0;
    *(this + 76) = 0;
    *(this + 100) = 0;
    *(this + 92) = 0;
  }

  if (HIBYTE(v1))
  {
    *(this + 152) = 0;
    *(this + 160) = 0;
    *(this + 120) = 0;
    *(this + 128) = 0;
  }

  v2 = *(this + 268);
  if (v2)
  {
    *(this + 164) = 0;
    *(this + 184) = 0;
    *(this + 208) = 0;
    *(this + 216) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 256) = 0;
    *(this + 217) = 0;
    *(this + 228) = 0;
    *(this + 220) = 0;
    *(this + 236) = 0;
  }

  *(this + 112) = 0;
  *(this + 144) = 0;
  *(this + 176) = 0;
  *(this + 200) = 0;
  *(this + 248) = 0;
  *(this + 264) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothAccessoryOhdSensors::MergePartialFromCodedStream(awd::metrics::BluetoothAccessoryOhdSensors *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_114;
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

        *(this + 66) |= 1u;
        if (v10 < v7 && *v10 == 16)
        {
          v22 = v10 + 1;
          *(a2 + 1) = v22;
          goto LABEL_128;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v22 = *(a2 + 1);
        v7 = *(a2 + 2);
LABEL_128:
        if (v22 >= v7 || (v42 = *v22, v42 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v43 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v42;
          v43 = v22 + 1;
          *(a2 + 1) = v43;
        }

        *(this + 66) |= 2u;
        if (v43 >= v7 || *v43 != 24)
        {
          continue;
        }

        v18 = v43 + 1;
        *(a2 + 1) = v18;
LABEL_136:
        if (v18 >= v7 || (v44 = *v18, v44 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v45 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v44;
          v45 = v18 + 1;
          *(a2 + 1) = v45;
        }

        *(this + 66) |= 4u;
        if (v45 >= v7 || *v45 != 32)
        {
          continue;
        }

        v20 = v45 + 1;
        *(a2 + 1) = v20;
LABEL_144:
        if (v20 >= v7 || (v46 = *v20, v46 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v47 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v46;
          v47 = v20 + 1;
          *(a2 + 1) = v47;
        }

        *(this + 66) |= 8u;
        if (v47 >= v7 || *v47 != 40)
        {
          continue;
        }

        v15 = v47 + 1;
        *(a2 + 1) = v15;
LABEL_152:
        if (v15 >= v7 || (v48 = *v15, v48 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v49 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v48;
          v49 = v15 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 66) |= 0x10u;
        if (v49 >= v7 || *v49 != 48)
        {
          continue;
        }

        v24 = v49 + 1;
        *(a2 + 1) = v24;
LABEL_160:
        if (v24 >= v7 || (v50 = *v24, v50 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
          if (!result)
          {
            return result;
          }

          v51 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 8) = v50;
          v51 = v24 + 1;
          *(a2 + 1) = v51;
        }

        *(this + 66) |= 0x20u;
        if (v51 >= v7 || *v51 != 56)
        {
          continue;
        }

        v26 = v51 + 1;
        *(a2 + 1) = v26;
LABEL_168:
        if (v26 >= v7 || (v52 = *v26, v52 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
          if (!result)
          {
            return result;
          }

          v53 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 9) = v52;
          v53 = v26 + 1;
          *(a2 + 1) = v53;
        }

        *(this + 66) |= 0x40u;
        if (v53 >= v7 || *v53 != 64)
        {
          continue;
        }

        v21 = v53 + 1;
        *(a2 + 1) = v21;
LABEL_176:
        if (v21 >= v7 || (v54 = *v21, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
          if (!result)
          {
            return result;
          }

          v55 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 10) = v54;
          v55 = v21 + 1;
          *(a2 + 1) = v55;
        }

        *(this + 66) |= 0x80u;
        if (v55 >= v7 || *v55 != 72)
        {
          continue;
        }

        v29 = v55 + 1;
        *(a2 + 1) = v29;
LABEL_184:
        if (v29 >= v7 || (v56 = *v29, v56 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v57 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v56;
          v57 = v29 + 1;
          *(a2 + 1) = v57;
        }

        *(this + 66) |= 0x100u;
        if (v57 >= v7 || *v57 != 80)
        {
          continue;
        }

        v17 = v57 + 1;
        *(a2 + 1) = v17;
LABEL_192:
        if (v17 >= v7 || (v58 = *v17, v58 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v59 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v58;
          v59 = v17 + 1;
          *(a2 + 1) = v59;
        }

        *(this + 66) |= 0x200u;
        if (v59 >= v7 || *v59 != 88)
        {
          continue;
        }

        v28 = v59 + 1;
        *(a2 + 1) = v28;
LABEL_200:
        if (v28 >= v7 || (v60 = *v28, v60 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v61 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v60;
          v61 = v28 + 1;
          *(a2 + 1) = v61;
        }

        *(this + 66) |= 0x400u;
        if (v61 >= v7 || *v61 != 96)
        {
          continue;
        }

        v14 = v61 + 1;
        *(a2 + 1) = v14;
LABEL_208:
        if (v14 >= v7 || (v62 = *v14, v62 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
          if (!result)
          {
            return result;
          }

          v63 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 14) = v62;
          v63 = v14 + 1;
          *(a2 + 1) = v63;
        }

        *(this + 66) |= 0x800u;
        if (v63 >= v7 || *v63 != 104)
        {
          continue;
        }

        v16 = v63 + 1;
        *(a2 + 1) = v16;
LABEL_216:
        if (v16 >= v7 || (v64 = *v16, v64 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 15);
          if (!result)
          {
            return result;
          }

          v65 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 15) = v64;
          v65 = v16 + 1;
          *(a2 + 1) = v65;
        }

        *(this + 66) |= 0x1000u;
        if (v65 >= v7 || *v65 != 112)
        {
          continue;
        }

        v25 = v65 + 1;
        *(a2 + 1) = v25;
LABEL_224:
        if (v25 >= v7 || (v66 = *v25, v66 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 16);
          if (!result)
          {
            return result;
          }

          v67 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 16) = v66;
          v67 = v25 + 1;
          *(a2 + 1) = v67;
        }

        *(this + 66) |= 0x2000u;
        if (v67 >= v7 || *v67 != 120)
        {
          continue;
        }

        v13 = v67 + 1;
        *(a2 + 1) = v13;
LABEL_232:
        if (v13 >= v7 || (v68 = *v13, v68 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 17);
          if (!result)
          {
            return result;
          }

          v69 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 17) = v68;
          v69 = (v13 + 1);
          *(a2 + 1) = v69;
        }

        *(this + 66) |= 0x4000u;
        if (v7 - v69 < 2 || *v69 != 128 || v69[1] != 1)
        {
          continue;
        }

        v19 = (v69 + 2);
        *(a2 + 1) = v19;
LABEL_241:
        if (v19 >= v7 || (v70 = *v19, v70 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18);
          if (!result)
          {
            return result;
          }

          v71 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 18) = v70;
          v71 = (v19 + 1);
          *(a2 + 1) = v71;
        }

        *(this + 66) |= 0x8000u;
        if (v7 - v71 < 2 || *v71 != 136 || v71[1] != 1)
        {
          continue;
        }

        v12 = (v71 + 2);
        *(a2 + 1) = v12;
LABEL_250:
        if (v12 >= v7 || (v72 = *v12, v72 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
          if (!result)
          {
            return result;
          }

          v73 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 19) = v72;
          v73 = (v12 + 1);
          *(a2 + 1) = v73;
        }

        *(this + 66) |= 0x10000u;
        if (v7 - v73 < 2 || *v73 != 144 || v73[1] != 1)
        {
          continue;
        }

        v23 = (v73 + 2);
        *(a2 + 1) = v23;
LABEL_259:
        if (v23 >= v7 || (v74 = *v23, v74 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 20);
          if (!result)
          {
            return result;
          }

          v75 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 20) = v74;
          v75 = (v23 + 1);
          *(a2 + 1) = v75;
        }

        *(this + 66) |= 0x20000u;
        if (v7 - v75 < 2 || *v75 != 152 || v75[1] != 1)
        {
          continue;
        }

        v27 = (v75 + 2);
        *(a2 + 1) = v27;
LABEL_268:
        if (v27 >= v7 || (v76 = *v27, v76 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 21);
          if (!result)
          {
            return result;
          }

          v77 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 21) = v76;
          v77 = (v27 + 1);
          *(a2 + 1) = v77;
        }

        *(this + 66) |= 0x40000u;
        if (v7 - v77 < 2 || *v77 != 165 || v77[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v77 + 2;
LABEL_277:
        v159[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
        {
          return 0;
        }

        *(this + 22) = v159[0];
        *(this + 66) |= 0x80000u;
        v78 = *(a2 + 1);
        if (*(a2 + 4) - v78 < 2 || *v78 != 173 || v78[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v78 + 2;
LABEL_282:
        v159[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
        {
          return 0;
        }

        *(this + 23) = v159[0];
        *(this + 66) |= 0x100000u;
        v79 = *(a2 + 1);
        if (*(a2 + 4) - v79 < 2 || *v79 != 181 || v79[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v79 + 2;
LABEL_287:
        v159[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
        {
          return 0;
        }

        *(this + 24) = v159[0];
        *(this + 66) |= 0x200000u;
        v80 = *(a2 + 1);
        if (*(a2 + 4) - v80 < 2 || *v80 != 189 || v80[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v80 + 2;
LABEL_292:
        v159[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
        {
          return 0;
        }

        *(this + 25) = v159[0];
        *(this + 66) |= 0x400000u;
        v81 = *(a2 + 1);
        v36 = *(a2 + 2);
        if (v36 - v81 >= 2 && *v81 == 192 && v81[1] == 1)
        {
          goto LABEL_296;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v18 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_136;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_144;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v15 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_152;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v24 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_160;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v26 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_168;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v21 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_176;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v29 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_184;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v17 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_192;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v28 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_200;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v14 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_208;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_216;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v25 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_224;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_232;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v19 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_241;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_250;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v23 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_259;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v27 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_268;
      case 0x14u:
        if (v6 == 5)
        {
          goto LABEL_277;
        }

        goto LABEL_114;
      case 0x15u:
        if (v6 == 5)
        {
          goto LABEL_282;
        }

        goto LABEL_114;
      case 0x16u:
        if (v6 == 5)
        {
          goto LABEL_287;
        }

        goto LABEL_114;
      case 0x17u:
        if (v6 == 5)
        {
          goto LABEL_292;
        }

        goto LABEL_114;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          if (v6 == 2)
          {
            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 104);
            if (!result)
            {
              return result;
            }

            goto LABEL_315;
          }

LABEL_114:
          if (v6 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        v37 = *(a2 + 1);
        v36 = *(a2 + 2);
        while (1)
        {
          v158 = 0;
          if (v37 >= v36 || *v37 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v158))
            {
              return 0;
            }
          }

          else
          {
            v158 = *v37;
            *(a2 + 1) = v37 + 1;
          }

          v82 = *(this + 28);
          if (v82 == *(this + 29))
          {
            wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 13, v82 + 1);
            v82 = *(this + 28);
          }

          v83 = v158;
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
              if (v88 - v87 < 2 || *v87 != 192 || v87[1] != 1)
              {
                break;
              }

              *(a2 + 1) = v87 + 2;
              if ((v87 + 2) >= v88 || v87[2] < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v158))
                {
                  return 0;
                }
              }

              else
              {
                v158 = v87[2];
                *(a2 + 1) = v87 + 3;
              }

              v89 = *(this + 28);
              if (v89 >= *(this + 29))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v159);
                v89 = *(this + 28);
              }

              v90 = v158;
              v91 = *(this + 13);
              *(this + 28) = v89 + 1;
              *(v91 + 4 * v89) = v90;
              --v86;
            }

            while (v86 > 1);
          }

LABEL_315:
          v81 = *(a2 + 1);
          v36 = *(a2 + 2);
          if (v36 - v81 < 2)
          {
            goto LABEL_1;
          }

          v92 = *v81;
          if (v92 == 205)
          {
            break;
          }

          if (v92 != 192 || v81[1] != 1)
          {
            goto LABEL_1;
          }

LABEL_296:
          v37 = (v81 + 2);
          *(a2 + 1) = v37;
        }

        if (v81[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v81 + 2;
LABEL_322:
        v159[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159))
        {
          *(this + 30) = v159[0];
          *(this + 66) |= 0x1000000u;
          v93 = *(a2 + 1);
          if (*(a2 + 4) - v93 >= 2 && *v93 == 213 && v93[1] == 1)
          {
            *(a2 + 1) = v93 + 2;
LABEL_327:
            v159[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
            {
              return 0;
            }

            *(this + 31) = v159[0];
            *(this + 66) |= 0x2000000u;
            v94 = *(a2 + 1);
            if (*(a2 + 4) - v94 >= 2 && *v94 == 221 && v94[1] == 1)
            {
              *(a2 + 1) = v94 + 2;
LABEL_332:
              v159[0] = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
              {
                return 0;
              }

              *(this + 32) = v159[0];
              *(this + 66) |= 0x4000000u;
              v95 = *(a2 + 1);
              if (*(a2 + 4) - v95 >= 2 && *v95 == 229 && v95[1] == 1)
              {
                *(a2 + 1) = v95 + 2;
LABEL_337:
                v159[0] = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
                {
                  return 0;
                }

                *(this + 33) = v159[0];
                *(this + 66) |= 0x8000000u;
                v96 = *(a2 + 1);
                v38 = *(a2 + 2);
                if (v38 - v96 >= 2 && *v96 == 232 && v96[1] == 1)
                {
                  while (1)
                  {
                    v39 = (v96 + 2);
                    *(a2 + 1) = v39;
LABEL_342:
                    v158 = 0;
                    if (v39 >= v38 || *v39 < 0)
                    {
                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v158))
                      {
                        return 0;
                      }
                    }

                    else
                    {
                      v158 = *v39;
                      *(a2 + 1) = v39 + 1;
                    }

                    v97 = *(this + 36);
                    if (v97 == *(this + 37))
                    {
                      wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 17, v97 + 1);
                      v97 = *(this + 36);
                    }

                    v98 = v158;
                    v99 = *(this + 17);
                    *(this + 36) = v97 + 1;
                    *(v99 + 4 * v97) = v98;
                    v100 = *(this + 37) - *(this + 36);
                    if (v100 >= 1)
                    {
                      v101 = v100 + 1;
                      do
                      {
                        v102 = *(a2 + 1);
                        v103 = *(a2 + 2);
                        if (v103 - v102 < 2 || *v102 != 232 || v102[1] != 1)
                        {
                          break;
                        }

                        *(a2 + 1) = v102 + 2;
                        if ((v102 + 2) >= v103 || v102[2] < 0)
                        {
                          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v158))
                          {
                            return 0;
                          }
                        }

                        else
                        {
                          v158 = v102[2];
                          *(a2 + 1) = v102 + 3;
                        }

                        v104 = *(this + 36);
                        if (v104 >= *(this + 37))
                        {
                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v159);
                          v104 = *(this + 36);
                        }

                        v105 = v158;
                        v106 = *(this + 17);
                        *(this + 36) = v104 + 1;
                        *(v106 + 4 * v104) = v105;
                        --v101;
                      }

                      while (v101 > 1);
                    }

LABEL_360:
                    v96 = *(a2 + 1);
                    v38 = *(a2 + 2);
                    if (v38 - v96 < 2)
                    {
                      break;
                    }

                    v107 = *v96;
                    if (v107 == 245)
                    {
                      if (v96[1] == 1)
                      {
                        *(a2 + 1) = v96 + 2;
LABEL_367:
                        v159[0] = 0;
                        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
                        {
                          return 0;
                        }

                        *(this + 38) = v159[0];
                        *(this + 66) |= 0x20000000u;
                        v108 = *(a2 + 1);
                        if (*(a2 + 4) - v108 >= 2 && *v108 == 253 && v108[1] == 1)
                        {
                          *(a2 + 1) = v108 + 2;
LABEL_372:
                          v159[0] = 0;
                          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
                          {
                            return 0;
                          }

                          *(this + 39) = v159[0];
                          *(this + 66) |= 0x40000000u;
                          v109 = *(a2 + 1);
                          if (*(a2 + 4) - v109 >= 2 && *v109 == 133 && v109[1] == 2)
                          {
                            *(a2 + 1) = v109 + 2;
LABEL_377:
                            v159[0] = 0;
                            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
                            {
                              return 0;
                            }

                            *(this + 40) = v159[0];
                            *(this + 66) |= 0x80000000;
                            v110 = *(a2 + 1);
                            v30 = *(a2 + 2);
                            if (v30 - v110 >= 2 && *v110 == 136 && v110[1] == 2)
                            {
                              v31 = (v110 + 2);
                              *(a2 + 1) = v31;
LABEL_382:
                              v159[0] = 0;
                              if (v31 >= v30 || (v111 = *v31, (v111 & 0x80000000) != 0))
                              {
                                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v159);
                                if (!result)
                                {
                                  return result;
                                }

                                v111 = v159[0];
                                v112 = *(a2 + 1);
                                v30 = *(a2 + 2);
                              }

                              else
                              {
                                v112 = (v31 + 1);
                                *(a2 + 1) = v112;
                              }

                              *(this + 216) = v111 != 0;
                              *(this + 67) |= 1u;
                              if (v30 - v112 >= 2 && *v112 == 144 && v112[1] == 2)
                              {
                                while (1)
                                {
                                  v35 = (v112 + 2);
                                  *(a2 + 1) = v35;
LABEL_391:
                                  v158 = 0;
                                  if (v35 >= v30 || *v35 < 0)
                                  {
                                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v158))
                                    {
                                      return 0;
                                    }
                                  }

                                  else
                                  {
                                    v158 = *v35;
                                    *(a2 + 1) = v35 + 1;
                                  }

                                  v113 = *(this + 44);
                                  if (v113 == *(this + 45))
                                  {
                                    wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 21, v113 + 1);
                                    v113 = *(this + 44);
                                  }

                                  v114 = v158;
                                  v115 = *(this + 21);
                                  *(this + 44) = v113 + 1;
                                  *(v115 + 4 * v113) = v114;
                                  v116 = *(this + 45) - *(this + 44);
                                  if (v116 >= 1)
                                  {
                                    v117 = v116 + 1;
                                    do
                                    {
                                      v118 = *(a2 + 1);
                                      v119 = *(a2 + 2);
                                      if (v119 - v118 < 2 || *v118 != 144 || v118[1] != 2)
                                      {
                                        break;
                                      }

                                      *(a2 + 1) = v118 + 2;
                                      if ((v118 + 2) >= v119 || v118[2] < 0)
                                      {
                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v158))
                                        {
                                          return 0;
                                        }
                                      }

                                      else
                                      {
                                        v158 = v118[2];
                                        *(a2 + 1) = v118 + 3;
                                      }

                                      v120 = *(this + 44);
                                      if (v120 >= *(this + 45))
                                      {
                                        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v159);
                                        v120 = *(this + 44);
                                      }

                                      v121 = v158;
                                      v122 = *(this + 21);
                                      *(this + 44) = v120 + 1;
                                      *(v122 + 4 * v120) = v121;
                                      --v117;
                                    }

                                    while (v117 > 1);
                                  }

LABEL_409:
                                  v112 = *(a2 + 1);
                                  v30 = *(a2 + 2);
                                  if (v30 - v112 < 2)
                                  {
                                    break;
                                  }

                                  v123 = *v112;
                                  if (v123 == 157)
                                  {
                                    if (v112[1] == 2)
                                    {
                                      *(a2 + 1) = v112 + 2;
LABEL_416:
                                      v159[0] = 0;
                                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
                                      {
                                        return 0;
                                      }

                                      *(this + 41) = v159[0];
                                      *(this + 67) |= 4u;
                                      v124 = *(a2 + 1);
                                      if (*(a2 + 4) - v124 >= 2 && *v124 == 165 && v124[1] == 2)
                                      {
                                        *(a2 + 1) = v124 + 2;
LABEL_421:
                                        v159[0] = 0;
                                        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
                                        {
                                          return 0;
                                        }

                                        *(this + 46) = v159[0];
                                        *(this + 67) |= 8u;
                                        v125 = *(a2 + 1);
                                        if (*(a2 + 4) - v125 >= 2 && *v125 == 173 && v125[1] == 2)
                                        {
                                          *(a2 + 1) = v125 + 2;
LABEL_426:
                                          v159[0] = 0;
                                          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
                                          {
                                            return 0;
                                          }

                                          *(this + 47) = v159[0];
                                          *(this + 67) |= 0x10u;
                                          v126 = *(a2 + 1);
                                          if (*(a2 + 4) - v126 >= 2 && *v126 == 181 && v126[1] == 2)
                                          {
                                            *(a2 + 1) = v126 + 2;
LABEL_431:
                                            v159[0] = 0;
                                            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
                                            {
                                              return 0;
                                            }

                                            *(this + 52) = v159[0];
                                            *(this + 67) |= 0x20u;
                                            v127 = *(a2 + 1);
                                            v40 = *(a2 + 2);
                                            if (v40 - v127 >= 2 && *v127 == 184 && v127[1] == 2)
                                            {
                                              while (1)
                                              {
                                                v41 = (v127 + 2);
                                                *(a2 + 1) = v41;
LABEL_436:
                                                v158 = 0;
                                                if (v41 >= v40 || *v41 < 0)
                                                {
                                                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v158))
                                                  {
                                                    return 0;
                                                  }
                                                }

                                                else
                                                {
                                                  v158 = *v41;
                                                  *(a2 + 1) = v41 + 1;
                                                }

                                                v128 = *(this + 50);
                                                if (v128 == *(this + 51))
                                                {
                                                  wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, v128 + 1);
                                                  v128 = *(this + 50);
                                                }

                                                v129 = v158;
                                                v130 = *(this + 24);
                                                *(this + 50) = v128 + 1;
                                                *(v130 + 4 * v128) = v129;
                                                v131 = *(this + 51) - *(this + 50);
                                                if (v131 >= 1)
                                                {
                                                  v132 = v131 + 1;
                                                  do
                                                  {
                                                    v133 = *(a2 + 1);
                                                    v134 = *(a2 + 2);
                                                    if (v134 - v133 < 2 || *v133 != 184 || v133[1] != 2)
                                                    {
                                                      break;
                                                    }

                                                    *(a2 + 1) = v133 + 2;
                                                    if ((v133 + 2) >= v134 || v133[2] < 0)
                                                    {
                                                      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v158))
                                                      {
                                                        return 0;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v158 = v133[2];
                                                      *(a2 + 1) = v133 + 3;
                                                    }

                                                    v135 = *(this + 50);
                                                    if (v135 >= *(this + 51))
                                                    {
                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v159);
                                                      v135 = *(this + 50);
                                                    }

                                                    v136 = v158;
                                                    v137 = *(this + 24);
                                                    *(this + 50) = v135 + 1;
                                                    *(v137 + 4 * v135) = v136;
                                                    --v132;
                                                  }

                                                  while (v132 > 1);
                                                }

LABEL_454:
                                                v127 = *(a2 + 1);
                                                v40 = *(a2 + 2);
                                                if (v40 - v127 < 2)
                                                {
                                                  break;
                                                }

                                                v138 = *v127;
                                                if (v138 == 197)
                                                {
                                                  if (v127[1] == 2)
                                                  {
                                                    *(a2 + 1) = v127 + 2;
LABEL_461:
                                                    v159[0] = 0;
                                                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
                                                    {
                                                      return 0;
                                                    }

                                                    *(this + 53) = v159[0];
                                                    *(this + 67) |= 0x80u;
                                                    v139 = *(a2 + 1);
                                                    if (*(a2 + 4) - v139 >= 2 && *v139 == 205 && v139[1] == 2)
                                                    {
                                                      *(a2 + 1) = v139 + 2;
LABEL_466:
                                                      v159[0] = 0;
                                                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
                                                      {
                                                        return 0;
                                                      }

                                                      *(this + 55) = v159[0];
                                                      *(this + 67) |= 0x100u;
                                                      v140 = *(a2 + 1);
                                                      if (*(a2 + 4) - v140 >= 2 && *v140 == 213 && v140[1] == 2)
                                                      {
                                                        *(a2 + 1) = v140 + 2;
LABEL_471:
                                                        v159[0] = 0;
                                                        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
                                                        {
                                                          return 0;
                                                        }

                                                        *(this + 56) = v159[0];
                                                        *(this + 67) |= 0x200u;
                                                        v141 = *(a2 + 1);
                                                        if (*(a2 + 4) - v141 >= 2 && *v141 == 221 && v141[1] == 2)
                                                        {
                                                          *(a2 + 1) = v141 + 2;
LABEL_476:
                                                          v159[0] = 0;
                                                          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
                                                          {
                                                            return 0;
                                                          }

                                                          *(this + 57) = v159[0];
                                                          *(this + 67) |= 0x400u;
                                                          v142 = *(a2 + 1);
                                                          if (*(a2 + 4) - v142 >= 2 && *v142 == 229 && v142[1] == 2)
                                                          {
                                                            *(a2 + 1) = v142 + 2;
LABEL_481:
                                                            v159[0] = 0;
                                                            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
                                                            {
                                                              return 0;
                                                            }

                                                            *(this + 58) = v159[0];
                                                            *(this + 67) |= 0x800u;
                                                            v143 = *(a2 + 1);
                                                            if (*(a2 + 4) - v143 >= 2 && *v143 == 237 && v143[1] == 2)
                                                            {
                                                              *(a2 + 1) = v143 + 2;
LABEL_486:
                                                              v159[0] = 0;
                                                              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
                                                              {
                                                                return 0;
                                                              }

                                                              *(this + 59) = v159[0];
                                                              *(this + 67) |= 0x1000u;
                                                              v144 = *(a2 + 1);
                                                              if (*(a2 + 4) - v144 >= 2 && *v144 == 245 && v144[1] == 2)
                                                              {
                                                                *(a2 + 1) = v144 + 2;
LABEL_491:
                                                                v159[0] = 0;
                                                                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v159) & 1) == 0)
                                                                {
                                                                  return 0;
                                                                }

                                                                *(this + 64) = v159[0];
                                                                *(this + 67) |= 0x2000u;
                                                                v145 = *(a2 + 1);
                                                                v32 = *(a2 + 2);
                                                                if (v32 - v145 >= 2 && *v145 == 248 && v145[1] == 2)
                                                                {
                                                                  v33 = (v145 + 2);
                                                                  *(a2 + 1) = v33;
LABEL_496:
                                                                  v159[0] = 0;
                                                                  if (v33 >= v32 || (v146 = *v33, (v146 & 0x80000000) != 0))
                                                                  {
                                                                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v159);
                                                                    if (!result)
                                                                    {
                                                                      return result;
                                                                    }

                                                                    v146 = v159[0];
                                                                    v147 = *(a2 + 1);
                                                                    v32 = *(a2 + 2);
                                                                  }

                                                                  else
                                                                  {
                                                                    v147 = (v33 + 1);
                                                                    *(a2 + 1) = v147;
                                                                  }

                                                                  *(this + 217) = v146 != 0;
                                                                  *(this + 67) |= 0x4000u;
                                                                  if (v32 - v147 >= 2 && *v147 == 128 && v147[1] == 3)
                                                                  {
                                                                    do
                                                                    {
                                                                      v34 = (v147 + 2);
                                                                      *(a2 + 1) = v34;
LABEL_505:
                                                                      v158 = 0;
                                                                      if (v34 >= v32 || *v34 < 0)
                                                                      {
                                                                        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v158))
                                                                        {
                                                                          return 0;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v158 = *v34;
                                                                        *(a2 + 1) = v34 + 1;
                                                                      }

                                                                      v148 = *(this + 62);
                                                                      if (v148 == *(this + 63))
                                                                      {
                                                                        wireless_diagnostics::google::protobuf::RepeatedField<unsigned int>::Reserve(this + 30, v148 + 1);
                                                                        v148 = *(this + 62);
                                                                      }

                                                                      v149 = v158;
                                                                      v150 = *(this + 30);
                                                                      *(this + 62) = v148 + 1;
                                                                      *(v150 + 4 * v148) = v149;
                                                                      v151 = *(this + 63) - *(this + 62);
                                                                      if (v151 >= 1)
                                                                      {
                                                                        v152 = v151 + 1;
                                                                        do
                                                                        {
                                                                          v153 = *(a2 + 1);
                                                                          v154 = *(a2 + 2);
                                                                          if (v154 - v153 < 2 || *v153 != 128 || v153[1] != 3)
                                                                          {
                                                                            break;
                                                                          }

                                                                          *(a2 + 1) = v153 + 2;
                                                                          if ((v153 + 2) >= v154 || v153[2] < 0)
                                                                          {
                                                                            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v158))
                                                                            {
                                                                              return 0;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v158 = v153[2];
                                                                            *(a2 + 1) = v153 + 3;
                                                                          }

                                                                          v155 = *(this + 62);
                                                                          if (v155 >= *(this + 63))
                                                                          {
                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                                                                            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                                                                            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v159);
                                                                            v155 = *(this + 62);
                                                                          }

                                                                          v156 = v158;
                                                                          v157 = *(this + 30);
                                                                          *(this + 62) = v155 + 1;
                                                                          *(v157 + 4 * v155) = v156;
                                                                          --v152;
                                                                        }

                                                                        while (v152 > 1);
                                                                      }

LABEL_523:
                                                                      v147 = *(a2 + 1);
                                                                      v32 = *(a2 + 2);
                                                                    }

                                                                    while (v32 - v147 >= 2 && *v147 == 128 && v147[1] == 3);
                                                                    if (v147 == v32 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

                                                  goto LABEL_1;
                                                }

                                                if (v138 != 184 || v127[1] != 2)
                                                {
                                                  goto LABEL_1;
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }

                                    goto LABEL_1;
                                  }

                                  if (v123 != 144 || v112[1] != 2)
                                  {
                                    goto LABEL_1;
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      goto LABEL_1;
                    }

                    if (v107 != 232 || v96[1] != 1)
                    {
                      goto LABEL_1;
                    }
                  }
                }
              }
            }
          }

          continue;
        }

        return 0;
      case 0x19u:
        if (v6 == 5)
        {
          goto LABEL_322;
        }

        goto LABEL_114;
      case 0x1Au:
        if (v6 == 5)
        {
          goto LABEL_327;
        }

        goto LABEL_114;
      case 0x1Bu:
        if (v6 == 5)
        {
          goto LABEL_332;
        }

        goto LABEL_114;
      case 0x1Cu:
        if (v6 == 5)
        {
          goto LABEL_337;
        }

        goto LABEL_114;
      case 0x1Du:
        if ((TagFallback & 7) == 0)
        {
          v39 = *(a2 + 1);
          v38 = *(a2 + 2);
          goto LABEL_342;
        }

        if (v6 != 2)
        {
          goto LABEL_114;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 136);
        if (!result)
        {
          return result;
        }

        goto LABEL_360;
      case 0x1Eu:
        if (v6 == 5)
        {
          goto LABEL_367;
        }

        goto LABEL_114;
      case 0x1Fu:
        if (v6 == 5)
        {
          goto LABEL_372;
        }

        goto LABEL_114;
      case 0x20u:
        if (v6 == 5)
        {
          goto LABEL_377;
        }

        goto LABEL_114;
      case 0x21u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v31 = *(a2 + 1);
        v30 = *(a2 + 2);
        goto LABEL_382;
      case 0x22u:
        if ((TagFallback & 7) == 0)
        {
          v35 = *(a2 + 1);
          v30 = *(a2 + 2);
          goto LABEL_391;
        }

        if (v6 != 2)
        {
          goto LABEL_114;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 168);
        if (!result)
        {
          return result;
        }

        goto LABEL_409;
      case 0x23u:
        if (v6 == 5)
        {
          goto LABEL_416;
        }

        goto LABEL_114;
      case 0x24u:
        if (v6 == 5)
        {
          goto LABEL_421;
        }

        goto LABEL_114;
      case 0x25u:
        if (v6 == 5)
        {
          goto LABEL_426;
        }

        goto LABEL_114;
      case 0x26u:
        if (v6 == 5)
        {
          goto LABEL_431;
        }

        goto LABEL_114;
      case 0x27u:
        if ((TagFallback & 7) == 0)
        {
          v41 = *(a2 + 1);
          v40 = *(a2 + 2);
          goto LABEL_436;
        }

        if (v6 != 2)
        {
          goto LABEL_114;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 192);
        if (!result)
        {
          return result;
        }

        goto LABEL_454;
      case 0x28u:
        if (v6 == 5)
        {
          goto LABEL_461;
        }

        goto LABEL_114;
      case 0x29u:
        if (v6 == 5)
        {
          goto LABEL_466;
        }

        goto LABEL_114;
      case 0x2Au:
        if (v6 == 5)
        {
          goto LABEL_471;
        }

        goto LABEL_114;
      case 0x2Bu:
        if (v6 == 5)
        {
          goto LABEL_476;
        }

        goto LABEL_114;
      case 0x2Cu:
        if (v6 == 5)
        {
          goto LABEL_481;
        }

        goto LABEL_114;
      case 0x2Du:
        if (v6 == 5)
        {
          goto LABEL_486;
        }

        goto LABEL_114;
      case 0x2Eu:
        if (v6 == 5)
        {
          goto LABEL_491;
        }

        goto LABEL_114;
      case 0x2Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_114;
        }

        v33 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_496;
      case 0x30u:
        if ((TagFallback & 7) == 0)
        {
          v34 = *(a2 + 1);
          v32 = *(a2 + 2);
          goto LABEL_505;
        }

        if (v6 != 2)
        {
          goto LABEL_114;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 240);
        if (!result)
        {
          return result;
        }

        goto LABEL_523;
      default:
        goto LABEL_114;
    }
  }
}

void sub_2963C9B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::BluetoothAccessoryOhdSensors::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 264);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 264);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_67;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 36), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 40), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 48), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, *(v5 + 56), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 60), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 64), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_80;
  }

LABEL_79:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 68), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_81;
  }

LABEL_80:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 72), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_82;
  }

LABEL_81:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x11, *(v5 + 76), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_83;
  }

LABEL_82:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x12, *(v5 + 80), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_84;
  }

LABEL_83:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 84), a2, a4);
  v6 = *(v5 + 264);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_85;
  }

LABEL_84:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x14, a2, *(v5 + 88), a3);
  v6 = *(v5 + 264);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_86;
  }

LABEL_85:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x15, a2, *(v5 + 92), a3);
  v6 = *(v5 + 264);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_86:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x16, a2, *(v5 + 96), a3);
  if ((*(v5 + 264) & 0x400000) != 0)
  {
LABEL_24:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x17, a2, *(v5 + 100), a3);
  }

LABEL_25:
  if (*(v5 + 112) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x18, *(*(v5 + 104) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 112));
  }

  v8 = *(v5 + 264);
  if ((v8 & 0x1000000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x19, a2, *(v5 + 120), a3);
    v8 = *(v5 + 264);
    if ((v8 & 0x2000000) == 0)
    {
LABEL_30:
      if ((v8 & 0x4000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_90;
    }
  }

  else if ((v8 & 0x2000000) == 0)
  {
    goto LABEL_30;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1A, a2, *(v5 + 124), a3);
  v8 = *(v5 + 264);
  if ((v8 & 0x4000000) == 0)
  {
LABEL_31:
    if ((v8 & 0x8000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_90:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1B, a2, *(v5 + 128), a3);
  if ((*(v5 + 264) & 0x8000000) != 0)
  {
LABEL_32:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1C, a2, *(v5 + 132), a3);
  }

LABEL_33:
  if (*(v5 + 144) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x1D, *(*(v5 + 136) + 4 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 144));
  }

  v10 = *(v5 + 264);
  if ((v10 & 0x20000000) == 0)
  {
    if ((v10 & 0x40000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_93:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1F, a2, *(v5 + 156), a3);
    if ((*(v5 + 264) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_94;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x1E, a2, *(v5 + 152), a3);
  v10 = *(v5 + 264);
  if ((v10 & 0x40000000) != 0)
  {
    goto LABEL_93;
  }

LABEL_38:
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

LABEL_94:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x20, a2, *(v5 + 160), a3);
LABEL_39:
  if (*(v5 + 268))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x21, *(v5 + 216), a2, a4);
  }

  if (*(v5 + 176) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x22, *(*(v5 + 168) + 4 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 176));
  }

  v12 = *(v5 + 268);
  if ((v12 & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x23, a2, *(v5 + 164), a3);
    v12 = *(v5 + 268);
    if ((v12 & 8) == 0)
    {
LABEL_46:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_97;
    }
  }

  else if ((v12 & 8) == 0)
  {
    goto LABEL_46;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x24, a2, *(v5 + 184), a3);
  v12 = *(v5 + 268);
  if ((v12 & 0x10) == 0)
  {
LABEL_47:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_97:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x25, a2, *(v5 + 188), a3);
  if ((*(v5 + 268) & 0x20) != 0)
  {
LABEL_48:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x26, a2, *(v5 + 208), a3);
  }

LABEL_49:
  if (*(v5 + 200) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x27, *(*(v5 + 192) + 4 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 200));
  }

  v14 = *(v5 + 268);
  if ((v14 & 0x80) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x28, a2, *(v5 + 212), a3);
    v14 = *(v5 + 268);
    if ((v14 & 0x100) == 0)
    {
LABEL_54:
      if ((v14 & 0x200) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_101;
    }
  }

  else if ((v14 & 0x100) == 0)
  {
    goto LABEL_54;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x29, a2, *(v5 + 220), a3);
  v14 = *(v5 + 268);
  if ((v14 & 0x200) == 0)
  {
LABEL_55:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_102;
  }

LABEL_101:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2A, a2, *(v5 + 224), a3);
  v14 = *(v5 + 268);
  if ((v14 & 0x400) == 0)
  {
LABEL_56:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_103;
  }

LABEL_102:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2B, a2, *(v5 + 228), a3);
  v14 = *(v5 + 268);
  if ((v14 & 0x800) == 0)
  {
LABEL_57:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_104;
  }

LABEL_103:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2C, a2, *(v5 + 232), a3);
  v14 = *(v5 + 268);
  if ((v14 & 0x1000) == 0)
  {
LABEL_58:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_105;
  }

LABEL_104:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2D, a2, *(v5 + 236), a3);
  v14 = *(v5 + 268);
  if ((v14 & 0x2000) == 0)
  {
LABEL_59:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_105:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x2E, a2, *(v5 + 256), a3);
  if ((*(v5 + 268) & 0x4000) != 0)
  {
LABEL_60:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x2F, *(v5 + 217), a2, a4);
  }

LABEL_61:
  if (*(v5 + 248) >= 1)
  {
    v15 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x30, *(*(v5 + 240) + 4 * v15++), a2, a4);
    }

    while (v15 < *(v5 + 248));
  }

  return this;
}

uint64_t awd::metrics::BluetoothAccessoryOhdSensors::ByteSize(awd::metrics::BluetoothAccessoryOhdSensors *this)
{
  v2 = *(this + 66);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 66);
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
    v2 = *(this + 66);
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
      v2 = *(this + 66);
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
    v2 = *(this + 66);
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
    v2 = *(this + 66);
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
    v2 = *(this + 66);
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
    v2 = *(this + 66);
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
      v2 = *(this + 66);
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
      v2 = *(this + 66);
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
    v2 = *(this + 66);
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
    v2 = *(this + 66);
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
    v2 = *(this + 66);
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
    v2 = *(this + 66);
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
    v2 = *(this + 66);
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
    v2 = *(this + 66);
  }

  else
  {
    v31 = 2;
  }

  v3 += v31;
  if ((v2 & 0x8000) != 0)
  {
LABEL_80:
    v32 = *(this + 18);
    if (v32 >= 0x80)
    {
      v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32) + 2;
      v2 = *(this + 66);
    }

    else
    {
      v33 = 3;
    }

    v3 += v33;
  }

LABEL_84:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_110;
  }

  if ((v2 & 0x10000) == 0)
  {
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_87;
    }

LABEL_93:
    v36 = *(this + 20);
    if (v36 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v36) + 2;
      v2 = *(this + 66);
    }

    else
    {
      v37 = 3;
    }

    v3 += v37;
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_97;
  }

  v34 = *(this + 19);
  if (v34 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34) + 2;
    v2 = *(this + 66);
  }

  else
  {
    v35 = 3;
  }

  v3 += v35;
  if ((v2 & 0x20000) != 0)
  {
    goto LABEL_93;
  }

LABEL_87:
  if ((v2 & 0x40000) != 0)
  {
LABEL_97:
    v38 = *(this + 21);
    if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38) + 2;
      v2 = *(this + 66);
    }

    else
    {
      v39 = 3;
    }

    v3 += v39;
  }

LABEL_101:
  v40 = v3 + 6;
  if ((v2 & 0x80000) == 0)
  {
    v40 = v3;
  }

  if ((v2 & 0x100000) != 0)
  {
    v40 += 6;
  }

  if ((v2 & 0x200000) != 0)
  {
    v40 += 6;
  }

  if ((v2 & 0x400000) != 0)
  {
    v3 = v40 + 6;
  }

  else
  {
    v3 = v40;
  }

LABEL_110:
  if (HIBYTE(v2))
  {
    v41 = v3 + 6;
    if ((v2 & 0x1000000) == 0)
    {
      v41 = v3;
    }

    if ((v2 & 0x2000000) != 0)
    {
      v41 += 6;
    }

    if ((v2 & 0x4000000) != 0)
    {
      v41 += 6;
    }

    if ((v2 & 0x8000000) != 0)
    {
      v41 += 6;
    }

    if ((v2 & 0x20000000) != 0)
    {
      v41 += 6;
    }

    if ((v2 & 0x40000000) != 0)
    {
      v41 += 6;
    }

    if (v2 >= 0)
    {
      v3 = v41;
    }

    else
    {
      v3 = v41 + 6;
    }
  }

  v42 = *(this + 67);
  v43 = v3 + 3;
  if ((v42 & 1) == 0)
  {
    v43 = v3;
  }

  if ((v42 & 4) != 0)
  {
    v43 += 6;
  }

  if ((v42 & 8) != 0)
  {
    v43 += 6;
  }

  if ((v42 & 0x10) != 0)
  {
    v43 += 6;
  }

  if ((v42 & 0x20) != 0)
  {
    v43 += 6;
  }

  if ((v42 & 0x80) != 0)
  {
    v43 += 6;
  }

  if (*(this + 67))
  {
    v44 = v43;
  }

  else
  {
    v44 = v3;
  }

  if ((v42 & 0xFF00) != 0)
  {
    v45 = v44 + 6;
    if ((v42 & 0x100) == 0)
    {
      v45 = v44;
    }

    if ((v42 & 0x200) != 0)
    {
      v45 += 6;
    }

    if ((v42 & 0x400) != 0)
    {
      v45 += 6;
    }

    if ((v42 & 0x800) != 0)
    {
      v45 += 6;
    }

    if ((v42 & 0x1000) != 0)
    {
      v45 += 6;
    }

    if ((v42 & 0x2000) != 0)
    {
      v45 += 6;
    }

    v44 = v45 + 3;
    if ((v42 & 0x4000) == 0)
    {
      v44 = v45;
    }
  }

  v73 = v44;
  v46 = *(this + 28);
  if (v46 < 1)
  {
    v48 = 0;
  }

  else
  {
    v47 = 0;
    v48 = 0;
    do
    {
      v49 = *(*(this + 13) + 4 * v47);
      if (v49 >= 0x80)
      {
        v50 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49);
        v46 = *(this + 28);
      }

      else
      {
        v50 = 1;
      }

      v48 += v50;
      ++v47;
    }

    while (v47 < v46);
  }

  v51 = *(this + 36);
  if (v51 < 1)
  {
    v53 = 0;
  }

  else
  {
    v52 = 0;
    v53 = 0;
    do
    {
      v54 = *(*(this + 17) + 4 * v52);
      if (v54 >= 0x80)
      {
        v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v54);
        v51 = *(this + 36);
      }

      else
      {
        v55 = 1;
      }

      v53 += v55;
      ++v52;
    }

    while (v52 < v51);
  }

  v56 = *(this + 44);
  if (v56 < 1)
  {
    v58 = 0;
  }

  else
  {
    v57 = 0;
    v58 = 0;
    do
    {
      v59 = *(*(this + 21) + 4 * v57);
      if (v59 >= 0x80)
      {
        v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59);
        v56 = *(this + 44);
      }

      else
      {
        v60 = 1;
      }

      v58 += v60;
      ++v57;
    }

    while (v57 < v56);
  }

  v61 = *(this + 50);
  if (v61 < 1)
  {
    v63 = 0;
  }

  else
  {
    v62 = 0;
    v63 = 0;
    do
    {
      v64 = *(*(this + 24) + 4 * v62);
      if (v64 >= 0x80)
      {
        v65 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v64);
        v61 = *(this + 50);
      }

      else
      {
        v65 = 1;
      }

      v63 += v65;
      ++v62;
    }

    while (v62 < v61);
  }

  v72 = v46;
  v66 = *(this + 62);
  if (v66 < 1)
  {
    v68 = 0;
  }

  else
  {
    v67 = 0;
    v68 = 0;
    do
    {
      v69 = *(*(this + 30) + 4 * v67);
      if (v69 >= 0x80)
      {
        v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69);
        v66 = *(this + 62);
      }

      else
      {
        v70 = 1;
      }

      v68 += v70;
      ++v67;
    }

    while (v67 < v66);
  }

  result = (v48 + v73 + v53 + v58 + v63 + v68 + 2 * (v51 + v72 + v56 + v61 + v66));
  *(this + 65) = result;
  return result;
}

float awd::metrics::BluetoothAccessoryOhdSensors::CheckTypeAndMergeFrom(awd::metrics::BluetoothAccessoryOhdSensors *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothAccessoryOhdSensors::CheckTypeAndMergeFrom();
  }

  return awd::metrics::BluetoothAccessoryOhdSensors::MergeFrom(this, lpsrc);
}

float awd::metrics::BluetoothAccessoryOhdSensors::CopyFrom(awd::metrics::BluetoothAccessoryOhdSensors *this, const awd::metrics::BluetoothAccessoryOhdSensors *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return awd::metrics::BluetoothAccessoryOhdSensors::MergeFrom(this, a2);
  }

  return result;
}

double awd::metrics::BluetoothAccessoryOhdSensors::Swap(awd::metrics::BluetoothAccessoryOhdSensors *this, awd::metrics::BluetoothAccessoryOhdSensors *a2)
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
    LODWORD(v2) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v2;
    LODWORD(v2) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = v2;
    LODWORD(v2) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v2;
    v3 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v3;
    v4 = *(this + 23);
    *(this + 23) = *(a2 + 23);
    *(a2 + 23) = v4;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v5;
    v6 = *(this + 25);
    *(this + 25) = *(a2 + 25);
    *(a2 + 25) = v6;
    v7 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    v8 = *(a2 + 14);
    *(a2 + 13) = v7;
    v9 = *(this + 14);
    *(this + 14) = v8;
    *(a2 + 14) = v9;
    LODWORD(v8) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v8;
    LODWORD(v8) = *(this + 31);
    *(this + 31) = *(a2 + 31);
    *(a2 + 31) = v8;
    LODWORD(v8) = *(this + 32);
    *(this + 32) = *(a2 + 32);
    *(a2 + 32) = v8;
    LODWORD(v8) = *(this + 33);
    *(this + 33) = *(a2 + 33);
    *(a2 + 33) = v8;
    v10 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    v11 = *(a2 + 18);
    *(a2 + 17) = v10;
    v12 = *(this + 18);
    *(this + 18) = v11;
    *(a2 + 18) = v12;
    LODWORD(v11) = *(this + 38);
    *(this + 38) = *(a2 + 38);
    *(a2 + 38) = v11;
    LODWORD(v11) = *(this + 39);
    *(this + 39) = *(a2 + 39);
    *(a2 + 39) = v11;
    LODWORD(v11) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v11;
    LOBYTE(v10) = *(this + 216);
    *(this + 216) = *(a2 + 216);
    *(a2 + 216) = v10;
    v13 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    v14 = *(a2 + 22);
    *(a2 + 21) = v13;
    v15 = *(this + 22);
    *(this + 22) = v14;
    *(a2 + 22) = v15;
    LODWORD(v14) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v14;
    LODWORD(v14) = *(this + 46);
    *(this + 46) = *(a2 + 46);
    *(a2 + 46) = v14;
    LODWORD(v14) = *(this + 47);
    *(this + 47) = *(a2 + 47);
    *(a2 + 47) = v14;
    LODWORD(v14) = *(this + 52);
    *(this + 52) = *(a2 + 52);
    *(a2 + 52) = v14;
    v16 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    v17 = *(a2 + 25);
    *(a2 + 24) = v16;
    v18 = *(this + 25);
    *(this + 25) = v17;
    *(a2 + 25) = v18;
    LODWORD(v17) = *(this + 53);
    *(this + 53) = *(a2 + 53);
    *(a2 + 53) = v17;
    LODWORD(v17) = *(this + 55);
    *(this + 55) = *(a2 + 55);
    *(a2 + 55) = v17;
    LODWORD(v17) = *(this + 56);
    *(this + 56) = *(a2 + 56);
    *(a2 + 56) = v17;
    LODWORD(v17) = *(this + 57);
    *(this + 57) = *(a2 + 57);
    *(a2 + 57) = v17;
    LODWORD(v17) = *(this + 58);
    *(this + 58) = *(a2 + 58);
    *(a2 + 58) = v17;
    LODWORD(v17) = *(this + 59);
    *(this + 59) = *(a2 + 59);
    *(a2 + 59) = v17;
    LODWORD(v17) = *(this + 64);
    *(this + 64) = *(a2 + 64);
    *(a2 + 64) = v17;
    LOBYTE(v16) = *(this + 217);
    *(this + 217) = *(a2 + 217);
    *(a2 + 217) = v16;
    v19 = *(this + 30);
    *(this + 30) = *(a2 + 30);
    result = *(a2 + 31);
    *(a2 + 30) = v19;
    v21 = *(this + 31);
    *(this + 31) = result;
    *(a2 + 31) = v21;
    LODWORD(v19) = *(this + 66);
    *(this + 66) = *(a2 + 66);
    *(a2 + 66) = v19;
    LODWORD(v19) = *(this + 67);
    *(this + 67) = *(a2 + 67);
    *(a2 + 67) = v19;
    LODWORD(v19) = *(this + 65);
    *(this + 65) = *(a2 + 65);
    *(a2 + 65) = v19;
  }

  return result;
}

uint64_t awd::metrics::BluetoothExposureNotificationError::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::BluetoothExposureNotificationError *awd::metrics::BluetoothExposureNotificationError::BluetoothExposureNotificationError(awd::metrics::BluetoothExposureNotificationError *this, const awd::metrics::BluetoothExposureNotificationError *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1D4CC78;
  *(this + 6) = 0;
  awd::metrics::BluetoothExposureNotificationError::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothExposureNotificationError::MergeFrom(awd::metrics::BluetoothExposureNotificationError *this, const awd::metrics::BluetoothExposureNotificationError *a2)
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
      v5 = *(a2 + 1);
      *(this + 6) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 4);
      *(this + 6) |= 2u;
      *(this + 4) = v6;
    }
  }
}

void sub_2963CAEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothExposureNotificationError::~BluetoothExposureNotificationError(awd::metrics::BluetoothExposureNotificationError *this)
{
  *this = &unk_2A1D4CC78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4CC78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4CC78;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothExposureNotificationError::default_instance(awd::metrics::BluetoothExposureNotificationError *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothExposureNotificationError::default_instance_;
  if (!awd::metrics::BluetoothExposureNotificationError::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothExposureNotificationError::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothExposureNotificationError::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothExposureNotificationError::MergePartialFromCodedStream(awd::metrics::BluetoothExposureNotificationError *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      *(this + 6) |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        if (v10 >= v6 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 6) |= 2u;
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

uint64_t awd::metrics::BluetoothExposureNotificationError::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::BluetoothExposureNotificationError::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 24))
  {
    if (this[3])
    {
      v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v2 = 0;
      if ((this[3] & 2) == 0)
      {
        goto LABEL_11;
      }
    }

    v3 = *(this + 4);
    if (v3 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
    }

    else
    {
      v4 = 2;
    }

    v2 = (v4 + v2);
  }

  else
  {
    v2 = 0;
  }

LABEL_11:
  *(this + 5) = v2;
  return v2;
}

void awd::metrics::BluetoothExposureNotificationError::CheckTypeAndMergeFrom(awd::metrics::BluetoothExposureNotificationError *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothExposureNotificationError::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothExposureNotificationError::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothExposureNotificationError::CopyFrom(awd::metrics::BluetoothExposureNotificationError *this, const awd::metrics::BluetoothExposureNotificationError *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothExposureNotificationError::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothExposureNotificationError::Swap(uint64_t this, awd::metrics::BluetoothExposureNotificationError *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
  }

  return this;
}

void *awd::metrics::BluetoothLeConnectionPhyStats::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[3] = 0;
  this[4] = v1;
  this[5] = 0;
  this[6] = 0;
  return this;
}

awd::metrics::BluetoothLeConnectionPhyStats *awd::metrics::BluetoothLeConnectionPhyStats::BluetoothLeConnectionPhyStats(awd::metrics::BluetoothLeConnectionPhyStats *this, const awd::metrics::BluetoothLeConnectionPhyStats *a2)
{
  *this = &unk_2A1D4CCF0;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = v3;
  *(this + 5) = 0;
  *(this + 6) = 0;
  awd::metrics::BluetoothLeConnectionPhyStats::MergeFrom(this, a2);
  return this;
}

void awd::metrics::BluetoothLeConnectionPhyStats::MergeFrom(awd::metrics::BluetoothLeConnectionPhyStats *this, const awd::metrics::BluetoothLeConnectionPhyStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      v6 = *(a2 + 1);
      *(this + 13) |= 1u;
      *(this + 1) = v6;
      v4 = *(a2 + 13);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 13) |= 2u;
    *(this + 4) = v7;
    v4 = *(a2 + 13);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    v8 = *(a2 + 5);
    *(this + 13) |= 4u;
    *(this + 5) = v8;
    v4 = *(a2 + 13);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    v9 = *(a2 + 6);
    *(this + 13) |= 8u;
    *(this + 6) = v9;
    v4 = *(a2 + 13);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

LABEL_18:
    v10 = *(a2 + 7);
    *(this + 13) |= 0x10u;
    *(this + 7) = v10;
    v4 = *(a2 + 13);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_22;
    }

LABEL_19:
    v11 = *(a2 + 4);
    *(this + 13) |= 0x20u;
    v12 = *(this + 4);
    if (v12 == MEMORY[0x29EDC9758])
    {
      operator new();
    }

    std::string::operator=(v12, v11);
    v4 = *(a2 + 13);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_22:
    v13 = *(a2 + 10);
    *(this + 13) |= 0x40u;
    *(this + 10) = v13;
    if ((*(a2 + 13) & 0x80) == 0)
    {
      return;
    }

LABEL_12:
    v5 = *(a2 + 11);
    *(this + 13) |= 0x80u;
    *(this + 11) = v5;
  }
}

void sub_2963CB62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::BluetoothLeConnectionPhyStats::~BluetoothLeConnectionPhyStats(awd::metrics::BluetoothLeConnectionPhyStats *this)
{
  *this = &unk_2A1D4CCF0;
  awd::metrics::BluetoothLeConnectionPhyStats::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4CCF0;
  awd::metrics::BluetoothLeConnectionPhyStats::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1D4CCF0;
  awd::metrics::BluetoothLeConnectionPhyStats::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x29C259F00);
}

uint64_t awd::metrics::BluetoothLeConnectionPhyStats::SharedDtor(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C259F00);
  }

  return this;
}

uint64_t awd::metrics::BluetoothLeConnectionPhyStats::default_instance(awd::metrics::BluetoothLeConnectionPhyStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::BluetoothLeConnectionPhyStats::default_instance_;
  if (!awd::metrics::BluetoothLeConnectionPhyStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_Bluetooth_2eproto(0, a2, a3, a4);
    return awd::metrics::BluetoothLeConnectionPhyStats::default_instance_;
  }

  return result;
}

uint64_t awd::metrics::BluetoothLeConnectionPhyStats::Clear(uint64_t this)
{
  v1 = *(this + 52);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    if ((v1 & 0x20) != 0)
    {
      v2 = *(this + 32);
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

    *(this + 40) = 0;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t awd::metrics::BluetoothLeConnectionPhyStats::MergePartialFromCodedStream(awd::metrics::BluetoothLeConnectionPhyStats *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 4)
        {
          break;
        }

        if (TagFallback >> 3 > 6)
        {
          if (v7 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v13 = *(a2 + 2);
              goto LABEL_82;
            }
          }

          else if (v7 == 8 && (TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v13 = *(a2 + 2);
            goto LABEL_90;
          }

          goto LABEL_35;
        }

        if (v7 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v18 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_68;
          }

          goto LABEL_35;
        }

        if (v7 != 6 || v8 != 2)
        {
          goto LABEL_35;
        }

        v11 = *(this + 13);
LABEL_76:
        *(this + 13) = v11 | 0x20;
        if (*(this + 4) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v29 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v29 < v13 && *v29 == 56)
        {
          v20 = v29 + 1;
          *(a2 + 1) = v20;
LABEL_82:
          if (v20 >= v13 || (v30 = *v20, v30 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
            if (!result)
            {
              return result;
            }

            v31 = *(a2 + 1);
            v13 = *(a2 + 2);
          }

          else
          {
            *(this + 10) = v30;
            v31 = v20 + 1;
            *(a2 + 1) = v31;
          }

          *(this + 13) |= 0x40u;
          if (v31 < v13 && *v31 == 64)
          {
            v14 = v31 + 1;
            *(a2 + 1) = v14;
LABEL_90:
            if (v14 >= v13 || (v32 = *v14, v32 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
              if (!result)
              {
                return result;
              }

              v33 = *(a2 + 1);
              v13 = *(a2 + 2);
            }

            else
            {
              *(this + 11) = v32;
              v33 = v14 + 1;
              *(a2 + 1) = v33;
            }

            *(this + 13) |= 0x80u;
            if (v33 == v13 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }

      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v19 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_52;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_60;
        }

        goto LABEL_35;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_35;
      }

      v15 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v15 >= v9 || (v16 = *v15, v16 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v17 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v16;
        v17 = v15 + 1;
        *(a2 + 1) = v17;
      }

      *(this + 13) |= 1u;
      if (v17 < v9 && *v17 == 16)
      {
        v10 = v17 + 1;
        *(a2 + 1) = v10;
LABEL_44:
        v36 = 0;
        if (v10 >= v9 || (v21 = *v10, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36);
          if (!result)
          {
            return result;
          }

          v21 = v36;
          v22 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v22 = v10 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 4) = v21;
        *(this + 13) |= 2u;
        if (v22 < v9 && *v22 == 24)
        {
          v19 = v22 + 1;
          *(a2 + 1) = v19;
LABEL_52:
          if (v19 >= v9 || (v23 = *v19, v23 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v24 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v23;
            v24 = v19 + 1;
            *(a2 + 1) = v24;
          }

          *(this + 13) |= 4u;
          if (v24 < v9 && *v24 == 32)
          {
            v12 = v24 + 1;
            *(a2 + 1) = v12;
LABEL_60:
            v35 = 0;
            if (v12 >= v9 || (v25 = *v12, (v25 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35);
              if (!result)
              {
                return result;
              }

              v25 = v35;
              v26 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v26 = v12 + 1;
              *(a2 + 1) = v26;
            }

            *(this + 6) = v25;
            *(this + 13) |= 8u;
            if (v26 < v9 && *v26 == 40)
            {
              v18 = v26 + 1;
              *(a2 + 1) = v18;
LABEL_68:
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

              v11 = *(this + 13) | 0x10;
              *(this + 13) = v11;
              if (v28 < v9 && *v28 == 50)
              {
                *(a2 + 1) = v28 + 1;
                goto LABEL_76;
              }
            }
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_44;
    }

LABEL_35:
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

uint64_t awd::metrics::BluetoothLeConnectionPhyStats::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 52);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 52);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 52);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 40), a2, a4);
    if ((*(v5 + 52) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  v7 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 52);
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
  v8 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v8, a2, a4);
}

uint64_t awd::metrics::BluetoothLeConnectionPhyStats::ByteSize(awd::metrics::BluetoothLeConnectionPhyStats *this)
{
  LOBYTE(v2) = *(this + 52);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_51;
  }

  if (*(this + 52))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 13);
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_13;
    }
  }

  v4 = *(this + 4);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = 11;
  }

  else if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_13:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 13);
    }

    else
    {
      v7 = 2;
    }

    v3 = (v7 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_15:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_15;
  }

  v8 = *(this + 6);
  if ((v8 & 0x80000000) != 0)
  {
    v9 = 11;
  }

  else if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_16:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_30:
  v10 = *(this + 7);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v11 = 2;
  }

  v3 = (v11 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_17:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_34:
  v12 = *(this + 4);
  v13 = *(v12 + 23);
  v14 = v13;
  v15 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v16 = *(v12 + 23);
  }

  else
  {
    v16 = v15;
  }

  if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
    v13 = *(v12 + 23);
    v15 = *(v12 + 8);
    v2 = *(this + 13);
    v14 = *(v12 + 23);
  }

  else
  {
    v17 = 1;
  }

  if (v14 < 0)
  {
    v13 = v15;
  }

  v3 = (v3 + v17 + v13 + 1);
  if ((v2 & 0x40) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_47;
  }

LABEL_43:
  v18 = *(this + 10);
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
  if ((v2 & 0x80) != 0)
  {
LABEL_47:
    v20 = *(this + 11);
    if (v20 >= 0x80)
    {
      v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    }

    else
    {
      v21 = 2;
    }

    v3 = (v21 + v3);
  }

LABEL_51:
  *(this + 12) = v3;
  return v3;
}

void awd::metrics::BluetoothLeConnectionPhyStats::CheckTypeAndMergeFrom(awd::metrics::BluetoothLeConnectionPhyStats *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    awd::metrics::BluetoothLeConnectionPhyStats::CheckTypeAndMergeFrom();
  }

  awd::metrics::BluetoothLeConnectionPhyStats::MergeFrom(this, lpsrc);
}

void awd::metrics::BluetoothLeConnectionPhyStats::CopyFrom(awd::metrics::BluetoothLeConnectionPhyStats *this, const awd::metrics::BluetoothLeConnectionPhyStats *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::metrics::BluetoothLeConnectionPhyStats::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::BluetoothLeConnectionPhyStats::Swap(uint64_t this, awd::metrics::BluetoothLeConnectionPhyStats *a2)
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
    v3 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v3;
    LODWORD(v3) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v3;
    LODWORD(v3) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v3;
    LODWORD(v3) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v3;
    LODWORD(v3) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v3;
  }

  return this;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(uint64_t a1, int a2)
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

void sub_2963CC53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors>::TypeHandler>(uint64_t a1, int a2)
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

void sub_2963CC5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents>::TypeHandler>(uint64_t a1, int a2)
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

void sub_2963CC664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t result)
{
  if (*(result + 8) >= 1)
  {
    v1 = 0;
    do
    {
      v2 = *(*result + 8 * v1);
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

      ++v1;
    }

    while (v1 < *(result + 8));
  }

  *(result + 8) = 0;
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(uint64_t result)
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

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors>::TypeHandler>(uint64_t result)
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

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents>::TypeHandler>(uint64_t result)
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
  __cxa_throw(exception, off_29EE31C90, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(int *a1)
{
  if (a1[3] >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*a1 + 8 * v2);
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v2;
    }

    while (v2 < a1[3]);
  }

  result = *a1;
  if (*a1)
  {

    JUMPOUT(0x29C259EE0);
  }

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

uint64_t *wireless_diagnostics::google::protobuf::RepeatedField<BOOL>::Reserve(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = result;
    v4 = *result;
    v5 = 2 * v2;
    if (v5 <= a2)
    {
      v5 = a2;
    }

    if (v5 <= 4)
    {
      v6 = 4;
    }

    else
    {
      v6 = v5;
    }

    *(v3 + 3) = v6;
    operator new[]();
  }

  return result;
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(uint64_t *a1)
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

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t *wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(uint64_t *result, int a2)
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

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI>::TypeHandler>(a2, v5);
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
      awd::metrics::BluetoothMagnetPhyStats_BluetoothMagnetPhyStatsPERvsRSSI::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
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

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors>::TypeHandler>(uint64_t *a1)
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

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors>::TypeHandler>(a2, v5);
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
      awd::metrics::BluetoothExposureNotificationDaemonStats_BluetoothExposureNotificationsSqliteErrors::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

uint64_t wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents>::TypeHandler>(uint64_t *a1)
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

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

void wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents>::TypeHandler>(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  if (*(a2 + 8) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Get<wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents>::TypeHandler>(a2, v5);
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
      awd::metrics::BluetoothExposureNotificationFrameworkEvent_BluetoothExposureNotificationFrameworkEvents::MergeFrom(*(v9 + 8 * v8), v6);
      ++v5;
    }

    while (v5 < *(a2 + 8));
  }
}

uint64_t awd::metrics::BluetoothMagnetPhyStats::BluetoothMagnetPhyStats(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = OUTLINED_FUNCTION_0(a1);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, v3);
  }

  if (*a2)
  {
    MEMORY[0x29C259EE0](*a2, v3);
  }

  result = *a3;
  if (*a3)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t awd::metrics::BluetoothA2DPAudioLinkInfo::BluetoothA2DPAudioLinkInfo(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_0(a1);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, v2);
  }

  result = *a2;
  if (*a2)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t awd::metrics::BluetoothHFPAudioLinkInfo::BluetoothHFPAudioLinkInfo(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = OUTLINED_FUNCTION_0(a1);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, v3);
  }

  if (*a2)
  {
    MEMORY[0x29C259EE0](*a2, v3);
  }

  result = *a3;
  if (*a3)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryEvent::BluetoothAccessoryEvent(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_0(a1);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, v2);
  }

  result = *a2;
  if (*a2)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryIedSensors::BluetoothAccessoryIedSensors(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v8 = OUTLINED_FUNCTION_0(a1);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, v4);
  }

  if (*a2)
  {
    MEMORY[0x29C259EE0](*a2, v4);
  }

  if (*a3)
  {
    MEMORY[0x29C259EE0](*a3, v4);
  }

  result = *a4;
  if (*a4)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo::BluetoothACIMagnetLinkInfo(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v8 = OUTLINED_FUNCTION_0(a1);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, v4);
  }

  if (*a2)
  {
    MEMORY[0x29C259EE0](*a2, v4);
  }

  if (*a3)
  {
    MEMORY[0x29C259EE0](*a3, v4);
  }

  result = *a4;
  if (*a4)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIAudioVoiceLinkInfo2::BluetoothACIAudioVoiceLinkInfo2(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = OUTLINED_FUNCTION_0(a1);
  if (v6)
  {
    MEMORY[0x29C259EE0](v6, v3);
  }

  if (*a2)
  {
    MEMORY[0x29C259EE0](*a2, v3);
  }

  result = *a3;
  if (*a3)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t awd::metrics::BluetoothACIMagnetLinkInfo1::BluetoothACIMagnetLinkInfo1(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v8 = OUTLINED_FUNCTION_0(a1);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, v4);
  }

  if (*a2)
  {
    MEMORY[0x29C259EE0](*a2, v4);
  }

  if (*a3)
  {
    MEMORY[0x29C259EE0](*a3, v4);
  }

  result = *a4;
  if (*a4)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t awd::metrics::BluetoothAdvBABufferStats::BluetoothAdvBABufferStats(uint64_t a1, uint64_t *a2)
{
  v4 = OUTLINED_FUNCTION_0(a1);
  if (v4)
  {
    MEMORY[0x29C259EE0](v4, v2);
  }

  result = *a2;
  if (*a2)
  {

    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryBatteryHealth::BluetoothAccessoryBatteryHealth(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    JUMPOUT(0x29C259EE0);
  }

  return result;
}

uint64_t awd::metrics::BluetoothAccessoryOhdSensors::BluetoothAccessoryOhdSensors(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v8 = OUTLINED_FUNCTION_0(a1);
  if (v8)
  {
    MEMORY[0x29C259EE0](v8, v4);
  }

  if (*a2)
  {
    MEMORY[0x29C259EE0](*a2, v4);
  }

  if (*a3)
  {
    MEMORY[0x29C259EE0](*a3, v4);
  }

  result = *a4;
  if (*a4)
  {

    JUMPOUT(0x29C259EE0);
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