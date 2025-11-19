uint64_t *TSD::Attribution::Clear(TSD::Attribution *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x1F) == 0)
  {
    goto LABEL_27;
  }

  if (v1)
  {
    v2 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_4:
    if ((v1 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    v4 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v1 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_6:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_27;
    }

LABEL_24:
    v6 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
    }

    goto LABEL_27;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_12:
  v3 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v3 + 23) < 0)
  {
    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *v3 = 0;
    *(v3 + 23) = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_16;
    }
  }

LABEL_5:
  if ((v1 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_20:
  v5 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v1 & 0x10) != 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  v8 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v8)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::ImageArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v74 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v74) & 1) == 0)
  {
    while (1)
    {
      v7 = (v74 + 1);
      LODWORD(v8) = *v74;
      if (*v74 < 0)
      {
        v8 = (v8 + (*v7 << 7) - 128);
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v74, v8);
          v74 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_157;
          }

          v7 = TagFallback;
          goto LABEL_7;
        }

        v7 = (v74 + 2);
      }

      v74 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_139;
          }

          *(a1 + 40) |= 1u;
          v9 = *(a1 + 48);
          if (!v9)
          {
            v10 = *(a1 + 8);
            if (v10)
            {
              v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
            }

            v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableArchive>(v10);
            *(a1 + 48) = v9;
            v7 = v74;
          }

          v11 = sub_27680C648(a3, v9, v7);
          goto LABEL_130;
        case 2u:
          if (v8 != 18)
          {
            goto LABEL_139;
          }

          *(a1 + 40) |= 2u;
          v20 = *(a1 + 56);
          if (v20)
          {
            goto LABEL_87;
          }

          v37 = *(a1 + 8);
          if (v37)
          {
            v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
          }

          v38 = MEMORY[0x277C9BB20](v37);
          LODWORD(v20) = v38;
          *(a1 + 56) = v38;
          goto LABEL_86;
        case 3u:
          if (v8 != 26)
          {
            goto LABEL_139;
          }

          *(a1 + 40) |= 4u;
          v20 = *(a1 + 64);
          if (v20)
          {
            goto LABEL_87;
          }

          v28 = *(a1 + 8);
          if (v28)
          {
            v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
          }

          v29 = MEMORY[0x277C9BB20](v28);
          LODWORD(v20) = v29;
          *(a1 + 64) = v29;
          goto LABEL_86;
        case 4u:
          if (v8 != 34)
          {
            goto LABEL_139;
          }

          *(a1 + 40) |= 8u;
          v32 = *(a1 + 72);
          if (v32)
          {
            goto LABEL_122;
          }

          v33 = *(a1 + 8);
          if (v33)
          {
            v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
          }

          v34 = MEMORY[0x277C9BAD0](v33);
          LODWORD(v32) = v34;
          *(a1 + 72) = v34;
          goto LABEL_121;
        case 5u:
          if (v8 != 42)
          {
            goto LABEL_139;
          }

          *(a1 + 40) |= 0x10u;
          v20 = *(a1 + 80);
          if (v20)
          {
            goto LABEL_87;
          }

          v21 = *(a1 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C9BB20](v21);
          LODWORD(v20) = v22;
          *(a1 + 80) = v22;
          goto LABEL_86;
        case 6u:
          if (v8 != 50)
          {
            goto LABEL_139;
          }

          *(a1 + 40) |= 0x20u;
          v20 = *(a1 + 88);
          if (v20)
          {
            goto LABEL_87;
          }

          v45 = *(a1 + 8);
          if (v45)
          {
            v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
          }

          v46 = MEMORY[0x277C9BB20](v45);
          LODWORD(v20) = v46;
          *(a1 + 88) = v46;
          goto LABEL_86;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_139;
          }

          v5 |= 0x80000u;
          v52 = (v7 + 1);
          LODWORD(v53) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_103;
          }

          v54 = *v52;
          v53 = (v53 + (v54 << 7) - 128);
          if (v54 < 0)
          {
            v72 = google::protobuf::internal::VarintParseSlow32(v7, v53);
            v74 = v72;
            *(a1 + 200) = v73;
            if (!v72)
            {
              goto LABEL_157;
            }
          }

          else
          {
            v52 = (v7 + 2);
LABEL_103:
            v74 = v52;
            *(a1 + 200) = v53;
          }

          goto LABEL_131;
        case 8u:
          if (v8 != 66)
          {
            goto LABEL_139;
          }

          *(a1 + 40) |= 0x40u;
          v20 = *(a1 + 96);
          if (v20)
          {
            goto LABEL_87;
          }

          v35 = *(a1 + 8);
          if (v35)
          {
            v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
          }

          v36 = MEMORY[0x277C9BB20](v35);
          LODWORD(v20) = v36;
          *(a1 + 96) = v36;
LABEL_86:
          v7 = v74;
LABEL_87:
          v11 = sub_27680B6EC(a3, v20, v7);
          goto LABEL_130;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_139;
          }

          *(a1 + 40) |= 0x80u;
          v32 = *(a1 + 104);
          if (v32)
          {
            goto LABEL_122;
          }

          v59 = *(a1 + 8);
          if (v59)
          {
            v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
          }

          v60 = MEMORY[0x277C9BAD0](v59);
          LODWORD(v32) = v60;
          *(a1 + 104) = v60;
LABEL_121:
          v7 = v74;
LABEL_122:
          v11 = sub_27680AB8C(a3, v32, v7);
          goto LABEL_130;
        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_139;
          }

          *(a1 + 40) |= 0x100u;
          v25 = *(a1 + 112);
          if (v25)
          {
            goto LABEL_110;
          }

          v26 = *(a1 + 8);
          if (v26)
          {
            v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
          }

          v27 = MEMORY[0x277C9BAC0](v26);
          LODWORD(v25) = v27;
          *(a1 + 112) = v27;
          goto LABEL_109;
        case 0xBu:
          if (v8 != 90)
          {
            goto LABEL_139;
          }

          *(a1 + 40) |= 0x200u;
          v13 = *(a1 + 120);
          if (v13)
          {
            goto LABEL_129;
          }

          v57 = *(a1 + 8);
          if (v57)
          {
            v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
          }

          v58 = MEMORY[0x277C9BA90](v57);
          LODWORD(v13) = v58;
          *(a1 + 120) = v58;
          goto LABEL_128;
        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_139;
          }

          *(a1 + 40) |= 0x400u;
          v13 = *(a1 + 128);
          if (v13)
          {
            goto LABEL_129;
          }

          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v19 = MEMORY[0x277C9BA90](v18);
          LODWORD(v13) = v19;
          *(a1 + 128) = v19;
          goto LABEL_128;
        case 0xDu:
          if (v8 != 106)
          {
            goto LABEL_139;
          }

          *(a1 + 40) |= 0x800u;
          v13 = *(a1 + 136);
          if (v13)
          {
            goto LABEL_129;
          }

          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = MEMORY[0x277C9BA90](v23);
          LODWORD(v13) = v24;
          *(a1 + 136) = v24;
          goto LABEL_128;
        case 0xEu:
          if (v8 != 114)
          {
            goto LABEL_139;
          }

          *(a1 + 40) |= 0x1000u;
          v50 = *(a1 + 144);
          if (!v50)
          {
            v51 = *(a1 + 8);
            if (v51)
            {
              v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
            }

            v50 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageAdjustmentsArchive>(v51);
            *(a1 + 144) = v50;
            v7 = v74;
          }

          v11 = sub_27680CA58(a3, v50, v7);
          goto LABEL_130;
        case 0xFu:
          if (v8 != 122)
          {
            goto LABEL_139;
          }

          *(a1 + 40) |= 0x2000u;
          v13 = *(a1 + 152);
          if (v13)
          {
            goto LABEL_129;
          }

          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = MEMORY[0x277C9BA90](v16);
          LODWORD(v13) = v17;
          *(a1 + 152) = v17;
          goto LABEL_128;
        case 0x10u:
          if (v8 != 130)
          {
            goto LABEL_139;
          }

          *(a1 + 40) |= 0x4000u;
          v13 = *(a1 + 160);
          if (v13)
          {
            goto LABEL_129;
          }

          v30 = *(a1 + 8);
          if (v30)
          {
            v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
          }

          v31 = MEMORY[0x277C9BA90](v30);
          LODWORD(v13) = v31;
          *(a1 + 160) = v31;
          goto LABEL_128;
        case 0x11u:
          if (v8 != 138)
          {
            goto LABEL_139;
          }

          *(a1 + 40) |= 0x8000u;
          v13 = *(a1 + 168);
          if (v13)
          {
            goto LABEL_129;
          }

          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C9BA90](v14);
          LODWORD(v13) = v15;
          *(a1 + 168) = v15;
          goto LABEL_128;
        case 0x12u:
          if (v8 != 144)
          {
            goto LABEL_139;
          }

          v5 |= 0x100000u;
          v40 = (v7 + 1);
          v39 = *v7;
          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_75;
          }

          v41 = *v40;
          v39 = (v41 << 7) + v39 - 128;
          if (v41 < 0)
          {
            v66 = google::protobuf::internal::VarintParseSlow64(v7, v39);
            v74 = v66;
            *(a1 + 204) = v67 != 0;
            if (!v66)
            {
              goto LABEL_157;
            }
          }

          else
          {
            v40 = (v7 + 2);
LABEL_75:
            v74 = v40;
            *(a1 + 204) = v39 != 0;
          }

          goto LABEL_131;
        case 0x13u:
          if (v8 != 154)
          {
            goto LABEL_139;
          }

          *(a1 + 40) |= 0x10000u;
          v25 = *(a1 + 176);
          if (v25)
          {
            goto LABEL_110;
          }

          v55 = *(a1 + 8);
          if (v55)
          {
            v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
          }

          v56 = MEMORY[0x277C9BAC0](v55);
          LODWORD(v25) = v56;
          *(a1 + 176) = v56;
LABEL_109:
          v7 = v74;
LABEL_110:
          v11 = sub_27680AC5C(a3, v25, v7);
          goto LABEL_130;
        case 0x14u:
          if (v8 != 162)
          {
            goto LABEL_139;
          }

          *(a1 + 40) |= 0x20000u;
          v63 = *(a1 + 184);
          if (!v63)
          {
            v64 = *(a1 + 8);
            if (v64)
            {
              v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
            }

            v63 = google::protobuf::Arena::CreateMaybeMessage<TSD::Attribution>(v64);
            *(a1 + 184) = v63;
            v7 = v74;
          }

          v11 = sub_27680CB28(a3, v63, v7);
          goto LABEL_130;
        case 0x15u:
          if (v8 != 168)
          {
            goto LABEL_139;
          }

          v5 |= 0x200000u;
          v43 = (v7 + 1);
          v42 = *v7;
          if ((v42 & 0x8000000000000000) == 0)
          {
            goto LABEL_80;
          }

          v44 = *v43;
          v42 = (v44 << 7) + v42 - 128;
          if (v44 < 0)
          {
            v68 = google::protobuf::internal::VarintParseSlow64(v7, v42);
            v74 = v68;
            *(a1 + 205) = v69 != 0;
            if (!v68)
            {
              goto LABEL_157;
            }
          }

          else
          {
            v43 = (v7 + 2);
LABEL_80:
            v74 = v43;
            *(a1 + 205) = v42 != 0;
          }

          goto LABEL_131;
        case 0x16u:
          if (v8 != 176)
          {
            goto LABEL_139;
          }

          v5 |= 0x400000u;
          v48 = (v7 + 1);
          v47 = *v7;
          if ((v47 & 0x8000000000000000) == 0)
          {
            goto LABEL_92;
          }

          v49 = *v48;
          v47 = (v49 << 7) + v47 - 128;
          if (v49 < 0)
          {
            v70 = google::protobuf::internal::VarintParseSlow64(v7, v47);
            v74 = v70;
            *(a1 + 206) = v71 != 0;
            if (!v70)
            {
              goto LABEL_157;
            }
          }

          else
          {
            v48 = (v7 + 2);
LABEL_92:
            v74 = v48;
            *(a1 + 206) = v47 != 0;
          }

          goto LABEL_131;
        case 0x17u:
          if (v8 != 186)
          {
            goto LABEL_139;
          }

          *(a1 + 40) |= 0x40000u;
          v13 = *(a1 + 192);
          if (v13)
          {
            goto LABEL_129;
          }

          v61 = *(a1 + 8);
          if (v61)
          {
            v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
          }

          v62 = MEMORY[0x277C9BA90](v61);
          LODWORD(v13) = v62;
          *(a1 + 192) = v62;
LABEL_128:
          v7 = v74;
LABEL_129:
          v11 = sub_27680B7BC(a3, v13, v7);
          goto LABEL_130;
        default:
LABEL_139:
          if (v8)
          {
            v65 = (v8 & 7) == 4;
          }

          else
          {
            v65 = 1;
          }

          if (v65)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((v8 - 800) >> 5 > 0xE0)
          {
            if ((*(a1 + 8) & 1) == 0)
            {
              sub_27670AF80((a1 + 8));
            }

            v11 = google::protobuf::internal::UnknownFieldParse();
          }

          else
          {
            v11 = google::protobuf::internal::ExtensionSet::ParseField();
          }

LABEL_130:
          v74 = v11;
          if (!v11)
          {
LABEL_157:
            v74 = 0;
            goto LABEL_2;
          }

LABEL_131:
          if (sub_27670AF08(a3, &v74))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return v74;
}

const google::protobuf::UnknownFieldSet *TSD::ImageArchive::_InternalSerialize(TSD::ImageArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *v4 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = (v4 + 3);
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          v9 = (v9 + 1);
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        v4[2] = v10;
        v9 = (v4 + 3);
      }
    }

    else
    {
      v4[1] = v8;
      v9 = (v4 + 2);
    }

    v4 = TSD::DrawableArchive::_InternalSerialize(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
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

  v13 = *(this + 7);
  *v4 = 18;
  v14 = *(v13 + 5);
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = v4 + 3;
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
      v4[2] = v16;
      v15 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v14;
    v15 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_55;
  }

LABEL_45:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(this + 8);
  *v4 = 26;
  v20 = *(v19 + 5);
  if (v20 > 0x7F)
  {
    v4[1] = v20 | 0x80;
    v22 = v20 >> 7;
    if (v20 >> 14)
    {
      v21 = v4 + 3;
      do
      {
        *(v21 - 1) = v22 | 0x80;
        v23 = v22 >> 7;
        ++v21;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
      *(v21 - 1) = v23;
    }

    else
    {
      v4[2] = v22;
      v21 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v20;
    v21 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v19, v21, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_65;
  }

LABEL_55:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(this + 9);
  *v4 = 34;
  v26 = *(v25 + 5);
  if (v26 > 0x7F)
  {
    v4[1] = v26 | 0x80;
    v28 = v26 >> 7;
    if (v26 >> 14)
    {
      v27 = v4 + 3;
      do
      {
        *(v27 - 1) = v28 | 0x80;
        v29 = v28 >> 7;
        ++v27;
        v30 = v28 >> 14;
        v28 >>= 7;
      }

      while (v30);
      *(v27 - 1) = v29;
    }

    else
    {
      v4[2] = v28;
      v27 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v26;
    v27 = v4 + 2;
  }

  v4 = TSP::Size::_InternalSerialize(v25, v27, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_75;
  }

LABEL_65:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v31 = *(this + 10);
  *v4 = 42;
  v32 = *(v31 + 5);
  if (v32 > 0x7F)
  {
    v4[1] = v32 | 0x80;
    v34 = v32 >> 7;
    if (v32 >> 14)
    {
      v33 = v4 + 3;
      do
      {
        *(v33 - 1) = v34 | 0x80;
        v35 = v34 >> 7;
        ++v33;
        v36 = v34 >> 14;
        v34 >>= 7;
      }

      while (v36);
      *(v33 - 1) = v35;
    }

    else
    {
      v4[2] = v34;
      v33 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v32;
    v33 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v31, v33, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_8;
    }

LABEL_85:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v43 = *(this + 50);
    *v4 = 56;
    if (v43 > 0x7F)
    {
      v4[1] = v43 | 0x80;
      v44 = v43 >> 7;
      if (v43 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v44 | 0x80;
          v45 = v44 >> 7;
          ++v4;
          v46 = v44 >> 14;
          v44 >>= 7;
        }

        while (v46);
        *(v4 - 1) = v45;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v4[2] = v44;
        v4 += 3;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_96;
        }
      }
    }

    else
    {
      v4[1] = v43;
      v4 += 2;
      if ((v6 & 0x40) != 0)
      {
        goto LABEL_96;
      }
    }

LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_106;
  }

LABEL_75:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v37 = *(this + 11);
  *v4 = 50;
  v38 = *(v37 + 5);
  if (v38 > 0x7F)
  {
    v4[1] = v38 | 0x80;
    v40 = v38 >> 7;
    if (v38 >> 14)
    {
      v39 = v4 + 3;
      do
      {
        *(v39 - 1) = v40 | 0x80;
        v41 = v40 >> 7;
        ++v39;
        v42 = v40 >> 14;
        v40 >>= 7;
      }

      while (v42);
      *(v39 - 1) = v41;
    }

    else
    {
      v4[2] = v40;
      v39 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v38;
    v39 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v37, v39, a3);
  if ((v6 & 0x80000) != 0)
  {
    goto LABEL_85;
  }

LABEL_8:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_96:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v47 = *(this + 12);
  *v4 = 66;
  v48 = *(v47 + 5);
  if (v48 > 0x7F)
  {
    v4[1] = v48 | 0x80;
    v50 = v48 >> 7;
    if (v48 >> 14)
    {
      v49 = v4 + 3;
      do
      {
        *(v49 - 1) = v50 | 0x80;
        v51 = v50 >> 7;
        ++v49;
        v52 = v50 >> 14;
        v50 >>= 7;
      }

      while (v52);
      *(v49 - 1) = v51;
    }

    else
    {
      v4[2] = v50;
      v49 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v48;
    v49 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v47, v49, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_10:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_116;
  }

LABEL_106:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v53 = *(this + 13);
  *v4 = 74;
  v54 = *(v53 + 5);
  if (v54 > 0x7F)
  {
    v4[1] = v54 | 0x80;
    v56 = v54 >> 7;
    if (v54 >> 14)
    {
      v55 = v4 + 3;
      do
      {
        *(v55 - 1) = v56 | 0x80;
        v57 = v56 >> 7;
        ++v55;
        v58 = v56 >> 14;
        v56 >>= 7;
      }

      while (v58);
      *(v55 - 1) = v57;
    }

    else
    {
      v4[2] = v56;
      v55 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v54;
    v55 = v4 + 2;
  }

  v4 = TSP::Size::_InternalSerialize(v53, v55, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_11:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_126;
  }

LABEL_116:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v59 = *(this + 14);
  *v4 = 82;
  v60 = *(v59 + 10);
  if (v60 > 0x7F)
  {
    v4[1] = v60 | 0x80;
    v62 = v60 >> 7;
    if (v60 >> 14)
    {
      v61 = v4 + 3;
      do
      {
        *(v61 - 1) = v62 | 0x80;
        v63 = v62 >> 7;
        ++v61;
        v64 = v62 >> 14;
        v62 >>= 7;
      }

      while (v64);
      *(v61 - 1) = v63;
    }

    else
    {
      v4[2] = v62;
      v61 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v60;
    v61 = v4 + 2;
  }

  v4 = TSP::Path::_InternalSerialize(v59, v61, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_12:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_136;
  }

LABEL_126:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v65 = *(this + 15);
  *v4 = 90;
  v66 = *(v65 + 5);
  if (v66 > 0x7F)
  {
    v4[1] = v66 | 0x80;
    v68 = v66 >> 7;
    if (v66 >> 14)
    {
      v67 = v4 + 3;
      do
      {
        *(v67 - 1) = v68 | 0x80;
        v69 = v68 >> 7;
        ++v67;
        v70 = v68 >> 14;
        v68 >>= 7;
      }

      while (v70);
      *(v67 - 1) = v69;
    }

    else
    {
      v4[2] = v68;
      v67 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v66;
    v67 = v4 + 2;
  }

  v4 = TSP::DataReference::_InternalSerialize(v65, v67, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_13:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_146;
  }

LABEL_136:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v71 = *(this + 16);
  *v4 = 98;
  v72 = *(v71 + 5);
  if (v72 > 0x7F)
  {
    v4[1] = v72 | 0x80;
    v74 = v72 >> 7;
    if (v72 >> 14)
    {
      v73 = v4 + 3;
      do
      {
        *(v73 - 1) = v74 | 0x80;
        v75 = v74 >> 7;
        ++v73;
        v76 = v74 >> 14;
        v74 >>= 7;
      }

      while (v76);
      *(v73 - 1) = v75;
    }

    else
    {
      v4[2] = v74;
      v73 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v72;
    v73 = v4 + 2;
  }

  v4 = TSP::DataReference::_InternalSerialize(v71, v73, a3);
  if ((v6 & 0x800) == 0)
  {
LABEL_14:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_156;
  }

LABEL_146:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v77 = *(this + 17);
  *v4 = 106;
  v78 = *(v77 + 5);
  if (v78 > 0x7F)
  {
    v4[1] = v78 | 0x80;
    v80 = v78 >> 7;
    if (v78 >> 14)
    {
      v79 = v4 + 3;
      do
      {
        *(v79 - 1) = v80 | 0x80;
        v81 = v80 >> 7;
        ++v79;
        v82 = v80 >> 14;
        v80 >>= 7;
      }

      while (v82);
      *(v79 - 1) = v81;
    }

    else
    {
      v4[2] = v80;
      v79 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v78;
    v79 = v4 + 2;
  }

  v4 = TSP::DataReference::_InternalSerialize(v77, v79, a3);
  if ((v6 & 0x1000) == 0)
  {
LABEL_15:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_166;
  }

LABEL_156:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v83 = *(this + 18);
  *v4 = 114;
  v84 = *(v83 + 5);
  if (v84 > 0x7F)
  {
    v4[1] = v84 | 0x80;
    v86 = v84 >> 7;
    if (v84 >> 14)
    {
      v85 = v4 + 3;
      do
      {
        *(v85 - 1) = v86 | 0x80;
        v87 = v86 >> 7;
        ++v85;
        v88 = v86 >> 14;
        v86 >>= 7;
      }

      while (v88);
      *(v85 - 1) = v87;
    }

    else
    {
      v4[2] = v86;
      v85 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v84;
    v85 = v4 + 2;
  }

  v4 = TSD::ImageAdjustmentsArchive::_InternalSerialize(v83, v85, a3, v4);
  if ((v6 & 0x2000) == 0)
  {
LABEL_16:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_176;
  }

LABEL_166:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v89 = *(this + 19);
  *v4 = 122;
  v90 = *(v89 + 5);
  if (v90 > 0x7F)
  {
    v4[1] = v90 | 0x80;
    v92 = v90 >> 7;
    if (v90 >> 14)
    {
      v91 = v4 + 3;
      do
      {
        *(v91 - 1) = v92 | 0x80;
        v93 = v92 >> 7;
        ++v91;
        v94 = v92 >> 14;
        v92 >>= 7;
      }

      while (v94);
      *(v91 - 1) = v93;
    }

    else
    {
      v4[2] = v92;
      v91 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v90;
    v91 = v4 + 2;
  }

  v4 = TSP::DataReference::_InternalSerialize(v89, v91, a3);
  if ((v6 & 0x4000) == 0)
  {
LABEL_17:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_186;
  }

LABEL_176:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v95 = *(this + 20);
  *v4 = 386;
  v96 = *(v95 + 5);
  if (v96 > 0x7F)
  {
    v4[2] = v96 | 0x80;
    v98 = v96 >> 7;
    if (v96 >> 14)
    {
      v97 = v4 + 4;
      do
      {
        *(v97 - 1) = v98 | 0x80;
        v99 = v98 >> 7;
        ++v97;
        v100 = v98 >> 14;
        v98 >>= 7;
      }

      while (v100);
      *(v97 - 1) = v99;
    }

    else
    {
      v4[3] = v98;
      v97 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v96;
    v97 = v4 + 3;
  }

  v4 = TSP::DataReference::_InternalSerialize(v95, v97, a3);
  if ((v6 & 0x8000) == 0)
  {
LABEL_18:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_196;
  }

LABEL_186:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v101 = *(this + 21);
  *v4 = 394;
  v102 = *(v101 + 5);
  if (v102 > 0x7F)
  {
    v4[2] = v102 | 0x80;
    v104 = v102 >> 7;
    if (v102 >> 14)
    {
      v103 = v4 + 4;
      do
      {
        *(v103 - 1) = v104 | 0x80;
        v105 = v104 >> 7;
        ++v103;
        v106 = v104 >> 14;
        v104 >>= 7;
      }

      while (v106);
      *(v103 - 1) = v105;
    }

    else
    {
      v4[3] = v104;
      v103 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v102;
    v103 = v4 + 3;
  }

  v4 = TSP::DataReference::_InternalSerialize(v101, v103, a3);
  if ((v6 & 0x100000) == 0)
  {
LABEL_19:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_199;
  }

LABEL_196:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v107 = *(this + 204);
  *v4 = 400;
  v4[2] = v107;
  v4 += 3;
  if ((v6 & 0x10000) == 0)
  {
LABEL_20:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_209;
  }

LABEL_199:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v108 = *(this + 22);
  *v4 = 410;
  v109 = *(v108 + 10);
  if (v109 > 0x7F)
  {
    v4[2] = v109 | 0x80;
    v111 = v109 >> 7;
    if (v109 >> 14)
    {
      v110 = v4 + 4;
      do
      {
        *(v110 - 1) = v111 | 0x80;
        v112 = v111 >> 7;
        ++v110;
        v113 = v111 >> 14;
        v111 >>= 7;
      }

      while (v113);
      *(v110 - 1) = v112;
    }

    else
    {
      v4[3] = v111;
      v110 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v109;
    v110 = v4 + 3;
  }

  v4 = TSP::Path::_InternalSerialize(v108, v110, a3);
  if ((v6 & 0x20000) == 0)
  {
LABEL_21:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_219;
  }

LABEL_209:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v114 = *(this + 23);
  *v4 = 418;
  v115 = *(v114 + 5);
  if (v115 > 0x7F)
  {
    v4[2] = v115 | 0x80;
    v117 = v115 >> 7;
    if (v115 >> 14)
    {
      v116 = (v4 + 4);
      do
      {
        *(v116 - 1) = v117 | 0x80;
        v118 = v117 >> 7;
        v116 = (v116 + 1);
        v119 = v117 >> 14;
        v117 >>= 7;
      }

      while (v119);
      *(v116 - 1) = v118;
    }

    else
    {
      v4[3] = v117;
      v116 = (v4 + 4);
    }
  }

  else
  {
    v4[2] = v115;
    v116 = (v4 + 3);
  }

  v4 = TSD::Attribution::_InternalSerialize(v114, v116, a3);
  if ((v6 & 0x200000) == 0)
  {
LABEL_22:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_222;
  }

LABEL_219:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v120 = *(this + 205);
  *v4 = 424;
  v4[2] = v120;
  v4 += 3;
  if ((v6 & 0x400000) == 0)
  {
LABEL_23:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_225;
  }

LABEL_222:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v121 = *(this + 206);
  *v4 = 432;
  v4[2] = v121;
  v4 += 3;
  if ((v6 & 0x40000) != 0)
  {
LABEL_225:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v122 = *(this + 24);
    *v4 = 442;
    v123 = *(v122 + 5);
    if (v123 > 0x7F)
    {
      v4[2] = v123 | 0x80;
      v125 = v123 >> 7;
      if (v123 >> 14)
      {
        v124 = v4 + 4;
        do
        {
          *(v124 - 1) = v125 | 0x80;
          v126 = v125 >> 7;
          ++v124;
          v127 = v125 >> 14;
          v125 >>= 7;
        }

        while (v127);
        *(v124 - 1) = v126;
      }

      else
      {
        v4[3] = v125;
        v124 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v123;
      v124 = v4 + 3;
    }

    v4 = TSP::DataReference::_InternalSerialize(v122, v124, a3);
  }

LABEL_235:
  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 100, 1000, v4, a3);
  v130 = *(this + 1);
  if (v130)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v130 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v129);
  }

  return result;
}

uint64_t TSD::ImageArchive::ByteSizeLong(TSD::ImageArchive *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 10);
  if (v3)
  {
    v4 = TSD::DrawableArchive::ByteSizeLong(*(this + 6));
    v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v3 = *(this + 10);
  }

  if ((v3 & 0xFE) == 0)
  {
    goto LABEL_12;
  }

  if ((v3 & 2) != 0)
  {
    v9 = TSP::Reference::ByteSizeLong(*(this + 7));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) == 0)
    {
LABEL_6:
      if ((v3 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_39;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_6;
  }

  v10 = TSP::Reference::ByteSizeLong(*(this + 8));
  v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 8) == 0)
  {
LABEL_7:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  v11 = TSP::Size::ByteSizeLong(*(this + 9));
  v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x10) == 0)
  {
LABEL_8:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_9;
    }

LABEL_41:
    v13 = TSP::Reference::ByteSizeLong(*(this + 11));
    v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 0x40) == 0)
    {
LABEL_10:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_40:
  v12 = TSP::Reference::ByteSizeLong(*(this + 10));
  v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_41;
  }

LABEL_9:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_10;
  }

LABEL_42:
  v14 = TSP::Reference::ByteSizeLong(*(this + 12));
  v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x80) != 0)
  {
LABEL_11:
    v5 = TSP::Size::ByteSizeLong(*(this + 13));
    v2 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_22;
  }

  if ((v3 & 0x100) != 0)
  {
    v15 = TSP::Path::ByteSizeLong(*(this + 14));
    v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 0x200) == 0)
    {
LABEL_15:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_46;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_15;
  }

  v16 = TSP::DataReference::ByteSizeLong(*(this + 15));
  v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x400) == 0)
  {
LABEL_16:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  v17 = TSP::DataReference::ByteSizeLong(*(this + 16));
  v2 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x800) == 0)
  {
LABEL_17:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  v18 = TSP::DataReference::ByteSizeLong(*(this + 17));
  v2 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x1000) == 0)
  {
LABEL_18:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  v19 = TSD::ImageAdjustmentsArchive::ByteSizeLong(*(this + 18));
  v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x2000) == 0)
  {
LABEL_19:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  v20 = TSP::DataReference::ByteSizeLong(*(this + 19));
  v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x4000) == 0)
  {
LABEL_20:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_50:
  v21 = TSP::DataReference::ByteSizeLong(*(this + 20));
  v2 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x8000) != 0)
  {
LABEL_21:
    v6 = TSP::DataReference::ByteSizeLong(*(this + 21));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_22:
  if ((v3 & 0x7F0000) == 0)
  {
    goto LABEL_35;
  }

  if ((v3 & 0x10000) != 0)
  {
    v22 = TSP::Path::ByteSizeLong(*(this + 22));
    v2 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x20000) == 0)
    {
LABEL_25:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_26;
      }

LABEL_54:
      v24 = TSP::DataReference::ByteSizeLong(*(this + 24));
      v2 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if ((v3 & 0x80000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_25;
  }

  v23 = TSD::Attribution::ByteSizeLong(*(this + 23));
  v2 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x40000) != 0)
  {
    goto LABEL_54;
  }

LABEL_26:
  if ((v3 & 0x80000) != 0)
  {
LABEL_27:
    v2 += ((9 * (__clz(*(this + 50) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_28:
  v7 = v2 + 3;
  if ((v3 & 0x100000) == 0)
  {
    v7 = v2;
  }

  if ((v3 & 0x200000) != 0)
  {
    v7 += 3;
  }

  if ((v3 & 0x400000) != 0)
  {
    v2 = v7 + 3;
  }

  else
  {
    v2 = v7;
  }

LABEL_35:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 11) = v2;
    return v2;
  }
}

uint64_t TSD::ImageArchive::MergeFrom(TSD::ImageArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ImageArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ImageArchive::MergeFrom(TSD::ImageArchive *this, const TSD::ImageArchive *a2)
{
  result = google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    result = sub_27670B0F8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 10);
  if (!v6)
  {
    goto LABEL_77;
  }

  if (v6)
  {
    *(this + 10) |= 1u;
    v7 = *(this + 6);
    if (!v7)
    {
      v8 = *(this + 1);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableArchive>(v8);
      *(this + 6) = v7;
    }

    if (*(a2 + 6))
    {
      v9 = *(a2 + 6);
    }

    else
    {
      v9 = &TSD::_DrawableArchive_default_instance_;
    }

    result = TSD::DrawableArchive::MergeFrom(v7, v9);
  }

  v10 = MEMORY[0x277D80A18];
  if ((v6 & 2) != 0)
  {
    *(this + 10) |= 2u;
    v11 = *(this + 7);
    if (!v11)
    {
      v12 = *(this + 1);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277C9BB20](v12);
      *(this + 7) = v11;
    }

    if (*(a2 + 7))
    {
      v13 = *(a2 + 7);
    }

    else
    {
      v13 = v10;
    }

    result = TSP::Reference::MergeFrom(v11, v13);
  }

  if ((v6 & 4) != 0)
  {
    *(this + 10) |= 4u;
    v14 = *(this + 8);
    if (!v14)
    {
      v15 = *(this + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C9BB20](v15);
      *(this + 8) = v14;
    }

    if (*(a2 + 8))
    {
      v16 = *(a2 + 8);
    }

    else
    {
      v16 = v10;
    }

    result = TSP::Reference::MergeFrom(v14, v16);
  }

  v17 = MEMORY[0x277D809D8];
  if ((v6 & 8) != 0)
  {
    *(this + 10) |= 8u;
    v18 = *(this + 9);
    if (!v18)
    {
      v19 = *(this + 1);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = MEMORY[0x277C9BAD0](v19);
      *(this + 9) = v18;
    }

    if (*(a2 + 9))
    {
      v20 = *(a2 + 9);
    }

    else
    {
      v20 = v17;
    }

    result = TSP::Size::MergeFrom(v18, v20);
    if ((v6 & 0x10) == 0)
    {
LABEL_33:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_34;
      }

LABEL_53:
      *(this + 10) |= 0x20u;
      v24 = *(this + 11);
      if (!v24)
      {
        v25 = *(this + 1);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v24 = MEMORY[0x277C9BB20](v25);
        *(this + 11) = v24;
      }

      if (*(a2 + 11))
      {
        v26 = *(a2 + 11);
      }

      else
      {
        v26 = v10;
      }

      result = TSP::Reference::MergeFrom(v24, v26);
      if ((v6 & 0x40) == 0)
      {
LABEL_35:
        if ((v6 & 0x80) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_69;
      }

      goto LABEL_61;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_33;
  }

  *(this + 10) |= 0x10u;
  v21 = *(this + 10);
  if (!v21)
  {
    v22 = *(this + 1);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = MEMORY[0x277C9BB20](v22);
    *(this + 10) = v21;
  }

  if (*(a2 + 10))
  {
    v23 = *(a2 + 10);
  }

  else
  {
    v23 = v10;
  }

  result = TSP::Reference::MergeFrom(v21, v23);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_34:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_35;
  }

LABEL_61:
  *(this + 10) |= 0x40u;
  v27 = *(this + 12);
  if (!v27)
  {
    v28 = *(this + 1);
    if (v28)
    {
      v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    }

    v27 = MEMORY[0x277C9BB20](v28);
    *(this + 12) = v27;
  }

  if (*(a2 + 12))
  {
    v29 = *(a2 + 12);
  }

  else
  {
    v29 = v10;
  }

  result = TSP::Reference::MergeFrom(v27, v29);
  if ((v6 & 0x80) != 0)
  {
LABEL_69:
    *(this + 10) |= 0x80u;
    v30 = *(this + 13);
    if (!v30)
    {
      v31 = *(this + 1);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = MEMORY[0x277C9BAD0](v31);
      *(this + 13) = v30;
    }

    if (*(a2 + 13))
    {
      v32 = *(a2 + 13);
    }

    else
    {
      v32 = v17;
    }

    result = TSP::Size::MergeFrom(v30, v32);
  }

LABEL_77:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_151;
  }

  if ((v6 & 0x100) != 0)
  {
    *(this + 10) |= 0x100u;
    v33 = *(this + 14);
    if (!v33)
    {
      v34 = *(this + 1);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = MEMORY[0x277C9BAC0](v34);
      *(this + 14) = v33;
    }

    if (*(a2 + 14))
    {
      v35 = *(a2 + 14);
    }

    else
    {
      v35 = MEMORY[0x277D809C8];
    }

    result = TSP::Path::MergeFrom(v33, v35);
  }

  v36 = MEMORY[0x277D80A30];
  if ((v6 & 0x200) != 0)
  {
    *(this + 10) |= 0x200u;
    v37 = *(this + 15);
    if (!v37)
    {
      v38 = *(this + 1);
      if (v38)
      {
        v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
      }

      v37 = MEMORY[0x277C9BA90](v38);
      *(this + 15) = v37;
    }

    if (*(a2 + 15))
    {
      v39 = *(a2 + 15);
    }

    else
    {
      v39 = v36;
    }

    result = TSP::DataReference::MergeFrom(v37, v39);
    if ((v6 & 0x400) == 0)
    {
LABEL_89:
      if ((v6 & 0x800) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_111;
    }
  }

  else if ((v6 & 0x400) == 0)
  {
    goto LABEL_89;
  }

  *(this + 10) |= 0x400u;
  v40 = *(this + 16);
  if (!v40)
  {
    v41 = *(this + 1);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = MEMORY[0x277C9BA90](v41);
    *(this + 16) = v40;
  }

  if (*(a2 + 16))
  {
    v42 = *(a2 + 16);
  }

  else
  {
    v42 = v36;
  }

  result = TSP::DataReference::MergeFrom(v40, v42);
  if ((v6 & 0x800) == 0)
  {
LABEL_90:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_119;
  }

LABEL_111:
  *(this + 10) |= 0x800u;
  v43 = *(this + 17);
  if (!v43)
  {
    v44 = *(this + 1);
    if (v44)
    {
      v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
    }

    v43 = MEMORY[0x277C9BA90](v44);
    *(this + 17) = v43;
  }

  if (*(a2 + 17))
  {
    v45 = *(a2 + 17);
  }

  else
  {
    v45 = v36;
  }

  result = TSP::DataReference::MergeFrom(v43, v45);
  if ((v6 & 0x1000) == 0)
  {
LABEL_91:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_127;
  }

LABEL_119:
  *(this + 10) |= 0x1000u;
  v46 = *(this + 18);
  if (!v46)
  {
    v47 = *(this + 1);
    if (v47)
    {
      v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
    }

    v46 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageAdjustmentsArchive>(v47);
    *(this + 18) = v46;
  }

  if (*(a2 + 18))
  {
    v48 = *(a2 + 18);
  }

  else
  {
    v48 = &TSD::_ImageAdjustmentsArchive_default_instance_;
  }

  result = TSD::ImageAdjustmentsArchive::MergeFrom(v46, v48);
  if ((v6 & 0x2000) == 0)
  {
LABEL_92:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_135;
  }

LABEL_127:
  *(this + 10) |= 0x2000u;
  v49 = *(this + 19);
  if (!v49)
  {
    v50 = *(this + 1);
    if (v50)
    {
      v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
    }

    v49 = MEMORY[0x277C9BA90](v50);
    *(this + 19) = v49;
  }

  if (*(a2 + 19))
  {
    v51 = *(a2 + 19);
  }

  else
  {
    v51 = v36;
  }

  result = TSP::DataReference::MergeFrom(v49, v51);
  if ((v6 & 0x4000) == 0)
  {
LABEL_93:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_143;
  }

LABEL_135:
  *(this + 10) |= 0x4000u;
  v52 = *(this + 20);
  if (!v52)
  {
    v53 = *(this + 1);
    if (v53)
    {
      v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
    }

    v52 = MEMORY[0x277C9BA90](v53);
    *(this + 20) = v52;
  }

  if (*(a2 + 20))
  {
    v54 = *(a2 + 20);
  }

  else
  {
    v54 = v36;
  }

  result = TSP::DataReference::MergeFrom(v52, v54);
  if ((v6 & 0x8000) != 0)
  {
LABEL_143:
    *(this + 10) |= 0x8000u;
    v55 = *(this + 21);
    if (!v55)
    {
      v56 = *(this + 1);
      if (v56)
      {
        v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
      }

      v55 = MEMORY[0x277C9BA90](v56);
      *(this + 21) = v55;
    }

    if (*(a2 + 21))
    {
      v57 = *(a2 + 21);
    }

    else
    {
      v57 = v36;
    }

    result = TSP::DataReference::MergeFrom(v55, v57);
  }

LABEL_151:
  if ((v6 & 0x7F0000) == 0)
  {
    return result;
  }

  if ((v6 & 0x10000) != 0)
  {
    *(this + 10) |= 0x10000u;
    v58 = *(this + 22);
    if (!v58)
    {
      v59 = *(this + 1);
      if (v59)
      {
        v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
      }

      v58 = MEMORY[0x277C9BAC0](v59);
      *(this + 22) = v58;
    }

    if (*(a2 + 22))
    {
      v60 = *(a2 + 22);
    }

    else
    {
      v60 = MEMORY[0x277D809C8];
    }

    result = TSP::Path::MergeFrom(v58, v60);
    if ((v6 & 0x20000) == 0)
    {
LABEL_154:
      if ((v6 & 0x40000) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_178;
    }
  }

  else if ((v6 & 0x20000) == 0)
  {
    goto LABEL_154;
  }

  *(this + 10) |= 0x20000u;
  v61 = *(this + 23);
  if (!v61)
  {
    v62 = *(this + 1);
    if (v62)
    {
      v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
    }

    v61 = google::protobuf::Arena::CreateMaybeMessage<TSD::Attribution>(v62);
    *(this + 23) = v61;
  }

  if (*(a2 + 23))
  {
    v63 = *(a2 + 23);
  }

  else
  {
    v63 = &TSD::_Attribution_default_instance_;
  }

  result = TSD::Attribution::MergeFrom(v61, v63);
  if ((v6 & 0x40000) == 0)
  {
LABEL_155:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_186;
  }

LABEL_178:
  *(this + 10) |= 0x40000u;
  v64 = *(this + 24);
  if (!v64)
  {
    v65 = *(this + 1);
    if (v65)
    {
      v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
    }

    v64 = MEMORY[0x277C9BA90](v65);
    *(this + 24) = v64;
  }

  if (*(a2 + 24))
  {
    v66 = *(a2 + 24);
  }

  else
  {
    v66 = MEMORY[0x277D80A30];
  }

  result = TSP::DataReference::MergeFrom(v64, v66);
  if ((v6 & 0x80000) == 0)
  {
LABEL_156:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_187;
  }

LABEL_186:
  *(this + 50) = *(a2 + 50);
  if ((v6 & 0x100000) == 0)
  {
LABEL_157:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_158;
    }

LABEL_188:
    *(this + 205) = *(a2 + 205);
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_159;
  }

LABEL_187:
  *(this + 204) = *(a2 + 204);
  if ((v6 & 0x200000) != 0)
  {
    goto LABEL_188;
  }

LABEL_158:
  if ((v6 & 0x400000) != 0)
  {
LABEL_159:
    *(this + 206) = *(a2 + 206);
  }

LABEL_160:
  *(this + 10) |= v6;
  return result;
}

uint64_t TSD::Attribution::MergeFrom(uint64_t this, const TSD::Attribution *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x1F) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
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

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_12:
    *(v3 + 16) |= 4u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        return this;
      }

LABEL_14:
      *(v3 + 16) |= 0x10u;

      return google::protobuf::internal::ArenaStringPtr::Set();
    }

LABEL_13:
    *(v3 + 16) |= 8u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_14;
  }

  return this;
}

TSD::ImageArchive *TSD::ImageArchive::CopyFrom(TSD::ImageArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageArchive::Clear(this);

    return TSD::ImageArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSD::ImageArchive *TSD::ImageArchive::CopyFrom(TSD::ImageArchive *this, const TSD::ImageArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageArchive::Clear(this);

    return TSD::ImageArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ImageArchive::IsInitialized(TSD::ImageArchive *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {
    if ((*(this + 40) & 1) == 0)
    {
      return 0;
    }

    result = TSD::DrawableArchive::IsInitialized(*(this + 6));
    if (result)
    {
      v3 = *(this + 10);
      if ((v3 & 2) != 0)
      {
        result = TSP::Reference::IsInitialized(*(this + 7));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 4) != 0)
      {
        result = TSP::Reference::IsInitialized(*(this + 8));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 8) != 0)
      {
        result = TSP::Size::IsInitialized(*(this + 9));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x10) != 0)
      {
        result = TSP::Reference::IsInitialized(*(this + 10));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x20) != 0)
      {
        result = TSP::Reference::IsInitialized(*(this + 11));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x40) != 0)
      {
        result = TSP::Reference::IsInitialized(*(this + 12));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x80) != 0)
      {
        result = TSP::Size::IsInitialized(*(this + 13));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x100) != 0)
      {
        result = TSP::Path::IsInitialized(*(this + 14));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x200) != 0)
      {
        result = TSP::DataReference::IsInitialized(*(this + 15));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x400) != 0)
      {
        result = TSP::DataReference::IsInitialized(*(this + 16));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x800) != 0)
      {
        result = TSP::DataReference::IsInitialized(*(this + 17));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x2000) != 0)
      {
        result = TSP::DataReference::IsInitialized(*(this + 19));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x4000) != 0)
      {
        result = TSP::DataReference::IsInitialized(*(this + 20));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x8000) != 0)
      {
        result = TSP::DataReference::IsInitialized(*(this + 21));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x10000) != 0)
      {
        result = TSP::Path::IsInitialized(*(this + 22));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x40000) == 0)
      {
        return 1;
      }

      result = TSP::DataReference::IsInitialized(*(this + 24));
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

double TSD::ImageArchive::InternalSwap(TSD::ImageArchive *this, TSD::ImageArchive *a2)
{
  google::protobuf::internal::ExtensionSet::Swap();
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 6);
  v6 = *(this + 7);
  *(this + 3) = *(a2 + 3);
  *(a2 + 6) = v5;
  *(a2 + 7) = v6;
  v7 = *(this + 8);
  v8 = *(this + 9);
  *(this + 4) = *(a2 + 4);
  *(a2 + 8) = v7;
  *(a2 + 9) = v8;

  *&result = sub_27676CB54(this + 10, a2 + 80).n128_u64[0];
  return result;
}

TSD::MaskArchive *TSD::MaskArchive::MaskArchive(TSD::MaskArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288577768;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MaskArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_288577768;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MaskArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSD::MaskArchive *TSD::MaskArchive::MaskArchive(TSD::MaskArchive *this, const TSD::MaskArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288577768;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  return this;
}

void TSD::MaskArchive::~MaskArchive(TSD::MaskArchive *this)
{
  if (this != &TSD::_MaskArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::DrawableArchive::~DrawableArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSD::PathSourceArchive::~PathSourceArchive(v3);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::MaskArchive::~MaskArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::MaskArchive::default_instance(TSD::MaskArchive *this)
{
  if (atomic_load_explicit(scc_info_MaskArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_MaskArchive_default_instance_;
}

uint64_t *TSD::MaskArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSD::DrawableArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSD::PathSourceArchive::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::MaskArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  while ((sub_27670AF08(a3, &v18) & 1) == 0)
  {
    v5 = (v18 + 1);
    v6 = *v18;
    if ((*v18 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v18 + 2);
LABEL_6:
      v18 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v7 - 128));
    v18 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v16;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      *(a1 + 16) |= 2u;
      v11 = *(a1 + 32);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSD::PathSourceArchive>(v12);
        *(a1 + 32) = v11;
        v5 = v18;
      }

      v10 = sub_27680C7E8(a3, v11, v5);
    }

    else
    {
      if (v6 >> 3 != 1 || v6 != 10)
      {
LABEL_12:
        if (v6)
        {
          v9 = (v6 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v6 - 1;
          return v18;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v13 = *(a1 + 24);
      if (!v13)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableArchive>(v14);
        *(a1 + 24) = v13;
        v5 = v18;
      }

      v10 = sub_27680C648(a3, v13, v5);
    }

LABEL_30:
    v18 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v18;
}

unsigned __int8 *TSD::MaskArchive::_InternalSerialize(TSD::MaskArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSD::DrawableArchive::_InternalSerialize(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 4);
    *a2 = 18;
    v14 = *(v13 + 5);
    if (v14 > 0x7F)
    {
      a2[1] = v14 | 0x80;
      v16 = v14 >> 7;
      if (v14 >> 14)
      {
        v15 = a2 + 3;
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
        a2[2] = v16;
        v15 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v14;
      v15 = a2 + 2;
    }

    a2 = TSD::PathSourceArchive::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::MaskArchive::ByteSizeLong(TSD::MaskArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSD::DrawableArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = TSD::PathSourceArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSD::MaskArchive::MergeFrom(TSD::MaskArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::MaskArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::MaskArchive::MergeFrom(uint64_t this, const TSD::MaskArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_DrawableArchive_default_instance_;
      }

      this = TSD::DrawableArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v9 = *(v3 + 32);
      if (!v9)
      {
        v10 = *(v3 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::PathSourceArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSD::_PathSourceArchive_default_instance_;
      }

      return TSD::PathSourceArchive::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TSD::MaskArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::MaskArchive::Clear(this);

    return TSD::MaskArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::MaskArchive::CopyFrom(uint64_t *this, const TSD::MaskArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::MaskArchive::Clear(this);

    return TSD::MaskArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::MaskArchive::IsInitialized(TSD::MaskArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSD::DrawableArchive::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSD::PathSourceArchive::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::MaskArchive::InternalSwap(TSD::MaskArchive *this, TSD::MaskArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  return result;
}

TSP::Size *TSD::ImageDataAttributes::clear_pixel_size(TSD::ImageDataAttributes *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSD::ImageDataAttributes *TSD::ImageDataAttributes::ImageDataAttributes(TSD::ImageDataAttributes *this, google::protobuf::Arena *a2)
{
  *this = &unk_288577818;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImageDataAttributes_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 16) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288577818;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImageDataAttributes_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 16) = 0;
  *(this + 3) = 0;
  return this;
}

TSD::ImageDataAttributes *TSD::ImageDataAttributes::ImageDataAttributes(TSD::ImageDataAttributes *this, const TSD::ImageDataAttributes *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288577818;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 16) = *(a2 + 16);
  return this;
}

void TSD::ImageDataAttributes::~ImageDataAttributes(TSD::ImageDataAttributes *this)
{
  if (this != &TSD::_ImageDataAttributes_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Size::~Size(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::ImageDataAttributes::~ImageDataAttributes(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::ImageDataAttributes::default_instance(TSD::ImageDataAttributes *this)
{
  if (atomic_load_explicit(scc_info_ImageDataAttributes_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ImageDataAttributes_default_instance_;
}

uint64_t *TSD::ImageDataAttributes::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::Size::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27670B144(v2);
  }

  return this;
}

google::protobuf::internal *TSD::ImageDataAttributes::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v29) & 1) == 0)
  {
    while (1)
    {
      v7 = (v29 + 1);
      v8 = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v9 - 128));
      v29 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_45;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_13;
        }

        v5 |= 4u;
        v18 = (v7 + 1);
        v17 = *v7;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_29;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if ((v19 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_29:
          v29 = v18;
          *(a1 + 33) = v17 != 0;
          goto LABEL_36;
        }

        v27 = google::protobuf::internal::VarintParseSlow64(v7, v17);
        v29 = v27;
        *(a1 + 33) = v28 != 0;
        if (!v27)
        {
LABEL_45:
          v29 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 2)
        {
          if (v10 == 1 && v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v20 = *(a1 + 24);
            if (!v20)
            {
              v21 = *(a1 + 8);
              if (v21)
              {
                v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
              }

              v22 = MEMORY[0x277C9BAD0](v21);
              LODWORD(v20) = v22;
              *(a1 + 24) = v22;
              v7 = v29;
            }

            v13 = sub_27680AB8C(a3, v20, v7);
          }

          else
          {
LABEL_13:
            if (v8)
            {
              v12 = (v8 & 7) == 4;
            }

            else
            {
              v12 = 1;
            }

            if (v12)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_27670AF80((a1 + 8));
            }

            v13 = google::protobuf::internal::UnknownFieldParse();
          }

          v29 = v13;
          if (!v13)
          {
            goto LABEL_45;
          }

          goto LABEL_36;
        }

        if (v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v15 = (v7 + 1);
        v14 = *v7;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if ((v16 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_24:
          v29 = v15;
          *(a1 + 32) = v14 != 0;
          goto LABEL_36;
        }

        v25 = google::protobuf::internal::VarintParseSlow64(v7, v14);
        v29 = v25;
        *(a1 + 32) = v26 != 0;
        if (!v25)
        {
          goto LABEL_45;
        }
      }

LABEL_36:
      if (sub_27670AF08(a3, &v29))
      {
        goto LABEL_2;
      }
    }

    v7 = (v29 + 2);
LABEL_6:
    v29 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

unsigned __int8 *TSD::ImageDataAttributes::_InternalSerialize(TSD::ImageDataAttributes *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSP::Size::_InternalSerialize(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 32);
  *a2 = 16;
  a2[1] = v13;
  a2 += 2;
  if ((v6 & 4) != 0)
  {
LABEL_18:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 33);
    *a2 = 24;
    a2[1] = v14;
    a2 += 2;
  }

LABEL_21:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ImageDataAttributes::ByteSizeLong(TSD::ImageDataAttributes *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      v5 = TSP::Size::ByteSizeLong(*(this + 3));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3 + ((v2 >> 1) & 2) + (v2 & 2);
  }

  else
  {
    v4 = 0;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TSD::ImageDataAttributes::MergeFrom(TSD::ImageDataAttributes *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ImageDataAttributes::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ImageDataAttributes::MergeFrom(uint64_t this, const TSD::ImageDataAttributes *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C9BAD0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809D8];
      }

      this = TSP::Size::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_7:
        *(v3 + 33) = *(a2 + 33);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 32);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSD::ImageDataAttributes::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageDataAttributes::Clear(this);

    return TSD::ImageDataAttributes::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ImageDataAttributes::CopyFrom(uint64_t *this, const TSD::ImageDataAttributes *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageDataAttributes::Clear(this);

    return TSD::ImageDataAttributes::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ImageDataAttributes::IsInitialized(TSD::ImageDataAttributes *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Size::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSD::ImageDataAttributes::InternalSwap(TSD::ImageDataAttributes *this, TSD::ImageDataAttributes *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOWORD(v6) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v6;
  return result;
}

TSP::DataReference *TSD::MovieArchive::clear_moviedata(TSD::MovieArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 10) &= ~0x40u;
  return result;
}

TSP::DataReference *TSD::MovieArchive::clear_importedauxiliarymoviedata(TSD::MovieArchive *this)
{
  result = *(this + 18);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 10) &= ~0x1000u;
  return result;
}

TSP::DataReference *TSD::MovieArchive::clear_posterimagedata(TSD::MovieArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 10) &= ~0x80u;
  return result;
}

TSP::DataReference *TSD::MovieArchive::clear_audioonlyimagedata(TSD::MovieArchive *this)
{
  result = *(this + 14);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 10) &= ~0x100u;
  return result;
}

TSP::Reference *TSD::MovieArchive::clear_database_moviedata(TSD::MovieArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~8u;
  return result;
}

TSP::Reference *TSD::MovieArchive::clear_database_posterimagedata(TSD::MovieArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~0x10u;
  return result;
}

TSP::Reference *TSD::MovieArchive::clear_database_audioonlyimagedata(TSD::MovieArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~0x20u;
  return result;
}

TSP::Reference *TSD::MovieArchive::clear_style(TSD::MovieArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~0x200u;
  return result;
}

TSP::Size *TSD::MovieArchive::clear_originalsize(TSD::MovieArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 10) &= ~0x400u;
  return result;
}

TSP::Size *TSD::MovieArchive::clear_naturalsize(TSD::MovieArchive *this)
{
  result = *(this + 17);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 10) &= ~0x800u;
  return result;
}

TSD::MovieArchive *TSD::MovieArchive::MovieArchive(TSD::MovieArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885778C8;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet((this + 16), a2);
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_MovieArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 6) = MEMORY[0x277D80A90];
  *(this + 7) = v3;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 191) = 0u;
  return this;
}

TSD::MovieArchive *TSD::MovieArchive::MovieArchive(TSD::MovieArchive *this, const TSD::MovieArchive *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = (this + 16);
  *this = &unk_2885778C8;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 11) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v4, (a2 + 16));
  v6 = MEMORY[0x277D80A90];
  *(this + 6) = MEMORY[0x277D80A90];
  v7 = *(a2 + 10);
  if (v7)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v7 = *(a2 + 10);
  }

  *(this + 7) = v6;
  if ((v7 & 2) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v7 = *(a2 + 10);
  }

  if ((v7 & 4) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v7 & 8) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v7 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v7 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v7 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v7 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v7 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v7 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v7 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  if ((v7 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  if ((v7 & 0x1000) != 0)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v7 & 0x2000) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  if ((v7 & 0x4000) != 0)
  {
    operator new();
  }

  *(this + 20) = 0;
  v8 = *(a2 + 168);
  v9 = *(a2 + 184);
  *(this + 199) = *(a2 + 199);
  *(this + 184) = v9;
  *(this + 168) = v8;
  return this;
}

void sub_27674E43C(_Unwind_Exception *a1)
{
  MEMORY[0x277C9C1D0](v2, 0x10A1C408A86EF6ALL);
  MEMORY[0x277C9BC30](v1);
  _Unwind_Resume(a1);
}

void TSD::MovieArchive::~MovieArchive(TSD::MovieArchive *this)
{
  sub_27674E51C(this);
  sub_2766FFE58(this + 1);
  MEMORY[0x277C9BC30](this + 16);
}

{
  TSD::MovieArchive::~MovieArchive(this);

  JUMPOUT(0x277C9C1D0);
}

TSD::MovieFingerprint *sub_27674E51C(TSD::MovieFingerprint *result)
{
  v1 = result;
  v2 = *(result + 6);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C9C1D0](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 7);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C9C1D0](v4, 0x1012C40EC159624);
  }

  if (v1 != &TSD::_MovieArchive_default_instance_)
  {
    v5 = *(v1 + 8);
    if (v5)
    {
      TSD::DrawableArchive::~DrawableArchive(v5);
      MEMORY[0x277C9C1D0]();
    }

    v6 = *(v1 + 9);
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x277C9C1D0]();
    }

    v7 = *(v1 + 10);
    if (v7)
    {
      TSP::Reference::~Reference(v7);
      MEMORY[0x277C9C1D0]();
    }

    v8 = *(v1 + 11);
    if (v8)
    {
      TSP::Reference::~Reference(v8);
      MEMORY[0x277C9C1D0]();
    }

    v9 = *(v1 + 12);
    if (v9)
    {
      TSP::DataReference::~DataReference(v9);
      MEMORY[0x277C9C1D0]();
    }

    v10 = *(v1 + 13);
    if (v10)
    {
      TSP::DataReference::~DataReference(v10);
      MEMORY[0x277C9C1D0]();
    }

    v11 = *(v1 + 14);
    if (v11)
    {
      TSP::DataReference::~DataReference(v11);
      MEMORY[0x277C9C1D0]();
    }

    v12 = *(v1 + 15);
    if (v12)
    {
      TSP::Reference::~Reference(v12);
      MEMORY[0x277C9C1D0]();
    }

    v13 = *(v1 + 16);
    if (v13)
    {
      TSP::Size::~Size(v13);
      MEMORY[0x277C9C1D0]();
    }

    v14 = *(v1 + 17);
    if (v14)
    {
      TSP::Size::~Size(v14);
      MEMORY[0x277C9C1D0]();
    }

    v15 = *(v1 + 18);
    if (v15)
    {
      TSP::DataReference::~DataReference(v15);
      MEMORY[0x277C9C1D0]();
    }

    v16 = *(v1 + 19);
    if (v16)
    {
      TSD::Attribution::~Attribution(v16);
      MEMORY[0x277C9C1D0]();
    }

    result = *(v1 + 20);
    if (result)
    {
      TSD::MovieFingerprint::~MovieFingerprint(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

void *TSD::MovieArchive::default_instance(TSD::MovieArchive *this)
{
  if (atomic_load_explicit(scc_info_MovieArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_MovieArchive_default_instance_;
}

uint64_t *TSD::MovieArchive::Clear(TSD::MovieArchive *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  v3 = *(this + 10);
  if (!v3)
  {
    goto LABEL_11;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_39:
    v7 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v3 & 4) != 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v3 & 4) != 0)
      {
        goto LABEL_43;
      }
    }

LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

  v6 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_39;
    }
  }

LABEL_4:
  if ((v3 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_43:
  result = TSD::DrawableArchive::Clear(*(this + 8));
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = TSP::Reference::Clear(*(this + 9));
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_46:
    result = TSP::Reference::Clear(*(this + 11));
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_47;
  }

LABEL_45:
  result = TSP::Reference::Clear(*(this + 10));
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_46;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_47:
  result = TSP::DataReference::Clear(*(this + 12));
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = TSP::DataReference::Clear(*(this + 13));
  }

LABEL_11:
  if ((v3 & 0x7F00) == 0)
  {
    goto LABEL_20;
  }

  if ((v3 & 0x100) != 0)
  {
    result = TSP::DataReference::Clear(*(this + 14));
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_33;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = TSP::Reference::Clear(*(this + 15));
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = TSP::Size::Clear(*(this + 16));
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = TSP::Size::Clear(*(this + 17));
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = TSP::DataReference::Clear(*(this + 18));
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_36:
  result = TSD::Attribution::Clear(*(this + 19));
  if ((v3 & 0x4000) != 0)
  {
LABEL_19:
    result = TSD::MovieFingerprint::Clear(*(this + 20));
  }

LABEL_20:
  *(this + 42) = 0;
  if ((v3 & 0xFF0000) != 0)
  {
    *(this + 180) = 0;
    *(this + 172) = 0;
    *(this + 98) = 0;
    *(this + 188) = 0;
  }

  if ((v3 & 0x3F000000) != 0)
  {
    *(this + 206) = 0;
    *(this + 198) = 0;
  }

  v5 = *(this + 8);
  v4 = this + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_27670B144(v4);
  }

  return result;
}

uint64_t *TSD::MovieFingerprint::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSD::MovieFingerprintTrack::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 32) = 0;
  if (v6)
  {

    return sub_27670B144(v5);
  }

  return this;
}

google::protobuf::internal *TSD::MovieArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v99 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v99) & 1) == 0)
  {
    while (1)
    {
      v7 = (v99 + 1);
      LODWORD(v8) = *v99;
      if (*v99 < 0)
      {
        v8 = (v8 + (*v7 << 7) - 128);
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v99, v8);
          v99 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_191;
          }

          v7 = TagFallback;
          goto LABEL_7;
        }

        v7 = (v99 + 2);
      }

      v99 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_155;
          }

          *(a1 + 40) |= 4u;
          v9 = *(a1 + 64);
          if (!v9)
          {
            v10 = *(a1 + 8);
            if (v10)
            {
              v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
            }

            v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableArchive>(v10);
            *(a1 + 64) = v9;
            v7 = v99;
          }

          v11 = sub_27680C648(a3, v9, v7);
          goto LABEL_164;
        case 2u:
          if (v8 != 18)
          {
            goto LABEL_155;
          }

          *(a1 + 40) |= 8u;
          v27 = *(a1 + 72);
          if (v27)
          {
            goto LABEL_114;
          }

          v39 = *(a1 + 8);
          if (v39)
          {
            v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
          }

          v40 = MEMORY[0x277C9BB20](v39);
          LODWORD(v27) = v40;
          *(a1 + 72) = v40;
          goto LABEL_113;
        case 3u:
          if (v8 != 29)
          {
            goto LABEL_155;
          }

          v32 = *v7;
          v22 = (v7 + 4);
          v5 |= 0x8000u;
          *(a1 + 168) = v32;
          goto LABEL_102;
        case 4u:
          if (v8 != 37)
          {
            goto LABEL_155;
          }

          v35 = *v7;
          v22 = (v7 + 4);
          v5 |= 0x10000u;
          *(a1 + 172) = v35;
          goto LABEL_102;
        case 5u:
          if (v8 != 45)
          {
            goto LABEL_155;
          }

          v23 = *v7;
          v22 = (v7 + 4);
          v5 |= 0x20000u;
          *(a1 + 176) = v23;
          goto LABEL_102;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_155;
          }

          v5 |= 0x40000u;
          v47 = (v7 + 1);
          LODWORD(v48) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_87;
          }

          v49 = *v47;
          v48 = (v48 + (v49 << 7) - 128);
          if (v49 < 0)
          {
            v89 = google::protobuf::internal::VarintParseSlow32(v7, v48);
            v99 = v89;
            *(a1 + 180) = v90;
            if (!v89)
            {
              goto LABEL_191;
            }
          }

          else
          {
            v47 = (v7 + 2);
LABEL_87:
            v99 = v47;
            *(a1 + 180) = v48;
          }

          goto LABEL_165;
        case 7u:
          if (v8 != 61)
          {
            goto LABEL_155;
          }

          v54 = *v7;
          v22 = (v7 + 4);
          v5 |= 0x80000u;
          *(a1 + 184) = v54;
LABEL_102:
          v99 = v22;
          goto LABEL_165;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_155;
          }

          v5 |= 0x400000u;
          v37 = (v7 + 1);
          v36 = *v7;
          if ((v36 & 0x8000000000000000) == 0)
          {
            goto LABEL_67;
          }

          v38 = *v37;
          v36 = (v38 << 7) + v36 - 128;
          if (v38 < 0)
          {
            v85 = google::protobuf::internal::VarintParseSlow64(v7, v36);
            v99 = v85;
            *(a1 + 196) = v86 != 0;
            if (!v85)
            {
              goto LABEL_191;
            }
          }

          else
          {
            v37 = (v7 + 2);
LABEL_67:
            v99 = v37;
            *(a1 + 196) = v36 != 0;
          }

          goto LABEL_165;
        case 9u:
          if (v8 != 72)
          {
            goto LABEL_155;
          }

          v5 |= 0x800000u;
          v60 = (v7 + 1);
          v59 = *v7;
          if ((v59 & 0x8000000000000000) == 0)
          {
            goto LABEL_119;
          }

          v61 = *v60;
          v59 = (v61 << 7) + v59 - 128;
          if (v61 < 0)
          {
            v91 = google::protobuf::internal::VarintParseSlow64(v7, v59);
            v99 = v91;
            *(a1 + 197) = v92 != 0;
            if (!v91)
            {
              goto LABEL_191;
            }
          }

          else
          {
            v60 = (v7 + 2);
LABEL_119:
            v99 = v60;
            *(a1 + 197) = v59 != 0;
          }

          goto LABEL_165;
        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_155;
          }

          *(a1 + 40) |= 0x10u;
          v27 = *(a1 + 80);
          if (v27)
          {
            goto LABEL_114;
          }

          v28 = *(a1 + 8);
          if (v28)
          {
            v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
          }

          v29 = MEMORY[0x277C9BB20](v28);
          LODWORD(v27) = v29;
          *(a1 + 80) = v29;
          goto LABEL_113;
        case 0xBu:
          if (v8 != 90)
          {
            goto LABEL_155;
          }

          *(a1 + 40) |= 0x20u;
          v27 = *(a1 + 88);
          if (v27)
          {
            goto LABEL_114;
          }

          v57 = *(a1 + 8);
          if (v57)
          {
            v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
          }

          v58 = MEMORY[0x277C9BB20](v57);
          LODWORD(v27) = v58;
          *(a1 + 88) = v58;
          goto LABEL_113;
        case 0xCu:
          if (v8 != 96)
          {
            goto LABEL_155;
          }

          v5 |= 0x100000u;
          v19 = (v7 + 1);
          LODWORD(v20) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_32;
          }

          v21 = *v19;
          v20 = (v20 + (v21 << 7) - 128);
          if (v21 < 0)
          {
            v81 = google::protobuf::internal::VarintParseSlow32(v7, v20);
            v99 = v81;
            *(a1 + 188) = v82;
            if (!v81)
            {
              goto LABEL_191;
            }
          }

          else
          {
            v19 = (v7 + 2);
LABEL_32:
            v99 = v19;
            *(a1 + 188) = v20;
          }

          goto LABEL_165;
        case 0xDu:
          if (v8 != 104)
          {
            goto LABEL_155;
          }

          v5 |= 0x200000u;
          v24 = (v7 + 1);
          LODWORD(v25) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_39;
          }

          v26 = *v24;
          v25 = (v25 + (v26 << 7) - 128);
          if (v26 < 0)
          {
            v83 = google::protobuf::internal::VarintParseSlow32(v7, v25);
            v99 = v83;
            *(a1 + 192) = v84;
            if (!v83)
            {
              goto LABEL_191;
            }
          }

          else
          {
            v24 = (v7 + 2);
LABEL_39:
            v99 = v24;
            *(a1 + 192) = v25;
          }

          goto LABEL_165;
        case 0xEu:
          if (v8 != 114)
          {
            goto LABEL_155;
          }

          *(a1 + 40) |= 0x40u;
          v16 = *(a1 + 96);
          if (v16)
          {
            goto LABEL_99;
          }

          v52 = *(a1 + 8);
          if (v52)
          {
            v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
          }

          v53 = MEMORY[0x277C9BA90](v52);
          LODWORD(v16) = v53;
          *(a1 + 96) = v53;
          goto LABEL_98;
        case 0xFu:
          if (v8 != 122)
          {
            goto LABEL_155;
          }

          *(a1 + 40) |= 0x80u;
          v16 = *(a1 + 104);
          if (v16)
          {
            goto LABEL_99;
          }

          v17 = *(a1 + 8);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = MEMORY[0x277C9BA90](v17);
          LODWORD(v16) = v18;
          *(a1 + 104) = v18;
          goto LABEL_98;
        case 0x10u:
          if (v8 != 130)
          {
            goto LABEL_155;
          }

          *(a1 + 40) |= 0x100u;
          v16 = *(a1 + 112);
          if (v16)
          {
            goto LABEL_99;
          }

          v33 = *(a1 + 8);
          if (v33)
          {
            v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
          }

          v34 = MEMORY[0x277C9BA90](v33);
          LODWORD(v16) = v34;
          *(a1 + 112) = v34;
          goto LABEL_98;
        case 0x11u:
          if (v8 != 138)
          {
            goto LABEL_155;
          }

          *(a1 + 40) |= 1u;
          goto LABEL_53;
        case 0x12u:
          if (v8 != 144)
          {
            goto LABEL_155;
          }

          v5 |= 0x1000000u;
          v42 = (v7 + 1);
          v41 = *v7;
          if ((v41 & 0x8000000000000000) == 0)
          {
            goto LABEL_77;
          }

          v43 = *v42;
          v41 = (v43 << 7) + v41 - 128;
          if (v43 < 0)
          {
            v87 = google::protobuf::internal::VarintParseSlow64(v7, v41);
            v99 = v87;
            *(a1 + 198) = v88 != 0;
            if (!v87)
            {
              goto LABEL_191;
            }
          }

          else
          {
            v42 = (v7 + 2);
LABEL_77:
            v99 = v42;
            *(a1 + 198) = v41 != 0;
          }

          goto LABEL_165;
        case 0x13u:
          if (v8 != 154)
          {
            goto LABEL_155;
          }

          *(a1 + 40) |= 0x200u;
          v27 = *(a1 + 120);
          if (v27)
          {
            goto LABEL_114;
          }

          v55 = *(a1 + 8);
          if (v55)
          {
            v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
          }

          v56 = MEMORY[0x277C9BB20](v55);
          LODWORD(v27) = v56;
          *(a1 + 120) = v56;
LABEL_113:
          v7 = v99;
LABEL_114:
          v11 = sub_27680B6EC(a3, v27, v7);
          goto LABEL_164;
        case 0x14u:
          if (v8 != 162)
          {
            goto LABEL_155;
          }

          *(a1 + 40) |= 0x400u;
          v44 = *(a1 + 128);
          if (v44)
          {
            goto LABEL_131;
          }

          v65 = *(a1 + 8);
          if (v65)
          {
            v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
          }

          v66 = MEMORY[0x277C9BAD0](v65);
          LODWORD(v44) = v66;
          *(a1 + 128) = v66;
          goto LABEL_130;
        case 0x15u:
          if (v8 != 170)
          {
            goto LABEL_155;
          }

          *(a1 + 40) |= 0x800u;
          v44 = *(a1 + 136);
          if (v44)
          {
            goto LABEL_131;
          }

          v45 = *(a1 + 8);
          if (v45)
          {
            v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
          }

          v46 = MEMORY[0x277C9BAD0](v45);
          LODWORD(v44) = v46;
          *(a1 + 136) = v46;
LABEL_130:
          v7 = v99;
LABEL_131:
          v11 = sub_27680AB8C(a3, v44, v7);
          goto LABEL_164;
        case 0x16u:
          if (v8 != 178)
          {
            goto LABEL_155;
          }

          *(a1 + 40) |= 0x1000u;
          v16 = *(a1 + 144);
          if (v16)
          {
            goto LABEL_99;
          }

          v50 = *(a1 + 8);
          if (v50)
          {
            v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
          }

          v51 = MEMORY[0x277C9BA90](v50);
          LODWORD(v16) = v51;
          *(a1 + 144) = v51;
LABEL_98:
          v7 = v99;
LABEL_99:
          v11 = sub_27680B7BC(a3, v16, v7);
          goto LABEL_164;
        case 0x17u:
          if (v8 != 184)
          {
            goto LABEL_155;
          }

          v5 |= 0x10000000u;
          v63 = (v7 + 1);
          v62 = *v7;
          if ((v62 & 0x8000000000000000) == 0)
          {
            goto LABEL_124;
          }

          v64 = *v63;
          v62 = (v64 << 7) + v62 - 128;
          if (v64 < 0)
          {
            v93 = google::protobuf::internal::VarintParseSlow64(v7, v62);
            v99 = v93;
            *(a1 + 205) = v94 != 0;
            if (!v93)
            {
              goto LABEL_191;
            }
          }

          else
          {
            v63 = (v7 + 2);
LABEL_124:
            v99 = v63;
            *(a1 + 205) = v62 != 0;
          }

          goto LABEL_165;
        case 0x18u:
          if (v8 != 192)
          {
            goto LABEL_155;
          }

          v68 = (v7 + 1);
          v67 = *v7;
          if ((v67 & 0x8000000000000000) == 0)
          {
            goto LABEL_136;
          }

          v69 = *v68;
          v67 = (v69 << 7) + v67 - 128;
          if (v69 < 0)
          {
            v99 = google::protobuf::internal::VarintParseSlow64(v7, v67);
            if (!v99)
            {
              goto LABEL_191;
            }
          }

          else
          {
            v68 = (v7 + 2);
LABEL_136:
            v99 = v68;
          }

          if (v67 > 2)
          {
            sub_27680D43C();
          }

          else
          {
            *(a1 + 40) |= 0x4000000u;
            *(a1 + 200) = v67;
          }

          goto LABEL_165;
        case 0x19u:
          if (v8 != 202)
          {
            goto LABEL_155;
          }

          *(a1 + 40) |= 2u;
LABEL_53:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v11 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_164;
        case 0x1Au:
          if (v8 != 210)
          {
            goto LABEL_155;
          }

          *(a1 + 40) |= 0x2000u;
          v30 = *(a1 + 152);
          if (!v30)
          {
            v31 = *(a1 + 8);
            if (v31)
            {
              v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
            }

            v30 = google::protobuf::Arena::CreateMaybeMessage<TSD::Attribution>(v31);
            *(a1 + 152) = v30;
            v7 = v99;
          }

          v11 = sub_27680CB28(a3, v30, v7);
          goto LABEL_164;
        case 0x1Bu:
          if (v8 != 216)
          {
            goto LABEL_155;
          }

          v5 |= 0x2000000u;
          v76 = (v7 + 1);
          v75 = *v7;
          if ((v75 & 0x8000000000000000) == 0)
          {
            goto LABEL_154;
          }

          v77 = *v76;
          v75 = (v77 << 7) + v75 - 128;
          if (v77 < 0)
          {
            v97 = google::protobuf::internal::VarintParseSlow64(v7, v75);
            v99 = v97;
            *(a1 + 199) = v98 != 0;
            if (!v97)
            {
              goto LABEL_191;
            }
          }

          else
          {
            v76 = (v7 + 2);
LABEL_154:
            v99 = v76;
            *(a1 + 199) = v75 != 0;
          }

          goto LABEL_165;
        case 0x1Cu:
          if (v8 != 224)
          {
            goto LABEL_155;
          }

          v5 |= 0x8000000u;
          v14 = (v7 + 1);
          v13 = *v7;
          if ((v13 & 0x8000000000000000) == 0)
          {
            goto LABEL_20;
          }

          v15 = *v14;
          v13 = (v15 << 7) + v13 - 128;
          if (v15 < 0)
          {
            v79 = google::protobuf::internal::VarintParseSlow64(v7, v13);
            v99 = v79;
            *(a1 + 204) = v80 != 0;
            if (!v79)
            {
              goto LABEL_191;
            }
          }

          else
          {
            v14 = (v7 + 2);
LABEL_20:
            v99 = v14;
            *(a1 + 204) = v13 != 0;
          }

          goto LABEL_165;
        case 0x1Du:
          if (v8 != 234)
          {
            goto LABEL_155;
          }

          *(a1 + 40) |= 0x4000u;
          v70 = *(a1 + 160);
          if (!v70)
          {
            v71 = *(a1 + 8);
            if (v71)
            {
              v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
            }

            v70 = google::protobuf::Arena::CreateMaybeMessage<TSD::MovieFingerprint>(v71);
            *(a1 + 160) = v70;
            v7 = v99;
          }

          v11 = sub_27680CBF8(a3, v70, v7);
          goto LABEL_164;
        case 0x1Eu:
          if (v8 != 240)
          {
            goto LABEL_155;
          }

          v5 |= 0x20000000u;
          v73 = (v7 + 1);
          v72 = *v7;
          if ((v72 & 0x8000000000000000) == 0)
          {
            goto LABEL_149;
          }

          v74 = *v73;
          v72 = (v74 << 7) + v72 - 128;
          if (v74 < 0)
          {
            v95 = google::protobuf::internal::VarintParseSlow64(v7, v72);
            v99 = v95;
            *(a1 + 206) = v96 != 0;
            if (!v95)
            {
              goto LABEL_191;
            }
          }

          else
          {
            v73 = (v7 + 2);
LABEL_149:
            v99 = v73;
            *(a1 + 206) = v72 != 0;
          }

          goto LABEL_165;
        default:
LABEL_155:
          if (v8)
          {
            v78 = (v8 & 7) == 4;
          }

          else
          {
            v78 = 1;
          }

          if (v78)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((v8 - 800) >> 5 > 0xE0)
          {
            if ((*(a1 + 8) & 1) == 0)
            {
              sub_27670AF80((a1 + 8));
            }

            v11 = google::protobuf::internal::UnknownFieldParse();
          }

          else
          {
            v11 = google::protobuf::internal::ExtensionSet::ParseField();
          }

LABEL_164:
          v99 = v11;
          if (!v11)
          {
LABEL_191:
            v99 = 0;
            goto LABEL_2;
          }

LABEL_165:
          if (sub_27670AF08(a3, &v99))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return v99;
}

const google::protobuf::UnknownFieldSet *TSD::MovieArchive::_InternalSerialize(TSD::MovieArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 8);
    *v4 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = (v4 + 3);
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          v9 = (v9 + 1);
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        v4[2] = v10;
        v9 = (v4 + 3);
      }
    }

    else
    {
      v4[1] = v8;
      v9 = (v4 + 2);
    }

    v4 = TSD::DrawableArchive::_InternalSerialize(v7, v9, a3);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x8000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(this + 9);
  *v4 = 18;
  v14 = *(v13 + 5);
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = v4 + 3;
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
      v4[2] = v16;
      v15 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v14;
    v15 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  if ((v6 & 0x8000) == 0)
  {
LABEL_4:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_55;
  }

LABEL_52:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(this + 42);
  *v4 = 29;
  *(v4 + 1) = v19;
  v4 += 5;
  if ((v6 & 0x10000) == 0)
  {
LABEL_5:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_55:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v20 = *(this + 43);
  *v4 = 37;
  *(v4 + 1) = v20;
  v4 += 5;
  if ((v6 & 0x20000) == 0)
  {
LABEL_6:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_7;
    }

LABEL_61:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v22 = *(this + 45);
    *v4 = 48;
    if (v22 > 0x7F)
    {
      v4[1] = v22 | 0x80;
      v23 = v22 >> 7;
      if (v22 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v23 | 0x80;
          v24 = v23 >> 7;
          ++v4;
          v25 = v23 >> 14;
          v23 >>= 7;
        }

        while (v25);
        *(v4 - 1) = v24;
        if ((v6 & 0x80000) != 0)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v4[2] = v23;
        v4 += 3;
        if ((v6 & 0x80000) != 0)
        {
          goto LABEL_72;
        }
      }
    }

    else
    {
      v4[1] = v22;
      v4 += 2;
      if ((v6 & 0x80000) != 0)
      {
        goto LABEL_72;
      }
    }

LABEL_8:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_75;
  }

LABEL_58:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v21 = *(this + 44);
  *v4 = 45;
  *(v4 + 1) = v21;
  v4 += 5;
  if ((v6 & 0x40000) != 0)
  {
    goto LABEL_61;
  }

LABEL_7:
  if ((v6 & 0x80000) == 0)
  {
    goto LABEL_8;
  }

LABEL_72:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v26 = *(this + 46);
  *v4 = 61;
  *(v4 + 1) = v26;
  v4 += 5;
  if ((v6 & 0x400000) == 0)
  {
LABEL_9:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_78;
  }

LABEL_75:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v27 = *(this + 196);
  *v4 = 64;
  v4[1] = v27;
  v4 += 2;
  if ((v6 & 0x800000) == 0)
  {
LABEL_10:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_81;
  }

LABEL_78:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v28 = *(this + 197);
  *v4 = 72;
  v4[1] = v28;
  v4 += 2;
  if ((v6 & 0x10) == 0)
  {
LABEL_11:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_91;
  }

LABEL_81:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(this + 10);
  *v4 = 82;
  v30 = *(v29 + 5);
  if (v30 > 0x7F)
  {
    v4[1] = v30 | 0x80;
    v32 = v30 >> 7;
    if (v30 >> 14)
    {
      v31 = v4 + 3;
      do
      {
        *(v31 - 1) = v32 | 0x80;
        v33 = v32 >> 7;
        ++v31;
        v34 = v32 >> 14;
        v32 >>= 7;
      }

      while (v34);
      *(v31 - 1) = v33;
    }

    else
    {
      v4[2] = v32;
      v31 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v30;
    v31 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v29, v31, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_12:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_101;
  }

LABEL_91:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v35 = *(this + 11);
  *v4 = 90;
  v36 = *(v35 + 5);
  if (v36 > 0x7F)
  {
    v4[1] = v36 | 0x80;
    v38 = v36 >> 7;
    if (v36 >> 14)
    {
      v37 = v4 + 3;
      do
      {
        *(v37 - 1) = v38 | 0x80;
        v39 = v38 >> 7;
        ++v37;
        v40 = v38 >> 14;
        v38 >>= 7;
      }

      while (v40);
      *(v37 - 1) = v39;
    }

    else
    {
      v4[2] = v38;
      v37 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v36;
    v37 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v35, v37, a3);
  if ((v6 & 0x100000) == 0)
  {
LABEL_13:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_14;
    }

LABEL_112:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v45 = *(this + 48);
    *v4 = 104;
    if (v45 > 0x7F)
    {
      v4[1] = v45 | 0x80;
      v46 = v45 >> 7;
      if (v45 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v46 | 0x80;
          v47 = v46 >> 7;
          ++v4;
          v48 = v46 >> 14;
          v46 >>= 7;
        }

        while (v48);
        *(v4 - 1) = v47;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v4[2] = v46;
        v4 += 3;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_123;
        }
      }
    }

    else
    {
      v4[1] = v45;
      v4 += 2;
      if ((v6 & 0x40) != 0)
      {
        goto LABEL_123;
      }
    }

LABEL_15:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_133;
  }

LABEL_101:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v41 = *(this + 47);
  *v4 = 96;
  if (v41 > 0x7F)
  {
    v4[1] = v41 | 0x80;
    v42 = v41 >> 7;
    if (v41 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v42 | 0x80;
        v43 = v42 >> 7;
        ++v4;
        v44 = v42 >> 14;
        v42 >>= 7;
      }

      while (v44);
      *(v4 - 1) = v43;
      if ((v6 & 0x200000) != 0)
      {
        goto LABEL_112;
      }
    }

    else
    {
      v4[2] = v42;
      v4 += 3;
      if ((v6 & 0x200000) != 0)
      {
        goto LABEL_112;
      }
    }
  }

  else
  {
    v4[1] = v41;
    v4 += 2;
    if ((v6 & 0x200000) != 0)
    {
      goto LABEL_112;
    }
  }

LABEL_14:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_123:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v49 = *(this + 12);
  *v4 = 114;
  v50 = *(v49 + 5);
  if (v50 > 0x7F)
  {
    v4[1] = v50 | 0x80;
    v52 = v50 >> 7;
    if (v50 >> 14)
    {
      v51 = v4 + 3;
      do
      {
        *(v51 - 1) = v52 | 0x80;
        v53 = v52 >> 7;
        ++v51;
        v54 = v52 >> 14;
        v52 >>= 7;
      }

      while (v54);
      *(v51 - 1) = v53;
    }

    else
    {
      v4[2] = v52;
      v51 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v50;
    v51 = v4 + 2;
  }

  v4 = TSP::DataReference::_InternalSerialize(v49, v51, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_16:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_143;
  }

LABEL_133:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v55 = *(this + 13);
  *v4 = 122;
  v56 = *(v55 + 5);
  if (v56 > 0x7F)
  {
    v4[1] = v56 | 0x80;
    v58 = v56 >> 7;
    if (v56 >> 14)
    {
      v57 = v4 + 3;
      do
      {
        *(v57 - 1) = v58 | 0x80;
        v59 = v58 >> 7;
        ++v57;
        v60 = v58 >> 14;
        v58 >>= 7;
      }

      while (v60);
      *(v57 - 1) = v59;
    }

    else
    {
      v4[2] = v58;
      v57 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v56;
    v57 = v4 + 2;
  }

  v4 = TSP::DataReference::_InternalSerialize(v55, v57, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_17:
    if ((v6 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_153;
  }

LABEL_143:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v61 = *(this + 14);
  *v4 = 386;
  v62 = *(v61 + 5);
  if (v62 > 0x7F)
  {
    v4[2] = v62 | 0x80;
    v64 = v62 >> 7;
    if (v62 >> 14)
    {
      v63 = v4 + 4;
      do
      {
        *(v63 - 1) = v64 | 0x80;
        v65 = v64 >> 7;
        ++v63;
        v66 = v64 >> 14;
        v64 >>= 7;
      }

      while (v66);
      *(v63 - 1) = v65;
    }

    else
    {
      v4[3] = v64;
      v63 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v62;
    v63 = v4 + 3;
  }

  v4 = TSP::DataReference::_InternalSerialize(v61, v63, a3);
  if ((v6 & 1) == 0)
  {
LABEL_18:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_154;
  }

LABEL_153:
  v4 = sub_276727B88(a3, 17, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_19:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_157;
  }

LABEL_154:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v67 = *(this + 198);
  *v4 = 400;
  v4[2] = v67;
  v4 += 3;
  if ((v6 & 0x200) == 0)
  {
LABEL_20:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_167;
  }

LABEL_157:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v68 = *(this + 15);
  *v4 = 410;
  v69 = *(v68 + 5);
  if (v69 > 0x7F)
  {
    v4[2] = v69 | 0x80;
    v71 = v69 >> 7;
    if (v69 >> 14)
    {
      v70 = v4 + 4;
      do
      {
        *(v70 - 1) = v71 | 0x80;
        v72 = v71 >> 7;
        ++v70;
        v73 = v71 >> 14;
        v71 >>= 7;
      }

      while (v73);
      *(v70 - 1) = v72;
    }

    else
    {
      v4[3] = v71;
      v70 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v69;
    v70 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v68, v70, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_21:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_177;
  }

LABEL_167:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v74 = *(this + 16);
  *v4 = 418;
  v75 = *(v74 + 5);
  if (v75 > 0x7F)
  {
    v4[2] = v75 | 0x80;
    v77 = v75 >> 7;
    if (v75 >> 14)
    {
      v76 = v4 + 4;
      do
      {
        *(v76 - 1) = v77 | 0x80;
        v78 = v77 >> 7;
        ++v76;
        v79 = v77 >> 14;
        v77 >>= 7;
      }

      while (v79);
      *(v76 - 1) = v78;
    }

    else
    {
      v4[3] = v77;
      v76 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v75;
    v76 = v4 + 3;
  }

  v4 = TSP::Size::_InternalSerialize(v74, v76, a3);
  if ((v6 & 0x800) == 0)
  {
LABEL_22:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_187;
  }

LABEL_177:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v80 = *(this + 17);
  *v4 = 426;
  v81 = *(v80 + 5);
  if (v81 > 0x7F)
  {
    v4[2] = v81 | 0x80;
    v83 = v81 >> 7;
    if (v81 >> 14)
    {
      v82 = v4 + 4;
      do
      {
        *(v82 - 1) = v83 | 0x80;
        v84 = v83 >> 7;
        ++v82;
        v85 = v83 >> 14;
        v83 >>= 7;
      }

      while (v85);
      *(v82 - 1) = v84;
    }

    else
    {
      v4[3] = v83;
      v82 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v81;
    v82 = v4 + 3;
  }

  v4 = TSP::Size::_InternalSerialize(v80, v82, a3);
  if ((v6 & 0x1000) == 0)
  {
LABEL_23:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_197;
  }

LABEL_187:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v86 = *(this + 18);
  *v4 = 434;
  v87 = *(v86 + 5);
  if (v87 > 0x7F)
  {
    v4[2] = v87 | 0x80;
    v89 = v87 >> 7;
    if (v87 >> 14)
    {
      v88 = v4 + 4;
      do
      {
        *(v88 - 1) = v89 | 0x80;
        v90 = v89 >> 7;
        ++v88;
        v91 = v89 >> 14;
        v89 >>= 7;
      }

      while (v91);
      *(v88 - 1) = v90;
    }

    else
    {
      v4[3] = v89;
      v88 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v87;
    v88 = v4 + 3;
  }

  v4 = TSP::DataReference::_InternalSerialize(v86, v88, a3);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_24:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_200:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v93 = *(this + 50);
    *v4 = 448;
    if (v93 > 0x7F)
    {
      v4[2] = v93 | 0x80;
      v94 = v93 >> 7;
      if (v93 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v94 | 0x80;
          v95 = v94 >> 7;
          ++v4;
          v96 = v94 >> 14;
          v94 >>= 7;
        }

        while (v96);
        *(v4 - 1) = v95;
        if ((v6 & 2) != 0)
        {
          goto LABEL_211;
        }
      }

      else
      {
        v4[3] = v94;
        v4 += 4;
        if ((v6 & 2) != 0)
        {
          goto LABEL_211;
        }
      }
    }

    else
    {
      v4[2] = v93;
      v4 += 3;
      if ((v6 & 2) != 0)
      {
        goto LABEL_211;
      }
    }

LABEL_26:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_212;
  }

LABEL_197:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v92 = *(this + 205);
  *v4 = 440;
  v4[2] = v92;
  v4 += 3;
  if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_200;
  }

LABEL_25:
  if ((v6 & 2) == 0)
  {
    goto LABEL_26;
  }

LABEL_211:
  v4 = sub_276727B88(a3, 25, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x2000) == 0)
  {
LABEL_27:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_222;
  }

LABEL_212:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v97 = *(this + 19);
  *v4 = 466;
  v98 = *(v97 + 5);
  if (v98 > 0x7F)
  {
    v4[2] = v98 | 0x80;
    v100 = v98 >> 7;
    if (v98 >> 14)
    {
      v99 = (v4 + 4);
      do
      {
        *(v99 - 1) = v100 | 0x80;
        v101 = v100 >> 7;
        v99 = (v99 + 1);
        v102 = v100 >> 14;
        v100 >>= 7;
      }

      while (v102);
      *(v99 - 1) = v101;
    }

    else
    {
      v4[3] = v100;
      v99 = (v4 + 4);
    }
  }

  else
  {
    v4[2] = v98;
    v99 = (v4 + 3);
  }

  v4 = TSD::Attribution::_InternalSerialize(v97, v99, a3);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_225;
  }

LABEL_222:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v103 = *(this + 199);
  *v4 = 472;
  v4[2] = v103;
  v4 += 3;
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_228;
  }

LABEL_225:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v104 = *(this + 204);
  *v4 = 480;
  v4[2] = v104;
  v4 += 3;
  if ((v6 & 0x4000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_238;
  }

LABEL_228:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v105 = *(this + 20);
  *v4 = 490;
  v106 = *(v105 + 15);
  if (v106 > 0x7F)
  {
    v4[2] = v106 | 0x80;
    v108 = v106 >> 7;
    if (v106 >> 14)
    {
      v107 = v4 + 4;
      do
      {
        *(v107 - 1) = v108 | 0x80;
        v109 = v108 >> 7;
        ++v107;
        v110 = v108 >> 14;
        v108 >>= 7;
      }

      while (v110);
      *(v107 - 1) = v109;
    }

    else
    {
      v4[3] = v108;
      v107 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v106;
    v107 = v4 + 3;
  }

  v4 = TSD::MovieFingerprint::_InternalSerialize(v105, v107, a3);
  if ((v6 & 0x20000000) != 0)
  {
LABEL_238:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v111 = *(this + 206);
    *v4 = 496;
    v4[2] = v111;
    v4 += 3;
  }

LABEL_241:
  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 100, 1000, v4, a3);
  v114 = *(this + 1);
  if (v114)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v114 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v113);
  }

  return result;
}

uint64_t TSD::MovieArchive::ByteSizeLong(TSD::MovieArchive *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 10);
  if ((v3 & 4) != 0)
  {
    v4 = TSD::DrawableArchive::ByteSizeLong(*(this + 8));
    v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v3 = *(this + 10);
  }

  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v5 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v3 & 2) != 0)
    {
      v8 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  if ((v3 & 0xF8) == 0)
  {
    goto LABEL_19;
  }

  if ((v3 & 8) != 0)
  {
    v19 = TSP::Reference::ByteSizeLong(*(this + 9));
    v2 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 0x10) == 0)
    {
LABEL_15:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_16;
      }

LABEL_65:
      v21 = TSP::Reference::ByteSizeLong(*(this + 11));
      v2 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v3 & 0x40) == 0)
      {
LABEL_17:
        if ((v3 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      goto LABEL_66;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  v20 = TSP::Reference::ByteSizeLong(*(this + 10));
  v2 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_65;
  }

LABEL_16:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_66:
  v22 = TSP::DataReference::ByteSizeLong(*(this + 12));
  v2 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x80) != 0)
  {
LABEL_18:
    v11 = TSP::DataReference::ByteSizeLong(*(this + 13));
    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_30;
  }

  if ((v3 & 0x100) != 0)
  {
    v23 = TSP::DataReference::ByteSizeLong(*(this + 14));
    v2 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v3 & 0x200) == 0)
    {
LABEL_22:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_70;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  v24 = TSP::Reference::ByteSizeLong(*(this + 15));
  v2 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x400) == 0)
  {
LABEL_23:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_71;
  }

LABEL_70:
  v25 = TSP::Size::ByteSizeLong(*(this + 16));
  v2 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x800) == 0)
  {
LABEL_24:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_72;
  }

LABEL_71:
  v26 = TSP::Size::ByteSizeLong(*(this + 17));
  v2 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x1000) == 0)
  {
LABEL_25:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_73;
  }

LABEL_72:
  v27 = TSP::DataReference::ByteSizeLong(*(this + 18));
  v2 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x2000) == 0)
  {
LABEL_26:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_73:
  v28 = TSD::Attribution::ByteSizeLong(*(this + 19));
  v2 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v3 & 0x4000) != 0)
  {
LABEL_27:
    v12 = TSD::MovieFingerprint::ByteSizeLong(*(this + 20));
    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_28:
  if ((v3 & 0x8000) != 0)
  {
    v2 += 5;
  }

LABEL_30:
  if ((v3 & 0xFF0000) != 0)
  {
    v13 = v2 + 5;
    if ((v3 & 0x10000) == 0)
    {
      v13 = v2;
    }

    if ((v3 & 0x20000) != 0)
    {
      v13 += 5;
    }

    if ((v3 & 0x40000) != 0)
    {
      v13 += ((9 * (__clz(*(this + 45) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 0x80000) != 0)
    {
      v13 += 5;
    }

    if ((v3 & 0x100000) != 0)
    {
      v13 += ((9 * (__clz(*(this + 47) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 0x200000) != 0)
    {
      v13 += ((9 * (__clz(*(this + 48) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 = v13 + ((v3 >> 22) & 2) + ((v3 >> 21) & 2);
  }

  if ((v3 & 0x3F000000) != 0)
  {
    v14 = v2 + 3;
    if ((v3 & 0x1000000) == 0)
    {
      v14 = v2;
    }

    if ((v3 & 0x2000000) != 0)
    {
      v14 += 3;
    }

    if ((v3 & 0x4000000) != 0)
    {
      v15 = *(this + 50);
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v15 >= 0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 12;
      }

      v14 += v17;
    }

    if ((v3 & 0x8000000) != 0)
    {
      v14 += 3;
    }

    if ((v3 & 0x10000000) != 0)
    {
      v14 += 3;
    }

    if ((v3 & 0x20000000) != 0)
    {
      v2 = v14 + 3;
    }

    else
    {
      v2 = v14;
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 11) = v2;
    return v2;
  }
}

uint64_t TSD::MovieArchive::MergeFrom(TSD::MovieArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::MovieArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::MovieArchive::MergeFrom(TSD::MovieArchive *this, const TSD::MovieArchive *a2)
{
  result = google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    result = sub_27670B0F8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 10);
  if (v6)
  {
    if (v6)
    {
      *(this + 10) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 10) |= 2u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v6 & 4) == 0)
    {
      goto LABEL_18;
    }

LABEL_10:
    *(this + 10) |= 4u;
    v7 = *(this + 8);
    if (!v7)
    {
      v8 = *(this + 1);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableArchive>(v8);
      *(this + 8) = v7;
    }

    if (*(a2 + 8))
    {
      v9 = *(a2 + 8);
    }

    else
    {
      v9 = &TSD::_DrawableArchive_default_instance_;
    }

    result = TSD::DrawableArchive::MergeFrom(v7, v9);
LABEL_18:
    v10 = MEMORY[0x277D80A18];
    if ((v6 & 8) != 0)
    {
      *(this + 10) |= 8u;
      v11 = *(this + 9);
      if (!v11)
      {
        v12 = *(this + 1);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C9BB20](v12);
        *(this + 9) = v11;
      }

      if (*(a2 + 9))
      {
        v13 = *(a2 + 9);
      }

      else
      {
        v13 = v10;
      }

      result = TSP::Reference::MergeFrom(v11, v13);
      if ((v6 & 0x10) == 0)
      {
LABEL_20:
        if ((v6 & 0x20) == 0)
        {
LABEL_46:
          v20 = MEMORY[0x277D80A30];
          if ((v6 & 0x40) != 0)
          {
            *(this + 10) |= 0x40u;
            v21 = *(this + 12);
            if (!v21)
            {
              v22 = *(this + 1);
              if (v22)
              {
                v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
              }

              v21 = MEMORY[0x277C9BA90](v22);
              *(this + 12) = v21;
            }

            if (*(a2 + 12))
            {
              v23 = *(a2 + 12);
            }

            else
            {
              v23 = v20;
            }

            result = TSP::DataReference::MergeFrom(v21, v23);
          }

          if ((v6 & 0x80) != 0)
          {
            *(this + 10) |= 0x80u;
            v24 = *(this + 13);
            if (!v24)
            {
              v25 = *(this + 1);
              if (v25)
              {
                v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
              }

              v24 = MEMORY[0x277C9BA90](v25);
              *(this + 13) = v24;
            }

            if (*(a2 + 13))
            {
              v26 = *(a2 + 13);
            }

            else
            {
              v26 = v20;
            }

            result = TSP::DataReference::MergeFrom(v24, v26);
          }

          goto LABEL_64;
        }

LABEL_38:
        *(this + 10) |= 0x20u;
        v17 = *(this + 11);
        if (!v17)
        {
          v18 = *(this + 1);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = MEMORY[0x277C9BB20](v18);
          *(this + 11) = v17;
        }

        if (*(a2 + 11))
        {
          v19 = *(a2 + 11);
        }

        else
        {
          v19 = v10;
        }

        result = TSP::Reference::MergeFrom(v17, v19);
        goto LABEL_46;
      }
    }

    else if ((v6 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    *(this + 10) |= 0x10u;
    v14 = *(this + 10);
    if (!v14)
    {
      v15 = *(this + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C9BB20](v15);
      *(this + 10) = v14;
    }

    if (*(a2 + 10))
    {
      v16 = *(a2 + 10);
    }

    else
    {
      v16 = v10;
    }

    result = TSP::Reference::MergeFrom(v14, v16);
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_38;
  }

LABEL_64:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_91;
  }

  if ((v6 & 0x100) != 0)
  {
    *(this + 10) |= 0x100u;
    v27 = *(this + 14);
    if (!v27)
    {
      v28 = *(this + 1);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = MEMORY[0x277C9BA90](v28);
      *(this + 14) = v27;
    }

    if (*(a2 + 14))
    {
      v29 = *(a2 + 14);
    }

    else
    {
      v29 = MEMORY[0x277D80A30];
    }

    result = TSP::DataReference::MergeFrom(v27, v29);
  }

  if ((v6 & 0x200) != 0)
  {
    *(this + 10) |= 0x200u;
    v30 = *(this + 15);
    if (!v30)
    {
      v31 = *(this + 1);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = MEMORY[0x277C9BB20](v31);
      *(this + 15) = v30;
    }

    if (*(a2 + 15))
    {
      v32 = *(a2 + 15);
    }

    else
    {
      v32 = MEMORY[0x277D80A18];
    }

    result = TSP::Reference::MergeFrom(v30, v32);
  }

  v33 = MEMORY[0x277D809D8];
  if ((v6 & 0x400) != 0)
  {
    *(this + 10) |= 0x400u;
    v34 = *(this + 16);
    if (!v34)
    {
      v35 = *(this + 1);
      if (v35)
      {
        v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
      }

      v34 = MEMORY[0x277C9BAD0](v35);
      *(this + 16) = v34;
    }

    if (*(a2 + 16))
    {
      v36 = *(a2 + 16);
    }

    else
    {
      v36 = v33;
    }

    result = TSP::Size::MergeFrom(v34, v36);
    if ((v6 & 0x800) == 0)
    {
LABEL_85:
      if ((v6 & 0x1000) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_128;
    }
  }

  else if ((v6 & 0x800) == 0)
  {
    goto LABEL_85;
  }

  *(this + 10) |= 0x800u;
  v37 = *(this + 17);
  if (!v37)
  {
    v38 = *(this + 1);
    if (v38)
    {
      v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
    }

    v37 = MEMORY[0x277C9BAD0](v38);
    *(this + 17) = v37;
  }

  if (*(a2 + 17))
  {
    v39 = *(a2 + 17);
  }

  else
  {
    v39 = v33;
  }

  result = TSP::Size::MergeFrom(v37, v39);
  if ((v6 & 0x1000) == 0)
  {
LABEL_86:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_136;
  }

LABEL_128:
  *(this + 10) |= 0x1000u;
  v40 = *(this + 18);
  if (!v40)
  {
    v41 = *(this + 1);
    if (v41)
    {
      v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = MEMORY[0x277C9BA90](v41);
    *(this + 18) = v40;
  }

  if (*(a2 + 18))
  {
    v42 = *(a2 + 18);
  }

  else
  {
    v42 = MEMORY[0x277D80A30];
  }

  result = TSP::DataReference::MergeFrom(v40, v42);
  if ((v6 & 0x2000) == 0)
  {
LABEL_87:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_88;
    }

LABEL_144:
    *(this + 10) |= 0x4000u;
    v46 = *(this + 20);
    if (!v46)
    {
      v47 = *(this + 1);
      if (v47)
      {
        v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
      }

      v46 = google::protobuf::Arena::CreateMaybeMessage<TSD::MovieFingerprint>(v47);
      *(this + 20) = v46;
    }

    if (*(a2 + 20))
    {
      v48 = *(a2 + 20);
    }

    else
    {
      v48 = &TSD::_MovieFingerprint_default_instance_;
    }

    result = TSD::MovieFingerprint::MergeFrom(v46, v48);
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

LABEL_136:
  *(this + 10) |= 0x2000u;
  v43 = *(this + 19);
  if (!v43)
  {
    v44 = *(this + 1);
    if (v44)
    {
      v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
    }

    v43 = google::protobuf::Arena::CreateMaybeMessage<TSD::Attribution>(v44);
    *(this + 19) = v43;
  }

  if (*(a2 + 19))
  {
    v45 = *(a2 + 19);
  }

  else
  {
    v45 = &TSD::_Attribution_default_instance_;
  }

  result = TSD::Attribution::MergeFrom(v43, v45);
  if ((v6 & 0x4000) != 0)
  {
    goto LABEL_144;
  }

LABEL_88:
  if ((v6 & 0x8000) != 0)
  {
LABEL_89:
    *(this + 42) = *(a2 + 42);
  }

LABEL_90:
  *(this + 10) |= v6;
LABEL_91:
  if ((v6 & 0xFF0000) == 0)
  {
    goto LABEL_102;
  }

  if ((v6 & 0x10000) != 0)
  {
    *(this + 43) = *(a2 + 43);
    if ((v6 & 0x20000) == 0)
    {
LABEL_94:
      if ((v6 & 0x40000) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_155;
    }
  }

  else if ((v6 & 0x20000) == 0)
  {
    goto LABEL_94;
  }

  *(this + 44) = *(a2 + 44);
  if ((v6 & 0x40000) == 0)
  {
LABEL_95:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_156;
  }

LABEL_155:
  *(this + 45) = *(a2 + 45);
  if ((v6 & 0x80000) == 0)
  {
LABEL_96:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_157;
  }

LABEL_156:
  *(this + 46) = *(a2 + 46);
  if ((v6 & 0x100000) == 0)
  {
LABEL_97:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_158;
  }

LABEL_157:
  *(this + 47) = *(a2 + 47);
  if ((v6 & 0x200000) == 0)
  {
LABEL_98:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_99;
    }

LABEL_159:
    *(this + 196) = *(a2 + 196);
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

LABEL_158:
  *(this + 48) = *(a2 + 48);
  if ((v6 & 0x400000) != 0)
  {
    goto LABEL_159;
  }

LABEL_99:
  if ((v6 & 0x800000) != 0)
  {
LABEL_100:
    *(this + 197) = *(a2 + 197);
  }

LABEL_101:
  *(this + 10) |= v6;
LABEL_102:
  if ((v6 & 0x3F000000) == 0)
  {
    return result;
  }

  if ((v6 & 0x1000000) != 0)
  {
    *(this + 198) = *(a2 + 198);
    if ((v6 & 0x2000000) == 0)
    {
LABEL_105:
      if ((v6 & 0x4000000) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_163;
    }
  }

  else if ((v6 & 0x2000000) == 0)
  {
    goto LABEL_105;
  }

  *(this + 199) = *(a2 + 199);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_106:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_164;
  }

LABEL_163:
  *(this + 50) = *(a2 + 50);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_107:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_108;
    }

LABEL_165:
    *(this + 205) = *(a2 + 205);
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_109;
  }

LABEL_164:
  *(this + 204) = *(a2 + 204);
  if ((v6 & 0x10000000) != 0)
  {
    goto LABEL_165;
  }

LABEL_108:
  if ((v6 & 0x20000000) != 0)
  {
LABEL_109:
    *(this + 206) = *(a2 + 206);
  }

LABEL_110:
  *(this + 10) |= v6;
  return result;
}

uint64_t *TSD::MovieFingerprint::MergeFrom(uint64_t *this, const TSD::MovieFingerprint *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 2));
    this = sub_27676CF8C((v3 + 2), v7, (v6 + 8), v5, *v3[4] - *(v3 + 6));
    v8 = *(v3 + 6) + v5;
    *(v3 + 6) = v8;
    v9 = v3[4];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 10);
  if (v10)
  {
    v12 = *(v3 + 10);
    v11 = (v3 + 5);
    sub_2766C3850(v11, v12 + v10);
    v13 = *(v11 + 1);
    *v11 += *(a2 + 10);
    v14 = (v13 + 4 * v12);
    v15 = *(a2 + 6);
    v16 = 4 * *(a2 + 10);

    return memcpy(v14, v15, v16);
  }

  return this;
}

TSD::MovieArchive *TSD::MovieArchive::CopyFrom(TSD::MovieArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::MovieArchive::Clear(this);

    return TSD::MovieArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSD::MovieArchive *TSD::MovieArchive::CopyFrom(TSD::MovieArchive *this, const TSD::MovieArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::MovieArchive::Clear(this);

    return TSD::MovieArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::MovieArchive::IsInitialized(TSD::MovieArchive *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {
    if ((*(this + 40) & 4) == 0)
    {
      return 0;
    }

    result = TSD::DrawableArchive::IsInitialized(*(this + 8));
    if (result)
    {
      v3 = *(this + 10);
      if ((v3 & 8) != 0)
      {
        result = TSP::Reference::IsInitialized(*(this + 9));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x10) != 0)
      {
        result = TSP::Reference::IsInitialized(*(this + 10));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x20) != 0)
      {
        result = TSP::Reference::IsInitialized(*(this + 11));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x40) != 0)
      {
        result = TSP::DataReference::IsInitialized(*(this + 12));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x80) != 0)
      {
        result = TSP::DataReference::IsInitialized(*(this + 13));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x100) != 0)
      {
        result = TSP::DataReference::IsInitialized(*(this + 14));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x200) != 0)
      {
        result = TSP::Reference::IsInitialized(*(this + 15));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x400) != 0)
      {
        result = TSP::Size::IsInitialized(*(this + 16));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x800) != 0)
      {
        result = TSP::Size::IsInitialized(*(this + 17));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x1000) != 0)
      {
        result = TSP::DataReference::IsInitialized(*(this + 18));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 10);
      }

      if ((v3 & 0x4000) == 0)
      {
        return 1;
      }

      result = sub_276766D04(*(this + 20) + 16);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

double TSD::MovieArchive::InternalSwap(TSD::MovieArchive *this, TSD::MovieArchive *a2)
{
  google::protobuf::internal::ExtensionSet::Swap();
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v6;
  v7 = *(this + 8);
  v8 = *(this + 9);
  *(this + 4) = *(a2 + 4);
  *(a2 + 8) = v7;
  *(a2 + 9) = v8;

  *&result = sub_27676CB54(this + 10, a2 + 80).n128_u64[0];
  return result;
}

void *TSD::ExteriorTextWrapArchive::ExteriorTextWrapArchive(void *result, uint64_t a2)
{
  *result = &unk_288577978;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  *(result + 37) = 0;
  return result;
}

{
  *result = &unk_288577978;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  *(result + 37) = 0;
  return result;
}

TSD::ExteriorTextWrapArchive *TSD::ExteriorTextWrapArchive::ExteriorTextWrapArchive(TSD::ExteriorTextWrapArchive *this, const TSD::ExteriorTextWrapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288577978;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 24);
  *(this + 37) = *(a2 + 37);
  *(this + 24) = v6;
  return this;
}

void TSD::ExteriorTextWrapArchive::~ExteriorTextWrapArchive(TSD::ExteriorTextWrapArchive *this)
{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::ExteriorTextWrapArchive::default_instance(TSD::ExteriorTextWrapArchive *this)
{
  if (atomic_load_explicit(scc_info_ExteriorTextWrapArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ExteriorTextWrapArchive_default_instance_;
}

google::protobuf::internal *TSD::ExteriorTextWrapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v38 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v38) & 1) == 0)
  {
    while (1)
    {
      v7 = (v38 + 1);
      v8 = *v38;
      if ((*v38 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v38, (v9 - 128));
      v38 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_62;
      }

      v7 = TagFallback;
      v8 = v29;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v10 == 4)
        {
          if (v8 == 37)
          {
            v22 = *v7;
            v21 = (v7 + 4);
            v5 |= 8u;
            *(a1 + 36) = v22;
LABEL_41:
            v38 = v21;
            goto LABEL_49;
          }

          goto LABEL_42;
        }

        if (v10 == 5)
        {
          if (v8 == 45)
          {
            v26 = *v7;
            v21 = (v7 + 4);
            v5 |= 0x10u;
            *(a1 + 40) = v26;
            goto LABEL_41;
          }

LABEL_42:
          if (v8)
          {
            v27 = (v8 & 7) == 4;
          }

          else
          {
            v27 = 1;
          }

          if (v27)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v38 = google::protobuf::internal::UnknownFieldParse();
          if (!v38)
          {
LABEL_62:
            v38 = 0;
            goto LABEL_2;
          }

          goto LABEL_49;
        }

        if (v10 != 6 || v8 != 48)
        {
          goto LABEL_42;
        }

        v5 |= 0x20u;
        v16 = (v7 + 1);
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_26;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v7 + 2);
LABEL_26:
          v38 = v16;
          *(a1 + 44) = v15 != 0;
          goto LABEL_49;
        }

        v32 = google::protobuf::internal::VarintParseSlow64(v7, v15);
        v38 = v32;
        *(a1 + 44) = v33 != 0;
        if (!v32)
        {
          goto LABEL_62;
        }
      }

      else if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_42;
        }

        v5 |= 1u;
        v18 = (v7 + 1);
        LODWORD(v19) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

        v20 = *v18;
        v19 = (v19 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_31:
          v38 = v18;
          *(a1 + 24) = v19;
          goto LABEL_49;
        }

        v30 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v38 = v30;
        *(a1 + 24) = v31;
        if (!v30)
        {
          goto LABEL_62;
        }
      }

      else if (v10 == 2)
      {
        if (v8 != 16)
        {
          goto LABEL_42;
        }

        v5 |= 2u;
        v23 = (v7 + 1);
        LODWORD(v24) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_38;
        }

        v25 = *v23;
        v24 = (v24 + (v25 << 7) - 128);
        if ((v25 & 0x80000000) == 0)
        {
          v23 = (v7 + 2);
LABEL_38:
          v38 = v23;
          *(a1 + 28) = v24;
          goto LABEL_49;
        }

        v36 = google::protobuf::internal::VarintParseSlow32(v7, v24);
        v38 = v36;
        *(a1 + 28) = v37;
        if (!v36)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_42;
        }

        v5 |= 4u;
        v12 = (v7 + 1);
        LODWORD(v13) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v12;
        v13 = (v13 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_18:
          v38 = v12;
          *(a1 + 32) = v13;
          goto LABEL_49;
        }

        v34 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v38 = v34;
        *(a1 + 32) = v35;
        if (!v34)
        {
          goto LABEL_62;
        }
      }

LABEL_49:
      if (sub_27670AF08(a3, &v38))
      {
        goto LABEL_2;
      }
    }

    v7 = (v38 + 2);
LABEL_6:
    v38 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v38;
}

unsigned __int8 *TSD::ExteriorTextWrapArchive::_InternalSerialize(TSD::ExteriorTextWrapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 8;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      if (v7 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++a2;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(a2 - 1) = v9;
        if ((v6 & 2) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        a2[2] = v8;
        a2 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

LABEL_30:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v15 = *(this + 8);
    *a2 = 24;
    if (v15 > 0x7F)
    {
      a2[1] = v15 | 0x80;
      v16 = v15 >> 7;
      if (v15 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++a2;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(a2 - 1) = v17;
        if ((v6 & 8) != 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        a2[2] = v16;
        a2 += 3;
        if ((v6 & 8) != 0)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      a2[1] = v15;
      a2 += 2;
      if ((v6 & 8) != 0)
      {
        goto LABEL_41;
      }
    }

LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_19:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v11 = *(this + 7);
  *a2 = 16;
  if (v11 > 0x7F)
  {
    a2[1] = v11 | 0x80;
    v12 = v11 >> 7;
    if (v11 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v12 | 0x80;
        v13 = v12 >> 7;
        ++a2;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
      if ((v6 & 4) != 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      a2[2] = v12;
      a2 += 3;
      if ((v6 & 4) != 0)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    a2[1] = v11;
    a2 += 2;
    if ((v6 & 4) != 0)
    {
      goto LABEL_30;
    }
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_41:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 9);
  *a2 = 37;
  *(a2 + 1) = v19;
  a2 += 5;
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 10);
  *a2 = 45;
  *(a2 + 1) = v20;
  a2 += 5;
  if ((v6 & 0x20) != 0)
  {
LABEL_47:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v21 = *(this + 44);
    *a2 = 48;
    a2[1] = v21;
    a2 += 2;
  }

LABEL_50:
  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v22 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ExteriorTextWrapArchive::ByteSizeLong(TSD::ExteriorTextWrapArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    v2 += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v1 & 8) != 0)
  {
    v2 += 5;
  }

  if ((v1 & 0x10) != 0)
  {
    v2 += 5;
  }

  v3 = v2 + ((v1 >> 4) & 2);
LABEL_15:
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v3;
  return v3;
}

uint64_t TSD::ExteriorTextWrapArchive::MergeFrom(TSD::ExteriorTextWrapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ExteriorTextWrapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

TSD::ExteriorTextWrapArchive *TSD::ExteriorTextWrapArchive::CopyFrom(TSD::ExteriorTextWrapArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ExteriorTextWrapArchive::Clear(this);

    return TSD::ExteriorTextWrapArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSD::ExteriorTextWrapArchive *TSD::ExteriorTextWrapArchive::CopyFrom(TSD::ExteriorTextWrapArchive *this, const TSD::ExteriorTextWrapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ExteriorTextWrapArchive::Clear(this);

    return TSD::ExteriorTextWrapArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSD::ExteriorTextWrapArchive::InternalSwap(TSD::ExteriorTextWrapArchive *this, TSD::ExteriorTextWrapArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  LODWORD(v5) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  LOBYTE(v5) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v5;
  return result;
}

void *TSD::DrawableContentDescription::DrawableContentDescription(void *result, uint64_t a2)
{
  *result = &unk_288577A28;
  result[1] = a2;
  result[2] = 0;
  *(result + 23) = 0;
  return result;
}

{
  *result = &unk_288577A28;
  result[1] = a2;
  result[2] = 0;
  *(result + 23) = 0;
  return result;
}

TSD::DrawableContentDescription *TSD::DrawableContentDescription::DrawableContentDescription(TSD::DrawableContentDescription *this, const TSD::DrawableContentDescription *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288577A28;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 6);
  *(this + 27) = *(a2 + 27);
  *(this + 6) = v6;
  return this;
}

void TSD::DrawableContentDescription::~DrawableContentDescription(TSD::DrawableContentDescription *this)
{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::DrawableContentDescription::default_instance(TSD::DrawableContentDescription *this)
{
  if (atomic_load_explicit(scc_info_DrawableContentDescription_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_DrawableContentDescription_default_instance_;
}

uint64_t *TSD::DrawableContentDescription::Clear(TSD::DrawableContentDescription *this)
{
  if ((*(this + 16) & 0xF) != 0)
  {
    *(this + 27) = 0;
    *(this + 6) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::DrawableContentDescription::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v35 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v35) & 1) == 0)
  {
    while (1)
    {
      v7 = (v35 + 1);
      v8 = *v35;
      if ((*v35 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v35, (v9 - 128));
      v35 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_55;
      }

      v7 = TagFallback;
      v8 = v26;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 24)
          {
            goto LABEL_35;
          }

          v5 |= 4u;
          v22 = (v7 + 1);
          v21 = *v7;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if ((v23 & 0x80000000) == 0)
          {
            v22 = (v7 + 2);
LABEL_34:
            v35 = v22;
            *(a1 + 29) = v21 != 0;
            goto LABEL_42;
          }

          v33 = google::protobuf::internal::VarintParseSlow64(v7, v21);
          v35 = v33;
          *(a1 + 29) = v34 != 0;
          if (!v33)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v10 != 4 || v8 != 32)
          {
            goto LABEL_35;
          }

          v5 |= 8u;
          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if ((v17 & 0x80000000) == 0)
          {
            v16 = (v7 + 2);
LABEL_24:
            v35 = v16;
            *(a1 + 30) = v15 != 0;
            goto LABEL_42;
          }

          v27 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v35 = v27;
          *(a1 + 30) = v28 != 0;
          if (!v27)
          {
            goto LABEL_55;
          }
        }
      }

      else if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_35;
        }

        v5 |= 1u;
        v18 = (v7 + 1);
        LODWORD(v19) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        v20 = *v18;
        v19 = (v19 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_29:
          v35 = v18;
          *(a1 + 24) = v19;
          goto LABEL_42;
        }

        v31 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v35 = v31;
        *(a1 + 24) = v32;
        if (!v31)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v10 != 2 || v8 != 16)
        {
LABEL_35:
          if (v8)
          {
            v24 = (v8 & 7) == 4;
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v35 = google::protobuf::internal::UnknownFieldParse();
          if (!v35)
          {
LABEL_55:
            v35 = 0;
            goto LABEL_2;
          }

          goto LABEL_42;
        }

        v5 |= 2u;
        v13 = (v7 + 1);
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_17:
          v35 = v13;
          *(a1 + 28) = v12 != 0;
          goto LABEL_42;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v35 = v29;
        *(a1 + 28) = v30 != 0;
        if (!v29)
        {
          goto LABEL_55;
        }
      }

LABEL_42:
      if (sub_27670AF08(a3, &v35))
      {
        goto LABEL_2;
      }
    }

    v7 = (v35 + 2);
LABEL_6:
    v35 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v35;
}

unsigned __int8 *TSD::DrawableContentDescription::_InternalSerialize(TSD::DrawableContentDescription *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 8;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      if (v7 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++a2;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(a2 - 1) = v9;
        if ((v6 & 2) != 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        a2[2] = v8;
        a2 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_17:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v11 = *(this + 28);
  *a2 = 16;
  a2[1] = v11;
  a2 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

LABEL_20:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 29);
  *a2 = 24;
  a2[1] = v12;
  a2 += 2;
  if ((v6 & 8) != 0)
  {
LABEL_23:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 30);
    *a2 = 32;
    a2[1] = v13;
    a2 += 2;
  }

LABEL_26:
  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::DrawableContentDescription::ByteSizeLong(TSD::DrawableContentDescription *this)
{
  v1 = *(this + 4);
  if ((v1 & 0xF) != 0)
  {
    if (v1)
    {
      v2 = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    v3 = v2 + ((*(this + 4) >> 1) & 2) + (*(this + 4) & 2) + ((*(this + 4) >> 2) & 2u);
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v3;
  return v3;
}

uint64_t TSD::DrawableContentDescription::MergeFrom(TSD::DrawableContentDescription *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::DrawableContentDescription::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::DrawableContentDescription::MergeFrom(uint64_t this, const TSD::DrawableContentDescription *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      *(v3 + 24) = *(a2 + 6);
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

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 28) = *(a2 + 28);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_8:
      *(v3 + 30) = *(a2 + 30);
      goto LABEL_9;
    }

LABEL_13:
    *(v3 + 29) = *(a2 + 29);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

TSD::DrawableContentDescription *TSD::DrawableContentDescription::CopyFrom(TSD::DrawableContentDescription *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawableContentDescription::Clear(this);

    return TSD::DrawableContentDescription::MergeFrom(v4, a2);
  }

  return this;
}

TSD::DrawableContentDescription *TSD::DrawableContentDescription::CopyFrom(TSD::DrawableContentDescription *this, const TSD::DrawableContentDescription *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawableContentDescription::Clear(this);

    return TSD::DrawableContentDescription::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::DrawableContentDescription::InternalSwap(TSD::DrawableContentDescription *this, TSD::DrawableContentDescription *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  LOWORD(v6) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v6;
  LOBYTE(v6) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v6;
  return result;
}

TSD::FreehandDrawingContentDescription *TSD::FreehandDrawingContentDescription::FreehandDrawingContentDescription(TSD::FreehandDrawingContentDescription *this, google::protobuf::Arena *a2)
{
  *this = &unk_288577AD8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FreehandDrawingContentDescription_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288577AD8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FreehandDrawingContentDescription_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

TSD::FreehandDrawingContentDescription *TSD::FreehandDrawingContentDescription::FreehandDrawingContentDescription(TSD::FreehandDrawingContentDescription *this, const TSD::FreehandDrawingContentDescription *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288577AD8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 32) = *(a2 + 32);
  return this;
}

void TSD::FreehandDrawingContentDescription::~FreehandDrawingContentDescription(TSD::FreehandDrawingContentDescription *this)
{
  if (this != &TSD::_FreehandDrawingContentDescription_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      sub_2766FFE58((v2 + 8));
      MEMORY[0x277C9C1D0](v2, 0x1081C40F248E5DELL);
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::FreehandDrawingContentDescription::~FreehandDrawingContentDescription(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::FreehandDrawingContentDescription::default_instance(TSD::FreehandDrawingContentDescription *this)
{
  if (atomic_load_explicit(scc_info_FreehandDrawingContentDescription_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_FreehandDrawingContentDescription_default_instance_;
}

uint64_t *TSD::FreehandDrawingContentDescription::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::DrawableContentDescription::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27670B144(v2);
  }

  return this;
}

google::protobuf::internal *TSD::FreehandDrawingContentDescription::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v22) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableContentDescription>(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_27680CCC8(a3, v16, v7);
        }

        else
        {
LABEL_12:
          if (v8)
          {
            v11 = (v8 & 7) == 4;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21 != 0;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_27670AF08(a3, &v22))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}